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
  %var._2133 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._2096 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._2059 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._2019 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1982 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1945 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1910 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1875 = alloca ptr, align 8
  %var.varg = alloca ptr, align 8
  %var._1831 = alloca ptr, align 8
  %var._1828 = alloca ptr, align 8
  %var._1776 = alloca i64, align 8
  %var._i1775 = alloca i64, align 8
  %var.i1770 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.v1764 = alloca ptr, align 8
  %var._1763 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1726 = alloca ptr, align 8
  %var.v1623 = alloca ptr, align 8
  %var._1622 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1571 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1505 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1439 = alloca ptr, align 8
  %var.a1373 = alloca ptr, align 8
  %var._1372 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1306 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1240 = alloca ptr, align 8
  %var.fld = alloca ptr, align 8
  %var._1189 = alloca ptr, align 8
  %var._1186 = alloca ptr, align 8
  %var._1134 = alloca i64, align 8
  %var._i1133 = alloca i64, align 8
  %var.i1128 = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._1122 = alloca ptr, align 8
  %var.cv = alloca ptr, align 8
  %var._1076 = alloca ptr, align 8
  %var._1073 = alloca ptr, align 8
  %var._1021 = alloca i64, align 8
  %var._i1020 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var._887 = alloca ptr, align 8
  %var._i886 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var.br = alloca ptr, align 8
  %var._813 = alloca ptr, align 8
  %var._810 = alloca ptr, align 8
  %var._758 = alloca i64, align 8
  %var._i757 = alloca i64, align 8
  %var.i752 = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._717 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._585 = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var._568 = alloca ptr, align 8
  %var._565 = alloca ptr, align 8
  %var._513 = alloca i64, align 8
  %var._i512 = alloca i64, align 8
  %var.i507 = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._487 = alloca ptr, align 8
  %var._386 = alloca ptr, align 8
  %var._i385 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._361 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._324 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._258 = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._219 = alloca ptr, align 8
  %var._216 = alloca ptr, align 8
  %var._193 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.next2127, %a.after2154, %a.after2117, %a.after2080, %a.after2043, %a.after2003, %a.after1966, %a.after1929, %a.after1894, %loop.exit.15, %a.after1747, %choice.exit1610, %a.after1555, %a.after1489, %a.after1423, %a.after1356, %a.after1290, %loop.exit.13, %loop.exit.10, %loop.exit.9, %a.after471, %a.after345, %a.after308, %loop.exit.7, %choice.exit34
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
  %tag.gep253 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id254 = load i64, ptr %tag.gep253, align 8
  %tag.match255 = icmp eq i64 %tag.id254, 5
  br i1 %tag.match255, label %choice.case251, label %choice.next252

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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %a.len.query192 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.7, align 8
  %cycle.prev.u = load i64, ptr %var._59, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %a.after180
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query192
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._193, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load194 = load ptr, ptr %var.c, align 8
  %fld.gep195 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load194, i32 0, i32 2
  %fld.load196 = load ptr, ptr %fld.gep195, align 8
  %var.load197 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load196, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %a.after242
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  store i64 %cycle.prev.u, ptr %var._59, align 8
  br label %choice.exit

a.rd.check:                                       ; preds = %loop.body.7
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load196, i32 0, i32 0
  %a.rd.len198 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load197, 0
  %a.rd.lt = icmp slt i64 %var.load197, %a.rd.len198
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load196, i32 0, i32 1
  %a.rd.data199 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data199, i64 %var.load197
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.7
  %arena.cur200 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 56)
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
  %arena.cur201 = call ptr @dva_arena_current()
  %err.alloc202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 56)
  %err.code.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 0
  store i64 4011, ptr %err.code.gep203, align 8
  %err.msg.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep204, align 8
  %err.file.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep205, align 8
  %err.line.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 3
  store i64 0, ptr %err.line.gep206, align 8
  %err.col.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 4
  store i64 0, ptr %err.col.gep207, align 8
  %err.ctx.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 5
  %err.ctx0.gep209 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep208, i32 0, i32 0
  store i64 %var.load197, ptr %err.ctx0.gep209, align 8
  %err.ctx1.gep210 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep208, i32 0, i32 1
  store i64 %a.rd.len198, ptr %err.ctx1.gep210, align 8
  %err.p2i211 = ptrtoint ptr %err.alloc202 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i211, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag212 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag212, label %choice.then213, label %choice.else

choice.then213:                                   ; preds = %a.rd.done
  %ram.pay215 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay215 to ptr
  store ptr %pay.ptr, ptr %var._216, align 8
  br label %choice.exit214

choice.else:                                      ; preds = %a.rd.done
  %ram.pay217 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr218 = inttoptr i64 %ram.pay217 to ptr
  store ptr %pay.ptr218, ptr %var._219, align 8
  %arena.cur220 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 16)
  %tag.gep221 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep221, align 8
  %pay.gep222 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur223 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep222, align 8
  br label %choice.exit214

choice.exit214:                                   ; preds = %choice.else, %choice.then213
  %choice.res = phi ptr [ %pay.ptr, %choice.then213 ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.arg, align 8
  %var.load224 = load ptr, ptr %var.arg, align 8
  %var.load225 = load ptr, ptr %var.locals, align 8
  %a.load226 = load ptr, ptr %var.locals, align 8
  %a.null227 = icmp eq ptr %a.load226, null
  br i1 %a.null227, label %a.create228, label %a.after229

a.create228:                                      ; preds = %choice.exit214
  %arena.cur230 = call ptr @dva_arena_current()
  %a.create231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 24)
  %arena.cur232 = call ptr @dva_arena_current()
  %a.buf233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 128)
  %a.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 0
  store i64 0, ptr %a.len.gep234, align 8
  %a.data.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 1
  store ptr %a.buf233, ptr %a.data.gep235, align 8
  %a.cap.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 2
  store i64 16, ptr %a.cap.gep236, align 8
  store ptr %a.create231, ptr %var.locals, align 8
  br label %a.after229

a.after229:                                       ; preds = %a.create228, %choice.exit214
  %a.load2237 = load ptr, ptr %var.locals, align 8
  %var.load238 = load ptr, ptr %var.refs, align 8
  %a.load239 = load ptr, ptr %var.refs, align 8
  %a.null240 = icmp eq ptr %a.load239, null
  br i1 %a.null240, label %a.create241, label %a.after242

a.create241:                                      ; preds = %a.after229
  %arena.cur243 = call ptr @dva_arena_current()
  %a.create244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 24)
  %arena.cur245 = call ptr @dva_arena_current()
  %a.buf246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 128)
  %a.len.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create244, i32 0, i32 0
  store i64 0, ptr %a.len.gep247, align 8
  %a.data.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create244, i32 0, i32 1
  store ptr %a.buf246, ptr %a.data.gep248, align 8
  %a.cap.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create244, i32 0, i32 2
  store i64 16, ptr %a.cap.gep249, align 8
  store ptr %a.create244, ptr %var.refs, align 8
  br label %a.after242

a.after242:                                       ; preds = %a.create241, %a.after229
  %a.load2250 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load224, ptr %a.load2237, ptr %a.load2250)
  br label %loop.latch.7

choice.case251:                                   ; preds = %choice.next53
  %pay.gep256 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr257 = load ptr, ptr %pay.gep256, align 8
  store ptr %payload.ptr257, ptr %var._258, align 8
  store ptr %payload.ptr257, ptr %var.b, align 8
  %var.load259 = load ptr, ptr %var.b, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load259, i32 0, i32 1
  %fld.load261 = load ptr, ptr %fld.gep260, align 8
  %var.load262 = load ptr, ptr %var.locals, align 8
  %a.load263 = load ptr, ptr %var.locals, align 8
  %a.null264 = icmp eq ptr %a.load263, null
  br i1 %a.null264, label %a.create265, label %a.after266

choice.next252:                                   ; preds = %choice.next53
  %tag.gep319 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id320 = load i64, ptr %tag.gep319, align 8
  %tag.match321 = icmp eq i64 %tag.id320, 24
  br i1 %tag.match321, label %choice.case317, label %choice.next318

a.create265:                                      ; preds = %choice.case251
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
  store ptr %a.create268, ptr %var.locals, align 8
  br label %a.after266

a.after266:                                       ; preds = %a.create265, %choice.case251
  %a.load2274 = load ptr, ptr %var.locals, align 8
  %var.load275 = load ptr, ptr %var.refs, align 8
  %a.load276 = load ptr, ptr %var.refs, align 8
  %a.null277 = icmp eq ptr %a.load276, null
  br i1 %a.null277, label %a.create278, label %a.after279

a.create278:                                      ; preds = %a.after266
  %arena.cur280 = call ptr @dva_arena_current()
  %a.create281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 24)
  %arena.cur282 = call ptr @dva_arena_current()
  %a.buf283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 128)
  %a.len.gep284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create281, i32 0, i32 0
  store i64 0, ptr %a.len.gep284, align 8
  %a.data.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create281, i32 0, i32 1
  store ptr %a.buf283, ptr %a.data.gep285, align 8
  %a.cap.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create281, i32 0, i32 2
  store i64 16, ptr %a.cap.gep286, align 8
  store ptr %a.create281, ptr %var.refs, align 8
  br label %a.after279

a.after279:                                       ; preds = %a.create278, %a.after266
  %a.load2287 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load261, ptr %a.load2274, ptr %a.load2287)
  %var.load288 = load ptr, ptr %var.b, align 8
  %fld.gep289 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load288, i32 0, i32 2
  %fld.load290 = load ptr, ptr %fld.gep289, align 8
  %var.load291 = load ptr, ptr %var.locals, align 8
  %a.load292 = load ptr, ptr %var.locals, align 8
  %a.null293 = icmp eq ptr %a.load292, null
  br i1 %a.null293, label %a.create294, label %a.after295

a.create294:                                      ; preds = %a.after279
  %arena.cur296 = call ptr @dva_arena_current()
  %a.create297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 24)
  %arena.cur298 = call ptr @dva_arena_current()
  %a.buf299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 128)
  %a.len.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 0
  store i64 0, ptr %a.len.gep300, align 8
  %a.data.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 1
  store ptr %a.buf299, ptr %a.data.gep301, align 8
  %a.cap.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 2
  store i64 16, ptr %a.cap.gep302, align 8
  store ptr %a.create297, ptr %var.locals, align 8
  br label %a.after295

a.after295:                                       ; preds = %a.create294, %a.after279
  %a.load2303 = load ptr, ptr %var.locals, align 8
  %var.load304 = load ptr, ptr %var.refs, align 8
  %a.load305 = load ptr, ptr %var.refs, align 8
  %a.null306 = icmp eq ptr %a.load305, null
  br i1 %a.null306, label %a.create307, label %a.after308

a.create307:                                      ; preds = %a.after295
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
  store ptr %a.create310, ptr %var.refs, align 8
  br label %a.after308

a.after308:                                       ; preds = %a.create307, %a.after295
  %a.load2316 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load290, ptr %a.load2303, ptr %a.load2316)
  br label %choice.exit

choice.case317:                                   ; preds = %choice.next252
  %pay.gep322 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr323 = load ptr, ptr %pay.gep322, align 8
  store ptr %payload.ptr323, ptr %var._324, align 8
  store ptr %payload.ptr323, ptr %var.u, align 8
  %var.load325 = load ptr, ptr %var.u, align 8
  %fld.gep326 = getelementptr inbounds { ptr, ptr }, ptr %var.load325, i32 0, i32 1
  %fld.load327 = load ptr, ptr %fld.gep326, align 8
  %var.load328 = load ptr, ptr %var.locals, align 8
  %a.load329 = load ptr, ptr %var.locals, align 8
  %a.null330 = icmp eq ptr %a.load329, null
  br i1 %a.null330, label %a.create331, label %a.after332

choice.next318:                                   ; preds = %choice.next252
  %tag.gep356 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id357 = load i64, ptr %tag.gep356, align 8
  %tag.match358 = icmp eq i64 %tag.id357, 14
  br i1 %tag.match358, label %choice.case354, label %choice.next355

a.create331:                                      ; preds = %choice.case317
  %arena.cur333 = call ptr @dva_arena_current()
  %a.create334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 24)
  %arena.cur335 = call ptr @dva_arena_current()
  %a.buf336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 128)
  %a.len.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create334, i32 0, i32 0
  store i64 0, ptr %a.len.gep337, align 8
  %a.data.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create334, i32 0, i32 1
  store ptr %a.buf336, ptr %a.data.gep338, align 8
  %a.cap.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create334, i32 0, i32 2
  store i64 16, ptr %a.cap.gep339, align 8
  store ptr %a.create334, ptr %var.locals, align 8
  br label %a.after332

a.after332:                                       ; preds = %a.create331, %choice.case317
  %a.load2340 = load ptr, ptr %var.locals, align 8
  %var.load341 = load ptr, ptr %var.refs, align 8
  %a.load342 = load ptr, ptr %var.refs, align 8
  %a.null343 = icmp eq ptr %a.load342, null
  br i1 %a.null343, label %a.create344, label %a.after345

a.create344:                                      ; preds = %a.after332
  %arena.cur346 = call ptr @dva_arena_current()
  %a.create347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 24)
  %arena.cur348 = call ptr @dva_arena_current()
  %a.buf349 = call ptr @dva_arena_alloc(ptr %arena.cur348, i64 128)
  %a.len.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 0
  store i64 0, ptr %a.len.gep350, align 8
  %a.data.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 1
  store ptr %a.buf349, ptr %a.data.gep351, align 8
  %a.cap.gep352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 2
  store i64 16, ptr %a.cap.gep352, align 8
  store ptr %a.create347, ptr %var.refs, align 8
  br label %a.after345

a.after345:                                       ; preds = %a.create344, %a.after332
  %a.load2353 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load327, ptr %a.load2340, ptr %a.load2353)
  br label %choice.exit

choice.case354:                                   ; preds = %choice.next318
  %pay.gep359 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr360 = load ptr, ptr %pay.gep359, align 8
  store ptr %payload.ptr360, ptr %var._361, align 8
  store ptr %payload.ptr360, ptr %var.fe, align 8
  %var.load362 = load ptr, ptr %var.locals, align 8
  %a.load363 = load ptr, ptr %var.locals, align 8
  %a.null364 = icmp eq ptr %a.load363, null
  br i1 %a.null364, label %a.create365, label %a.after366

choice.next355:                                   ; preds = %choice.next318
  %tag.gep482 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id483 = load i64, ptr %tag.gep482, align 8
  %tag.match484 = icmp eq i64 %tag.id483, 8
  br i1 %tag.match484, label %choice.case480, label %choice.next481

a.create365:                                      ; preds = %choice.case354
  %arena.cur367 = call ptr @dva_arena_current()
  %a.create368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 24)
  %arena.cur369 = call ptr @dva_arena_current()
  %a.buf370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 128)
  %a.len.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 0
  store i64 0, ptr %a.len.gep371, align 8
  %a.data.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 1
  store ptr %a.buf370, ptr %a.data.gep372, align 8
  %a.cap.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 2
  store i64 16, ptr %a.cap.gep373, align 8
  store ptr %a.create368, ptr %var.locals, align 8
  br label %a.after366

a.after366:                                       ; preds = %a.create365, %choice.case354
  %a.load2374 = load ptr, ptr %var.locals, align 8
  %call.res375 = call ptr @"dep_graph::copy_names"(ptr %a.load2374)
  store ptr %call.res375, ptr %var.fn_locals, align 8
  %var.load376 = load ptr, ptr %var.fe, align 8
  %fld.gep377 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load376, i32 0, i32 0
  %fld.load378 = load ptr, ptr %fld.gep377, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load378, i32 0, i32 0
  %arr.cycle.len379 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load378, i32 0, i32 1
  %arr.cycle.data380 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.8, align 8
  %cycle.prev.u381 = load ptr, ptr %var._361, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after366
  %counter.load382 = load i64, ptr %loop.idx.8, align 8
  %loop.cond383 = icmp slt i64 %counter.load382, %arr.cycle.len379
  br i1 %loop.cond383, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i384 = sub i64 %counter.load382, 0
  store i64 1, ptr %loop.step.8, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data380, i64 %counter.load382
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i384, ptr %var._i385, align 8
  store ptr %slot.i2p, ptr %var._386, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load387 = load ptr, ptr %var.p, align 8
  %eq.lhs.len388 = getelementptr inbounds { i64, ptr }, ptr %var.load387, i32 0, i32 0
  %eq.lhs.len389 = load i64, ptr %eq.lhs.len388, align 8
  %eq.lhs.len390 = and i64 %eq.lhs.len389, 281474976710655
  %str.tag391 = lshr i64 %eq.lhs.len389, 48
  %str.immortal392 = icmp eq i64 %str.tag391, 0
  br i1 %str.immortal392, label %str_ok394, label %str_gen_check393

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit419
  %step.val449 = load i64, ptr %loop.step.8, align 8
  %loop.next450 = add i64 %counter.load382, %step.val449
  store i64 %loop.next450, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  store ptr %cycle.prev.u381, ptr %var._361, align 8
  %var.load451 = load ptr, ptr %var.fe, align 8
  %fld.gep452 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load451, i32 0, i32 2
  %fld.load453 = load ptr, ptr %fld.gep452, align 8
  %var.load454 = load ptr, ptr %var.fn_locals, align 8
  %a.load455 = load ptr, ptr %var.fn_locals, align 8
  %a.null456 = icmp eq ptr %a.load455, null
  br i1 %a.null456, label %a.create457, label %a.after458

str_gen_check393:                                 ; preds = %loop.body.8
  %arena.cur396 = call ptr @dva_arena_current()
  %tag.valid397 = call i1 @dva_arena_validate_tag(ptr %arena.cur396, i64 %str.tag391)
  br i1 %tag.valid397, label %str_ok394, label %str_stale395

str_ok394:                                        ; preds = %str_stale395, %str_gen_check393, %loop.body.8
  %eq.rhs.len398 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len399 = and i64 %eq.rhs.len398, 281474976710655
  %str.tag400 = lshr i64 %eq.rhs.len398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

str_stale395:                                     ; preds = %str_gen_check393
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str.eq.then408:                                   ; preds = %str_ok403
  %eq.lhs.data411 = getelementptr inbounds { i64, ptr }, ptr %var.load387, i32 0, i32 1
  %eq.lhs.data412 = load ptr, ptr %eq.lhs.data411, align 8
  %eq.rhs.data413 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp414 = call i32 @memcmp(ptr %eq.lhs.data412, ptr %eq.rhs.data413, i64 %eq.lhs.len390)
  %eq.cmp.zero415 = icmp eq i32 %eq.memcmp414, 0
  br label %str.eq.merge410

str.eq.else409:                                   ; preds = %str_ok403
  br label %str.eq.merge410

str.eq.merge410:                                  ; preds = %str.eq.else409, %str.eq.then408
  %str.eq.result416 = phi i1 [ %eq.cmp.zero415, %str.eq.then408 ], [ false, %str.eq.else409 ]
  %str.neq417 = xor i1 %str.eq.result416, true
  br i1 %str.neq417, label %choice.then418, label %choice.exit419

choice.then418:                                   ; preds = %str.eq.merge410
  %var.load420 = load ptr, ptr %var.p, align 8
  %a.load421 = load ptr, ptr %var.fn_locals, align 8
  %a.null422 = icmp eq ptr %a.load421, null
  br i1 %a.null422, label %a.create423, label %a.after424

choice.exit419:                                   ; preds = %a.store435, %str.eq.merge410
  br label %loop.latch.8

a.create423:                                      ; preds = %choice.then418
  %arena.cur425 = call ptr @dva_arena_current()
  %a.create426 = call ptr @dva_arena_alloc(ptr %arena.cur425, i64 24)
  %arena.cur427 = call ptr @dva_arena_current()
  %a.buf428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 128)
  %a.len.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create426, i32 0, i32 0
  store i64 0, ptr %a.len.gep429, align 8
  %a.data.gep430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create426, i32 0, i32 1
  store ptr %a.buf428, ptr %a.data.gep430, align 8
  %a.cap.gep431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create426, i32 0, i32 2
  store i64 16, ptr %a.cap.gep431, align 8
  store ptr %a.create426, ptr %var.fn_locals, align 8
  br label %a.after424

a.after424:                                       ; preds = %a.create423, %choice.then418
  %a.load2432 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check433

a.check433:                                       ; preds = %a.after424
  %a.len436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2432, i32 0, i32 0
  %a.len437 = load i64, ptr %a.len436, align 8
  %a.cap438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2432, i32 0, i32 2
  %a.cap439 = load i64, ptr %a.cap438, align 8
  %a.needs.grow440 = icmp eq i64 %a.len437, %a.cap439
  br i1 %a.needs.grow440, label %a.grow434, label %a.store435

a.grow434:                                        ; preds = %a.check433
  call void @dva_array_grow(ptr %a.load2432)
  br label %a.store435

a.store435:                                       ; preds = %a.grow434, %a.check433
  %a.cur.data441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2432, i32 0, i32 1
  %a.cur.data442 = load ptr, ptr %a.cur.data441, align 8
  %a.cur.len443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2432, i32 0, i32 0
  %a.cur.len444 = load i64, ptr %a.cur.len443, align 8
  %a.elem.gep445 = getelementptr i64, ptr %a.cur.data442, i64 %a.cur.len444
  %slot.p2i446 = ptrtoint ptr %var.load420 to i64
  store i64 %slot.p2i446, ptr %a.elem.gep445, align 8
  %a.next.len447 = add i64 %a.cur.len444, 1
  %b.len.gep448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2432, i32 0, i32 0
  store i64 %a.next.len447, ptr %b.len.gep448, align 8
  br label %choice.exit419

a.create457:                                      ; preds = %loop.exit.8
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
  store ptr %a.create460, ptr %var.fn_locals, align 8
  br label %a.after458

a.after458:                                       ; preds = %a.create457, %loop.exit.8
  %a.load2466 = load ptr, ptr %var.fn_locals, align 8
  %var.load467 = load ptr, ptr %var.refs, align 8
  %a.load468 = load ptr, ptr %var.refs, align 8
  %a.null469 = icmp eq ptr %a.load468, null
  br i1 %a.null469, label %a.create470, label %a.after471

a.create470:                                      ; preds = %a.after458
  %arena.cur472 = call ptr @dva_arena_current()
  %a.create473 = call ptr @dva_arena_alloc(ptr %arena.cur472, i64 24)
  %arena.cur474 = call ptr @dva_arena_current()
  %a.buf475 = call ptr @dva_arena_alloc(ptr %arena.cur474, i64 128)
  %a.len.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create473, i32 0, i32 0
  store i64 0, ptr %a.len.gep476, align 8
  %a.data.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create473, i32 0, i32 1
  store ptr %a.buf475, ptr %a.data.gep477, align 8
  %a.cap.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create473, i32 0, i32 2
  store i64 16, ptr %a.cap.gep478, align 8
  store ptr %a.create473, ptr %var.refs, align 8
  br label %a.after471

a.after471:                                       ; preds = %a.create470, %a.after458
  %a.load2479 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load453, ptr %a.load2466, ptr %a.load2479)
  br label %choice.exit

choice.case480:                                   ; preds = %choice.next355
  %pay.gep485 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr486 = load ptr, ptr %pay.gep485, align 8
  store ptr %payload.ptr486, ptr %var._487, align 8
  store ptr %payload.ptr486, ptr %var.be, align 8
  %var.load488 = load ptr, ptr %var.locals, align 8
  %a.load489 = load ptr, ptr %var.locals, align 8
  %a.null490 = icmp eq ptr %a.load489, null
  br i1 %a.null490, label %a.create491, label %a.after492

choice.next481:                                   ; preds = %choice.next355
  %tag.gep712 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id713 = load i64, ptr %tag.gep712, align 8
  %tag.match714 = icmp eq i64 %tag.id713, 7
  br i1 %tag.match714, label %choice.case710, label %choice.next711

a.create491:                                      ; preds = %choice.case480
  %arena.cur493 = call ptr @dva_arena_current()
  %a.create494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 24)
  %arena.cur495 = call ptr @dva_arena_current()
  %a.buf496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 128)
  %a.len.gep497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 0
  store i64 0, ptr %a.len.gep497, align 8
  %a.data.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 1
  store ptr %a.buf496, ptr %a.data.gep498, align 8
  %a.cap.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 2
  store i64 16, ptr %a.cap.gep499, align 8
  store ptr %a.create494, ptr %var.locals, align 8
  br label %a.after492

a.after492:                                       ; preds = %a.create491, %choice.case480
  %a.load2500 = load ptr, ptr %var.locals, align 8
  %call.res501 = call ptr @"dep_graph::copy_names"(ptr %a.load2500)
  store ptr %call.res501, ptr %var.blk_locals, align 8
  %var.load502 = load ptr, ptr %var.be, align 8
  %fld.gep503 = getelementptr inbounds { ptr }, ptr %var.load502, i32 0, i32 0
  %fld.load504 = load ptr, ptr %fld.gep503, align 8
  %a.len.query505 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load504, i32 0, i32 0
  %a.len.query506 = load i64, ptr %a.len.query505, align 8
  store i64 0, ptr %loop.idx.9, align 8
  %cycle.prev.u508 = load i64, ptr %var._487, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after492
  %counter.load509 = load i64, ptr %loop.idx.9, align 8
  %loop.cond510 = icmp slt i64 %counter.load509, %a.len.query506
  br i1 %loop.cond510, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i511 = sub i64 %counter.load509, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i511, ptr %var._i512, align 8
  store i64 %counter.load509, ptr %var._513, align 8
  store i64 %counter.load509, ptr %var.i507, align 8
  %var.load514 = load ptr, ptr %var.be, align 8
  %fld.gep515 = getelementptr inbounds { ptr }, ptr %var.load514, i32 0, i32 0
  %fld.load516 = load ptr, ptr %fld.gep515, align 8
  %var.load517 = load i64, ptr %var.i507, align 8
  %a.rd.nonnull518 = icmp ne ptr %fld.load516, null
  br i1 %a.rd.nonnull518, label %a.rd.check519, label %a.rd.err.null521

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit577
  %step.val708 = load i64, ptr %loop.step.9, align 8
  %loop.next709 = add i64 %counter.load509, %step.val708
  store i64 %loop.next709, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  store i64 %cycle.prev.u508, ptr %var._487, align 8
  br label %choice.exit

a.rd.check519:                                    ; preds = %loop.body.9
  %a.rd.len524 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load516, i32 0, i32 0
  %a.rd.len525 = load i64, ptr %a.rd.len524, align 8
  %a.rd.ge0526 = icmp sge i64 %var.load517, 0
  %a.rd.lt527 = icmp slt i64 %var.load517, %a.rd.len525
  %a.rd.bounds528 = and i1 %a.rd.ge0526, %a.rd.lt527
  br i1 %a.rd.bounds528, label %a.rd.ok520, label %a.rd.err.oob522

a.rd.ok520:                                       ; preds = %a.rd.check519
  %a.rd.data529 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load516, i32 0, i32 1
  %a.rd.data530 = load ptr, ptr %a.rd.data529, align 8
  %a.rd.elem.gep531 = getelementptr i64, ptr %a.rd.data530, i64 %var.load517
  %a.rd.elem532 = load i64, ptr %a.rd.elem.gep531, align 8
  br label %a.rd.done523

a.rd.err.null521:                                 ; preds = %loop.body.9
  %arena.cur533 = call ptr @dva_arena_current()
  %err.alloc534 = call ptr @dva_arena_alloc(ptr %arena.cur533, i64 56)
  %err.code.gep535 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 0
  store i64 4011, ptr %err.code.gep535, align 8
  %err.msg.gep536 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep536, align 8
  %err.file.gep537 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep537, align 8
  %err.line.gep538 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 3
  store i64 0, ptr %err.line.gep538, align 8
  %err.col.gep539 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 4
  store i64 0, ptr %err.col.gep539, align 8
  %err.ctx.gep540 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc534, i32 0, i32 5
  %err.ctx0.gep541 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep540, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep541, align 8
  %err.ctx1.gep542 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep540, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep542, align 8
  %err.p2i543 = ptrtoint ptr %err.alloc534 to i64
  br label %a.rd.done523

a.rd.err.oob522:                                  ; preds = %a.rd.check519
  %arena.cur544 = call ptr @dva_arena_current()
  %err.alloc545 = call ptr @dva_arena_alloc(ptr %arena.cur544, i64 56)
  %err.code.gep546 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 0
  store i64 4011, ptr %err.code.gep546, align 8
  %err.msg.gep547 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep547, align 8
  %err.file.gep548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep548, align 8
  %err.line.gep549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 3
  store i64 0, ptr %err.line.gep549, align 8
  %err.col.gep550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 4
  store i64 0, ptr %err.col.gep550, align 8
  %err.ctx.gep551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc545, i32 0, i32 5
  %err.ctx0.gep552 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep551, i32 0, i32 0
  store i64 %var.load517, ptr %err.ctx0.gep552, align 8
  %err.ctx1.gep553 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep551, i32 0, i32 1
  store i64 %a.rd.len525, ptr %err.ctx1.gep553, align 8
  %err.p2i554 = ptrtoint ptr %err.alloc545 to i64
  br label %a.rd.done523

a.rd.done523:                                     ; preds = %a.rd.err.oob522, %a.rd.err.null521, %a.rd.ok520
  %a.rd.tag555 = phi i1 [ true, %a.rd.ok520 ], [ false, %a.rd.err.null521 ], [ false, %a.rd.err.oob522 ]
  %a.rd.pay556 = phi i64 [ %a.rd.elem532, %a.rd.ok520 ], [ %err.p2i543, %a.rd.err.null521 ], [ %err.p2i554, %a.rd.err.oob522 ]
  %ram.tag557 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag555, 0
  %ram.pay558 = insertvalue { i1, i64 } %ram.tag557, i64 %a.rd.pay556, 1
  %ram.tag559 = extractvalue { i1, i64 } %ram.pay558, 0
  br i1 %ram.tag559, label %choice.then560, label %choice.else561

choice.then560:                                   ; preds = %a.rd.done523
  %ram.pay563 = extractvalue { i1, i64 } %ram.pay558, 1
  %pay.ptr564 = inttoptr i64 %ram.pay563 to ptr
  store ptr %pay.ptr564, ptr %var._565, align 8
  br label %choice.exit562

choice.else561:                                   ; preds = %a.rd.done523
  %ram.pay566 = extractvalue { i1, i64 } %ram.pay558, 1
  %pay.ptr567 = inttoptr i64 %ram.pay566 to ptr
  store ptr %pay.ptr567, ptr %var._568, align 8
  %arena.cur569 = call ptr @dva_arena_current()
  %enum.alloc570 = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 16)
  %tag.gep571 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc570, i32 0, i32 0
  store i64 0, ptr %tag.gep571, align 8
  %pay.gep572 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc570, i32 0, i32 1
  %arena.cur573 = call ptr @dva_arena_current()
  %enum.pay.alloc574 = call ptr @dva_arena_alloc(ptr %arena.cur573, i64 8)
  store i64 0, ptr %enum.pay.alloc574, align 8
  store ptr %enum.pay.alloc574, ptr %pay.gep572, align 8
  br label %choice.exit562

choice.exit562:                                   ; preds = %choice.else561, %choice.then560
  %choice.res575 = phi ptr [ %pay.ptr564, %choice.then560 ], [ %enum.alloc570, %choice.else561 ]
  store ptr %choice.res575, ptr %var.st, align 8
  %var.load576 = load ptr, ptr %var.st, align 8
  %tag.gep580 = getelementptr inbounds { i64, ptr }, ptr %var.load576, i32 0, i32 0
  %tag.id581 = load i64, ptr %tag.gep580, align 8
  %tag.match582 = icmp eq i64 %tag.id581, 6
  br i1 %tag.match582, label %choice.case578, label %choice.next579

choice.exit577:                                   ; preds = %a.after699, %choice.exit649
  br label %loop.latch.9

choice.case578:                                   ; preds = %choice.exit562
  %pay.gep583 = getelementptr inbounds { i64, ptr }, ptr %var.load576, i32 0, i32 1
  %payload.ptr584 = load ptr, ptr %pay.gep583, align 8
  store ptr %payload.ptr584, ptr %var._585, align 8
  store ptr %payload.ptr584, ptr %var.a, align 8
  %var.load586 = load ptr, ptr %var.a, align 8
  %fld.gep587 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load586, i32 0, i32 5
  %fld.load588 = load ptr, ptr %fld.gep587, align 8
  %var.load589 = load ptr, ptr %var.blk_locals, align 8
  %a.load590 = load ptr, ptr %var.blk_locals, align 8
  %a.null591 = icmp eq ptr %a.load590, null
  br i1 %a.null591, label %a.create592, label %a.after593

choice.next579:                                   ; preds = %choice.exit562
  %var.load681 = load ptr, ptr %var.st, align 8
  %var.load682 = load ptr, ptr %var.blk_locals, align 8
  %a.load683 = load ptr, ptr %var.blk_locals, align 8
  %a.null684 = icmp eq ptr %a.load683, null
  br i1 %a.null684, label %a.create685, label %a.after686

a.create592:                                      ; preds = %choice.case578
  %arena.cur594 = call ptr @dva_arena_current()
  %a.create595 = call ptr @dva_arena_alloc(ptr %arena.cur594, i64 24)
  %arena.cur596 = call ptr @dva_arena_current()
  %a.buf597 = call ptr @dva_arena_alloc(ptr %arena.cur596, i64 128)
  %a.len.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 0
  store i64 0, ptr %a.len.gep598, align 8
  %a.data.gep599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 1
  store ptr %a.buf597, ptr %a.data.gep599, align 8
  %a.cap.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 2
  store i64 16, ptr %a.cap.gep600, align 8
  store ptr %a.create595, ptr %var.blk_locals, align 8
  br label %a.after593

a.after593:                                       ; preds = %a.create592, %choice.case578
  %a.load2601 = load ptr, ptr %var.blk_locals, align 8
  %var.load602 = load ptr, ptr %var.refs, align 8
  %a.load603 = load ptr, ptr %var.refs, align 8
  %a.null604 = icmp eq ptr %a.load603, null
  br i1 %a.null604, label %a.create605, label %a.after606

a.create605:                                      ; preds = %a.after593
  %arena.cur607 = call ptr @dva_arena_current()
  %a.create608 = call ptr @dva_arena_alloc(ptr %arena.cur607, i64 24)
  %arena.cur609 = call ptr @dva_arena_current()
  %a.buf610 = call ptr @dva_arena_alloc(ptr %arena.cur609, i64 128)
  %a.len.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create608, i32 0, i32 0
  store i64 0, ptr %a.len.gep611, align 8
  %a.data.gep612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create608, i32 0, i32 1
  store ptr %a.buf610, ptr %a.data.gep612, align 8
  %a.cap.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create608, i32 0, i32 2
  store i64 16, ptr %a.cap.gep613, align 8
  store ptr %a.create608, ptr %var.refs, align 8
  br label %a.after606

a.after606:                                       ; preds = %a.create605, %a.after593
  %a.load2614 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load588, ptr %a.load2601, ptr %a.load2614)
  %var.load615 = load ptr, ptr %var.a, align 8
  %fld.gep616 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load615, i32 0, i32 0
  %fld.load617 = load ptr, ptr %fld.gep616, align 8
  %eq.lhs.len618 = getelementptr inbounds { i64, ptr }, ptr %fld.load617, i32 0, i32 0
  %eq.lhs.len619 = load i64, ptr %eq.lhs.len618, align 8
  %eq.lhs.len620 = and i64 %eq.lhs.len619, 281474976710655
  %str.tag621 = lshr i64 %eq.lhs.len619, 48
  %str.immortal622 = icmp eq i64 %str.tag621, 0
  br i1 %str.immortal622, label %str_ok624, label %str_gen_check623

str_gen_check623:                                 ; preds = %a.after606
  %arena.cur626 = call ptr @dva_arena_current()
  %tag.valid627 = call i1 @dva_arena_validate_tag(ptr %arena.cur626, i64 %str.tag621)
  br i1 %tag.valid627, label %str_ok624, label %str_stale625

str_ok624:                                        ; preds = %str_stale625, %str_gen_check623, %a.after606
  %eq.rhs.len628 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len629 = and i64 %eq.rhs.len628, 281474976710655
  %str.tag630 = lshr i64 %eq.rhs.len628, 48
  %str.immortal631 = icmp eq i64 %str.tag630, 0
  br i1 %str.immortal631, label %str_ok633, label %str_gen_check632

str_stale625:                                     ; preds = %str_gen_check623
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok624

str_gen_check632:                                 ; preds = %str_ok624
  %arena.cur635 = call ptr @dva_arena_current()
  %tag.valid636 = call i1 @dva_arena_validate_tag(ptr %arena.cur635, i64 %str.tag630)
  br i1 %tag.valid636, label %str_ok633, label %str_stale634

str_ok633:                                        ; preds = %str_stale634, %str_gen_check632, %str_ok624
  %eq.len637 = icmp eq i64 %eq.lhs.len620, %eq.rhs.len629
  br i1 %eq.len637, label %str.eq.then638, label %str.eq.else639

str_stale634:                                     ; preds = %str_gen_check632
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok633

str.eq.then638:                                   ; preds = %str_ok633
  %eq.lhs.data641 = getelementptr inbounds { i64, ptr }, ptr %fld.load617, i32 0, i32 1
  %eq.lhs.data642 = load ptr, ptr %eq.lhs.data641, align 8
  %eq.rhs.data643 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp644 = call i32 @memcmp(ptr %eq.lhs.data642, ptr %eq.rhs.data643, i64 %eq.lhs.len620)
  %eq.cmp.zero645 = icmp eq i32 %eq.memcmp644, 0
  br label %str.eq.merge640

str.eq.else639:                                   ; preds = %str_ok633
  br label %str.eq.merge640

str.eq.merge640:                                  ; preds = %str.eq.else639, %str.eq.then638
  %str.eq.result646 = phi i1 [ %eq.cmp.zero645, %str.eq.then638 ], [ false, %str.eq.else639 ]
  %str.neq647 = xor i1 %str.eq.result646, true
  br i1 %str.neq647, label %choice.then648, label %choice.exit649

choice.then648:                                   ; preds = %str.eq.merge640
  %var.load650 = load ptr, ptr %var.a, align 8
  %fld.gep651 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load650, i32 0, i32 0
  %fld.load652 = load ptr, ptr %fld.gep651, align 8
  %a.load653 = load ptr, ptr %var.blk_locals, align 8
  %a.null654 = icmp eq ptr %a.load653, null
  br i1 %a.null654, label %a.create655, label %a.after656

choice.exit649:                                   ; preds = %a.store667, %str.eq.merge640
  br label %choice.exit577

a.create655:                                      ; preds = %choice.then648
  %arena.cur657 = call ptr @dva_arena_current()
  %a.create658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 24)
  %arena.cur659 = call ptr @dva_arena_current()
  %a.buf660 = call ptr @dva_arena_alloc(ptr %arena.cur659, i64 128)
  %a.len.gep661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 0
  store i64 0, ptr %a.len.gep661, align 8
  %a.data.gep662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 1
  store ptr %a.buf660, ptr %a.data.gep662, align 8
  %a.cap.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 2
  store i64 16, ptr %a.cap.gep663, align 8
  store ptr %a.create658, ptr %var.blk_locals, align 8
  br label %a.after656

a.after656:                                       ; preds = %a.create655, %choice.then648
  %a.load2664 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check665

a.check665:                                       ; preds = %a.after656
  %a.len668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  %a.len669 = load i64, ptr %a.len668, align 8
  %a.cap670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 2
  %a.cap671 = load i64, ptr %a.cap670, align 8
  %a.needs.grow672 = icmp eq i64 %a.len669, %a.cap671
  br i1 %a.needs.grow672, label %a.grow666, label %a.store667

a.grow666:                                        ; preds = %a.check665
  call void @dva_array_grow(ptr %a.load2664)
  br label %a.store667

a.store667:                                       ; preds = %a.grow666, %a.check665
  %a.cur.data673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 1
  %a.cur.data674 = load ptr, ptr %a.cur.data673, align 8
  %a.cur.len675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  %a.cur.len676 = load i64, ptr %a.cur.len675, align 8
  %a.elem.gep677 = getelementptr i64, ptr %a.cur.data674, i64 %a.cur.len676
  %slot.p2i678 = ptrtoint ptr %fld.load652 to i64
  store i64 %slot.p2i678, ptr %a.elem.gep677, align 8
  %a.next.len679 = add i64 %a.cur.len676, 1
  %b.len.gep680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  store i64 %a.next.len679, ptr %b.len.gep680, align 8
  br label %choice.exit649

a.create685:                                      ; preds = %choice.next579
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
  store ptr %a.create688, ptr %var.blk_locals, align 8
  br label %a.after686

a.after686:                                       ; preds = %a.create685, %choice.next579
  %a.load2694 = load ptr, ptr %var.blk_locals, align 8
  %var.load695 = load ptr, ptr %var.refs, align 8
  %a.load696 = load ptr, ptr %var.refs, align 8
  %a.null697 = icmp eq ptr %a.load696, null
  br i1 %a.null697, label %a.create698, label %a.after699

a.create698:                                      ; preds = %a.after686
  %arena.cur700 = call ptr @dva_arena_current()
  %a.create701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 24)
  %arena.cur702 = call ptr @dva_arena_current()
  %a.buf703 = call ptr @dva_arena_alloc(ptr %arena.cur702, i64 128)
  %a.len.gep704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create701, i32 0, i32 0
  store i64 0, ptr %a.len.gep704, align 8
  %a.data.gep705 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create701, i32 0, i32 1
  store ptr %a.buf703, ptr %a.data.gep705, align 8
  %a.cap.gep706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create701, i32 0, i32 2
  store i64 16, ptr %a.cap.gep706, align 8
  store ptr %a.create701, ptr %var.refs, align 8
  br label %a.after699

a.after699:                                       ; preds = %a.create698, %a.after686
  %a.load2707 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load681, ptr %a.load2694, ptr %a.load2707)
  br label %choice.exit577

choice.case710:                                   ; preds = %choice.next481
  %pay.gep715 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr716 = load ptr, ptr %pay.gep715, align 8
  store ptr %payload.ptr716, ptr %var._717, align 8
  store ptr %payload.ptr716, ptr %var.ch, align 8
  %var.load718 = load ptr, ptr %var.ch, align 8
  %fld.gep719 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load718, i32 0, i32 0
  %fld.load720 = load ptr, ptr %fld.gep719, align 8
  %var.load721 = load ptr, ptr %var.locals, align 8
  %a.load722 = load ptr, ptr %var.locals, align 8
  %a.null723 = icmp eq ptr %a.load722, null
  br i1 %a.null723, label %a.create724, label %a.after725

choice.next711:                                   ; preds = %choice.next481
  %tag.gep1117 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1118 = load i64, ptr %tag.gep1117, align 8
  %tag.match1119 = icmp eq i64 %tag.id1118, 15
  br i1 %tag.match1119, label %choice.case1115, label %choice.next1116

a.create724:                                      ; preds = %choice.case710
  %arena.cur726 = call ptr @dva_arena_current()
  %a.create727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 24)
  %arena.cur728 = call ptr @dva_arena_current()
  %a.buf729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 128)
  %a.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 0
  store i64 0, ptr %a.len.gep730, align 8
  %a.data.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 1
  store ptr %a.buf729, ptr %a.data.gep731, align 8
  %a.cap.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 2
  store i64 16, ptr %a.cap.gep732, align 8
  store ptr %a.create727, ptr %var.locals, align 8
  br label %a.after725

a.after725:                                       ; preds = %a.create724, %choice.case710
  %a.load2733 = load ptr, ptr %var.locals, align 8
  %var.load734 = load ptr, ptr %var.refs, align 8
  %a.load735 = load ptr, ptr %var.refs, align 8
  %a.null736 = icmp eq ptr %a.load735, null
  br i1 %a.null736, label %a.create737, label %a.after738

a.create737:                                      ; preds = %a.after725
  %arena.cur739 = call ptr @dva_arena_current()
  %a.create740 = call ptr @dva_arena_alloc(ptr %arena.cur739, i64 24)
  %arena.cur741 = call ptr @dva_arena_current()
  %a.buf742 = call ptr @dva_arena_alloc(ptr %arena.cur741, i64 128)
  %a.len.gep743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create740, i32 0, i32 0
  store i64 0, ptr %a.len.gep743, align 8
  %a.data.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create740, i32 0, i32 1
  store ptr %a.buf742, ptr %a.data.gep744, align 8
  %a.cap.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create740, i32 0, i32 2
  store i64 16, ptr %a.cap.gep745, align 8
  store ptr %a.create740, ptr %var.refs, align 8
  br label %a.after738

a.after738:                                       ; preds = %a.create737, %a.after725
  %a.load2746 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load720, ptr %a.load2733, ptr %a.load2746)
  %var.load747 = load ptr, ptr %var.ch, align 8
  %fld.gep748 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load747, i32 0, i32 2
  %fld.load749 = load ptr, ptr %fld.gep748, align 8
  %a.len.query750 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load749, i32 0, i32 0
  %a.len.query751 = load i64, ptr %a.len.query750, align 8
  store i64 0, ptr %loop.idx.10, align 8
  %cycle.prev.u753 = load i64, ptr %var._717, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %a.after738
  %counter.load754 = load i64, ptr %loop.idx.10, align 8
  %loop.cond755 = icmp slt i64 %counter.load754, %a.len.query751
  br i1 %loop.cond755, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i756 = sub i64 %counter.load754, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i756, ptr %var._i757, align 8
  store i64 %counter.load754, ptr %var._758, align 8
  store i64 %counter.load754, ptr %var.i752, align 8
  %var.load759 = load ptr, ptr %var.ch, align 8
  %fld.gep760 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load759, i32 0, i32 2
  %fld.load761 = load ptr, ptr %fld.gep760, align 8
  %var.load762 = load i64, ptr %var.i752, align 8
  %a.rd.nonnull763 = icmp ne ptr %fld.load761, null
  br i1 %a.rd.nonnull763, label %a.rd.check764, label %a.rd.err.null766

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %loop.exit.12
  %step.val1113 = load i64, ptr %loop.step.10, align 8
  %loop.next1114 = add i64 %counter.load754, %step.val1113
  store i64 %loop.next1114, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  store i64 %cycle.prev.u753, ptr %var._717, align 8
  br label %choice.exit

a.rd.check764:                                    ; preds = %loop.body.10
  %a.rd.len769 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load761, i32 0, i32 0
  %a.rd.len770 = load i64, ptr %a.rd.len769, align 8
  %a.rd.ge0771 = icmp sge i64 %var.load762, 0
  %a.rd.lt772 = icmp slt i64 %var.load762, %a.rd.len770
  %a.rd.bounds773 = and i1 %a.rd.ge0771, %a.rd.lt772
  br i1 %a.rd.bounds773, label %a.rd.ok765, label %a.rd.err.oob767

a.rd.ok765:                                       ; preds = %a.rd.check764
  %a.rd.data774 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load761, i32 0, i32 1
  %a.rd.data775 = load ptr, ptr %a.rd.data774, align 8
  %a.rd.elem.gep776 = getelementptr i64, ptr %a.rd.data775, i64 %var.load762
  %a.rd.elem777 = load i64, ptr %a.rd.elem.gep776, align 8
  br label %a.rd.done768

a.rd.err.null766:                                 ; preds = %loop.body.10
  %arena.cur778 = call ptr @dva_arena_current()
  %err.alloc779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 56)
  %err.code.gep780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 0
  store i64 4011, ptr %err.code.gep780, align 8
  %err.msg.gep781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep781, align 8
  %err.file.gep782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep782, align 8
  %err.line.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 3
  store i64 0, ptr %err.line.gep783, align 8
  %err.col.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 4
  store i64 0, ptr %err.col.gep784, align 8
  %err.ctx.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 5
  %err.ctx0.gep786 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep785, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep786, align 8
  %err.ctx1.gep787 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep785, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep787, align 8
  %err.p2i788 = ptrtoint ptr %err.alloc779 to i64
  br label %a.rd.done768

a.rd.err.oob767:                                  ; preds = %a.rd.check764
  %arena.cur789 = call ptr @dva_arena_current()
  %err.alloc790 = call ptr @dva_arena_alloc(ptr %arena.cur789, i64 56)
  %err.code.gep791 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 0
  store i64 4011, ptr %err.code.gep791, align 8
  %err.msg.gep792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep792, align 8
  %err.file.gep793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep793, align 8
  %err.line.gep794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 3
  store i64 0, ptr %err.line.gep794, align 8
  %err.col.gep795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 4
  store i64 0, ptr %err.col.gep795, align 8
  %err.ctx.gep796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc790, i32 0, i32 5
  %err.ctx0.gep797 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep796, i32 0, i32 0
  store i64 %var.load762, ptr %err.ctx0.gep797, align 8
  %err.ctx1.gep798 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep796, i32 0, i32 1
  store i64 %a.rd.len770, ptr %err.ctx1.gep798, align 8
  %err.p2i799 = ptrtoint ptr %err.alloc790 to i64
  br label %a.rd.done768

a.rd.done768:                                     ; preds = %a.rd.err.oob767, %a.rd.err.null766, %a.rd.ok765
  %a.rd.tag800 = phi i1 [ true, %a.rd.ok765 ], [ false, %a.rd.err.null766 ], [ false, %a.rd.err.oob767 ]
  %a.rd.pay801 = phi i64 [ %a.rd.elem777, %a.rd.ok765 ], [ %err.p2i788, %a.rd.err.null766 ], [ %err.p2i799, %a.rd.err.oob767 ]
  %ram.tag802 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag800, 0
  %ram.pay803 = insertvalue { i1, i64 } %ram.tag802, i64 %a.rd.pay801, 1
  %ram.tag804 = extractvalue { i1, i64 } %ram.pay803, 0
  br i1 %ram.tag804, label %choice.then805, label %choice.else806

choice.then805:                                   ; preds = %a.rd.done768
  %ram.pay808 = extractvalue { i1, i64 } %ram.pay803, 1
  %pay.ptr809 = inttoptr i64 %ram.pay808 to ptr
  store ptr %pay.ptr809, ptr %var._810, align 8
  br label %choice.exit807

choice.else806:                                   ; preds = %a.rd.done768
  %ram.pay811 = extractvalue { i1, i64 } %ram.pay803, 1
  %pay.ptr812 = inttoptr i64 %ram.pay811 to ptr
  store ptr %pay.ptr812, ptr %var._813, align 8
  %arena.cur814 = call ptr @dva_arena_current()
  %enum.alloc815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 16)
  %tag.gep816 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc815, i32 0, i32 0
  store i64 3, ptr %tag.gep816, align 8
  %pay.gep817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc815, i32 0, i32 1
  store ptr null, ptr %pay.gep817, align 8
  %arena.cur818 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur818, i64 24)
  %arena.cur819 = call ptr @dva_arena_current()
  %a.buf820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 128)
  %a.len.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep821, align 8
  %a.data.gep822 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf820, ptr %a.data.gep822, align 8
  %a.cap.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep823, align 8
  %arena.cur824 = call ptr @dva_arena_current()
  %enum.alloc825 = call ptr @dva_arena_alloc(ptr %arena.cur824, i64 16)
  %tag.gep826 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc825, i32 0, i32 0
  store i64 0, ptr %tag.gep826, align 8
  %pay.gep827 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc825, i32 0, i32 1
  %arena.cur828 = call ptr @dva_arena_current()
  %enum.pay.alloc829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 8)
  store i64 0, ptr %enum.pay.alloc829, align 8
  store ptr %enum.pay.alloc829, ptr %pay.gep827, align 8
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
  %a.new838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 24)
  %arena.cur839 = call ptr @dva_arena_current()
  %a.buf840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 128)
  %a.len.gep841 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new838, i32 0, i32 0
  store i64 0, ptr %a.len.gep841, align 8
  %a.data.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new838, i32 0, i32 1
  store ptr %a.buf840, ptr %a.data.gep842, align 8
  %a.cap.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new838, i32 0, i32 2
  store i64 16, ptr %a.cap.gep843, align 8
  %arena.cur844 = call ptr @dva_arena_current()
  %enum.alloc845 = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 16)
  %tag.gep846 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc845, i32 0, i32 0
  store i64 0, ptr %tag.gep846, align 8
  %pay.gep847 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc845, i32 0, i32 1
  %arena.cur848 = call ptr @dva_arena_current()
  %enum.pay.alloc849 = call ptr @dva_arena_alloc(ptr %arena.cur848, i64 8)
  store i64 0, ptr %enum.pay.alloc849, align 8
  store ptr %enum.pay.alloc849, ptr %pay.gep847, align 8
  %arena.cur850 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur850, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc815, ptr %rec.fld, align 8
  %rec.fld851 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new, ptr %rec.fld851, align 8
  %rec.fld852 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc825, ptr %rec.fld852, align 8
  %rec.fld853 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new831, ptr %rec.fld853, align 8
  %rec.fld854 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.new838, ptr %rec.fld854, align 8
  %rec.fld855 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld855, align 1
  %rec.fld856 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %enum.alloc845, ptr %rec.fld856, align 8
  br label %choice.exit807

choice.exit807:                                   ; preds = %choice.else806, %choice.then805
  %choice.res857 = phi ptr [ %pay.ptr809, %choice.then805 ], [ %rec.alloc, %choice.else806 ]
  store ptr %choice.res857, ptr %var.br, align 8
  %var.load858 = load ptr, ptr %var.locals, align 8
  %a.load859 = load ptr, ptr %var.locals, align 8
  %a.null860 = icmp eq ptr %a.load859, null
  br i1 %a.null860, label %a.create861, label %a.after862

a.create861:                                      ; preds = %choice.exit807
  %arena.cur863 = call ptr @dva_arena_current()
  %a.create864 = call ptr @dva_arena_alloc(ptr %arena.cur863, i64 24)
  %arena.cur865 = call ptr @dva_arena_current()
  %a.buf866 = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 128)
  %a.len.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 0
  store i64 0, ptr %a.len.gep867, align 8
  %a.data.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 1
  store ptr %a.buf866, ptr %a.data.gep868, align 8
  %a.cap.gep869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 2
  store i64 16, ptr %a.cap.gep869, align 8
  store ptr %a.create864, ptr %var.locals, align 8
  br label %a.after862

a.after862:                                       ; preds = %a.create861, %choice.exit807
  %a.load2870 = load ptr, ptr %var.locals, align 8
  %call.res871 = call ptr @"dep_graph::copy_names"(ptr %a.load2870)
  store ptr %call.res871, ptr %var.br_locals, align 8
  %var.load872 = load ptr, ptr %var.br, align 8
  %fld.gep873 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load872, i32 0, i32 4
  %fld.load874 = load ptr, ptr %fld.gep873, align 8
  %arr.cycle.len875 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load874, i32 0, i32 0
  %arr.cycle.len876 = load i64, ptr %arr.cycle.len875, align 8
  %arr.cycle.data877 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load874, i32 0, i32 1
  %arr.cycle.data878 = load ptr, ptr %arr.cycle.data877, align 8
  store i64 0, ptr %loop.idx.11, align 8
  %cycle.prev.u879 = load ptr, ptr %var._758, align 8
  %cycle.prev.i = load i64, ptr %var._i757, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after862
  %counter.load880 = load i64, ptr %loop.idx.11, align 8
  %loop.cond881 = icmp slt i64 %counter.load880, %arr.cycle.len876
  br i1 %loop.cond881, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i882 = sub i64 %counter.load880, 0
  store i64 1, ptr %loop.step.11, align 8
  %arr.elem.gep883 = getelementptr i64, ptr %arr.cycle.data878, i64 %counter.load880
  %arr.elem.raw884 = load i64, ptr %arr.elem.gep883, align 8
  %slot.i2p885 = inttoptr i64 %arr.elem.raw884 to ptr
  store i64 %loop.rel.i882, ptr %var._i886, align 8
  store ptr %slot.i2p885, ptr %var._887, align 8
  store ptr %slot.i2p885, ptr %var.bv, align 8
  %var.load888 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len889 = getelementptr inbounds { i64, ptr }, ptr %var.load888, i32 0, i32 0
  %eq.lhs.len890 = load i64, ptr %eq.lhs.len889, align 8
  %eq.lhs.len891 = and i64 %eq.lhs.len890, 281474976710655
  %str.tag892 = lshr i64 %eq.lhs.len890, 48
  %str.immortal893 = icmp eq i64 %str.tag892, 0
  br i1 %str.immortal893, label %str_ok895, label %str_gen_check894

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit920
  %step.val950 = load i64, ptr %loop.step.11, align 8
  %loop.next951 = add i64 %counter.load880, %step.val950
  store i64 %loop.next951, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  store ptr %cycle.prev.u879, ptr %var._758, align 8
  store i64 %cycle.prev.i, ptr %var._i757, align 8
  %var.load952 = load ptr, ptr %var.br, align 8
  %fld.gep953 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load952, i32 0, i32 6
  %fld.load954 = load ptr, ptr %fld.gep953, align 8
  %var.load955 = load ptr, ptr %var.br_locals, align 8
  %a.load956 = load ptr, ptr %var.br_locals, align 8
  %a.null957 = icmp eq ptr %a.load956, null
  br i1 %a.null957, label %a.create958, label %a.after959

str_gen_check894:                                 ; preds = %loop.body.11
  %arena.cur897 = call ptr @dva_arena_current()
  %tag.valid898 = call i1 @dva_arena_validate_tag(ptr %arena.cur897, i64 %str.tag892)
  br i1 %tag.valid898, label %str_ok895, label %str_stale896

str_ok895:                                        ; preds = %str_stale896, %str_gen_check894, %loop.body.11
  %eq.rhs.len899 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len900 = and i64 %eq.rhs.len899, 281474976710655
  %str.tag901 = lshr i64 %eq.rhs.len899, 48
  %str.immortal902 = icmp eq i64 %str.tag901, 0
  br i1 %str.immortal902, label %str_ok904, label %str_gen_check903

str_stale896:                                     ; preds = %str_gen_check894
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok895

str_gen_check903:                                 ; preds = %str_ok895
  %arena.cur906 = call ptr @dva_arena_current()
  %tag.valid907 = call i1 @dva_arena_validate_tag(ptr %arena.cur906, i64 %str.tag901)
  br i1 %tag.valid907, label %str_ok904, label %str_stale905

str_ok904:                                        ; preds = %str_stale905, %str_gen_check903, %str_ok895
  %eq.len908 = icmp eq i64 %eq.lhs.len891, %eq.rhs.len900
  br i1 %eq.len908, label %str.eq.then909, label %str.eq.else910

str_stale905:                                     ; preds = %str_gen_check903
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok904

str.eq.then909:                                   ; preds = %str_ok904
  %eq.lhs.data912 = getelementptr inbounds { i64, ptr }, ptr %var.load888, i32 0, i32 1
  %eq.lhs.data913 = load ptr, ptr %eq.lhs.data912, align 8
  %eq.rhs.data914 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp915 = call i32 @memcmp(ptr %eq.lhs.data913, ptr %eq.rhs.data914, i64 %eq.lhs.len891)
  %eq.cmp.zero916 = icmp eq i32 %eq.memcmp915, 0
  br label %str.eq.merge911

str.eq.else910:                                   ; preds = %str_ok904
  br label %str.eq.merge911

str.eq.merge911:                                  ; preds = %str.eq.else910, %str.eq.then909
  %str.eq.result917 = phi i1 [ %eq.cmp.zero916, %str.eq.then909 ], [ false, %str.eq.else910 ]
  %str.neq918 = xor i1 %str.eq.result917, true
  br i1 %str.neq918, label %choice.then919, label %choice.exit920

choice.then919:                                   ; preds = %str.eq.merge911
  %var.load921 = load ptr, ptr %var.bv, align 8
  %a.load922 = load ptr, ptr %var.br_locals, align 8
  %a.null923 = icmp eq ptr %a.load922, null
  br i1 %a.null923, label %a.create924, label %a.after925

choice.exit920:                                   ; preds = %a.store936, %str.eq.merge911
  br label %loop.latch.11

a.create924:                                      ; preds = %choice.then919
  %arena.cur926 = call ptr @dva_arena_current()
  %a.create927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 24)
  %arena.cur928 = call ptr @dva_arena_current()
  %a.buf929 = call ptr @dva_arena_alloc(ptr %arena.cur928, i64 128)
  %a.len.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create927, i32 0, i32 0
  store i64 0, ptr %a.len.gep930, align 8
  %a.data.gep931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create927, i32 0, i32 1
  store ptr %a.buf929, ptr %a.data.gep931, align 8
  %a.cap.gep932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create927, i32 0, i32 2
  store i64 16, ptr %a.cap.gep932, align 8
  store ptr %a.create927, ptr %var.br_locals, align 8
  br label %a.after925

a.after925:                                       ; preds = %a.create924, %choice.then919
  %a.load2933 = load ptr, ptr %var.br_locals, align 8
  br label %a.check934

a.check934:                                       ; preds = %a.after925
  %a.len937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2933, i32 0, i32 0
  %a.len938 = load i64, ptr %a.len937, align 8
  %a.cap939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2933, i32 0, i32 2
  %a.cap940 = load i64, ptr %a.cap939, align 8
  %a.needs.grow941 = icmp eq i64 %a.len938, %a.cap940
  br i1 %a.needs.grow941, label %a.grow935, label %a.store936

a.grow935:                                        ; preds = %a.check934
  call void @dva_array_grow(ptr %a.load2933)
  br label %a.store936

a.store936:                                       ; preds = %a.grow935, %a.check934
  %a.cur.data942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2933, i32 0, i32 1
  %a.cur.data943 = load ptr, ptr %a.cur.data942, align 8
  %a.cur.len944 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2933, i32 0, i32 0
  %a.cur.len945 = load i64, ptr %a.cur.len944, align 8
  %a.elem.gep946 = getelementptr i64, ptr %a.cur.data943, i64 %a.cur.len945
  %slot.p2i947 = ptrtoint ptr %var.load921 to i64
  store i64 %slot.p2i947, ptr %a.elem.gep946, align 8
  %a.next.len948 = add i64 %a.cur.len945, 1
  %b.len.gep949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2933, i32 0, i32 0
  store i64 %a.next.len948, ptr %b.len.gep949, align 8
  br label %choice.exit920

a.create958:                                      ; preds = %loop.exit.11
  %arena.cur960 = call ptr @dva_arena_current()
  %a.create961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 24)
  %arena.cur962 = call ptr @dva_arena_current()
  %a.buf963 = call ptr @dva_arena_alloc(ptr %arena.cur962, i64 128)
  %a.len.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 0
  store i64 0, ptr %a.len.gep964, align 8
  %a.data.gep965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 1
  store ptr %a.buf963, ptr %a.data.gep965, align 8
  %a.cap.gep966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 2
  store i64 16, ptr %a.cap.gep966, align 8
  store ptr %a.create961, ptr %var.br_locals, align 8
  br label %a.after959

a.after959:                                       ; preds = %a.create958, %loop.exit.11
  %a.load2967 = load ptr, ptr %var.br_locals, align 8
  %var.load968 = load ptr, ptr %var.refs, align 8
  %a.load969 = load ptr, ptr %var.refs, align 8
  %a.null970 = icmp eq ptr %a.load969, null
  br i1 %a.null970, label %a.create971, label %a.after972

a.create971:                                      ; preds = %a.after959
  %arena.cur973 = call ptr @dva_arena_current()
  %a.create974 = call ptr @dva_arena_alloc(ptr %arena.cur973, i64 24)
  %arena.cur975 = call ptr @dva_arena_current()
  %a.buf976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 128)
  %a.len.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create974, i32 0, i32 0
  store i64 0, ptr %a.len.gep977, align 8
  %a.data.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create974, i32 0, i32 1
  store ptr %a.buf976, ptr %a.data.gep978, align 8
  %a.cap.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create974, i32 0, i32 2
  store i64 16, ptr %a.cap.gep979, align 8
  store ptr %a.create974, ptr %var.refs, align 8
  br label %a.after972

a.after972:                                       ; preds = %a.create971, %a.after959
  %a.load2980 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load954, ptr %a.load2967, ptr %a.load2980)
  %var.load981 = load ptr, ptr %var.br, align 8
  %fld.gep982 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load981, i32 0, i32 2
  %fld.load983 = load ptr, ptr %fld.gep982, align 8
  %var.load984 = load ptr, ptr %var.br_locals, align 8
  %a.load985 = load ptr, ptr %var.br_locals, align 8
  %a.null986 = icmp eq ptr %a.load985, null
  br i1 %a.null986, label %a.create987, label %a.after988

a.create987:                                      ; preds = %a.after972
  %arena.cur989 = call ptr @dva_arena_current()
  %a.create990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 24)
  %arena.cur991 = call ptr @dva_arena_current()
  %a.buf992 = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 128)
  %a.len.gep993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create990, i32 0, i32 0
  store i64 0, ptr %a.len.gep993, align 8
  %a.data.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create990, i32 0, i32 1
  store ptr %a.buf992, ptr %a.data.gep994, align 8
  %a.cap.gep995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create990, i32 0, i32 2
  store i64 16, ptr %a.cap.gep995, align 8
  store ptr %a.create990, ptr %var.br_locals, align 8
  br label %a.after988

a.after988:                                       ; preds = %a.create987, %a.after972
  %a.load2996 = load ptr, ptr %var.br_locals, align 8
  %var.load997 = load ptr, ptr %var.refs, align 8
  %a.load998 = load ptr, ptr %var.refs, align 8
  %a.null999 = icmp eq ptr %a.load998, null
  br i1 %a.null999, label %a.create1000, label %a.after1001

a.create1000:                                     ; preds = %a.after988
  %arena.cur1002 = call ptr @dva_arena_current()
  %a.create1003 = call ptr @dva_arena_alloc(ptr %arena.cur1002, i64 24)
  %arena.cur1004 = call ptr @dva_arena_current()
  %a.buf1005 = call ptr @dva_arena_alloc(ptr %arena.cur1004, i64 128)
  %a.len.gep1006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1003, i32 0, i32 0
  store i64 0, ptr %a.len.gep1006, align 8
  %a.data.gep1007 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1003, i32 0, i32 1
  store ptr %a.buf1005, ptr %a.data.gep1007, align 8
  %a.cap.gep1008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1003, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1008, align 8
  store ptr %a.create1003, ptr %var.refs, align 8
  br label %a.after1001

a.after1001:                                      ; preds = %a.create1000, %a.after988
  %a.load21009 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load983, ptr %a.load2996, ptr %a.load21009)
  %var.load1010 = load ptr, ptr %var.br, align 8
  %fld.gep1011 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1010, i32 0, i32 1
  %fld.load1012 = load ptr, ptr %fld.gep1011, align 8
  %a.len.query1013 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1012, i32 0, i32 0
  %a.len.query1014 = load i64, ptr %a.len.query1013, align 8
  store i64 0, ptr %loop.idx.12, align 8
  %cycle.prev.u1015 = load i64, ptr %var._758, align 8
  %cycle.prev.i1016 = load i64, ptr %var._i757, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after1001
  %counter.load1017 = load i64, ptr %loop.idx.12, align 8
  %loop.cond1018 = icmp slt i64 %counter.load1017, %a.len.query1014
  br i1 %loop.cond1018, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i1019 = sub i64 %counter.load1017, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i1019, ptr %var._i1020, align 8
  store i64 %counter.load1017, ptr %var._1021, align 8
  store i64 %counter.load1017, ptr %var.k, align 8
  %var.load1022 = load ptr, ptr %var.br, align 8
  %fld.gep1023 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1022, i32 0, i32 1
  %fld.load1024 = load ptr, ptr %fld.gep1023, align 8
  %var.load1025 = load i64, ptr %var.k, align 8
  %a.rd.nonnull1026 = icmp ne ptr %fld.load1024, null
  br i1 %a.rd.nonnull1026, label %a.rd.check1027, label %a.rd.err.null1029

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %a.after1102
  %step.val1111 = load i64, ptr %loop.step.12, align 8
  %loop.next1112 = add i64 %counter.load1017, %step.val1111
  store i64 %loop.next1112, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  store i64 %cycle.prev.u1015, ptr %var._758, align 8
  store i64 %cycle.prev.i1016, ptr %var._i757, align 8
  br label %loop.latch.10

a.rd.check1027:                                   ; preds = %loop.body.12
  %a.rd.len1032 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1024, i32 0, i32 0
  %a.rd.len1033 = load i64, ptr %a.rd.len1032, align 8
  %a.rd.ge01034 = icmp sge i64 %var.load1025, 0
  %a.rd.lt1035 = icmp slt i64 %var.load1025, %a.rd.len1033
  %a.rd.bounds1036 = and i1 %a.rd.ge01034, %a.rd.lt1035
  br i1 %a.rd.bounds1036, label %a.rd.ok1028, label %a.rd.err.oob1030

a.rd.ok1028:                                      ; preds = %a.rd.check1027
  %a.rd.data1037 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1024, i32 0, i32 1
  %a.rd.data1038 = load ptr, ptr %a.rd.data1037, align 8
  %a.rd.elem.gep1039 = getelementptr i64, ptr %a.rd.data1038, i64 %var.load1025
  %a.rd.elem1040 = load i64, ptr %a.rd.elem.gep1039, align 8
  br label %a.rd.done1031

a.rd.err.null1029:                                ; preds = %loop.body.12
  %arena.cur1041 = call ptr @dva_arena_current()
  %err.alloc1042 = call ptr @dva_arena_alloc(ptr %arena.cur1041, i64 56)
  %err.code.gep1043 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1043, align 8
  %err.msg.gep1044 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1044, align 8
  %err.file.gep1045 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1045, align 8
  %err.line.gep1046 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 3
  store i64 0, ptr %err.line.gep1046, align 8
  %err.col.gep1047 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 4
  store i64 0, ptr %err.col.gep1047, align 8
  %err.ctx.gep1048 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1042, i32 0, i32 5
  %err.ctx0.gep1049 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1048, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1049, align 8
  %err.ctx1.gep1050 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1048, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1050, align 8
  %err.p2i1051 = ptrtoint ptr %err.alloc1042 to i64
  br label %a.rd.done1031

a.rd.err.oob1030:                                 ; preds = %a.rd.check1027
  %arena.cur1052 = call ptr @dva_arena_current()
  %err.alloc1053 = call ptr @dva_arena_alloc(ptr %arena.cur1052, i64 56)
  %err.code.gep1054 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1054, align 8
  %err.msg.gep1055 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1055, align 8
  %err.file.gep1056 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1056, align 8
  %err.line.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 3
  store i64 0, ptr %err.line.gep1057, align 8
  %err.col.gep1058 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 4
  store i64 0, ptr %err.col.gep1058, align 8
  %err.ctx.gep1059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1053, i32 0, i32 5
  %err.ctx0.gep1060 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1059, i32 0, i32 0
  store i64 %var.load1025, ptr %err.ctx0.gep1060, align 8
  %err.ctx1.gep1061 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1059, i32 0, i32 1
  store i64 %a.rd.len1033, ptr %err.ctx1.gep1061, align 8
  %err.p2i1062 = ptrtoint ptr %err.alloc1053 to i64
  br label %a.rd.done1031

a.rd.done1031:                                    ; preds = %a.rd.err.oob1030, %a.rd.err.null1029, %a.rd.ok1028
  %a.rd.tag1063 = phi i1 [ true, %a.rd.ok1028 ], [ false, %a.rd.err.null1029 ], [ false, %a.rd.err.oob1030 ]
  %a.rd.pay1064 = phi i64 [ %a.rd.elem1040, %a.rd.ok1028 ], [ %err.p2i1051, %a.rd.err.null1029 ], [ %err.p2i1062, %a.rd.err.oob1030 ]
  %ram.tag1065 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1063, 0
  %ram.pay1066 = insertvalue { i1, i64 } %ram.tag1065, i64 %a.rd.pay1064, 1
  %ram.tag1067 = extractvalue { i1, i64 } %ram.pay1066, 0
  br i1 %ram.tag1067, label %choice.then1068, label %choice.else1069

choice.then1068:                                  ; preds = %a.rd.done1031
  %ram.pay1071 = extractvalue { i1, i64 } %ram.pay1066, 1
  %pay.ptr1072 = inttoptr i64 %ram.pay1071 to ptr
  store ptr %pay.ptr1072, ptr %var._1073, align 8
  br label %choice.exit1070

choice.else1069:                                  ; preds = %a.rd.done1031
  %ram.pay1074 = extractvalue { i1, i64 } %ram.pay1066, 1
  %pay.ptr1075 = inttoptr i64 %ram.pay1074 to ptr
  store ptr %pay.ptr1075, ptr %var._1076, align 8
  %arena.cur1077 = call ptr @dva_arena_current()
  %enum.alloc1078 = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 16)
  %tag.gep1079 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1078, i32 0, i32 0
  store i64 0, ptr %tag.gep1079, align 8
  %pay.gep1080 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1078, i32 0, i32 1
  %arena.cur1081 = call ptr @dva_arena_current()
  %enum.pay.alloc1082 = call ptr @dva_arena_alloc(ptr %arena.cur1081, i64 8)
  store i64 0, ptr %enum.pay.alloc1082, align 8
  store ptr %enum.pay.alloc1082, ptr %pay.gep1080, align 8
  br label %choice.exit1070

choice.exit1070:                                  ; preds = %choice.else1069, %choice.then1068
  %choice.res1083 = phi ptr [ %pay.ptr1072, %choice.then1068 ], [ %enum.alloc1078, %choice.else1069 ]
  store ptr %choice.res1083, ptr %var.cv, align 8
  %var.load1084 = load ptr, ptr %var.cv, align 8
  %var.load1085 = load ptr, ptr %var.br_locals, align 8
  %a.load1086 = load ptr, ptr %var.br_locals, align 8
  %a.null1087 = icmp eq ptr %a.load1086, null
  br i1 %a.null1087, label %a.create1088, label %a.after1089

a.create1088:                                     ; preds = %choice.exit1070
  %arena.cur1090 = call ptr @dva_arena_current()
  %a.create1091 = call ptr @dva_arena_alloc(ptr %arena.cur1090, i64 24)
  %arena.cur1092 = call ptr @dva_arena_current()
  %a.buf1093 = call ptr @dva_arena_alloc(ptr %arena.cur1092, i64 128)
  %a.len.gep1094 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1091, i32 0, i32 0
  store i64 0, ptr %a.len.gep1094, align 8
  %a.data.gep1095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1091, i32 0, i32 1
  store ptr %a.buf1093, ptr %a.data.gep1095, align 8
  %a.cap.gep1096 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1091, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1096, align 8
  store ptr %a.create1091, ptr %var.br_locals, align 8
  br label %a.after1089

a.after1089:                                      ; preds = %a.create1088, %choice.exit1070
  %a.load21097 = load ptr, ptr %var.br_locals, align 8
  %var.load1098 = load ptr, ptr %var.refs, align 8
  %a.load1099 = load ptr, ptr %var.refs, align 8
  %a.null1100 = icmp eq ptr %a.load1099, null
  br i1 %a.null1100, label %a.create1101, label %a.after1102

a.create1101:                                     ; preds = %a.after1089
  %arena.cur1103 = call ptr @dva_arena_current()
  %a.create1104 = call ptr @dva_arena_alloc(ptr %arena.cur1103, i64 24)
  %arena.cur1105 = call ptr @dva_arena_current()
  %a.buf1106 = call ptr @dva_arena_alloc(ptr %arena.cur1105, i64 128)
  %a.len.gep1107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1104, i32 0, i32 0
  store i64 0, ptr %a.len.gep1107, align 8
  %a.data.gep1108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1104, i32 0, i32 1
  store ptr %a.buf1106, ptr %a.data.gep1108, align 8
  %a.cap.gep1109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1104, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1109, align 8
  store ptr %a.create1104, ptr %var.refs, align 8
  br label %a.after1102

a.after1102:                                      ; preds = %a.create1101, %a.after1089
  %a.load21110 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1084, ptr %a.load21097, ptr %a.load21110)
  br label %loop.latch.12

choice.case1115:                                  ; preds = %choice.next711
  %pay.gep1120 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1121 = load ptr, ptr %pay.gep1120, align 8
  store ptr %payload.ptr1121, ptr %var._1122, align 8
  store ptr %payload.ptr1121, ptr %var.re, align 8
  %var.load1123 = load ptr, ptr %var.re, align 8
  %fld.gep1124 = getelementptr inbounds { ptr, i1 }, ptr %var.load1123, i32 0, i32 0
  %fld.load1125 = load ptr, ptr %fld.gep1124, align 8
  %a.len.query1126 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1125, i32 0, i32 0
  %a.len.query1127 = load i64, ptr %a.len.query1126, align 8
  store i64 0, ptr %loop.idx.13, align 8
  %cycle.prev.u1129 = load i64, ptr %var._1122, align 8
  br label %loop.header.13

choice.next1116:                                  ; preds = %choice.next711
  %tag.gep1235 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1236 = load i64, ptr %tag.gep1235, align 8
  %tag.match1237 = icmp eq i64 %tag.id1236, 16
  br i1 %tag.match1237, label %choice.case1233, label %choice.next1234

loop.header.13:                                   ; preds = %loop.latch.13, %choice.case1115
  %counter.load1130 = load i64, ptr %loop.idx.13, align 8
  %loop.cond1131 = icmp slt i64 %counter.load1130, %a.len.query1127
  br i1 %loop.cond1131, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i1132 = sub i64 %counter.load1130, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i1132, ptr %var._i1133, align 8
  store i64 %counter.load1130, ptr %var._1134, align 8
  store i64 %counter.load1130, ptr %var.i1128, align 8
  %var.load1135 = load ptr, ptr %var.re, align 8
  %fld.gep1136 = getelementptr inbounds { ptr, i1 }, ptr %var.load1135, i32 0, i32 0
  %fld.load1137 = load ptr, ptr %fld.gep1136, align 8
  %var.load1138 = load i64, ptr %var.i1128, align 8
  %a.rd.nonnull1139 = icmp ne ptr %fld.load1137, null
  br i1 %a.rd.nonnull1139, label %a.rd.check1140, label %a.rd.err.null1142

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %a.after1222
  %step.val1231 = load i64, ptr %loop.step.13, align 8
  %loop.next1232 = add i64 %counter.load1130, %step.val1231
  store i64 %loop.next1232, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  store i64 %cycle.prev.u1129, ptr %var._1122, align 8
  br label %choice.exit

a.rd.check1140:                                   ; preds = %loop.body.13
  %a.rd.len1145 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1137, i32 0, i32 0
  %a.rd.len1146 = load i64, ptr %a.rd.len1145, align 8
  %a.rd.ge01147 = icmp sge i64 %var.load1138, 0
  %a.rd.lt1148 = icmp slt i64 %var.load1138, %a.rd.len1146
  %a.rd.bounds1149 = and i1 %a.rd.ge01147, %a.rd.lt1148
  br i1 %a.rd.bounds1149, label %a.rd.ok1141, label %a.rd.err.oob1143

a.rd.ok1141:                                      ; preds = %a.rd.check1140
  %a.rd.data1150 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1137, i32 0, i32 1
  %a.rd.data1151 = load ptr, ptr %a.rd.data1150, align 8
  %a.rd.elem.gep1152 = getelementptr i64, ptr %a.rd.data1151, i64 %var.load1138
  %a.rd.elem1153 = load i64, ptr %a.rd.elem.gep1152, align 8
  br label %a.rd.done1144

a.rd.err.null1142:                                ; preds = %loop.body.13
  %arena.cur1154 = call ptr @dva_arena_current()
  %err.alloc1155 = call ptr @dva_arena_alloc(ptr %arena.cur1154, i64 56)
  %err.code.gep1156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1156, align 8
  %err.msg.gep1157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1157, align 8
  %err.file.gep1158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1158, align 8
  %err.line.gep1159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 3
  store i64 0, ptr %err.line.gep1159, align 8
  %err.col.gep1160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 4
  store i64 0, ptr %err.col.gep1160, align 8
  %err.ctx.gep1161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1155, i32 0, i32 5
  %err.ctx0.gep1162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1161, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1162, align 8
  %err.ctx1.gep1163 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1161, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1163, align 8
  %err.p2i1164 = ptrtoint ptr %err.alloc1155 to i64
  br label %a.rd.done1144

a.rd.err.oob1143:                                 ; preds = %a.rd.check1140
  %arena.cur1165 = call ptr @dva_arena_current()
  %err.alloc1166 = call ptr @dva_arena_alloc(ptr %arena.cur1165, i64 56)
  %err.code.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1167, align 8
  %err.msg.gep1168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1168, align 8
  %err.file.gep1169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1169, align 8
  %err.line.gep1170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 3
  store i64 0, ptr %err.line.gep1170, align 8
  %err.col.gep1171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 4
  store i64 0, ptr %err.col.gep1171, align 8
  %err.ctx.gep1172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1166, i32 0, i32 5
  %err.ctx0.gep1173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1172, i32 0, i32 0
  store i64 %var.load1138, ptr %err.ctx0.gep1173, align 8
  %err.ctx1.gep1174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1172, i32 0, i32 1
  store i64 %a.rd.len1146, ptr %err.ctx1.gep1174, align 8
  %err.p2i1175 = ptrtoint ptr %err.alloc1166 to i64
  br label %a.rd.done1144

a.rd.done1144:                                    ; preds = %a.rd.err.oob1143, %a.rd.err.null1142, %a.rd.ok1141
  %a.rd.tag1176 = phi i1 [ true, %a.rd.ok1141 ], [ false, %a.rd.err.null1142 ], [ false, %a.rd.err.oob1143 ]
  %a.rd.pay1177 = phi i64 [ %a.rd.elem1153, %a.rd.ok1141 ], [ %err.p2i1164, %a.rd.err.null1142 ], [ %err.p2i1175, %a.rd.err.oob1143 ]
  %ram.tag1178 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1176, 0
  %ram.pay1179 = insertvalue { i1, i64 } %ram.tag1178, i64 %a.rd.pay1177, 1
  %ram.tag1180 = extractvalue { i1, i64 } %ram.pay1179, 0
  br i1 %ram.tag1180, label %choice.then1181, label %choice.else1182

choice.then1181:                                  ; preds = %a.rd.done1144
  %ram.pay1184 = extractvalue { i1, i64 } %ram.pay1179, 1
  %pay.ptr1185 = inttoptr i64 %ram.pay1184 to ptr
  store ptr %pay.ptr1185, ptr %var._1186, align 8
  br label %choice.exit1183

choice.else1182:                                  ; preds = %a.rd.done1144
  %ram.pay1187 = extractvalue { i1, i64 } %ram.pay1179, 1
  %pay.ptr1188 = inttoptr i64 %ram.pay1187 to ptr
  store ptr %pay.ptr1188, ptr %var._1189, align 8
  %arena.cur1190 = call ptr @dva_arena_current()
  %enum.alloc1191 = call ptr @dva_arena_alloc(ptr %arena.cur1190, i64 16)
  %tag.gep1192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1191, i32 0, i32 0
  store i64 0, ptr %tag.gep1192, align 8
  %pay.gep1193 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1191, i32 0, i32 1
  %arena.cur1194 = call ptr @dva_arena_current()
  %enum.pay.alloc1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 8)
  store i64 0, ptr %enum.pay.alloc1195, align 8
  store ptr %enum.pay.alloc1195, ptr %pay.gep1193, align 8
  %arena.cur1196 = call ptr @dva_arena_current()
  %rec.alloc1197 = call ptr @dva_arena_alloc(ptr %arena.cur1196, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1198 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1197, i32 0, i32 0
  store i1 false, ptr %rec.fld1198, align 1
  %rec.fld1199 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1197, i32 0, i32 1
  store ptr @str.4.struct, ptr %rec.fld1199, align 8
  %rec.fld1200 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1197, i32 0, i32 2
  store ptr %enum.alloc1191, ptr %rec.fld1200, align 8
  br label %choice.exit1183

choice.exit1183:                                  ; preds = %choice.else1182, %choice.then1181
  %choice.res1201 = phi ptr [ %pay.ptr1185, %choice.then1181 ], [ %rec.alloc1197, %choice.else1182 ]
  store ptr %choice.res1201, ptr %var.fld, align 8
  %var.load1202 = load ptr, ptr %var.fld, align 8
  %fld.gep1203 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1202, i32 0, i32 2
  %fld.load1204 = load ptr, ptr %fld.gep1203, align 8
  %var.load1205 = load ptr, ptr %var.locals, align 8
  %a.load1206 = load ptr, ptr %var.locals, align 8
  %a.null1207 = icmp eq ptr %a.load1206, null
  br i1 %a.null1207, label %a.create1208, label %a.after1209

a.create1208:                                     ; preds = %choice.exit1183
  %arena.cur1210 = call ptr @dva_arena_current()
  %a.create1211 = call ptr @dva_arena_alloc(ptr %arena.cur1210, i64 24)
  %arena.cur1212 = call ptr @dva_arena_current()
  %a.buf1213 = call ptr @dva_arena_alloc(ptr %arena.cur1212, i64 128)
  %a.len.gep1214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1211, i32 0, i32 0
  store i64 0, ptr %a.len.gep1214, align 8
  %a.data.gep1215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1211, i32 0, i32 1
  store ptr %a.buf1213, ptr %a.data.gep1215, align 8
  %a.cap.gep1216 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1211, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1216, align 8
  store ptr %a.create1211, ptr %var.locals, align 8
  br label %a.after1209

a.after1209:                                      ; preds = %a.create1208, %choice.exit1183
  %a.load21217 = load ptr, ptr %var.locals, align 8
  %var.load1218 = load ptr, ptr %var.refs, align 8
  %a.load1219 = load ptr, ptr %var.refs, align 8
  %a.null1220 = icmp eq ptr %a.load1219, null
  br i1 %a.null1220, label %a.create1221, label %a.after1222

a.create1221:                                     ; preds = %a.after1209
  %arena.cur1223 = call ptr @dva_arena_current()
  %a.create1224 = call ptr @dva_arena_alloc(ptr %arena.cur1223, i64 24)
  %arena.cur1225 = call ptr @dva_arena_current()
  %a.buf1226 = call ptr @dva_arena_alloc(ptr %arena.cur1225, i64 128)
  %a.len.gep1227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1224, i32 0, i32 0
  store i64 0, ptr %a.len.gep1227, align 8
  %a.data.gep1228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1224, i32 0, i32 1
  store ptr %a.buf1226, ptr %a.data.gep1228, align 8
  %a.cap.gep1229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1224, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1229, align 8
  store ptr %a.create1224, ptr %var.refs, align 8
  br label %a.after1222

a.after1222:                                      ; preds = %a.create1221, %a.after1209
  %a.load21230 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1204, ptr %a.load21217, ptr %a.load21230)
  br label %loop.latch.13

choice.case1233:                                  ; preds = %choice.next1116
  %pay.gep1238 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1239 = load ptr, ptr %pay.gep1238, align 8
  store ptr %payload.ptr1239, ptr %var._1240, align 8
  store ptr %payload.ptr1239, ptr %var.m, align 8
  %var.load1241 = load ptr, ptr %var.m, align 8
  %fld.gep1242 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1241, i32 0, i32 0
  %fld.load1243 = load ptr, ptr %fld.gep1242, align 8
  %var.load1244 = load ptr, ptr %var.locals, align 8
  %a.load1245 = load ptr, ptr %var.locals, align 8
  %a.null1246 = icmp eq ptr %a.load1245, null
  br i1 %a.null1246, label %a.create1247, label %a.after1248

choice.next1234:                                  ; preds = %choice.next1116
  %tag.gep1301 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1302 = load i64, ptr %tag.gep1301, align 8
  %tag.match1303 = icmp eq i64 %tag.id1302, 17
  br i1 %tag.match1303, label %choice.case1299, label %choice.next1300

a.create1247:                                     ; preds = %choice.case1233
  %arena.cur1249 = call ptr @dva_arena_current()
  %a.create1250 = call ptr @dva_arena_alloc(ptr %arena.cur1249, i64 24)
  %arena.cur1251 = call ptr @dva_arena_current()
  %a.buf1252 = call ptr @dva_arena_alloc(ptr %arena.cur1251, i64 128)
  %a.len.gep1253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1250, i32 0, i32 0
  store i64 0, ptr %a.len.gep1253, align 8
  %a.data.gep1254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1250, i32 0, i32 1
  store ptr %a.buf1252, ptr %a.data.gep1254, align 8
  %a.cap.gep1255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1250, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1255, align 8
  store ptr %a.create1250, ptr %var.locals, align 8
  br label %a.after1248

a.after1248:                                      ; preds = %a.create1247, %choice.case1233
  %a.load21256 = load ptr, ptr %var.locals, align 8
  %var.load1257 = load ptr, ptr %var.refs, align 8
  %a.load1258 = load ptr, ptr %var.refs, align 8
  %a.null1259 = icmp eq ptr %a.load1258, null
  br i1 %a.null1259, label %a.create1260, label %a.after1261

a.create1260:                                     ; preds = %a.after1248
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
  store ptr %a.create1263, ptr %var.refs, align 8
  br label %a.after1261

a.after1261:                                      ; preds = %a.create1260, %a.after1248
  %a.load21269 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1243, ptr %a.load21256, ptr %a.load21269)
  %var.load1270 = load ptr, ptr %var.m, align 8
  %fld.gep1271 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1270, i32 0, i32 3
  %fld.load1272 = load ptr, ptr %fld.gep1271, align 8
  %var.load1273 = load ptr, ptr %var.locals, align 8
  %a.load1274 = load ptr, ptr %var.locals, align 8
  %a.null1275 = icmp eq ptr %a.load1274, null
  br i1 %a.null1275, label %a.create1276, label %a.after1277

a.create1276:                                     ; preds = %a.after1261
  %arena.cur1278 = call ptr @dva_arena_current()
  %a.create1279 = call ptr @dva_arena_alloc(ptr %arena.cur1278, i64 24)
  %arena.cur1280 = call ptr @dva_arena_current()
  %a.buf1281 = call ptr @dva_arena_alloc(ptr %arena.cur1280, i64 128)
  %a.len.gep1282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1279, i32 0, i32 0
  store i64 0, ptr %a.len.gep1282, align 8
  %a.data.gep1283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1279, i32 0, i32 1
  store ptr %a.buf1281, ptr %a.data.gep1283, align 8
  %a.cap.gep1284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1279, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1284, align 8
  store ptr %a.create1279, ptr %var.locals, align 8
  br label %a.after1277

a.after1277:                                      ; preds = %a.create1276, %a.after1261
  %a.load21285 = load ptr, ptr %var.locals, align 8
  %var.load1286 = load ptr, ptr %var.refs, align 8
  %a.load1287 = load ptr, ptr %var.refs, align 8
  %a.null1288 = icmp eq ptr %a.load1287, null
  br i1 %a.null1288, label %a.create1289, label %a.after1290

a.create1289:                                     ; preds = %a.after1277
  %arena.cur1291 = call ptr @dva_arena_current()
  %a.create1292 = call ptr @dva_arena_alloc(ptr %arena.cur1291, i64 24)
  %arena.cur1293 = call ptr @dva_arena_current()
  %a.buf1294 = call ptr @dva_arena_alloc(ptr %arena.cur1293, i64 128)
  %a.len.gep1295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 0
  store i64 0, ptr %a.len.gep1295, align 8
  %a.data.gep1296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 1
  store ptr %a.buf1294, ptr %a.data.gep1296, align 8
  %a.cap.gep1297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1297, align 8
  store ptr %a.create1292, ptr %var.refs, align 8
  br label %a.after1290

a.after1290:                                      ; preds = %a.create1289, %a.after1277
  %a.load21298 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1272, ptr %a.load21285, ptr %a.load21298)
  br label %choice.exit

choice.case1299:                                  ; preds = %choice.next1234
  %pay.gep1304 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1305 = load ptr, ptr %pay.gep1304, align 8
  store ptr %payload.ptr1305, ptr %var._1306, align 8
  store ptr %payload.ptr1305, ptr %var.ka, align 8
  %var.load1307 = load ptr, ptr %var.ka, align 8
  %fld.gep1308 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1307, i32 0, i32 0
  %fld.load1309 = load ptr, ptr %fld.gep1308, align 8
  %var.load1310 = load ptr, ptr %var.locals, align 8
  %a.load1311 = load ptr, ptr %var.locals, align 8
  %a.null1312 = icmp eq ptr %a.load1311, null
  br i1 %a.null1312, label %a.create1313, label %a.after1314

choice.next1300:                                  ; preds = %choice.next1234
  %tag.gep1367 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1368 = load i64, ptr %tag.gep1367, align 8
  %tag.match1369 = icmp eq i64 %tag.id1368, 6
  br i1 %tag.match1369, label %choice.case1365, label %choice.next1366

a.create1313:                                     ; preds = %choice.case1299
  %arena.cur1315 = call ptr @dva_arena_current()
  %a.create1316 = call ptr @dva_arena_alloc(ptr %arena.cur1315, i64 24)
  %arena.cur1317 = call ptr @dva_arena_current()
  %a.buf1318 = call ptr @dva_arena_alloc(ptr %arena.cur1317, i64 128)
  %a.len.gep1319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1316, i32 0, i32 0
  store i64 0, ptr %a.len.gep1319, align 8
  %a.data.gep1320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1316, i32 0, i32 1
  store ptr %a.buf1318, ptr %a.data.gep1320, align 8
  %a.cap.gep1321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1316, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1321, align 8
  store ptr %a.create1316, ptr %var.locals, align 8
  br label %a.after1314

a.after1314:                                      ; preds = %a.create1313, %choice.case1299
  %a.load21322 = load ptr, ptr %var.locals, align 8
  %var.load1323 = load ptr, ptr %var.refs, align 8
  %a.load1324 = load ptr, ptr %var.refs, align 8
  %a.null1325 = icmp eq ptr %a.load1324, null
  br i1 %a.null1325, label %a.create1326, label %a.after1327

a.create1326:                                     ; preds = %a.after1314
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
  store ptr %a.create1329, ptr %var.refs, align 8
  br label %a.after1327

a.after1327:                                      ; preds = %a.create1326, %a.after1314
  %a.load21335 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1309, ptr %a.load21322, ptr %a.load21335)
  %var.load1336 = load ptr, ptr %var.ka, align 8
  %fld.gep1337 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1336, i32 0, i32 1
  %fld.load1338 = load ptr, ptr %fld.gep1337, align 8
  %var.load1339 = load ptr, ptr %var.locals, align 8
  %a.load1340 = load ptr, ptr %var.locals, align 8
  %a.null1341 = icmp eq ptr %a.load1340, null
  br i1 %a.null1341, label %a.create1342, label %a.after1343

a.create1342:                                     ; preds = %a.after1327
  %arena.cur1344 = call ptr @dva_arena_current()
  %a.create1345 = call ptr @dva_arena_alloc(ptr %arena.cur1344, i64 24)
  %arena.cur1346 = call ptr @dva_arena_current()
  %a.buf1347 = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 128)
  %a.len.gep1348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1345, i32 0, i32 0
  store i64 0, ptr %a.len.gep1348, align 8
  %a.data.gep1349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1345, i32 0, i32 1
  store ptr %a.buf1347, ptr %a.data.gep1349, align 8
  %a.cap.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1345, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1350, align 8
  store ptr %a.create1345, ptr %var.locals, align 8
  br label %a.after1343

a.after1343:                                      ; preds = %a.create1342, %a.after1327
  %a.load21351 = load ptr, ptr %var.locals, align 8
  %var.load1352 = load ptr, ptr %var.refs, align 8
  %a.load1353 = load ptr, ptr %var.refs, align 8
  %a.null1354 = icmp eq ptr %a.load1353, null
  br i1 %a.null1354, label %a.create1355, label %a.after1356

a.create1355:                                     ; preds = %a.after1343
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
  store ptr %a.create1358, ptr %var.refs, align 8
  br label %a.after1356

a.after1356:                                      ; preds = %a.create1355, %a.after1343
  %a.load21364 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1338, ptr %a.load21351, ptr %a.load21364)
  br label %choice.exit

choice.case1365:                                  ; preds = %choice.next1300
  %pay.gep1370 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1371 = load ptr, ptr %pay.gep1370, align 8
  store ptr %payload.ptr1371, ptr %var._1372, align 8
  store ptr %payload.ptr1371, ptr %var.a1373, align 8
  %var.load1374 = load ptr, ptr %var.a1373, align 8
  %fld.gep1375 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1374, i32 0, i32 5
  %fld.load1376 = load ptr, ptr %fld.gep1375, align 8
  %var.load1377 = load ptr, ptr %var.locals, align 8
  %a.load1378 = load ptr, ptr %var.locals, align 8
  %a.null1379 = icmp eq ptr %a.load1378, null
  br i1 %a.null1379, label %a.create1380, label %a.after1381

choice.next1366:                                  ; preds = %choice.next1300
  %tag.gep1434 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1435 = load i64, ptr %tag.gep1434, align 8
  %tag.match1436 = icmp eq i64 %tag.id1435, 12
  br i1 %tag.match1436, label %choice.case1432, label %choice.next1433

a.create1380:                                     ; preds = %choice.case1365
  %arena.cur1382 = call ptr @dva_arena_current()
  %a.create1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 24)
  %arena.cur1384 = call ptr @dva_arena_current()
  %a.buf1385 = call ptr @dva_arena_alloc(ptr %arena.cur1384, i64 128)
  %a.len.gep1386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 0
  store i64 0, ptr %a.len.gep1386, align 8
  %a.data.gep1387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 1
  store ptr %a.buf1385, ptr %a.data.gep1387, align 8
  %a.cap.gep1388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1388, align 8
  store ptr %a.create1383, ptr %var.locals, align 8
  br label %a.after1381

a.after1381:                                      ; preds = %a.create1380, %choice.case1365
  %a.load21389 = load ptr, ptr %var.locals, align 8
  %var.load1390 = load ptr, ptr %var.refs, align 8
  %a.load1391 = load ptr, ptr %var.refs, align 8
  %a.null1392 = icmp eq ptr %a.load1391, null
  br i1 %a.null1392, label %a.create1393, label %a.after1394

a.create1393:                                     ; preds = %a.after1381
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
  store ptr %a.create1396, ptr %var.refs, align 8
  br label %a.after1394

a.after1394:                                      ; preds = %a.create1393, %a.after1381
  %a.load21402 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1376, ptr %a.load21389, ptr %a.load21402)
  %var.load1403 = load ptr, ptr %var.a1373, align 8
  %fld.gep1404 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1403, i32 0, i32 6
  %fld.load1405 = load ptr, ptr %fld.gep1404, align 8
  %var.load1406 = load ptr, ptr %var.locals, align 8
  %a.load1407 = load ptr, ptr %var.locals, align 8
  %a.null1408 = icmp eq ptr %a.load1407, null
  br i1 %a.null1408, label %a.create1409, label %a.after1410

a.create1409:                                     ; preds = %a.after1394
  %arena.cur1411 = call ptr @dva_arena_current()
  %a.create1412 = call ptr @dva_arena_alloc(ptr %arena.cur1411, i64 24)
  %arena.cur1413 = call ptr @dva_arena_current()
  %a.buf1414 = call ptr @dva_arena_alloc(ptr %arena.cur1413, i64 128)
  %a.len.gep1415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1412, i32 0, i32 0
  store i64 0, ptr %a.len.gep1415, align 8
  %a.data.gep1416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1412, i32 0, i32 1
  store ptr %a.buf1414, ptr %a.data.gep1416, align 8
  %a.cap.gep1417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1412, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1417, align 8
  store ptr %a.create1412, ptr %var.locals, align 8
  br label %a.after1410

a.after1410:                                      ; preds = %a.create1409, %a.after1394
  %a.load21418 = load ptr, ptr %var.locals, align 8
  %var.load1419 = load ptr, ptr %var.refs, align 8
  %a.load1420 = load ptr, ptr %var.refs, align 8
  %a.null1421 = icmp eq ptr %a.load1420, null
  br i1 %a.null1421, label %a.create1422, label %a.after1423

a.create1422:                                     ; preds = %a.after1410
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
  store ptr %a.create1425, ptr %var.refs, align 8
  br label %a.after1423

a.after1423:                                      ; preds = %a.create1422, %a.after1410
  %a.load21431 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1405, ptr %a.load21418, ptr %a.load21431)
  br label %choice.exit

choice.case1432:                                  ; preds = %choice.next1366
  %pay.gep1437 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1438 = load ptr, ptr %pay.gep1437, align 8
  store ptr %payload.ptr1438, ptr %var._1439, align 8
  store ptr %payload.ptr1438, ptr %var.cy, align 8
  %var.load1440 = load ptr, ptr %var.cy, align 8
  %fld.gep1441 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1440, i32 0, i32 0
  %fld.load1442 = load ptr, ptr %fld.gep1441, align 8
  %var.load1443 = load ptr, ptr %var.locals, align 8
  %a.load1444 = load ptr, ptr %var.locals, align 8
  %a.null1445 = icmp eq ptr %a.load1444, null
  br i1 %a.null1445, label %a.create1446, label %a.after1447

choice.next1433:                                  ; preds = %choice.next1366
  %tag.gep1500 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1501 = load i64, ptr %tag.gep1500, align 8
  %tag.match1502 = icmp eq i64 %tag.id1501, 11
  br i1 %tag.match1502, label %choice.case1498, label %choice.next1499

a.create1446:                                     ; preds = %choice.case1432
  %arena.cur1448 = call ptr @dva_arena_current()
  %a.create1449 = call ptr @dva_arena_alloc(ptr %arena.cur1448, i64 24)
  %arena.cur1450 = call ptr @dva_arena_current()
  %a.buf1451 = call ptr @dva_arena_alloc(ptr %arena.cur1450, i64 128)
  %a.len.gep1452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1449, i32 0, i32 0
  store i64 0, ptr %a.len.gep1452, align 8
  %a.data.gep1453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1449, i32 0, i32 1
  store ptr %a.buf1451, ptr %a.data.gep1453, align 8
  %a.cap.gep1454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1449, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1454, align 8
  store ptr %a.create1449, ptr %var.locals, align 8
  br label %a.after1447

a.after1447:                                      ; preds = %a.create1446, %choice.case1432
  %a.load21455 = load ptr, ptr %var.locals, align 8
  %var.load1456 = load ptr, ptr %var.refs, align 8
  %a.load1457 = load ptr, ptr %var.refs, align 8
  %a.null1458 = icmp eq ptr %a.load1457, null
  br i1 %a.null1458, label %a.create1459, label %a.after1460

a.create1459:                                     ; preds = %a.after1447
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
  store ptr %a.create1462, ptr %var.refs, align 8
  br label %a.after1460

a.after1460:                                      ; preds = %a.create1459, %a.after1447
  %a.load21468 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1442, ptr %a.load21455, ptr %a.load21468)
  %var.load1469 = load ptr, ptr %var.cy, align 8
  %fld.gep1470 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1469, i32 0, i32 1
  %fld.load1471 = load ptr, ptr %fld.gep1470, align 8
  %var.load1472 = load ptr, ptr %var.locals, align 8
  %a.load1473 = load ptr, ptr %var.locals, align 8
  %a.null1474 = icmp eq ptr %a.load1473, null
  br i1 %a.null1474, label %a.create1475, label %a.after1476

a.create1475:                                     ; preds = %a.after1460
  %arena.cur1477 = call ptr @dva_arena_current()
  %a.create1478 = call ptr @dva_arena_alloc(ptr %arena.cur1477, i64 24)
  %arena.cur1479 = call ptr @dva_arena_current()
  %a.buf1480 = call ptr @dva_arena_alloc(ptr %arena.cur1479, i64 128)
  %a.len.gep1481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1478, i32 0, i32 0
  store i64 0, ptr %a.len.gep1481, align 8
  %a.data.gep1482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1478, i32 0, i32 1
  store ptr %a.buf1480, ptr %a.data.gep1482, align 8
  %a.cap.gep1483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1478, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1483, align 8
  store ptr %a.create1478, ptr %var.locals, align 8
  br label %a.after1476

a.after1476:                                      ; preds = %a.create1475, %a.after1460
  %a.load21484 = load ptr, ptr %var.locals, align 8
  %var.load1485 = load ptr, ptr %var.refs, align 8
  %a.load1486 = load ptr, ptr %var.refs, align 8
  %a.null1487 = icmp eq ptr %a.load1486, null
  br i1 %a.null1487, label %a.create1488, label %a.after1489

a.create1488:                                     ; preds = %a.after1476
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
  store ptr %a.create1491, ptr %var.refs, align 8
  br label %a.after1489

a.after1489:                                      ; preds = %a.create1488, %a.after1476
  %a.load21497 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1471, ptr %a.load21484, ptr %a.load21497)
  br label %choice.exit

choice.case1498:                                  ; preds = %choice.next1433
  %pay.gep1503 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1504 = load ptr, ptr %pay.gep1503, align 8
  store ptr %payload.ptr1504, ptr %var._1505, align 8
  store ptr %payload.ptr1504, ptr %var.ce, align 8
  %var.load1506 = load ptr, ptr %var.ce, align 8
  %fld.gep1507 = getelementptr inbounds { ptr, ptr }, ptr %var.load1506, i32 0, i32 0
  %fld.load1508 = load ptr, ptr %fld.gep1507, align 8
  %var.load1509 = load ptr, ptr %var.locals, align 8
  %a.load1510 = load ptr, ptr %var.locals, align 8
  %a.null1511 = icmp eq ptr %a.load1510, null
  br i1 %a.null1511, label %a.create1512, label %a.after1513

choice.next1499:                                  ; preds = %choice.next1433
  %tag.gep1566 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1567 = load i64, ptr %tag.gep1566, align 8
  %tag.match1568 = icmp eq i64 %tag.id1567, 13
  br i1 %tag.match1568, label %choice.case1564, label %choice.next1565

a.create1512:                                     ; preds = %choice.case1498
  %arena.cur1514 = call ptr @dva_arena_current()
  %a.create1515 = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 24)
  %arena.cur1516 = call ptr @dva_arena_current()
  %a.buf1517 = call ptr @dva_arena_alloc(ptr %arena.cur1516, i64 128)
  %a.len.gep1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 0
  store i64 0, ptr %a.len.gep1518, align 8
  %a.data.gep1519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 1
  store ptr %a.buf1517, ptr %a.data.gep1519, align 8
  %a.cap.gep1520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1520, align 8
  store ptr %a.create1515, ptr %var.locals, align 8
  br label %a.after1513

a.after1513:                                      ; preds = %a.create1512, %choice.case1498
  %a.load21521 = load ptr, ptr %var.locals, align 8
  %var.load1522 = load ptr, ptr %var.refs, align 8
  %a.load1523 = load ptr, ptr %var.refs, align 8
  %a.null1524 = icmp eq ptr %a.load1523, null
  br i1 %a.null1524, label %a.create1525, label %a.after1526

a.create1525:                                     ; preds = %a.after1513
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
  store ptr %a.create1528, ptr %var.refs, align 8
  br label %a.after1526

a.after1526:                                      ; preds = %a.create1525, %a.after1513
  %a.load21534 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1508, ptr %a.load21521, ptr %a.load21534)
  %var.load1535 = load ptr, ptr %var.ce, align 8
  %fld.gep1536 = getelementptr inbounds { ptr, ptr }, ptr %var.load1535, i32 0, i32 1
  %fld.load1537 = load ptr, ptr %fld.gep1536, align 8
  %var.load1538 = load ptr, ptr %var.locals, align 8
  %a.load1539 = load ptr, ptr %var.locals, align 8
  %a.null1540 = icmp eq ptr %a.load1539, null
  br i1 %a.null1540, label %a.create1541, label %a.after1542

a.create1541:                                     ; preds = %a.after1526
  %arena.cur1543 = call ptr @dva_arena_current()
  %a.create1544 = call ptr @dva_arena_alloc(ptr %arena.cur1543, i64 24)
  %arena.cur1545 = call ptr @dva_arena_current()
  %a.buf1546 = call ptr @dva_arena_alloc(ptr %arena.cur1545, i64 128)
  %a.len.gep1547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1544, i32 0, i32 0
  store i64 0, ptr %a.len.gep1547, align 8
  %a.data.gep1548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1544, i32 0, i32 1
  store ptr %a.buf1546, ptr %a.data.gep1548, align 8
  %a.cap.gep1549 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1544, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1549, align 8
  store ptr %a.create1544, ptr %var.locals, align 8
  br label %a.after1542

a.after1542:                                      ; preds = %a.create1541, %a.after1526
  %a.load21550 = load ptr, ptr %var.locals, align 8
  %var.load1551 = load ptr, ptr %var.refs, align 8
  %a.load1552 = load ptr, ptr %var.refs, align 8
  %a.null1553 = icmp eq ptr %a.load1552, null
  br i1 %a.null1553, label %a.create1554, label %a.after1555

a.create1554:                                     ; preds = %a.after1542
  %arena.cur1556 = call ptr @dva_arena_current()
  %a.create1557 = call ptr @dva_arena_alloc(ptr %arena.cur1556, i64 24)
  %arena.cur1558 = call ptr @dva_arena_current()
  %a.buf1559 = call ptr @dva_arena_alloc(ptr %arena.cur1558, i64 128)
  %a.len.gep1560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1557, i32 0, i32 0
  store i64 0, ptr %a.len.gep1560, align 8
  %a.data.gep1561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1557, i32 0, i32 1
  store ptr %a.buf1559, ptr %a.data.gep1561, align 8
  %a.cap.gep1562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1557, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1562, align 8
  store ptr %a.create1557, ptr %var.refs, align 8
  br label %a.after1555

a.after1555:                                      ; preds = %a.create1554, %a.after1542
  %a.load21563 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1537, ptr %a.load21550, ptr %a.load21563)
  br label %choice.exit

choice.case1564:                                  ; preds = %choice.next1499
  %pay.gep1569 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1570 = load ptr, ptr %pay.gep1569, align 8
  store ptr %payload.ptr1570, ptr %var._1571, align 8
  store ptr %payload.ptr1570, ptr %var.r, align 8
  %var.load1572 = load ptr, ptr %var.r, align 8
  %fld.gep1573 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1572, i32 0, i32 0
  %fld.load1574 = load i1, ptr %fld.gep1573, align 1
  br i1 %fld.load1574, label %choice.then1575, label %choice.exit1576

choice.next1565:                                  ; preds = %choice.next1499
  %tag.gep1721 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1722 = load i64, ptr %tag.gep1721, align 8
  %tag.match1723 = icmp eq i64 %tag.id1722, 36
  br i1 %tag.match1723, label %choice.case1719, label %choice.next1720

choice.then1575:                                  ; preds = %choice.case1564
  %var.load1577 = load ptr, ptr %var.r, align 8
  %fld.gep1578 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1577, i32 0, i32 2
  %fld.load1579 = load ptr, ptr %fld.gep1578, align 8
  %var.load1580 = load ptr, ptr %var.locals, align 8
  %a.load1581 = load ptr, ptr %var.locals, align 8
  %a.null1582 = icmp eq ptr %a.load1581, null
  br i1 %a.null1582, label %a.create1583, label %a.after1584

choice.exit1576:                                  ; preds = %a.after1597, %choice.case1564
  %var.load1606 = load ptr, ptr %var.r, align 8
  %fld.gep1607 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1606, i32 0, i32 1
  %fld.load1608 = load i1, ptr %fld.gep1607, align 1
  br i1 %fld.load1608, label %choice.then1609, label %choice.exit1610

a.create1583:                                     ; preds = %choice.then1575
  %arena.cur1585 = call ptr @dva_arena_current()
  %a.create1586 = call ptr @dva_arena_alloc(ptr %arena.cur1585, i64 24)
  %arena.cur1587 = call ptr @dva_arena_current()
  %a.buf1588 = call ptr @dva_arena_alloc(ptr %arena.cur1587, i64 128)
  %a.len.gep1589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 0
  store i64 0, ptr %a.len.gep1589, align 8
  %a.data.gep1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 1
  store ptr %a.buf1588, ptr %a.data.gep1590, align 8
  %a.cap.gep1591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1591, align 8
  store ptr %a.create1586, ptr %var.locals, align 8
  br label %a.after1584

a.after1584:                                      ; preds = %a.create1583, %choice.then1575
  %a.load21592 = load ptr, ptr %var.locals, align 8
  %var.load1593 = load ptr, ptr %var.refs, align 8
  %a.load1594 = load ptr, ptr %var.refs, align 8
  %a.null1595 = icmp eq ptr %a.load1594, null
  br i1 %a.null1595, label %a.create1596, label %a.after1597

a.create1596:                                     ; preds = %a.after1584
  %arena.cur1598 = call ptr @dva_arena_current()
  %a.create1599 = call ptr @dva_arena_alloc(ptr %arena.cur1598, i64 24)
  %arena.cur1600 = call ptr @dva_arena_current()
  %a.buf1601 = call ptr @dva_arena_alloc(ptr %arena.cur1600, i64 128)
  %a.len.gep1602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 0
  store i64 0, ptr %a.len.gep1602, align 8
  %a.data.gep1603 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 1
  store ptr %a.buf1601, ptr %a.data.gep1603, align 8
  %a.cap.gep1604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1604, align 8
  store ptr %a.create1599, ptr %var.refs, align 8
  br label %a.after1597

a.after1597:                                      ; preds = %a.create1596, %a.after1584
  %a.load21605 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1579, ptr %a.load21592, ptr %a.load21605)
  br label %choice.exit1576

choice.then1609:                                  ; preds = %choice.exit1576
  %var.load1611 = load ptr, ptr %var.r, align 8
  %fld.gep1612 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1611, i32 0, i32 3
  %fld.load1613 = load ptr, ptr %fld.gep1612, align 8
  %tag.gep1617 = getelementptr inbounds { i64, ptr }, ptr %fld.load1613, i32 0, i32 0
  %tag.id1618 = load i64, ptr %tag.gep1617, align 8
  %tag.match1619 = icmp eq i64 %tag.id1618, 3
  br i1 %tag.match1619, label %choice.case1615, label %choice.next1616

choice.exit1610:                                  ; preds = %choice.exit1614, %choice.exit1576
  br label %choice.exit

choice.exit1614:                                  ; preds = %a.after1710, %choice.exit1660
  br label %choice.exit1610

choice.case1615:                                  ; preds = %choice.then1609
  %pay.gep1620 = getelementptr inbounds { i64, ptr }, ptr %fld.load1613, i32 0, i32 1
  %payload.ptr1621 = load ptr, ptr %pay.gep1620, align 8
  store ptr %payload.ptr1621, ptr %var._1622, align 8
  store ptr %payload.ptr1621, ptr %var.v1623, align 8
  %var.load1624 = load ptr, ptr %var.v1623, align 8
  %eq.lhs.len1625 = getelementptr inbounds { i64, ptr }, ptr %var.load1624, i32 0, i32 0
  %eq.lhs.len1626 = load i64, ptr %eq.lhs.len1625, align 8
  %eq.lhs.len1627 = and i64 %eq.lhs.len1626, 281474976710655
  %str.tag1628 = lshr i64 %eq.lhs.len1626, 48
  %str.immortal1629 = icmp eq i64 %str.tag1628, 0
  br i1 %str.immortal1629, label %str_ok1631, label %str_gen_check1630

choice.next1616:                                  ; preds = %choice.then1609
  %var.load1690 = load ptr, ptr %var.r, align 8
  %fld.gep1691 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1690, i32 0, i32 3
  %fld.load1692 = load ptr, ptr %fld.gep1691, align 8
  %var.load1693 = load ptr, ptr %var.locals, align 8
  %a.load1694 = load ptr, ptr %var.locals, align 8
  %a.null1695 = icmp eq ptr %a.load1694, null
  br i1 %a.null1695, label %a.create1696, label %a.after1697

str_gen_check1630:                                ; preds = %choice.case1615
  %arena.cur1633 = call ptr @dva_arena_current()
  %tag.valid1634 = call i1 @dva_arena_validate_tag(ptr %arena.cur1633, i64 %str.tag1628)
  br i1 %tag.valid1634, label %str_ok1631, label %str_stale1632

str_ok1631:                                       ; preds = %str_stale1632, %str_gen_check1630, %choice.case1615
  %eq.rhs.len1635 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1636 = and i64 %eq.rhs.len1635, 281474976710655
  %str.tag1637 = lshr i64 %eq.rhs.len1635, 48
  %str.immortal1638 = icmp eq i64 %str.tag1637, 0
  br i1 %str.immortal1638, label %str_ok1640, label %str_gen_check1639

str_stale1632:                                    ; preds = %str_gen_check1630
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1631

str_gen_check1639:                                ; preds = %str_ok1631
  %arena.cur1642 = call ptr @dva_arena_current()
  %tag.valid1643 = call i1 @dva_arena_validate_tag(ptr %arena.cur1642, i64 %str.tag1637)
  br i1 %tag.valid1643, label %str_ok1640, label %str_stale1641

str_ok1640:                                       ; preds = %str_stale1641, %str_gen_check1639, %str_ok1631
  %eq.len1644 = icmp eq i64 %eq.lhs.len1627, %eq.rhs.len1636
  br i1 %eq.len1644, label %str.eq.then1645, label %str.eq.else1646

str_stale1641:                                    ; preds = %str_gen_check1639
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1640

str.eq.then1645:                                  ; preds = %str_ok1640
  %eq.lhs.data1648 = getelementptr inbounds { i64, ptr }, ptr %var.load1624, i32 0, i32 1
  %eq.lhs.data1649 = load ptr, ptr %eq.lhs.data1648, align 8
  %eq.rhs.data1650 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1651 = call i32 @memcmp(ptr %eq.lhs.data1649, ptr %eq.rhs.data1650, i64 %eq.lhs.len1627)
  %eq.cmp.zero1652 = icmp eq i32 %eq.memcmp1651, 0
  br label %str.eq.merge1647

str.eq.else1646:                                  ; preds = %str_ok1640
  br label %str.eq.merge1647

str.eq.merge1647:                                 ; preds = %str.eq.else1646, %str.eq.then1645
  %str.eq.result1653 = phi i1 [ %eq.cmp.zero1652, %str.eq.then1645 ], [ false, %str.eq.else1646 ]
  br i1 %str.eq.result1653, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %str.eq.merge1647
  %var.load1654 = load ptr, ptr %var.r, align 8
  %fld.gep1655 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1654, i32 0, i32 0
  %fld.load1656 = load i1, ptr %fld.gep1655, align 1
  %nottmp1657 = xor i1 %fld.load1656, true
  br label %and.14.exit

and.14.else:                                      ; preds = %str.eq.merge1647
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %nottmp1657, %and.14.then ], [ %str.eq.result1653, %and.14.else ]
  %nottmp1658 = xor i1 %and.14.phi, true
  br i1 %nottmp1658, label %choice.then1659, label %choice.exit1660

choice.then1659:                                  ; preds = %and.14.exit
  %var.load1661 = load ptr, ptr %var.r, align 8
  %fld.gep1662 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1661, i32 0, i32 3
  %fld.load1663 = load ptr, ptr %fld.gep1662, align 8
  %var.load1664 = load ptr, ptr %var.locals, align 8
  %a.load1665 = load ptr, ptr %var.locals, align 8
  %a.null1666 = icmp eq ptr %a.load1665, null
  br i1 %a.null1666, label %a.create1667, label %a.after1668

choice.exit1660:                                  ; preds = %a.after1681, %and.14.exit
  br label %choice.exit1614

a.create1667:                                     ; preds = %choice.then1659
  %arena.cur1669 = call ptr @dva_arena_current()
  %a.create1670 = call ptr @dva_arena_alloc(ptr %arena.cur1669, i64 24)
  %arena.cur1671 = call ptr @dva_arena_current()
  %a.buf1672 = call ptr @dva_arena_alloc(ptr %arena.cur1671, i64 128)
  %a.len.gep1673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1670, i32 0, i32 0
  store i64 0, ptr %a.len.gep1673, align 8
  %a.data.gep1674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1670, i32 0, i32 1
  store ptr %a.buf1672, ptr %a.data.gep1674, align 8
  %a.cap.gep1675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1670, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1675, align 8
  store ptr %a.create1670, ptr %var.locals, align 8
  br label %a.after1668

a.after1668:                                      ; preds = %a.create1667, %choice.then1659
  %a.load21676 = load ptr, ptr %var.locals, align 8
  %var.load1677 = load ptr, ptr %var.refs, align 8
  %a.load1678 = load ptr, ptr %var.refs, align 8
  %a.null1679 = icmp eq ptr %a.load1678, null
  br i1 %a.null1679, label %a.create1680, label %a.after1681

a.create1680:                                     ; preds = %a.after1668
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
  store ptr %a.create1683, ptr %var.refs, align 8
  br label %a.after1681

a.after1681:                                      ; preds = %a.create1680, %a.after1668
  %a.load21689 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1663, ptr %a.load21676, ptr %a.load21689)
  br label %choice.exit1660

a.create1696:                                     ; preds = %choice.next1616
  %arena.cur1698 = call ptr @dva_arena_current()
  %a.create1699 = call ptr @dva_arena_alloc(ptr %arena.cur1698, i64 24)
  %arena.cur1700 = call ptr @dva_arena_current()
  %a.buf1701 = call ptr @dva_arena_alloc(ptr %arena.cur1700, i64 128)
  %a.len.gep1702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1699, i32 0, i32 0
  store i64 0, ptr %a.len.gep1702, align 8
  %a.data.gep1703 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1699, i32 0, i32 1
  store ptr %a.buf1701, ptr %a.data.gep1703, align 8
  %a.cap.gep1704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1699, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1704, align 8
  store ptr %a.create1699, ptr %var.locals, align 8
  br label %a.after1697

a.after1697:                                      ; preds = %a.create1696, %choice.next1616
  %a.load21705 = load ptr, ptr %var.locals, align 8
  %var.load1706 = load ptr, ptr %var.refs, align 8
  %a.load1707 = load ptr, ptr %var.refs, align 8
  %a.null1708 = icmp eq ptr %a.load1707, null
  br i1 %a.null1708, label %a.create1709, label %a.after1710

a.create1709:                                     ; preds = %a.after1697
  %arena.cur1711 = call ptr @dva_arena_current()
  %a.create1712 = call ptr @dva_arena_alloc(ptr %arena.cur1711, i64 24)
  %arena.cur1713 = call ptr @dva_arena_current()
  %a.buf1714 = call ptr @dva_arena_alloc(ptr %arena.cur1713, i64 128)
  %a.len.gep1715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 0
  store i64 0, ptr %a.len.gep1715, align 8
  %a.data.gep1716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 1
  store ptr %a.buf1714, ptr %a.data.gep1716, align 8
  %a.cap.gep1717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1717, align 8
  store ptr %a.create1712, ptr %var.refs, align 8
  br label %a.after1710

a.after1710:                                      ; preds = %a.create1709, %a.after1697
  %a.load21718 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1692, ptr %a.load21705, ptr %a.load21718)
  br label %choice.exit1614

choice.case1719:                                  ; preds = %choice.next1565
  %pay.gep1724 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1725 = load ptr, ptr %pay.gep1724, align 8
  store ptr %payload.ptr1725, ptr %var._1726, align 8
  store ptr %payload.ptr1725, ptr %var.na, align 8
  %var.load1727 = load ptr, ptr %var.na, align 8
  %fld.gep1728 = getelementptr inbounds { ptr, ptr }, ptr %var.load1727, i32 0, i32 1
  %fld.load1729 = load ptr, ptr %fld.gep1728, align 8
  %var.load1730 = load ptr, ptr %var.locals, align 8
  %a.load1731 = load ptr, ptr %var.locals, align 8
  %a.null1732 = icmp eq ptr %a.load1731, null
  br i1 %a.null1732, label %a.create1733, label %a.after1734

choice.next1720:                                  ; preds = %choice.next1565
  %tag.gep1758 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1759 = load i64, ptr %tag.gep1758, align 8
  %tag.match1760 = icmp eq i64 %tag.id1759, 18
  br i1 %tag.match1760, label %choice.case1756, label %choice.next1757

a.create1733:                                     ; preds = %choice.case1719
  %arena.cur1735 = call ptr @dva_arena_current()
  %a.create1736 = call ptr @dva_arena_alloc(ptr %arena.cur1735, i64 24)
  %arena.cur1737 = call ptr @dva_arena_current()
  %a.buf1738 = call ptr @dva_arena_alloc(ptr %arena.cur1737, i64 128)
  %a.len.gep1739 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1736, i32 0, i32 0
  store i64 0, ptr %a.len.gep1739, align 8
  %a.data.gep1740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1736, i32 0, i32 1
  store ptr %a.buf1738, ptr %a.data.gep1740, align 8
  %a.cap.gep1741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1736, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1741, align 8
  store ptr %a.create1736, ptr %var.locals, align 8
  br label %a.after1734

a.after1734:                                      ; preds = %a.create1733, %choice.case1719
  %a.load21742 = load ptr, ptr %var.locals, align 8
  %var.load1743 = load ptr, ptr %var.refs, align 8
  %a.load1744 = load ptr, ptr %var.refs, align 8
  %a.null1745 = icmp eq ptr %a.load1744, null
  br i1 %a.null1745, label %a.create1746, label %a.after1747

a.create1746:                                     ; preds = %a.after1734
  %arena.cur1748 = call ptr @dva_arena_current()
  %a.create1749 = call ptr @dva_arena_alloc(ptr %arena.cur1748, i64 24)
  %arena.cur1750 = call ptr @dva_arena_current()
  %a.buf1751 = call ptr @dva_arena_alloc(ptr %arena.cur1750, i64 128)
  %a.len.gep1752 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1749, i32 0, i32 0
  store i64 0, ptr %a.len.gep1752, align 8
  %a.data.gep1753 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1749, i32 0, i32 1
  store ptr %a.buf1751, ptr %a.data.gep1753, align 8
  %a.cap.gep1754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1749, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1754, align 8
  store ptr %a.create1749, ptr %var.refs, align 8
  br label %a.after1747

a.after1747:                                      ; preds = %a.create1746, %a.after1734
  %a.load21755 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1729, ptr %a.load21742, ptr %a.load21755)
  br label %choice.exit

choice.case1756:                                  ; preds = %choice.next1720
  %pay.gep1761 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1762 = load ptr, ptr %pay.gep1761, align 8
  store ptr %payload.ptr1762, ptr %var._1763, align 8
  store ptr %payload.ptr1762, ptr %var.v1764, align 8
  %var.load1765 = load ptr, ptr %var.v1764, align 8
  %fld.gep1766 = getelementptr inbounds { ptr, ptr }, ptr %var.load1765, i32 0, i32 1
  %fld.load1767 = load ptr, ptr %fld.gep1766, align 8
  %a.len.query1768 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1767, i32 0, i32 0
  %a.len.query1769 = load i64, ptr %a.len.query1768, align 8
  store i64 0, ptr %loop.idx.15, align 8
  %cycle.prev.u1771 = load i64, ptr %var._1763, align 8
  br label %loop.header.15

choice.next1757:                                  ; preds = %choice.next1720
  %tag.gep1870 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1871 = load i64, ptr %tag.gep1870, align 8
  %tag.match1872 = icmp eq i64 %tag.id1871, 25
  br i1 %tag.match1872, label %choice.case1868, label %choice.next1869

loop.header.15:                                   ; preds = %loop.latch.15, %choice.case1756
  %counter.load1772 = load i64, ptr %loop.idx.15, align 8
  %loop.cond1773 = icmp slt i64 %counter.load1772, %a.len.query1769
  br i1 %loop.cond1773, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i1774 = sub i64 %counter.load1772, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i1774, ptr %var._i1775, align 8
  store i64 %counter.load1772, ptr %var._1776, align 8
  store i64 %counter.load1772, ptr %var.i1770, align 8
  %var.load1777 = load ptr, ptr %var.v1764, align 8
  %fld.gep1778 = getelementptr inbounds { ptr, ptr }, ptr %var.load1777, i32 0, i32 1
  %fld.load1779 = load ptr, ptr %fld.gep1778, align 8
  %var.load1780 = load i64, ptr %var.i1770, align 8
  %a.rd.nonnull1781 = icmp ne ptr %fld.load1779, null
  br i1 %a.rd.nonnull1781, label %a.rd.check1782, label %a.rd.err.null1784

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %a.after1857
  %step.val1866 = load i64, ptr %loop.step.15, align 8
  %loop.next1867 = add i64 %counter.load1772, %step.val1866
  store i64 %loop.next1867, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  store i64 %cycle.prev.u1771, ptr %var._1763, align 8
  br label %choice.exit

a.rd.check1782:                                   ; preds = %loop.body.15
  %a.rd.len1787 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1779, i32 0, i32 0
  %a.rd.len1788 = load i64, ptr %a.rd.len1787, align 8
  %a.rd.ge01789 = icmp sge i64 %var.load1780, 0
  %a.rd.lt1790 = icmp slt i64 %var.load1780, %a.rd.len1788
  %a.rd.bounds1791 = and i1 %a.rd.ge01789, %a.rd.lt1790
  br i1 %a.rd.bounds1791, label %a.rd.ok1783, label %a.rd.err.oob1785

a.rd.ok1783:                                      ; preds = %a.rd.check1782
  %a.rd.data1792 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1779, i32 0, i32 1
  %a.rd.data1793 = load ptr, ptr %a.rd.data1792, align 8
  %a.rd.elem.gep1794 = getelementptr i64, ptr %a.rd.data1793, i64 %var.load1780
  %a.rd.elem1795 = load i64, ptr %a.rd.elem.gep1794, align 8
  br label %a.rd.done1786

a.rd.err.null1784:                                ; preds = %loop.body.15
  %arena.cur1796 = call ptr @dva_arena_current()
  %err.alloc1797 = call ptr @dva_arena_alloc(ptr %arena.cur1796, i64 56)
  %err.code.gep1798 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1798, align 8
  %err.msg.gep1799 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1799, align 8
  %err.file.gep1800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1800, align 8
  %err.line.gep1801 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 3
  store i64 0, ptr %err.line.gep1801, align 8
  %err.col.gep1802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 4
  store i64 0, ptr %err.col.gep1802, align 8
  %err.ctx.gep1803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1797, i32 0, i32 5
  %err.ctx0.gep1804 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1803, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1804, align 8
  %err.ctx1.gep1805 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1803, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1805, align 8
  %err.p2i1806 = ptrtoint ptr %err.alloc1797 to i64
  br label %a.rd.done1786

a.rd.err.oob1785:                                 ; preds = %a.rd.check1782
  %arena.cur1807 = call ptr @dva_arena_current()
  %err.alloc1808 = call ptr @dva_arena_alloc(ptr %arena.cur1807, i64 56)
  %err.code.gep1809 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1809, align 8
  %err.msg.gep1810 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1810, align 8
  %err.file.gep1811 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1811, align 8
  %err.line.gep1812 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 3
  store i64 0, ptr %err.line.gep1812, align 8
  %err.col.gep1813 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 4
  store i64 0, ptr %err.col.gep1813, align 8
  %err.ctx.gep1814 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1808, i32 0, i32 5
  %err.ctx0.gep1815 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1814, i32 0, i32 0
  store i64 %var.load1780, ptr %err.ctx0.gep1815, align 8
  %err.ctx1.gep1816 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1814, i32 0, i32 1
  store i64 %a.rd.len1788, ptr %err.ctx1.gep1816, align 8
  %err.p2i1817 = ptrtoint ptr %err.alloc1808 to i64
  br label %a.rd.done1786

a.rd.done1786:                                    ; preds = %a.rd.err.oob1785, %a.rd.err.null1784, %a.rd.ok1783
  %a.rd.tag1818 = phi i1 [ true, %a.rd.ok1783 ], [ false, %a.rd.err.null1784 ], [ false, %a.rd.err.oob1785 ]
  %a.rd.pay1819 = phi i64 [ %a.rd.elem1795, %a.rd.ok1783 ], [ %err.p2i1806, %a.rd.err.null1784 ], [ %err.p2i1817, %a.rd.err.oob1785 ]
  %ram.tag1820 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1818, 0
  %ram.pay1821 = insertvalue { i1, i64 } %ram.tag1820, i64 %a.rd.pay1819, 1
  %ram.tag1822 = extractvalue { i1, i64 } %ram.pay1821, 0
  br i1 %ram.tag1822, label %choice.then1823, label %choice.else1824

choice.then1823:                                  ; preds = %a.rd.done1786
  %ram.pay1826 = extractvalue { i1, i64 } %ram.pay1821, 1
  %pay.ptr1827 = inttoptr i64 %ram.pay1826 to ptr
  store ptr %pay.ptr1827, ptr %var._1828, align 8
  br label %choice.exit1825

choice.else1824:                                  ; preds = %a.rd.done1786
  %ram.pay1829 = extractvalue { i1, i64 } %ram.pay1821, 1
  %pay.ptr1830 = inttoptr i64 %ram.pay1829 to ptr
  store ptr %pay.ptr1830, ptr %var._1831, align 8
  %arena.cur1832 = call ptr @dva_arena_current()
  %enum.alloc1833 = call ptr @dva_arena_alloc(ptr %arena.cur1832, i64 16)
  %tag.gep1834 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1833, i32 0, i32 0
  store i64 0, ptr %tag.gep1834, align 8
  %pay.gep1835 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1833, i32 0, i32 1
  %arena.cur1836 = call ptr @dva_arena_current()
  %enum.pay.alloc1837 = call ptr @dva_arena_alloc(ptr %arena.cur1836, i64 8)
  store i64 0, ptr %enum.pay.alloc1837, align 8
  store ptr %enum.pay.alloc1837, ptr %pay.gep1835, align 8
  br label %choice.exit1825

choice.exit1825:                                  ; preds = %choice.else1824, %choice.then1823
  %choice.res1838 = phi ptr [ %pay.ptr1827, %choice.then1823 ], [ %enum.alloc1833, %choice.else1824 ]
  store ptr %choice.res1838, ptr %var.varg, align 8
  %var.load1839 = load ptr, ptr %var.varg, align 8
  %var.load1840 = load ptr, ptr %var.locals, align 8
  %a.load1841 = load ptr, ptr %var.locals, align 8
  %a.null1842 = icmp eq ptr %a.load1841, null
  br i1 %a.null1842, label %a.create1843, label %a.after1844

a.create1843:                                     ; preds = %choice.exit1825
  %arena.cur1845 = call ptr @dva_arena_current()
  %a.create1846 = call ptr @dva_arena_alloc(ptr %arena.cur1845, i64 24)
  %arena.cur1847 = call ptr @dva_arena_current()
  %a.buf1848 = call ptr @dva_arena_alloc(ptr %arena.cur1847, i64 128)
  %a.len.gep1849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1846, i32 0, i32 0
  store i64 0, ptr %a.len.gep1849, align 8
  %a.data.gep1850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1846, i32 0, i32 1
  store ptr %a.buf1848, ptr %a.data.gep1850, align 8
  %a.cap.gep1851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1846, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1851, align 8
  store ptr %a.create1846, ptr %var.locals, align 8
  br label %a.after1844

a.after1844:                                      ; preds = %a.create1843, %choice.exit1825
  %a.load21852 = load ptr, ptr %var.locals, align 8
  %var.load1853 = load ptr, ptr %var.refs, align 8
  %a.load1854 = load ptr, ptr %var.refs, align 8
  %a.null1855 = icmp eq ptr %a.load1854, null
  br i1 %a.null1855, label %a.create1856, label %a.after1857

a.create1856:                                     ; preds = %a.after1844
  %arena.cur1858 = call ptr @dva_arena_current()
  %a.create1859 = call ptr @dva_arena_alloc(ptr %arena.cur1858, i64 24)
  %arena.cur1860 = call ptr @dva_arena_current()
  %a.buf1861 = call ptr @dva_arena_alloc(ptr %arena.cur1860, i64 128)
  %a.len.gep1862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1859, i32 0, i32 0
  store i64 0, ptr %a.len.gep1862, align 8
  %a.data.gep1863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1859, i32 0, i32 1
  store ptr %a.buf1861, ptr %a.data.gep1863, align 8
  %a.cap.gep1864 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1859, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1864, align 8
  store ptr %a.create1859, ptr %var.refs, align 8
  br label %a.after1857

a.after1857:                                      ; preds = %a.create1856, %a.after1844
  %a.load21865 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1839, ptr %a.load21852, ptr %a.load21865)
  br label %loop.latch.15

choice.case1868:                                  ; preds = %choice.next1757
  %pay.gep1873 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1874 = load ptr, ptr %pay.gep1873, align 8
  store ptr %payload.ptr1874, ptr %var._1875, align 8
  store ptr %payload.ptr1874, ptr %var.cp, align 8
  %var.load1876 = load ptr, ptr %var.cp, align 8
  %var.load1877 = load ptr, ptr %var.locals, align 8
  %a.load1878 = load ptr, ptr %var.locals, align 8
  %a.null1879 = icmp eq ptr %a.load1878, null
  br i1 %a.null1879, label %a.create1880, label %a.after1881

choice.next1869:                                  ; preds = %choice.next1757
  %tag.gep1905 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1906 = load i64, ptr %tag.gep1905, align 8
  %tag.match1907 = icmp eq i64 %tag.id1906, 27
  br i1 %tag.match1907, label %choice.case1903, label %choice.next1904

a.create1880:                                     ; preds = %choice.case1868
  %arena.cur1882 = call ptr @dva_arena_current()
  %a.create1883 = call ptr @dva_arena_alloc(ptr %arena.cur1882, i64 24)
  %arena.cur1884 = call ptr @dva_arena_current()
  %a.buf1885 = call ptr @dva_arena_alloc(ptr %arena.cur1884, i64 128)
  %a.len.gep1886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 0
  store i64 0, ptr %a.len.gep1886, align 8
  %a.data.gep1887 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 1
  store ptr %a.buf1885, ptr %a.data.gep1887, align 8
  %a.cap.gep1888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1888, align 8
  store ptr %a.create1883, ptr %var.locals, align 8
  br label %a.after1881

a.after1881:                                      ; preds = %a.create1880, %choice.case1868
  %a.load21889 = load ptr, ptr %var.locals, align 8
  %var.load1890 = load ptr, ptr %var.refs, align 8
  %a.load1891 = load ptr, ptr %var.refs, align 8
  %a.null1892 = icmp eq ptr %a.load1891, null
  br i1 %a.null1892, label %a.create1893, label %a.after1894

a.create1893:                                     ; preds = %a.after1881
  %arena.cur1895 = call ptr @dva_arena_current()
  %a.create1896 = call ptr @dva_arena_alloc(ptr %arena.cur1895, i64 24)
  %arena.cur1897 = call ptr @dva_arena_current()
  %a.buf1898 = call ptr @dva_arena_alloc(ptr %arena.cur1897, i64 128)
  %a.len.gep1899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1896, i32 0, i32 0
  store i64 0, ptr %a.len.gep1899, align 8
  %a.data.gep1900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1896, i32 0, i32 1
  store ptr %a.buf1898, ptr %a.data.gep1900, align 8
  %a.cap.gep1901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1896, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1901, align 8
  store ptr %a.create1896, ptr %var.refs, align 8
  br label %a.after1894

a.after1894:                                      ; preds = %a.create1893, %a.after1881
  %a.load21902 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1876, ptr %a.load21889, ptr %a.load21902)
  br label %choice.exit

choice.case1903:                                  ; preds = %choice.next1869
  %pay.gep1908 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1909 = load ptr, ptr %pay.gep1908, align 8
  store ptr %payload.ptr1909, ptr %var._1910, align 8
  store ptr %payload.ptr1909, ptr %var.bc, align 8
  %var.load1911 = load ptr, ptr %var.bc, align 8
  %var.load1912 = load ptr, ptr %var.locals, align 8
  %a.load1913 = load ptr, ptr %var.locals, align 8
  %a.null1914 = icmp eq ptr %a.load1913, null
  br i1 %a.null1914, label %a.create1915, label %a.after1916

choice.next1904:                                  ; preds = %choice.next1869
  %tag.gep1940 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1941 = load i64, ptr %tag.gep1940, align 8
  %tag.match1942 = icmp eq i64 %tag.id1941, 22
  br i1 %tag.match1942, label %choice.case1938, label %choice.next1939

a.create1915:                                     ; preds = %choice.case1903
  %arena.cur1917 = call ptr @dva_arena_current()
  %a.create1918 = call ptr @dva_arena_alloc(ptr %arena.cur1917, i64 24)
  %arena.cur1919 = call ptr @dva_arena_current()
  %a.buf1920 = call ptr @dva_arena_alloc(ptr %arena.cur1919, i64 128)
  %a.len.gep1921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1918, i32 0, i32 0
  store i64 0, ptr %a.len.gep1921, align 8
  %a.data.gep1922 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1918, i32 0, i32 1
  store ptr %a.buf1920, ptr %a.data.gep1922, align 8
  %a.cap.gep1923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1918, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1923, align 8
  store ptr %a.create1918, ptr %var.locals, align 8
  br label %a.after1916

a.after1916:                                      ; preds = %a.create1915, %choice.case1903
  %a.load21924 = load ptr, ptr %var.locals, align 8
  %var.load1925 = load ptr, ptr %var.refs, align 8
  %a.load1926 = load ptr, ptr %var.refs, align 8
  %a.null1927 = icmp eq ptr %a.load1926, null
  br i1 %a.null1927, label %a.create1928, label %a.after1929

a.create1928:                                     ; preds = %a.after1916
  %arena.cur1930 = call ptr @dva_arena_current()
  %a.create1931 = call ptr @dva_arena_alloc(ptr %arena.cur1930, i64 24)
  %arena.cur1932 = call ptr @dva_arena_current()
  %a.buf1933 = call ptr @dva_arena_alloc(ptr %arena.cur1932, i64 128)
  %a.len.gep1934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 0
  store i64 0, ptr %a.len.gep1934, align 8
  %a.data.gep1935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 1
  store ptr %a.buf1933, ptr %a.data.gep1935, align 8
  %a.cap.gep1936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1936, align 8
  store ptr %a.create1931, ptr %var.refs, align 8
  br label %a.after1929

a.after1929:                                      ; preds = %a.create1928, %a.after1916
  %a.load21937 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1911, ptr %a.load21924, ptr %a.load21937)
  br label %choice.exit

choice.case1938:                                  ; preds = %choice.next1904
  %pay.gep1943 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1944 = load ptr, ptr %pay.gep1943, align 8
  store ptr %payload.ptr1944, ptr %var._1945, align 8
  store ptr %payload.ptr1944, ptr %var.tc, align 8
  %var.load1946 = load ptr, ptr %var.tc, align 8
  %fld.gep1947 = getelementptr inbounds { ptr, ptr }, ptr %var.load1946, i32 0, i32 1
  %fld.load1948 = load ptr, ptr %fld.gep1947, align 8
  %var.load1949 = load ptr, ptr %var.locals, align 8
  %a.load1950 = load ptr, ptr %var.locals, align 8
  %a.null1951 = icmp eq ptr %a.load1950, null
  br i1 %a.null1951, label %a.create1952, label %a.after1953

choice.next1939:                                  ; preds = %choice.next1904
  %tag.gep1977 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1978 = load i64, ptr %tag.gep1977, align 8
  %tag.match1979 = icmp eq i64 %tag.id1978, 30
  br i1 %tag.match1979, label %choice.case1975, label %choice.next1976

a.create1952:                                     ; preds = %choice.case1938
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
  store ptr %a.create1955, ptr %var.locals, align 8
  br label %a.after1953

a.after1953:                                      ; preds = %a.create1952, %choice.case1938
  %a.load21961 = load ptr, ptr %var.locals, align 8
  %var.load1962 = load ptr, ptr %var.refs, align 8
  %a.load1963 = load ptr, ptr %var.refs, align 8
  %a.null1964 = icmp eq ptr %a.load1963, null
  br i1 %a.null1964, label %a.create1965, label %a.after1966

a.create1965:                                     ; preds = %a.after1953
  %arena.cur1967 = call ptr @dva_arena_current()
  %a.create1968 = call ptr @dva_arena_alloc(ptr %arena.cur1967, i64 24)
  %arena.cur1969 = call ptr @dva_arena_current()
  %a.buf1970 = call ptr @dva_arena_alloc(ptr %arena.cur1969, i64 128)
  %a.len.gep1971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1968, i32 0, i32 0
  store i64 0, ptr %a.len.gep1971, align 8
  %a.data.gep1972 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1968, i32 0, i32 1
  store ptr %a.buf1970, ptr %a.data.gep1972, align 8
  %a.cap.gep1973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1968, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1973, align 8
  store ptr %a.create1968, ptr %var.refs, align 8
  br label %a.after1966

a.after1966:                                      ; preds = %a.create1965, %a.after1953
  %a.load21974 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1948, ptr %a.load21961, ptr %a.load21974)
  br label %choice.exit

choice.case1975:                                  ; preds = %choice.next1939
  %pay.gep1980 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1981 = load ptr, ptr %pay.gep1980, align 8
  store ptr %payload.ptr1981, ptr %var._1982, align 8
  store ptr %payload.ptr1981, ptr %var.ct, align 8
  %var.load1983 = load ptr, ptr %var.ct, align 8
  %fld.gep1984 = getelementptr inbounds { ptr }, ptr %var.load1983, i32 0, i32 0
  %fld.load1985 = load ptr, ptr %fld.gep1984, align 8
  %var.load1986 = load ptr, ptr %var.locals, align 8
  %a.load1987 = load ptr, ptr %var.locals, align 8
  %a.null1988 = icmp eq ptr %a.load1987, null
  br i1 %a.null1988, label %a.create1989, label %a.after1990

choice.next1976:                                  ; preds = %choice.next1939
  %tag.gep2014 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2015 = load i64, ptr %tag.gep2014, align 8
  %tag.match2016 = icmp eq i64 %tag.id2015, 31
  br i1 %tag.match2016, label %choice.case2012, label %choice.next2013

a.create1989:                                     ; preds = %choice.case1975
  %arena.cur1991 = call ptr @dva_arena_current()
  %a.create1992 = call ptr @dva_arena_alloc(ptr %arena.cur1991, i64 24)
  %arena.cur1993 = call ptr @dva_arena_current()
  %a.buf1994 = call ptr @dva_arena_alloc(ptr %arena.cur1993, i64 128)
  %a.len.gep1995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1992, i32 0, i32 0
  store i64 0, ptr %a.len.gep1995, align 8
  %a.data.gep1996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1992, i32 0, i32 1
  store ptr %a.buf1994, ptr %a.data.gep1996, align 8
  %a.cap.gep1997 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1992, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1997, align 8
  store ptr %a.create1992, ptr %var.locals, align 8
  br label %a.after1990

a.after1990:                                      ; preds = %a.create1989, %choice.case1975
  %a.load21998 = load ptr, ptr %var.locals, align 8
  %var.load1999 = load ptr, ptr %var.refs, align 8
  %a.load2000 = load ptr, ptr %var.refs, align 8
  %a.null2001 = icmp eq ptr %a.load2000, null
  br i1 %a.null2001, label %a.create2002, label %a.after2003

a.create2002:                                     ; preds = %a.after1990
  %arena.cur2004 = call ptr @dva_arena_current()
  %a.create2005 = call ptr @dva_arena_alloc(ptr %arena.cur2004, i64 24)
  %arena.cur2006 = call ptr @dva_arena_current()
  %a.buf2007 = call ptr @dva_arena_alloc(ptr %arena.cur2006, i64 128)
  %a.len.gep2008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2005, i32 0, i32 0
  store i64 0, ptr %a.len.gep2008, align 8
  %a.data.gep2009 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2005, i32 0, i32 1
  store ptr %a.buf2007, ptr %a.data.gep2009, align 8
  %a.cap.gep2010 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2005, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2010, align 8
  store ptr %a.create2005, ptr %var.refs, align 8
  br label %a.after2003

a.after2003:                                      ; preds = %a.create2002, %a.after1990
  %a.load22011 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1985, ptr %a.load21998, ptr %a.load22011)
  br label %choice.exit

choice.case2012:                                  ; preds = %choice.next1976
  %pay.gep2017 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2018 = load ptr, ptr %pay.gep2017, align 8
  store ptr %payload.ptr2018, ptr %var._2019, align 8
  store ptr %payload.ptr2018, ptr %var.sp, align 8
  %arena.cur2020 = call ptr @dva_arena_current()
  %enum.alloc2021 = call ptr @dva_arena_alloc(ptr %arena.cur2020, i64 16)
  %tag.gep2022 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2021, i32 0, i32 0
  store i64 9, ptr %tag.gep2022, align 8
  %pay.gep2023 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2021, i32 0, i32 1
  %var.load2024 = load ptr, ptr %var.sp, align 8
  %fld.gep2025 = getelementptr inbounds { { ptr, ptr, ptr, i64, i64 } }, ptr %var.load2024, i32 0, i32 0
  store ptr %fld.gep2025, ptr %pay.gep2023, align 8
  %var.load2026 = load ptr, ptr %var.locals, align 8
  %a.load2027 = load ptr, ptr %var.locals, align 8
  %a.null2028 = icmp eq ptr %a.load2027, null
  br i1 %a.null2028, label %a.create2029, label %a.after2030

choice.next2013:                                  ; preds = %choice.next1976
  %tag.gep2054 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2055 = load i64, ptr %tag.gep2054, align 8
  %tag.match2056 = icmp eq i64 %tag.id2055, 32
  br i1 %tag.match2056, label %choice.case2052, label %choice.next2053

a.create2029:                                     ; preds = %choice.case2012
  %arena.cur2031 = call ptr @dva_arena_current()
  %a.create2032 = call ptr @dva_arena_alloc(ptr %arena.cur2031, i64 24)
  %arena.cur2033 = call ptr @dva_arena_current()
  %a.buf2034 = call ptr @dva_arena_alloc(ptr %arena.cur2033, i64 128)
  %a.len.gep2035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2032, i32 0, i32 0
  store i64 0, ptr %a.len.gep2035, align 8
  %a.data.gep2036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2032, i32 0, i32 1
  store ptr %a.buf2034, ptr %a.data.gep2036, align 8
  %a.cap.gep2037 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2032, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2037, align 8
  store ptr %a.create2032, ptr %var.locals, align 8
  br label %a.after2030

a.after2030:                                      ; preds = %a.create2029, %choice.case2012
  %a.load22038 = load ptr, ptr %var.locals, align 8
  %var.load2039 = load ptr, ptr %var.refs, align 8
  %a.load2040 = load ptr, ptr %var.refs, align 8
  %a.null2041 = icmp eq ptr %a.load2040, null
  br i1 %a.null2041, label %a.create2042, label %a.after2043

a.create2042:                                     ; preds = %a.after2030
  %arena.cur2044 = call ptr @dva_arena_current()
  %a.create2045 = call ptr @dva_arena_alloc(ptr %arena.cur2044, i64 24)
  %arena.cur2046 = call ptr @dva_arena_current()
  %a.buf2047 = call ptr @dva_arena_alloc(ptr %arena.cur2046, i64 128)
  %a.len.gep2048 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2045, i32 0, i32 0
  store i64 0, ptr %a.len.gep2048, align 8
  %a.data.gep2049 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2045, i32 0, i32 1
  store ptr %a.buf2047, ptr %a.data.gep2049, align 8
  %a.cap.gep2050 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2045, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2050, align 8
  store ptr %a.create2045, ptr %var.refs, align 8
  br label %a.after2043

a.after2043:                                      ; preds = %a.create2042, %a.after2030
  %a.load22051 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc2021, ptr %a.load22038, ptr %a.load22051)
  br label %choice.exit

choice.case2052:                                  ; preds = %choice.next2013
  %pay.gep2057 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2058 = load ptr, ptr %pay.gep2057, align 8
  store ptr %payload.ptr2058, ptr %var._2059, align 8
  store ptr %payload.ptr2058, ptr %var.jn, align 8
  %var.load2060 = load ptr, ptr %var.jn, align 8
  %fld.gep2061 = getelementptr inbounds { ptr }, ptr %var.load2060, i32 0, i32 0
  %fld.load2062 = load ptr, ptr %fld.gep2061, align 8
  %var.load2063 = load ptr, ptr %var.locals, align 8
  %a.load2064 = load ptr, ptr %var.locals, align 8
  %a.null2065 = icmp eq ptr %a.load2064, null
  br i1 %a.null2065, label %a.create2066, label %a.after2067

choice.next2053:                                  ; preds = %choice.next2013
  %tag.gep2091 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2092 = load i64, ptr %tag.gep2091, align 8
  %tag.match2093 = icmp eq i64 %tag.id2092, 33
  br i1 %tag.match2093, label %choice.case2089, label %choice.next2090

a.create2066:                                     ; preds = %choice.case2052
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

a.after2067:                                      ; preds = %a.create2066, %choice.case2052
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

choice.case2089:                                  ; preds = %choice.next2053
  %pay.gep2094 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2095 = load ptr, ptr %pay.gep2094, align 8
  store ptr %payload.ptr2095, ptr %var._2096, align 8
  store ptr %payload.ptr2095, ptr %var.ex, align 8
  %var.load2097 = load ptr, ptr %var.ex, align 8
  %fld.gep2098 = getelementptr inbounds { ptr }, ptr %var.load2097, i32 0, i32 0
  %fld.load2099 = load ptr, ptr %fld.gep2098, align 8
  %var.load2100 = load ptr, ptr %var.locals, align 8
  %a.load2101 = load ptr, ptr %var.locals, align 8
  %a.null2102 = icmp eq ptr %a.load2101, null
  br i1 %a.null2102, label %a.create2103, label %a.after2104

choice.next2090:                                  ; preds = %choice.next2053
  %tag.gep2128 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2129 = load i64, ptr %tag.gep2128, align 8
  %tag.match2130 = icmp eq i64 %tag.id2129, 38
  br i1 %tag.match2130, label %choice.case2126, label %choice.next2127

a.create2103:                                     ; preds = %choice.case2089
  %arena.cur2105 = call ptr @dva_arena_current()
  %a.create2106 = call ptr @dva_arena_alloc(ptr %arena.cur2105, i64 24)
  %arena.cur2107 = call ptr @dva_arena_current()
  %a.buf2108 = call ptr @dva_arena_alloc(ptr %arena.cur2107, i64 128)
  %a.len.gep2109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2106, i32 0, i32 0
  store i64 0, ptr %a.len.gep2109, align 8
  %a.data.gep2110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2106, i32 0, i32 1
  store ptr %a.buf2108, ptr %a.data.gep2110, align 8
  %a.cap.gep2111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2111, align 8
  store ptr %a.create2106, ptr %var.locals, align 8
  br label %a.after2104

a.after2104:                                      ; preds = %a.create2103, %choice.case2089
  %a.load22112 = load ptr, ptr %var.locals, align 8
  %var.load2113 = load ptr, ptr %var.refs, align 8
  %a.load2114 = load ptr, ptr %var.refs, align 8
  %a.null2115 = icmp eq ptr %a.load2114, null
  br i1 %a.null2115, label %a.create2116, label %a.after2117

a.create2116:                                     ; preds = %a.after2104
  %arena.cur2118 = call ptr @dva_arena_current()
  %a.create2119 = call ptr @dva_arena_alloc(ptr %arena.cur2118, i64 24)
  %arena.cur2120 = call ptr @dva_arena_current()
  %a.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur2120, i64 128)
  %a.len.gep2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 0
  store i64 0, ptr %a.len.gep2122, align 8
  %a.data.gep2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 1
  store ptr %a.buf2121, ptr %a.data.gep2123, align 8
  %a.cap.gep2124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2124, align 8
  store ptr %a.create2119, ptr %var.refs, align 8
  br label %a.after2117

a.after2117:                                      ; preds = %a.create2116, %a.after2104
  %a.load22125 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2099, ptr %a.load22112, ptr %a.load22125)
  br label %choice.exit

choice.case2126:                                  ; preds = %choice.next2090
  %pay.gep2131 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2132 = load ptr, ptr %pay.gep2131, align 8
  store ptr %payload.ptr2132, ptr %var._2133, align 8
  store ptr %payload.ptr2132, ptr %var.ud, align 8
  %var.load2134 = load ptr, ptr %var.ud, align 8
  %fld.gep2135 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2134, i32 0, i32 1
  %fld.load2136 = load ptr, ptr %fld.gep2135, align 8
  %var.load2137 = load ptr, ptr %var.locals, align 8
  %a.load2138 = load ptr, ptr %var.locals, align 8
  %a.null2139 = icmp eq ptr %a.load2138, null
  br i1 %a.null2139, label %a.create2140, label %a.after2141

choice.next2127:                                  ; preds = %choice.next2090
  br label %choice.exit

a.create2140:                                     ; preds = %choice.case2126
  %arena.cur2142 = call ptr @dva_arena_current()
  %a.create2143 = call ptr @dva_arena_alloc(ptr %arena.cur2142, i64 24)
  %arena.cur2144 = call ptr @dva_arena_current()
  %a.buf2145 = call ptr @dva_arena_alloc(ptr %arena.cur2144, i64 128)
  %a.len.gep2146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2143, i32 0, i32 0
  store i64 0, ptr %a.len.gep2146, align 8
  %a.data.gep2147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2143, i32 0, i32 1
  store ptr %a.buf2145, ptr %a.data.gep2147, align 8
  %a.cap.gep2148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2148, align 8
  store ptr %a.create2143, ptr %var.locals, align 8
  br label %a.after2141

a.after2141:                                      ; preds = %a.create2140, %choice.case2126
  %a.load22149 = load ptr, ptr %var.locals, align 8
  %var.load2150 = load ptr, ptr %var.refs, align 8
  %a.load2151 = load ptr, ptr %var.refs, align 8
  %a.null2152 = icmp eq ptr %a.load2151, null
  br i1 %a.null2152, label %a.create2153, label %a.after2154

a.create2153:                                     ; preds = %a.after2141
  %arena.cur2155 = call ptr @dva_arena_current()
  %a.create2156 = call ptr @dva_arena_alloc(ptr %arena.cur2155, i64 24)
  %arena.cur2157 = call ptr @dva_arena_current()
  %a.buf2158 = call ptr @dva_arena_alloc(ptr %arena.cur2157, i64 128)
  %a.len.gep2159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2156, i32 0, i32 0
  store i64 0, ptr %a.len.gep2159, align 8
  %a.data.gep2160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2156, i32 0, i32 1
  store ptr %a.buf2158, ptr %a.data.gep2160, align 8
  %a.cap.gep2161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2161, align 8
  store ptr %a.create2156, ptr %var.refs, align 8
  br label %a.after2154

a.after2154:                                      ; preds = %a.create2153, %a.after2141
  %a.load22162 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2136, ptr %a.load22149, ptr %a.load22162)
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
  %var._1206 = alloca ptr, align 8
  %var._i1205 = alloca i64, align 8
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
  %var._1021 = alloca ptr, align 8
  %var.st2 = alloca ptr, align 8
  %var._1004 = alloca ptr, align 8
  %var._1001 = alloca ptr, align 8
  %var._939 = alloca i64, align 8
  %var._i938 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._475 = alloca ptr, align 8
  %var.st1 = alloca ptr, align 8
  %var._458 = alloca ptr, align 8
  %var._455 = alloca ptr, align 8
  %var._393 = alloca i64, align 8
  %var._i392 = alloca i64, align 8
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
  %arena.cur360 = call ptr @dva_arena_current()
  %m.new361 = call ptr @dva_arena_alloc(ptr %arena.cur360, i64 48)
  %arena.cur362 = call ptr @dva_arena_current()
  %m.keys363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 64)
  %arena.cur364 = call ptr @dva_arena_current()
  %m.vals365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 64)
  %arena.cur366 = call ptr @dva_arena_current()
  %m.states367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states367, i8 0, i64 8, i1 false)
  %m.count.gep368 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 0
  store i64 0, ptr %m.count.gep368, align 8
  %m.cap.gep369 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 1
  store i64 8, ptr %m.cap.gep369, align 8
  %m.keys.gep370 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 2
  store ptr %m.keys363, ptr %m.keys.gep370, align 8
  %m.vals.gep371 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 3
  store ptr %m.vals365, ptr %m.vals.gep371, align 8
  %m.states.gep372 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 4
  store ptr %m.states367, ptr %m.states.gep372, align 8
  %m.tombs.gep373 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new361, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep373, align 8
  store ptr %m.new361, ptr %var.def_names, align 8
  %var.load374 = load ptr, ptr %var.stmts, align 8
  %a.load375 = load ptr, ptr %var.stmts, align 8
  %a.null376 = icmp eq ptr %a.load375, null
  br i1 %a.null376, label %a.create377, label %a.after378

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
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap118 = load i64, ptr %m.cap, align 8
  %m.keys119 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.keys120 = load ptr, ptr %m.keys119, align 8
  %m.vals121 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.vals122 = load ptr, ptr %m.vals121, align 8
  %m.states123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.states124 = load ptr, ptr %m.states123, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.data125 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.len126 = load i64, ptr %mk.len, align 8
  %mk.len127 = and i64 %mk.len126, 281474976710655
  %str.tag128 = lshr i64 %mk.len126, 48
  %str.immortal129 = icmp eq i64 %str.tag128, 0
  br i1 %str.immortal129, label %str_ok131, label %str_gen_check130

choice.exit113:                                   ; preds = %m.done, %and.20.exit
  br label %choice.exit74

str_gen_check130:                                 ; preds = %choice.then112
  %arena.cur133 = call ptr @dva_arena_current()
  %tag.valid134 = call i1 @dva_arena_validate_tag(ptr %arena.cur133, i64 %str.tag128)
  br i1 %tag.valid134, label %str_ok131, label %str_stale132

str_ok131:                                        ; preds = %str_stale132, %str_gen_check130, %choice.then112
  %hash.str = call i64 @dva_hash_string(ptr %mk.data125, i64 %mk.len127)
  %m.capm1 = sub i64 %m.cap118, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale132:                                     ; preds = %str_gen_check130
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok131

m.loop:                                           ; preds = %m.next, %str_ok131
  %m.idx = phi i64 [ %m.idx0, %str_ok131 ], [ %m.idx.next, %m.next ]
  %m.tomb135 = phi i64 [ -1, %str_ok131 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok131 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap118
  %m.state.gep = getelementptr i8, ptr %m.states124, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb135, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb135, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys120, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen136 = load i64, ptr %mk.slen, align 8
  %mk.slen137 = and i64 %mk.slen136, 281474976710655
  %str.tag138 = lshr i64 %mk.slen136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals122, i64 %m.idx
  store i64 1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb135, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap118, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done284, %m.overwrite
  br label %choice.exit113

str_gen_check140:                                 ; preds = %m.found
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag138)
  br i1 %tag.valid144, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.nlen145 = load i64, ptr %mk.nlen, align 8
  %mk.nlen146 = and i64 %mk.nlen145, 281474976710655
  %str.tag147 = lshr i64 %mk.nlen145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_stale142:                                     ; preds = %str_gen_check140
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

str_gen_check149:                                 ; preds = %str_ok141
  %arena.cur152 = call ptr @dva_arena_current()
  %tag.valid153 = call i1 @dva_arena_validate_tag(ptr %arena.cur152, i64 %str.tag147)
  br i1 %tag.valid153, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %str_ok141
  %mk.lenseq = icmp eq i64 %mk.slen137, %mk.nlen146
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale151:                                     ; preds = %str_gen_check149
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

mk.eq.then:                                       ; preds = %str_ok150
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata154 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.ndata155 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata154, ptr %mk.ndata155, i64 %mk.nlen146)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok150
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.old.cap156 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.old.keys157 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.old.vals158 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.old.states159 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap156, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.live.cnt160 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt160, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap156
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap156
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur161 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur162 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 %m.gv.bytes)
  %arena.cur163 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep164 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep164, align 8
  %m.keys.gep165 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep165, align 8
  %m.vals.gep166 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep166, align 8
  %m.states.gep167 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep167, align 8
  %m.count.gep168 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 0, ptr %m.count.gep168, align 8
  %m.tombs.gep169 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep169, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb347 = icmp ne i64 %m.tomb135, -1
  %m.ins.idx348 = select i1 %m.use.tomb347, i64 %m.tomb135, i64 %m.idx
  %m.key.slot349 = getelementptr ptr, ptr %m.keys120, i64 %m.ins.idx348
  store ptr %fld.load117, ptr %m.key.slot349, align 8
  %m.val.slot350 = getelementptr i64, ptr %m.vals122, i64 %m.ins.idx348
  store i64 1, ptr %m.val.slot350, align 8
  %m.ins.state.slot351 = getelementptr i8, ptr %m.states124, i64 %m.ins.idx348
  store i8 1, ptr %m.ins.state.slot351, align 1
  %m.count352 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count353 = load i64, ptr %m.count352, align 8
  %m.count.next354 = add i64 %m.count353, 1
  %m.count.gep355 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 %m.count.next354, ptr %m.count.gep355, align 8
  %m.ins.tombs.p356 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.ins.tombs357 = load i64, ptr %m.ins.tombs.p356, align 8
  %m.tomb.dec358 = select i1 %m.use.tomb347, i64 1, i64 0
  %m.ins.tombs.next359 = sub i64 %m.ins.tombs357, %m.tomb.dec358
  store i64 %m.ins.tombs.next359, ptr %m.ins.tombs.p356, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap156
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states159, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done200, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap254 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap255 = load i64, ptr %m.cap254, align 8
  %m.keys256 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.keys257 = load ptr, ptr %m.keys256, align 8
  %m.vals258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.vals259 = load ptr, ptr %m.vals258, align 8
  %m.states260 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.states261 = load ptr, ptr %m.states260, align 8
  %mk.data262 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.data263 = load ptr, ptr %mk.data262, align 8
  %mk.len264 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.len265 = load i64, ptr %mk.len264, align 8
  %mk.len266 = and i64 %mk.len265, 281474976710655
  %str.tag267 = lshr i64 %mk.len265, 48
  %str.immortal268 = icmp eq i64 %str.tag267, 0
  br i1 %str.immortal268, label %str_ok270, label %str_gen_check269

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys157, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals158, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap170 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap171 = load i64, ptr %m.cap170, align 8
  %m.keys172 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.keys173 = load ptr, ptr %m.keys172, align 8
  %m.vals174 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.vals175 = load ptr, ptr %m.vals174, align 8
  %m.states176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.states177 = load ptr, ptr %m.states176, align 8
  %mk.data178 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data179 = load ptr, ptr %mk.data178, align 8
  %mk.len180 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len181 = load i64, ptr %mk.len180, align 8
  %mk.len182 = and i64 %mk.len181, 281474976710655
  %str.tag183 = lshr i64 %mk.len181, 48
  %str.immortal184 = icmp eq i64 %str.tag183, 0
  br i1 %str.immortal184, label %str_ok186, label %str_gen_check185

str_gen_check185:                                 ; preds = %m.re.ins
  %arena.cur188 = call ptr @dva_arena_current()
  %tag.valid189 = call i1 @dva_arena_validate_tag(ptr %arena.cur188, i64 %str.tag183)
  br i1 %tag.valid189, label %str_ok186, label %str_stale187

str_ok186:                                        ; preds = %str_stale187, %str_gen_check185, %m.re.ins
  %hash.str190 = call i64 @dva_hash_string(ptr %mk.data179, i64 %mk.len182)
  %m.capm1191 = sub i64 %m.cap171, 1
  %m.idx0192 = and i64 %hash.str190, %m.capm1191
  br label %m.loop193

str_stale187:                                     ; preds = %str_gen_check185
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok186

m.loop193:                                        ; preds = %m.next198, %str_ok186
  %m.idx201 = phi i64 [ %m.idx0192, %str_ok186 ], [ %m.idx.next248, %m.next198 ]
  %m.tomb202 = phi i64 [ -1, %str_ok186 ], [ %m.next.tomb246, %m.next198 ]
  %m.probe203 = phi i64 [ 0, %str_ok186 ], [ %m.probe.next249, %m.next198 ]
  %m.reached.cap204 = icmp eq i64 %m.probe203, %m.cap171
  %m.state.gep205 = getelementptr i8, ptr %m.states177, i64 %m.idx201
  %m.state206 = load i8, ptr %m.state.gep205, align 1
  %m.is.empty207 = icmp eq i8 %m.state206, 0
  %m.stop208 = or i1 %m.is.empty207, %m.reached.cap204
  br i1 %m.stop208, label %m.empty199, label %m.check.tomb194

m.check.tomb194:                                  ; preds = %m.loop193
  %m.is.tomb209 = icmp eq i8 %m.state206, 2
  br i1 %m.is.tomb209, label %m.tomb195, label %m.found196

m.tomb195:                                        ; preds = %m.check.tomb194
  %m.has.tomb210 = icmp ne i64 %m.tomb202, -1
  %m.tomb.sel211 = select i1 %m.has.tomb210, i64 %m.tomb202, i64 %m.idx201
  br label %m.next198

m.found196:                                       ; preds = %m.check.tomb194
  %m.key.slot212 = getelementptr ptr, ptr %m.keys173, i64 %m.idx201
  %mk.stored213 = load ptr, ptr %m.key.slot212, align 8
  %mk.slen214 = getelementptr inbounds { i64, ptr }, ptr %mk.stored213, i32 0, i32 0
  %mk.slen215 = load i64, ptr %mk.slen214, align 8
  %mk.slen216 = and i64 %mk.slen215, 281474976710655
  %str.tag217 = lshr i64 %mk.slen215, 48
  %str.immortal218 = icmp eq i64 %str.tag217, 0
  br i1 %str.immortal218, label %str_ok220, label %str_gen_check219

m.overwrite197:                                   ; preds = %mk.eq.merge237
  %m.val.slot245 = getelementptr i64, ptr %m.vals175, i64 %m.idx201
  store i64 %m.re.val, ptr %m.val.slot245, align 8
  br label %m.done200

m.next198:                                        ; preds = %mk.eq.merge237, %m.tomb195
  %m.next.tomb246 = phi i64 [ %m.tomb.sel211, %m.tomb195 ], [ %m.tomb202, %mk.eq.merge237 ]
  %m.idx.add247 = add i64 %m.idx201, 1
  %m.idx.next248 = and i64 %m.idx.add247, %m.capm1191
  %m.probe.next249 = add i64 %m.probe203, 1
  br label %m.loop193

m.empty199:                                       ; preds = %m.loop193
  %m.use.tomb = icmp ne i64 %m.tomb202, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb202, i64 %m.idx201
  %m.key.slot250 = getelementptr ptr, ptr %m.keys173, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot250, align 8
  %m.val.slot251 = getelementptr i64, ptr %m.vals175, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot251, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states177, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count252 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count252, 1
  %m.count.gep253 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep253, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done200

m.done200:                                        ; preds = %m.empty199, %m.overwrite197
  br label %m.re.cont

str_gen_check219:                                 ; preds = %m.found196
  %arena.cur222 = call ptr @dva_arena_current()
  %tag.valid223 = call i1 @dva_arena_validate_tag(ptr %arena.cur222, i64 %str.tag217)
  br i1 %tag.valid223, label %str_ok220, label %str_stale221

str_ok220:                                        ; preds = %str_stale221, %str_gen_check219, %m.found196
  %mk.nlen224 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen225 = load i64, ptr %mk.nlen224, align 8
  %mk.nlen226 = and i64 %mk.nlen225, 281474976710655
  %str.tag227 = lshr i64 %mk.nlen225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

str_stale221:                                     ; preds = %str_gen_check219
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok220

str_gen_check229:                                 ; preds = %str_ok220
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %str_ok220
  %mk.lenseq234 = icmp eq i64 %mk.slen216, %mk.nlen226
  br i1 %mk.lenseq234, label %mk.eq.then235, label %mk.eq.else236

str_stale231:                                     ; preds = %str_gen_check229
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

mk.eq.then235:                                    ; preds = %str_ok230
  %mk.sdata238 = getelementptr inbounds { i64, ptr }, ptr %mk.stored213, i32 0, i32 1
  %mk.sdata239 = load ptr, ptr %mk.sdata238, align 8
  %mk.ndata240 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata241 = load ptr, ptr %mk.ndata240, align 8
  %mk.memcmp242 = call i32 @memcmp(ptr %mk.sdata239, ptr %mk.ndata241, i64 %mk.nlen226)
  %mk.cmpeq243 = icmp eq i32 %mk.memcmp242, 0
  br label %mk.eq.merge237

mk.eq.else236:                                    ; preds = %str_ok230
  br label %mk.eq.merge237

mk.eq.merge237:                                   ; preds = %mk.eq.else236, %mk.eq.then235
  %mk.eq244 = phi i1 [ %mk.cmpeq243, %mk.eq.then235 ], [ false, %mk.eq.else236 ]
  br i1 %mk.eq244, label %m.overwrite197, label %m.next198

str_gen_check269:                                 ; preds = %m.re.done
  %arena.cur272 = call ptr @dva_arena_current()
  %tag.valid273 = call i1 @dva_arena_validate_tag(ptr %arena.cur272, i64 %str.tag267)
  br i1 %tag.valid273, label %str_ok270, label %str_stale271

str_ok270:                                        ; preds = %str_stale271, %str_gen_check269, %m.re.done
  %hash.str274 = call i64 @dva_hash_string(ptr %mk.data263, i64 %mk.len266)
  %m.capm1275 = sub i64 %m.cap255, 1
  %m.idx0276 = and i64 %hash.str274, %m.capm1275
  br label %m.loop277

str_stale271:                                     ; preds = %str_gen_check269
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok270

m.loop277:                                        ; preds = %m.next282, %str_ok270
  %m.idx285 = phi i64 [ %m.idx0276, %str_ok270 ], [ %m.idx.next332, %m.next282 ]
  %m.tomb286 = phi i64 [ -1, %str_ok270 ], [ %m.next.tomb330, %m.next282 ]
  %m.probe287 = phi i64 [ 0, %str_ok270 ], [ %m.probe.next333, %m.next282 ]
  %m.reached.cap288 = icmp eq i64 %m.probe287, %m.cap255
  %m.state.gep289 = getelementptr i8, ptr %m.states261, i64 %m.idx285
  %m.state290 = load i8, ptr %m.state.gep289, align 1
  %m.is.empty291 = icmp eq i8 %m.state290, 0
  %m.stop292 = or i1 %m.is.empty291, %m.reached.cap288
  br i1 %m.stop292, label %m.empty283, label %m.check.tomb278

m.check.tomb278:                                  ; preds = %m.loop277
  %m.is.tomb293 = icmp eq i8 %m.state290, 2
  br i1 %m.is.tomb293, label %m.tomb279, label %m.found280

m.tomb279:                                        ; preds = %m.check.tomb278
  %m.has.tomb294 = icmp ne i64 %m.tomb286, -1
  %m.tomb.sel295 = select i1 %m.has.tomb294, i64 %m.tomb286, i64 %m.idx285
  br label %m.next282

m.found280:                                       ; preds = %m.check.tomb278
  %m.key.slot296 = getelementptr ptr, ptr %m.keys257, i64 %m.idx285
  %mk.stored297 = load ptr, ptr %m.key.slot296, align 8
  %mk.slen298 = getelementptr inbounds { i64, ptr }, ptr %mk.stored297, i32 0, i32 0
  %mk.slen299 = load i64, ptr %mk.slen298, align 8
  %mk.slen300 = and i64 %mk.slen299, 281474976710655
  %str.tag301 = lshr i64 %mk.slen299, 48
  %str.immortal302 = icmp eq i64 %str.tag301, 0
  br i1 %str.immortal302, label %str_ok304, label %str_gen_check303

m.overwrite281:                                   ; preds = %mk.eq.merge321
  %m.val.slot329 = getelementptr i64, ptr %m.vals259, i64 %m.idx285
  store i64 1, ptr %m.val.slot329, align 8
  br label %m.done284

m.next282:                                        ; preds = %mk.eq.merge321, %m.tomb279
  %m.next.tomb330 = phi i64 [ %m.tomb.sel295, %m.tomb279 ], [ %m.tomb286, %mk.eq.merge321 ]
  %m.idx.add331 = add i64 %m.idx285, 1
  %m.idx.next332 = and i64 %m.idx.add331, %m.capm1275
  %m.probe.next333 = add i64 %m.probe287, 1
  br label %m.loop277

m.empty283:                                       ; preds = %m.loop277
  %m.use.tomb334 = icmp ne i64 %m.tomb286, -1
  %m.ins.idx335 = select i1 %m.use.tomb334, i64 %m.tomb286, i64 %m.idx285
  %m.key.slot336 = getelementptr ptr, ptr %m.keys257, i64 %m.ins.idx335
  store ptr %fld.load117, ptr %m.key.slot336, align 8
  %m.val.slot337 = getelementptr i64, ptr %m.vals259, i64 %m.ins.idx335
  store i64 1, ptr %m.val.slot337, align 8
  %m.ins.state.slot338 = getelementptr i8, ptr %m.states261, i64 %m.ins.idx335
  store i8 1, ptr %m.ins.state.slot338, align 1
  %m.count339 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count340 = load i64, ptr %m.count339, align 8
  %m.count.next341 = add i64 %m.count340, 1
  %m.count.gep342 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 %m.count.next341, ptr %m.count.gep342, align 8
  %m.ins.tombs.p343 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.ins.tombs344 = load i64, ptr %m.ins.tombs.p343, align 8
  %m.tomb.dec345 = select i1 %m.use.tomb334, i64 1, i64 0
  %m.ins.tombs.next346 = sub i64 %m.ins.tombs344, %m.tomb.dec345
  store i64 %m.ins.tombs.next346, ptr %m.ins.tombs.p343, align 8
  br label %m.done284

m.done284:                                        ; preds = %m.empty283, %m.overwrite281
  br label %m.done

str_gen_check303:                                 ; preds = %m.found280
  %arena.cur306 = call ptr @dva_arena_current()
  %tag.valid307 = call i1 @dva_arena_validate_tag(ptr %arena.cur306, i64 %str.tag301)
  br i1 %tag.valid307, label %str_ok304, label %str_stale305

str_ok304:                                        ; preds = %str_stale305, %str_gen_check303, %m.found280
  %mk.nlen308 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.nlen309 = load i64, ptr %mk.nlen308, align 8
  %mk.nlen310 = and i64 %mk.nlen309, 281474976710655
  %str.tag311 = lshr i64 %mk.nlen309, 48
  %str.immortal312 = icmp eq i64 %str.tag311, 0
  br i1 %str.immortal312, label %str_ok314, label %str_gen_check313

str_stale305:                                     ; preds = %str_gen_check303
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok304

str_gen_check313:                                 ; preds = %str_ok304
  %arena.cur316 = call ptr @dva_arena_current()
  %tag.valid317 = call i1 @dva_arena_validate_tag(ptr %arena.cur316, i64 %str.tag311)
  br i1 %tag.valid317, label %str_ok314, label %str_stale315

str_ok314:                                        ; preds = %str_stale315, %str_gen_check313, %str_ok304
  %mk.lenseq318 = icmp eq i64 %mk.slen300, %mk.nlen310
  br i1 %mk.lenseq318, label %mk.eq.then319, label %mk.eq.else320

str_stale315:                                     ; preds = %str_gen_check313
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok314

mk.eq.then319:                                    ; preds = %str_ok314
  %mk.sdata322 = getelementptr inbounds { i64, ptr }, ptr %mk.stored297, i32 0, i32 1
  %mk.sdata323 = load ptr, ptr %mk.sdata322, align 8
  %mk.ndata324 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.ndata325 = load ptr, ptr %mk.ndata324, align 8
  %mk.memcmp326 = call i32 @memcmp(ptr %mk.sdata323, ptr %mk.ndata325, i64 %mk.nlen310)
  %mk.cmpeq327 = icmp eq i32 %mk.memcmp326, 0
  br label %mk.eq.merge321

mk.eq.else320:                                    ; preds = %str_ok314
  br label %mk.eq.merge321

mk.eq.merge321:                                   ; preds = %mk.eq.else320, %mk.eq.then319
  %mk.eq328 = phi i1 [ %mk.cmpeq327, %mk.eq.then319 ], [ false, %mk.eq.else320 ]
  br i1 %mk.eq328, label %m.overwrite281, label %m.next282

a.create377:                                      ; preds = %loop.exit.18
  %arena.cur379 = call ptr @dva_arena_current()
  %a.create380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 24)
  %arena.cur381 = call ptr @dva_arena_current()
  %a.buf382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 128)
  %a.len.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 0
  store i64 0, ptr %a.len.gep383, align 8
  %a.data.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 1
  store ptr %a.buf382, ptr %a.data.gep384, align 8
  %a.cap.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 2
  store i64 16, ptr %a.cap.gep385, align 8
  store ptr %a.create380, ptr %var.stmts, align 8
  br label %a.after378

a.after378:                                       ; preds = %a.create377, %loop.exit.18
  %a.load2386 = load ptr, ptr %var.stmts, align 8
  %a.len.query387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2386, i32 0, i32 0
  %a.len.query388 = load i64, ptr %a.len.query387, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after378
  %counter.load389 = load i64, ptr %loop.idx.21, align 8
  %loop.cond390 = icmp slt i64 %counter.load389, %a.len.query388
  br i1 %loop.cond390, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i391 = sub i64 %counter.load389, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i391, ptr %var._i392, align 8
  store i64 %counter.load389, ptr %var._393, align 8
  store i64 %counter.load389, ptr %var.i, align 8
  %var.load394 = load ptr, ptr %var.stmts, align 8
  %a.load395 = load ptr, ptr %var.stmts, align 8
  %a.null396 = icmp eq ptr %a.load395, null
  br i1 %a.null396, label %a.create397, label %a.after398

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit467
  %step.val918 = load i64, ptr %loop.step.21, align 8
  %loop.next919 = add i64 %counter.load389, %step.val918
  store i64 %loop.next919, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load920 = load ptr, ptr %var.stmts, align 8
  %a.load921 = load ptr, ptr %var.stmts, align 8
  %a.null922 = icmp eq ptr %a.load921, null
  br i1 %a.null922, label %a.create923, label %a.after924

a.create397:                                      ; preds = %loop.body.21
  %arena.cur399 = call ptr @dva_arena_current()
  %a.create400 = call ptr @dva_arena_alloc(ptr %arena.cur399, i64 24)
  %arena.cur401 = call ptr @dva_arena_current()
  %a.buf402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 128)
  %a.len.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 0
  store i64 0, ptr %a.len.gep403, align 8
  %a.data.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 1
  store ptr %a.buf402, ptr %a.data.gep404, align 8
  %a.cap.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 2
  store i64 16, ptr %a.cap.gep405, align 8
  store ptr %a.create400, ptr %var.stmts, align 8
  br label %a.after398

a.after398:                                       ; preds = %a.create397, %loop.body.21
  %a.load2406 = load ptr, ptr %var.stmts, align 8
  %var.load407 = load i64, ptr %var.i, align 8
  %a.rd.nonnull408 = icmp ne ptr %a.load2406, null
  br i1 %a.rd.nonnull408, label %a.rd.check409, label %a.rd.err.null411

a.rd.check409:                                    ; preds = %a.after398
  %a.rd.len414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2406, i32 0, i32 0
  %a.rd.len415 = load i64, ptr %a.rd.len414, align 8
  %a.rd.ge0416 = icmp sge i64 %var.load407, 0
  %a.rd.lt417 = icmp slt i64 %var.load407, %a.rd.len415
  %a.rd.bounds418 = and i1 %a.rd.ge0416, %a.rd.lt417
  br i1 %a.rd.bounds418, label %a.rd.ok410, label %a.rd.err.oob412

a.rd.ok410:                                       ; preds = %a.rd.check409
  %a.rd.data419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2406, i32 0, i32 1
  %a.rd.data420 = load ptr, ptr %a.rd.data419, align 8
  %a.rd.elem.gep421 = getelementptr i64, ptr %a.rd.data420, i64 %var.load407
  %a.rd.elem422 = load i64, ptr %a.rd.elem.gep421, align 8
  br label %a.rd.done413

a.rd.err.null411:                                 ; preds = %a.after398
  %arena.cur423 = call ptr @dva_arena_current()
  %err.alloc424 = call ptr @dva_arena_alloc(ptr %arena.cur423, i64 56)
  %err.code.gep425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 0
  store i64 4011, ptr %err.code.gep425, align 8
  %err.msg.gep426 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep426, align 8
  %err.file.gep427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep427, align 8
  %err.line.gep428 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 3
  store i64 219, ptr %err.line.gep428, align 8
  %err.col.gep429 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 4
  store i64 22, ptr %err.col.gep429, align 8
  %err.ctx.gep430 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc424, i32 0, i32 5
  %err.ctx0.gep431 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep430, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep431, align 8
  %err.ctx1.gep432 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep430, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep432, align 8
  %err.p2i433 = ptrtoint ptr %err.alloc424 to i64
  br label %a.rd.done413

a.rd.err.oob412:                                  ; preds = %a.rd.check409
  %arena.cur434 = call ptr @dva_arena_current()
  %err.alloc435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 56)
  %err.code.gep436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 0
  store i64 4011, ptr %err.code.gep436, align 8
  %err.msg.gep437 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep437, align 8
  %err.file.gep438 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep438, align 8
  %err.line.gep439 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 3
  store i64 219, ptr %err.line.gep439, align 8
  %err.col.gep440 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 4
  store i64 22, ptr %err.col.gep440, align 8
  %err.ctx.gep441 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc435, i32 0, i32 5
  %err.ctx0.gep442 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep441, i32 0, i32 0
  store i64 %var.load407, ptr %err.ctx0.gep442, align 8
  %err.ctx1.gep443 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep441, i32 0, i32 1
  store i64 %a.rd.len415, ptr %err.ctx1.gep443, align 8
  %err.p2i444 = ptrtoint ptr %err.alloc435 to i64
  br label %a.rd.done413

a.rd.done413:                                     ; preds = %a.rd.err.oob412, %a.rd.err.null411, %a.rd.ok410
  %a.rd.tag445 = phi i1 [ true, %a.rd.ok410 ], [ false, %a.rd.err.null411 ], [ false, %a.rd.err.oob412 ]
  %a.rd.pay446 = phi i64 [ %a.rd.elem422, %a.rd.ok410 ], [ %err.p2i433, %a.rd.err.null411 ], [ %err.p2i444, %a.rd.err.oob412 ]
  %ram.tag447 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag445, 0
  %ram.pay448 = insertvalue { i1, i64 } %ram.tag447, i64 %a.rd.pay446, 1
  %ram.tag449 = extractvalue { i1, i64 } %ram.pay448, 0
  br i1 %ram.tag449, label %choice.then450, label %choice.else451

choice.then450:                                   ; preds = %a.rd.done413
  %ram.pay453 = extractvalue { i1, i64 } %ram.pay448, 1
  %pay.ptr454 = inttoptr i64 %ram.pay453 to ptr
  store ptr %pay.ptr454, ptr %var._455, align 8
  br label %choice.exit452

choice.else451:                                   ; preds = %a.rd.done413
  %ram.pay456 = extractvalue { i1, i64 } %ram.pay448, 1
  %pay.ptr457 = inttoptr i64 %ram.pay456 to ptr
  store ptr %pay.ptr457, ptr %var._458, align 8
  %arena.cur459 = call ptr @dva_arena_current()
  %enum.alloc460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 16)
  %tag.gep461 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc460, i32 0, i32 0
  store i64 0, ptr %tag.gep461, align 8
  %pay.gep462 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc460, i32 0, i32 1
  %arena.cur463 = call ptr @dva_arena_current()
  %enum.pay.alloc464 = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 8)
  store i64 0, ptr %enum.pay.alloc464, align 8
  store ptr %enum.pay.alloc464, ptr %pay.gep462, align 8
  br label %choice.exit452

choice.exit452:                                   ; preds = %choice.else451, %choice.then450
  %choice.res465 = phi ptr [ %pay.ptr454, %choice.then450 ], [ %enum.alloc460, %choice.else451 ]
  store ptr %choice.res465, ptr %var.st1, align 8
  %var.load466 = load ptr, ptr %var.st1, align 8
  %tag.gep470 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 0
  %tag.id471 = load i64, ptr %tag.gep470, align 8
  %tag.match472 = icmp eq i64 %tag.id471, 6
  br i1 %tag.match472, label %choice.case468, label %choice.next469

choice.exit467:                                   ; preds = %choice.next469, %choice.exit582
  br label %loop.latch.21

choice.case468:                                   ; preds = %choice.exit452
  %pay.gep473 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 1
  %payload.ptr474 = load ptr, ptr %pay.gep473, align 8
  store ptr %payload.ptr474, ptr %var._475, align 8
  store ptr %payload.ptr474, ptr %var.a1, align 8
  %var.load476 = load ptr, ptr %var.a1, align 8
  %call.res477 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load476)
  store i1 %call.res477, ptr %var.is_fwd1, align 1
  %var.load478 = load ptr, ptr %var.gen_names, align 8
  %var.load479 = load ptr, ptr %var.a1, align 8
  %fld.gep480 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load479, i32 0, i32 0
  %fld.load481 = load ptr, ptr %fld.gep480, align 8
  %m.cap482 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load478, i32 0, i32 1
  %m.cap483 = load i64, ptr %m.cap482, align 8
  %m.keys484 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load478, i32 0, i32 2
  %m.keys485 = load ptr, ptr %m.keys484, align 8
  %m.states486 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load478, i32 0, i32 4
  %m.states487 = load ptr, ptr %m.states486, align 8
  %mk.data488 = getelementptr inbounds { i64, ptr }, ptr %fld.load481, i32 0, i32 1
  %mk.data489 = load ptr, ptr %mk.data488, align 8
  %mk.len490 = getelementptr inbounds { i64, ptr }, ptr %fld.load481, i32 0, i32 0
  %mk.len491 = load i64, ptr %mk.len490, align 8
  %mk.len492 = and i64 %mk.len491, 281474976710655
  %str.tag493 = lshr i64 %mk.len491, 48
  %str.immortal494 = icmp eq i64 %str.tag493, 0
  br i1 %str.immortal494, label %str_ok496, label %str_gen_check495

choice.next469:                                   ; preds = %choice.exit452
  br label %choice.exit467

str_gen_check495:                                 ; preds = %choice.case468
  %arena.cur498 = call ptr @dva_arena_current()
  %tag.valid499 = call i1 @dva_arena_validate_tag(ptr %arena.cur498, i64 %str.tag493)
  br i1 %tag.valid499, label %str_ok496, label %str_stale497

str_ok496:                                        ; preds = %str_stale497, %str_gen_check495, %choice.case468
  %hash.str500 = call i64 @dva_hash_string(ptr %mk.data489, i64 %mk.len492)
  %m.capm1501 = sub i64 %m.cap483, 1
  %m.idx0502 = and i64 %hash.str500, %m.capm1501
  br label %m.mem.loop

str_stale497:                                     ; preds = %str_gen_check495
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok496

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok496
  %m.mem.idx = phi i64 [ %m.idx0502, %str_ok496 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe503 = phi i64 [ 0, %str_ok496 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe503, %m.cap483
  %m.mem.state.gep = getelementptr i8, ptr %m.states487, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys485, i64 %m.mem.idx
  %mk.stored504 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen505 = getelementptr inbounds { i64, ptr }, ptr %mk.stored504, i32 0, i32 0
  %mk.slen506 = load i64, ptr %mk.slen505, align 8
  %mk.slen507 = and i64 %mk.slen506, 281474976710655
  %str.tag508 = lshr i64 %mk.slen506, 48
  %str.immortal509 = icmp eq i64 %str.tag508, 0
  br i1 %str.immortal509, label %str_ok511, label %str_gen_check510

m.mem.next:                                       ; preds = %mk.eq.merge528, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1501
  %m.mem.probe.next = add i64 %m.mem.probe503, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load536 = load ptr, ptr %var.a1, align 8
  %fld.gep537 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load536, i32 0, i32 0
  %fld.load538 = load ptr, ptr %fld.gep537, align 8
  store ptr %fld.load538, ptr %var.name1, align 8
  %var.load539 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load539, true
  br i1 %nottmp, label %and.22.then, label %and.22.else

str_gen_check510:                                 ; preds = %m.mem.found
  %arena.cur513 = call ptr @dva_arena_current()
  %tag.valid514 = call i1 @dva_arena_validate_tag(ptr %arena.cur513, i64 %str.tag508)
  br i1 %tag.valid514, label %str_ok511, label %str_stale512

str_ok511:                                        ; preds = %str_stale512, %str_gen_check510, %m.mem.found
  %mk.nlen515 = getelementptr inbounds { i64, ptr }, ptr %fld.load481, i32 0, i32 0
  %mk.nlen516 = load i64, ptr %mk.nlen515, align 8
  %mk.nlen517 = and i64 %mk.nlen516, 281474976710655
  %str.tag518 = lshr i64 %mk.nlen516, 48
  %str.immortal519 = icmp eq i64 %str.tag518, 0
  br i1 %str.immortal519, label %str_ok521, label %str_gen_check520

str_stale512:                                     ; preds = %str_gen_check510
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok511

str_gen_check520:                                 ; preds = %str_ok511
  %arena.cur523 = call ptr @dva_arena_current()
  %tag.valid524 = call i1 @dva_arena_validate_tag(ptr %arena.cur523, i64 %str.tag518)
  br i1 %tag.valid524, label %str_ok521, label %str_stale522

str_ok521:                                        ; preds = %str_stale522, %str_gen_check520, %str_ok511
  %mk.lenseq525 = icmp eq i64 %mk.slen507, %mk.nlen517
  br i1 %mk.lenseq525, label %mk.eq.then526, label %mk.eq.else527

str_stale522:                                     ; preds = %str_gen_check520
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok521

mk.eq.then526:                                    ; preds = %str_ok521
  %mk.sdata529 = getelementptr inbounds { i64, ptr }, ptr %mk.stored504, i32 0, i32 1
  %mk.sdata530 = load ptr, ptr %mk.sdata529, align 8
  %mk.ndata531 = getelementptr inbounds { i64, ptr }, ptr %fld.load481, i32 0, i32 1
  %mk.ndata532 = load ptr, ptr %mk.ndata531, align 8
  %mk.memcmp533 = call i32 @memcmp(ptr %mk.sdata530, ptr %mk.ndata532, i64 %mk.nlen517)
  %mk.cmpeq534 = icmp eq i32 %mk.memcmp533, 0
  br label %mk.eq.merge528

mk.eq.else527:                                    ; preds = %str_ok521
  br label %mk.eq.merge528

mk.eq.merge528:                                   ; preds = %mk.eq.else527, %mk.eq.then526
  %mk.eq535 = phi i1 [ %mk.cmpeq534, %mk.eq.then526 ], [ false, %mk.eq.else527 ]
  br i1 %mk.eq535, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge528
  br label %m.mem.done

and.22.then:                                      ; preds = %m.mem.done
  %var.load540 = load i1, ptr %var.is_gen1, align 1
  %nottmp541 = xor i1 %var.load540, true
  br label %and.22.exit

and.22.else:                                      ; preds = %m.mem.done
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %nottmp541, %and.22.then ], [ %nottmp, %and.22.else ]
  br i1 %and.22.phi, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %and.22.exit
  %var.load542 = load ptr, ptr %var.a1, align 8
  %fld.gep543 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load542, i32 0, i32 2
  %fld.load544 = load i1, ptr %fld.gep543, align 1
  %nottmp545 = xor i1 %fld.load544, true
  br label %and.23.exit

and.23.else:                                      ; preds = %and.22.exit
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp545, %and.23.then ], [ %and.22.phi, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

and.24.then:                                      ; preds = %and.23.exit
  %var.load546 = load ptr, ptr %var.a1, align 8
  %fld.gep547 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load546, i32 0, i32 4
  %fld.load548 = load i1, ptr %fld.gep547, align 1
  %nottmp549 = xor i1 %fld.load548, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp549, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %and.24.exit
  %var.load550 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len551 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 0
  %eq.lhs.len552 = load i64, ptr %eq.lhs.len551, align 8
  %eq.lhs.len553 = and i64 %eq.lhs.len552, 281474976710655
  %str.tag554 = lshr i64 %eq.lhs.len552, 48
  %str.immortal555 = icmp eq i64 %str.tag554, 0
  br i1 %str.immortal555, label %str_ok557, label %str_gen_check556

and.25.else:                                      ; preds = %and.24.exit
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %str.eq.merge573
  %and.25.phi = phi i1 [ %str.neq580, %str.eq.merge573 ], [ %and.24.phi, %and.25.else ]
  br i1 %and.25.phi, label %choice.then581, label %choice.exit582

str_gen_check556:                                 ; preds = %and.25.then
  %arena.cur559 = call ptr @dva_arena_current()
  %tag.valid560 = call i1 @dva_arena_validate_tag(ptr %arena.cur559, i64 %str.tag554)
  br i1 %tag.valid560, label %str_ok557, label %str_stale558

str_ok557:                                        ; preds = %str_stale558, %str_gen_check556, %and.25.then
  %eq.rhs.len561 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len562 = and i64 %eq.rhs.len561, 281474976710655
  %str.tag563 = lshr i64 %eq.rhs.len561, 48
  %str.immortal564 = icmp eq i64 %str.tag563, 0
  br i1 %str.immortal564, label %str_ok566, label %str_gen_check565

str_stale558:                                     ; preds = %str_gen_check556
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok557

str_gen_check565:                                 ; preds = %str_ok557
  %arena.cur568 = call ptr @dva_arena_current()
  %tag.valid569 = call i1 @dva_arena_validate_tag(ptr %arena.cur568, i64 %str.tag563)
  br i1 %tag.valid569, label %str_ok566, label %str_stale567

str_ok566:                                        ; preds = %str_stale567, %str_gen_check565, %str_ok557
  %eq.len570 = icmp eq i64 %eq.lhs.len553, %eq.rhs.len562
  br i1 %eq.len570, label %str.eq.then571, label %str.eq.else572

str_stale567:                                     ; preds = %str_gen_check565
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok566

str.eq.then571:                                   ; preds = %str_ok566
  %eq.lhs.data574 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 1
  %eq.lhs.data575 = load ptr, ptr %eq.lhs.data574, align 8
  %eq.rhs.data576 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp577 = call i32 @memcmp(ptr %eq.lhs.data575, ptr %eq.rhs.data576, i64 %eq.lhs.len553)
  %eq.cmp.zero578 = icmp eq i32 %eq.memcmp577, 0
  br label %str.eq.merge573

str.eq.else572:                                   ; preds = %str_ok566
  br label %str.eq.merge573

str.eq.merge573:                                  ; preds = %str.eq.else572, %str.eq.then571
  %str.eq.result579 = phi i1 [ %eq.cmp.zero578, %str.eq.then571 ], [ false, %str.eq.else572 ]
  %str.neq580 = xor i1 %str.eq.result579, true
  br label %and.25.exit

choice.then581:                                   ; preds = %and.25.exit
  %var.load583 = load ptr, ptr %var.def_names, align 8
  %var.load584 = load ptr, ptr %var.name1, align 8
  %m.cap585 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  %m.cap586 = load i64, ptr %m.cap585, align 8
  %m.keys587 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  %m.keys588 = load ptr, ptr %m.keys587, align 8
  %m.vals589 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 3
  %m.vals590 = load ptr, ptr %m.vals589, align 8
  %m.states591 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 4
  %m.states592 = load ptr, ptr %m.states591, align 8
  %mk.data593 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 1
  %mk.data594 = load ptr, ptr %mk.data593, align 8
  %mk.len595 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 0
  %mk.len596 = load i64, ptr %mk.len595, align 8
  %mk.len597 = and i64 %mk.len596, 281474976710655
  %str.tag598 = lshr i64 %mk.len596, 48
  %str.immortal599 = icmp eq i64 %str.tag598, 0
  br i1 %str.immortal599, label %str_ok601, label %str_gen_check600

choice.exit582:                                   ; preds = %m.done615, %and.25.exit
  br label %choice.exit467

str_gen_check600:                                 ; preds = %choice.then581
  %arena.cur603 = call ptr @dva_arena_current()
  %tag.valid604 = call i1 @dva_arena_validate_tag(ptr %arena.cur603, i64 %str.tag598)
  br i1 %tag.valid604, label %str_ok601, label %str_stale602

str_ok601:                                        ; preds = %str_stale602, %str_gen_check600, %choice.then581
  %hash.str605 = call i64 @dva_hash_string(ptr %mk.data594, i64 %mk.len597)
  %m.capm1606 = sub i64 %m.cap586, 1
  %m.idx0607 = and i64 %hash.str605, %m.capm1606
  br label %m.loop608

str_stale602:                                     ; preds = %str_gen_check600
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok601

m.loop608:                                        ; preds = %m.next613, %str_ok601
  %m.idx616 = phi i64 [ %m.idx0607, %str_ok601 ], [ %m.idx.next663, %m.next613 ]
  %m.tomb617 = phi i64 [ -1, %str_ok601 ], [ %m.next.tomb661, %m.next613 ]
  %m.probe618 = phi i64 [ 0, %str_ok601 ], [ %m.probe.next664, %m.next613 ]
  %m.reached.cap619 = icmp eq i64 %m.probe618, %m.cap586
  %m.state.gep620 = getelementptr i8, ptr %m.states592, i64 %m.idx616
  %m.state621 = load i8, ptr %m.state.gep620, align 1
  %m.is.empty622 = icmp eq i8 %m.state621, 0
  %m.stop623 = or i1 %m.is.empty622, %m.reached.cap619
  br i1 %m.stop623, label %m.empty614, label %m.check.tomb609

m.check.tomb609:                                  ; preds = %m.loop608
  %m.is.tomb624 = icmp eq i8 %m.state621, 2
  br i1 %m.is.tomb624, label %m.tomb610, label %m.found611

m.tomb610:                                        ; preds = %m.check.tomb609
  %m.has.tomb625 = icmp ne i64 %m.tomb617, -1
  %m.tomb.sel626 = select i1 %m.has.tomb625, i64 %m.tomb617, i64 %m.idx616
  br label %m.next613

m.found611:                                       ; preds = %m.check.tomb609
  %m.key.slot627 = getelementptr ptr, ptr %m.keys588, i64 %m.idx616
  %mk.stored628 = load ptr, ptr %m.key.slot627, align 8
  %mk.slen629 = getelementptr inbounds { i64, ptr }, ptr %mk.stored628, i32 0, i32 0
  %mk.slen630 = load i64, ptr %mk.slen629, align 8
  %mk.slen631 = and i64 %mk.slen630, 281474976710655
  %str.tag632 = lshr i64 %mk.slen630, 48
  %str.immortal633 = icmp eq i64 %str.tag632, 0
  br i1 %str.immortal633, label %str_ok635, label %str_gen_check634

m.overwrite612:                                   ; preds = %mk.eq.merge652
  %m.val.slot660 = getelementptr i64, ptr %m.vals590, i64 %m.idx616
  store i64 1, ptr %m.val.slot660, align 8
  br label %m.done615

m.next613:                                        ; preds = %mk.eq.merge652, %m.tomb610
  %m.next.tomb661 = phi i64 [ %m.tomb.sel626, %m.tomb610 ], [ %m.tomb617, %mk.eq.merge652 ]
  %m.idx.add662 = add i64 %m.idx616, 1
  %m.idx.next663 = and i64 %m.idx.add662, %m.capm1606
  %m.probe.next664 = add i64 %m.probe618, 1
  br label %m.loop608

m.empty614:                                       ; preds = %m.loop608
  %m.grow.cnt.p665 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %m.grow.cnt666 = load i64, ptr %m.grow.cnt.p665, align 8
  %m.grow.tm.p667 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 5
  %m.grow.tm668 = load i64, ptr %m.grow.tm.p667, align 8
  %m.occupied669 = add i64 %m.grow.cnt666, %m.grow.tm668
  %m.c.plus670 = add i64 %m.occupied669, 1
  %m.c.lhs671 = mul i64 %m.c.plus670, 4
  %m.c.rhs672 = mul i64 %m.cap586, 3
  %m.need.grow673 = icmp sgt i64 %m.c.lhs671, %m.c.rhs672
  br i1 %m.need.grow673, label %m.grow674, label %m.ins.slot675

m.done615:                                        ; preds = %m.ins.slot675, %m.done842, %m.overwrite612
  br label %choice.exit582

str_gen_check634:                                 ; preds = %m.found611
  %arena.cur637 = call ptr @dva_arena_current()
  %tag.valid638 = call i1 @dva_arena_validate_tag(ptr %arena.cur637, i64 %str.tag632)
  br i1 %tag.valid638, label %str_ok635, label %str_stale636

str_ok635:                                        ; preds = %str_stale636, %str_gen_check634, %m.found611
  %mk.nlen639 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 0
  %mk.nlen640 = load i64, ptr %mk.nlen639, align 8
  %mk.nlen641 = and i64 %mk.nlen640, 281474976710655
  %str.tag642 = lshr i64 %mk.nlen640, 48
  %str.immortal643 = icmp eq i64 %str.tag642, 0
  br i1 %str.immortal643, label %str_ok645, label %str_gen_check644

str_stale636:                                     ; preds = %str_gen_check634
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok635

str_gen_check644:                                 ; preds = %str_ok635
  %arena.cur647 = call ptr @dva_arena_current()
  %tag.valid648 = call i1 @dva_arena_validate_tag(ptr %arena.cur647, i64 %str.tag642)
  br i1 %tag.valid648, label %str_ok645, label %str_stale646

str_ok645:                                        ; preds = %str_stale646, %str_gen_check644, %str_ok635
  %mk.lenseq649 = icmp eq i64 %mk.slen631, %mk.nlen641
  br i1 %mk.lenseq649, label %mk.eq.then650, label %mk.eq.else651

str_stale646:                                     ; preds = %str_gen_check644
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok645

mk.eq.then650:                                    ; preds = %str_ok645
  %mk.sdata653 = getelementptr inbounds { i64, ptr }, ptr %mk.stored628, i32 0, i32 1
  %mk.sdata654 = load ptr, ptr %mk.sdata653, align 8
  %mk.ndata655 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 1
  %mk.ndata656 = load ptr, ptr %mk.ndata655, align 8
  %mk.memcmp657 = call i32 @memcmp(ptr %mk.sdata654, ptr %mk.ndata656, i64 %mk.nlen641)
  %mk.cmpeq658 = icmp eq i32 %mk.memcmp657, 0
  br label %mk.eq.merge652

mk.eq.else651:                                    ; preds = %str_ok645
  br label %mk.eq.merge652

mk.eq.merge652:                                   ; preds = %mk.eq.else651, %mk.eq.then650
  %mk.eq659 = phi i1 [ %mk.cmpeq658, %mk.eq.then650 ], [ false, %mk.eq.else651 ]
  br i1 %mk.eq659, label %m.overwrite612, label %m.next613

m.grow674:                                        ; preds = %m.empty614
  %m.old.cap676 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  %m.old.cap677 = load i64, ptr %m.old.cap676, align 8
  %m.old.keys678 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  %m.old.keys679 = load ptr, ptr %m.old.keys678, align 8
  %m.old.vals680 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 3
  %m.old.vals681 = load ptr, ptr %m.old.vals680, align 8
  %m.old.states682 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 4
  %m.old.states683 = load ptr, ptr %m.old.states682, align 8
  %m.double.cap684 = mul i64 %m.old.cap677, 2
  %m.live.cnt685 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %m.live.cnt686 = load i64, ptr %m.live.cnt685, align 8
  %m.live.x2687 = mul i64 %m.live.cnt686, 2
  %m.should.double688 = icmp sgt i64 %m.live.x2687, %m.old.cap677
  %m.new.cap689 = select i1 %m.should.double688, i64 %m.double.cap684, i64 %m.old.cap677
  %m.gk.bytes690 = mul i64 %m.new.cap689, 8
  %arena.cur691 = call ptr @dva_arena_current()
  %m.gk692 = call ptr @dva_arena_alloc(ptr %arena.cur691, i64 %m.gk.bytes690)
  %m.gv.bytes693 = mul i64 %m.new.cap689, 8
  %arena.cur694 = call ptr @dva_arena_current()
  %m.gv695 = call ptr @dva_arena_alloc(ptr %arena.cur694, i64 %m.gv.bytes693)
  %arena.cur696 = call ptr @dva_arena_current()
  %m.gs697 = call ptr @dva_arena_alloc(ptr %arena.cur696, i64 %m.new.cap689)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs697, i8 0, i64 %m.new.cap689, i1 false)
  %m.cap.gep698 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  store i64 %m.new.cap689, ptr %m.cap.gep698, align 8
  %m.keys.gep699 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  store ptr %m.gk692, ptr %m.keys.gep699, align 8
  %m.vals.gep700 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 3
  store ptr %m.gv695, ptr %m.vals.gep700, align 8
  %m.states.gep701 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 4
  store ptr %m.gs697, ptr %m.states.gep701, align 8
  %m.count.gep702 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  store i64 0, ptr %m.count.gep702, align 8
  %m.tombs.gep703 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep703, align 8
  br label %m.re.loop704

m.ins.slot675:                                    ; preds = %m.empty614
  %m.use.tomb905 = icmp ne i64 %m.tomb617, -1
  %m.ins.idx906 = select i1 %m.use.tomb905, i64 %m.tomb617, i64 %m.idx616
  %m.key.slot907 = getelementptr ptr, ptr %m.keys588, i64 %m.ins.idx906
  store ptr %var.load584, ptr %m.key.slot907, align 8
  %m.val.slot908 = getelementptr i64, ptr %m.vals590, i64 %m.ins.idx906
  store i64 1, ptr %m.val.slot908, align 8
  %m.ins.state.slot909 = getelementptr i8, ptr %m.states592, i64 %m.ins.idx906
  store i8 1, ptr %m.ins.state.slot909, align 1
  %m.count910 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %m.count911 = load i64, ptr %m.count910, align 8
  %m.count.next912 = add i64 %m.count911, 1
  %m.count.gep913 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  store i64 %m.count.next912, ptr %m.count.gep913, align 8
  %m.ins.tombs.p914 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 5
  %m.ins.tombs915 = load i64, ptr %m.ins.tombs.p914, align 8
  %m.tomb.dec916 = select i1 %m.use.tomb905, i64 1, i64 0
  %m.ins.tombs.next917 = sub i64 %m.ins.tombs915, %m.tomb.dec916
  store i64 %m.ins.tombs.next917, ptr %m.ins.tombs.p914, align 8
  br label %m.done615

m.re.loop704:                                     ; preds = %m.re.cont706, %m.grow674
  %m.re.i708 = phi i64 [ 0, %m.grow674 ], [ %m.re.i.next811, %m.re.cont706 ]
  %m.re.lt709 = icmp slt i64 %m.re.i708, %m.old.cap677
  br i1 %m.re.lt709, label %m.re.body705, label %m.re.done707

m.re.body705:                                     ; preds = %m.re.loop704
  %m.re.state.gep710 = getelementptr i8, ptr %m.old.states683, i64 %m.re.i708
  %m.re.state711 = load i8, ptr %m.re.state.gep710, align 1
  %m.re.occ712 = icmp eq i8 %m.re.state711, 1
  br i1 %m.re.occ712, label %m.re.ins713, label %m.re.cont706

m.re.cont706:                                     ; preds = %m.done748, %m.re.body705
  %m.re.i.next811 = add i64 %m.re.i708, 1
  br label %m.re.loop704

m.re.done707:                                     ; preds = %m.re.loop704
  %m.cap812 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  %m.cap813 = load i64, ptr %m.cap812, align 8
  %m.keys814 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  %m.keys815 = load ptr, ptr %m.keys814, align 8
  %m.vals816 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 3
  %m.vals817 = load ptr, ptr %m.vals816, align 8
  %m.states818 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 4
  %m.states819 = load ptr, ptr %m.states818, align 8
  %mk.data820 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 1
  %mk.data821 = load ptr, ptr %mk.data820, align 8
  %mk.len822 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 0
  %mk.len823 = load i64, ptr %mk.len822, align 8
  %mk.len824 = and i64 %mk.len823, 281474976710655
  %str.tag825 = lshr i64 %mk.len823, 48
  %str.immortal826 = icmp eq i64 %str.tag825, 0
  br i1 %str.immortal826, label %str_ok828, label %str_gen_check827

m.re.ins713:                                      ; preds = %m.re.body705
  %m.re.key.slot714 = getelementptr ptr, ptr %m.old.keys679, i64 %m.re.i708
  %m.re.val.slot715 = getelementptr i64, ptr %m.old.vals681, i64 %m.re.i708
  %m.re.key716 = load ptr, ptr %m.re.key.slot714, align 8
  %m.re.val717 = load i64, ptr %m.re.val.slot715, align 8
  %m.cap718 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  %m.cap719 = load i64, ptr %m.cap718, align 8
  %m.keys720 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  %m.keys721 = load ptr, ptr %m.keys720, align 8
  %m.vals722 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 3
  %m.vals723 = load ptr, ptr %m.vals722, align 8
  %m.states724 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 4
  %m.states725 = load ptr, ptr %m.states724, align 8
  %mk.data726 = getelementptr inbounds { i64, ptr }, ptr %m.re.key716, i32 0, i32 1
  %mk.data727 = load ptr, ptr %mk.data726, align 8
  %mk.len728 = getelementptr inbounds { i64, ptr }, ptr %m.re.key716, i32 0, i32 0
  %mk.len729 = load i64, ptr %mk.len728, align 8
  %mk.len730 = and i64 %mk.len729, 281474976710655
  %str.tag731 = lshr i64 %mk.len729, 48
  %str.immortal732 = icmp eq i64 %str.tag731, 0
  br i1 %str.immortal732, label %str_ok734, label %str_gen_check733

str_gen_check733:                                 ; preds = %m.re.ins713
  %arena.cur736 = call ptr @dva_arena_current()
  %tag.valid737 = call i1 @dva_arena_validate_tag(ptr %arena.cur736, i64 %str.tag731)
  br i1 %tag.valid737, label %str_ok734, label %str_stale735

str_ok734:                                        ; preds = %str_stale735, %str_gen_check733, %m.re.ins713
  %hash.str738 = call i64 @dva_hash_string(ptr %mk.data727, i64 %mk.len730)
  %m.capm1739 = sub i64 %m.cap719, 1
  %m.idx0740 = and i64 %hash.str738, %m.capm1739
  br label %m.loop741

str_stale735:                                     ; preds = %str_gen_check733
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok734

m.loop741:                                        ; preds = %m.next746, %str_ok734
  %m.idx749 = phi i64 [ %m.idx0740, %str_ok734 ], [ %m.idx.next796, %m.next746 ]
  %m.tomb750 = phi i64 [ -1, %str_ok734 ], [ %m.next.tomb794, %m.next746 ]
  %m.probe751 = phi i64 [ 0, %str_ok734 ], [ %m.probe.next797, %m.next746 ]
  %m.reached.cap752 = icmp eq i64 %m.probe751, %m.cap719
  %m.state.gep753 = getelementptr i8, ptr %m.states725, i64 %m.idx749
  %m.state754 = load i8, ptr %m.state.gep753, align 1
  %m.is.empty755 = icmp eq i8 %m.state754, 0
  %m.stop756 = or i1 %m.is.empty755, %m.reached.cap752
  br i1 %m.stop756, label %m.empty747, label %m.check.tomb742

m.check.tomb742:                                  ; preds = %m.loop741
  %m.is.tomb757 = icmp eq i8 %m.state754, 2
  br i1 %m.is.tomb757, label %m.tomb743, label %m.found744

m.tomb743:                                        ; preds = %m.check.tomb742
  %m.has.tomb758 = icmp ne i64 %m.tomb750, -1
  %m.tomb.sel759 = select i1 %m.has.tomb758, i64 %m.tomb750, i64 %m.idx749
  br label %m.next746

m.found744:                                       ; preds = %m.check.tomb742
  %m.key.slot760 = getelementptr ptr, ptr %m.keys721, i64 %m.idx749
  %mk.stored761 = load ptr, ptr %m.key.slot760, align 8
  %mk.slen762 = getelementptr inbounds { i64, ptr }, ptr %mk.stored761, i32 0, i32 0
  %mk.slen763 = load i64, ptr %mk.slen762, align 8
  %mk.slen764 = and i64 %mk.slen763, 281474976710655
  %str.tag765 = lshr i64 %mk.slen763, 48
  %str.immortal766 = icmp eq i64 %str.tag765, 0
  br i1 %str.immortal766, label %str_ok768, label %str_gen_check767

m.overwrite745:                                   ; preds = %mk.eq.merge785
  %m.val.slot793 = getelementptr i64, ptr %m.vals723, i64 %m.idx749
  store i64 %m.re.val717, ptr %m.val.slot793, align 8
  br label %m.done748

m.next746:                                        ; preds = %mk.eq.merge785, %m.tomb743
  %m.next.tomb794 = phi i64 [ %m.tomb.sel759, %m.tomb743 ], [ %m.tomb750, %mk.eq.merge785 ]
  %m.idx.add795 = add i64 %m.idx749, 1
  %m.idx.next796 = and i64 %m.idx.add795, %m.capm1739
  %m.probe.next797 = add i64 %m.probe751, 1
  br label %m.loop741

m.empty747:                                       ; preds = %m.loop741
  %m.use.tomb798 = icmp ne i64 %m.tomb750, -1
  %m.ins.idx799 = select i1 %m.use.tomb798, i64 %m.tomb750, i64 %m.idx749
  %m.key.slot800 = getelementptr ptr, ptr %m.keys721, i64 %m.ins.idx799
  store ptr %m.re.key716, ptr %m.key.slot800, align 8
  %m.val.slot801 = getelementptr i64, ptr %m.vals723, i64 %m.ins.idx799
  store i64 %m.re.val717, ptr %m.val.slot801, align 8
  %m.ins.state.slot802 = getelementptr i8, ptr %m.states725, i64 %m.ins.idx799
  store i8 1, ptr %m.ins.state.slot802, align 1
  %m.count803 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %m.count804 = load i64, ptr %m.count803, align 8
  %m.count.next805 = add i64 %m.count804, 1
  %m.count.gep806 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  store i64 %m.count.next805, ptr %m.count.gep806, align 8
  %m.ins.tombs.p807 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 5
  %m.ins.tombs808 = load i64, ptr %m.ins.tombs.p807, align 8
  %m.tomb.dec809 = select i1 %m.use.tomb798, i64 1, i64 0
  %m.ins.tombs.next810 = sub i64 %m.ins.tombs808, %m.tomb.dec809
  store i64 %m.ins.tombs.next810, ptr %m.ins.tombs.p807, align 8
  br label %m.done748

m.done748:                                        ; preds = %m.empty747, %m.overwrite745
  br label %m.re.cont706

str_gen_check767:                                 ; preds = %m.found744
  %arena.cur770 = call ptr @dva_arena_current()
  %tag.valid771 = call i1 @dva_arena_validate_tag(ptr %arena.cur770, i64 %str.tag765)
  br i1 %tag.valid771, label %str_ok768, label %str_stale769

str_ok768:                                        ; preds = %str_stale769, %str_gen_check767, %m.found744
  %mk.nlen772 = getelementptr inbounds { i64, ptr }, ptr %m.re.key716, i32 0, i32 0
  %mk.nlen773 = load i64, ptr %mk.nlen772, align 8
  %mk.nlen774 = and i64 %mk.nlen773, 281474976710655
  %str.tag775 = lshr i64 %mk.nlen773, 48
  %str.immortal776 = icmp eq i64 %str.tag775, 0
  br i1 %str.immortal776, label %str_ok778, label %str_gen_check777

str_stale769:                                     ; preds = %str_gen_check767
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok768

str_gen_check777:                                 ; preds = %str_ok768
  %arena.cur780 = call ptr @dva_arena_current()
  %tag.valid781 = call i1 @dva_arena_validate_tag(ptr %arena.cur780, i64 %str.tag775)
  br i1 %tag.valid781, label %str_ok778, label %str_stale779

str_ok778:                                        ; preds = %str_stale779, %str_gen_check777, %str_ok768
  %mk.lenseq782 = icmp eq i64 %mk.slen764, %mk.nlen774
  br i1 %mk.lenseq782, label %mk.eq.then783, label %mk.eq.else784

str_stale779:                                     ; preds = %str_gen_check777
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok778

mk.eq.then783:                                    ; preds = %str_ok778
  %mk.sdata786 = getelementptr inbounds { i64, ptr }, ptr %mk.stored761, i32 0, i32 1
  %mk.sdata787 = load ptr, ptr %mk.sdata786, align 8
  %mk.ndata788 = getelementptr inbounds { i64, ptr }, ptr %m.re.key716, i32 0, i32 1
  %mk.ndata789 = load ptr, ptr %mk.ndata788, align 8
  %mk.memcmp790 = call i32 @memcmp(ptr %mk.sdata787, ptr %mk.ndata789, i64 %mk.nlen774)
  %mk.cmpeq791 = icmp eq i32 %mk.memcmp790, 0
  br label %mk.eq.merge785

mk.eq.else784:                                    ; preds = %str_ok778
  br label %mk.eq.merge785

mk.eq.merge785:                                   ; preds = %mk.eq.else784, %mk.eq.then783
  %mk.eq792 = phi i1 [ %mk.cmpeq791, %mk.eq.then783 ], [ false, %mk.eq.else784 ]
  br i1 %mk.eq792, label %m.overwrite745, label %m.next746

str_gen_check827:                                 ; preds = %m.re.done707
  %arena.cur830 = call ptr @dva_arena_current()
  %tag.valid831 = call i1 @dva_arena_validate_tag(ptr %arena.cur830, i64 %str.tag825)
  br i1 %tag.valid831, label %str_ok828, label %str_stale829

str_ok828:                                        ; preds = %str_stale829, %str_gen_check827, %m.re.done707
  %hash.str832 = call i64 @dva_hash_string(ptr %mk.data821, i64 %mk.len824)
  %m.capm1833 = sub i64 %m.cap813, 1
  %m.idx0834 = and i64 %hash.str832, %m.capm1833
  br label %m.loop835

str_stale829:                                     ; preds = %str_gen_check827
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok828

m.loop835:                                        ; preds = %m.next840, %str_ok828
  %m.idx843 = phi i64 [ %m.idx0834, %str_ok828 ], [ %m.idx.next890, %m.next840 ]
  %m.tomb844 = phi i64 [ -1, %str_ok828 ], [ %m.next.tomb888, %m.next840 ]
  %m.probe845 = phi i64 [ 0, %str_ok828 ], [ %m.probe.next891, %m.next840 ]
  %m.reached.cap846 = icmp eq i64 %m.probe845, %m.cap813
  %m.state.gep847 = getelementptr i8, ptr %m.states819, i64 %m.idx843
  %m.state848 = load i8, ptr %m.state.gep847, align 1
  %m.is.empty849 = icmp eq i8 %m.state848, 0
  %m.stop850 = or i1 %m.is.empty849, %m.reached.cap846
  br i1 %m.stop850, label %m.empty841, label %m.check.tomb836

m.check.tomb836:                                  ; preds = %m.loop835
  %m.is.tomb851 = icmp eq i8 %m.state848, 2
  br i1 %m.is.tomb851, label %m.tomb837, label %m.found838

m.tomb837:                                        ; preds = %m.check.tomb836
  %m.has.tomb852 = icmp ne i64 %m.tomb844, -1
  %m.tomb.sel853 = select i1 %m.has.tomb852, i64 %m.tomb844, i64 %m.idx843
  br label %m.next840

m.found838:                                       ; preds = %m.check.tomb836
  %m.key.slot854 = getelementptr ptr, ptr %m.keys815, i64 %m.idx843
  %mk.stored855 = load ptr, ptr %m.key.slot854, align 8
  %mk.slen856 = getelementptr inbounds { i64, ptr }, ptr %mk.stored855, i32 0, i32 0
  %mk.slen857 = load i64, ptr %mk.slen856, align 8
  %mk.slen858 = and i64 %mk.slen857, 281474976710655
  %str.tag859 = lshr i64 %mk.slen857, 48
  %str.immortal860 = icmp eq i64 %str.tag859, 0
  br i1 %str.immortal860, label %str_ok862, label %str_gen_check861

m.overwrite839:                                   ; preds = %mk.eq.merge879
  %m.val.slot887 = getelementptr i64, ptr %m.vals817, i64 %m.idx843
  store i64 1, ptr %m.val.slot887, align 8
  br label %m.done842

m.next840:                                        ; preds = %mk.eq.merge879, %m.tomb837
  %m.next.tomb888 = phi i64 [ %m.tomb.sel853, %m.tomb837 ], [ %m.tomb844, %mk.eq.merge879 ]
  %m.idx.add889 = add i64 %m.idx843, 1
  %m.idx.next890 = and i64 %m.idx.add889, %m.capm1833
  %m.probe.next891 = add i64 %m.probe845, 1
  br label %m.loop835

m.empty841:                                       ; preds = %m.loop835
  %m.use.tomb892 = icmp ne i64 %m.tomb844, -1
  %m.ins.idx893 = select i1 %m.use.tomb892, i64 %m.tomb844, i64 %m.idx843
  %m.key.slot894 = getelementptr ptr, ptr %m.keys815, i64 %m.ins.idx893
  store ptr %var.load584, ptr %m.key.slot894, align 8
  %m.val.slot895 = getelementptr i64, ptr %m.vals817, i64 %m.ins.idx893
  store i64 1, ptr %m.val.slot895, align 8
  %m.ins.state.slot896 = getelementptr i8, ptr %m.states819, i64 %m.ins.idx893
  store i8 1, ptr %m.ins.state.slot896, align 1
  %m.count897 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %m.count898 = load i64, ptr %m.count897, align 8
  %m.count.next899 = add i64 %m.count898, 1
  %m.count.gep900 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  store i64 %m.count.next899, ptr %m.count.gep900, align 8
  %m.ins.tombs.p901 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load583, i32 0, i32 5
  %m.ins.tombs902 = load i64, ptr %m.ins.tombs.p901, align 8
  %m.tomb.dec903 = select i1 %m.use.tomb892, i64 1, i64 0
  %m.ins.tombs.next904 = sub i64 %m.ins.tombs902, %m.tomb.dec903
  store i64 %m.ins.tombs.next904, ptr %m.ins.tombs.p901, align 8
  br label %m.done842

m.done842:                                        ; preds = %m.empty841, %m.overwrite839
  br label %m.done615

str_gen_check861:                                 ; preds = %m.found838
  %arena.cur864 = call ptr @dva_arena_current()
  %tag.valid865 = call i1 @dva_arena_validate_tag(ptr %arena.cur864, i64 %str.tag859)
  br i1 %tag.valid865, label %str_ok862, label %str_stale863

str_ok862:                                        ; preds = %str_stale863, %str_gen_check861, %m.found838
  %mk.nlen866 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 0
  %mk.nlen867 = load i64, ptr %mk.nlen866, align 8
  %mk.nlen868 = and i64 %mk.nlen867, 281474976710655
  %str.tag869 = lshr i64 %mk.nlen867, 48
  %str.immortal870 = icmp eq i64 %str.tag869, 0
  br i1 %str.immortal870, label %str_ok872, label %str_gen_check871

str_stale863:                                     ; preds = %str_gen_check861
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok862

str_gen_check871:                                 ; preds = %str_ok862
  %arena.cur874 = call ptr @dva_arena_current()
  %tag.valid875 = call i1 @dva_arena_validate_tag(ptr %arena.cur874, i64 %str.tag869)
  br i1 %tag.valid875, label %str_ok872, label %str_stale873

str_ok872:                                        ; preds = %str_stale873, %str_gen_check871, %str_ok862
  %mk.lenseq876 = icmp eq i64 %mk.slen858, %mk.nlen868
  br i1 %mk.lenseq876, label %mk.eq.then877, label %mk.eq.else878

str_stale873:                                     ; preds = %str_gen_check871
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok872

mk.eq.then877:                                    ; preds = %str_ok872
  %mk.sdata880 = getelementptr inbounds { i64, ptr }, ptr %mk.stored855, i32 0, i32 1
  %mk.sdata881 = load ptr, ptr %mk.sdata880, align 8
  %mk.ndata882 = getelementptr inbounds { i64, ptr }, ptr %var.load584, i32 0, i32 1
  %mk.ndata883 = load ptr, ptr %mk.ndata882, align 8
  %mk.memcmp884 = call i32 @memcmp(ptr %mk.sdata881, ptr %mk.ndata883, i64 %mk.nlen868)
  %mk.cmpeq885 = icmp eq i32 %mk.memcmp884, 0
  br label %mk.eq.merge879

mk.eq.else878:                                    ; preds = %str_ok872
  br label %mk.eq.merge879

mk.eq.merge879:                                   ; preds = %mk.eq.else878, %mk.eq.then877
  %mk.eq886 = phi i1 [ %mk.cmpeq885, %mk.eq.then877 ], [ false, %mk.eq.else878 ]
  br i1 %mk.eq886, label %m.overwrite839, label %m.next840

a.create923:                                      ; preds = %loop.exit.21
  %arena.cur925 = call ptr @dva_arena_current()
  %a.create926 = call ptr @dva_arena_alloc(ptr %arena.cur925, i64 24)
  %arena.cur927 = call ptr @dva_arena_current()
  %a.buf928 = call ptr @dva_arena_alloc(ptr %arena.cur927, i64 128)
  %a.len.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create926, i32 0, i32 0
  store i64 0, ptr %a.len.gep929, align 8
  %a.data.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create926, i32 0, i32 1
  store ptr %a.buf928, ptr %a.data.gep930, align 8
  %a.cap.gep931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create926, i32 0, i32 2
  store i64 16, ptr %a.cap.gep931, align 8
  store ptr %a.create926, ptr %var.stmts, align 8
  br label %a.after924

a.after924:                                       ; preds = %a.create923, %loop.exit.21
  %a.load2932 = load ptr, ptr %var.stmts, align 8
  %a.len.query933 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2932, i32 0, i32 0
  %a.len.query934 = load i64, ptr %a.len.query933, align 8
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %a.after924
  %counter.load935 = load i64, ptr %loop.idx.26, align 8
  %loop.cond936 = icmp slt i64 %counter.load935, %a.len.query934
  br i1 %loop.cond936, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i937 = sub i64 %counter.load935, 0
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i937, ptr %var._i938, align 8
  store i64 %counter.load935, ptr %var._939, align 8
  store i64 %counter.load935, ptr %var.j, align 8
  %var.load940 = load ptr, ptr %var.stmts, align 8
  %a.load941 = load ptr, ptr %var.stmts, align 8
  %a.null942 = icmp eq ptr %a.load941, null
  br i1 %a.null942, label %a.create943, label %a.after944

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit1013
  %step.val1739 = load i64, ptr %loop.step.26, align 8
  %loop.next1740 = add i64 %counter.load935, %step.val1739
  store i64 %loop.next1740, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  %var.load1741 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1741

a.create943:                                      ; preds = %loop.body.26
  %arena.cur945 = call ptr @dva_arena_current()
  %a.create946 = call ptr @dva_arena_alloc(ptr %arena.cur945, i64 24)
  %arena.cur947 = call ptr @dva_arena_current()
  %a.buf948 = call ptr @dva_arena_alloc(ptr %arena.cur947, i64 128)
  %a.len.gep949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create946, i32 0, i32 0
  store i64 0, ptr %a.len.gep949, align 8
  %a.data.gep950 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create946, i32 0, i32 1
  store ptr %a.buf948, ptr %a.data.gep950, align 8
  %a.cap.gep951 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create946, i32 0, i32 2
  store i64 16, ptr %a.cap.gep951, align 8
  store ptr %a.create946, ptr %var.stmts, align 8
  br label %a.after944

a.after944:                                       ; preds = %a.create943, %loop.body.26
  %a.load2952 = load ptr, ptr %var.stmts, align 8
  %var.load953 = load i64, ptr %var.j, align 8
  %a.rd.nonnull954 = icmp ne ptr %a.load2952, null
  br i1 %a.rd.nonnull954, label %a.rd.check955, label %a.rd.err.null957

a.rd.check955:                                    ; preds = %a.after944
  %a.rd.len960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2952, i32 0, i32 0
  %a.rd.len961 = load i64, ptr %a.rd.len960, align 8
  %a.rd.ge0962 = icmp sge i64 %var.load953, 0
  %a.rd.lt963 = icmp slt i64 %var.load953, %a.rd.len961
  %a.rd.bounds964 = and i1 %a.rd.ge0962, %a.rd.lt963
  br i1 %a.rd.bounds964, label %a.rd.ok956, label %a.rd.err.oob958

a.rd.ok956:                                       ; preds = %a.rd.check955
  %a.rd.data965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2952, i32 0, i32 1
  %a.rd.data966 = load ptr, ptr %a.rd.data965, align 8
  %a.rd.elem.gep967 = getelementptr i64, ptr %a.rd.data966, i64 %var.load953
  %a.rd.elem968 = load i64, ptr %a.rd.elem.gep967, align 8
  br label %a.rd.done959

a.rd.err.null957:                                 ; preds = %a.after944
  %arena.cur969 = call ptr @dva_arena_current()
  %err.alloc970 = call ptr @dva_arena_alloc(ptr %arena.cur969, i64 56)
  %err.code.gep971 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 0
  store i64 4011, ptr %err.code.gep971, align 8
  %err.msg.gep972 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep972, align 8
  %err.file.gep973 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep973, align 8
  %err.line.gep974 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 3
  store i64 229, ptr %err.line.gep974, align 8
  %err.col.gep975 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 4
  store i64 22, ptr %err.col.gep975, align 8
  %err.ctx.gep976 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc970, i32 0, i32 5
  %err.ctx0.gep977 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep976, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep977, align 8
  %err.ctx1.gep978 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep976, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep978, align 8
  %err.p2i979 = ptrtoint ptr %err.alloc970 to i64
  br label %a.rd.done959

a.rd.err.oob958:                                  ; preds = %a.rd.check955
  %arena.cur980 = call ptr @dva_arena_current()
  %err.alloc981 = call ptr @dva_arena_alloc(ptr %arena.cur980, i64 56)
  %err.code.gep982 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 0
  store i64 4011, ptr %err.code.gep982, align 8
  %err.msg.gep983 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep983, align 8
  %err.file.gep984 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep984, align 8
  %err.line.gep985 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 3
  store i64 229, ptr %err.line.gep985, align 8
  %err.col.gep986 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 4
  store i64 22, ptr %err.col.gep986, align 8
  %err.ctx.gep987 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc981, i32 0, i32 5
  %err.ctx0.gep988 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep987, i32 0, i32 0
  store i64 %var.load953, ptr %err.ctx0.gep988, align 8
  %err.ctx1.gep989 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep987, i32 0, i32 1
  store i64 %a.rd.len961, ptr %err.ctx1.gep989, align 8
  %err.p2i990 = ptrtoint ptr %err.alloc981 to i64
  br label %a.rd.done959

a.rd.done959:                                     ; preds = %a.rd.err.oob958, %a.rd.err.null957, %a.rd.ok956
  %a.rd.tag991 = phi i1 [ true, %a.rd.ok956 ], [ false, %a.rd.err.null957 ], [ false, %a.rd.err.oob958 ]
  %a.rd.pay992 = phi i64 [ %a.rd.elem968, %a.rd.ok956 ], [ %err.p2i979, %a.rd.err.null957 ], [ %err.p2i990, %a.rd.err.oob958 ]
  %ram.tag993 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag991, 0
  %ram.pay994 = insertvalue { i1, i64 } %ram.tag993, i64 %a.rd.pay992, 1
  %ram.tag995 = extractvalue { i1, i64 } %ram.pay994, 0
  br i1 %ram.tag995, label %choice.then996, label %choice.else997

choice.then996:                                   ; preds = %a.rd.done959
  %ram.pay999 = extractvalue { i1, i64 } %ram.pay994, 1
  %pay.ptr1000 = inttoptr i64 %ram.pay999 to ptr
  store ptr %pay.ptr1000, ptr %var._1001, align 8
  br label %choice.exit998

choice.else997:                                   ; preds = %a.rd.done959
  %ram.pay1002 = extractvalue { i1, i64 } %ram.pay994, 1
  %pay.ptr1003 = inttoptr i64 %ram.pay1002 to ptr
  store ptr %pay.ptr1003, ptr %var._1004, align 8
  %arena.cur1005 = call ptr @dva_arena_current()
  %enum.alloc1006 = call ptr @dva_arena_alloc(ptr %arena.cur1005, i64 16)
  %tag.gep1007 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1006, i32 0, i32 0
  store i64 0, ptr %tag.gep1007, align 8
  %pay.gep1008 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1006, i32 0, i32 1
  %arena.cur1009 = call ptr @dva_arena_current()
  %enum.pay.alloc1010 = call ptr @dva_arena_alloc(ptr %arena.cur1009, i64 8)
  store i64 0, ptr %enum.pay.alloc1010, align 8
  store ptr %enum.pay.alloc1010, ptr %pay.gep1008, align 8
  br label %choice.exit998

choice.exit998:                                   ; preds = %choice.else997, %choice.then996
  %choice.res1011 = phi ptr [ %pay.ptr1000, %choice.then996 ], [ %enum.alloc1006, %choice.else997 ]
  store ptr %choice.res1011, ptr %var.st2, align 8
  %var.load1012 = load ptr, ptr %var.st2, align 8
  %tag.gep1016 = getelementptr inbounds { i64, ptr }, ptr %var.load1012, i32 0, i32 0
  %tag.id1017 = load i64, ptr %tag.gep1016, align 8
  %tag.match1018 = icmp eq i64 %tag.id1017, 6
  br i1 %tag.match1018, label %choice.case1014, label %choice.next1015

choice.exit1013:                                  ; preds = %choice.next1015, %choice.exit1148
  br label %loop.latch.26

choice.case1014:                                  ; preds = %choice.exit998
  %pay.gep1019 = getelementptr inbounds { i64, ptr }, ptr %var.load1012, i32 0, i32 1
  %payload.ptr1020 = load ptr, ptr %pay.gep1019, align 8
  store ptr %payload.ptr1020, ptr %var._1021, align 8
  store ptr %payload.ptr1020, ptr %var.a2, align 8
  %var.load1022 = load ptr, ptr %var.a2, align 8
  %call.res1023 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load1022)
  store i1 %call.res1023, ptr %var.is_fwd2, align 1
  %var.load1024 = load ptr, ptr %var.gen_names, align 8
  %var.load1025 = load ptr, ptr %var.a2, align 8
  %fld.gep1026 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1025, i32 0, i32 0
  %fld.load1027 = load ptr, ptr %fld.gep1026, align 8
  %m.cap1028 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1024, i32 0, i32 1
  %m.cap1029 = load i64, ptr %m.cap1028, align 8
  %m.keys1030 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1024, i32 0, i32 2
  %m.keys1031 = load ptr, ptr %m.keys1030, align 8
  %m.states1032 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1024, i32 0, i32 4
  %m.states1033 = load ptr, ptr %m.states1032, align 8
  %mk.data1034 = getelementptr inbounds { i64, ptr }, ptr %fld.load1027, i32 0, i32 1
  %mk.data1035 = load ptr, ptr %mk.data1034, align 8
  %mk.len1036 = getelementptr inbounds { i64, ptr }, ptr %fld.load1027, i32 0, i32 0
  %mk.len1037 = load i64, ptr %mk.len1036, align 8
  %mk.len1038 = and i64 %mk.len1037, 281474976710655
  %str.tag1039 = lshr i64 %mk.len1037, 48
  %str.immortal1040 = icmp eq i64 %str.tag1039, 0
  br i1 %str.immortal1040, label %str_ok1042, label %str_gen_check1041

choice.next1015:                                  ; preds = %choice.exit998
  br label %choice.exit1013

str_gen_check1041:                                ; preds = %choice.case1014
  %arena.cur1044 = call ptr @dva_arena_current()
  %tag.valid1045 = call i1 @dva_arena_validate_tag(ptr %arena.cur1044, i64 %str.tag1039)
  br i1 %tag.valid1045, label %str_ok1042, label %str_stale1043

str_ok1042:                                       ; preds = %str_stale1043, %str_gen_check1041, %choice.case1014
  %hash.str1046 = call i64 @dva_hash_string(ptr %mk.data1035, i64 %mk.len1038)
  %m.capm11047 = sub i64 %m.cap1029, 1
  %m.idx01048 = and i64 %hash.str1046, %m.capm11047
  br label %m.mem.loop1049

str_stale1043:                                    ; preds = %str_gen_check1041
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1042

m.mem.loop1049:                                   ; preds = %m.mem.next1052, %str_ok1042
  %m.mem.idx1055 = phi i64 [ %m.idx01048, %str_ok1042 ], [ %m.mem.idx.next1098, %m.mem.next1052 ]
  %m.mem.probe1056 = phi i64 [ 0, %str_ok1042 ], [ %m.mem.probe.next1099, %m.mem.next1052 ]
  %m.mem.reached1057 = icmp eq i64 %m.mem.probe1056, %m.cap1029
  %m.mem.state.gep1058 = getelementptr i8, ptr %m.states1033, i64 %m.mem.idx1055
  %m.mem.state1059 = load i8, ptr %m.mem.state.gep1058, align 1
  %m.mem.is.empty1060 = icmp eq i8 %m.mem.state1059, 0
  %m.mem.stop1061 = or i1 %m.mem.is.empty1060, %m.mem.reached1057
  br i1 %m.mem.stop1061, label %m.mem.miss1053, label %m.mem.probe1050

m.mem.probe1050:                                  ; preds = %m.mem.loop1049
  %m.mem.is.tomb1062 = icmp eq i8 %m.mem.state1059, 2
  br i1 %m.mem.is.tomb1062, label %m.mem.next1052, label %m.mem.found1051

m.mem.found1051:                                  ; preds = %m.mem.probe1050
  %m.mem.key.slot1063 = getelementptr ptr, ptr %m.keys1031, i64 %m.mem.idx1055
  %mk.stored1064 = load ptr, ptr %m.mem.key.slot1063, align 8
  %mk.slen1065 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1064, i32 0, i32 0
  %mk.slen1066 = load i64, ptr %mk.slen1065, align 8
  %mk.slen1067 = and i64 %mk.slen1066, 281474976710655
  %str.tag1068 = lshr i64 %mk.slen1066, 48
  %str.immortal1069 = icmp eq i64 %str.tag1068, 0
  br i1 %str.immortal1069, label %str_ok1071, label %str_gen_check1070

m.mem.next1052:                                   ; preds = %mk.eq.merge1088, %m.mem.probe1050
  %m.mem.idx.add1097 = add i64 %m.mem.idx1055, 1
  %m.mem.idx.next1098 = and i64 %m.mem.idx.add1097, %m.capm11047
  %m.mem.probe.next1099 = add i64 %m.mem.probe1056, 1
  br label %m.mem.loop1049

m.mem.miss1053:                                   ; preds = %m.mem.loop1049
  br label %m.mem.done1054

m.mem.done1054:                                   ; preds = %m.mem.miss1053, %m.mem.hit1096
  %m.mem.res1100 = phi i1 [ true, %m.mem.hit1096 ], [ false, %m.mem.miss1053 ]
  store i1 %m.mem.res1100, ptr %var.is_gen2, align 1
  %var.load1101 = load ptr, ptr %var.a2, align 8
  %fld.gep1102 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1101, i32 0, i32 0
  %fld.load1103 = load ptr, ptr %fld.gep1102, align 8
  store ptr %fld.load1103, ptr %var.name2, align 8
  %var.load1104 = load i1, ptr %var.is_fwd2, align 1
  %nottmp1105 = xor i1 %var.load1104, true
  br i1 %nottmp1105, label %and.27.then, label %and.27.else

str_gen_check1070:                                ; preds = %m.mem.found1051
  %arena.cur1073 = call ptr @dva_arena_current()
  %tag.valid1074 = call i1 @dva_arena_validate_tag(ptr %arena.cur1073, i64 %str.tag1068)
  br i1 %tag.valid1074, label %str_ok1071, label %str_stale1072

str_ok1071:                                       ; preds = %str_stale1072, %str_gen_check1070, %m.mem.found1051
  %mk.nlen1075 = getelementptr inbounds { i64, ptr }, ptr %fld.load1027, i32 0, i32 0
  %mk.nlen1076 = load i64, ptr %mk.nlen1075, align 8
  %mk.nlen1077 = and i64 %mk.nlen1076, 281474976710655
  %str.tag1078 = lshr i64 %mk.nlen1076, 48
  %str.immortal1079 = icmp eq i64 %str.tag1078, 0
  br i1 %str.immortal1079, label %str_ok1081, label %str_gen_check1080

str_stale1072:                                    ; preds = %str_gen_check1070
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1071

str_gen_check1080:                                ; preds = %str_ok1071
  %arena.cur1083 = call ptr @dva_arena_current()
  %tag.valid1084 = call i1 @dva_arena_validate_tag(ptr %arena.cur1083, i64 %str.tag1078)
  br i1 %tag.valid1084, label %str_ok1081, label %str_stale1082

str_ok1081:                                       ; preds = %str_stale1082, %str_gen_check1080, %str_ok1071
  %mk.lenseq1085 = icmp eq i64 %mk.slen1067, %mk.nlen1077
  br i1 %mk.lenseq1085, label %mk.eq.then1086, label %mk.eq.else1087

str_stale1082:                                    ; preds = %str_gen_check1080
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1081

mk.eq.then1086:                                   ; preds = %str_ok1081
  %mk.sdata1089 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1064, i32 0, i32 1
  %mk.sdata1090 = load ptr, ptr %mk.sdata1089, align 8
  %mk.ndata1091 = getelementptr inbounds { i64, ptr }, ptr %fld.load1027, i32 0, i32 1
  %mk.ndata1092 = load ptr, ptr %mk.ndata1091, align 8
  %mk.memcmp1093 = call i32 @memcmp(ptr %mk.sdata1090, ptr %mk.ndata1092, i64 %mk.nlen1077)
  %mk.cmpeq1094 = icmp eq i32 %mk.memcmp1093, 0
  br label %mk.eq.merge1088

mk.eq.else1087:                                   ; preds = %str_ok1081
  br label %mk.eq.merge1088

mk.eq.merge1088:                                  ; preds = %mk.eq.else1087, %mk.eq.then1086
  %mk.eq1095 = phi i1 [ %mk.cmpeq1094, %mk.eq.then1086 ], [ false, %mk.eq.else1087 ]
  br i1 %mk.eq1095, label %m.mem.hit1096, label %m.mem.next1052

m.mem.hit1096:                                    ; preds = %mk.eq.merge1088
  br label %m.mem.done1054

and.27.then:                                      ; preds = %m.mem.done1054
  %var.load1106 = load i1, ptr %var.is_gen2, align 1
  %nottmp1107 = xor i1 %var.load1106, true
  br label %and.27.exit

and.27.else:                                      ; preds = %m.mem.done1054
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp1107, %and.27.then ], [ %nottmp1105, %and.27.else ]
  br i1 %and.27.phi, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %and.27.exit
  %var.load1108 = load ptr, ptr %var.a2, align 8
  %fld.gep1109 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1108, i32 0, i32 2
  %fld.load1110 = load i1, ptr %fld.gep1109, align 1
  %nottmp1111 = xor i1 %fld.load1110, true
  br label %and.28.exit

and.28.else:                                      ; preds = %and.27.exit
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp1111, %and.28.then ], [ %and.27.phi, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load1112 = load ptr, ptr %var.a2, align 8
  %fld.gep1113 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1112, i32 0, i32 4
  %fld.load1114 = load i1, ptr %fld.gep1113, align 1
  %nottmp1115 = xor i1 %fld.load1114, true
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp1115, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load1116 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len1117 = getelementptr inbounds { i64, ptr }, ptr %var.load1116, i32 0, i32 0
  %eq.lhs.len1118 = load i64, ptr %eq.lhs.len1117, align 8
  %eq.lhs.len1119 = and i64 %eq.lhs.len1118, 281474976710655
  %str.tag1120 = lshr i64 %eq.lhs.len1118, 48
  %str.immortal1121 = icmp eq i64 %str.tag1120, 0
  br i1 %str.immortal1121, label %str_ok1123, label %str_gen_check1122

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %str.eq.merge1139
  %and.30.phi = phi i1 [ %str.neq1146, %str.eq.merge1139 ], [ %and.29.phi, %and.30.else ]
  br i1 %and.30.phi, label %choice.then1147, label %choice.exit1148

str_gen_check1122:                                ; preds = %and.30.then
  %arena.cur1125 = call ptr @dva_arena_current()
  %tag.valid1126 = call i1 @dva_arena_validate_tag(ptr %arena.cur1125, i64 %str.tag1120)
  br i1 %tag.valid1126, label %str_ok1123, label %str_stale1124

str_ok1123:                                       ; preds = %str_stale1124, %str_gen_check1122, %and.30.then
  %eq.rhs.len1127 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1128 = and i64 %eq.rhs.len1127, 281474976710655
  %str.tag1129 = lshr i64 %eq.rhs.len1127, 48
  %str.immortal1130 = icmp eq i64 %str.tag1129, 0
  br i1 %str.immortal1130, label %str_ok1132, label %str_gen_check1131

str_stale1124:                                    ; preds = %str_gen_check1122
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1123

str_gen_check1131:                                ; preds = %str_ok1123
  %arena.cur1134 = call ptr @dva_arena_current()
  %tag.valid1135 = call i1 @dva_arena_validate_tag(ptr %arena.cur1134, i64 %str.tag1129)
  br i1 %tag.valid1135, label %str_ok1132, label %str_stale1133

str_ok1132:                                       ; preds = %str_stale1133, %str_gen_check1131, %str_ok1123
  %eq.len1136 = icmp eq i64 %eq.lhs.len1119, %eq.rhs.len1128
  br i1 %eq.len1136, label %str.eq.then1137, label %str.eq.else1138

str_stale1133:                                    ; preds = %str_gen_check1131
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1132

str.eq.then1137:                                  ; preds = %str_ok1132
  %eq.lhs.data1140 = getelementptr inbounds { i64, ptr }, ptr %var.load1116, i32 0, i32 1
  %eq.lhs.data1141 = load ptr, ptr %eq.lhs.data1140, align 8
  %eq.rhs.data1142 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1143 = call i32 @memcmp(ptr %eq.lhs.data1141, ptr %eq.rhs.data1142, i64 %eq.lhs.len1119)
  %eq.cmp.zero1144 = icmp eq i32 %eq.memcmp1143, 0
  br label %str.eq.merge1139

str.eq.else1138:                                  ; preds = %str_ok1132
  br label %str.eq.merge1139

str.eq.merge1139:                                 ; preds = %str.eq.else1138, %str.eq.then1137
  %str.eq.result1145 = phi i1 [ %eq.cmp.zero1144, %str.eq.then1137 ], [ false, %str.eq.else1138 ]
  %str.neq1146 = xor i1 %str.eq.result1145, true
  br label %and.30.exit

choice.then1147:                                  ; preds = %and.30.exit
  %arena.cur1149 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1149, i64 24)
  %arena.cur1150 = call ptr @dva_arena_current()
  %a.buf1151 = call ptr @dva_arena_alloc(ptr %arena.cur1150, i64 128)
  %a.len.gep1152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1152, align 8
  %a.data.gep1153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1151, ptr %a.data.gep1153, align 8
  %a.cap.gep1154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1154, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load1155 = load ptr, ptr %var.a2, align 8
  %fld.gep1156 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1155, i32 0, i32 5
  %fld.load1157 = load ptr, ptr %fld.gep1156, align 8
  %arena.cur1158 = call ptr @dva_arena_current()
  %a.new1159 = call ptr @dva_arena_alloc(ptr %arena.cur1158, i64 24)
  %arena.cur1160 = call ptr @dva_arena_current()
  %a.buf1161 = call ptr @dva_arena_alloc(ptr %arena.cur1160, i64 128)
  %a.len.gep1162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1159, i32 0, i32 0
  store i64 0, ptr %a.len.gep1162, align 8
  %a.data.gep1163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1159, i32 0, i32 1
  store ptr %a.buf1161, ptr %a.data.gep1163, align 8
  %a.cap.gep1164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1159, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1164, align 8
  %var.load1165 = load ptr, ptr %var.raw_refs, align 8
  %a.load1166 = load ptr, ptr %var.raw_refs, align 8
  %a.null1167 = icmp eq ptr %a.load1166, null
  br i1 %a.null1167, label %a.create1168, label %a.after1169

choice.exit1148:                                  ; preds = %a.store1725, %and.30.exit
  br label %choice.exit1013

a.create1168:                                     ; preds = %choice.then1147
  %arena.cur1170 = call ptr @dva_arena_current()
  %a.create1171 = call ptr @dva_arena_alloc(ptr %arena.cur1170, i64 24)
  %arena.cur1172 = call ptr @dva_arena_current()
  %a.buf1173 = call ptr @dva_arena_alloc(ptr %arena.cur1172, i64 128)
  %a.len.gep1174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1171, i32 0, i32 0
  store i64 0, ptr %a.len.gep1174, align 8
  %a.data.gep1175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1171, i32 0, i32 1
  store ptr %a.buf1173, ptr %a.data.gep1175, align 8
  %a.cap.gep1176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1176, align 8
  store ptr %a.create1171, ptr %var.raw_refs, align 8
  br label %a.after1169

a.after1169:                                      ; preds = %a.create1168, %choice.then1147
  %a.load21177 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1157, ptr %a.new1159, ptr %a.load21177)
  %arena.cur1178 = call ptr @dva_arena_current()
  %a.new1179 = call ptr @dva_arena_alloc(ptr %arena.cur1178, i64 24)
  %arena.cur1180 = call ptr @dva_arena_current()
  %a.buf1181 = call ptr @dva_arena_alloc(ptr %arena.cur1180, i64 128)
  %a.len.gep1182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1179, i32 0, i32 0
  store i64 0, ptr %a.len.gep1182, align 8
  %a.data.gep1183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1179, i32 0, i32 1
  store ptr %a.buf1181, ptr %a.data.gep1183, align 8
  %a.cap.gep1184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1179, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1184, align 8
  store ptr %a.new1179, ptr %var.filtered_deps, align 8
  %var.load1185 = load ptr, ptr %var.name2, align 8
  %call.res1186 = call ptr @"dep_graph::decl_module"(ptr %var.load1185, i64 0)
  store ptr %call.res1186, ptr %var.mod2, align 8
  %var.load1187 = load ptr, ptr %var.raw_refs, align 8
  %a.load1188 = load ptr, ptr %var.raw_refs, align 8
  %a.null1189 = icmp eq ptr %a.load1188, null
  br i1 %a.null1189, label %a.create1190, label %a.after1191

a.create1190:                                     ; preds = %a.after1169
  %arena.cur1192 = call ptr @dva_arena_current()
  %a.create1193 = call ptr @dva_arena_alloc(ptr %arena.cur1192, i64 24)
  %arena.cur1194 = call ptr @dva_arena_current()
  %a.buf1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 128)
  %a.len.gep1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1193, i32 0, i32 0
  store i64 0, ptr %a.len.gep1196, align 8
  %a.data.gep1197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1193, i32 0, i32 1
  store ptr %a.buf1195, ptr %a.data.gep1197, align 8
  %a.cap.gep1198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1193, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1198, align 8
  store ptr %a.create1193, ptr %var.raw_refs, align 8
  br label %a.after1191

a.after1191:                                      ; preds = %a.create1190, %a.after1169
  %a.load21199 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21199, i32 0, i32 0
  %arr.cycle.len1200 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21199, i32 0, i32 1
  %arr.cycle.data1201 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.31, align 8
  %cycle.prev.u = load ptr, ptr %var._1021, align 8
  %cycle.prev.i = load i64, ptr %var._i938, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after1191
  %counter.load1202 = load i64, ptr %loop.idx.31, align 8
  %loop.cond1203 = icmp slt i64 %counter.load1202, %arr.cycle.len1200
  br i1 %loop.cond1203, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i1204 = sub i64 %counter.load1202, 0
  store i64 1, ptr %loop.step.31, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data1201, i64 %counter.load1202
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i1204, ptr %var._i1205, align 8
  store ptr %slot.i2p, ptr %var._1206, align 8
  store ptr %slot.i2p, ptr %var.ref_name, align 8
  %var.load1207 = load ptr, ptr %var.def_names, align 8
  %var.load1208 = load ptr, ptr %var.mod2, align 8
  %var.load1209 = load ptr, ptr %var.ref_name, align 8
  %call.res1210 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load1207, ptr %var.load1208, ptr %var.load1209)
  store ptr %call.res1210, ptr %var.target_ref, align 8
  %var.load1211 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len1212 = getelementptr inbounds { i64, ptr }, ptr %var.load1211, i32 0, i32 0
  %eq.lhs.len1213 = load i64, ptr %eq.lhs.len1212, align 8
  %eq.lhs.len1214 = and i64 %eq.lhs.len1213, 281474976710655
  %str.tag1215 = lshr i64 %eq.lhs.len1213, 48
  %str.immortal1216 = icmp eq i64 %str.tag1215, 0
  br i1 %str.immortal1216, label %str_ok1218, label %str_gen_check1217

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit1259
  %step.val1277 = load i64, ptr %loop.step.31, align 8
  %loop.next1278 = add i64 %counter.load1202, %step.val1277
  store i64 %loop.next1278, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  store ptr %cycle.prev.u, ptr %var._1021, align 8
  store i64 %cycle.prev.i, ptr %var._i938, align 8
  %var.load1279 = load ptr, ptr %var.graph, align 8
  %fld.gep1280 = getelementptr inbounds { ptr, ptr }, ptr %var.load1279, i32 0, i32 1
  %fld.load1281 = load ptr, ptr %fld.gep1280, align 8
  store ptr %fld.load1281, ptr %var.node_indices, align 8
  %var.load1282 = load ptr, ptr %var.node_indices, align 8
  %var.load1283 = load ptr, ptr %var.name2, align 8
  %m.cap1284 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1282, i32 0, i32 1
  %m.cap1285 = load i64, ptr %m.cap1284, align 8
  %m.keys1286 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1282, i32 0, i32 2
  %m.keys1287 = load ptr, ptr %m.keys1286, align 8
  %m.states1288 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1282, i32 0, i32 4
  %m.states1289 = load ptr, ptr %m.states1288, align 8
  %mk.data1290 = getelementptr inbounds { i64, ptr }, ptr %var.load1283, i32 0, i32 1
  %mk.data1291 = load ptr, ptr %mk.data1290, align 8
  %mk.len1292 = getelementptr inbounds { i64, ptr }, ptr %var.load1283, i32 0, i32 0
  %mk.len1293 = load i64, ptr %mk.len1292, align 8
  %mk.len1294 = and i64 %mk.len1293, 281474976710655
  %str.tag1295 = lshr i64 %mk.len1293, 48
  %str.immortal1296 = icmp eq i64 %str.tag1295, 0
  br i1 %str.immortal1296, label %str_ok1298, label %str_gen_check1297

str_gen_check1217:                                ; preds = %loop.body.31
  %arena.cur1220 = call ptr @dva_arena_current()
  %tag.valid1221 = call i1 @dva_arena_validate_tag(ptr %arena.cur1220, i64 %str.tag1215)
  br i1 %tag.valid1221, label %str_ok1218, label %str_stale1219

str_ok1218:                                       ; preds = %str_stale1219, %str_gen_check1217, %loop.body.31
  %eq.rhs.len1222 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1223 = and i64 %eq.rhs.len1222, 281474976710655
  %str.tag1224 = lshr i64 %eq.rhs.len1222, 48
  %str.immortal1225 = icmp eq i64 %str.tag1224, 0
  br i1 %str.immortal1225, label %str_ok1227, label %str_gen_check1226

str_stale1219:                                    ; preds = %str_gen_check1217
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1218

str_gen_check1226:                                ; preds = %str_ok1218
  %arena.cur1229 = call ptr @dva_arena_current()
  %tag.valid1230 = call i1 @dva_arena_validate_tag(ptr %arena.cur1229, i64 %str.tag1224)
  br i1 %tag.valid1230, label %str_ok1227, label %str_stale1228

str_ok1227:                                       ; preds = %str_stale1228, %str_gen_check1226, %str_ok1218
  %eq.len1231 = icmp eq i64 %eq.lhs.len1214, %eq.rhs.len1223
  br i1 %eq.len1231, label %str.eq.then1232, label %str.eq.else1233

str_stale1228:                                    ; preds = %str_gen_check1226
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1227

str.eq.then1232:                                  ; preds = %str_ok1227
  %eq.lhs.data1235 = getelementptr inbounds { i64, ptr }, ptr %var.load1211, i32 0, i32 1
  %eq.lhs.data1236 = load ptr, ptr %eq.lhs.data1235, align 8
  %eq.rhs.data1237 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1238 = call i32 @memcmp(ptr %eq.lhs.data1236, ptr %eq.rhs.data1237, i64 %eq.lhs.len1214)
  %eq.cmp.zero1239 = icmp eq i32 %eq.memcmp1238, 0
  br label %str.eq.merge1234

str.eq.else1233:                                  ; preds = %str_ok1227
  br label %str.eq.merge1234

str.eq.merge1234:                                 ; preds = %str.eq.else1233, %str.eq.then1232
  %str.eq.result1240 = phi i1 [ %eq.cmp.zero1239, %str.eq.then1232 ], [ false, %str.eq.else1233 ]
  %str.neq1241 = xor i1 %str.eq.result1240, true
  br i1 %str.neq1241, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge1234
  %var.load1242 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1243 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1244 = icmp eq ptr %a.load1243, null
  br i1 %a.null1244, label %a.create1245, label %a.after1246

and.32.else:                                      ; preds = %str.eq.merge1234
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after1246
  %and.32.phi = phi i1 [ %nottmp1257, %a.after1246 ], [ %str.neq1241, %and.32.else ]
  br i1 %and.32.phi, label %choice.then1258, label %choice.exit1259

a.create1245:                                     ; preds = %and.32.then
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
  store ptr %a.create1248, ptr %var.filtered_deps, align 8
  br label %a.after1246

a.after1246:                                      ; preds = %a.create1245, %and.32.then
  %a.load21254 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1255 = load ptr, ptr %var.target_ref, align 8
  %call.res1256 = call i1 @"dep_graph::has_name"(ptr %a.load21254, ptr %var.load1255)
  %nottmp1257 = xor i1 %call.res1256, true
  br label %and.32.exit

choice.then1258:                                  ; preds = %and.32.exit
  %var.load1260 = load ptr, ptr %var.target_ref, align 8
  %a.load1261 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1262 = icmp eq ptr %a.load1261, null
  br i1 %a.null1262, label %a.create1263, label %a.after1264

choice.exit1259:                                  ; preds = %a.store, %and.32.exit
  br label %loop.latch.31

a.create1263:                                     ; preds = %choice.then1258
  %arena.cur1265 = call ptr @dva_arena_current()
  %a.create1266 = call ptr @dva_arena_alloc(ptr %arena.cur1265, i64 24)
  %arena.cur1267 = call ptr @dva_arena_current()
  %a.buf1268 = call ptr @dva_arena_alloc(ptr %arena.cur1267, i64 128)
  %a.len.gep1269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1266, i32 0, i32 0
  store i64 0, ptr %a.len.gep1269, align 8
  %a.data.gep1270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1266, i32 0, i32 1
  store ptr %a.buf1268, ptr %a.data.gep1270, align 8
  %a.cap.gep1271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1266, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1271, align 8
  store ptr %a.create1266, ptr %var.filtered_deps, align 8
  br label %a.after1264

a.after1264:                                      ; preds = %a.create1263, %choice.then1258
  %a.load21272 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1264
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21272, i32 0, i32 0
  %a.len1273 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21272, i32 0, i32 2
  %a.cap1274 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1273, %a.cap1274
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21272)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21272, i32 0, i32 1
  %a.cur.data1275 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21272, i32 0, i32 0
  %a.cur.len1276 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1275, i64 %a.cur.len1276
  %slot.p2i = ptrtoint ptr %var.load1260 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1276, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21272, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1259

str_gen_check1297:                                ; preds = %loop.exit.31
  %arena.cur1300 = call ptr @dva_arena_current()
  %tag.valid1301 = call i1 @dva_arena_validate_tag(ptr %arena.cur1300, i64 %str.tag1295)
  br i1 %tag.valid1301, label %str_ok1298, label %str_stale1299

str_ok1298:                                       ; preds = %str_stale1299, %str_gen_check1297, %loop.exit.31
  %hash.str1302 = call i64 @dva_hash_string(ptr %mk.data1291, i64 %mk.len1294)
  %m.capm11303 = sub i64 %m.cap1285, 1
  %m.idx01304 = and i64 %hash.str1302, %m.capm11303
  br label %m.mem.loop1305

str_stale1299:                                    ; preds = %str_gen_check1297
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1298

m.mem.loop1305:                                   ; preds = %m.mem.next1308, %str_ok1298
  %m.mem.idx1311 = phi i64 [ %m.idx01304, %str_ok1298 ], [ %m.mem.idx.next1354, %m.mem.next1308 ]
  %m.mem.probe1312 = phi i64 [ 0, %str_ok1298 ], [ %m.mem.probe.next1355, %m.mem.next1308 ]
  %m.mem.reached1313 = icmp eq i64 %m.mem.probe1312, %m.cap1285
  %m.mem.state.gep1314 = getelementptr i8, ptr %m.states1289, i64 %m.mem.idx1311
  %m.mem.state1315 = load i8, ptr %m.mem.state.gep1314, align 1
  %m.mem.is.empty1316 = icmp eq i8 %m.mem.state1315, 0
  %m.mem.stop1317 = or i1 %m.mem.is.empty1316, %m.mem.reached1313
  br i1 %m.mem.stop1317, label %m.mem.miss1309, label %m.mem.probe1306

m.mem.probe1306:                                  ; preds = %m.mem.loop1305
  %m.mem.is.tomb1318 = icmp eq i8 %m.mem.state1315, 2
  br i1 %m.mem.is.tomb1318, label %m.mem.next1308, label %m.mem.found1307

m.mem.found1307:                                  ; preds = %m.mem.probe1306
  %m.mem.key.slot1319 = getelementptr ptr, ptr %m.keys1287, i64 %m.mem.idx1311
  %mk.stored1320 = load ptr, ptr %m.mem.key.slot1319, align 8
  %mk.slen1321 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1320, i32 0, i32 0
  %mk.slen1322 = load i64, ptr %mk.slen1321, align 8
  %mk.slen1323 = and i64 %mk.slen1322, 281474976710655
  %str.tag1324 = lshr i64 %mk.slen1322, 48
  %str.immortal1325 = icmp eq i64 %str.tag1324, 0
  br i1 %str.immortal1325, label %str_ok1327, label %str_gen_check1326

m.mem.next1308:                                   ; preds = %mk.eq.merge1344, %m.mem.probe1306
  %m.mem.idx.add1353 = add i64 %m.mem.idx1311, 1
  %m.mem.idx.next1354 = and i64 %m.mem.idx.add1353, %m.capm11303
  %m.mem.probe.next1355 = add i64 %m.mem.probe1312, 1
  br label %m.mem.loop1305

m.mem.miss1309:                                   ; preds = %m.mem.loop1305
  br label %m.mem.done1310

m.mem.done1310:                                   ; preds = %m.mem.miss1309, %m.mem.hit1352
  %m.mem.res1356 = phi i1 [ true, %m.mem.hit1352 ], [ false, %m.mem.miss1309 ]
  store i1 %m.mem.res1356, ptr %var.known, align 1
  %var.load1357 = load i1, ptr %var.known, align 1
  %nottmp1358 = xor i1 %var.load1357, true
  br i1 %nottmp1358, label %choice.then1359, label %choice.exit1360

str_gen_check1326:                                ; preds = %m.mem.found1307
  %arena.cur1329 = call ptr @dva_arena_current()
  %tag.valid1330 = call i1 @dva_arena_validate_tag(ptr %arena.cur1329, i64 %str.tag1324)
  br i1 %tag.valid1330, label %str_ok1327, label %str_stale1328

str_ok1327:                                       ; preds = %str_stale1328, %str_gen_check1326, %m.mem.found1307
  %mk.nlen1331 = getelementptr inbounds { i64, ptr }, ptr %var.load1283, i32 0, i32 0
  %mk.nlen1332 = load i64, ptr %mk.nlen1331, align 8
  %mk.nlen1333 = and i64 %mk.nlen1332, 281474976710655
  %str.tag1334 = lshr i64 %mk.nlen1332, 48
  %str.immortal1335 = icmp eq i64 %str.tag1334, 0
  br i1 %str.immortal1335, label %str_ok1337, label %str_gen_check1336

str_stale1328:                                    ; preds = %str_gen_check1326
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1327

str_gen_check1336:                                ; preds = %str_ok1327
  %arena.cur1339 = call ptr @dva_arena_current()
  %tag.valid1340 = call i1 @dva_arena_validate_tag(ptr %arena.cur1339, i64 %str.tag1334)
  br i1 %tag.valid1340, label %str_ok1337, label %str_stale1338

str_ok1337:                                       ; preds = %str_stale1338, %str_gen_check1336, %str_ok1327
  %mk.lenseq1341 = icmp eq i64 %mk.slen1323, %mk.nlen1333
  br i1 %mk.lenseq1341, label %mk.eq.then1342, label %mk.eq.else1343

str_stale1338:                                    ; preds = %str_gen_check1336
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1337

mk.eq.then1342:                                   ; preds = %str_ok1337
  %mk.sdata1345 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1320, i32 0, i32 1
  %mk.sdata1346 = load ptr, ptr %mk.sdata1345, align 8
  %mk.ndata1347 = getelementptr inbounds { i64, ptr }, ptr %var.load1283, i32 0, i32 1
  %mk.ndata1348 = load ptr, ptr %mk.ndata1347, align 8
  %mk.memcmp1349 = call i32 @memcmp(ptr %mk.sdata1346, ptr %mk.ndata1348, i64 %mk.nlen1333)
  %mk.cmpeq1350 = icmp eq i32 %mk.memcmp1349, 0
  br label %mk.eq.merge1344

mk.eq.else1343:                                   ; preds = %str_ok1337
  br label %mk.eq.merge1344

mk.eq.merge1344:                                  ; preds = %mk.eq.else1343, %mk.eq.then1342
  %mk.eq1351 = phi i1 [ %mk.cmpeq1350, %mk.eq.then1342 ], [ false, %mk.eq.else1343 ]
  br i1 %mk.eq1351, label %m.mem.hit1352, label %m.mem.next1308

m.mem.hit1352:                                    ; preds = %mk.eq.merge1344
  br label %m.mem.done1310

choice.then1359:                                  ; preds = %m.mem.done1310
  %var.load1361 = load ptr, ptr %var.node_indices, align 8
  %var.load1362 = load ptr, ptr %var.name2, align 8
  %var.load1363 = load ptr, ptr %var.graph, align 8
  %fld.gep1364 = getelementptr inbounds { ptr, ptr }, ptr %var.load1363, i32 0, i32 0
  %fld.load1365 = load ptr, ptr %fld.gep1364, align 8
  %a.len.query1366 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1365, i32 0, i32 0
  %a.len.query1367 = load i64, ptr %a.len.query1366, align 8
  %m.cap1368 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 1
  %m.cap1369 = load i64, ptr %m.cap1368, align 8
  %m.keys1370 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 2
  %m.keys1371 = load ptr, ptr %m.keys1370, align 8
  %m.vals1372 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 3
  %m.vals1373 = load ptr, ptr %m.vals1372, align 8
  %m.states1374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 4
  %m.states1375 = load ptr, ptr %m.states1374, align 8
  %mk.data1376 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 1
  %mk.data1377 = load ptr, ptr %mk.data1376, align 8
  %mk.len1378 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 0
  %mk.len1379 = load i64, ptr %mk.len1378, align 8
  %mk.len1380 = and i64 %mk.len1379, 281474976710655
  %str.tag1381 = lshr i64 %mk.len1379, 48
  %str.immortal1382 = icmp eq i64 %str.tag1381, 0
  br i1 %str.immortal1382, label %str_ok1384, label %str_gen_check1383

choice.exit1360:                                  ; preds = %m.done1398, %m.mem.done1310
  %var.load1701 = load ptr, ptr %var.graph, align 8
  %var.load1702 = load ptr, ptr %var.name2, align 8
  %var.load1703 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1704 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1705 = icmp eq ptr %a.load1704, null
  br i1 %a.null1705, label %a.create1706, label %a.after1707

str_gen_check1383:                                ; preds = %choice.then1359
  %arena.cur1386 = call ptr @dva_arena_current()
  %tag.valid1387 = call i1 @dva_arena_validate_tag(ptr %arena.cur1386, i64 %str.tag1381)
  br i1 %tag.valid1387, label %str_ok1384, label %str_stale1385

str_ok1384:                                       ; preds = %str_stale1385, %str_gen_check1383, %choice.then1359
  %hash.str1388 = call i64 @dva_hash_string(ptr %mk.data1377, i64 %mk.len1380)
  %m.capm11389 = sub i64 %m.cap1369, 1
  %m.idx01390 = and i64 %hash.str1388, %m.capm11389
  br label %m.loop1391

str_stale1385:                                    ; preds = %str_gen_check1383
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1384

m.loop1391:                                       ; preds = %m.next1396, %str_ok1384
  %m.idx1399 = phi i64 [ %m.idx01390, %str_ok1384 ], [ %m.idx.next1446, %m.next1396 ]
  %m.tomb1400 = phi i64 [ -1, %str_ok1384 ], [ %m.next.tomb1444, %m.next1396 ]
  %m.probe1401 = phi i64 [ 0, %str_ok1384 ], [ %m.probe.next1447, %m.next1396 ]
  %m.reached.cap1402 = icmp eq i64 %m.probe1401, %m.cap1369
  %m.state.gep1403 = getelementptr i8, ptr %m.states1375, i64 %m.idx1399
  %m.state1404 = load i8, ptr %m.state.gep1403, align 1
  %m.is.empty1405 = icmp eq i8 %m.state1404, 0
  %m.stop1406 = or i1 %m.is.empty1405, %m.reached.cap1402
  br i1 %m.stop1406, label %m.empty1397, label %m.check.tomb1392

m.check.tomb1392:                                 ; preds = %m.loop1391
  %m.is.tomb1407 = icmp eq i8 %m.state1404, 2
  br i1 %m.is.tomb1407, label %m.tomb1393, label %m.found1394

m.tomb1393:                                       ; preds = %m.check.tomb1392
  %m.has.tomb1408 = icmp ne i64 %m.tomb1400, -1
  %m.tomb.sel1409 = select i1 %m.has.tomb1408, i64 %m.tomb1400, i64 %m.idx1399
  br label %m.next1396

m.found1394:                                      ; preds = %m.check.tomb1392
  %m.key.slot1410 = getelementptr ptr, ptr %m.keys1371, i64 %m.idx1399
  %mk.stored1411 = load ptr, ptr %m.key.slot1410, align 8
  %mk.slen1412 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1411, i32 0, i32 0
  %mk.slen1413 = load i64, ptr %mk.slen1412, align 8
  %mk.slen1414 = and i64 %mk.slen1413, 281474976710655
  %str.tag1415 = lshr i64 %mk.slen1413, 48
  %str.immortal1416 = icmp eq i64 %str.tag1415, 0
  br i1 %str.immortal1416, label %str_ok1418, label %str_gen_check1417

m.overwrite1395:                                  ; preds = %mk.eq.merge1435
  %m.val.slot1443 = getelementptr i64, ptr %m.vals1373, i64 %m.idx1399
  store i64 %a.len.query1367, ptr %m.val.slot1443, align 8
  br label %m.done1398

m.next1396:                                       ; preds = %mk.eq.merge1435, %m.tomb1393
  %m.next.tomb1444 = phi i64 [ %m.tomb.sel1409, %m.tomb1393 ], [ %m.tomb1400, %mk.eq.merge1435 ]
  %m.idx.add1445 = add i64 %m.idx1399, 1
  %m.idx.next1446 = and i64 %m.idx.add1445, %m.capm11389
  %m.probe.next1447 = add i64 %m.probe1401, 1
  br label %m.loop1391

m.empty1397:                                      ; preds = %m.loop1391
  %m.grow.cnt.p1448 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  %m.grow.cnt1449 = load i64, ptr %m.grow.cnt.p1448, align 8
  %m.grow.tm.p1450 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 5
  %m.grow.tm1451 = load i64, ptr %m.grow.tm.p1450, align 8
  %m.occupied1452 = add i64 %m.grow.cnt1449, %m.grow.tm1451
  %m.c.plus1453 = add i64 %m.occupied1452, 1
  %m.c.lhs1454 = mul i64 %m.c.plus1453, 4
  %m.c.rhs1455 = mul i64 %m.cap1369, 3
  %m.need.grow1456 = icmp sgt i64 %m.c.lhs1454, %m.c.rhs1455
  br i1 %m.need.grow1456, label %m.grow1457, label %m.ins.slot1458

m.done1398:                                       ; preds = %m.ins.slot1458, %m.done1625, %m.overwrite1395
  br label %choice.exit1360

str_gen_check1417:                                ; preds = %m.found1394
  %arena.cur1420 = call ptr @dva_arena_current()
  %tag.valid1421 = call i1 @dva_arena_validate_tag(ptr %arena.cur1420, i64 %str.tag1415)
  br i1 %tag.valid1421, label %str_ok1418, label %str_stale1419

str_ok1418:                                       ; preds = %str_stale1419, %str_gen_check1417, %m.found1394
  %mk.nlen1422 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 0
  %mk.nlen1423 = load i64, ptr %mk.nlen1422, align 8
  %mk.nlen1424 = and i64 %mk.nlen1423, 281474976710655
  %str.tag1425 = lshr i64 %mk.nlen1423, 48
  %str.immortal1426 = icmp eq i64 %str.tag1425, 0
  br i1 %str.immortal1426, label %str_ok1428, label %str_gen_check1427

str_stale1419:                                    ; preds = %str_gen_check1417
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1418

str_gen_check1427:                                ; preds = %str_ok1418
  %arena.cur1430 = call ptr @dva_arena_current()
  %tag.valid1431 = call i1 @dva_arena_validate_tag(ptr %arena.cur1430, i64 %str.tag1425)
  br i1 %tag.valid1431, label %str_ok1428, label %str_stale1429

str_ok1428:                                       ; preds = %str_stale1429, %str_gen_check1427, %str_ok1418
  %mk.lenseq1432 = icmp eq i64 %mk.slen1414, %mk.nlen1424
  br i1 %mk.lenseq1432, label %mk.eq.then1433, label %mk.eq.else1434

str_stale1429:                                    ; preds = %str_gen_check1427
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1428

mk.eq.then1433:                                   ; preds = %str_ok1428
  %mk.sdata1436 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1411, i32 0, i32 1
  %mk.sdata1437 = load ptr, ptr %mk.sdata1436, align 8
  %mk.ndata1438 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 1
  %mk.ndata1439 = load ptr, ptr %mk.ndata1438, align 8
  %mk.memcmp1440 = call i32 @memcmp(ptr %mk.sdata1437, ptr %mk.ndata1439, i64 %mk.nlen1424)
  %mk.cmpeq1441 = icmp eq i32 %mk.memcmp1440, 0
  br label %mk.eq.merge1435

mk.eq.else1434:                                   ; preds = %str_ok1428
  br label %mk.eq.merge1435

mk.eq.merge1435:                                  ; preds = %mk.eq.else1434, %mk.eq.then1433
  %mk.eq1442 = phi i1 [ %mk.cmpeq1441, %mk.eq.then1433 ], [ false, %mk.eq.else1434 ]
  br i1 %mk.eq1442, label %m.overwrite1395, label %m.next1396

m.grow1457:                                       ; preds = %m.empty1397
  %m.old.cap1459 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 1
  %m.old.cap1460 = load i64, ptr %m.old.cap1459, align 8
  %m.old.keys1461 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 2
  %m.old.keys1462 = load ptr, ptr %m.old.keys1461, align 8
  %m.old.vals1463 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 3
  %m.old.vals1464 = load ptr, ptr %m.old.vals1463, align 8
  %m.old.states1465 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 4
  %m.old.states1466 = load ptr, ptr %m.old.states1465, align 8
  %m.double.cap1467 = mul i64 %m.old.cap1460, 2
  %m.live.cnt1468 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  %m.live.cnt1469 = load i64, ptr %m.live.cnt1468, align 8
  %m.live.x21470 = mul i64 %m.live.cnt1469, 2
  %m.should.double1471 = icmp sgt i64 %m.live.x21470, %m.old.cap1460
  %m.new.cap1472 = select i1 %m.should.double1471, i64 %m.double.cap1467, i64 %m.old.cap1460
  %m.gk.bytes1473 = mul i64 %m.new.cap1472, 8
  %arena.cur1474 = call ptr @dva_arena_current()
  %m.gk1475 = call ptr @dva_arena_alloc(ptr %arena.cur1474, i64 %m.gk.bytes1473)
  %m.gv.bytes1476 = mul i64 %m.new.cap1472, 8
  %arena.cur1477 = call ptr @dva_arena_current()
  %m.gv1478 = call ptr @dva_arena_alloc(ptr %arena.cur1477, i64 %m.gv.bytes1476)
  %arena.cur1479 = call ptr @dva_arena_current()
  %m.gs1480 = call ptr @dva_arena_alloc(ptr %arena.cur1479, i64 %m.new.cap1472)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1480, i8 0, i64 %m.new.cap1472, i1 false)
  %m.cap.gep1481 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 1
  store i64 %m.new.cap1472, ptr %m.cap.gep1481, align 8
  %m.keys.gep1482 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 2
  store ptr %m.gk1475, ptr %m.keys.gep1482, align 8
  %m.vals.gep1483 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 3
  store ptr %m.gv1478, ptr %m.vals.gep1483, align 8
  %m.states.gep1484 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 4
  store ptr %m.gs1480, ptr %m.states.gep1484, align 8
  %m.count.gep1485 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  store i64 0, ptr %m.count.gep1485, align 8
  %m.tombs.gep1486 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1486, align 8
  br label %m.re.loop1487

m.ins.slot1458:                                   ; preds = %m.empty1397
  %m.use.tomb1688 = icmp ne i64 %m.tomb1400, -1
  %m.ins.idx1689 = select i1 %m.use.tomb1688, i64 %m.tomb1400, i64 %m.idx1399
  %m.key.slot1690 = getelementptr ptr, ptr %m.keys1371, i64 %m.ins.idx1689
  store ptr %var.load1362, ptr %m.key.slot1690, align 8
  %m.val.slot1691 = getelementptr i64, ptr %m.vals1373, i64 %m.ins.idx1689
  store i64 %a.len.query1367, ptr %m.val.slot1691, align 8
  %m.ins.state.slot1692 = getelementptr i8, ptr %m.states1375, i64 %m.ins.idx1689
  store i8 1, ptr %m.ins.state.slot1692, align 1
  %m.count1693 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  %m.count1694 = load i64, ptr %m.count1693, align 8
  %m.count.next1695 = add i64 %m.count1694, 1
  %m.count.gep1696 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  store i64 %m.count.next1695, ptr %m.count.gep1696, align 8
  %m.ins.tombs.p1697 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 5
  %m.ins.tombs1698 = load i64, ptr %m.ins.tombs.p1697, align 8
  %m.tomb.dec1699 = select i1 %m.use.tomb1688, i64 1, i64 0
  %m.ins.tombs.next1700 = sub i64 %m.ins.tombs1698, %m.tomb.dec1699
  store i64 %m.ins.tombs.next1700, ptr %m.ins.tombs.p1697, align 8
  br label %m.done1398

m.re.loop1487:                                    ; preds = %m.re.cont1489, %m.grow1457
  %m.re.i1491 = phi i64 [ 0, %m.grow1457 ], [ %m.re.i.next1594, %m.re.cont1489 ]
  %m.re.lt1492 = icmp slt i64 %m.re.i1491, %m.old.cap1460
  br i1 %m.re.lt1492, label %m.re.body1488, label %m.re.done1490

m.re.body1488:                                    ; preds = %m.re.loop1487
  %m.re.state.gep1493 = getelementptr i8, ptr %m.old.states1466, i64 %m.re.i1491
  %m.re.state1494 = load i8, ptr %m.re.state.gep1493, align 1
  %m.re.occ1495 = icmp eq i8 %m.re.state1494, 1
  br i1 %m.re.occ1495, label %m.re.ins1496, label %m.re.cont1489

m.re.cont1489:                                    ; preds = %m.done1531, %m.re.body1488
  %m.re.i.next1594 = add i64 %m.re.i1491, 1
  br label %m.re.loop1487

m.re.done1490:                                    ; preds = %m.re.loop1487
  %m.cap1595 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 1
  %m.cap1596 = load i64, ptr %m.cap1595, align 8
  %m.keys1597 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 2
  %m.keys1598 = load ptr, ptr %m.keys1597, align 8
  %m.vals1599 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 3
  %m.vals1600 = load ptr, ptr %m.vals1599, align 8
  %m.states1601 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 4
  %m.states1602 = load ptr, ptr %m.states1601, align 8
  %mk.data1603 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 1
  %mk.data1604 = load ptr, ptr %mk.data1603, align 8
  %mk.len1605 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 0
  %mk.len1606 = load i64, ptr %mk.len1605, align 8
  %mk.len1607 = and i64 %mk.len1606, 281474976710655
  %str.tag1608 = lshr i64 %mk.len1606, 48
  %str.immortal1609 = icmp eq i64 %str.tag1608, 0
  br i1 %str.immortal1609, label %str_ok1611, label %str_gen_check1610

m.re.ins1496:                                     ; preds = %m.re.body1488
  %m.re.key.slot1497 = getelementptr ptr, ptr %m.old.keys1462, i64 %m.re.i1491
  %m.re.val.slot1498 = getelementptr i64, ptr %m.old.vals1464, i64 %m.re.i1491
  %m.re.key1499 = load ptr, ptr %m.re.key.slot1497, align 8
  %m.re.val1500 = load i64, ptr %m.re.val.slot1498, align 8
  %m.cap1501 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 1
  %m.cap1502 = load i64, ptr %m.cap1501, align 8
  %m.keys1503 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 2
  %m.keys1504 = load ptr, ptr %m.keys1503, align 8
  %m.vals1505 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 3
  %m.vals1506 = load ptr, ptr %m.vals1505, align 8
  %m.states1507 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 4
  %m.states1508 = load ptr, ptr %m.states1507, align 8
  %mk.data1509 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1499, i32 0, i32 1
  %mk.data1510 = load ptr, ptr %mk.data1509, align 8
  %mk.len1511 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1499, i32 0, i32 0
  %mk.len1512 = load i64, ptr %mk.len1511, align 8
  %mk.len1513 = and i64 %mk.len1512, 281474976710655
  %str.tag1514 = lshr i64 %mk.len1512, 48
  %str.immortal1515 = icmp eq i64 %str.tag1514, 0
  br i1 %str.immortal1515, label %str_ok1517, label %str_gen_check1516

str_gen_check1516:                                ; preds = %m.re.ins1496
  %arena.cur1519 = call ptr @dva_arena_current()
  %tag.valid1520 = call i1 @dva_arena_validate_tag(ptr %arena.cur1519, i64 %str.tag1514)
  br i1 %tag.valid1520, label %str_ok1517, label %str_stale1518

str_ok1517:                                       ; preds = %str_stale1518, %str_gen_check1516, %m.re.ins1496
  %hash.str1521 = call i64 @dva_hash_string(ptr %mk.data1510, i64 %mk.len1513)
  %m.capm11522 = sub i64 %m.cap1502, 1
  %m.idx01523 = and i64 %hash.str1521, %m.capm11522
  br label %m.loop1524

str_stale1518:                                    ; preds = %str_gen_check1516
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1517

m.loop1524:                                       ; preds = %m.next1529, %str_ok1517
  %m.idx1532 = phi i64 [ %m.idx01523, %str_ok1517 ], [ %m.idx.next1579, %m.next1529 ]
  %m.tomb1533 = phi i64 [ -1, %str_ok1517 ], [ %m.next.tomb1577, %m.next1529 ]
  %m.probe1534 = phi i64 [ 0, %str_ok1517 ], [ %m.probe.next1580, %m.next1529 ]
  %m.reached.cap1535 = icmp eq i64 %m.probe1534, %m.cap1502
  %m.state.gep1536 = getelementptr i8, ptr %m.states1508, i64 %m.idx1532
  %m.state1537 = load i8, ptr %m.state.gep1536, align 1
  %m.is.empty1538 = icmp eq i8 %m.state1537, 0
  %m.stop1539 = or i1 %m.is.empty1538, %m.reached.cap1535
  br i1 %m.stop1539, label %m.empty1530, label %m.check.tomb1525

m.check.tomb1525:                                 ; preds = %m.loop1524
  %m.is.tomb1540 = icmp eq i8 %m.state1537, 2
  br i1 %m.is.tomb1540, label %m.tomb1526, label %m.found1527

m.tomb1526:                                       ; preds = %m.check.tomb1525
  %m.has.tomb1541 = icmp ne i64 %m.tomb1533, -1
  %m.tomb.sel1542 = select i1 %m.has.tomb1541, i64 %m.tomb1533, i64 %m.idx1532
  br label %m.next1529

m.found1527:                                      ; preds = %m.check.tomb1525
  %m.key.slot1543 = getelementptr ptr, ptr %m.keys1504, i64 %m.idx1532
  %mk.stored1544 = load ptr, ptr %m.key.slot1543, align 8
  %mk.slen1545 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1544, i32 0, i32 0
  %mk.slen1546 = load i64, ptr %mk.slen1545, align 8
  %mk.slen1547 = and i64 %mk.slen1546, 281474976710655
  %str.tag1548 = lshr i64 %mk.slen1546, 48
  %str.immortal1549 = icmp eq i64 %str.tag1548, 0
  br i1 %str.immortal1549, label %str_ok1551, label %str_gen_check1550

m.overwrite1528:                                  ; preds = %mk.eq.merge1568
  %m.val.slot1576 = getelementptr i64, ptr %m.vals1506, i64 %m.idx1532
  store i64 %m.re.val1500, ptr %m.val.slot1576, align 8
  br label %m.done1531

m.next1529:                                       ; preds = %mk.eq.merge1568, %m.tomb1526
  %m.next.tomb1577 = phi i64 [ %m.tomb.sel1542, %m.tomb1526 ], [ %m.tomb1533, %mk.eq.merge1568 ]
  %m.idx.add1578 = add i64 %m.idx1532, 1
  %m.idx.next1579 = and i64 %m.idx.add1578, %m.capm11522
  %m.probe.next1580 = add i64 %m.probe1534, 1
  br label %m.loop1524

m.empty1530:                                      ; preds = %m.loop1524
  %m.use.tomb1581 = icmp ne i64 %m.tomb1533, -1
  %m.ins.idx1582 = select i1 %m.use.tomb1581, i64 %m.tomb1533, i64 %m.idx1532
  %m.key.slot1583 = getelementptr ptr, ptr %m.keys1504, i64 %m.ins.idx1582
  store ptr %m.re.key1499, ptr %m.key.slot1583, align 8
  %m.val.slot1584 = getelementptr i64, ptr %m.vals1506, i64 %m.ins.idx1582
  store i64 %m.re.val1500, ptr %m.val.slot1584, align 8
  %m.ins.state.slot1585 = getelementptr i8, ptr %m.states1508, i64 %m.ins.idx1582
  store i8 1, ptr %m.ins.state.slot1585, align 1
  %m.count1586 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  %m.count1587 = load i64, ptr %m.count1586, align 8
  %m.count.next1588 = add i64 %m.count1587, 1
  %m.count.gep1589 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  store i64 %m.count.next1588, ptr %m.count.gep1589, align 8
  %m.ins.tombs.p1590 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 5
  %m.ins.tombs1591 = load i64, ptr %m.ins.tombs.p1590, align 8
  %m.tomb.dec1592 = select i1 %m.use.tomb1581, i64 1, i64 0
  %m.ins.tombs.next1593 = sub i64 %m.ins.tombs1591, %m.tomb.dec1592
  store i64 %m.ins.tombs.next1593, ptr %m.ins.tombs.p1590, align 8
  br label %m.done1531

m.done1531:                                       ; preds = %m.empty1530, %m.overwrite1528
  br label %m.re.cont1489

str_gen_check1550:                                ; preds = %m.found1527
  %arena.cur1553 = call ptr @dva_arena_current()
  %tag.valid1554 = call i1 @dva_arena_validate_tag(ptr %arena.cur1553, i64 %str.tag1548)
  br i1 %tag.valid1554, label %str_ok1551, label %str_stale1552

str_ok1551:                                       ; preds = %str_stale1552, %str_gen_check1550, %m.found1527
  %mk.nlen1555 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1499, i32 0, i32 0
  %mk.nlen1556 = load i64, ptr %mk.nlen1555, align 8
  %mk.nlen1557 = and i64 %mk.nlen1556, 281474976710655
  %str.tag1558 = lshr i64 %mk.nlen1556, 48
  %str.immortal1559 = icmp eq i64 %str.tag1558, 0
  br i1 %str.immortal1559, label %str_ok1561, label %str_gen_check1560

str_stale1552:                                    ; preds = %str_gen_check1550
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1551

str_gen_check1560:                                ; preds = %str_ok1551
  %arena.cur1563 = call ptr @dva_arena_current()
  %tag.valid1564 = call i1 @dva_arena_validate_tag(ptr %arena.cur1563, i64 %str.tag1558)
  br i1 %tag.valid1564, label %str_ok1561, label %str_stale1562

str_ok1561:                                       ; preds = %str_stale1562, %str_gen_check1560, %str_ok1551
  %mk.lenseq1565 = icmp eq i64 %mk.slen1547, %mk.nlen1557
  br i1 %mk.lenseq1565, label %mk.eq.then1566, label %mk.eq.else1567

str_stale1562:                                    ; preds = %str_gen_check1560
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1561

mk.eq.then1566:                                   ; preds = %str_ok1561
  %mk.sdata1569 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1544, i32 0, i32 1
  %mk.sdata1570 = load ptr, ptr %mk.sdata1569, align 8
  %mk.ndata1571 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1499, i32 0, i32 1
  %mk.ndata1572 = load ptr, ptr %mk.ndata1571, align 8
  %mk.memcmp1573 = call i32 @memcmp(ptr %mk.sdata1570, ptr %mk.ndata1572, i64 %mk.nlen1557)
  %mk.cmpeq1574 = icmp eq i32 %mk.memcmp1573, 0
  br label %mk.eq.merge1568

mk.eq.else1567:                                   ; preds = %str_ok1561
  br label %mk.eq.merge1568

mk.eq.merge1568:                                  ; preds = %mk.eq.else1567, %mk.eq.then1566
  %mk.eq1575 = phi i1 [ %mk.cmpeq1574, %mk.eq.then1566 ], [ false, %mk.eq.else1567 ]
  br i1 %mk.eq1575, label %m.overwrite1528, label %m.next1529

str_gen_check1610:                                ; preds = %m.re.done1490
  %arena.cur1613 = call ptr @dva_arena_current()
  %tag.valid1614 = call i1 @dva_arena_validate_tag(ptr %arena.cur1613, i64 %str.tag1608)
  br i1 %tag.valid1614, label %str_ok1611, label %str_stale1612

str_ok1611:                                       ; preds = %str_stale1612, %str_gen_check1610, %m.re.done1490
  %hash.str1615 = call i64 @dva_hash_string(ptr %mk.data1604, i64 %mk.len1607)
  %m.capm11616 = sub i64 %m.cap1596, 1
  %m.idx01617 = and i64 %hash.str1615, %m.capm11616
  br label %m.loop1618

str_stale1612:                                    ; preds = %str_gen_check1610
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1611

m.loop1618:                                       ; preds = %m.next1623, %str_ok1611
  %m.idx1626 = phi i64 [ %m.idx01617, %str_ok1611 ], [ %m.idx.next1673, %m.next1623 ]
  %m.tomb1627 = phi i64 [ -1, %str_ok1611 ], [ %m.next.tomb1671, %m.next1623 ]
  %m.probe1628 = phi i64 [ 0, %str_ok1611 ], [ %m.probe.next1674, %m.next1623 ]
  %m.reached.cap1629 = icmp eq i64 %m.probe1628, %m.cap1596
  %m.state.gep1630 = getelementptr i8, ptr %m.states1602, i64 %m.idx1626
  %m.state1631 = load i8, ptr %m.state.gep1630, align 1
  %m.is.empty1632 = icmp eq i8 %m.state1631, 0
  %m.stop1633 = or i1 %m.is.empty1632, %m.reached.cap1629
  br i1 %m.stop1633, label %m.empty1624, label %m.check.tomb1619

m.check.tomb1619:                                 ; preds = %m.loop1618
  %m.is.tomb1634 = icmp eq i8 %m.state1631, 2
  br i1 %m.is.tomb1634, label %m.tomb1620, label %m.found1621

m.tomb1620:                                       ; preds = %m.check.tomb1619
  %m.has.tomb1635 = icmp ne i64 %m.tomb1627, -1
  %m.tomb.sel1636 = select i1 %m.has.tomb1635, i64 %m.tomb1627, i64 %m.idx1626
  br label %m.next1623

m.found1621:                                      ; preds = %m.check.tomb1619
  %m.key.slot1637 = getelementptr ptr, ptr %m.keys1598, i64 %m.idx1626
  %mk.stored1638 = load ptr, ptr %m.key.slot1637, align 8
  %mk.slen1639 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1638, i32 0, i32 0
  %mk.slen1640 = load i64, ptr %mk.slen1639, align 8
  %mk.slen1641 = and i64 %mk.slen1640, 281474976710655
  %str.tag1642 = lshr i64 %mk.slen1640, 48
  %str.immortal1643 = icmp eq i64 %str.tag1642, 0
  br i1 %str.immortal1643, label %str_ok1645, label %str_gen_check1644

m.overwrite1622:                                  ; preds = %mk.eq.merge1662
  %m.val.slot1670 = getelementptr i64, ptr %m.vals1600, i64 %m.idx1626
  store i64 %a.len.query1367, ptr %m.val.slot1670, align 8
  br label %m.done1625

m.next1623:                                       ; preds = %mk.eq.merge1662, %m.tomb1620
  %m.next.tomb1671 = phi i64 [ %m.tomb.sel1636, %m.tomb1620 ], [ %m.tomb1627, %mk.eq.merge1662 ]
  %m.idx.add1672 = add i64 %m.idx1626, 1
  %m.idx.next1673 = and i64 %m.idx.add1672, %m.capm11616
  %m.probe.next1674 = add i64 %m.probe1628, 1
  br label %m.loop1618

m.empty1624:                                      ; preds = %m.loop1618
  %m.use.tomb1675 = icmp ne i64 %m.tomb1627, -1
  %m.ins.idx1676 = select i1 %m.use.tomb1675, i64 %m.tomb1627, i64 %m.idx1626
  %m.key.slot1677 = getelementptr ptr, ptr %m.keys1598, i64 %m.ins.idx1676
  store ptr %var.load1362, ptr %m.key.slot1677, align 8
  %m.val.slot1678 = getelementptr i64, ptr %m.vals1600, i64 %m.ins.idx1676
  store i64 %a.len.query1367, ptr %m.val.slot1678, align 8
  %m.ins.state.slot1679 = getelementptr i8, ptr %m.states1602, i64 %m.ins.idx1676
  store i8 1, ptr %m.ins.state.slot1679, align 1
  %m.count1680 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  %m.count1681 = load i64, ptr %m.count1680, align 8
  %m.count.next1682 = add i64 %m.count1681, 1
  %m.count.gep1683 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 0
  store i64 %m.count.next1682, ptr %m.count.gep1683, align 8
  %m.ins.tombs.p1684 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1361, i32 0, i32 5
  %m.ins.tombs1685 = load i64, ptr %m.ins.tombs.p1684, align 8
  %m.tomb.dec1686 = select i1 %m.use.tomb1675, i64 1, i64 0
  %m.ins.tombs.next1687 = sub i64 %m.ins.tombs1685, %m.tomb.dec1686
  store i64 %m.ins.tombs.next1687, ptr %m.ins.tombs.p1684, align 8
  br label %m.done1625

m.done1625:                                       ; preds = %m.empty1624, %m.overwrite1622
  br label %m.done1398

str_gen_check1644:                                ; preds = %m.found1621
  %arena.cur1647 = call ptr @dva_arena_current()
  %tag.valid1648 = call i1 @dva_arena_validate_tag(ptr %arena.cur1647, i64 %str.tag1642)
  br i1 %tag.valid1648, label %str_ok1645, label %str_stale1646

str_ok1645:                                       ; preds = %str_stale1646, %str_gen_check1644, %m.found1621
  %mk.nlen1649 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 0
  %mk.nlen1650 = load i64, ptr %mk.nlen1649, align 8
  %mk.nlen1651 = and i64 %mk.nlen1650, 281474976710655
  %str.tag1652 = lshr i64 %mk.nlen1650, 48
  %str.immortal1653 = icmp eq i64 %str.tag1652, 0
  br i1 %str.immortal1653, label %str_ok1655, label %str_gen_check1654

str_stale1646:                                    ; preds = %str_gen_check1644
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1645

str_gen_check1654:                                ; preds = %str_ok1645
  %arena.cur1657 = call ptr @dva_arena_current()
  %tag.valid1658 = call i1 @dva_arena_validate_tag(ptr %arena.cur1657, i64 %str.tag1652)
  br i1 %tag.valid1658, label %str_ok1655, label %str_stale1656

str_ok1655:                                       ; preds = %str_stale1656, %str_gen_check1654, %str_ok1645
  %mk.lenseq1659 = icmp eq i64 %mk.slen1641, %mk.nlen1651
  br i1 %mk.lenseq1659, label %mk.eq.then1660, label %mk.eq.else1661

str_stale1656:                                    ; preds = %str_gen_check1654
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1655

mk.eq.then1660:                                   ; preds = %str_ok1655
  %mk.sdata1663 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1638, i32 0, i32 1
  %mk.sdata1664 = load ptr, ptr %mk.sdata1663, align 8
  %mk.ndata1665 = getelementptr inbounds { i64, ptr }, ptr %var.load1362, i32 0, i32 1
  %mk.ndata1666 = load ptr, ptr %mk.ndata1665, align 8
  %mk.memcmp1667 = call i32 @memcmp(ptr %mk.sdata1664, ptr %mk.ndata1666, i64 %mk.nlen1651)
  %mk.cmpeq1668 = icmp eq i32 %mk.memcmp1667, 0
  br label %mk.eq.merge1662

mk.eq.else1661:                                   ; preds = %str_ok1655
  br label %mk.eq.merge1662

mk.eq.merge1662:                                  ; preds = %mk.eq.else1661, %mk.eq.then1660
  %mk.eq1669 = phi i1 [ %mk.cmpeq1668, %mk.eq.then1660 ], [ false, %mk.eq.else1661 ]
  br i1 %mk.eq1669, label %m.overwrite1622, label %m.next1623

a.create1706:                                     ; preds = %choice.exit1360
  %arena.cur1708 = call ptr @dva_arena_current()
  %a.create1709 = call ptr @dva_arena_alloc(ptr %arena.cur1708, i64 24)
  %arena.cur1710 = call ptr @dva_arena_current()
  %a.buf1711 = call ptr @dva_arena_alloc(ptr %arena.cur1710, i64 128)
  %a.len.gep1712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1709, i32 0, i32 0
  store i64 0, ptr %a.len.gep1712, align 8
  %a.data.gep1713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1709, i32 0, i32 1
  store ptr %a.buf1711, ptr %a.data.gep1713, align 8
  %a.cap.gep1714 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1709, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1714, align 8
  store ptr %a.create1709, ptr %var.filtered_deps, align 8
  br label %a.after1707

a.after1707:                                      ; preds = %a.create1706, %choice.exit1360
  %a.load21715 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1716 = load i64, ptr %var.j, align 8
  %arena.cur1717 = call ptr @dva_arena_current()
  %rec.alloc1718 = call ptr @dva_arena_alloc(ptr %arena.cur1717, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1719 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1718, i32 0, i32 0
  store ptr %var.load1702, ptr %rec.fld1719, align 8
  %rec.fld1720 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1718, i32 0, i32 1
  store ptr %a.load21715, ptr %rec.fld1720, align 8
  %rec.fld1721 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1718, i32 0, i32 2
  store i64 %var.load1716, ptr %rec.fld1721, align 8
  %fld.gep1722 = getelementptr inbounds { ptr, ptr }, ptr %var.load1701, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1722, align 8
  br label %a.check1723

a.check1723:                                      ; preds = %a.after1707
  %a.len1726 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1727 = load i64, ptr %a.len1726, align 8
  %a.cap1728 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1729 = load i64, ptr %a.cap1728, align 8
  %a.needs.grow1730 = icmp eq i64 %a.len1727, %a.cap1729
  br i1 %a.needs.grow1730, label %a.grow1724, label %a.store1725

a.grow1724:                                       ; preds = %a.check1723
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1725

a.store1725:                                      ; preds = %a.grow1724, %a.check1723
  %a.cur.data1731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1732 = load ptr, ptr %a.cur.data1731, align 8
  %a.cur.len1733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1734 = load i64, ptr %a.cur.len1733, align 8
  %a.elem.gep1735 = getelementptr i64, ptr %a.cur.data1732, i64 %a.cur.len1734
  %slot.p2i1736 = ptrtoint ptr %rec.alloc1718 to i64
  store i64 %slot.p2i1736, ptr %a.elem.gep1735, align 8
  %a.next.len1737 = add i64 %a.cur.len1734, 1
  %b.len.gep1738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1737, ptr %b.len.gep1738, align 8
  br label %choice.exit1148
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
  store i64 286, ptr %err.line.gep162, align 8
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
  store i64 286, ptr %err.line.gep173, align 8
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
  %var._1536 = alloca ptr, align 8
  %var._1535 = alloca ptr, align 8
  %var._1534 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1360 = alloca i64, align 8
  %var._i1359 = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var._1339 = alloca ptr, align 8
  %var._1336 = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1274 = alloca ptr, align 8
  %var._1271 = alloca i64, align 8
  %var._1166 = alloca ptr, align 8
  %var._1165 = alloca ptr, align 8
  %var._1164 = alloca ptr, align 8
  %var.min_idx = alloca i64, align 8
  %var.idx_v = alloca i64, align 8
  %var._1088 = alloca ptr, align 8
  %var._1085 = alloca i64, align 8
  %var.lu2 = alloca i64, align 8
  %var._1023 = alloca ptr, align 8
  %var._1020 = alloca i64, align 8
  %var.v_on = alloca i1, align 1
  %var._955 = alloca ptr, align 8
  %var._952 = alloca i1, align 1
  %var._847 = alloca ptr, align 8
  %var._846 = alloca ptr, align 8
  %var._845 = alloca ptr, align 8
  %var.min_v = alloca i64, align 8
  %var.low_v = alloca i64, align 8
  %var._769 = alloca ptr, align 8
  %var._766 = alloca i64, align 8
  %var.lu1 = alloca i64, align 8
  %var._704 = alloca ptr, align 8
  %var._701 = alloca i64, align 8
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
  %var.load1211 = load ptr, ptr %var.lows, align 8
  %a.load1212 = load ptr, ptr %var.lows, align 8
  %a.null1213 = icmp eq ptr %a.load1212, null
  br i1 %a.null1213, label %a.create1214, label %a.after1215

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
  store i64 306, ptr %err.line.gep603, align 8
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
  store i64 306, ptr %err.line.gep614, align 8
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
  %var.load892 = load ptr, ptr %var.ons, align 8
  %a.load893 = load ptr, ptr %var.ons, align 8
  %a.null894 = icmp eq ptr %a.load893, null
  br i1 %a.null894, label %a.create895, label %a.after896

choice.exit637:                                   ; preds = %choice.exit959, %choice.exit844
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
  %a.rd.nonnull655 = icmp ne ptr %a.load2653, null
  br i1 %a.rd.nonnull655, label %a.rd.check656, label %a.rd.err.null658

a.rd.check656:                                    ; preds = %a.after645
  %a.rd.len661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2653, i32 0, i32 0
  %a.rd.len662 = load i64, ptr %a.rd.len661, align 8
  %a.rd.ge0663 = icmp sge i64 %var.load654, 0
  %a.rd.lt664 = icmp slt i64 %var.load654, %a.rd.len662
  %a.rd.bounds665 = and i1 %a.rd.ge0663, %a.rd.lt664
  br i1 %a.rd.bounds665, label %a.rd.ok657, label %a.rd.err.oob659

a.rd.ok657:                                       ; preds = %a.rd.check656
  %a.rd.data666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2653, i32 0, i32 1
  %a.rd.data667 = load ptr, ptr %a.rd.data666, align 8
  %a.rd.elem.gep668 = getelementptr i64, ptr %a.rd.data667, i64 %var.load654
  %a.rd.elem669 = load i64, ptr %a.rd.elem.gep668, align 8
  br label %a.rd.done660

a.rd.err.null658:                                 ; preds = %a.after645
  %arena.cur670 = call ptr @dva_arena_current()
  %err.alloc671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 56)
  %err.code.gep672 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 0
  store i64 4011, ptr %err.code.gep672, align 8
  %err.msg.gep673 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep673, align 8
  %err.file.gep674 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep674, align 8
  %err.line.gep675 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 3
  store i64 310, ptr %err.line.gep675, align 8
  %err.col.gep676 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 4
  store i64 33, ptr %err.col.gep676, align 8
  %err.ctx.gep677 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc671, i32 0, i32 5
  %err.ctx0.gep678 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep677, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep678, align 8
  %err.ctx1.gep679 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep677, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep679, align 8
  %err.p2i680 = ptrtoint ptr %err.alloc671 to i64
  br label %a.rd.done660

a.rd.err.oob659:                                  ; preds = %a.rd.check656
  %arena.cur681 = call ptr @dva_arena_current()
  %err.alloc682 = call ptr @dva_arena_alloc(ptr %arena.cur681, i64 56)
  %err.code.gep683 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 0
  store i64 4011, ptr %err.code.gep683, align 8
  %err.msg.gep684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep684, align 8
  %err.file.gep685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep685, align 8
  %err.line.gep686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 3
  store i64 310, ptr %err.line.gep686, align 8
  %err.col.gep687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 4
  store i64 33, ptr %err.col.gep687, align 8
  %err.ctx.gep688 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 5
  %err.ctx0.gep689 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep688, i32 0, i32 0
  store i64 %var.load654, ptr %err.ctx0.gep689, align 8
  %err.ctx1.gep690 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep688, i32 0, i32 1
  store i64 %a.rd.len662, ptr %err.ctx1.gep690, align 8
  %err.p2i691 = ptrtoint ptr %err.alloc682 to i64
  br label %a.rd.done660

a.rd.done660:                                     ; preds = %a.rd.err.oob659, %a.rd.err.null658, %a.rd.ok657
  %a.rd.tag692 = phi i1 [ true, %a.rd.ok657 ], [ false, %a.rd.err.null658 ], [ false, %a.rd.err.oob659 ]
  %a.rd.pay693 = phi i64 [ %a.rd.elem669, %a.rd.ok657 ], [ %err.p2i680, %a.rd.err.null658 ], [ %err.p2i691, %a.rd.err.oob659 ]
  %ram.tag694 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag692, 0
  %ram.pay695 = insertvalue { i1, i64 } %ram.tag694, i64 %a.rd.pay693, 1
  %ram.tag696 = extractvalue { i1, i64 } %ram.pay695, 0
  br i1 %ram.tag696, label %choice.then697, label %choice.else698

choice.then697:                                   ; preds = %a.rd.done660
  %ram.pay700 = extractvalue { i1, i64 } %ram.pay695, 1
  store i64 %ram.pay700, ptr %var._701, align 8
  br label %choice.exit699

choice.else698:                                   ; preds = %a.rd.done660
  %ram.pay702 = extractvalue { i1, i64 } %ram.pay695, 1
  %pay.ptr703 = inttoptr i64 %ram.pay702 to ptr
  store ptr %pay.ptr703, ptr %var._704, align 8
  br label %choice.exit699

choice.exit699:                                   ; preds = %choice.else698, %choice.then697
  %choice.res705 = phi i64 [ %ram.pay700, %choice.then697 ], [ 0, %choice.else698 ]
  store i64 %choice.res705, ptr %var.lu1, align 8
  %var.load706 = load ptr, ptr %var.lows, align 8
  %a.load707 = load ptr, ptr %var.lows, align 8
  %a.null708 = icmp eq ptr %a.load707, null
  br i1 %a.null708, label %a.create709, label %a.after710

a.create709:                                      ; preds = %choice.exit699
  %arena.cur711 = call ptr @dva_arena_current()
  %a.create712 = call ptr @dva_arena_alloc(ptr %arena.cur711, i64 24)
  %arena.cur713 = call ptr @dva_arena_current()
  %a.buf714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 128)
  %a.len.gep715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 0
  store i64 0, ptr %a.len.gep715, align 8
  %a.data.gep716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 1
  store ptr %a.buf714, ptr %a.data.gep716, align 8
  %a.cap.gep717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 2
  store i64 16, ptr %a.cap.gep717, align 8
  store ptr %a.create712, ptr %var.lows, align 8
  br label %a.after710

a.after710:                                       ; preds = %a.create709, %choice.exit699
  %a.load2718 = load ptr, ptr %var.lows, align 8
  %var.load719 = load i64, ptr %var.v, align 8
  %a.rd.nonnull720 = icmp ne ptr %a.load2718, null
  br i1 %a.rd.nonnull720, label %a.rd.check721, label %a.rd.err.null723

a.rd.check721:                                    ; preds = %a.after710
  %a.rd.len726 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2718, i32 0, i32 0
  %a.rd.len727 = load i64, ptr %a.rd.len726, align 8
  %a.rd.ge0728 = icmp sge i64 %var.load719, 0
  %a.rd.lt729 = icmp slt i64 %var.load719, %a.rd.len727
  %a.rd.bounds730 = and i1 %a.rd.ge0728, %a.rd.lt729
  br i1 %a.rd.bounds730, label %a.rd.ok722, label %a.rd.err.oob724

a.rd.ok722:                                       ; preds = %a.rd.check721
  %a.rd.data731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2718, i32 0, i32 1
  %a.rd.data732 = load ptr, ptr %a.rd.data731, align 8
  %a.rd.elem.gep733 = getelementptr i64, ptr %a.rd.data732, i64 %var.load719
  %a.rd.elem734 = load i64, ptr %a.rd.elem.gep733, align 8
  br label %a.rd.done725

a.rd.err.null723:                                 ; preds = %a.after710
  %arena.cur735 = call ptr @dva_arena_current()
  %err.alloc736 = call ptr @dva_arena_alloc(ptr %arena.cur735, i64 56)
  %err.code.gep737 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 0
  store i64 4011, ptr %err.code.gep737, align 8
  %err.msg.gep738 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep738, align 8
  %err.file.gep739 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep739, align 8
  %err.line.gep740 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 3
  store i64 311, ptr %err.line.gep740, align 8
  %err.col.gep741 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 4
  store i64 35, ptr %err.col.gep741, align 8
  %err.ctx.gep742 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 5
  %err.ctx0.gep743 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep742, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep743, align 8
  %err.ctx1.gep744 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep742, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep744, align 8
  %err.p2i745 = ptrtoint ptr %err.alloc736 to i64
  br label %a.rd.done725

a.rd.err.oob724:                                  ; preds = %a.rd.check721
  %arena.cur746 = call ptr @dva_arena_current()
  %err.alloc747 = call ptr @dva_arena_alloc(ptr %arena.cur746, i64 56)
  %err.code.gep748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 0
  store i64 4011, ptr %err.code.gep748, align 8
  %err.msg.gep749 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep749, align 8
  %err.file.gep750 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep750, align 8
  %err.line.gep751 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 3
  store i64 311, ptr %err.line.gep751, align 8
  %err.col.gep752 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 4
  store i64 35, ptr %err.col.gep752, align 8
  %err.ctx.gep753 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 5
  %err.ctx0.gep754 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep753, i32 0, i32 0
  store i64 %var.load719, ptr %err.ctx0.gep754, align 8
  %err.ctx1.gep755 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep753, i32 0, i32 1
  store i64 %a.rd.len727, ptr %err.ctx1.gep755, align 8
  %err.p2i756 = ptrtoint ptr %err.alloc747 to i64
  br label %a.rd.done725

a.rd.done725:                                     ; preds = %a.rd.err.oob724, %a.rd.err.null723, %a.rd.ok722
  %a.rd.tag757 = phi i1 [ true, %a.rd.ok722 ], [ false, %a.rd.err.null723 ], [ false, %a.rd.err.oob724 ]
  %a.rd.pay758 = phi i64 [ %a.rd.elem734, %a.rd.ok722 ], [ %err.p2i745, %a.rd.err.null723 ], [ %err.p2i756, %a.rd.err.oob724 ]
  %ram.tag759 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag757, 0
  %ram.pay760 = insertvalue { i1, i64 } %ram.tag759, i64 %a.rd.pay758, 1
  %ram.tag761 = extractvalue { i1, i64 } %ram.pay760, 0
  br i1 %ram.tag761, label %choice.then762, label %choice.else763

choice.then762:                                   ; preds = %a.rd.done725
  %ram.pay765 = extractvalue { i1, i64 } %ram.pay760, 1
  store i64 %ram.pay765, ptr %var._766, align 8
  br label %choice.exit764

choice.else763:                                   ; preds = %a.rd.done725
  %ram.pay767 = extractvalue { i1, i64 } %ram.pay760, 1
  %pay.ptr768 = inttoptr i64 %ram.pay767 to ptr
  store ptr %pay.ptr768, ptr %var._769, align 8
  br label %choice.exit764

choice.exit764:                                   ; preds = %choice.else763, %choice.then762
  %choice.res770 = phi i64 [ %ram.pay765, %choice.then762 ], [ 0, %choice.else763 ]
  store i64 %choice.res770, ptr %var.low_v, align 8
  %var.load771 = load i64, ptr %var.low_v, align 8
  %var.load772 = load i64, ptr %var.lu1, align 8
  %cmptmp773 = icmp slt i64 %var.load771, %var.load772
  br i1 %cmptmp773, label %choice.then774, label %choice.else775

choice.then774:                                   ; preds = %choice.exit764
  %var.load777 = load i64, ptr %var.low_v, align 8
  br label %choice.exit776

choice.else775:                                   ; preds = %choice.exit764
  %var.load778 = load i64, ptr %var.lu1, align 8
  br label %choice.exit776

choice.exit776:                                   ; preds = %choice.else775, %choice.then774
  %choice.res779 = phi i64 [ %var.load777, %choice.then774 ], [ %var.load778, %choice.else775 ]
  store i64 %choice.res779, ptr %var.min_v, align 8
  %var.load780 = load ptr, ptr %var.lows, align 8
  %a.load781 = load ptr, ptr %var.lows, align 8
  %a.null782 = icmp eq ptr %a.load781, null
  br i1 %a.null782, label %a.create783, label %a.after784

a.create783:                                      ; preds = %choice.exit776
  %arena.cur785 = call ptr @dva_arena_current()
  %a.create786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 24)
  %arena.cur787 = call ptr @dva_arena_current()
  %a.buf788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 128)
  %a.len.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 0
  store i64 0, ptr %a.len.gep789, align 8
  %a.data.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 1
  store ptr %a.buf788, ptr %a.data.gep790, align 8
  %a.cap.gep791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 2
  store i64 16, ptr %a.cap.gep791, align 8
  store ptr %a.create786, ptr %var.lows, align 8
  br label %a.after784

a.after784:                                       ; preds = %a.create783, %choice.exit776
  %a.load2792 = load ptr, ptr %var.lows, align 8
  %var.load793 = load i64, ptr %var.u, align 8
  %var.load794 = load i64, ptr %var.min_v, align 8
  %a.wr.nonnull795 = icmp ne ptr %a.load2792, null
  br i1 %a.wr.nonnull795, label %a.wr.check796, label %a.wr.err.null798

a.wr.check796:                                    ; preds = %a.after784
  %a.wr.len801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2792, i32 0, i32 0
  %a.wr.len802 = load i64, ptr %a.wr.len801, align 8
  %a.wr.ge0803 = icmp sge i64 %var.load793, 0
  %a.wr.lt804 = icmp slt i64 %var.load793, %a.wr.len802
  %a.wr.bounds805 = and i1 %a.wr.ge0803, %a.wr.lt804
  br i1 %a.wr.bounds805, label %a.wr.ok797, label %a.wr.err.oob799

a.wr.ok797:                                       ; preds = %a.wr.check796
  %a.wr.data806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2792, i32 0, i32 1
  %a.wr.data807 = load ptr, ptr %a.wr.data806, align 8
  %a.elem.gep808 = getelementptr i64, ptr %a.wr.data807, i64 %var.load793
  store i64 %var.load794, ptr %a.elem.gep808, align 8
  br label %a.wr.done800

a.wr.err.null798:                                 ; preds = %a.after784
  %arena.cur809 = call ptr @dva_arena_current()
  %err.alloc810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 56)
  %err.code.gep811 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 0
  store i64 4011, ptr %err.code.gep811, align 8
  %err.msg.gep812 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep812, align 8
  %err.file.gep813 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep813, align 8
  %err.line.gep814 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 3
  store i64 0, ptr %err.line.gep814, align 8
  %err.col.gep815 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 4
  store i64 0, ptr %err.col.gep815, align 8
  %err.ctx.gep816 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc810, i32 0, i32 5
  %err.ctx0.gep817 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep816, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep817, align 8
  %err.ctx1.gep818 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep816, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep818, align 8
  br label %a.wr.done800

a.wr.err.oob799:                                  ; preds = %a.wr.check796
  %arena.cur819 = call ptr @dva_arena_current()
  %err.alloc820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 56)
  %err.code.gep821 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 0
  store i64 4011, ptr %err.code.gep821, align 8
  %err.msg.gep822 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep822, align 8
  %err.file.gep823 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep823, align 8
  %err.line.gep824 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 3
  store i64 0, ptr %err.line.gep824, align 8
  %err.col.gep825 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 4
  store i64 0, ptr %err.col.gep825, align 8
  %err.ctx.gep826 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc820, i32 0, i32 5
  %err.ctx0.gep827 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep826, i32 0, i32 0
  store i64 %var.load793, ptr %err.ctx0.gep827, align 8
  %err.ctx1.gep828 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep826, i32 0, i32 1
  store i64 %a.wr.len802, ptr %err.ctx1.gep828, align 8
  br label %a.wr.done800

a.wr.done800:                                     ; preds = %a.wr.err.oob799, %a.wr.err.null798, %a.wr.ok797
  %a.wr.tag829 = phi i64 [ 1, %a.wr.ok797 ], [ 0, %a.wr.err.null798 ], [ 0, %a.wr.err.oob799 ]
  %a.wr.pay830 = phi ptr [ null, %a.wr.ok797 ], [ %err.alloc810, %a.wr.err.null798 ], [ %err.alloc820, %a.wr.err.oob799 ]
  %arena.cur831 = call ptr @dva_arena_current()
  %a.wr.succ832 = call ptr @dva_arena_alloc(ptr %arena.cur831, i64 16)
  %tag.gep833 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ832, i32 0, i32 0
  %pay.gep834 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ832, i32 0, i32 1
  store i64 %a.wr.tag829, ptr %tag.gep833, align 8
  store ptr %a.wr.pay830, ptr %pay.gep834, align 8
  %tag.gep835 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ832, i32 0, i32 0
  %tag.id836 = load i64, ptr %tag.gep835, align 8
  %tag.eq.one837 = icmp eq i64 %tag.id836, 1
  %tag.eq.two838 = icmp eq i64 %tag.id836, 2
  %is.pos839 = or i1 %tag.eq.one837, %tag.eq.two838
  %pay.gep840 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ832, i32 0, i32 1
  %payload.ptr841 = load ptr, ptr %pay.gep840, align 8
  br i1 %is.pos839, label %choice.then842, label %choice.else843

choice.then842:                                   ; preds = %a.wr.done800
  br label %choice.exit844

choice.else843:                                   ; preds = %a.wr.done800
  store ptr %payload.ptr841, ptr %var._845, align 8
  store ptr %payload.ptr841, ptr %var._846, align 8
  store ptr %payload.ptr841, ptr %var._847, align 8
  %err.code.gep848 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr841, i32 0, i32 0
  %err.code849 = load i64, ptr %err.code.gep848, align 8
  %err.msg.gep850 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr841, i32 0, i32 1
  %err.msg.struct851 = load ptr, ptr %err.msg.gep850, align 8
  %err.file.gep852 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr841, i32 0, i32 2
  %err.file.struct853 = load ptr, ptr %err.file.gep852, align 8
  %err.line.gep854 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr841, i32 0, i32 3
  %err.line855 = load i64, ptr %err.line.gep854, align 8
  %err.col.gep856 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr841, i32 0, i32 4
  %err.col857 = load i64, ptr %err.col.gep856, align 8
  %err.msg.len858 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct851, i32 0, i32 0
  %err.msg.len859 = load i64, ptr %err.msg.len858, align 8
  %err.msg.len860 = and i64 %err.msg.len859, 281474976710655
  %str.tag861 = lshr i64 %err.msg.len859, 48
  %str.immortal862 = icmp eq i64 %str.tag861, 0
  br i1 %str.immortal862, label %str_ok864, label %str_gen_check863

choice.exit844:                                   ; preds = %err.abort891, %choice.then842
  br label %choice.exit637

str_gen_check863:                                 ; preds = %choice.else843
  %arena.cur866 = call ptr @dva_arena_current()
  %tag.valid867 = call i1 @dva_arena_validate_tag(ptr %arena.cur866, i64 %str.tag861)
  br i1 %tag.valid867, label %str_ok864, label %str_stale865

str_ok864:                                        ; preds = %str_stale865, %str_gen_check863, %choice.else843
  %err.msg.len32868 = trunc i64 %err.msg.len860 to i32
  %err.msg.data869 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct851, i32 0, i32 1
  %err.msg.data870 = load ptr, ptr %err.msg.data869, align 8
  %err.file.len871 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct853, i32 0, i32 0
  %err.file.len872 = load i64, ptr %err.file.len871, align 8
  %err.file.len873 = and i64 %err.file.len872, 281474976710655
  %str.tag874 = lshr i64 %err.file.len872, 48
  %str.immortal875 = icmp eq i64 %str.tag874, 0
  br i1 %str.immortal875, label %str_ok877, label %str_gen_check876

str_stale865:                                     ; preds = %str_gen_check863
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok864

str_gen_check876:                                 ; preds = %str_ok864
  %arena.cur879 = call ptr @dva_arena_current()
  %tag.valid880 = call i1 @dva_arena_validate_tag(ptr %arena.cur879, i64 %str.tag874)
  br i1 %tag.valid880, label %str_ok877, label %str_stale878

str_ok877:                                        ; preds = %str_stale878, %str_gen_check876, %str_ok864
  %err.file.len32881 = trunc i64 %err.file.len873 to i32
  %err.file.data882 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct853, i32 0, i32 1
  %err.file.data883 = load ptr, ptr %err.file.data882, align 8
  %err.thread.rec884 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread885 = icmp ne ptr %err.thread.rec884, null
  br i1 %err.is.thread885, label %err.thread886, label %err.normal887

str_stale878:                                     ; preds = %str_gen_check876
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok877

err.thread886:                                    ; preds = %str_ok877
  %err.haserr.gep888 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec884, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep888, align 8
  %err.err.gep889 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec884, i32 0, i32 7
  store ptr %payload.ptr841, ptr %err.err.gep889, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal887:                                    ; preds = %str_ok877
  %err.panic.printf890 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code849, i32 %err.msg.len32868, ptr %err.msg.data870, i32 %err.file.len32881, ptr %err.file.data883, i64 %err.line855, i64 %err.col857)
  call void @exit(i32 1)
  unreachable

err.abort891:                                     ; No predecessors!
  br label %choice.exit844

a.create895:                                      ; preds = %choice.else636
  %arena.cur897 = call ptr @dva_arena_current()
  %a.create898 = call ptr @dva_arena_alloc(ptr %arena.cur897, i64 24)
  %arena.cur899 = call ptr @dva_arena_current()
  %a.buf900 = call ptr @dva_arena_alloc(ptr %arena.cur899, i64 128)
  %a.len.gep901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 0
  store i64 0, ptr %a.len.gep901, align 8
  %a.data.gep902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 1
  store ptr %a.buf900, ptr %a.data.gep902, align 8
  %a.cap.gep903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 2
  store i64 16, ptr %a.cap.gep903, align 8
  store ptr %a.create898, ptr %var.ons, align 8
  br label %a.after896

a.after896:                                       ; preds = %a.create895, %choice.else636
  %a.load2904 = load ptr, ptr %var.ons, align 8
  %var.load905 = load i64, ptr %var.v, align 8
  %a.rd.nonnull906 = icmp ne ptr %a.load2904, null
  br i1 %a.rd.nonnull906, label %a.rd.check907, label %a.rd.err.null909

a.rd.check907:                                    ; preds = %a.after896
  %a.rd.len912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2904, i32 0, i32 0
  %a.rd.len913 = load i64, ptr %a.rd.len912, align 8
  %a.rd.ge0914 = icmp sge i64 %var.load905, 0
  %a.rd.lt915 = icmp slt i64 %var.load905, %a.rd.len913
  %a.rd.bounds916 = and i1 %a.rd.ge0914, %a.rd.lt915
  br i1 %a.rd.bounds916, label %a.rd.ok908, label %a.rd.err.oob910

a.rd.ok908:                                       ; preds = %a.rd.check907
  %a.rd.data917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2904, i32 0, i32 1
  %a.rd.data918 = load ptr, ptr %a.rd.data917, align 8
  %a.rd.elem.gep919 = getelementptr i64, ptr %a.rd.data918, i64 %var.load905
  %a.rd.elem920 = load i64, ptr %a.rd.elem.gep919, align 8
  br label %a.rd.done911

a.rd.err.null909:                                 ; preds = %a.after896
  %arena.cur921 = call ptr @dva_arena_current()
  %err.alloc922 = call ptr @dva_arena_alloc(ptr %arena.cur921, i64 56)
  %err.code.gep923 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 0
  store i64 4011, ptr %err.code.gep923, align 8
  %err.msg.gep924 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep924, align 8
  %err.file.gep925 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep925, align 8
  %err.line.gep926 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 3
  store i64 315, ptr %err.line.gep926, align 8
  %err.col.gep927 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 4
  store i64 33, ptr %err.col.gep927, align 8
  %err.ctx.gep928 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc922, i32 0, i32 5
  %err.ctx0.gep929 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep928, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep929, align 8
  %err.ctx1.gep930 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep928, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep930, align 8
  %err.p2i931 = ptrtoint ptr %err.alloc922 to i64
  br label %a.rd.done911

a.rd.err.oob910:                                  ; preds = %a.rd.check907
  %arena.cur932 = call ptr @dva_arena_current()
  %err.alloc933 = call ptr @dva_arena_alloc(ptr %arena.cur932, i64 56)
  %err.code.gep934 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 0
  store i64 4011, ptr %err.code.gep934, align 8
  %err.msg.gep935 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep935, align 8
  %err.file.gep936 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep936, align 8
  %err.line.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 3
  store i64 315, ptr %err.line.gep937, align 8
  %err.col.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 4
  store i64 33, ptr %err.col.gep938, align 8
  %err.ctx.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 5
  %err.ctx0.gep940 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep939, i32 0, i32 0
  store i64 %var.load905, ptr %err.ctx0.gep940, align 8
  %err.ctx1.gep941 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep939, i32 0, i32 1
  store i64 %a.rd.len913, ptr %err.ctx1.gep941, align 8
  %err.p2i942 = ptrtoint ptr %err.alloc933 to i64
  br label %a.rd.done911

a.rd.done911:                                     ; preds = %a.rd.err.oob910, %a.rd.err.null909, %a.rd.ok908
  %a.rd.tag943 = phi i1 [ true, %a.rd.ok908 ], [ false, %a.rd.err.null909 ], [ false, %a.rd.err.oob910 ]
  %a.rd.pay944 = phi i64 [ %a.rd.elem920, %a.rd.ok908 ], [ %err.p2i931, %a.rd.err.null909 ], [ %err.p2i942, %a.rd.err.oob910 ]
  %ram.tag945 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag943, 0
  %ram.pay946 = insertvalue { i1, i64 } %ram.tag945, i64 %a.rd.pay944, 1
  %ram.tag947 = extractvalue { i1, i64 } %ram.pay946, 0
  br i1 %ram.tag947, label %choice.then948, label %choice.else949

choice.then948:                                   ; preds = %a.rd.done911
  %ram.pay951 = extractvalue { i1, i64 } %ram.pay946, 1
  %pay.flag = trunc i64 %ram.pay951 to i1
  store i1 %pay.flag, ptr %var._952, align 1
  br label %choice.exit950

choice.else949:                                   ; preds = %a.rd.done911
  %ram.pay953 = extractvalue { i1, i64 } %ram.pay946, 1
  %pay.ptr954 = inttoptr i64 %ram.pay953 to ptr
  store ptr %pay.ptr954, ptr %var._955, align 8
  br label %choice.exit950

choice.exit950:                                   ; preds = %choice.else949, %choice.then948
  %choice.res956 = phi i1 [ %pay.flag, %choice.then948 ], [ false, %choice.else949 ]
  store i1 %choice.res956, ptr %var.v_on, align 1
  %var.load957 = load i1, ptr %var.v_on, align 1
  br i1 %var.load957, label %choice.then958, label %choice.exit959

choice.then958:                                   ; preds = %choice.exit950
  %var.load960 = load ptr, ptr %var.lows, align 8
  %a.load961 = load ptr, ptr %var.lows, align 8
  %a.null962 = icmp eq ptr %a.load961, null
  br i1 %a.null962, label %a.create963, label %a.after964

choice.exit959:                                   ; preds = %choice.exit1163, %choice.exit950
  br label %choice.exit637

a.create963:                                      ; preds = %choice.then958
  %arena.cur965 = call ptr @dva_arena_current()
  %a.create966 = call ptr @dva_arena_alloc(ptr %arena.cur965, i64 24)
  %arena.cur967 = call ptr @dva_arena_current()
  %a.buf968 = call ptr @dva_arena_alloc(ptr %arena.cur967, i64 128)
  %a.len.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 0
  store i64 0, ptr %a.len.gep969, align 8
  %a.data.gep970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 1
  store ptr %a.buf968, ptr %a.data.gep970, align 8
  %a.cap.gep971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 2
  store i64 16, ptr %a.cap.gep971, align 8
  store ptr %a.create966, ptr %var.lows, align 8
  br label %a.after964

a.after964:                                       ; preds = %a.create963, %choice.then958
  %a.load2972 = load ptr, ptr %var.lows, align 8
  %var.load973 = load i64, ptr %var.u, align 8
  %a.rd.nonnull974 = icmp ne ptr %a.load2972, null
  br i1 %a.rd.nonnull974, label %a.rd.check975, label %a.rd.err.null977

a.rd.check975:                                    ; preds = %a.after964
  %a.rd.len980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2972, i32 0, i32 0
  %a.rd.len981 = load i64, ptr %a.rd.len980, align 8
  %a.rd.ge0982 = icmp sge i64 %var.load973, 0
  %a.rd.lt983 = icmp slt i64 %var.load973, %a.rd.len981
  %a.rd.bounds984 = and i1 %a.rd.ge0982, %a.rd.lt983
  br i1 %a.rd.bounds984, label %a.rd.ok976, label %a.rd.err.oob978

a.rd.ok976:                                       ; preds = %a.rd.check975
  %a.rd.data985 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2972, i32 0, i32 1
  %a.rd.data986 = load ptr, ptr %a.rd.data985, align 8
  %a.rd.elem.gep987 = getelementptr i64, ptr %a.rd.data986, i64 %var.load973
  %a.rd.elem988 = load i64, ptr %a.rd.elem.gep987, align 8
  br label %a.rd.done979

a.rd.err.null977:                                 ; preds = %a.after964
  %arena.cur989 = call ptr @dva_arena_current()
  %err.alloc990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 56)
  %err.code.gep991 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 0
  store i64 4011, ptr %err.code.gep991, align 8
  %err.msg.gep992 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep992, align 8
  %err.file.gep993 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep993, align 8
  %err.line.gep994 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 3
  store i64 318, ptr %err.line.gep994, align 8
  %err.col.gep995 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 4
  store i64 39, ptr %err.col.gep995, align 8
  %err.ctx.gep996 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc990, i32 0, i32 5
  %err.ctx0.gep997 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep996, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep997, align 8
  %err.ctx1.gep998 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep996, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep998, align 8
  %err.p2i999 = ptrtoint ptr %err.alloc990 to i64
  br label %a.rd.done979

a.rd.err.oob978:                                  ; preds = %a.rd.check975
  %arena.cur1000 = call ptr @dva_arena_current()
  %err.alloc1001 = call ptr @dva_arena_alloc(ptr %arena.cur1000, i64 56)
  %err.code.gep1002 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1002, align 8
  %err.msg.gep1003 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1003, align 8
  %err.file.gep1004 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1004, align 8
  %err.line.gep1005 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 3
  store i64 318, ptr %err.line.gep1005, align 8
  %err.col.gep1006 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 4
  store i64 39, ptr %err.col.gep1006, align 8
  %err.ctx.gep1007 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1001, i32 0, i32 5
  %err.ctx0.gep1008 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1007, i32 0, i32 0
  store i64 %var.load973, ptr %err.ctx0.gep1008, align 8
  %err.ctx1.gep1009 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1007, i32 0, i32 1
  store i64 %a.rd.len981, ptr %err.ctx1.gep1009, align 8
  %err.p2i1010 = ptrtoint ptr %err.alloc1001 to i64
  br label %a.rd.done979

a.rd.done979:                                     ; preds = %a.rd.err.oob978, %a.rd.err.null977, %a.rd.ok976
  %a.rd.tag1011 = phi i1 [ true, %a.rd.ok976 ], [ false, %a.rd.err.null977 ], [ false, %a.rd.err.oob978 ]
  %a.rd.pay1012 = phi i64 [ %a.rd.elem988, %a.rd.ok976 ], [ %err.p2i999, %a.rd.err.null977 ], [ %err.p2i1010, %a.rd.err.oob978 ]
  %ram.tag1013 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1011, 0
  %ram.pay1014 = insertvalue { i1, i64 } %ram.tag1013, i64 %a.rd.pay1012, 1
  %ram.tag1015 = extractvalue { i1, i64 } %ram.pay1014, 0
  br i1 %ram.tag1015, label %choice.then1016, label %choice.else1017

choice.then1016:                                  ; preds = %a.rd.done979
  %ram.pay1019 = extractvalue { i1, i64 } %ram.pay1014, 1
  store i64 %ram.pay1019, ptr %var._1020, align 8
  br label %choice.exit1018

choice.else1017:                                  ; preds = %a.rd.done979
  %ram.pay1021 = extractvalue { i1, i64 } %ram.pay1014, 1
  %pay.ptr1022 = inttoptr i64 %ram.pay1021 to ptr
  store ptr %pay.ptr1022, ptr %var._1023, align 8
  br label %choice.exit1018

choice.exit1018:                                  ; preds = %choice.else1017, %choice.then1016
  %choice.res1024 = phi i64 [ %ram.pay1019, %choice.then1016 ], [ 0, %choice.else1017 ]
  store i64 %choice.res1024, ptr %var.lu2, align 8
  %var.load1025 = load ptr, ptr %var.idxs, align 8
  %a.load1026 = load ptr, ptr %var.idxs, align 8
  %a.null1027 = icmp eq ptr %a.load1026, null
  br i1 %a.null1027, label %a.create1028, label %a.after1029

a.create1028:                                     ; preds = %choice.exit1018
  %arena.cur1030 = call ptr @dva_arena_current()
  %a.create1031 = call ptr @dva_arena_alloc(ptr %arena.cur1030, i64 24)
  %arena.cur1032 = call ptr @dva_arena_current()
  %a.buf1033 = call ptr @dva_arena_alloc(ptr %arena.cur1032, i64 128)
  %a.len.gep1034 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 0
  store i64 0, ptr %a.len.gep1034, align 8
  %a.data.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 1
  store ptr %a.buf1033, ptr %a.data.gep1035, align 8
  %a.cap.gep1036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1036, align 8
  store ptr %a.create1031, ptr %var.idxs, align 8
  br label %a.after1029

a.after1029:                                      ; preds = %a.create1028, %choice.exit1018
  %a.load21037 = load ptr, ptr %var.idxs, align 8
  %var.load1038 = load i64, ptr %var.v, align 8
  %a.rd.nonnull1039 = icmp ne ptr %a.load21037, null
  br i1 %a.rd.nonnull1039, label %a.rd.check1040, label %a.rd.err.null1042

a.rd.check1040:                                   ; preds = %a.after1029
  %a.rd.len1045 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21037, i32 0, i32 0
  %a.rd.len1046 = load i64, ptr %a.rd.len1045, align 8
  %a.rd.ge01047 = icmp sge i64 %var.load1038, 0
  %a.rd.lt1048 = icmp slt i64 %var.load1038, %a.rd.len1046
  %a.rd.bounds1049 = and i1 %a.rd.ge01047, %a.rd.lt1048
  br i1 %a.rd.bounds1049, label %a.rd.ok1041, label %a.rd.err.oob1043

a.rd.ok1041:                                      ; preds = %a.rd.check1040
  %a.rd.data1050 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21037, i32 0, i32 1
  %a.rd.data1051 = load ptr, ptr %a.rd.data1050, align 8
  %a.rd.elem.gep1052 = getelementptr i64, ptr %a.rd.data1051, i64 %var.load1038
  %a.rd.elem1053 = load i64, ptr %a.rd.elem.gep1052, align 8
  br label %a.rd.done1044

a.rd.err.null1042:                                ; preds = %a.after1029
  %arena.cur1054 = call ptr @dva_arena_current()
  %err.alloc1055 = call ptr @dva_arena_alloc(ptr %arena.cur1054, i64 56)
  %err.code.gep1056 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1056, align 8
  %err.msg.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1057, align 8
  %err.file.gep1058 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1058, align 8
  %err.line.gep1059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 3
  store i64 319, ptr %err.line.gep1059, align 8
  %err.col.gep1060 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 4
  store i64 41, ptr %err.col.gep1060, align 8
  %err.ctx.gep1061 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1055, i32 0, i32 5
  %err.ctx0.gep1062 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1061, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1062, align 8
  %err.ctx1.gep1063 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1061, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1063, align 8
  %err.p2i1064 = ptrtoint ptr %err.alloc1055 to i64
  br label %a.rd.done1044

a.rd.err.oob1043:                                 ; preds = %a.rd.check1040
  %arena.cur1065 = call ptr @dva_arena_current()
  %err.alloc1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 56)
  %err.code.gep1067 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1067, align 8
  %err.msg.gep1068 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1068, align 8
  %err.file.gep1069 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1069, align 8
  %err.line.gep1070 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 3
  store i64 319, ptr %err.line.gep1070, align 8
  %err.col.gep1071 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 4
  store i64 41, ptr %err.col.gep1071, align 8
  %err.ctx.gep1072 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 5
  %err.ctx0.gep1073 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1072, i32 0, i32 0
  store i64 %var.load1038, ptr %err.ctx0.gep1073, align 8
  %err.ctx1.gep1074 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1072, i32 0, i32 1
  store i64 %a.rd.len1046, ptr %err.ctx1.gep1074, align 8
  %err.p2i1075 = ptrtoint ptr %err.alloc1066 to i64
  br label %a.rd.done1044

a.rd.done1044:                                    ; preds = %a.rd.err.oob1043, %a.rd.err.null1042, %a.rd.ok1041
  %a.rd.tag1076 = phi i1 [ true, %a.rd.ok1041 ], [ false, %a.rd.err.null1042 ], [ false, %a.rd.err.oob1043 ]
  %a.rd.pay1077 = phi i64 [ %a.rd.elem1053, %a.rd.ok1041 ], [ %err.p2i1064, %a.rd.err.null1042 ], [ %err.p2i1075, %a.rd.err.oob1043 ]
  %ram.tag1078 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1076, 0
  %ram.pay1079 = insertvalue { i1, i64 } %ram.tag1078, i64 %a.rd.pay1077, 1
  %ram.tag1080 = extractvalue { i1, i64 } %ram.pay1079, 0
  br i1 %ram.tag1080, label %choice.then1081, label %choice.else1082

choice.then1081:                                  ; preds = %a.rd.done1044
  %ram.pay1084 = extractvalue { i1, i64 } %ram.pay1079, 1
  store i64 %ram.pay1084, ptr %var._1085, align 8
  br label %choice.exit1083

choice.else1082:                                  ; preds = %a.rd.done1044
  %ram.pay1086 = extractvalue { i1, i64 } %ram.pay1079, 1
  %pay.ptr1087 = inttoptr i64 %ram.pay1086 to ptr
  store ptr %pay.ptr1087, ptr %var._1088, align 8
  br label %choice.exit1083

choice.exit1083:                                  ; preds = %choice.else1082, %choice.then1081
  %choice.res1089 = phi i64 [ %ram.pay1084, %choice.then1081 ], [ 0, %choice.else1082 ]
  store i64 %choice.res1089, ptr %var.idx_v, align 8
  %var.load1090 = load i64, ptr %var.idx_v, align 8
  %var.load1091 = load i64, ptr %var.lu2, align 8
  %cmptmp1092 = icmp slt i64 %var.load1090, %var.load1091
  br i1 %cmptmp1092, label %choice.then1093, label %choice.else1094

choice.then1093:                                  ; preds = %choice.exit1083
  %var.load1096 = load i64, ptr %var.idx_v, align 8
  br label %choice.exit1095

choice.else1094:                                  ; preds = %choice.exit1083
  %var.load1097 = load i64, ptr %var.lu2, align 8
  br label %choice.exit1095

choice.exit1095:                                  ; preds = %choice.else1094, %choice.then1093
  %choice.res1098 = phi i64 [ %var.load1096, %choice.then1093 ], [ %var.load1097, %choice.else1094 ]
  store i64 %choice.res1098, ptr %var.min_idx, align 8
  %var.load1099 = load ptr, ptr %var.lows, align 8
  %a.load1100 = load ptr, ptr %var.lows, align 8
  %a.null1101 = icmp eq ptr %a.load1100, null
  br i1 %a.null1101, label %a.create1102, label %a.after1103

a.create1102:                                     ; preds = %choice.exit1095
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
  store ptr %a.create1105, ptr %var.lows, align 8
  br label %a.after1103

a.after1103:                                      ; preds = %a.create1102, %choice.exit1095
  %a.load21111 = load ptr, ptr %var.lows, align 8
  %var.load1112 = load i64, ptr %var.u, align 8
  %var.load1113 = load i64, ptr %var.min_idx, align 8
  %a.wr.nonnull1114 = icmp ne ptr %a.load21111, null
  br i1 %a.wr.nonnull1114, label %a.wr.check1115, label %a.wr.err.null1117

a.wr.check1115:                                   ; preds = %a.after1103
  %a.wr.len1120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21111, i32 0, i32 0
  %a.wr.len1121 = load i64, ptr %a.wr.len1120, align 8
  %a.wr.ge01122 = icmp sge i64 %var.load1112, 0
  %a.wr.lt1123 = icmp slt i64 %var.load1112, %a.wr.len1121
  %a.wr.bounds1124 = and i1 %a.wr.ge01122, %a.wr.lt1123
  br i1 %a.wr.bounds1124, label %a.wr.ok1116, label %a.wr.err.oob1118

a.wr.ok1116:                                      ; preds = %a.wr.check1115
  %a.wr.data1125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21111, i32 0, i32 1
  %a.wr.data1126 = load ptr, ptr %a.wr.data1125, align 8
  %a.elem.gep1127 = getelementptr i64, ptr %a.wr.data1126, i64 %var.load1112
  store i64 %var.load1113, ptr %a.elem.gep1127, align 8
  br label %a.wr.done1119

a.wr.err.null1117:                                ; preds = %a.after1103
  %arena.cur1128 = call ptr @dva_arena_current()
  %err.alloc1129 = call ptr @dva_arena_alloc(ptr %arena.cur1128, i64 56)
  %err.code.gep1130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1130, align 8
  %err.msg.gep1131 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1131, align 8
  %err.file.gep1132 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1132, align 8
  %err.line.gep1133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 3
  store i64 0, ptr %err.line.gep1133, align 8
  %err.col.gep1134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 4
  store i64 0, ptr %err.col.gep1134, align 8
  %err.ctx.gep1135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1129, i32 0, i32 5
  %err.ctx0.gep1136 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1135, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1136, align 8
  %err.ctx1.gep1137 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1135, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1137, align 8
  br label %a.wr.done1119

a.wr.err.oob1118:                                 ; preds = %a.wr.check1115
  %arena.cur1138 = call ptr @dva_arena_current()
  %err.alloc1139 = call ptr @dva_arena_alloc(ptr %arena.cur1138, i64 56)
  %err.code.gep1140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1140, align 8
  %err.msg.gep1141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1141, align 8
  %err.file.gep1142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1142, align 8
  %err.line.gep1143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 3
  store i64 0, ptr %err.line.gep1143, align 8
  %err.col.gep1144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 4
  store i64 0, ptr %err.col.gep1144, align 8
  %err.ctx.gep1145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 5
  %err.ctx0.gep1146 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1145, i32 0, i32 0
  store i64 %var.load1112, ptr %err.ctx0.gep1146, align 8
  %err.ctx1.gep1147 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1145, i32 0, i32 1
  store i64 %a.wr.len1121, ptr %err.ctx1.gep1147, align 8
  br label %a.wr.done1119

a.wr.done1119:                                    ; preds = %a.wr.err.oob1118, %a.wr.err.null1117, %a.wr.ok1116
  %a.wr.tag1148 = phi i64 [ 1, %a.wr.ok1116 ], [ 0, %a.wr.err.null1117 ], [ 0, %a.wr.err.oob1118 ]
  %a.wr.pay1149 = phi ptr [ null, %a.wr.ok1116 ], [ %err.alloc1129, %a.wr.err.null1117 ], [ %err.alloc1139, %a.wr.err.oob1118 ]
  %arena.cur1150 = call ptr @dva_arena_current()
  %a.wr.succ1151 = call ptr @dva_arena_alloc(ptr %arena.cur1150, i64 16)
  %tag.gep1152 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1151, i32 0, i32 0
  %pay.gep1153 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1151, i32 0, i32 1
  store i64 %a.wr.tag1148, ptr %tag.gep1152, align 8
  store ptr %a.wr.pay1149, ptr %pay.gep1153, align 8
  %tag.gep1154 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1151, i32 0, i32 0
  %tag.id1155 = load i64, ptr %tag.gep1154, align 8
  %tag.eq.one1156 = icmp eq i64 %tag.id1155, 1
  %tag.eq.two1157 = icmp eq i64 %tag.id1155, 2
  %is.pos1158 = or i1 %tag.eq.one1156, %tag.eq.two1157
  %pay.gep1159 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1151, i32 0, i32 1
  %payload.ptr1160 = load ptr, ptr %pay.gep1159, align 8
  br i1 %is.pos1158, label %choice.then1161, label %choice.else1162

choice.then1161:                                  ; preds = %a.wr.done1119
  br label %choice.exit1163

choice.else1162:                                  ; preds = %a.wr.done1119
  store ptr %payload.ptr1160, ptr %var._1164, align 8
  store ptr %payload.ptr1160, ptr %var._1165, align 8
  store ptr %payload.ptr1160, ptr %var._1166, align 8
  %err.code.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1160, i32 0, i32 0
  %err.code1168 = load i64, ptr %err.code.gep1167, align 8
  %err.msg.gep1169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1160, i32 0, i32 1
  %err.msg.struct1170 = load ptr, ptr %err.msg.gep1169, align 8
  %err.file.gep1171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1160, i32 0, i32 2
  %err.file.struct1172 = load ptr, ptr %err.file.gep1171, align 8
  %err.line.gep1173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1160, i32 0, i32 3
  %err.line1174 = load i64, ptr %err.line.gep1173, align 8
  %err.col.gep1175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1160, i32 0, i32 4
  %err.col1176 = load i64, ptr %err.col.gep1175, align 8
  %err.msg.len1177 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1170, i32 0, i32 0
  %err.msg.len1178 = load i64, ptr %err.msg.len1177, align 8
  %err.msg.len1179 = and i64 %err.msg.len1178, 281474976710655
  %str.tag1180 = lshr i64 %err.msg.len1178, 48
  %str.immortal1181 = icmp eq i64 %str.tag1180, 0
  br i1 %str.immortal1181, label %str_ok1183, label %str_gen_check1182

choice.exit1163:                                  ; preds = %err.abort1210, %choice.then1161
  br label %choice.exit959

str_gen_check1182:                                ; preds = %choice.else1162
  %arena.cur1185 = call ptr @dva_arena_current()
  %tag.valid1186 = call i1 @dva_arena_validate_tag(ptr %arena.cur1185, i64 %str.tag1180)
  br i1 %tag.valid1186, label %str_ok1183, label %str_stale1184

str_ok1183:                                       ; preds = %str_stale1184, %str_gen_check1182, %choice.else1162
  %err.msg.len321187 = trunc i64 %err.msg.len1179 to i32
  %err.msg.data1188 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1170, i32 0, i32 1
  %err.msg.data1189 = load ptr, ptr %err.msg.data1188, align 8
  %err.file.len1190 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1172, i32 0, i32 0
  %err.file.len1191 = load i64, ptr %err.file.len1190, align 8
  %err.file.len1192 = and i64 %err.file.len1191, 281474976710655
  %str.tag1193 = lshr i64 %err.file.len1191, 48
  %str.immortal1194 = icmp eq i64 %str.tag1193, 0
  br i1 %str.immortal1194, label %str_ok1196, label %str_gen_check1195

str_stale1184:                                    ; preds = %str_gen_check1182
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1183

str_gen_check1195:                                ; preds = %str_ok1183
  %arena.cur1198 = call ptr @dva_arena_current()
  %tag.valid1199 = call i1 @dva_arena_validate_tag(ptr %arena.cur1198, i64 %str.tag1193)
  br i1 %tag.valid1199, label %str_ok1196, label %str_stale1197

str_ok1196:                                       ; preds = %str_stale1197, %str_gen_check1195, %str_ok1183
  %err.file.len321200 = trunc i64 %err.file.len1192 to i32
  %err.file.data1201 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1172, i32 0, i32 1
  %err.file.data1202 = load ptr, ptr %err.file.data1201, align 8
  %err.thread.rec1203 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1204 = icmp ne ptr %err.thread.rec1203, null
  br i1 %err.is.thread1204, label %err.thread1205, label %err.normal1206

str_stale1197:                                    ; preds = %str_gen_check1195
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1196

err.thread1205:                                   ; preds = %str_ok1196
  %err.haserr.gep1207 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1203, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1207, align 8
  %err.err.gep1208 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1203, i32 0, i32 7
  store ptr %payload.ptr1160, ptr %err.err.gep1208, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1206:                                   ; preds = %str_ok1196
  %err.panic.printf1209 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1168, i32 %err.msg.len321187, ptr %err.msg.data1189, i32 %err.file.len321200, ptr %err.file.data1202, i64 %err.line1174, i64 %err.col1176)
  call void @exit(i32 1)
  unreachable

err.abort1210:                                    ; No predecessors!
  br label %choice.exit1163

a.create1214:                                     ; preds = %loop.exit.39
  %arena.cur1216 = call ptr @dva_arena_current()
  %a.create1217 = call ptr @dva_arena_alloc(ptr %arena.cur1216, i64 24)
  %arena.cur1218 = call ptr @dva_arena_current()
  %a.buf1219 = call ptr @dva_arena_alloc(ptr %arena.cur1218, i64 128)
  %a.len.gep1220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 0
  store i64 0, ptr %a.len.gep1220, align 8
  %a.data.gep1221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 1
  store ptr %a.buf1219, ptr %a.data.gep1221, align 8
  %a.cap.gep1222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1222, align 8
  store ptr %a.create1217, ptr %var.lows, align 8
  br label %a.after1215

a.after1215:                                      ; preds = %a.create1214, %loop.exit.39
  %a.load21223 = load ptr, ptr %var.lows, align 8
  %var.load1224 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1225 = icmp ne ptr %a.load21223, null
  br i1 %a.rd.nonnull1225, label %a.rd.check1226, label %a.rd.err.null1228

a.rd.check1226:                                   ; preds = %a.after1215
  %a.rd.len1231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21223, i32 0, i32 0
  %a.rd.len1232 = load i64, ptr %a.rd.len1231, align 8
  %a.rd.ge01233 = icmp sge i64 %var.load1224, 0
  %a.rd.lt1234 = icmp slt i64 %var.load1224, %a.rd.len1232
  %a.rd.bounds1235 = and i1 %a.rd.ge01233, %a.rd.lt1234
  br i1 %a.rd.bounds1235, label %a.rd.ok1227, label %a.rd.err.oob1229

a.rd.ok1227:                                      ; preds = %a.rd.check1226
  %a.rd.data1236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21223, i32 0, i32 1
  %a.rd.data1237 = load ptr, ptr %a.rd.data1236, align 8
  %a.rd.elem.gep1238 = getelementptr i64, ptr %a.rd.data1237, i64 %var.load1224
  %a.rd.elem1239 = load i64, ptr %a.rd.elem.gep1238, align 8
  br label %a.rd.done1230

a.rd.err.null1228:                                ; preds = %a.after1215
  %arena.cur1240 = call ptr @dva_arena_current()
  %err.alloc1241 = call ptr @dva_arena_alloc(ptr %arena.cur1240, i64 56)
  %err.code.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1242, align 8
  %err.msg.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1243, align 8
  %err.file.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1244, align 8
  %err.line.gep1245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 3
  store i64 323, ptr %err.line.gep1245, align 8
  %err.col.gep1246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 4
  store i64 20, ptr %err.col.gep1246, align 8
  %err.ctx.gep1247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1241, i32 0, i32 5
  %err.ctx0.gep1248 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1247, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1248, align 8
  %err.ctx1.gep1249 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1247, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1249, align 8
  %err.p2i1250 = ptrtoint ptr %err.alloc1241 to i64
  br label %a.rd.done1230

a.rd.err.oob1229:                                 ; preds = %a.rd.check1226
  %arena.cur1251 = call ptr @dva_arena_current()
  %err.alloc1252 = call ptr @dva_arena_alloc(ptr %arena.cur1251, i64 56)
  %err.code.gep1253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1253, align 8
  %err.msg.gep1254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1254, align 8
  %err.file.gep1255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1255, align 8
  %err.line.gep1256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 3
  store i64 323, ptr %err.line.gep1256, align 8
  %err.col.gep1257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 4
  store i64 20, ptr %err.col.gep1257, align 8
  %err.ctx.gep1258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1252, i32 0, i32 5
  %err.ctx0.gep1259 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1258, i32 0, i32 0
  store i64 %var.load1224, ptr %err.ctx0.gep1259, align 8
  %err.ctx1.gep1260 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1258, i32 0, i32 1
  store i64 %a.rd.len1232, ptr %err.ctx1.gep1260, align 8
  %err.p2i1261 = ptrtoint ptr %err.alloc1252 to i64
  br label %a.rd.done1230

a.rd.done1230:                                    ; preds = %a.rd.err.oob1229, %a.rd.err.null1228, %a.rd.ok1227
  %a.rd.tag1262 = phi i1 [ true, %a.rd.ok1227 ], [ false, %a.rd.err.null1228 ], [ false, %a.rd.err.oob1229 ]
  %a.rd.pay1263 = phi i64 [ %a.rd.elem1239, %a.rd.ok1227 ], [ %err.p2i1250, %a.rd.err.null1228 ], [ %err.p2i1261, %a.rd.err.oob1229 ]
  %ram.tag1264 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1262, 0
  %ram.pay1265 = insertvalue { i1, i64 } %ram.tag1264, i64 %a.rd.pay1263, 1
  %ram.tag1266 = extractvalue { i1, i64 } %ram.pay1265, 0
  br i1 %ram.tag1266, label %choice.then1267, label %choice.else1268

choice.then1267:                                  ; preds = %a.rd.done1230
  %ram.pay1270 = extractvalue { i1, i64 } %ram.pay1265, 1
  store i64 %ram.pay1270, ptr %var._1271, align 8
  br label %choice.exit1269

choice.else1268:                                  ; preds = %a.rd.done1230
  %ram.pay1272 = extractvalue { i1, i64 } %ram.pay1265, 1
  %pay.ptr1273 = inttoptr i64 %ram.pay1272 to ptr
  store ptr %pay.ptr1273, ptr %var._1274, align 8
  br label %choice.exit1269

choice.exit1269:                                  ; preds = %choice.else1268, %choice.then1267
  %choice.res1275 = phi i64 [ %ram.pay1270, %choice.then1267 ], [ 0, %choice.else1268 ]
  store i64 %choice.res1275, ptr %var.low_u, align 8
  %var.load1276 = load ptr, ptr %var.idxs, align 8
  %a.load1277 = load ptr, ptr %var.idxs, align 8
  %a.null1278 = icmp eq ptr %a.load1277, null
  br i1 %a.null1278, label %a.create1279, label %a.after1280

a.create1279:                                     ; preds = %choice.exit1269
  %arena.cur1281 = call ptr @dva_arena_current()
  %a.create1282 = call ptr @dva_arena_alloc(ptr %arena.cur1281, i64 24)
  %arena.cur1283 = call ptr @dva_arena_current()
  %a.buf1284 = call ptr @dva_arena_alloc(ptr %arena.cur1283, i64 128)
  %a.len.gep1285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1282, i32 0, i32 0
  store i64 0, ptr %a.len.gep1285, align 8
  %a.data.gep1286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1282, i32 0, i32 1
  store ptr %a.buf1284, ptr %a.data.gep1286, align 8
  %a.cap.gep1287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1282, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1287, align 8
  store ptr %a.create1282, ptr %var.idxs, align 8
  br label %a.after1280

a.after1280:                                      ; preds = %a.create1279, %choice.exit1269
  %a.load21288 = load ptr, ptr %var.idxs, align 8
  %var.load1289 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1290 = icmp ne ptr %a.load21288, null
  br i1 %a.rd.nonnull1290, label %a.rd.check1291, label %a.rd.err.null1293

a.rd.check1291:                                   ; preds = %a.after1280
  %a.rd.len1296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21288, i32 0, i32 0
  %a.rd.len1297 = load i64, ptr %a.rd.len1296, align 8
  %a.rd.ge01298 = icmp sge i64 %var.load1289, 0
  %a.rd.lt1299 = icmp slt i64 %var.load1289, %a.rd.len1297
  %a.rd.bounds1300 = and i1 %a.rd.ge01298, %a.rd.lt1299
  br i1 %a.rd.bounds1300, label %a.rd.ok1292, label %a.rd.err.oob1294

a.rd.ok1292:                                      ; preds = %a.rd.check1291
  %a.rd.data1301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21288, i32 0, i32 1
  %a.rd.data1302 = load ptr, ptr %a.rd.data1301, align 8
  %a.rd.elem.gep1303 = getelementptr i64, ptr %a.rd.data1302, i64 %var.load1289
  %a.rd.elem1304 = load i64, ptr %a.rd.elem.gep1303, align 8
  br label %a.rd.done1295

a.rd.err.null1293:                                ; preds = %a.after1280
  %arena.cur1305 = call ptr @dva_arena_current()
  %err.alloc1306 = call ptr @dva_arena_alloc(ptr %arena.cur1305, i64 56)
  %err.code.gep1307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1307, align 8
  %err.msg.gep1308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1308, align 8
  %err.file.gep1309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1309, align 8
  %err.line.gep1310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 3
  store i64 324, ptr %err.line.gep1310, align 8
  %err.col.gep1311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 4
  store i64 20, ptr %err.col.gep1311, align 8
  %err.ctx.gep1312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1306, i32 0, i32 5
  %err.ctx0.gep1313 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1312, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1313, align 8
  %err.ctx1.gep1314 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1312, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1314, align 8
  %err.p2i1315 = ptrtoint ptr %err.alloc1306 to i64
  br label %a.rd.done1295

a.rd.err.oob1294:                                 ; preds = %a.rd.check1291
  %arena.cur1316 = call ptr @dva_arena_current()
  %err.alloc1317 = call ptr @dva_arena_alloc(ptr %arena.cur1316, i64 56)
  %err.code.gep1318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1318, align 8
  %err.msg.gep1319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1319, align 8
  %err.file.gep1320 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1320, align 8
  %err.line.gep1321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 3
  store i64 324, ptr %err.line.gep1321, align 8
  %err.col.gep1322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 4
  store i64 20, ptr %err.col.gep1322, align 8
  %err.ctx.gep1323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1317, i32 0, i32 5
  %err.ctx0.gep1324 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1323, i32 0, i32 0
  store i64 %var.load1289, ptr %err.ctx0.gep1324, align 8
  %err.ctx1.gep1325 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1323, i32 0, i32 1
  store i64 %a.rd.len1297, ptr %err.ctx1.gep1325, align 8
  %err.p2i1326 = ptrtoint ptr %err.alloc1317 to i64
  br label %a.rd.done1295

a.rd.done1295:                                    ; preds = %a.rd.err.oob1294, %a.rd.err.null1293, %a.rd.ok1292
  %a.rd.tag1327 = phi i1 [ true, %a.rd.ok1292 ], [ false, %a.rd.err.null1293 ], [ false, %a.rd.err.oob1294 ]
  %a.rd.pay1328 = phi i64 [ %a.rd.elem1304, %a.rd.ok1292 ], [ %err.p2i1315, %a.rd.err.null1293 ], [ %err.p2i1326, %a.rd.err.oob1294 ]
  %ram.tag1329 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1327, 0
  %ram.pay1330 = insertvalue { i1, i64 } %ram.tag1329, i64 %a.rd.pay1328, 1
  %ram.tag1331 = extractvalue { i1, i64 } %ram.pay1330, 0
  br i1 %ram.tag1331, label %choice.then1332, label %choice.else1333

choice.then1332:                                  ; preds = %a.rd.done1295
  %ram.pay1335 = extractvalue { i1, i64 } %ram.pay1330, 1
  store i64 %ram.pay1335, ptr %var._1336, align 8
  br label %choice.exit1334

choice.else1333:                                  ; preds = %a.rd.done1295
  %ram.pay1337 = extractvalue { i1, i64 } %ram.pay1330, 1
  %pay.ptr1338 = inttoptr i64 %ram.pay1337 to ptr
  store ptr %pay.ptr1338, ptr %var._1339, align 8
  br label %choice.exit1334

choice.exit1334:                                  ; preds = %choice.else1333, %choice.then1332
  %choice.res1340 = phi i64 [ %ram.pay1335, %choice.then1332 ], [ 0, %choice.else1333 ]
  store i64 %choice.res1340, ptr %var.idx_u, align 8
  %var.load1341 = load i64, ptr %var.low_u, align 8
  %var.load1342 = load i64, ptr %var.idx_u, align 8
  %cmptmp1343 = icmp eq i64 %var.load1341, %var.load1342
  br i1 %cmptmp1343, label %choice.then1344, label %choice.exit1345

choice.then1344:                                  ; preds = %choice.exit1334
  %arena.cur1346 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 24)
  %arena.cur1347 = call ptr @dva_arena_current()
  %a.buf1348 = call ptr @dva_arena_alloc(ptr %arena.cur1347, i64 128)
  %a.len.gep1349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1349, align 8
  %a.data.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1348, ptr %a.data.gep1350, align 8
  %a.cap.gep1351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1351, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1352 = load ptr, ptr %var.u_node, align 8
  %var.load1353 = load ptr, ptr %var.u_node, align 8
  %fld.gep1354 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1353, i32 0, i32 0
  %fld.load1355 = load ptr, ptr %fld.gep1354, align 8
  %call.res1356 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1352, ptr %fld.load1355)
  store i1 %call.res1356, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

choice.exit1345:                                  ; preds = %a.store1737, %choice.exit1334
  ret void

loop.header.40:                                   ; preds = %loop.latch.40, %choice.then1344
  %counter.load1357 = load i64, ptr %loop.idx.40, align 8
  br label %loop.body.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i1358 = sub i64 %counter.load1357, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i1358, ptr %var._i1359, align 8
  store i64 %counter.load1357, ptr %var._1360, align 8
  %var.load1361 = load ptr, ptr %var.state, align 8
  %fld.gep1362 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1361, i32 0, i32 4
  %fld.load1363 = load ptr, ptr %fld.gep1362, align 8
  store ptr %fld.load1363, ptr %var.s_ptr, align 8
  %var.load1364 = load ptr, ptr %var.s_ptr, align 8
  %a.load1365 = load ptr, ptr %var.s_ptr, align 8
  %a.null1366 = icmp eq ptr %a.load1365, null
  br i1 %a.null1366, label %a.create1367, label %a.after1368

loop.exit.nat.40:                                 ; No predecessors!
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit1698
  %step.val1699 = load i64, ptr %loop.step.40, align 8
  %loop.next1700 = add i64 %counter.load1357, %step.val1699
  store i64 %loop.next1700, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %choice.then1697, %choice.then1466, %loop.exit.nat.40
  %var.load1701 = load ptr, ptr %var.scc_names, align 8
  %a.load1702 = load ptr, ptr %var.scc_names, align 8
  %a.null1703 = icmp eq ptr %a.load1702, null
  br i1 %a.null1703, label %a.create1704, label %a.after1705

a.create1367:                                     ; preds = %loop.body.40
  %arena.cur1369 = call ptr @dva_arena_current()
  %a.create1370 = call ptr @dva_arena_alloc(ptr %arena.cur1369, i64 24)
  %arena.cur1371 = call ptr @dva_arena_current()
  %a.buf1372 = call ptr @dva_arena_alloc(ptr %arena.cur1371, i64 128)
  %a.len.gep1373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 0
  store i64 0, ptr %a.len.gep1373, align 8
  %a.data.gep1374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 1
  store ptr %a.buf1372, ptr %a.data.gep1374, align 8
  %a.cap.gep1375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1375, align 8
  store ptr %a.create1370, ptr %var.s_ptr, align 8
  br label %a.after1368

a.after1368:                                      ; preds = %a.create1367, %loop.body.40
  %a.load21376 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1377 = icmp ne ptr %a.load21376, null
  br i1 %a.rd.nonnull1377, label %a.rd.check1378, label %a.rd.err.null1380

a.rd.check1378:                                   ; preds = %a.after1368
  %a.rd.len1383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21376, i32 0, i32 0
  %a.rd.len1384 = load i64, ptr %a.rd.len1383, align 8
  %a.rd.lt1385 = icmp slt i64 0, %a.rd.len1384
  %a.rd.bounds1386 = and i1 true, %a.rd.lt1385
  br i1 %a.rd.bounds1386, label %a.rd.ok1379, label %a.rd.err.oob1381

a.rd.ok1379:                                      ; preds = %a.rd.check1378
  %a.rd.data1387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21376, i32 0, i32 1
  %a.rd.data1388 = load ptr, ptr %a.rd.data1387, align 8
  %a.rd.elem.gep1389 = getelementptr i64, ptr %a.rd.data1388, i64 0
  %a.rd.elem1390 = load i64, ptr %a.rd.elem.gep1389, align 8
  br label %a.rd.done1382

a.rd.err.null1380:                                ; preds = %a.after1368
  %arena.cur1391 = call ptr @dva_arena_current()
  %err.alloc1392 = call ptr @dva_arena_alloc(ptr %arena.cur1391, i64 56)
  %err.code.gep1393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1393, align 8
  %err.msg.gep1394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1394, align 8
  %err.file.gep1395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1395, align 8
  %err.line.gep1396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 3
  store i64 331, ptr %err.line.gep1396, align 8
  %err.col.gep1397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 4
  store i64 26, ptr %err.col.gep1397, align 8
  %err.ctx.gep1398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1392, i32 0, i32 5
  %err.ctx0.gep1399 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1398, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1399, align 8
  %err.ctx1.gep1400 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1398, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1400, align 8
  %err.p2i1401 = ptrtoint ptr %err.alloc1392 to i64
  br label %a.rd.done1382

a.rd.err.oob1381:                                 ; preds = %a.rd.check1378
  %arena.cur1402 = call ptr @dva_arena_current()
  %err.alloc1403 = call ptr @dva_arena_alloc(ptr %arena.cur1402, i64 56)
  %err.code.gep1404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1404, align 8
  %err.msg.gep1405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1405, align 8
  %err.file.gep1406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1406, align 8
  %err.line.gep1407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 3
  store i64 331, ptr %err.line.gep1407, align 8
  %err.col.gep1408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 4
  store i64 26, ptr %err.col.gep1408, align 8
  %err.ctx.gep1409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1403, i32 0, i32 5
  %err.ctx0.gep1410 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1409, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1410, align 8
  %err.ctx1.gep1411 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1409, i32 0, i32 1
  store i64 %a.rd.len1384, ptr %err.ctx1.gep1411, align 8
  %err.p2i1412 = ptrtoint ptr %err.alloc1403 to i64
  br label %a.rd.done1382

a.rd.done1382:                                    ; preds = %a.rd.err.oob1381, %a.rd.err.null1380, %a.rd.ok1379
  %a.rd.tag1413 = phi i1 [ true, %a.rd.ok1379 ], [ false, %a.rd.err.null1380 ], [ false, %a.rd.err.oob1381 ]
  %a.rd.pay1414 = phi i64 [ %a.rd.elem1390, %a.rd.ok1379 ], [ %err.p2i1401, %a.rd.err.null1380 ], [ %err.p2i1412, %a.rd.err.oob1381 ]
  %ram.tag1415 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1413, 0
  %ram.pay1416 = insertvalue { i1, i64 } %ram.tag1415, i64 %a.rd.pay1414, 1
  %unwrap.is_pos1417 = extractvalue { i1, i64 } %ram.pay1416, 0
  br i1 %unwrap.is_pos1417, label %unwrap.pos.41, label %unwrap.abort.41

unwrap.pos.41:                                    ; preds = %a.rd.done1382
  %unwrap.pay.pos1463 = extractvalue { i1, i64 } %ram.pay1416, 1
  store i64 %unwrap.pay.pos1463, ptr %var.sp, align 8
  %var.load1464 = load i64, ptr %var.sp, align 8
  %cmptmp1465 = icmp eq i64 %var.load1464, 0
  br i1 %cmptmp1465, label %choice.then1466, label %choice.exit1467

unwrap.abort.41:                                  ; preds = %a.rd.done1382
  %unwrap.pay.abort1418 = extractvalue { i1, i64 } %ram.pay1416, 1
  %err.ptr1419 = inttoptr i64 %unwrap.pay.abort1418 to ptr
  %err.code.gep1420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1419, i32 0, i32 0
  %err.code1421 = load i64, ptr %err.code.gep1420, align 8
  %err.msg.gep1422 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1419, i32 0, i32 1
  %err.msg.struct1423 = load ptr, ptr %err.msg.gep1422, align 8
  %err.file.gep1424 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1419, i32 0, i32 2
  %err.file.struct1425 = load ptr, ptr %err.file.gep1424, align 8
  %err.line.gep1426 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1419, i32 0, i32 3
  %err.line1427 = load i64, ptr %err.line.gep1426, align 8
  %err.col.gep1428 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1419, i32 0, i32 4
  %err.col1429 = load i64, ptr %err.col.gep1428, align 8
  %err.msg.len1430 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1423, i32 0, i32 0
  %err.msg.len1431 = load i64, ptr %err.msg.len1430, align 8
  %err.msg.len1432 = and i64 %err.msg.len1431, 281474976710655
  %str.tag1433 = lshr i64 %err.msg.len1431, 48
  %str.immortal1434 = icmp eq i64 %str.tag1433, 0
  br i1 %str.immortal1434, label %str_ok1436, label %str_gen_check1435

str_gen_check1435:                                ; preds = %unwrap.abort.41
  %arena.cur1438 = call ptr @dva_arena_current()
  %tag.valid1439 = call i1 @dva_arena_validate_tag(ptr %arena.cur1438, i64 %str.tag1433)
  br i1 %tag.valid1439, label %str_ok1436, label %str_stale1437

str_ok1436:                                       ; preds = %str_stale1437, %str_gen_check1435, %unwrap.abort.41
  %err.msg.len321440 = trunc i64 %err.msg.len1432 to i32
  %err.msg.data1441 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1423, i32 0, i32 1
  %err.msg.data1442 = load ptr, ptr %err.msg.data1441, align 8
  %err.file.len1443 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1425, i32 0, i32 0
  %err.file.len1444 = load i64, ptr %err.file.len1443, align 8
  %err.file.len1445 = and i64 %err.file.len1444, 281474976710655
  %str.tag1446 = lshr i64 %err.file.len1444, 48
  %str.immortal1447 = icmp eq i64 %str.tag1446, 0
  br i1 %str.immortal1447, label %str_ok1449, label %str_gen_check1448

str_stale1437:                                    ; preds = %str_gen_check1435
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1436

str_gen_check1448:                                ; preds = %str_ok1436
  %arena.cur1451 = call ptr @dva_arena_current()
  %tag.valid1452 = call i1 @dva_arena_validate_tag(ptr %arena.cur1451, i64 %str.tag1446)
  br i1 %tag.valid1452, label %str_ok1449, label %str_stale1450

str_ok1449:                                       ; preds = %str_stale1450, %str_gen_check1448, %str_ok1436
  %err.file.len321453 = trunc i64 %err.file.len1445 to i32
  %err.file.data1454 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1425, i32 0, i32 1
  %err.file.data1455 = load ptr, ptr %err.file.data1454, align 8
  %err.thread.rec1456 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1457 = icmp ne ptr %err.thread.rec1456, null
  br i1 %err.is.thread1457, label %err.thread1458, label %err.normal1459

str_stale1450:                                    ; preds = %str_gen_check1448
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1449

err.thread1458:                                   ; preds = %str_ok1449
  %err.haserr.gep1460 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1456, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1460, align 8
  %err.err.gep1461 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1456, i32 0, i32 7
  store ptr %err.ptr1419, ptr %err.err.gep1461, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1459:                                   ; preds = %str_ok1449
  %err.panic.printf1462 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1421, i32 %err.msg.len321440, ptr %err.msg.data1442, i32 %err.file.len321453, ptr %err.file.data1455, i64 %err.line1427, i64 %err.col1429)
  call void @exit(i32 1)
  unreachable

choice.then1466:                                  ; preds = %unwrap.pos.41
  br label %loop.exit.40

choice.exit1467:                                  ; preds = %unwrap.pos.41
  %var.load1468 = load ptr, ptr %var.state, align 8
  %call.res1469 = call i64 @"dep_graph::pop_stack"(ptr %var.load1468)
  store i64 %call.res1469, ptr %var.w, align 8
  %var.load1470 = load ptr, ptr %var.ons, align 8
  %a.load1471 = load ptr, ptr %var.ons, align 8
  %a.null1472 = icmp eq ptr %a.load1471, null
  br i1 %a.null1472, label %a.create1473, label %a.after1474

a.create1473:                                     ; preds = %choice.exit1467
  %arena.cur1475 = call ptr @dva_arena_current()
  %a.create1476 = call ptr @dva_arena_alloc(ptr %arena.cur1475, i64 24)
  %arena.cur1477 = call ptr @dva_arena_current()
  %a.buf1478 = call ptr @dva_arena_alloc(ptr %arena.cur1477, i64 128)
  %a.len.gep1479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 0
  store i64 0, ptr %a.len.gep1479, align 8
  %a.data.gep1480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 1
  store ptr %a.buf1478, ptr %a.data.gep1480, align 8
  %a.cap.gep1481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1481, align 8
  store ptr %a.create1476, ptr %var.ons, align 8
  br label %a.after1474

a.after1474:                                      ; preds = %a.create1473, %choice.exit1467
  %a.load21482 = load ptr, ptr %var.ons, align 8
  %var.load1483 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1484 = icmp ne ptr %a.load21482, null
  br i1 %a.wr.nonnull1484, label %a.wr.check1485, label %a.wr.err.null1487

a.wr.check1485:                                   ; preds = %a.after1474
  %a.wr.len1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21482, i32 0, i32 0
  %a.wr.len1491 = load i64, ptr %a.wr.len1490, align 8
  %a.wr.ge01492 = icmp sge i64 %var.load1483, 0
  %a.wr.lt1493 = icmp slt i64 %var.load1483, %a.wr.len1491
  %a.wr.bounds1494 = and i1 %a.wr.ge01492, %a.wr.lt1493
  br i1 %a.wr.bounds1494, label %a.wr.ok1486, label %a.wr.err.oob1488

a.wr.ok1486:                                      ; preds = %a.wr.check1485
  %a.wr.data1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21482, i32 0, i32 1
  %a.wr.data1496 = load ptr, ptr %a.wr.data1495, align 8
  %a.elem.gep1497 = getelementptr i64, ptr %a.wr.data1496, i64 %var.load1483
  store i64 0, ptr %a.elem.gep1497, align 8
  br label %a.wr.done1489

a.wr.err.null1487:                                ; preds = %a.after1474
  %arena.cur1498 = call ptr @dva_arena_current()
  %err.alloc1499 = call ptr @dva_arena_alloc(ptr %arena.cur1498, i64 56)
  %err.code.gep1500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1500, align 8
  %err.msg.gep1501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1501, align 8
  %err.file.gep1502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1502, align 8
  %err.line.gep1503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 3
  store i64 0, ptr %err.line.gep1503, align 8
  %err.col.gep1504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 4
  store i64 0, ptr %err.col.gep1504, align 8
  %err.ctx.gep1505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1499, i32 0, i32 5
  %err.ctx0.gep1506 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1505, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1506, align 8
  %err.ctx1.gep1507 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1505, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1507, align 8
  br label %a.wr.done1489

a.wr.err.oob1488:                                 ; preds = %a.wr.check1485
  %arena.cur1508 = call ptr @dva_arena_current()
  %err.alloc1509 = call ptr @dva_arena_alloc(ptr %arena.cur1508, i64 56)
  %err.code.gep1510 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1510, align 8
  %err.msg.gep1511 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1511, align 8
  %err.file.gep1512 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1512, align 8
  %err.line.gep1513 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 3
  store i64 0, ptr %err.line.gep1513, align 8
  %err.col.gep1514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 4
  store i64 0, ptr %err.col.gep1514, align 8
  %err.ctx.gep1515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1509, i32 0, i32 5
  %err.ctx0.gep1516 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1515, i32 0, i32 0
  store i64 %var.load1483, ptr %err.ctx0.gep1516, align 8
  %err.ctx1.gep1517 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1515, i32 0, i32 1
  store i64 %a.wr.len1491, ptr %err.ctx1.gep1517, align 8
  br label %a.wr.done1489

a.wr.done1489:                                    ; preds = %a.wr.err.oob1488, %a.wr.err.null1487, %a.wr.ok1486
  %a.wr.tag1518 = phi i64 [ 1, %a.wr.ok1486 ], [ 0, %a.wr.err.null1487 ], [ 0, %a.wr.err.oob1488 ]
  %a.wr.pay1519 = phi ptr [ null, %a.wr.ok1486 ], [ %err.alloc1499, %a.wr.err.null1487 ], [ %err.alloc1509, %a.wr.err.oob1488 ]
  %arena.cur1520 = call ptr @dva_arena_current()
  %a.wr.succ1521 = call ptr @dva_arena_alloc(ptr %arena.cur1520, i64 16)
  %tag.gep1522 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1521, i32 0, i32 0
  %pay.gep1523 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1521, i32 0, i32 1
  store i64 %a.wr.tag1518, ptr %tag.gep1522, align 8
  store ptr %a.wr.pay1519, ptr %pay.gep1523, align 8
  %tag.gep1524 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1521, i32 0, i32 0
  %tag.id1525 = load i64, ptr %tag.gep1524, align 8
  %tag.eq.one1526 = icmp eq i64 %tag.id1525, 1
  %tag.eq.two1527 = icmp eq i64 %tag.id1525, 2
  %is.pos1528 = or i1 %tag.eq.one1526, %tag.eq.two1527
  %pay.gep1529 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1521, i32 0, i32 1
  %payload.ptr1530 = load ptr, ptr %pay.gep1529, align 8
  br i1 %is.pos1528, label %choice.then1531, label %choice.else1532

choice.then1531:                                  ; preds = %a.wr.done1489
  br label %choice.exit1533

choice.else1532:                                  ; preds = %a.wr.done1489
  store ptr %payload.ptr1530, ptr %var._1534, align 8
  store ptr %payload.ptr1530, ptr %var._1535, align 8
  store ptr %payload.ptr1530, ptr %var._1536, align 8
  %err.code.gep1537 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1530, i32 0, i32 0
  %err.code1538 = load i64, ptr %err.code.gep1537, align 8
  %err.msg.gep1539 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1530, i32 0, i32 1
  %err.msg.struct1540 = load ptr, ptr %err.msg.gep1539, align 8
  %err.file.gep1541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1530, i32 0, i32 2
  %err.file.struct1542 = load ptr, ptr %err.file.gep1541, align 8
  %err.line.gep1543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1530, i32 0, i32 3
  %err.line1544 = load i64, ptr %err.line.gep1543, align 8
  %err.col.gep1545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1530, i32 0, i32 4
  %err.col1546 = load i64, ptr %err.col.gep1545, align 8
  %err.msg.len1547 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1540, i32 0, i32 0
  %err.msg.len1548 = load i64, ptr %err.msg.len1547, align 8
  %err.msg.len1549 = and i64 %err.msg.len1548, 281474976710655
  %str.tag1550 = lshr i64 %err.msg.len1548, 48
  %str.immortal1551 = icmp eq i64 %str.tag1550, 0
  br i1 %str.immortal1551, label %str_ok1553, label %str_gen_check1552

choice.exit1533:                                  ; preds = %err.abort1580, %choice.then1531
  %var.load1581 = load ptr, ptr %var.graph, align 8
  %fld.gep1582 = getelementptr inbounds { ptr, ptr }, ptr %var.load1581, i32 0, i32 0
  %fld.load1583 = load ptr, ptr %fld.gep1582, align 8
  %var.load1584 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1585 = icmp ne ptr %fld.load1583, null
  br i1 %a.rd.nonnull1585, label %a.rd.check1586, label %a.rd.err.null1588

str_gen_check1552:                                ; preds = %choice.else1532
  %arena.cur1555 = call ptr @dva_arena_current()
  %tag.valid1556 = call i1 @dva_arena_validate_tag(ptr %arena.cur1555, i64 %str.tag1550)
  br i1 %tag.valid1556, label %str_ok1553, label %str_stale1554

str_ok1553:                                       ; preds = %str_stale1554, %str_gen_check1552, %choice.else1532
  %err.msg.len321557 = trunc i64 %err.msg.len1549 to i32
  %err.msg.data1558 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1540, i32 0, i32 1
  %err.msg.data1559 = load ptr, ptr %err.msg.data1558, align 8
  %err.file.len1560 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1542, i32 0, i32 0
  %err.file.len1561 = load i64, ptr %err.file.len1560, align 8
  %err.file.len1562 = and i64 %err.file.len1561, 281474976710655
  %str.tag1563 = lshr i64 %err.file.len1561, 48
  %str.immortal1564 = icmp eq i64 %str.tag1563, 0
  br i1 %str.immortal1564, label %str_ok1566, label %str_gen_check1565

str_stale1554:                                    ; preds = %str_gen_check1552
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1553

str_gen_check1565:                                ; preds = %str_ok1553
  %arena.cur1568 = call ptr @dva_arena_current()
  %tag.valid1569 = call i1 @dva_arena_validate_tag(ptr %arena.cur1568, i64 %str.tag1563)
  br i1 %tag.valid1569, label %str_ok1566, label %str_stale1567

str_ok1566:                                       ; preds = %str_stale1567, %str_gen_check1565, %str_ok1553
  %err.file.len321570 = trunc i64 %err.file.len1562 to i32
  %err.file.data1571 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1542, i32 0, i32 1
  %err.file.data1572 = load ptr, ptr %err.file.data1571, align 8
  %err.thread.rec1573 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1574 = icmp ne ptr %err.thread.rec1573, null
  br i1 %err.is.thread1574, label %err.thread1575, label %err.normal1576

str_stale1567:                                    ; preds = %str_gen_check1565
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1566

err.thread1575:                                   ; preds = %str_ok1566
  %err.haserr.gep1577 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1573, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1577, align 8
  %err.err.gep1578 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1573, i32 0, i32 7
  store ptr %payload.ptr1530, ptr %err.err.gep1578, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1576:                                   ; preds = %str_ok1566
  %err.panic.printf1579 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1538, i32 %err.msg.len321557, ptr %err.msg.data1559, i32 %err.file.len321570, ptr %err.file.data1572, i64 %err.line1544, i64 %err.col1546)
  call void @exit(i32 1)
  unreachable

err.abort1580:                                    ; No predecessors!
  br label %choice.exit1533

a.rd.check1586:                                   ; preds = %choice.exit1533
  %a.rd.len1591 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1583, i32 0, i32 0
  %a.rd.len1592 = load i64, ptr %a.rd.len1591, align 8
  %a.rd.ge01593 = icmp sge i64 %var.load1584, 0
  %a.rd.lt1594 = icmp slt i64 %var.load1584, %a.rd.len1592
  %a.rd.bounds1595 = and i1 %a.rd.ge01593, %a.rd.lt1594
  br i1 %a.rd.bounds1595, label %a.rd.ok1587, label %a.rd.err.oob1589

a.rd.ok1587:                                      ; preds = %a.rd.check1586
  %a.rd.data1596 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1583, i32 0, i32 1
  %a.rd.data1597 = load ptr, ptr %a.rd.data1596, align 8
  %a.rd.elem.gep1598 = getelementptr i64, ptr %a.rd.data1597, i64 %var.load1584
  %a.rd.elem1599 = load i64, ptr %a.rd.elem.gep1598, align 8
  br label %a.rd.done1590

a.rd.err.null1588:                                ; preds = %choice.exit1533
  %arena.cur1600 = call ptr @dva_arena_current()
  %err.alloc1601 = call ptr @dva_arena_alloc(ptr %arena.cur1600, i64 56)
  %err.code.gep1602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1602, align 8
  %err.msg.gep1603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1603, align 8
  %err.file.gep1604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1604, align 8
  %err.line.gep1605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 3
  store i64 0, ptr %err.line.gep1605, align 8
  %err.col.gep1606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 4
  store i64 0, ptr %err.col.gep1606, align 8
  %err.ctx.gep1607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1601, i32 0, i32 5
  %err.ctx0.gep1608 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1607, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1608, align 8
  %err.ctx1.gep1609 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1607, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1609, align 8
  %err.p2i1610 = ptrtoint ptr %err.alloc1601 to i64
  br label %a.rd.done1590

a.rd.err.oob1589:                                 ; preds = %a.rd.check1586
  %arena.cur1611 = call ptr @dva_arena_current()
  %err.alloc1612 = call ptr @dva_arena_alloc(ptr %arena.cur1611, i64 56)
  %err.code.gep1613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1613, align 8
  %err.msg.gep1614 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1614, align 8
  %err.file.gep1615 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1615, align 8
  %err.line.gep1616 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 3
  store i64 0, ptr %err.line.gep1616, align 8
  %err.col.gep1617 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 4
  store i64 0, ptr %err.col.gep1617, align 8
  %err.ctx.gep1618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1612, i32 0, i32 5
  %err.ctx0.gep1619 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1618, i32 0, i32 0
  store i64 %var.load1584, ptr %err.ctx0.gep1619, align 8
  %err.ctx1.gep1620 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1618, i32 0, i32 1
  store i64 %a.rd.len1592, ptr %err.ctx1.gep1620, align 8
  %err.p2i1621 = ptrtoint ptr %err.alloc1612 to i64
  br label %a.rd.done1590

a.rd.done1590:                                    ; preds = %a.rd.err.oob1589, %a.rd.err.null1588, %a.rd.ok1587
  %a.rd.tag1622 = phi i1 [ true, %a.rd.ok1587 ], [ false, %a.rd.err.null1588 ], [ false, %a.rd.err.oob1589 ]
  %a.rd.pay1623 = phi i64 [ %a.rd.elem1599, %a.rd.ok1587 ], [ %err.p2i1610, %a.rd.err.null1588 ], [ %err.p2i1621, %a.rd.err.oob1589 ]
  %ram.tag1624 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1622, 0
  %ram.pay1625 = insertvalue { i1, i64 } %ram.tag1624, i64 %a.rd.pay1623, 1
  %unwrap.is_pos1626 = extractvalue { i1, i64 } %ram.pay1625, 0
  br i1 %unwrap.is_pos1626, label %unwrap.pos.42, label %unwrap.abort.42

unwrap.pos.42:                                    ; preds = %a.rd.done1590
  %unwrap.pay.pos1672 = extractvalue { i1, i64 } %ram.pay1625, 1
  %pay.ptr1673 = inttoptr i64 %unwrap.pay.pos1672 to ptr
  store ptr %pay.ptr1673, ptr %var.w_node, align 8
  %var.load1674 = load ptr, ptr %var.w_node, align 8
  %fld.gep1675 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1674, i32 0, i32 0
  %fld.load1676 = load ptr, ptr %fld.gep1675, align 8
  %a.load1677 = load ptr, ptr %var.scc_names, align 8
  %a.null1678 = icmp eq ptr %a.load1677, null
  br i1 %a.null1678, label %a.create1679, label %a.after1680

unwrap.abort.42:                                  ; preds = %a.rd.done1590
  %unwrap.pay.abort1627 = extractvalue { i1, i64 } %ram.pay1625, 1
  %err.ptr1628 = inttoptr i64 %unwrap.pay.abort1627 to ptr
  %err.code.gep1629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1628, i32 0, i32 0
  %err.code1630 = load i64, ptr %err.code.gep1629, align 8
  %err.msg.gep1631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1628, i32 0, i32 1
  %err.msg.struct1632 = load ptr, ptr %err.msg.gep1631, align 8
  %err.file.gep1633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1628, i32 0, i32 2
  %err.file.struct1634 = load ptr, ptr %err.file.gep1633, align 8
  %err.line.gep1635 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1628, i32 0, i32 3
  %err.line1636 = load i64, ptr %err.line.gep1635, align 8
  %err.col.gep1637 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1628, i32 0, i32 4
  %err.col1638 = load i64, ptr %err.col.gep1637, align 8
  %err.msg.len1639 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1632, i32 0, i32 0
  %err.msg.len1640 = load i64, ptr %err.msg.len1639, align 8
  %err.msg.len1641 = and i64 %err.msg.len1640, 281474976710655
  %str.tag1642 = lshr i64 %err.msg.len1640, 48
  %str.immortal1643 = icmp eq i64 %str.tag1642, 0
  br i1 %str.immortal1643, label %str_ok1645, label %str_gen_check1644

str_gen_check1644:                                ; preds = %unwrap.abort.42
  %arena.cur1647 = call ptr @dva_arena_current()
  %tag.valid1648 = call i1 @dva_arena_validate_tag(ptr %arena.cur1647, i64 %str.tag1642)
  br i1 %tag.valid1648, label %str_ok1645, label %str_stale1646

str_ok1645:                                       ; preds = %str_stale1646, %str_gen_check1644, %unwrap.abort.42
  %err.msg.len321649 = trunc i64 %err.msg.len1641 to i32
  %err.msg.data1650 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1632, i32 0, i32 1
  %err.msg.data1651 = load ptr, ptr %err.msg.data1650, align 8
  %err.file.len1652 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1634, i32 0, i32 0
  %err.file.len1653 = load i64, ptr %err.file.len1652, align 8
  %err.file.len1654 = and i64 %err.file.len1653, 281474976710655
  %str.tag1655 = lshr i64 %err.file.len1653, 48
  %str.immortal1656 = icmp eq i64 %str.tag1655, 0
  br i1 %str.immortal1656, label %str_ok1658, label %str_gen_check1657

str_stale1646:                                    ; preds = %str_gen_check1644
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1645

str_gen_check1657:                                ; preds = %str_ok1645
  %arena.cur1660 = call ptr @dva_arena_current()
  %tag.valid1661 = call i1 @dva_arena_validate_tag(ptr %arena.cur1660, i64 %str.tag1655)
  br i1 %tag.valid1661, label %str_ok1658, label %str_stale1659

str_ok1658:                                       ; preds = %str_stale1659, %str_gen_check1657, %str_ok1645
  %err.file.len321662 = trunc i64 %err.file.len1654 to i32
  %err.file.data1663 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1634, i32 0, i32 1
  %err.file.data1664 = load ptr, ptr %err.file.data1663, align 8
  %err.thread.rec1665 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1666 = icmp ne ptr %err.thread.rec1665, null
  br i1 %err.is.thread1666, label %err.thread1667, label %err.normal1668

str_stale1659:                                    ; preds = %str_gen_check1657
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1658

err.thread1667:                                   ; preds = %str_ok1658
  %err.haserr.gep1669 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1665, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1669, align 8
  %err.err.gep1670 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1665, i32 0, i32 7
  store ptr %err.ptr1628, ptr %err.err.gep1670, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1668:                                   ; preds = %str_ok1658
  %err.panic.printf1671 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1630, i32 %err.msg.len321649, ptr %err.msg.data1651, i32 %err.file.len321662, ptr %err.file.data1664, i64 %err.line1636, i64 %err.col1638)
  call void @exit(i32 1)
  unreachable

a.create1679:                                     ; preds = %unwrap.pos.42
  %arena.cur1681 = call ptr @dva_arena_current()
  %a.create1682 = call ptr @dva_arena_alloc(ptr %arena.cur1681, i64 24)
  %arena.cur1683 = call ptr @dva_arena_current()
  %a.buf1684 = call ptr @dva_arena_alloc(ptr %arena.cur1683, i64 128)
  %a.len.gep1685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1682, i32 0, i32 0
  store i64 0, ptr %a.len.gep1685, align 8
  %a.data.gep1686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1682, i32 0, i32 1
  store ptr %a.buf1684, ptr %a.data.gep1686, align 8
  %a.cap.gep1687 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1682, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1687, align 8
  store ptr %a.create1682, ptr %var.scc_names, align 8
  br label %a.after1680

a.after1680:                                      ; preds = %a.create1679, %unwrap.pos.42
  %a.load21688 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1680
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21688, i32 0, i32 0
  %a.len1689 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21688, i32 0, i32 2
  %a.cap1690 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1689, %a.cap1690
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21688)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21688, i32 0, i32 1
  %a.cur.data1691 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21688, i32 0, i32 0
  %a.cur.len1692 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1693 = getelementptr i64, ptr %a.cur.data1691, i64 %a.cur.len1692
  %slot.p2i = ptrtoint ptr %fld.load1676 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1693, align 8
  %a.next.len = add i64 %a.cur.len1692, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21688, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1694 = load i64, ptr %var.w, align 8
  %var.load1695 = load i64, ptr %var.u, align 8
  %cmptmp1696 = icmp eq i64 %var.load1694, %var.load1695
  br i1 %cmptmp1696, label %choice.then1697, label %choice.exit1698

choice.then1697:                                  ; preds = %a.store
  br label %loop.exit.40

choice.exit1698:                                  ; preds = %a.store
  br label %loop.latch.40

a.create1704:                                     ; preds = %loop.exit.40
  %arena.cur1706 = call ptr @dva_arena_current()
  %a.create1707 = call ptr @dva_arena_alloc(ptr %arena.cur1706, i64 24)
  %arena.cur1708 = call ptr @dva_arena_current()
  %a.buf1709 = call ptr @dva_arena_alloc(ptr %arena.cur1708, i64 128)
  %a.len.gep1710 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 0
  store i64 0, ptr %a.len.gep1710, align 8
  %a.data.gep1711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 1
  store ptr %a.buf1709, ptr %a.data.gep1711, align 8
  %a.cap.gep1712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1712, align 8
  store ptr %a.create1707, ptr %var.scc_names, align 8
  br label %a.after1705

a.after1705:                                      ; preds = %a.create1704, %loop.exit.40
  %a.load21713 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21713, i32 0, i32 0
  %a.len.query1714 = load i64, ptr %a.len.query, align 8
  %cmptmp1715 = icmp sgt i64 %a.len.query1714, 1
  br i1 %cmptmp1715, label %or.43.then, label %or.43.else

or.43.then:                                       ; preds = %a.after1705
  br label %or.43.exit

or.43.else:                                       ; preds = %a.after1705
  %var.load1716 = load i1, ptr %var.is_self_rec, align 1
  br label %or.43.exit

or.43.exit:                                       ; preds = %or.43.else, %or.43.then
  %or.43.phi = phi i1 [ %cmptmp1715, %or.43.then ], [ %var.load1716, %or.43.else ]
  store i1 %or.43.phi, ptr %var.is_rec, align 1
  %var.load1717 = load ptr, ptr %var.state, align 8
  %var.load1718 = load ptr, ptr %var.scc_names, align 8
  %a.load1719 = load ptr, ptr %var.scc_names, align 8
  %a.null1720 = icmp eq ptr %a.load1719, null
  br i1 %a.null1720, label %a.create1721, label %a.after1722

a.create1721:                                     ; preds = %or.43.exit
  %arena.cur1723 = call ptr @dva_arena_current()
  %a.create1724 = call ptr @dva_arena_alloc(ptr %arena.cur1723, i64 24)
  %arena.cur1725 = call ptr @dva_arena_current()
  %a.buf1726 = call ptr @dva_arena_alloc(ptr %arena.cur1725, i64 128)
  %a.len.gep1727 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1724, i32 0, i32 0
  store i64 0, ptr %a.len.gep1727, align 8
  %a.data.gep1728 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1724, i32 0, i32 1
  store ptr %a.buf1726, ptr %a.data.gep1728, align 8
  %a.cap.gep1729 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1724, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1729, align 8
  store ptr %a.create1724, ptr %var.scc_names, align 8
  br label %a.after1722

a.after1722:                                      ; preds = %a.create1721, %or.43.exit
  %a.load21730 = load ptr, ptr %var.scc_names, align 8
  %var.load1731 = load i1, ptr %var.is_rec, align 1
  %arena.cur1732 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1732, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21730, ptr %rec.fld, align 8
  %rec.fld1733 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1731, ptr %rec.fld1733, align 1
  %fld.gep1734 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1717, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1734, align 8
  br label %a.check1735

a.check1735:                                      ; preds = %a.after1722
  %a.len1738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1739 = load i64, ptr %a.len1738, align 8
  %a.cap1740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1741 = load i64, ptr %a.cap1740, align 8
  %a.needs.grow1742 = icmp eq i64 %a.len1739, %a.cap1741
  br i1 %a.needs.grow1742, label %a.grow1736, label %a.store1737

a.grow1736:                                       ; preds = %a.check1735
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1737

a.store1737:                                      ; preds = %a.grow1736, %a.check1735
  %a.cur.data1743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1744 = load ptr, ptr %a.cur.data1743, align 8
  %a.cur.len1745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1746 = load i64, ptr %a.cur.len1745, align 8
  %a.elem.gep1747 = getelementptr i64, ptr %a.cur.data1744, i64 %a.cur.len1746
  %slot.p2i1748 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1748, ptr %a.elem.gep1747, align 8
  %a.next.len1749 = add i64 %a.cur.len1746, 1
  %b.len.gep1750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1749, ptr %b.len.gep1750, align 8
  br label %choice.exit1345
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
