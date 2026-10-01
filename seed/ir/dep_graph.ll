; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
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
@clo.const.5 = internal constant { ptr, ptr } { ptr @"dep_graph::decl_module", ptr null }
@"var.dep_graph::decl_module" = global ptr null
@str.5 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"dep_graph::resolve_dep_ref", ptr null }
@"var.dep_graph::resolve_dep_ref" = global ptr null
@str.7 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"dep_graph::collect_expr_refs", ptr null }
@"var.dep_graph::collect_expr_refs" = global ptr null
@str.8 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.8 }
@dva_thread_rec = external thread_local global ptr
@clo.const.8 = internal constant { ptr, ptr } { ptr @"dep_graph::find_node_idx", ptr null }
@"var.dep_graph::find_node_idx" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"dep_graph::node_has_dep", ptr null }
@"var.dep_graph::node_has_dep" = global ptr null
@str.9 = internal unnamed_addr constant [5 x i8] c"@ct0\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"dep_graph::is_generic_sig", ptr null }
@"var.dep_graph::is_generic_sig" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"dep_graph::build_dep_graph", ptr null }
@"var.dep_graph::build_dep_graph" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"dep_graph::init_tarjan_state", ptr null }
@"var.dep_graph::init_tarjan_state" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"dep_graph::push_stack", ptr null }
@"var.dep_graph::push_stack" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"dep_graph::pop_stack", ptr null }
@"var.dep_graph::pop_stack" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_dfs", ptr null }
@"var.dep_graph::tarjan_dfs" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_scc", ptr null }
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
  store ptr @clo.const.5, ptr @"var.dep_graph::decl_module", align 8
  store ptr @clo.const.6, ptr @"var.dep_graph::resolve_dep_ref", align 8
  store ptr @clo.const.7, ptr @"var.dep_graph::collect_expr_refs", align 8
  store ptr @clo.const.8, ptr @"var.dep_graph::find_node_idx", align 8
  store ptr @clo.const.9, ptr @"var.dep_graph::node_has_dep", align 8
  store ptr @clo.const.10, ptr @"var.dep_graph::is_generic_sig", align 8
  store ptr @clo.const.11, ptr @"var.dep_graph::build_dep_graph", align 8
  store ptr @clo.const.12, ptr @"var.dep_graph::init_tarjan_state", align 8
  store ptr @clo.const.13, ptr @"var.dep_graph::push_stack", align 8
  store ptr @clo.const.14, ptr @"var.dep_graph::pop_stack", align 8
  store ptr @clo.const.15, ptr @"var.dep_graph::tarjan_dfs", align 8
  store ptr @clo.const.16, ptr @"var.dep_graph::tarjan_scc", align 8
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %str.tag7 = lshr i64 %eq.rhs.len, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
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

choice.exit:                                      ; preds = %choice.exit48, %choice.then
  %choice.res66 = phi i1 [ false, %choice.then ], [ %choice.res65, %choice.exit48 ]
  ret i1 %choice.res66

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
  store i64 45, ptr %err.line.gep, align 8
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
  store i64 45, ptr %err.line.gep14, align 8
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen32
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len33 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len33, 281474976710655
  %str.tag35 = lshr i64 %eq.rhs.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check37:                                  ; preds = %str_ok
  %arena.gen40 = call ptr @dva_arena_current()
  %arena.gen41 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen40, i32 0, i32 4
  %arena.gen42 = load i64, ptr %arena.gen41, align 8
  %str.tag.match43 = icmp eq i64 %str.tag35, %arena.gen42
  br i1 %str.tag.match43, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

str.eq.then:                                      ; preds = %str_ok38
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data45 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data44, ptr %eq.rhs.data45, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok38
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then46, label %choice.else47

choice.then46:                                    ; preds = %str.eq.merge
  br label %choice.exit48

choice.else47:                                    ; preds = %str.eq.merge
  %var.load49 = load ptr, ptr %var.names, align 8
  %a.load50 = load ptr, ptr %var.names, align 8
  %a.null51 = icmp eq ptr %a.load50, null
  br i1 %a.null51, label %a.create52, label %a.after53

choice.exit48:                                    ; preds = %a.after53, %choice.then46
  %choice.res65 = phi i1 [ true, %choice.then46 ], [ %call.res, %a.after53 ]
  br label %choice.exit

a.create52:                                       ; preds = %choice.else47
  %arena.cur54 = call ptr @dva_arena_current()
  %a.create55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 24)
  %arena.cur56 = call ptr @dva_arena_current()
  %a.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  %a.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 0
  store i64 0, ptr %a.len.gep58, align 8
  %a.data.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 1
  store ptr %a.buf57, ptr %a.data.gep59, align 8
  %a.cap.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 2
  store i64 16, ptr %a.cap.gep60, align 8
  store ptr %a.create55, ptr %var.names, align 8
  br label %a.after53

a.after53:                                        ; preds = %a.create52, %choice.else47
  %a.load261 = load ptr, ptr %var.names, align 8
  %var.load62 = load ptr, ptr %var.s, align 8
  %var.load63 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load63, 1
  %var.load64 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load261, ptr %var.load62, i64 %addtmp, i64 %var.load64)
  br label %choice.exit48
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit49
  %choice.res53 = phi i1 [ %choice.res, %choice.exit49 ], [ false, %choice.else ]
  ret i1 %choice.res53

str_gen_check11:                                  ; preds = %choice.then
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load19, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp20 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp20, label %and.0.then, label %and.0.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.0.then:                                       ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.name, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %str.tag25 = lshr i64 %s.read.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

and.0.else:                                       ; preds = %idx_ok
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %idx_ok40
  %and.0.phi = phi i1 [ %cmptmp46, %idx_ok40 ], [ %cmptmp20, %and.0.else ]
  br i1 %and.0.phi, label %choice.then47, label %choice.else48

str_gen_check27:                                  ; preds = %and.0.then
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %and.0.then
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %var.i, align 8
  %addtmp37 = add i64 %var.load36, 1
  %idx.neg38 = icmp slt i64 %addtmp37, 0
  br i1 %idx.neg38, label %idx_oob41, label %idx_big_check39

str_stale29:                                      ; preds = %str_gen_check27
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

idx_big_check39:                                  ; preds = %str_ok28
  %idx.big42 = icmp sge i64 %addtmp37, %s.read.len24
  br i1 %idx.big42, label %idx_oob41, label %idx_ok40

idx_ok40:                                         ; preds = %idx_oob41, %idx_big_check39
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %addtmp37
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  %cmptmp46 = icmp eq i64 %s.byte.val45, 58
  br label %and.0.exit

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok28
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then47:                                    ; preds = %and.0.exit
  br label %choice.exit49

choice.else48:                                    ; preds = %and.0.exit
  %var.load50 = load ptr, ptr %var.name, align 8
  %var.load51 = load i64, ptr %var.i, align 8
  %addtmp52 = add i64 %var.load51, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load50, i64 %addtmp52)
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else48, %choice.then47
  %choice.res = phi i1 [ true, %choice.then47 ], [ %call.res, %choice.else48 ]
  br label %choice.exit
}

define ptr @"dep_graph::decl_module"(ptr %0, i64 %1) #1 {
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit49
  %choice.res69 = phi ptr [ %choice.res, %choice.exit49 ], [ @str.4.struct, %choice.else ]
  ret ptr %choice.res69

str_gen_check11:                                  ; preds = %choice.then
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load19, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp20 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp20, label %and.1.then, label %and.1.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.1.then:                                       ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.name, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %str.tag25 = lshr i64 %s.read.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

and.1.else:                                       ; preds = %idx_ok
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %idx_ok40
  %and.1.phi = phi i1 [ %cmptmp46, %idx_ok40 ], [ %cmptmp20, %and.1.else ]
  br i1 %and.1.phi, label %choice.then47, label %choice.else48

str_gen_check27:                                  ; preds = %and.1.then
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %and.1.then
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %var.i, align 8
  %addtmp37 = add i64 %var.load36, 1
  %idx.neg38 = icmp slt i64 %addtmp37, 0
  br i1 %idx.neg38, label %idx_oob41, label %idx_big_check39

str_stale29:                                      ; preds = %str_gen_check27
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

idx_big_check39:                                  ; preds = %str_ok28
  %idx.big42 = icmp sge i64 %addtmp37, %s.read.len24
  br i1 %idx.big42, label %idx_oob41, label %idx_ok40

idx_ok40:                                         ; preds = %idx_oob41, %idx_big_check39
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %addtmp37
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  %cmptmp46 = icmp eq i64 %s.byte.val45, 58
  br label %and.1.exit

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok28
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then47:                                    ; preds = %and.1.exit
  %var.load50 = load ptr, ptr %var.name, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

choice.else48:                                    ; preds = %and.1.exit
  %var.load66 = load ptr, ptr %var.name, align 8
  %var.load67 = load i64, ptr %var.i, align 8
  %addtmp68 = add i64 %var.load67, 1
  %call.res = call ptr @"dep_graph::decl_module"(ptr %var.load66, i64 %addtmp68)
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else48, %str_ok57
  %choice.res = phi ptr [ %str.view, %str_ok57 ], [ %call.res, %choice.else48 ]
  br label %choice.exit

str_gen_check56:                                  ; preds = %choice.then47
  %arena.gen59 = call ptr @dva_arena_current()
  %arena.gen60 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen59, i32 0, i32 4
  %arena.gen61 = load i64, ptr %arena.gen60, align 8
  %str.tag.match62 = icmp eq i64 %str.tag54, %arena.gen61
  br i1 %str.tag.match62, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %choice.then47
  %s.read.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data64 = load ptr, ptr %s.read.data63, align 8
  %var.load65 = load i64, ptr %var.i, align 8
  %rel.start = add i64 %s.read.len53, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len53
  %final.start = select i1 %start.gt.len, i64 %s.read.len53, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load65, 0
  %rel.end = add i64 %s.read.len53, %var.load65
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load65
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len53
  %final.end = select i1 %end.gt.len, i64 %s.read.len53, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data64, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit49

str_stale58:                                      ; preds = %str_gen_check56
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57
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
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %m.cap2 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 2
  %m.keys3 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen8 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen9 = load i64, ptr %arena.gen8, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen9
  br i1 %str.tag.match, label %str_ok, label %str_stale

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
  %m.mem.state.gep = getelementptr i8, ptr %m.states4, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.empty, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  br i1 %m.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys3, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen10 = load i64, ptr %mk.slen, align 8
  %mk.slen11 = and i64 %mk.slen10, 281474976710655
  %str.tag12 = lshr i64 %mk.slen10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

m.mem.next:                                       ; preds = %str_ok27, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check14:                                  ; preds = %m.mem.found
  %arena.gen17 = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen17, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %str.tag.match20 = icmp eq i64 %str.tag12, %arena.gen19
  br i1 %str.tag.match20, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %m.mem.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata21 = load ptr, ptr %mk.sdata, align 8
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %mk.nlen22 = load i64, ptr %mk.nlen, align 8
  %mk.nlen23 = and i64 %mk.nlen22, 281474976710655
  %str.tag24 = lshr i64 %mk.nlen22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_stale16:                                      ; preds = %str_gen_check14
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str_gen_check26:                                  ; preds = %str_ok15
  %arena.gen29 = call ptr @dva_arena_current()
  %arena.gen30 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen29, i32 0, i32 4
  %arena.gen31 = load i64, ptr %arena.gen30, align 8
  %str.tag.match32 = icmp eq i64 %str.tag24, %arena.gen31
  br i1 %str.tag.match32, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %str_ok15
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %mk.ndata33 = load ptr, ptr %mk.ndata, align 8
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen23
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata21, ptr %mk.ndata33, i64 %mk.nlen23)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  %mk.eq = and i1 %mk.lenseq, %mk.cmpeq
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

str_stale28:                                      ; preds = %str_gen_check26
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

m.mem.hit:                                        ; preds = %str_ok27
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load34 = load ptr, ptr %var.ref, align 8
  br label %choice.exit

choice.else:                                      ; preds = %m.mem.done
  %var.load35 = load ptr, ptr %var.mod, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %eq.lhs.len36 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len37 = and i64 %eq.lhs.len36, 281474976710655
  %str.tag38 = lshr i64 %eq.lhs.len36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

choice.exit:                                      ; preds = %choice.exit61, %choice.then
  %choice.res570 = phi ptr [ %var.load34, %choice.then ], [ %choice.res569, %choice.exit61 ]
  ret ptr %choice.res570

str_gen_check40:                                  ; preds = %choice.else
  %arena.gen43 = call ptr @dva_arena_current()
  %arena.gen44 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen43, i32 0, i32 4
  %arena.gen45 = load i64, ptr %arena.gen44, align 8
  %str.tag.match46 = icmp eq i64 %str.tag38, %arena.gen45
  br i1 %str.tag.match46, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %choice.else
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len47 = and i64 %eq.rhs.len, 281474976710655
  %str.tag48 = lshr i64 %eq.rhs.len, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

str_stale42:                                      ; preds = %str_gen_check40
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

str_gen_check50:                                  ; preds = %str_ok41
  %arena.gen53 = call ptr @dva_arena_current()
  %arena.gen54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen53, i32 0, i32 4
  %arena.gen55 = load i64, ptr %arena.gen54, align 8
  %str.tag.match56 = icmp eq i64 %str.tag48, %arena.gen55
  br i1 %str.tag.match56, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %str_ok41
  %eq.len = icmp eq i64 %eq.lhs.len37, %eq.rhs.len47
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale52:                                      ; preds = %str_gen_check50
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok51

str.eq.then:                                      ; preds = %str_ok51
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data, i64 %eq.lhs.len37)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok51
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.2.then, label %and.2.else

and.2.then:                                       ; preds = %str.eq.merge
  %var.load58 = load ptr, ptr %var.ref, align 8
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load58, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.2.exit

and.2.else:                                       ; preds = %str.eq.merge
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %nottmp, %and.2.then ], [ %str.neq, %and.2.else ]
  br i1 %and.2.phi, label %choice.then59, label %choice.else60

choice.then59:                                    ; preds = %and.2.exit
  %var.load62 = load ptr, ptr %var.defs, align 8
  %var.load63 = load ptr, ptr %var.mod, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %concat.lhs64 = load i64, ptr %concat.lhs, align 8
  %concat.lhs65 = and i64 %concat.lhs64, 281474976710655
  %str.tag66 = lshr i64 %concat.lhs64, 48
  %str.immortal67 = icmp eq i64 %str.tag66, 0
  br i1 %str.immortal67, label %str_ok69, label %str_gen_check68

choice.else60:                                    ; preds = %and.2.exit
  br label %choice.exit61

choice.exit61:                                    ; preds = %choice.else60, %choice.exit215
  %choice.res569 = phi ptr [ %choice.res568, %choice.exit215 ], [ @str.4.struct, %choice.else60 ]
  br label %choice.exit

str_gen_check68:                                  ; preds = %choice.then59
  %arena.gen71 = call ptr @dva_arena_current()
  %arena.gen72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen71, i32 0, i32 4
  %arena.gen73 = load i64, ptr %arena.gen72, align 8
  %str.tag.match74 = icmp eq i64 %str.tag66, %arena.gen73
  br i1 %str.tag.match74, label %str_ok69, label %str_stale70

str_ok69:                                         ; preds = %str_stale70, %str_gen_check68, %choice.then59
  %concat.lhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %concat.lhs76 = load ptr, ptr %concat.lhs75, align 8
  %concat.rhs = load i64, ptr @str.5.struct, align 8
  %concat.rhs77 = and i64 %concat.rhs, 281474976710655
  %str.tag78 = lshr i64 %concat.rhs, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

str_stale70:                                      ; preds = %str_gen_check68
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok69

str_gen_check80:                                  ; preds = %str_ok69
  %arena.gen83 = call ptr @dva_arena_current()
  %arena.gen84 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen83, i32 0, i32 4
  %arena.gen85 = load i64, ptr %arena.gen84, align 8
  %str.tag.match86 = icmp eq i64 %str.tag78, %arena.gen85
  br i1 %str.tag.match86, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %str_ok69
  %concat.rhs87 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs65, i64 %concat.rhs77)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len88

str_stale82:                                      ; preds = %str_gen_check80
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

concat.sum.len88:                                 ; preds = %str_overflow_abort, %str_ok81
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum89 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf90 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %concat.tot.len91

str_overflow_abort:                               ; preds = %str_ok81
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len88

concat.tot.len91:                                 ; preds = %str_overflow_abort92, %concat.sum.len88
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum89)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs76, i64 %concat.lhs65, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs87, i64 %concat.rhs77, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur93 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load94 = load ptr, ptr %var.ref, align 8
  %concat.lhs95 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs96 = load i64, ptr %concat.lhs95, align 8
  %concat.lhs97 = and i64 %concat.lhs96, 281474976710655
  %str.tag98 = lshr i64 %concat.lhs96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_overflow_abort92:                             ; preds = %concat.sum.len88
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len91

str_gen_check100:                                 ; preds = %concat.tot.len91
  %arena.gen103 = call ptr @dva_arena_current()
  %arena.gen104 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen103, i32 0, i32 4
  %arena.gen105 = load i64, ptr %arena.gen104, align 8
  %str.tag.match106 = icmp eq i64 %str.tag98, %arena.gen105
  br i1 %str.tag.match106, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %concat.tot.len91
  %concat.lhs107 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs108 = load ptr, ptr %concat.lhs107, align 8
  %concat.rhs109 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %concat.rhs110 = load i64, ptr %concat.rhs109, align 8
  %concat.rhs111 = and i64 %concat.rhs110, 281474976710655
  %str.tag112 = lshr i64 %concat.rhs110, 48
  %str.immortal113 = icmp eq i64 %str.tag112, 0
  br i1 %str.immortal113, label %str_ok115, label %str_gen_check114

str_stale102:                                     ; preds = %str_gen_check100
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

str_gen_check114:                                 ; preds = %str_ok101
  %arena.gen117 = call ptr @dva_arena_current()
  %arena.gen118 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen117, i32 0, i32 4
  %arena.gen119 = load i64, ptr %arena.gen118, align 8
  %str.tag.match120 = icmp eq i64 %str.tag112, %arena.gen119
  br i1 %str.tag.match120, label %str_ok115, label %str_stale116

str_ok115:                                        ; preds = %str_stale116, %str_gen_check114, %str_ok101
  %concat.rhs121 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %concat.rhs122 = load ptr, ptr %concat.rhs121, align 8
  %concat.sum.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs97, i64 %concat.rhs111)
  %sum124 = extractvalue { i64, i1 } %concat.sum.len123, 0
  %ovf125 = extractvalue { i64, i1 } %concat.sum.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %concat.sum.len126

str_stale116:                                     ; preds = %str_gen_check114
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok115

concat.sum.len126:                                ; preds = %str_overflow_abort127, %str_ok115
  %concat.tot.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum124, i64 1)
  %sum129 = extractvalue { i64, i1 } %concat.tot.len128, 0
  %ovf130 = extractvalue { i64, i1 } %concat.tot.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %concat.tot.len131

str_overflow_abort127:                            ; preds = %str_ok115
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len126

concat.tot.len131:                                ; preds = %str_overflow_abort132, %concat.sum.len126
  %arena.cur133 = call ptr @dva_arena_current()
  %concat.buf134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %sum129)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf134, ptr align 1 %concat.lhs108, i64 %concat.lhs97, i1 false)
  %concat.mid135 = getelementptr i8, ptr %concat.buf134, i64 %concat.lhs97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid135, ptr align 1 %concat.rhs122, i64 %concat.rhs111, i1 false)
  %concat.nul136 = getelementptr i8, ptr %concat.buf134, i64 %sum124
  store i8 0, ptr %concat.nul136, align 1
  %arena.cur137 = call ptr @dva_arena_current()
  %concat.str138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 16)
  %str.build.len.gep139 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 0
  store i64 %sum124, ptr %str.build.len.gep139, align 8
  %str.build.data.gep140 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 1
  store ptr %concat.buf134, ptr %str.build.data.gep140, align 8
  %m.cap141 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load62, i32 0, i32 1
  %m.cap142 = load i64, ptr %m.cap141, align 8
  %m.keys143 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load62, i32 0, i32 2
  %m.keys144 = load ptr, ptr %m.keys143, align 8
  %m.states145 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load62, i32 0, i32 4
  %m.states146 = load ptr, ptr %m.states145, align 8
  %mk.data147 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 1
  %mk.data148 = load ptr, ptr %mk.data147, align 8
  %mk.len149 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 0
  %mk.len150 = load i64, ptr %mk.len149, align 8
  %mk.len151 = and i64 %mk.len150, 281474976710655
  %str.tag152 = lshr i64 %mk.len150, 48
  %str.immortal153 = icmp eq i64 %str.tag152, 0
  br i1 %str.immortal153, label %str_ok155, label %str_gen_check154

str_overflow_abort132:                            ; preds = %concat.sum.len126
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len131

str_gen_check154:                                 ; preds = %concat.tot.len131
  %arena.gen157 = call ptr @dva_arena_current()
  %arena.gen158 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen157, i32 0, i32 4
  %arena.gen159 = load i64, ptr %arena.gen158, align 8
  %str.tag.match160 = icmp eq i64 %str.tag152, %arena.gen159
  br i1 %str.tag.match160, label %str_ok155, label %str_stale156

str_ok155:                                        ; preds = %str_stale156, %str_gen_check154, %concat.tot.len131
  %hash.str161 = call i64 @dva_hash_string(ptr %mk.data148, i64 %mk.len151)
  %m.capm1162 = sub i64 %m.cap142, 1
  %m.idx0163 = and i64 %hash.str161, %m.capm1162
  br label %m.mem.loop164

str_stale156:                                     ; preds = %str_gen_check154
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok155

m.mem.loop164:                                    ; preds = %m.mem.next167, %str_ok155
  %m.mem.idx170 = phi i64 [ %m.idx0163, %str_ok155 ], [ %m.mem.idx.next211, %m.mem.next167 ]
  %m.mem.state.gep171 = getelementptr i8, ptr %m.states146, i64 %m.mem.idx170
  %m.mem.state172 = load i8, ptr %m.mem.state.gep171, align 1
  %m.mem.is.empty173 = icmp eq i8 %m.mem.state172, 0
  %m.is.tomb174 = icmp eq i8 %m.mem.state172, 2
  br i1 %m.mem.is.empty173, label %m.mem.miss168, label %m.mem.probe165

m.mem.probe165:                                   ; preds = %m.mem.loop164
  br i1 %m.is.tomb174, label %m.mem.next167, label %m.mem.found166

m.mem.found166:                                   ; preds = %m.mem.probe165
  %m.mem.key.slot175 = getelementptr ptr, ptr %m.keys144, i64 %m.mem.idx170
  %mk.stored176 = load ptr, ptr %m.mem.key.slot175, align 8
  %mk.slen177 = getelementptr inbounds { i64, ptr }, ptr %mk.stored176, i32 0, i32 0
  %mk.slen178 = load i64, ptr %mk.slen177, align 8
  %mk.slen179 = and i64 %mk.slen178, 281474976710655
  %str.tag180 = lshr i64 %mk.slen178, 48
  %str.immortal181 = icmp eq i64 %str.tag180, 0
  br i1 %str.immortal181, label %str_ok183, label %str_gen_check182

m.mem.next167:                                    ; preds = %str_ok197, %m.mem.probe165
  %m.mem.idx.add210 = add i64 %m.mem.idx170, 1
  %m.mem.idx.next211 = and i64 %m.mem.idx.add210, %m.capm1162
  br label %m.mem.loop164

m.mem.miss168:                                    ; preds = %m.mem.loop164
  br label %m.mem.done169

m.mem.done169:                                    ; preds = %m.mem.miss168, %m.mem.hit209
  %m.mem.res212 = phi i1 [ true, %m.mem.hit209 ], [ false, %m.mem.miss168 ]
  br i1 %m.mem.res212, label %choice.then213, label %choice.else214

str_gen_check182:                                 ; preds = %m.mem.found166
  %arena.gen185 = call ptr @dva_arena_current()
  %arena.gen186 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen185, i32 0, i32 4
  %arena.gen187 = load i64, ptr %arena.gen186, align 8
  %str.tag.match188 = icmp eq i64 %str.tag180, %arena.gen187
  br i1 %str.tag.match188, label %str_ok183, label %str_stale184

str_ok183:                                        ; preds = %str_stale184, %str_gen_check182, %m.mem.found166
  %mk.sdata189 = getelementptr inbounds { i64, ptr }, ptr %mk.stored176, i32 0, i32 1
  %mk.sdata190 = load ptr, ptr %mk.sdata189, align 8
  %mk.nlen191 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 0
  %mk.nlen192 = load i64, ptr %mk.nlen191, align 8
  %mk.nlen193 = and i64 %mk.nlen192, 281474976710655
  %str.tag194 = lshr i64 %mk.nlen192, 48
  %str.immortal195 = icmp eq i64 %str.tag194, 0
  br i1 %str.immortal195, label %str_ok197, label %str_gen_check196

str_stale184:                                     ; preds = %str_gen_check182
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok183

str_gen_check196:                                 ; preds = %str_ok183
  %arena.gen199 = call ptr @dva_arena_current()
  %arena.gen200 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen199, i32 0, i32 4
  %arena.gen201 = load i64, ptr %arena.gen200, align 8
  %str.tag.match202 = icmp eq i64 %str.tag194, %arena.gen201
  br i1 %str.tag.match202, label %str_ok197, label %str_stale198

str_ok197:                                        ; preds = %str_stale198, %str_gen_check196, %str_ok183
  %mk.ndata203 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 1
  %mk.ndata204 = load ptr, ptr %mk.ndata203, align 8
  %mk.lenseq205 = icmp eq i64 %mk.slen179, %mk.nlen193
  %mk.memcmp206 = call i32 @memcmp(ptr %mk.sdata190, ptr %mk.ndata204, i64 %mk.nlen193)
  %mk.cmpeq207 = icmp eq i32 %mk.memcmp206, 0
  %mk.eq208 = and i1 %mk.lenseq205, %mk.cmpeq207
  br i1 %mk.eq208, label %m.mem.hit209, label %m.mem.next167

str_stale198:                                     ; preds = %str_gen_check196
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok197

m.mem.hit209:                                     ; preds = %str_ok197
  br label %m.mem.done169

choice.then213:                                   ; preds = %m.mem.done169
  %var.load216 = load ptr, ptr %var.mod, align 8
  %concat.lhs217 = getelementptr inbounds { i64, ptr }, ptr %var.load216, i32 0, i32 0
  %concat.lhs218 = load i64, ptr %concat.lhs217, align 8
  %concat.lhs219 = and i64 %concat.lhs218, 281474976710655
  %str.tag220 = lshr i64 %concat.lhs218, 48
  %str.immortal221 = icmp eq i64 %str.tag220, 0
  br i1 %str.immortal221, label %str_ok223, label %str_gen_check222

choice.else214:                                   ; preds = %m.mem.done169
  %var.load308 = load ptr, ptr %var.defs, align 8
  %var.load309 = load ptr, ptr %var.mod, align 8
  %concat.lhs310 = getelementptr inbounds { i64, ptr }, ptr %var.load309, i32 0, i32 0
  %concat.lhs311 = load i64, ptr %concat.lhs310, align 8
  %concat.lhs312 = and i64 %concat.lhs311, 281474976710655
  %str.tag313 = lshr i64 %concat.lhs311, 48
  %str.immortal314 = icmp eq i64 %str.tag313, 0
  br i1 %str.immortal314, label %str_ok316, label %str_gen_check315

choice.exit215:                                   ; preds = %choice.exit475, %concat.tot.len298
  %choice.res568 = phi ptr [ %concat.str305, %concat.tot.len298 ], [ %choice.res, %choice.exit475 ]
  br label %choice.exit61

str_gen_check222:                                 ; preds = %choice.then213
  %arena.gen225 = call ptr @dva_arena_current()
  %arena.gen226 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen225, i32 0, i32 4
  %arena.gen227 = load i64, ptr %arena.gen226, align 8
  %str.tag.match228 = icmp eq i64 %str.tag220, %arena.gen227
  br i1 %str.tag.match228, label %str_ok223, label %str_stale224

str_ok223:                                        ; preds = %str_stale224, %str_gen_check222, %choice.then213
  %concat.lhs229 = getelementptr inbounds { i64, ptr }, ptr %var.load216, i32 0, i32 1
  %concat.lhs230 = load ptr, ptr %concat.lhs229, align 8
  %concat.rhs231 = load i64, ptr @str.5.struct, align 8
  %concat.rhs232 = and i64 %concat.rhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale224:                                     ; preds = %str_gen_check222
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok223

str_gen_check235:                                 ; preds = %str_ok223
  %arena.gen238 = call ptr @dva_arena_current()
  %arena.gen239 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen238, i32 0, i32 4
  %arena.gen240 = load i64, ptr %arena.gen239, align 8
  %str.tag.match241 = icmp eq i64 %str.tag233, %arena.gen240
  br i1 %str.tag.match241, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok223
  %concat.rhs242 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs219, i64 %concat.rhs232)
  %sum244 = extractvalue { i64, i1 } %concat.sum.len243, 0
  %ovf245 = extractvalue { i64, i1 } %concat.sum.len243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %concat.sum.len246

str_stale237:                                     ; preds = %str_gen_check235
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len246:                                ; preds = %str_overflow_abort247, %str_ok236
  %concat.tot.len248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum244, i64 1)
  %sum249 = extractvalue { i64, i1 } %concat.tot.len248, 0
  %ovf250 = extractvalue { i64, i1 } %concat.tot.len248, 1
  br i1 %ovf250, label %str_overflow_abort252, label %concat.tot.len251

str_overflow_abort247:                            ; preds = %str_ok236
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len246

concat.tot.len251:                                ; preds = %str_overflow_abort252, %concat.sum.len246
  %arena.cur253 = call ptr @dva_arena_current()
  %concat.buf254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 %sum249)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf254, ptr align 1 %concat.lhs230, i64 %concat.lhs219, i1 false)
  %concat.mid255 = getelementptr i8, ptr %concat.buf254, i64 %concat.lhs219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid255, ptr align 1 %concat.rhs242, i64 %concat.rhs232, i1 false)
  %concat.nul256 = getelementptr i8, ptr %concat.buf254, i64 %sum244
  store i8 0, ptr %concat.nul256, align 1
  %arena.cur257 = call ptr @dva_arena_current()
  %concat.str258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 16)
  %str.build.len.gep259 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 0
  store i64 %sum244, ptr %str.build.len.gep259, align 8
  %str.build.data.gep260 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 1
  store ptr %concat.buf254, ptr %str.build.data.gep260, align 8
  %var.load261 = load ptr, ptr %var.ref, align 8
  %concat.lhs262 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 0
  %concat.lhs263 = load i64, ptr %concat.lhs262, align 8
  %concat.lhs264 = and i64 %concat.lhs263, 281474976710655
  %str.tag265 = lshr i64 %concat.lhs263, 48
  %str.immortal266 = icmp eq i64 %str.tag265, 0
  br i1 %str.immortal266, label %str_ok268, label %str_gen_check267

str_overflow_abort252:                            ; preds = %concat.sum.len246
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len251

str_gen_check267:                                 ; preds = %concat.tot.len251
  %arena.gen270 = call ptr @dva_arena_current()
  %arena.gen271 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen270, i32 0, i32 4
  %arena.gen272 = load i64, ptr %arena.gen271, align 8
  %str.tag.match273 = icmp eq i64 %str.tag265, %arena.gen272
  br i1 %str.tag.match273, label %str_ok268, label %str_stale269

str_ok268:                                        ; preds = %str_stale269, %str_gen_check267, %concat.tot.len251
  %concat.lhs274 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 1
  %concat.lhs275 = load ptr, ptr %concat.lhs274, align 8
  %concat.rhs276 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 0
  %concat.rhs277 = load i64, ptr %concat.rhs276, align 8
  %concat.rhs278 = and i64 %concat.rhs277, 281474976710655
  %str.tag279 = lshr i64 %concat.rhs277, 48
  %str.immortal280 = icmp eq i64 %str.tag279, 0
  br i1 %str.immortal280, label %str_ok282, label %str_gen_check281

str_stale269:                                     ; preds = %str_gen_check267
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok268

str_gen_check281:                                 ; preds = %str_ok268
  %arena.gen284 = call ptr @dva_arena_current()
  %arena.gen285 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen284, i32 0, i32 4
  %arena.gen286 = load i64, ptr %arena.gen285, align 8
  %str.tag.match287 = icmp eq i64 %str.tag279, %arena.gen286
  br i1 %str.tag.match287, label %str_ok282, label %str_stale283

str_ok282:                                        ; preds = %str_stale283, %str_gen_check281, %str_ok268
  %concat.rhs288 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 1
  %concat.rhs289 = load ptr, ptr %concat.rhs288, align 8
  %concat.sum.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs264, i64 %concat.rhs278)
  %sum291 = extractvalue { i64, i1 } %concat.sum.len290, 0
  %ovf292 = extractvalue { i64, i1 } %concat.sum.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %concat.sum.len293

str_stale283:                                     ; preds = %str_gen_check281
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok282

concat.sum.len293:                                ; preds = %str_overflow_abort294, %str_ok282
  %concat.tot.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum291, i64 1)
  %sum296 = extractvalue { i64, i1 } %concat.tot.len295, 0
  %ovf297 = extractvalue { i64, i1 } %concat.tot.len295, 1
  br i1 %ovf297, label %str_overflow_abort299, label %concat.tot.len298

str_overflow_abort294:                            ; preds = %str_ok282
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len293

concat.tot.len298:                                ; preds = %str_overflow_abort299, %concat.sum.len293
  %arena.cur300 = call ptr @dva_arena_current()
  %concat.buf301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 %sum296)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf301, ptr align 1 %concat.lhs275, i64 %concat.lhs264, i1 false)
  %concat.mid302 = getelementptr i8, ptr %concat.buf301, i64 %concat.lhs264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid302, ptr align 1 %concat.rhs289, i64 %concat.rhs278, i1 false)
  %concat.nul303 = getelementptr i8, ptr %concat.buf301, i64 %sum291
  store i8 0, ptr %concat.nul303, align 1
  %arena.cur304 = call ptr @dva_arena_current()
  %concat.str305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 16)
  %str.build.len.gep306 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 0
  store i64 %sum291, ptr %str.build.len.gep306, align 8
  %str.build.data.gep307 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 1
  store ptr %concat.buf301, ptr %str.build.data.gep307, align 8
  br label %choice.exit215

str_overflow_abort299:                            ; preds = %concat.sum.len293
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len298

str_gen_check315:                                 ; preds = %choice.else214
  %arena.gen318 = call ptr @dva_arena_current()
  %arena.gen319 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen318, i32 0, i32 4
  %arena.gen320 = load i64, ptr %arena.gen319, align 8
  %str.tag.match321 = icmp eq i64 %str.tag313, %arena.gen320
  br i1 %str.tag.match321, label %str_ok316, label %str_stale317

str_ok316:                                        ; preds = %str_stale317, %str_gen_check315, %choice.else214
  %concat.lhs322 = getelementptr inbounds { i64, ptr }, ptr %var.load309, i32 0, i32 1
  %concat.lhs323 = load ptr, ptr %concat.lhs322, align 8
  %concat.rhs324 = load i64, ptr @str.6.struct, align 8
  %concat.rhs325 = and i64 %concat.rhs324, 281474976710655
  %str.tag326 = lshr i64 %concat.rhs324, 48
  %str.immortal327 = icmp eq i64 %str.tag326, 0
  br i1 %str.immortal327, label %str_ok329, label %str_gen_check328

str_stale317:                                     ; preds = %str_gen_check315
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok316

str_gen_check328:                                 ; preds = %str_ok316
  %arena.gen331 = call ptr @dva_arena_current()
  %arena.gen332 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen331, i32 0, i32 4
  %arena.gen333 = load i64, ptr %arena.gen332, align 8
  %str.tag.match334 = icmp eq i64 %str.tag326, %arena.gen333
  br i1 %str.tag.match334, label %str_ok329, label %str_stale330

str_ok329:                                        ; preds = %str_stale330, %str_gen_check328, %str_ok316
  %concat.rhs335 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len336 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs312, i64 %concat.rhs325)
  %sum337 = extractvalue { i64, i1 } %concat.sum.len336, 0
  %ovf338 = extractvalue { i64, i1 } %concat.sum.len336, 1
  br i1 %ovf338, label %str_overflow_abort340, label %concat.sum.len339

str_stale330:                                     ; preds = %str_gen_check328
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok329

concat.sum.len339:                                ; preds = %str_overflow_abort340, %str_ok329
  %concat.tot.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum337, i64 1)
  %sum342 = extractvalue { i64, i1 } %concat.tot.len341, 0
  %ovf343 = extractvalue { i64, i1 } %concat.tot.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %concat.tot.len344

str_overflow_abort340:                            ; preds = %str_ok329
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len339

concat.tot.len344:                                ; preds = %str_overflow_abort345, %concat.sum.len339
  %arena.cur346 = call ptr @dva_arena_current()
  %concat.buf347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 %sum342)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf347, ptr align 1 %concat.lhs323, i64 %concat.lhs312, i1 false)
  %concat.mid348 = getelementptr i8, ptr %concat.buf347, i64 %concat.lhs312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid348, ptr align 1 %concat.rhs335, i64 %concat.rhs325, i1 false)
  %concat.nul349 = getelementptr i8, ptr %concat.buf347, i64 %sum337
  store i8 0, ptr %concat.nul349, align 1
  %arena.cur350 = call ptr @dva_arena_current()
  %concat.str351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 16)
  %str.build.len.gep352 = getelementptr inbounds { i64, ptr }, ptr %concat.str351, i32 0, i32 0
  store i64 %sum337, ptr %str.build.len.gep352, align 8
  %str.build.data.gep353 = getelementptr inbounds { i64, ptr }, ptr %concat.str351, i32 0, i32 1
  store ptr %concat.buf347, ptr %str.build.data.gep353, align 8
  %var.load354 = load ptr, ptr %var.ref, align 8
  %concat.lhs355 = getelementptr inbounds { i64, ptr }, ptr %concat.str351, i32 0, i32 0
  %concat.lhs356 = load i64, ptr %concat.lhs355, align 8
  %concat.lhs357 = and i64 %concat.lhs356, 281474976710655
  %str.tag358 = lshr i64 %concat.lhs356, 48
  %str.immortal359 = icmp eq i64 %str.tag358, 0
  br i1 %str.immortal359, label %str_ok361, label %str_gen_check360

str_overflow_abort345:                            ; preds = %concat.sum.len339
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len344

str_gen_check360:                                 ; preds = %concat.tot.len344
  %arena.gen363 = call ptr @dva_arena_current()
  %arena.gen364 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen363, i32 0, i32 4
  %arena.gen365 = load i64, ptr %arena.gen364, align 8
  %str.tag.match366 = icmp eq i64 %str.tag358, %arena.gen365
  br i1 %str.tag.match366, label %str_ok361, label %str_stale362

str_ok361:                                        ; preds = %str_stale362, %str_gen_check360, %concat.tot.len344
  %concat.lhs367 = getelementptr inbounds { i64, ptr }, ptr %concat.str351, i32 0, i32 1
  %concat.lhs368 = load ptr, ptr %concat.lhs367, align 8
  %concat.rhs369 = getelementptr inbounds { i64, ptr }, ptr %var.load354, i32 0, i32 0
  %concat.rhs370 = load i64, ptr %concat.rhs369, align 8
  %concat.rhs371 = and i64 %concat.rhs370, 281474976710655
  %str.tag372 = lshr i64 %concat.rhs370, 48
  %str.immortal373 = icmp eq i64 %str.tag372, 0
  br i1 %str.immortal373, label %str_ok375, label %str_gen_check374

str_stale362:                                     ; preds = %str_gen_check360
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok361

str_gen_check374:                                 ; preds = %str_ok361
  %arena.gen377 = call ptr @dva_arena_current()
  %arena.gen378 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen377, i32 0, i32 4
  %arena.gen379 = load i64, ptr %arena.gen378, align 8
  %str.tag.match380 = icmp eq i64 %str.tag372, %arena.gen379
  br i1 %str.tag.match380, label %str_ok375, label %str_stale376

str_ok375:                                        ; preds = %str_stale376, %str_gen_check374, %str_ok361
  %concat.rhs381 = getelementptr inbounds { i64, ptr }, ptr %var.load354, i32 0, i32 1
  %concat.rhs382 = load ptr, ptr %concat.rhs381, align 8
  %concat.sum.len383 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs357, i64 %concat.rhs371)
  %sum384 = extractvalue { i64, i1 } %concat.sum.len383, 0
  %ovf385 = extractvalue { i64, i1 } %concat.sum.len383, 1
  br i1 %ovf385, label %str_overflow_abort387, label %concat.sum.len386

str_stale376:                                     ; preds = %str_gen_check374
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok375

concat.sum.len386:                                ; preds = %str_overflow_abort387, %str_ok375
  %concat.tot.len388 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum384, i64 1)
  %sum389 = extractvalue { i64, i1 } %concat.tot.len388, 0
  %ovf390 = extractvalue { i64, i1 } %concat.tot.len388, 1
  br i1 %ovf390, label %str_overflow_abort392, label %concat.tot.len391

str_overflow_abort387:                            ; preds = %str_ok375
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len386

concat.tot.len391:                                ; preds = %str_overflow_abort392, %concat.sum.len386
  %arena.cur393 = call ptr @dva_arena_current()
  %concat.buf394 = call ptr @dva_arena_alloc(ptr %arena.cur393, i64 %sum389)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf394, ptr align 1 %concat.lhs368, i64 %concat.lhs357, i1 false)
  %concat.mid395 = getelementptr i8, ptr %concat.buf394, i64 %concat.lhs357
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid395, ptr align 1 %concat.rhs382, i64 %concat.rhs371, i1 false)
  %concat.nul396 = getelementptr i8, ptr %concat.buf394, i64 %sum384
  store i8 0, ptr %concat.nul396, align 1
  %arena.cur397 = call ptr @dva_arena_current()
  %concat.str398 = call ptr @dva_arena_alloc(ptr %arena.cur397, i64 16)
  %str.build.len.gep399 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 0
  store i64 %sum384, ptr %str.build.len.gep399, align 8
  %str.build.data.gep400 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 1
  store ptr %concat.buf394, ptr %str.build.data.gep400, align 8
  %m.cap401 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load308, i32 0, i32 1
  %m.cap402 = load i64, ptr %m.cap401, align 8
  %m.keys403 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load308, i32 0, i32 2
  %m.keys404 = load ptr, ptr %m.keys403, align 8
  %m.states405 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load308, i32 0, i32 4
  %m.states406 = load ptr, ptr %m.states405, align 8
  %mk.data407 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 1
  %mk.data408 = load ptr, ptr %mk.data407, align 8
  %mk.len409 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 0
  %mk.len410 = load i64, ptr %mk.len409, align 8
  %mk.len411 = and i64 %mk.len410, 281474976710655
  %str.tag412 = lshr i64 %mk.len410, 48
  %str.immortal413 = icmp eq i64 %str.tag412, 0
  br i1 %str.immortal413, label %str_ok415, label %str_gen_check414

str_overflow_abort392:                            ; preds = %concat.sum.len386
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len391

str_gen_check414:                                 ; preds = %concat.tot.len391
  %arena.gen417 = call ptr @dva_arena_current()
  %arena.gen418 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen417, i32 0, i32 4
  %arena.gen419 = load i64, ptr %arena.gen418, align 8
  %str.tag.match420 = icmp eq i64 %str.tag412, %arena.gen419
  br i1 %str.tag.match420, label %str_ok415, label %str_stale416

str_ok415:                                        ; preds = %str_stale416, %str_gen_check414, %concat.tot.len391
  %hash.str421 = call i64 @dva_hash_string(ptr %mk.data408, i64 %mk.len411)
  %m.capm1422 = sub i64 %m.cap402, 1
  %m.idx0423 = and i64 %hash.str421, %m.capm1422
  br label %m.mem.loop424

str_stale416:                                     ; preds = %str_gen_check414
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok415

m.mem.loop424:                                    ; preds = %m.mem.next427, %str_ok415
  %m.mem.idx430 = phi i64 [ %m.idx0423, %str_ok415 ], [ %m.mem.idx.next471, %m.mem.next427 ]
  %m.mem.state.gep431 = getelementptr i8, ptr %m.states406, i64 %m.mem.idx430
  %m.mem.state432 = load i8, ptr %m.mem.state.gep431, align 1
  %m.mem.is.empty433 = icmp eq i8 %m.mem.state432, 0
  %m.is.tomb434 = icmp eq i8 %m.mem.state432, 2
  br i1 %m.mem.is.empty433, label %m.mem.miss428, label %m.mem.probe425

m.mem.probe425:                                   ; preds = %m.mem.loop424
  br i1 %m.is.tomb434, label %m.mem.next427, label %m.mem.found426

m.mem.found426:                                   ; preds = %m.mem.probe425
  %m.mem.key.slot435 = getelementptr ptr, ptr %m.keys404, i64 %m.mem.idx430
  %mk.stored436 = load ptr, ptr %m.mem.key.slot435, align 8
  %mk.slen437 = getelementptr inbounds { i64, ptr }, ptr %mk.stored436, i32 0, i32 0
  %mk.slen438 = load i64, ptr %mk.slen437, align 8
  %mk.slen439 = and i64 %mk.slen438, 281474976710655
  %str.tag440 = lshr i64 %mk.slen438, 48
  %str.immortal441 = icmp eq i64 %str.tag440, 0
  br i1 %str.immortal441, label %str_ok443, label %str_gen_check442

m.mem.next427:                                    ; preds = %str_ok457, %m.mem.probe425
  %m.mem.idx.add470 = add i64 %m.mem.idx430, 1
  %m.mem.idx.next471 = and i64 %m.mem.idx.add470, %m.capm1422
  br label %m.mem.loop424

m.mem.miss428:                                    ; preds = %m.mem.loop424
  br label %m.mem.done429

m.mem.done429:                                    ; preds = %m.mem.miss428, %m.mem.hit469
  %m.mem.res472 = phi i1 [ true, %m.mem.hit469 ], [ false, %m.mem.miss428 ]
  br i1 %m.mem.res472, label %choice.then473, label %choice.else474

str_gen_check442:                                 ; preds = %m.mem.found426
  %arena.gen445 = call ptr @dva_arena_current()
  %arena.gen446 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen445, i32 0, i32 4
  %arena.gen447 = load i64, ptr %arena.gen446, align 8
  %str.tag.match448 = icmp eq i64 %str.tag440, %arena.gen447
  br i1 %str.tag.match448, label %str_ok443, label %str_stale444

str_ok443:                                        ; preds = %str_stale444, %str_gen_check442, %m.mem.found426
  %mk.sdata449 = getelementptr inbounds { i64, ptr }, ptr %mk.stored436, i32 0, i32 1
  %mk.sdata450 = load ptr, ptr %mk.sdata449, align 8
  %mk.nlen451 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 0
  %mk.nlen452 = load i64, ptr %mk.nlen451, align 8
  %mk.nlen453 = and i64 %mk.nlen452, 281474976710655
  %str.tag454 = lshr i64 %mk.nlen452, 48
  %str.immortal455 = icmp eq i64 %str.tag454, 0
  br i1 %str.immortal455, label %str_ok457, label %str_gen_check456

str_stale444:                                     ; preds = %str_gen_check442
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok443

str_gen_check456:                                 ; preds = %str_ok443
  %arena.gen459 = call ptr @dva_arena_current()
  %arena.gen460 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen459, i32 0, i32 4
  %arena.gen461 = load i64, ptr %arena.gen460, align 8
  %str.tag.match462 = icmp eq i64 %str.tag454, %arena.gen461
  br i1 %str.tag.match462, label %str_ok457, label %str_stale458

str_ok457:                                        ; preds = %str_stale458, %str_gen_check456, %str_ok443
  %mk.ndata463 = getelementptr inbounds { i64, ptr }, ptr %concat.str398, i32 0, i32 1
  %mk.ndata464 = load ptr, ptr %mk.ndata463, align 8
  %mk.lenseq465 = icmp eq i64 %mk.slen439, %mk.nlen453
  %mk.memcmp466 = call i32 @memcmp(ptr %mk.sdata450, ptr %mk.ndata464, i64 %mk.nlen453)
  %mk.cmpeq467 = icmp eq i32 %mk.memcmp466, 0
  %mk.eq468 = and i1 %mk.lenseq465, %mk.cmpeq467
  br i1 %mk.eq468, label %m.mem.hit469, label %m.mem.next427

str_stale458:                                     ; preds = %str_gen_check456
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok457

m.mem.hit469:                                     ; preds = %str_ok457
  br label %m.mem.done429

choice.then473:                                   ; preds = %m.mem.done429
  %var.load476 = load ptr, ptr %var.mod, align 8
  %concat.lhs477 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %concat.lhs478 = load i64, ptr %concat.lhs477, align 8
  %concat.lhs479 = and i64 %concat.lhs478, 281474976710655
  %str.tag480 = lshr i64 %concat.lhs478, 48
  %str.immortal481 = icmp eq i64 %str.tag480, 0
  br i1 %str.immortal481, label %str_ok483, label %str_gen_check482

choice.else474:                                   ; preds = %m.mem.done429
  br label %choice.exit475

choice.exit475:                                   ; preds = %choice.else474, %concat.tot.len558
  %choice.res = phi ptr [ %concat.str565, %concat.tot.len558 ], [ @str.4.struct, %choice.else474 ]
  br label %choice.exit215

str_gen_check482:                                 ; preds = %choice.then473
  %arena.gen485 = call ptr @dva_arena_current()
  %arena.gen486 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen485, i32 0, i32 4
  %arena.gen487 = load i64, ptr %arena.gen486, align 8
  %str.tag.match488 = icmp eq i64 %str.tag480, %arena.gen487
  br i1 %str.tag.match488, label %str_ok483, label %str_stale484

str_ok483:                                        ; preds = %str_stale484, %str_gen_check482, %choice.then473
  %concat.lhs489 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %concat.lhs490 = load ptr, ptr %concat.lhs489, align 8
  %concat.rhs491 = load i64, ptr @str.6.struct, align 8
  %concat.rhs492 = and i64 %concat.rhs491, 281474976710655
  %str.tag493 = lshr i64 %concat.rhs491, 48
  %str.immortal494 = icmp eq i64 %str.tag493, 0
  br i1 %str.immortal494, label %str_ok496, label %str_gen_check495

str_stale484:                                     ; preds = %str_gen_check482
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok483

str_gen_check495:                                 ; preds = %str_ok483
  %arena.gen498 = call ptr @dva_arena_current()
  %arena.gen499 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen498, i32 0, i32 4
  %arena.gen500 = load i64, ptr %arena.gen499, align 8
  %str.tag.match501 = icmp eq i64 %str.tag493, %arena.gen500
  br i1 %str.tag.match501, label %str_ok496, label %str_stale497

str_ok496:                                        ; preds = %str_stale497, %str_gen_check495, %str_ok483
  %concat.rhs502 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len503 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs479, i64 %concat.rhs492)
  %sum504 = extractvalue { i64, i1 } %concat.sum.len503, 0
  %ovf505 = extractvalue { i64, i1 } %concat.sum.len503, 1
  br i1 %ovf505, label %str_overflow_abort507, label %concat.sum.len506

str_stale497:                                     ; preds = %str_gen_check495
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok496

concat.sum.len506:                                ; preds = %str_overflow_abort507, %str_ok496
  %concat.tot.len508 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum504, i64 1)
  %sum509 = extractvalue { i64, i1 } %concat.tot.len508, 0
  %ovf510 = extractvalue { i64, i1 } %concat.tot.len508, 1
  br i1 %ovf510, label %str_overflow_abort512, label %concat.tot.len511

str_overflow_abort507:                            ; preds = %str_ok496
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len506

concat.tot.len511:                                ; preds = %str_overflow_abort512, %concat.sum.len506
  %arena.cur513 = call ptr @dva_arena_current()
  %concat.buf514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 %sum509)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf514, ptr align 1 %concat.lhs490, i64 %concat.lhs479, i1 false)
  %concat.mid515 = getelementptr i8, ptr %concat.buf514, i64 %concat.lhs479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid515, ptr align 1 %concat.rhs502, i64 %concat.rhs492, i1 false)
  %concat.nul516 = getelementptr i8, ptr %concat.buf514, i64 %sum504
  store i8 0, ptr %concat.nul516, align 1
  %arena.cur517 = call ptr @dva_arena_current()
  %concat.str518 = call ptr @dva_arena_alloc(ptr %arena.cur517, i64 16)
  %str.build.len.gep519 = getelementptr inbounds { i64, ptr }, ptr %concat.str518, i32 0, i32 0
  store i64 %sum504, ptr %str.build.len.gep519, align 8
  %str.build.data.gep520 = getelementptr inbounds { i64, ptr }, ptr %concat.str518, i32 0, i32 1
  store ptr %concat.buf514, ptr %str.build.data.gep520, align 8
  %var.load521 = load ptr, ptr %var.ref, align 8
  %concat.lhs522 = getelementptr inbounds { i64, ptr }, ptr %concat.str518, i32 0, i32 0
  %concat.lhs523 = load i64, ptr %concat.lhs522, align 8
  %concat.lhs524 = and i64 %concat.lhs523, 281474976710655
  %str.tag525 = lshr i64 %concat.lhs523, 48
  %str.immortal526 = icmp eq i64 %str.tag525, 0
  br i1 %str.immortal526, label %str_ok528, label %str_gen_check527

str_overflow_abort512:                            ; preds = %concat.sum.len506
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len511

str_gen_check527:                                 ; preds = %concat.tot.len511
  %arena.gen530 = call ptr @dva_arena_current()
  %arena.gen531 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen530, i32 0, i32 4
  %arena.gen532 = load i64, ptr %arena.gen531, align 8
  %str.tag.match533 = icmp eq i64 %str.tag525, %arena.gen532
  br i1 %str.tag.match533, label %str_ok528, label %str_stale529

str_ok528:                                        ; preds = %str_stale529, %str_gen_check527, %concat.tot.len511
  %concat.lhs534 = getelementptr inbounds { i64, ptr }, ptr %concat.str518, i32 0, i32 1
  %concat.lhs535 = load ptr, ptr %concat.lhs534, align 8
  %concat.rhs536 = getelementptr inbounds { i64, ptr }, ptr %var.load521, i32 0, i32 0
  %concat.rhs537 = load i64, ptr %concat.rhs536, align 8
  %concat.rhs538 = and i64 %concat.rhs537, 281474976710655
  %str.tag539 = lshr i64 %concat.rhs537, 48
  %str.immortal540 = icmp eq i64 %str.tag539, 0
  br i1 %str.immortal540, label %str_ok542, label %str_gen_check541

str_stale529:                                     ; preds = %str_gen_check527
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok528

str_gen_check541:                                 ; preds = %str_ok528
  %arena.gen544 = call ptr @dva_arena_current()
  %arena.gen545 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen544, i32 0, i32 4
  %arena.gen546 = load i64, ptr %arena.gen545, align 8
  %str.tag.match547 = icmp eq i64 %str.tag539, %arena.gen546
  br i1 %str.tag.match547, label %str_ok542, label %str_stale543

str_ok542:                                        ; preds = %str_stale543, %str_gen_check541, %str_ok528
  %concat.rhs548 = getelementptr inbounds { i64, ptr }, ptr %var.load521, i32 0, i32 1
  %concat.rhs549 = load ptr, ptr %concat.rhs548, align 8
  %concat.sum.len550 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs524, i64 %concat.rhs538)
  %sum551 = extractvalue { i64, i1 } %concat.sum.len550, 0
  %ovf552 = extractvalue { i64, i1 } %concat.sum.len550, 1
  br i1 %ovf552, label %str_overflow_abort554, label %concat.sum.len553

str_stale543:                                     ; preds = %str_gen_check541
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok542

concat.sum.len553:                                ; preds = %str_overflow_abort554, %str_ok542
  %concat.tot.len555 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum551, i64 1)
  %sum556 = extractvalue { i64, i1 } %concat.tot.len555, 0
  %ovf557 = extractvalue { i64, i1 } %concat.tot.len555, 1
  br i1 %ovf557, label %str_overflow_abort559, label %concat.tot.len558

str_overflow_abort554:                            ; preds = %str_ok542
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len553

concat.tot.len558:                                ; preds = %str_overflow_abort559, %concat.sum.len553
  %arena.cur560 = call ptr @dva_arena_current()
  %concat.buf561 = call ptr @dva_arena_alloc(ptr %arena.cur560, i64 %sum556)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf561, ptr align 1 %concat.lhs535, i64 %concat.lhs524, i1 false)
  %concat.mid562 = getelementptr i8, ptr %concat.buf561, i64 %concat.lhs524
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid562, ptr align 1 %concat.rhs549, i64 %concat.rhs538, i1 false)
  %concat.nul563 = getelementptr i8, ptr %concat.buf561, i64 %sum551
  store i8 0, ptr %concat.nul563, align 1
  %arena.cur564 = call ptr @dva_arena_current()
  %concat.str565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 16)
  %str.build.len.gep566 = getelementptr inbounds { i64, ptr }, ptr %concat.str565, i32 0, i32 0
  store i64 %sum551, ptr %str.build.len.gep566, align 8
  %str.build.data.gep567 = getelementptr inbounds { i64, ptr }, ptr %concat.str565, i32 0, i32 1
  store ptr %concat.buf561, ptr %str.build.data.gep567, align 8
  br label %choice.exit475

str_overflow_abort559:                            ; preds = %concat.sum.len553
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len558
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
  %var._1824 = alloca ptr, align 8
  %var._1821 = alloca ptr, align 8
  %var._1769 = alloca i64, align 8
  %var._i1768 = alloca i64, align 8
  %var.i1764 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.v1758 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var.v1615 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var.a1369 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.fld = alloca ptr, align 8
  %var._1188 = alloca ptr, align 8
  %var._1185 = alloca ptr, align 8
  %var._1133 = alloca i64, align 8
  %var._i1132 = alloca i64, align 8
  %var.i1128 = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var.cv = alloca ptr, align 8
  %var._1077 = alloca ptr, align 8
  %var._1074 = alloca ptr, align 8
  %var.k = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var.br = alloca ptr, align 8
  %var._817 = alloca ptr, align 8
  %var._814 = alloca ptr, align 8
  %var._762 = alloca i64, align 8
  %var._i761 = alloca i64, align 8
  %var.i757 = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var._571 = alloca ptr, align 8
  %var._568 = alloca ptr, align 8
  %var._516 = alloca i64, align 8
  %var._i515 = alloca i64, align 8
  %var.i511 = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._387 = alloca ptr, align 8
  %var._i386 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._224 = alloca ptr, align 8
  %var._221 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2113, %a.after2139, %a.after2103, %a.after2067, %a.after2031, %a.after1992, %a.after1956, %a.after1920, %a.after1886, %loop.exit.15, %a.after1742, %choice.exit1603, %a.after1549, %a.after1484, %a.after1419, %a.after1353, %a.after1288, %loop.exit.13, %loop.exit.10, %loop.exit.9, %a.after476, %a.after348, %a.after312, %loop.exit.7, %choice.exit37
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
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 9
  br i1 %tag.match59, label %choice.case55, label %choice.next56

str_gen_check:                                    ; preds = %choice.case
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %str.tag7 = lshr i64 %eq.rhs.len, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.3.then, label %and.3.else

and.3.then:                                       ; preds = %str.eq.merge
  %var.load17 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.3.else:                                       ; preds = %str.eq.merge
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %a.after
  %and.3.phi = phi i1 [ %nottmp, %a.after ], [ %str.neq, %and.3.else ]
  br i1 %and.3.phi, label %and.4.then, label %and.4.else

a.create:                                         ; preds = %and.3.then
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
  store ptr %a.create18, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.3.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load20 = load ptr, ptr %var.v, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %a.load2, ptr %var.load20)
  %nottmp = xor i1 %call.res, true
  br label %and.3.exit

and.4.then:                                       ; preds = %and.3.exit
  %var.load21 = load ptr, ptr %var.refs, align 8
  %a.load22 = load ptr, ptr %var.refs, align 8
  %a.null23 = icmp eq ptr %a.load22, null
  br i1 %a.null23, label %a.create24, label %a.after25

and.4.else:                                       ; preds = %and.3.exit
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %a.after25
  %and.4.phi = phi i1 [ %nottmp36, %a.after25 ], [ %and.3.phi, %and.4.else ]
  br i1 %and.4.phi, label %choice.then, label %choice.exit37

a.create24:                                       ; preds = %and.4.then
  %arena.cur26 = call ptr @dva_arena_current()
  %a.create27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %arena.cur28 = call ptr @dva_arena_current()
  %a.buf29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 128)
  %a.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 0
  store i64 0, ptr %a.len.gep30, align 8
  %a.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 1
  store ptr %a.buf29, ptr %a.data.gep31, align 8
  %a.cap.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 2
  store i64 16, ptr %a.cap.gep32, align 8
  store ptr %a.create27, ptr %var.refs, align 8
  br label %a.after25

a.after25:                                        ; preds = %a.create24, %and.4.then
  %a.load233 = load ptr, ptr %var.refs, align 8
  %var.load34 = load ptr, ptr %var.v, align 8
  %call.res35 = call i1 @"dep_graph::has_name"(ptr %a.load233, ptr %var.load34)
  %nottmp36 = xor i1 %call.res35, true
  br label %and.4.exit

choice.then:                                      ; preds = %and.4.exit
  %var.load38 = load ptr, ptr %var.v, align 8
  %a.load39 = load ptr, ptr %var.refs, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

choice.exit37:                                    ; preds = %a.store, %and.4.exit
  br label %choice.exit

a.create41:                                       ; preds = %choice.then
  %arena.cur43 = call ptr @dva_arena_current()
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = call ptr @dva_arena_current()
  %a.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep47, align 8
  %a.data.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf46, ptr %a.data.gep48, align 8
  %a.cap.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep49, align 8
  store ptr %a.create44, ptr %var.refs, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.then
  %a.load250 = load ptr, ptr %var.refs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after42
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len51 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 2
  %a.cap52 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len51, %a.cap52
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load250)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 1
  %a.cur.data53 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.cur.len54 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data53, i64 %a.cur.len54
  %a.elem.p2i = ptrtoint ptr %var.load38 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len54, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit37

choice.case55:                                    ; preds = %choice.next
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr61 = load ptr, ptr %pay.gep60, align 8
  store ptr %payload.ptr61, ptr %var.c, align 8
  %var.load62 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load62, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len63 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len64 = load i64, ptr %eq.lhs.len63, align 8
  %eq.lhs.len65 = and i64 %eq.lhs.len64, 281474976710655
  %str.tag66 = lshr i64 %eq.lhs.len64, 48
  %str.immortal67 = icmp eq i64 %str.tag66, 0
  br i1 %str.immortal67, label %str_ok69, label %str_gen_check68

choice.next56:                                    ; preds = %choice.next
  %tag.gep258 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id259 = load i64, ptr %tag.gep258, align 8
  %tag.match260 = icmp eq i64 %tag.id259, 5
  br i1 %tag.match260, label %choice.case256, label %choice.next257

str_gen_check68:                                  ; preds = %choice.case55
  %arena.gen71 = call ptr @dva_arena_current()
  %arena.gen72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen71, i32 0, i32 4
  %arena.gen73 = load i64, ptr %arena.gen72, align 8
  %str.tag.match74 = icmp eq i64 %str.tag66, %arena.gen73
  br i1 %str.tag.match74, label %str_ok69, label %str_stale70

str_ok69:                                         ; preds = %str_stale70, %str_gen_check68, %choice.case55
  %eq.rhs.len75 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len75, 281474976710655
  %str.tag77 = lshr i64 %eq.rhs.len75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale70:                                      ; preds = %str_gen_check68
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok69

str_gen_check79:                                  ; preds = %str_ok69
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok69
  %eq.len86 = icmp eq i64 %eq.lhs.len65, %eq.rhs.len76
  br i1 %eq.len86, label %str.eq.then87, label %str.eq.else88

str_stale81:                                      ; preds = %str_gen_check79
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str.eq.then87:                                    ; preds = %str_ok80
  %eq.lhs.data90 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data91 = load ptr, ptr %eq.lhs.data90, align 8
  %eq.rhs.data92 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp93 = call i32 @memcmp(ptr %eq.lhs.data91, ptr %eq.rhs.data92, i64 %eq.lhs.len65)
  %eq.cmp.zero94 = icmp eq i32 %eq.memcmp93, 0
  br label %str.eq.merge89

str.eq.else88:                                    ; preds = %str_ok80
  br label %str.eq.merge89

str.eq.merge89:                                   ; preds = %str.eq.else88, %str.eq.then87
  %str.eq.result95 = phi i1 [ %eq.cmp.zero94, %str.eq.then87 ], [ false, %str.eq.else88 ]
  %str.neq96 = xor i1 %str.eq.result95, true
  br i1 %str.neq96, label %and.5.then, label %and.5.else

and.5.then:                                       ; preds = %str.eq.merge89
  %var.load97 = load ptr, ptr %var.locals, align 8
  %a.load98 = load ptr, ptr %var.locals, align 8
  %a.null99 = icmp eq ptr %a.load98, null
  br i1 %a.null99, label %a.create100, label %a.after101

and.5.else:                                       ; preds = %str.eq.merge89
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %a.after101
  %and.5.phi = phi i1 [ %nottmp114, %a.after101 ], [ %str.neq96, %and.5.else ]
  br i1 %and.5.phi, label %and.6.then, label %and.6.else

a.create100:                                      ; preds = %and.5.then
  %arena.cur102 = call ptr @dva_arena_current()
  %a.create103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 24)
  %arena.cur104 = call ptr @dva_arena_current()
  %a.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 128)
  %a.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 0
  store i64 0, ptr %a.len.gep106, align 8
  %a.data.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 1
  store ptr %a.buf105, ptr %a.data.gep107, align 8
  %a.cap.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 2
  store i64 16, ptr %a.cap.gep108, align 8
  store ptr %a.create103, ptr %var.locals, align 8
  br label %a.after101

a.after101:                                       ; preds = %a.create100, %and.5.then
  %a.load2109 = load ptr, ptr %var.locals, align 8
  %var.load110 = load ptr, ptr %var.c, align 8
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load110, i32 0, i32 0
  %fld.load112 = load ptr, ptr %fld.gep111, align 8
  %call.res113 = call i1 @"dep_graph::has_name"(ptr %a.load2109, ptr %fld.load112)
  %nottmp114 = xor i1 %call.res113, true
  br label %and.5.exit

and.6.then:                                       ; preds = %and.5.exit
  %var.load115 = load ptr, ptr %var.refs, align 8
  %a.load116 = load ptr, ptr %var.refs, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

and.6.else:                                       ; preds = %and.5.exit
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %a.after119
  %and.6.phi = phi i1 [ %nottmp132, %a.after119 ], [ %and.5.phi, %and.6.else ]
  br i1 %and.6.phi, label %choice.then133, label %choice.exit134

a.create118:                                      ; preds = %and.6.then
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
  store ptr %a.create121, ptr %var.refs, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %and.6.then
  %a.load2127 = load ptr, ptr %var.refs, align 8
  %var.load128 = load ptr, ptr %var.c, align 8
  %fld.gep129 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load128, i32 0, i32 0
  %fld.load130 = load ptr, ptr %fld.gep129, align 8
  %call.res131 = call i1 @"dep_graph::has_name"(ptr %a.load2127, ptr %fld.load130)
  %nottmp132 = xor i1 %call.res131, true
  br label %and.6.exit

choice.then133:                                   ; preds = %and.6.exit
  %var.load135 = load ptr, ptr %var.c, align 8
  %fld.gep136 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load135, i32 0, i32 0
  %fld.load137 = load ptr, ptr %fld.gep136, align 8
  %a.load138 = load ptr, ptr %var.refs, align 8
  %a.null139 = icmp eq ptr %a.load138, null
  br i1 %a.null139, label %a.create140, label %a.after141

choice.exit134:                                   ; preds = %a.store152, %and.6.exit
  %var.load166 = load ptr, ptr %var.c, align 8
  %fld.gep167 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load166, i32 0, i32 1
  %fld.load168 = load ptr, ptr %fld.gep167, align 8
  %var.load169 = load ptr, ptr %var.locals, align 8
  %a.load170 = load ptr, ptr %var.locals, align 8
  %a.null171 = icmp eq ptr %a.load170, null
  br i1 %a.null171, label %a.create172, label %a.after173

a.create140:                                      ; preds = %choice.then133
  %arena.cur142 = call ptr @dva_arena_current()
  %a.create143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 24)
  %arena.cur144 = call ptr @dva_arena_current()
  %a.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 128)
  %a.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 0
  store i64 0, ptr %a.len.gep146, align 8
  %a.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 1
  store ptr %a.buf145, ptr %a.data.gep147, align 8
  %a.cap.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep148, align 8
  store ptr %a.create143, ptr %var.refs, align 8
  br label %a.after141

a.after141:                                       ; preds = %a.create140, %choice.then133
  %a.load2149 = load ptr, ptr %var.refs, align 8
  br label %a.check150

a.check150:                                       ; preds = %a.after141
  %a.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2149, i32 0, i32 0
  %a.len154 = load i64, ptr %a.len153, align 8
  %a.cap155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2149, i32 0, i32 2
  %a.cap156 = load i64, ptr %a.cap155, align 8
  %a.needs.grow157 = icmp eq i64 %a.len154, %a.cap156
  br i1 %a.needs.grow157, label %a.grow151, label %a.store152

a.grow151:                                        ; preds = %a.check150
  call void @dva_array_grow(ptr %a.load2149)
  br label %a.store152

a.store152:                                       ; preds = %a.grow151, %a.check150
  %a.cur.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2149, i32 0, i32 1
  %a.cur.data159 = load ptr, ptr %a.cur.data158, align 8
  %a.cur.len160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2149, i32 0, i32 0
  %a.cur.len161 = load i64, ptr %a.cur.len160, align 8
  %a.elem.gep162 = getelementptr i64, ptr %a.cur.data159, i64 %a.cur.len161
  %a.elem.p2i163 = ptrtoint ptr %fld.load137 to i64
  store i64 %a.elem.p2i163, ptr %a.elem.gep162, align 8
  %a.next.len164 = add i64 %a.cur.len161, 1
  %b.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2149, i32 0, i32 0
  store i64 %a.next.len164, ptr %b.len.gep165, align 8
  br label %choice.exit134

a.create172:                                      ; preds = %choice.exit134
  %arena.cur174 = call ptr @dva_arena_current()
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = call ptr @dva_arena_current()
  %a.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 128)
  %a.len.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 0
  store i64 0, ptr %a.len.gep178, align 8
  %a.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 1
  store ptr %a.buf177, ptr %a.data.gep179, align 8
  %a.cap.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 2
  store i64 16, ptr %a.cap.gep180, align 8
  store ptr %a.create175, ptr %var.locals, align 8
  br label %a.after173

a.after173:                                       ; preds = %a.create172, %choice.exit134
  %a.load2181 = load ptr, ptr %var.locals, align 8
  %var.load182 = load ptr, ptr %var.refs, align 8
  %a.load183 = load ptr, ptr %var.refs, align 8
  %a.null184 = icmp eq ptr %a.load183, null
  br i1 %a.null184, label %a.create185, label %a.after186

a.create185:                                      ; preds = %a.after173
  %arena.cur187 = call ptr @dva_arena_current()
  %a.create188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 24)
  %arena.cur189 = call ptr @dva_arena_current()
  %a.buf190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 128)
  %a.len.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 0
  store i64 0, ptr %a.len.gep191, align 8
  %a.data.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 1
  store ptr %a.buf190, ptr %a.data.gep192, align 8
  %a.cap.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 2
  store i64 16, ptr %a.cap.gep193, align 8
  store ptr %a.create188, ptr %var.refs, align 8
  br label %a.after186

a.after186:                                       ; preds = %a.create185, %a.after173
  %a.load2194 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load168, ptr %a.load2181, ptr %a.load2194)
  %var.load195 = load ptr, ptr %var.c, align 8
  %fld.gep196 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load195, i32 0, i32 2
  %fld.load197 = load ptr, ptr %fld.gep196, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load197, i32 0, i32 0
  %a.len.query198 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %a.after186
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query198
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load199 = load ptr, ptr %var.c, align 8
  %fld.gep200 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load199, i32 0, i32 2
  %fld.load201 = load ptr, ptr %fld.gep200, align 8
  %var.load202 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load201, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %a.after247
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  br label %choice.exit

a.rd.check:                                       ; preds = %loop.body.7
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load201, i32 0, i32 0
  %a.rd.len203 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load202, 0
  %a.rd.lt = icmp slt i64 %var.load202, %a.rd.len203
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load201, i32 0, i32 1
  %a.rd.data204 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data204, i64 %var.load202
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.7
  %arena.cur205 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 56)
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
  %arena.cur206 = call ptr @dva_arena_current()
  %err.alloc207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 56)
  %err.code.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 0
  store i64 4011, ptr %err.code.gep208, align 8
  %err.msg.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep209, align 8
  %err.file.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep210, align 8
  %err.line.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 3
  store i64 0, ptr %err.line.gep211, align 8
  %err.col.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 4
  store i64 0, ptr %err.col.gep212, align 8
  %err.ctx.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc207, i32 0, i32 5
  %err.ctx0.gep214 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep213, i32 0, i32 0
  store i64 %var.load202, ptr %err.ctx0.gep214, align 8
  %err.ctx1.gep215 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep213, i32 0, i32 1
  store i64 %a.rd.len203, ptr %err.ctx1.gep215, align 8
  %err.p2i216 = ptrtoint ptr %err.alloc207 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i216, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag217 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag217, label %choice.then218, label %choice.else

choice.then218:                                   ; preds = %a.rd.done
  %ram.pay220 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay220 to ptr
  store ptr %pay.ptr, ptr %var._221, align 8
  br label %choice.exit219

choice.else:                                      ; preds = %a.rd.done
  %ram.pay222 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr223 = inttoptr i64 %ram.pay222 to ptr
  store ptr %pay.ptr223, ptr %var._224, align 8
  %arena.cur225 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 16)
  %tag.gep226 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep226, align 8
  %pay.gep227 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur228 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep227, align 8
  br label %choice.exit219

choice.exit219:                                   ; preds = %choice.else, %choice.then218
  %choice.res = phi ptr [ %pay.ptr, %choice.then218 ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.arg, align 8
  %var.load229 = load ptr, ptr %var.arg, align 8
  %var.load230 = load ptr, ptr %var.locals, align 8
  %a.load231 = load ptr, ptr %var.locals, align 8
  %a.null232 = icmp eq ptr %a.load231, null
  br i1 %a.null232, label %a.create233, label %a.after234

a.create233:                                      ; preds = %choice.exit219
  %arena.cur235 = call ptr @dva_arena_current()
  %a.create236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 24)
  %arena.cur237 = call ptr @dva_arena_current()
  %a.buf238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 128)
  %a.len.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 0
  store i64 0, ptr %a.len.gep239, align 8
  %a.data.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 1
  store ptr %a.buf238, ptr %a.data.gep240, align 8
  %a.cap.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 2
  store i64 16, ptr %a.cap.gep241, align 8
  store ptr %a.create236, ptr %var.locals, align 8
  br label %a.after234

a.after234:                                       ; preds = %a.create233, %choice.exit219
  %a.load2242 = load ptr, ptr %var.locals, align 8
  %var.load243 = load ptr, ptr %var.refs, align 8
  %a.load244 = load ptr, ptr %var.refs, align 8
  %a.null245 = icmp eq ptr %a.load244, null
  br i1 %a.null245, label %a.create246, label %a.after247

a.create246:                                      ; preds = %a.after234
  %arena.cur248 = call ptr @dva_arena_current()
  %a.create249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 24)
  %arena.cur250 = call ptr @dva_arena_current()
  %a.buf251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 128)
  %a.len.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 0
  store i64 0, ptr %a.len.gep252, align 8
  %a.data.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 1
  store ptr %a.buf251, ptr %a.data.gep253, align 8
  %a.cap.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 2
  store i64 16, ptr %a.cap.gep254, align 8
  store ptr %a.create249, ptr %var.refs, align 8
  br label %a.after247

a.after247:                                       ; preds = %a.create246, %a.after234
  %a.load2255 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load229, ptr %a.load2242, ptr %a.load2255)
  br label %loop.latch.7

choice.case256:                                   ; preds = %choice.next56
  %pay.gep261 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr262 = load ptr, ptr %pay.gep261, align 8
  store ptr %payload.ptr262, ptr %var.b, align 8
  %var.load263 = load ptr, ptr %var.b, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load263, i32 0, i32 1
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %var.load266 = load ptr, ptr %var.locals, align 8
  %a.load267 = load ptr, ptr %var.locals, align 8
  %a.null268 = icmp eq ptr %a.load267, null
  br i1 %a.null268, label %a.create269, label %a.after270

choice.next257:                                   ; preds = %choice.next56
  %tag.gep323 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id324 = load i64, ptr %tag.gep323, align 8
  %tag.match325 = icmp eq i64 %tag.id324, 24
  br i1 %tag.match325, label %choice.case321, label %choice.next322

a.create269:                                      ; preds = %choice.case256
  %arena.cur271 = call ptr @dva_arena_current()
  %a.create272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 24)
  %arena.cur273 = call ptr @dva_arena_current()
  %a.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 128)
  %a.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 0
  store i64 0, ptr %a.len.gep275, align 8
  %a.data.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 1
  store ptr %a.buf274, ptr %a.data.gep276, align 8
  %a.cap.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 2
  store i64 16, ptr %a.cap.gep277, align 8
  store ptr %a.create272, ptr %var.locals, align 8
  br label %a.after270

a.after270:                                       ; preds = %a.create269, %choice.case256
  %a.load2278 = load ptr, ptr %var.locals, align 8
  %var.load279 = load ptr, ptr %var.refs, align 8
  %a.load280 = load ptr, ptr %var.refs, align 8
  %a.null281 = icmp eq ptr %a.load280, null
  br i1 %a.null281, label %a.create282, label %a.after283

a.create282:                                      ; preds = %a.after270
  %arena.cur284 = call ptr @dva_arena_current()
  %a.create285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 24)
  %arena.cur286 = call ptr @dva_arena_current()
  %a.buf287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 128)
  %a.len.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create285, i32 0, i32 0
  store i64 0, ptr %a.len.gep288, align 8
  %a.data.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create285, i32 0, i32 1
  store ptr %a.buf287, ptr %a.data.gep289, align 8
  %a.cap.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create285, i32 0, i32 2
  store i64 16, ptr %a.cap.gep290, align 8
  store ptr %a.create285, ptr %var.refs, align 8
  br label %a.after283

a.after283:                                       ; preds = %a.create282, %a.after270
  %a.load2291 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load265, ptr %a.load2278, ptr %a.load2291)
  %var.load292 = load ptr, ptr %var.b, align 8
  %fld.gep293 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load292, i32 0, i32 2
  %fld.load294 = load ptr, ptr %fld.gep293, align 8
  %var.load295 = load ptr, ptr %var.locals, align 8
  %a.load296 = load ptr, ptr %var.locals, align 8
  %a.null297 = icmp eq ptr %a.load296, null
  br i1 %a.null297, label %a.create298, label %a.after299

a.create298:                                      ; preds = %a.after283
  %arena.cur300 = call ptr @dva_arena_current()
  %a.create301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 24)
  %arena.cur302 = call ptr @dva_arena_current()
  %a.buf303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 128)
  %a.len.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create301, i32 0, i32 0
  store i64 0, ptr %a.len.gep304, align 8
  %a.data.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create301, i32 0, i32 1
  store ptr %a.buf303, ptr %a.data.gep305, align 8
  %a.cap.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create301, i32 0, i32 2
  store i64 16, ptr %a.cap.gep306, align 8
  store ptr %a.create301, ptr %var.locals, align 8
  br label %a.after299

a.after299:                                       ; preds = %a.create298, %a.after283
  %a.load2307 = load ptr, ptr %var.locals, align 8
  %var.load308 = load ptr, ptr %var.refs, align 8
  %a.load309 = load ptr, ptr %var.refs, align 8
  %a.null310 = icmp eq ptr %a.load309, null
  br i1 %a.null310, label %a.create311, label %a.after312

a.create311:                                      ; preds = %a.after299
  %arena.cur313 = call ptr @dva_arena_current()
  %a.create314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 24)
  %arena.cur315 = call ptr @dva_arena_current()
  %a.buf316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 128)
  %a.len.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 0
  store i64 0, ptr %a.len.gep317, align 8
  %a.data.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 1
  store ptr %a.buf316, ptr %a.data.gep318, align 8
  %a.cap.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 2
  store i64 16, ptr %a.cap.gep319, align 8
  store ptr %a.create314, ptr %var.refs, align 8
  br label %a.after312

a.after312:                                       ; preds = %a.create311, %a.after299
  %a.load2320 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load294, ptr %a.load2307, ptr %a.load2320)
  br label %choice.exit

choice.case321:                                   ; preds = %choice.next257
  %pay.gep326 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr327 = load ptr, ptr %pay.gep326, align 8
  store ptr %payload.ptr327, ptr %var.u, align 8
  %var.load328 = load ptr, ptr %var.u, align 8
  %fld.gep329 = getelementptr inbounds { ptr, ptr }, ptr %var.load328, i32 0, i32 1
  %fld.load330 = load ptr, ptr %fld.gep329, align 8
  %var.load331 = load ptr, ptr %var.locals, align 8
  %a.load332 = load ptr, ptr %var.locals, align 8
  %a.null333 = icmp eq ptr %a.load332, null
  br i1 %a.null333, label %a.create334, label %a.after335

choice.next322:                                   ; preds = %choice.next257
  %tag.gep359 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id360 = load i64, ptr %tag.gep359, align 8
  %tag.match361 = icmp eq i64 %tag.id360, 14
  br i1 %tag.match361, label %choice.case357, label %choice.next358

a.create334:                                      ; preds = %choice.case321
  %arena.cur336 = call ptr @dva_arena_current()
  %a.create337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 24)
  %arena.cur338 = call ptr @dva_arena_current()
  %a.buf339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 128)
  %a.len.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 0
  store i64 0, ptr %a.len.gep340, align 8
  %a.data.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 1
  store ptr %a.buf339, ptr %a.data.gep341, align 8
  %a.cap.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 2
  store i64 16, ptr %a.cap.gep342, align 8
  store ptr %a.create337, ptr %var.locals, align 8
  br label %a.after335

a.after335:                                       ; preds = %a.create334, %choice.case321
  %a.load2343 = load ptr, ptr %var.locals, align 8
  %var.load344 = load ptr, ptr %var.refs, align 8
  %a.load345 = load ptr, ptr %var.refs, align 8
  %a.null346 = icmp eq ptr %a.load345, null
  br i1 %a.null346, label %a.create347, label %a.after348

a.create347:                                      ; preds = %a.after335
  %arena.cur349 = call ptr @dva_arena_current()
  %a.create350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 24)
  %arena.cur351 = call ptr @dva_arena_current()
  %a.buf352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 128)
  %a.len.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 0
  store i64 0, ptr %a.len.gep353, align 8
  %a.data.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 1
  store ptr %a.buf352, ptr %a.data.gep354, align 8
  %a.cap.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 2
  store i64 16, ptr %a.cap.gep355, align 8
  store ptr %a.create350, ptr %var.refs, align 8
  br label %a.after348

a.after348:                                       ; preds = %a.create347, %a.after335
  %a.load2356 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load330, ptr %a.load2343, ptr %a.load2356)
  br label %choice.exit

choice.case357:                                   ; preds = %choice.next322
  %pay.gep362 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr363 = load ptr, ptr %pay.gep362, align 8
  store ptr %payload.ptr363, ptr %var.fe, align 8
  %var.load364 = load ptr, ptr %var.locals, align 8
  %a.load365 = load ptr, ptr %var.locals, align 8
  %a.null366 = icmp eq ptr %a.load365, null
  br i1 %a.null366, label %a.create367, label %a.after368

choice.next358:                                   ; preds = %choice.next322
  %tag.gep487 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id488 = load i64, ptr %tag.gep487, align 8
  %tag.match489 = icmp eq i64 %tag.id488, 8
  br i1 %tag.match489, label %choice.case485, label %choice.next486

a.create367:                                      ; preds = %choice.case357
  %arena.cur369 = call ptr @dva_arena_current()
  %a.create370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 24)
  %arena.cur371 = call ptr @dva_arena_current()
  %a.buf372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 128)
  %a.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 0
  store i64 0, ptr %a.len.gep373, align 8
  %a.data.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 1
  store ptr %a.buf372, ptr %a.data.gep374, align 8
  %a.cap.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 2
  store i64 16, ptr %a.cap.gep375, align 8
  store ptr %a.create370, ptr %var.locals, align 8
  br label %a.after368

a.after368:                                       ; preds = %a.create367, %choice.case357
  %a.load2376 = load ptr, ptr %var.locals, align 8
  %call.res377 = call ptr @"dep_graph::copy_names"(ptr %a.load2376)
  store ptr %call.res377, ptr %var.fn_locals, align 8
  %var.load378 = load ptr, ptr %var.fe, align 8
  %fld.gep379 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load378, i32 0, i32 0
  %fld.load380 = load ptr, ptr %fld.gep379, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load380, i32 0, i32 0
  %arr.cycle.len381 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load380, i32 0, i32 1
  %arr.cycle.data382 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after368
  %counter.load383 = load i64, ptr %loop.idx.8, align 8
  %loop.cond384 = icmp slt i64 %counter.load383, %arr.cycle.len381
  br i1 %loop.cond384, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i385 = sub i64 %counter.load383, 0
  store i64 1, ptr %loop.step.8, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data382, i64 %counter.load383
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i385, ptr %var._i386, align 8
  store ptr %arr.elem.ptr, ptr %var._387, align 8
  store ptr %arr.elem.ptr, ptr %var.p, align 8
  %var.load388 = load ptr, ptr %var.p, align 8
  %eq.lhs.len389 = getelementptr inbounds { i64, ptr }, ptr %var.load388, i32 0, i32 0
  %eq.lhs.len390 = load i64, ptr %eq.lhs.len389, align 8
  %eq.lhs.len391 = and i64 %eq.lhs.len390, 281474976710655
  %str.tag392 = lshr i64 %eq.lhs.len390, 48
  %str.immortal393 = icmp eq i64 %str.tag392, 0
  br i1 %str.immortal393, label %str_ok395, label %str_gen_check394

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit424
  %step.val454 = load i64, ptr %loop.step.8, align 8
  %loop.next455 = add i64 %counter.load383, %step.val454
  store i64 %loop.next455, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  %var.load456 = load ptr, ptr %var.fe, align 8
  %fld.gep457 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load456, i32 0, i32 2
  %fld.load458 = load ptr, ptr %fld.gep457, align 8
  %var.load459 = load ptr, ptr %var.fn_locals, align 8
  %a.load460 = load ptr, ptr %var.fn_locals, align 8
  %a.null461 = icmp eq ptr %a.load460, null
  br i1 %a.null461, label %a.create462, label %a.after463

str_gen_check394:                                 ; preds = %loop.body.8
  %arena.gen397 = call ptr @dva_arena_current()
  %arena.gen398 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen397, i32 0, i32 4
  %arena.gen399 = load i64, ptr %arena.gen398, align 8
  %str.tag.match400 = icmp eq i64 %str.tag392, %arena.gen399
  br i1 %str.tag.match400, label %str_ok395, label %str_stale396

str_ok395:                                        ; preds = %str_stale396, %str_gen_check394, %loop.body.8
  %eq.rhs.len401 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len402 = and i64 %eq.rhs.len401, 281474976710655
  %str.tag403 = lshr i64 %eq.rhs.len401, 48
  %str.immortal404 = icmp eq i64 %str.tag403, 0
  br i1 %str.immortal404, label %str_ok406, label %str_gen_check405

str_stale396:                                     ; preds = %str_gen_check394
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok395

str_gen_check405:                                 ; preds = %str_ok395
  %arena.gen408 = call ptr @dva_arena_current()
  %arena.gen409 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen408, i32 0, i32 4
  %arena.gen410 = load i64, ptr %arena.gen409, align 8
  %str.tag.match411 = icmp eq i64 %str.tag403, %arena.gen410
  br i1 %str.tag.match411, label %str_ok406, label %str_stale407

str_ok406:                                        ; preds = %str_stale407, %str_gen_check405, %str_ok395
  %eq.len412 = icmp eq i64 %eq.lhs.len391, %eq.rhs.len402
  br i1 %eq.len412, label %str.eq.then413, label %str.eq.else414

str_stale407:                                     ; preds = %str_gen_check405
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok406

str.eq.then413:                                   ; preds = %str_ok406
  %eq.lhs.data416 = getelementptr inbounds { i64, ptr }, ptr %var.load388, i32 0, i32 1
  %eq.lhs.data417 = load ptr, ptr %eq.lhs.data416, align 8
  %eq.rhs.data418 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp419 = call i32 @memcmp(ptr %eq.lhs.data417, ptr %eq.rhs.data418, i64 %eq.lhs.len391)
  %eq.cmp.zero420 = icmp eq i32 %eq.memcmp419, 0
  br label %str.eq.merge415

str.eq.else414:                                   ; preds = %str_ok406
  br label %str.eq.merge415

str.eq.merge415:                                  ; preds = %str.eq.else414, %str.eq.then413
  %str.eq.result421 = phi i1 [ %eq.cmp.zero420, %str.eq.then413 ], [ false, %str.eq.else414 ]
  %str.neq422 = xor i1 %str.eq.result421, true
  br i1 %str.neq422, label %choice.then423, label %choice.exit424

choice.then423:                                   ; preds = %str.eq.merge415
  %var.load425 = load ptr, ptr %var.p, align 8
  %a.load426 = load ptr, ptr %var.fn_locals, align 8
  %a.null427 = icmp eq ptr %a.load426, null
  br i1 %a.null427, label %a.create428, label %a.after429

choice.exit424:                                   ; preds = %a.store440, %str.eq.merge415
  br label %loop.latch.8

a.create428:                                      ; preds = %choice.then423
  %arena.cur430 = call ptr @dva_arena_current()
  %a.create431 = call ptr @dva_arena_alloc(ptr %arena.cur430, i64 24)
  %arena.cur432 = call ptr @dva_arena_current()
  %a.buf433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 128)
  %a.len.gep434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create431, i32 0, i32 0
  store i64 0, ptr %a.len.gep434, align 8
  %a.data.gep435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create431, i32 0, i32 1
  store ptr %a.buf433, ptr %a.data.gep435, align 8
  %a.cap.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create431, i32 0, i32 2
  store i64 16, ptr %a.cap.gep436, align 8
  store ptr %a.create431, ptr %var.fn_locals, align 8
  br label %a.after429

a.after429:                                       ; preds = %a.create428, %choice.then423
  %a.load2437 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check438

a.check438:                                       ; preds = %a.after429
  %a.len441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2437, i32 0, i32 0
  %a.len442 = load i64, ptr %a.len441, align 8
  %a.cap443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2437, i32 0, i32 2
  %a.cap444 = load i64, ptr %a.cap443, align 8
  %a.needs.grow445 = icmp eq i64 %a.len442, %a.cap444
  br i1 %a.needs.grow445, label %a.grow439, label %a.store440

a.grow439:                                        ; preds = %a.check438
  call void @dva_array_grow(ptr %a.load2437)
  br label %a.store440

a.store440:                                       ; preds = %a.grow439, %a.check438
  %a.cur.data446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2437, i32 0, i32 1
  %a.cur.data447 = load ptr, ptr %a.cur.data446, align 8
  %a.cur.len448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2437, i32 0, i32 0
  %a.cur.len449 = load i64, ptr %a.cur.len448, align 8
  %a.elem.gep450 = getelementptr i64, ptr %a.cur.data447, i64 %a.cur.len449
  %a.elem.p2i451 = ptrtoint ptr %var.load425 to i64
  store i64 %a.elem.p2i451, ptr %a.elem.gep450, align 8
  %a.next.len452 = add i64 %a.cur.len449, 1
  %b.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2437, i32 0, i32 0
  store i64 %a.next.len452, ptr %b.len.gep453, align 8
  br label %choice.exit424

a.create462:                                      ; preds = %loop.exit.8
  %arena.cur464 = call ptr @dva_arena_current()
  %a.create465 = call ptr @dva_arena_alloc(ptr %arena.cur464, i64 24)
  %arena.cur466 = call ptr @dva_arena_current()
  %a.buf467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 128)
  %a.len.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create465, i32 0, i32 0
  store i64 0, ptr %a.len.gep468, align 8
  %a.data.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create465, i32 0, i32 1
  store ptr %a.buf467, ptr %a.data.gep469, align 8
  %a.cap.gep470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create465, i32 0, i32 2
  store i64 16, ptr %a.cap.gep470, align 8
  store ptr %a.create465, ptr %var.fn_locals, align 8
  br label %a.after463

a.after463:                                       ; preds = %a.create462, %loop.exit.8
  %a.load2471 = load ptr, ptr %var.fn_locals, align 8
  %var.load472 = load ptr, ptr %var.refs, align 8
  %a.load473 = load ptr, ptr %var.refs, align 8
  %a.null474 = icmp eq ptr %a.load473, null
  br i1 %a.null474, label %a.create475, label %a.after476

a.create475:                                      ; preds = %a.after463
  %arena.cur477 = call ptr @dva_arena_current()
  %a.create478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 24)
  %arena.cur479 = call ptr @dva_arena_current()
  %a.buf480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 128)
  %a.len.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 0
  store i64 0, ptr %a.len.gep481, align 8
  %a.data.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 1
  store ptr %a.buf480, ptr %a.data.gep482, align 8
  %a.cap.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 2
  store i64 16, ptr %a.cap.gep483, align 8
  store ptr %a.create478, ptr %var.refs, align 8
  br label %a.after476

a.after476:                                       ; preds = %a.create475, %a.after463
  %a.load2484 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load458, ptr %a.load2471, ptr %a.load2484)
  br label %choice.exit

choice.case485:                                   ; preds = %choice.next358
  %pay.gep490 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr491 = load ptr, ptr %pay.gep490, align 8
  store ptr %payload.ptr491, ptr %var.be, align 8
  %var.load492 = load ptr, ptr %var.locals, align 8
  %a.load493 = load ptr, ptr %var.locals, align 8
  %a.null494 = icmp eq ptr %a.load493, null
  br i1 %a.null494, label %a.create495, label %a.after496

choice.next486:                                   ; preds = %choice.next358
  %tag.gep718 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id719 = load i64, ptr %tag.gep718, align 8
  %tag.match720 = icmp eq i64 %tag.id719, 7
  br i1 %tag.match720, label %choice.case716, label %choice.next717

a.create495:                                      ; preds = %choice.case485
  %arena.cur497 = call ptr @dva_arena_current()
  %a.create498 = call ptr @dva_arena_alloc(ptr %arena.cur497, i64 24)
  %arena.cur499 = call ptr @dva_arena_current()
  %a.buf500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 128)
  %a.len.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 0
  store i64 0, ptr %a.len.gep501, align 8
  %a.data.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 1
  store ptr %a.buf500, ptr %a.data.gep502, align 8
  %a.cap.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 2
  store i64 16, ptr %a.cap.gep503, align 8
  store ptr %a.create498, ptr %var.locals, align 8
  br label %a.after496

a.after496:                                       ; preds = %a.create495, %choice.case485
  %a.load2504 = load ptr, ptr %var.locals, align 8
  %call.res505 = call ptr @"dep_graph::copy_names"(ptr %a.load2504)
  store ptr %call.res505, ptr %var.blk_locals, align 8
  %var.load506 = load ptr, ptr %var.be, align 8
  %fld.gep507 = getelementptr inbounds { ptr }, ptr %var.load506, i32 0, i32 0
  %fld.load508 = load ptr, ptr %fld.gep507, align 8
  %a.len.query509 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load508, i32 0, i32 0
  %a.len.query510 = load i64, ptr %a.len.query509, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after496
  %counter.load512 = load i64, ptr %loop.idx.9, align 8
  %loop.cond513 = icmp slt i64 %counter.load512, %a.len.query510
  br i1 %loop.cond513, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i514 = sub i64 %counter.load512, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i514, ptr %var._i515, align 8
  store i64 %counter.load512, ptr %var._516, align 8
  store i64 %counter.load512, ptr %var.i511, align 8
  %var.load517 = load ptr, ptr %var.be, align 8
  %fld.gep518 = getelementptr inbounds { ptr }, ptr %var.load517, i32 0, i32 0
  %fld.load519 = load ptr, ptr %fld.gep518, align 8
  %var.load520 = load i64, ptr %var.i511, align 8
  %a.rd.nonnull521 = icmp ne ptr %fld.load519, null
  br i1 %a.rd.nonnull521, label %a.rd.check522, label %a.rd.err.null524

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit580
  %step.val714 = load i64, ptr %loop.step.9, align 8
  %loop.next715 = add i64 %counter.load512, %step.val714
  store i64 %loop.next715, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  br label %choice.exit

a.rd.check522:                                    ; preds = %loop.body.9
  %a.rd.len527 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load519, i32 0, i32 0
  %a.rd.len528 = load i64, ptr %a.rd.len527, align 8
  %a.rd.ge0529 = icmp sge i64 %var.load520, 0
  %a.rd.lt530 = icmp slt i64 %var.load520, %a.rd.len528
  %a.rd.bounds531 = and i1 %a.rd.ge0529, %a.rd.lt530
  br i1 %a.rd.bounds531, label %a.rd.ok523, label %a.rd.err.oob525

a.rd.ok523:                                       ; preds = %a.rd.check522
  %a.rd.data532 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load519, i32 0, i32 1
  %a.rd.data533 = load ptr, ptr %a.rd.data532, align 8
  %a.rd.elem.gep534 = getelementptr i64, ptr %a.rd.data533, i64 %var.load520
  %a.rd.elem535 = load i64, ptr %a.rd.elem.gep534, align 8
  br label %a.rd.done526

a.rd.err.null524:                                 ; preds = %loop.body.9
  %arena.cur536 = call ptr @dva_arena_current()
  %err.alloc537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 56)
  %err.code.gep538 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 0
  store i64 4011, ptr %err.code.gep538, align 8
  %err.msg.gep539 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep539, align 8
  %err.file.gep540 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep540, align 8
  %err.line.gep541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 3
  store i64 0, ptr %err.line.gep541, align 8
  %err.col.gep542 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 4
  store i64 0, ptr %err.col.gep542, align 8
  %err.ctx.gep543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 5
  %err.ctx0.gep544 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep543, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep544, align 8
  %err.ctx1.gep545 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep543, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep545, align 8
  %err.p2i546 = ptrtoint ptr %err.alloc537 to i64
  br label %a.rd.done526

a.rd.err.oob525:                                  ; preds = %a.rd.check522
  %arena.cur547 = call ptr @dva_arena_current()
  %err.alloc548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 56)
  %err.code.gep549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 0
  store i64 4011, ptr %err.code.gep549, align 8
  %err.msg.gep550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep550, align 8
  %err.file.gep551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep551, align 8
  %err.line.gep552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 3
  store i64 0, ptr %err.line.gep552, align 8
  %err.col.gep553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 4
  store i64 0, ptr %err.col.gep553, align 8
  %err.ctx.gep554 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc548, i32 0, i32 5
  %err.ctx0.gep555 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep554, i32 0, i32 0
  store i64 %var.load520, ptr %err.ctx0.gep555, align 8
  %err.ctx1.gep556 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep554, i32 0, i32 1
  store i64 %a.rd.len528, ptr %err.ctx1.gep556, align 8
  %err.p2i557 = ptrtoint ptr %err.alloc548 to i64
  br label %a.rd.done526

a.rd.done526:                                     ; preds = %a.rd.err.oob525, %a.rd.err.null524, %a.rd.ok523
  %a.rd.tag558 = phi i1 [ true, %a.rd.ok523 ], [ false, %a.rd.err.null524 ], [ false, %a.rd.err.oob525 ]
  %a.rd.pay559 = phi i64 [ %a.rd.elem535, %a.rd.ok523 ], [ %err.p2i546, %a.rd.err.null524 ], [ %err.p2i557, %a.rd.err.oob525 ]
  %ram.tag560 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag558, 0
  %ram.pay561 = insertvalue { i1, i64 } %ram.tag560, i64 %a.rd.pay559, 1
  %ram.tag562 = extractvalue { i1, i64 } %ram.pay561, 0
  br i1 %ram.tag562, label %choice.then563, label %choice.else564

choice.then563:                                   ; preds = %a.rd.done526
  %ram.pay566 = extractvalue { i1, i64 } %ram.pay561, 1
  %pay.ptr567 = inttoptr i64 %ram.pay566 to ptr
  store ptr %pay.ptr567, ptr %var._568, align 8
  br label %choice.exit565

choice.else564:                                   ; preds = %a.rd.done526
  %ram.pay569 = extractvalue { i1, i64 } %ram.pay561, 1
  %pay.ptr570 = inttoptr i64 %ram.pay569 to ptr
  store ptr %pay.ptr570, ptr %var._571, align 8
  %arena.cur572 = call ptr @dva_arena_current()
  %enum.alloc573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 16)
  %tag.gep574 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc573, i32 0, i32 0
  store i64 0, ptr %tag.gep574, align 8
  %pay.gep575 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc573, i32 0, i32 1
  %arena.cur576 = call ptr @dva_arena_current()
  %enum.pay.alloc577 = call ptr @dva_arena_alloc(ptr %arena.cur576, i64 8)
  store i64 0, ptr %enum.pay.alloc577, align 8
  store ptr %enum.pay.alloc577, ptr %pay.gep575, align 8
  br label %choice.exit565

choice.exit565:                                   ; preds = %choice.else564, %choice.then563
  %choice.res578 = phi ptr [ %pay.ptr567, %choice.then563 ], [ %enum.alloc573, %choice.else564 ]
  store ptr %choice.res578, ptr %var.st, align 8
  %var.load579 = load ptr, ptr %var.st, align 8
  %tag.gep583 = getelementptr inbounds { i64, ptr }, ptr %var.load579, i32 0, i32 0
  %tag.id584 = load i64, ptr %tag.gep583, align 8
  %tag.match585 = icmp eq i64 %tag.id584, 6
  br i1 %tag.match585, label %choice.case581, label %choice.next582

choice.exit580:                                   ; preds = %a.after705, %choice.exit655
  br label %loop.latch.9

choice.case581:                                   ; preds = %choice.exit565
  %pay.gep586 = getelementptr inbounds { i64, ptr }, ptr %var.load579, i32 0, i32 1
  %payload.ptr587 = load ptr, ptr %pay.gep586, align 8
  store ptr %payload.ptr587, ptr %var.a, align 8
  %var.load588 = load ptr, ptr %var.a, align 8
  %fld.gep589 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load588, i32 0, i32 5
  %fld.load590 = load ptr, ptr %fld.gep589, align 8
  %var.load591 = load ptr, ptr %var.blk_locals, align 8
  %a.load592 = load ptr, ptr %var.blk_locals, align 8
  %a.null593 = icmp eq ptr %a.load592, null
  br i1 %a.null593, label %a.create594, label %a.after595

choice.next582:                                   ; preds = %choice.exit565
  %var.load687 = load ptr, ptr %var.st, align 8
  %var.load688 = load ptr, ptr %var.blk_locals, align 8
  %a.load689 = load ptr, ptr %var.blk_locals, align 8
  %a.null690 = icmp eq ptr %a.load689, null
  br i1 %a.null690, label %a.create691, label %a.after692

a.create594:                                      ; preds = %choice.case581
  %arena.cur596 = call ptr @dva_arena_current()
  %a.create597 = call ptr @dva_arena_alloc(ptr %arena.cur596, i64 24)
  %arena.cur598 = call ptr @dva_arena_current()
  %a.buf599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 128)
  %a.len.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create597, i32 0, i32 0
  store i64 0, ptr %a.len.gep600, align 8
  %a.data.gep601 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create597, i32 0, i32 1
  store ptr %a.buf599, ptr %a.data.gep601, align 8
  %a.cap.gep602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create597, i32 0, i32 2
  store i64 16, ptr %a.cap.gep602, align 8
  store ptr %a.create597, ptr %var.blk_locals, align 8
  br label %a.after595

a.after595:                                       ; preds = %a.create594, %choice.case581
  %a.load2603 = load ptr, ptr %var.blk_locals, align 8
  %var.load604 = load ptr, ptr %var.refs, align 8
  %a.load605 = load ptr, ptr %var.refs, align 8
  %a.null606 = icmp eq ptr %a.load605, null
  br i1 %a.null606, label %a.create607, label %a.after608

a.create607:                                      ; preds = %a.after595
  %arena.cur609 = call ptr @dva_arena_current()
  %a.create610 = call ptr @dva_arena_alloc(ptr %arena.cur609, i64 24)
  %arena.cur611 = call ptr @dva_arena_current()
  %a.buf612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 128)
  %a.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 0
  store i64 0, ptr %a.len.gep613, align 8
  %a.data.gep614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 1
  store ptr %a.buf612, ptr %a.data.gep614, align 8
  %a.cap.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 2
  store i64 16, ptr %a.cap.gep615, align 8
  store ptr %a.create610, ptr %var.refs, align 8
  br label %a.after608

a.after608:                                       ; preds = %a.create607, %a.after595
  %a.load2616 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load590, ptr %a.load2603, ptr %a.load2616)
  %var.load617 = load ptr, ptr %var.a, align 8
  %fld.gep618 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load617, i32 0, i32 0
  %fld.load619 = load ptr, ptr %fld.gep618, align 8
  %eq.lhs.len620 = getelementptr inbounds { i64, ptr }, ptr %fld.load619, i32 0, i32 0
  %eq.lhs.len621 = load i64, ptr %eq.lhs.len620, align 8
  %eq.lhs.len622 = and i64 %eq.lhs.len621, 281474976710655
  %str.tag623 = lshr i64 %eq.lhs.len621, 48
  %str.immortal624 = icmp eq i64 %str.tag623, 0
  br i1 %str.immortal624, label %str_ok626, label %str_gen_check625

str_gen_check625:                                 ; preds = %a.after608
  %arena.gen628 = call ptr @dva_arena_current()
  %arena.gen629 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen628, i32 0, i32 4
  %arena.gen630 = load i64, ptr %arena.gen629, align 8
  %str.tag.match631 = icmp eq i64 %str.tag623, %arena.gen630
  br i1 %str.tag.match631, label %str_ok626, label %str_stale627

str_ok626:                                        ; preds = %str_stale627, %str_gen_check625, %a.after608
  %eq.rhs.len632 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len633 = and i64 %eq.rhs.len632, 281474976710655
  %str.tag634 = lshr i64 %eq.rhs.len632, 48
  %str.immortal635 = icmp eq i64 %str.tag634, 0
  br i1 %str.immortal635, label %str_ok637, label %str_gen_check636

str_stale627:                                     ; preds = %str_gen_check625
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok626

str_gen_check636:                                 ; preds = %str_ok626
  %arena.gen639 = call ptr @dva_arena_current()
  %arena.gen640 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen639, i32 0, i32 4
  %arena.gen641 = load i64, ptr %arena.gen640, align 8
  %str.tag.match642 = icmp eq i64 %str.tag634, %arena.gen641
  br i1 %str.tag.match642, label %str_ok637, label %str_stale638

str_ok637:                                        ; preds = %str_stale638, %str_gen_check636, %str_ok626
  %eq.len643 = icmp eq i64 %eq.lhs.len622, %eq.rhs.len633
  br i1 %eq.len643, label %str.eq.then644, label %str.eq.else645

str_stale638:                                     ; preds = %str_gen_check636
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok637

str.eq.then644:                                   ; preds = %str_ok637
  %eq.lhs.data647 = getelementptr inbounds { i64, ptr }, ptr %fld.load619, i32 0, i32 1
  %eq.lhs.data648 = load ptr, ptr %eq.lhs.data647, align 8
  %eq.rhs.data649 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp650 = call i32 @memcmp(ptr %eq.lhs.data648, ptr %eq.rhs.data649, i64 %eq.lhs.len622)
  %eq.cmp.zero651 = icmp eq i32 %eq.memcmp650, 0
  br label %str.eq.merge646

str.eq.else645:                                   ; preds = %str_ok637
  br label %str.eq.merge646

str.eq.merge646:                                  ; preds = %str.eq.else645, %str.eq.then644
  %str.eq.result652 = phi i1 [ %eq.cmp.zero651, %str.eq.then644 ], [ false, %str.eq.else645 ]
  %str.neq653 = xor i1 %str.eq.result652, true
  br i1 %str.neq653, label %choice.then654, label %choice.exit655

choice.then654:                                   ; preds = %str.eq.merge646
  %var.load656 = load ptr, ptr %var.a, align 8
  %fld.gep657 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load656, i32 0, i32 0
  %fld.load658 = load ptr, ptr %fld.gep657, align 8
  %a.load659 = load ptr, ptr %var.blk_locals, align 8
  %a.null660 = icmp eq ptr %a.load659, null
  br i1 %a.null660, label %a.create661, label %a.after662

choice.exit655:                                   ; preds = %a.store673, %str.eq.merge646
  br label %choice.exit580

a.create661:                                      ; preds = %choice.then654
  %arena.cur663 = call ptr @dva_arena_current()
  %a.create664 = call ptr @dva_arena_alloc(ptr %arena.cur663, i64 24)
  %arena.cur665 = call ptr @dva_arena_current()
  %a.buf666 = call ptr @dva_arena_alloc(ptr %arena.cur665, i64 128)
  %a.len.gep667 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 0
  store i64 0, ptr %a.len.gep667, align 8
  %a.data.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 1
  store ptr %a.buf666, ptr %a.data.gep668, align 8
  %a.cap.gep669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 2
  store i64 16, ptr %a.cap.gep669, align 8
  store ptr %a.create664, ptr %var.blk_locals, align 8
  br label %a.after662

a.after662:                                       ; preds = %a.create661, %choice.then654
  %a.load2670 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check671

a.check671:                                       ; preds = %a.after662
  %a.len674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 0
  %a.len675 = load i64, ptr %a.len674, align 8
  %a.cap676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 2
  %a.cap677 = load i64, ptr %a.cap676, align 8
  %a.needs.grow678 = icmp eq i64 %a.len675, %a.cap677
  br i1 %a.needs.grow678, label %a.grow672, label %a.store673

a.grow672:                                        ; preds = %a.check671
  call void @dva_array_grow(ptr %a.load2670)
  br label %a.store673

a.store673:                                       ; preds = %a.grow672, %a.check671
  %a.cur.data679 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 1
  %a.cur.data680 = load ptr, ptr %a.cur.data679, align 8
  %a.cur.len681 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 0
  %a.cur.len682 = load i64, ptr %a.cur.len681, align 8
  %a.elem.gep683 = getelementptr i64, ptr %a.cur.data680, i64 %a.cur.len682
  %a.elem.p2i684 = ptrtoint ptr %fld.load658 to i64
  store i64 %a.elem.p2i684, ptr %a.elem.gep683, align 8
  %a.next.len685 = add i64 %a.cur.len682, 1
  %b.len.gep686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 0
  store i64 %a.next.len685, ptr %b.len.gep686, align 8
  br label %choice.exit655

a.create691:                                      ; preds = %choice.next582
  %arena.cur693 = call ptr @dva_arena_current()
  %a.create694 = call ptr @dva_arena_alloc(ptr %arena.cur693, i64 24)
  %arena.cur695 = call ptr @dva_arena_current()
  %a.buf696 = call ptr @dva_arena_alloc(ptr %arena.cur695, i64 128)
  %a.len.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 0
  store i64 0, ptr %a.len.gep697, align 8
  %a.data.gep698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 1
  store ptr %a.buf696, ptr %a.data.gep698, align 8
  %a.cap.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 2
  store i64 16, ptr %a.cap.gep699, align 8
  store ptr %a.create694, ptr %var.blk_locals, align 8
  br label %a.after692

a.after692:                                       ; preds = %a.create691, %choice.next582
  %a.load2700 = load ptr, ptr %var.blk_locals, align 8
  %var.load701 = load ptr, ptr %var.refs, align 8
  %a.load702 = load ptr, ptr %var.refs, align 8
  %a.null703 = icmp eq ptr %a.load702, null
  br i1 %a.null703, label %a.create704, label %a.after705

a.create704:                                      ; preds = %a.after692
  %arena.cur706 = call ptr @dva_arena_current()
  %a.create707 = call ptr @dva_arena_alloc(ptr %arena.cur706, i64 24)
  %arena.cur708 = call ptr @dva_arena_current()
  %a.buf709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 128)
  %a.len.gep710 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 0
  store i64 0, ptr %a.len.gep710, align 8
  %a.data.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 1
  store ptr %a.buf709, ptr %a.data.gep711, align 8
  %a.cap.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 2
  store i64 16, ptr %a.cap.gep712, align 8
  store ptr %a.create707, ptr %var.refs, align 8
  br label %a.after705

a.after705:                                       ; preds = %a.create704, %a.after692
  %a.load2713 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load687, ptr %a.load2700, ptr %a.load2713)
  br label %choice.exit580

choice.case716:                                   ; preds = %choice.next486
  %pay.gep721 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr722 = load ptr, ptr %pay.gep721, align 8
  store ptr %payload.ptr722, ptr %var.ch, align 8
  %var.load723 = load ptr, ptr %var.ch, align 8
  %fld.gep724 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load723, i32 0, i32 0
  %fld.load725 = load ptr, ptr %fld.gep724, align 8
  %var.load726 = load ptr, ptr %var.locals, align 8
  %a.load727 = load ptr, ptr %var.locals, align 8
  %a.null728 = icmp eq ptr %a.load727, null
  br i1 %a.null728, label %a.create729, label %a.after730

choice.next717:                                   ; preds = %choice.next486
  %tag.gep1118 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1119 = load i64, ptr %tag.gep1118, align 8
  %tag.match1120 = icmp eq i64 %tag.id1119, 15
  br i1 %tag.match1120, label %choice.case1116, label %choice.next1117

a.create729:                                      ; preds = %choice.case716
  %arena.cur731 = call ptr @dva_arena_current()
  %a.create732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 24)
  %arena.cur733 = call ptr @dva_arena_current()
  %a.buf734 = call ptr @dva_arena_alloc(ptr %arena.cur733, i64 128)
  %a.len.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create732, i32 0, i32 0
  store i64 0, ptr %a.len.gep735, align 8
  %a.data.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create732, i32 0, i32 1
  store ptr %a.buf734, ptr %a.data.gep736, align 8
  %a.cap.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create732, i32 0, i32 2
  store i64 16, ptr %a.cap.gep737, align 8
  store ptr %a.create732, ptr %var.locals, align 8
  br label %a.after730

a.after730:                                       ; preds = %a.create729, %choice.case716
  %a.load2738 = load ptr, ptr %var.locals, align 8
  %var.load739 = load ptr, ptr %var.refs, align 8
  %a.load740 = load ptr, ptr %var.refs, align 8
  %a.null741 = icmp eq ptr %a.load740, null
  br i1 %a.null741, label %a.create742, label %a.after743

a.create742:                                      ; preds = %a.after730
  %arena.cur744 = call ptr @dva_arena_current()
  %a.create745 = call ptr @dva_arena_alloc(ptr %arena.cur744, i64 24)
  %arena.cur746 = call ptr @dva_arena_current()
  %a.buf747 = call ptr @dva_arena_alloc(ptr %arena.cur746, i64 128)
  %a.len.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create745, i32 0, i32 0
  store i64 0, ptr %a.len.gep748, align 8
  %a.data.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create745, i32 0, i32 1
  store ptr %a.buf747, ptr %a.data.gep749, align 8
  %a.cap.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create745, i32 0, i32 2
  store i64 16, ptr %a.cap.gep750, align 8
  store ptr %a.create745, ptr %var.refs, align 8
  br label %a.after743

a.after743:                                       ; preds = %a.create742, %a.after730
  %a.load2751 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load725, ptr %a.load2738, ptr %a.load2751)
  %var.load752 = load ptr, ptr %var.ch, align 8
  %fld.gep753 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load752, i32 0, i32 2
  %fld.load754 = load ptr, ptr %fld.gep753, align 8
  %a.len.query755 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load754, i32 0, i32 0
  %a.len.query756 = load i64, ptr %a.len.query755, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %a.after743
  %counter.load758 = load i64, ptr %loop.idx.10, align 8
  %loop.cond759 = icmp slt i64 %counter.load758, %a.len.query756
  br i1 %loop.cond759, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i760 = sub i64 %counter.load758, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i760, ptr %var._i761, align 8
  store i64 %counter.load758, ptr %var._762, align 8
  store i64 %counter.load758, ptr %var.i757, align 8
  %var.load763 = load ptr, ptr %var.ch, align 8
  %fld.gep764 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load763, i32 0, i32 2
  %fld.load765 = load ptr, ptr %fld.gep764, align 8
  %var.load766 = load i64, ptr %var.i757, align 8
  %a.rd.nonnull767 = icmp ne ptr %fld.load765, null
  br i1 %a.rd.nonnull767, label %a.rd.check768, label %a.rd.err.null770

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %loop.exit.12
  %step.val1114 = load i64, ptr %loop.step.10, align 8
  %loop.next1115 = add i64 %counter.load758, %step.val1114
  store i64 %loop.next1115, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  br label %choice.exit

a.rd.check768:                                    ; preds = %loop.body.10
  %a.rd.len773 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load765, i32 0, i32 0
  %a.rd.len774 = load i64, ptr %a.rd.len773, align 8
  %a.rd.ge0775 = icmp sge i64 %var.load766, 0
  %a.rd.lt776 = icmp slt i64 %var.load766, %a.rd.len774
  %a.rd.bounds777 = and i1 %a.rd.ge0775, %a.rd.lt776
  br i1 %a.rd.bounds777, label %a.rd.ok769, label %a.rd.err.oob771

a.rd.ok769:                                       ; preds = %a.rd.check768
  %a.rd.data778 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load765, i32 0, i32 1
  %a.rd.data779 = load ptr, ptr %a.rd.data778, align 8
  %a.rd.elem.gep780 = getelementptr i64, ptr %a.rd.data779, i64 %var.load766
  %a.rd.elem781 = load i64, ptr %a.rd.elem.gep780, align 8
  br label %a.rd.done772

a.rd.err.null770:                                 ; preds = %loop.body.10
  %arena.cur782 = call ptr @dva_arena_current()
  %err.alloc783 = call ptr @dva_arena_alloc(ptr %arena.cur782, i64 56)
  %err.code.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 0
  store i64 4011, ptr %err.code.gep784, align 8
  %err.msg.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep785, align 8
  %err.file.gep786 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep786, align 8
  %err.line.gep787 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 3
  store i64 0, ptr %err.line.gep787, align 8
  %err.col.gep788 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 4
  store i64 0, ptr %err.col.gep788, align 8
  %err.ctx.gep789 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 5
  %err.ctx0.gep790 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep789, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep790, align 8
  %err.ctx1.gep791 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep789, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep791, align 8
  %err.p2i792 = ptrtoint ptr %err.alloc783 to i64
  br label %a.rd.done772

a.rd.err.oob771:                                  ; preds = %a.rd.check768
  %arena.cur793 = call ptr @dva_arena_current()
  %err.alloc794 = call ptr @dva_arena_alloc(ptr %arena.cur793, i64 56)
  %err.code.gep795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 0
  store i64 4011, ptr %err.code.gep795, align 8
  %err.msg.gep796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep796, align 8
  %err.file.gep797 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep797, align 8
  %err.line.gep798 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 3
  store i64 0, ptr %err.line.gep798, align 8
  %err.col.gep799 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 4
  store i64 0, ptr %err.col.gep799, align 8
  %err.ctx.gep800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc794, i32 0, i32 5
  %err.ctx0.gep801 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep800, i32 0, i32 0
  store i64 %var.load766, ptr %err.ctx0.gep801, align 8
  %err.ctx1.gep802 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep800, i32 0, i32 1
  store i64 %a.rd.len774, ptr %err.ctx1.gep802, align 8
  %err.p2i803 = ptrtoint ptr %err.alloc794 to i64
  br label %a.rd.done772

a.rd.done772:                                     ; preds = %a.rd.err.oob771, %a.rd.err.null770, %a.rd.ok769
  %a.rd.tag804 = phi i1 [ true, %a.rd.ok769 ], [ false, %a.rd.err.null770 ], [ false, %a.rd.err.oob771 ]
  %a.rd.pay805 = phi i64 [ %a.rd.elem781, %a.rd.ok769 ], [ %err.p2i792, %a.rd.err.null770 ], [ %err.p2i803, %a.rd.err.oob771 ]
  %ram.tag806 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag804, 0
  %ram.pay807 = insertvalue { i1, i64 } %ram.tag806, i64 %a.rd.pay805, 1
  %ram.tag808 = extractvalue { i1, i64 } %ram.pay807, 0
  br i1 %ram.tag808, label %choice.then809, label %choice.else810

choice.then809:                                   ; preds = %a.rd.done772
  %ram.pay812 = extractvalue { i1, i64 } %ram.pay807, 1
  %pay.ptr813 = inttoptr i64 %ram.pay812 to ptr
  store ptr %pay.ptr813, ptr %var._814, align 8
  br label %choice.exit811

choice.else810:                                   ; preds = %a.rd.done772
  %ram.pay815 = extractvalue { i1, i64 } %ram.pay807, 1
  %pay.ptr816 = inttoptr i64 %ram.pay815 to ptr
  store ptr %pay.ptr816, ptr %var._817, align 8
  %arena.cur818 = call ptr @dva_arena_current()
  %enum.alloc819 = call ptr @dva_arena_alloc(ptr %arena.cur818, i64 16)
  %tag.gep820 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc819, i32 0, i32 0
  store i64 3, ptr %tag.gep820, align 8
  %pay.gep821 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc819, i32 0, i32 1
  store ptr null, ptr %pay.gep821, align 8
  %arena.cur822 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur822, i64 24)
  %arena.cur823 = call ptr @dva_arena_current()
  %a.buf824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 128)
  %a.len.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep825, align 8
  %a.data.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf824, ptr %a.data.gep826, align 8
  %a.cap.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep827, align 8
  %arena.cur828 = call ptr @dva_arena_current()
  %enum.alloc829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 16)
  %tag.gep830 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc829, i32 0, i32 0
  store i64 0, ptr %tag.gep830, align 8
  %pay.gep831 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc829, i32 0, i32 1
  %arena.cur832 = call ptr @dva_arena_current()
  %enum.pay.alloc833 = call ptr @dva_arena_alloc(ptr %arena.cur832, i64 8)
  store i64 0, ptr %enum.pay.alloc833, align 8
  store ptr %enum.pay.alloc833, ptr %pay.gep831, align 8
  %arena.cur834 = call ptr @dva_arena_current()
  %a.new835 = call ptr @dva_arena_alloc(ptr %arena.cur834, i64 24)
  %arena.cur836 = call ptr @dva_arena_current()
  %a.buf837 = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 128)
  %a.len.gep838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new835, i32 0, i32 0
  store i64 0, ptr %a.len.gep838, align 8
  %a.data.gep839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new835, i32 0, i32 1
  store ptr %a.buf837, ptr %a.data.gep839, align 8
  %a.cap.gep840 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new835, i32 0, i32 2
  store i64 16, ptr %a.cap.gep840, align 8
  %arena.cur841 = call ptr @dva_arena_current()
  %a.new842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 24)
  %arena.cur843 = call ptr @dva_arena_current()
  %a.buf844 = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 128)
  %a.len.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new842, i32 0, i32 0
  store i64 0, ptr %a.len.gep845, align 8
  %a.data.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new842, i32 0, i32 1
  store ptr %a.buf844, ptr %a.data.gep846, align 8
  %a.cap.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new842, i32 0, i32 2
  store i64 16, ptr %a.cap.gep847, align 8
  %arena.cur848 = call ptr @dva_arena_current()
  %enum.alloc849 = call ptr @dva_arena_alloc(ptr %arena.cur848, i64 16)
  %tag.gep850 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc849, i32 0, i32 0
  store i64 0, ptr %tag.gep850, align 8
  %pay.gep851 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc849, i32 0, i32 1
  %arena.cur852 = call ptr @dva_arena_current()
  %enum.pay.alloc853 = call ptr @dva_arena_alloc(ptr %arena.cur852, i64 8)
  store i64 0, ptr %enum.pay.alloc853, align 8
  store ptr %enum.pay.alloc853, ptr %pay.gep851, align 8
  %arena.cur854 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur854, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc819, ptr %rec.fld, align 8
  %rec.fld855 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new, ptr %rec.fld855, align 8
  %rec.fld856 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc829, ptr %rec.fld856, align 8
  %rec.fld857 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new835, ptr %rec.fld857, align 8
  %rec.fld858 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.new842, ptr %rec.fld858, align 8
  %rec.fld859 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld859, align 1
  %rec.fld860 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %enum.alloc849, ptr %rec.fld860, align 8
  br label %choice.exit811

choice.exit811:                                   ; preds = %choice.else810, %choice.then809
  %choice.res861 = phi ptr [ %pay.ptr813, %choice.then809 ], [ %rec.alloc, %choice.else810 ]
  store ptr %choice.res861, ptr %var.br, align 8
  %var.load862 = load ptr, ptr %var.locals, align 8
  %a.load863 = load ptr, ptr %var.locals, align 8
  %a.null864 = icmp eq ptr %a.load863, null
  br i1 %a.null864, label %a.create865, label %a.after866

a.create865:                                      ; preds = %choice.exit811
  %arena.cur867 = call ptr @dva_arena_current()
  %a.create868 = call ptr @dva_arena_alloc(ptr %arena.cur867, i64 24)
  %arena.cur869 = call ptr @dva_arena_current()
  %a.buf870 = call ptr @dva_arena_alloc(ptr %arena.cur869, i64 128)
  %a.len.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 0
  store i64 0, ptr %a.len.gep871, align 8
  %a.data.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 1
  store ptr %a.buf870, ptr %a.data.gep872, align 8
  %a.cap.gep873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 2
  store i64 16, ptr %a.cap.gep873, align 8
  store ptr %a.create868, ptr %var.locals, align 8
  br label %a.after866

a.after866:                                       ; preds = %a.create865, %choice.exit811
  %a.load2874 = load ptr, ptr %var.locals, align 8
  %call.res875 = call ptr @"dep_graph::copy_names"(ptr %a.load2874)
  store ptr %call.res875, ptr %var.br_locals, align 8
  %var.load876 = load ptr, ptr %var.br, align 8
  %fld.gep877 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load876, i32 0, i32 4
  %fld.load878 = load ptr, ptr %fld.gep877, align 8
  %arr.cycle.len879 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load878, i32 0, i32 0
  %arr.cycle.len880 = load i64, ptr %arr.cycle.len879, align 8
  %arr.cycle.data881 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load878, i32 0, i32 1
  %arr.cycle.data882 = load ptr, ptr %arr.cycle.data881, align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after866
  %counter.load883 = load i64, ptr %loop.idx.11, align 8
  %loop.cond884 = icmp slt i64 %counter.load883, %arr.cycle.len880
  br i1 %loop.cond884, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i885 = sub i64 %counter.load883, 0
  store i64 1, ptr %loop.step.11, align 8
  %arr.elem.gep886 = getelementptr i64, ptr %arr.cycle.data882, i64 %counter.load883
  %arr.elem.raw887 = load i64, ptr %arr.elem.gep886, align 8
  %arr.elem.ptr888 = inttoptr i64 %arr.elem.raw887 to ptr
  store i64 %loop.rel.i885, ptr %var._i761, align 8
  store ptr %arr.elem.ptr888, ptr %var._762, align 8
  store ptr %arr.elem.ptr888, ptr %var.bv, align 8
  %var.load889 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len890 = getelementptr inbounds { i64, ptr }, ptr %var.load889, i32 0, i32 0
  %eq.lhs.len891 = load i64, ptr %eq.lhs.len890, align 8
  %eq.lhs.len892 = and i64 %eq.lhs.len891, 281474976710655
  %str.tag893 = lshr i64 %eq.lhs.len891, 48
  %str.immortal894 = icmp eq i64 %str.tag893, 0
  br i1 %str.immortal894, label %str_ok896, label %str_gen_check895

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit925
  %step.val955 = load i64, ptr %loop.step.11, align 8
  %loop.next956 = add i64 %counter.load883, %step.val955
  store i64 %loop.next956, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load957 = load ptr, ptr %var.br, align 8
  %fld.gep958 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load957, i32 0, i32 6
  %fld.load959 = load ptr, ptr %fld.gep958, align 8
  %var.load960 = load ptr, ptr %var.br_locals, align 8
  %a.load961 = load ptr, ptr %var.br_locals, align 8
  %a.null962 = icmp eq ptr %a.load961, null
  br i1 %a.null962, label %a.create963, label %a.after964

str_gen_check895:                                 ; preds = %loop.body.11
  %arena.gen898 = call ptr @dva_arena_current()
  %arena.gen899 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen898, i32 0, i32 4
  %arena.gen900 = load i64, ptr %arena.gen899, align 8
  %str.tag.match901 = icmp eq i64 %str.tag893, %arena.gen900
  br i1 %str.tag.match901, label %str_ok896, label %str_stale897

str_ok896:                                        ; preds = %str_stale897, %str_gen_check895, %loop.body.11
  %eq.rhs.len902 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len903 = and i64 %eq.rhs.len902, 281474976710655
  %str.tag904 = lshr i64 %eq.rhs.len902, 48
  %str.immortal905 = icmp eq i64 %str.tag904, 0
  br i1 %str.immortal905, label %str_ok907, label %str_gen_check906

str_stale897:                                     ; preds = %str_gen_check895
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok896

str_gen_check906:                                 ; preds = %str_ok896
  %arena.gen909 = call ptr @dva_arena_current()
  %arena.gen910 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen909, i32 0, i32 4
  %arena.gen911 = load i64, ptr %arena.gen910, align 8
  %str.tag.match912 = icmp eq i64 %str.tag904, %arena.gen911
  br i1 %str.tag.match912, label %str_ok907, label %str_stale908

str_ok907:                                        ; preds = %str_stale908, %str_gen_check906, %str_ok896
  %eq.len913 = icmp eq i64 %eq.lhs.len892, %eq.rhs.len903
  br i1 %eq.len913, label %str.eq.then914, label %str.eq.else915

str_stale908:                                     ; preds = %str_gen_check906
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok907

str.eq.then914:                                   ; preds = %str_ok907
  %eq.lhs.data917 = getelementptr inbounds { i64, ptr }, ptr %var.load889, i32 0, i32 1
  %eq.lhs.data918 = load ptr, ptr %eq.lhs.data917, align 8
  %eq.rhs.data919 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp920 = call i32 @memcmp(ptr %eq.lhs.data918, ptr %eq.rhs.data919, i64 %eq.lhs.len892)
  %eq.cmp.zero921 = icmp eq i32 %eq.memcmp920, 0
  br label %str.eq.merge916

str.eq.else915:                                   ; preds = %str_ok907
  br label %str.eq.merge916

str.eq.merge916:                                  ; preds = %str.eq.else915, %str.eq.then914
  %str.eq.result922 = phi i1 [ %eq.cmp.zero921, %str.eq.then914 ], [ false, %str.eq.else915 ]
  %str.neq923 = xor i1 %str.eq.result922, true
  br i1 %str.neq923, label %choice.then924, label %choice.exit925

choice.then924:                                   ; preds = %str.eq.merge916
  %var.load926 = load ptr, ptr %var.bv, align 8
  %a.load927 = load ptr, ptr %var.br_locals, align 8
  %a.null928 = icmp eq ptr %a.load927, null
  br i1 %a.null928, label %a.create929, label %a.after930

choice.exit925:                                   ; preds = %a.store941, %str.eq.merge916
  br label %loop.latch.11

a.create929:                                      ; preds = %choice.then924
  %arena.cur931 = call ptr @dva_arena_current()
  %a.create932 = call ptr @dva_arena_alloc(ptr %arena.cur931, i64 24)
  %arena.cur933 = call ptr @dva_arena_current()
  %a.buf934 = call ptr @dva_arena_alloc(ptr %arena.cur933, i64 128)
  %a.len.gep935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create932, i32 0, i32 0
  store i64 0, ptr %a.len.gep935, align 8
  %a.data.gep936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create932, i32 0, i32 1
  store ptr %a.buf934, ptr %a.data.gep936, align 8
  %a.cap.gep937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create932, i32 0, i32 2
  store i64 16, ptr %a.cap.gep937, align 8
  store ptr %a.create932, ptr %var.br_locals, align 8
  br label %a.after930

a.after930:                                       ; preds = %a.create929, %choice.then924
  %a.load2938 = load ptr, ptr %var.br_locals, align 8
  br label %a.check939

a.check939:                                       ; preds = %a.after930
  %a.len942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2938, i32 0, i32 0
  %a.len943 = load i64, ptr %a.len942, align 8
  %a.cap944 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2938, i32 0, i32 2
  %a.cap945 = load i64, ptr %a.cap944, align 8
  %a.needs.grow946 = icmp eq i64 %a.len943, %a.cap945
  br i1 %a.needs.grow946, label %a.grow940, label %a.store941

a.grow940:                                        ; preds = %a.check939
  call void @dva_array_grow(ptr %a.load2938)
  br label %a.store941

a.store941:                                       ; preds = %a.grow940, %a.check939
  %a.cur.data947 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2938, i32 0, i32 1
  %a.cur.data948 = load ptr, ptr %a.cur.data947, align 8
  %a.cur.len949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2938, i32 0, i32 0
  %a.cur.len950 = load i64, ptr %a.cur.len949, align 8
  %a.elem.gep951 = getelementptr i64, ptr %a.cur.data948, i64 %a.cur.len950
  %a.elem.p2i952 = ptrtoint ptr %var.load926 to i64
  store i64 %a.elem.p2i952, ptr %a.elem.gep951, align 8
  %a.next.len953 = add i64 %a.cur.len950, 1
  %b.len.gep954 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2938, i32 0, i32 0
  store i64 %a.next.len953, ptr %b.len.gep954, align 8
  br label %choice.exit925

a.create963:                                      ; preds = %loop.exit.11
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
  store ptr %a.create966, ptr %var.br_locals, align 8
  br label %a.after964

a.after964:                                       ; preds = %a.create963, %loop.exit.11
  %a.load2972 = load ptr, ptr %var.br_locals, align 8
  %var.load973 = load ptr, ptr %var.refs, align 8
  %a.load974 = load ptr, ptr %var.refs, align 8
  %a.null975 = icmp eq ptr %a.load974, null
  br i1 %a.null975, label %a.create976, label %a.after977

a.create976:                                      ; preds = %a.after964
  %arena.cur978 = call ptr @dva_arena_current()
  %a.create979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 24)
  %arena.cur980 = call ptr @dva_arena_current()
  %a.buf981 = call ptr @dva_arena_alloc(ptr %arena.cur980, i64 128)
  %a.len.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 0
  store i64 0, ptr %a.len.gep982, align 8
  %a.data.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 1
  store ptr %a.buf981, ptr %a.data.gep983, align 8
  %a.cap.gep984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 2
  store i64 16, ptr %a.cap.gep984, align 8
  store ptr %a.create979, ptr %var.refs, align 8
  br label %a.after977

a.after977:                                       ; preds = %a.create976, %a.after964
  %a.load2985 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load959, ptr %a.load2972, ptr %a.load2985)
  %var.load986 = load ptr, ptr %var.br, align 8
  %fld.gep987 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load986, i32 0, i32 2
  %fld.load988 = load ptr, ptr %fld.gep987, align 8
  %var.load989 = load ptr, ptr %var.br_locals, align 8
  %a.load990 = load ptr, ptr %var.br_locals, align 8
  %a.null991 = icmp eq ptr %a.load990, null
  br i1 %a.null991, label %a.create992, label %a.after993

a.create992:                                      ; preds = %a.after977
  %arena.cur994 = call ptr @dva_arena_current()
  %a.create995 = call ptr @dva_arena_alloc(ptr %arena.cur994, i64 24)
  %arena.cur996 = call ptr @dva_arena_current()
  %a.buf997 = call ptr @dva_arena_alloc(ptr %arena.cur996, i64 128)
  %a.len.gep998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create995, i32 0, i32 0
  store i64 0, ptr %a.len.gep998, align 8
  %a.data.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create995, i32 0, i32 1
  store ptr %a.buf997, ptr %a.data.gep999, align 8
  %a.cap.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create995, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1000, align 8
  store ptr %a.create995, ptr %var.br_locals, align 8
  br label %a.after993

a.after993:                                       ; preds = %a.create992, %a.after977
  %a.load21001 = load ptr, ptr %var.br_locals, align 8
  %var.load1002 = load ptr, ptr %var.refs, align 8
  %a.load1003 = load ptr, ptr %var.refs, align 8
  %a.null1004 = icmp eq ptr %a.load1003, null
  br i1 %a.null1004, label %a.create1005, label %a.after1006

a.create1005:                                     ; preds = %a.after993
  %arena.cur1007 = call ptr @dva_arena_current()
  %a.create1008 = call ptr @dva_arena_alloc(ptr %arena.cur1007, i64 24)
  %arena.cur1009 = call ptr @dva_arena_current()
  %a.buf1010 = call ptr @dva_arena_alloc(ptr %arena.cur1009, i64 128)
  %a.len.gep1011 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1008, i32 0, i32 0
  store i64 0, ptr %a.len.gep1011, align 8
  %a.data.gep1012 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1008, i32 0, i32 1
  store ptr %a.buf1010, ptr %a.data.gep1012, align 8
  %a.cap.gep1013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1008, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1013, align 8
  store ptr %a.create1008, ptr %var.refs, align 8
  br label %a.after1006

a.after1006:                                      ; preds = %a.create1005, %a.after993
  %a.load21014 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load988, ptr %a.load21001, ptr %a.load21014)
  %var.load1015 = load ptr, ptr %var.br, align 8
  %fld.gep1016 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1015, i32 0, i32 1
  %fld.load1017 = load ptr, ptr %fld.gep1016, align 8
  %a.len.query1018 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1017, i32 0, i32 0
  %a.len.query1019 = load i64, ptr %a.len.query1018, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after1006
  %counter.load1020 = load i64, ptr %loop.idx.12, align 8
  %loop.cond1021 = icmp slt i64 %counter.load1020, %a.len.query1019
  br i1 %loop.cond1021, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i1022 = sub i64 %counter.load1020, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i1022, ptr %var._i761, align 8
  store i64 %counter.load1020, ptr %var._762, align 8
  store i64 %counter.load1020, ptr %var.k, align 8
  %var.load1023 = load ptr, ptr %var.br, align 8
  %fld.gep1024 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1023, i32 0, i32 1
  %fld.load1025 = load ptr, ptr %fld.gep1024, align 8
  %var.load1026 = load i64, ptr %var.k, align 8
  %a.rd.nonnull1027 = icmp ne ptr %fld.load1025, null
  br i1 %a.rd.nonnull1027, label %a.rd.check1028, label %a.rd.err.null1030

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %a.after1103
  %step.val1112 = load i64, ptr %loop.step.12, align 8
  %loop.next1113 = add i64 %counter.load1020, %step.val1112
  store i64 %loop.next1113, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  br label %loop.latch.10

a.rd.check1028:                                   ; preds = %loop.body.12
  %a.rd.len1033 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1025, i32 0, i32 0
  %a.rd.len1034 = load i64, ptr %a.rd.len1033, align 8
  %a.rd.ge01035 = icmp sge i64 %var.load1026, 0
  %a.rd.lt1036 = icmp slt i64 %var.load1026, %a.rd.len1034
  %a.rd.bounds1037 = and i1 %a.rd.ge01035, %a.rd.lt1036
  br i1 %a.rd.bounds1037, label %a.rd.ok1029, label %a.rd.err.oob1031

a.rd.ok1029:                                      ; preds = %a.rd.check1028
  %a.rd.data1038 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1025, i32 0, i32 1
  %a.rd.data1039 = load ptr, ptr %a.rd.data1038, align 8
  %a.rd.elem.gep1040 = getelementptr i64, ptr %a.rd.data1039, i64 %var.load1026
  %a.rd.elem1041 = load i64, ptr %a.rd.elem.gep1040, align 8
  br label %a.rd.done1032

a.rd.err.null1030:                                ; preds = %loop.body.12
  %arena.cur1042 = call ptr @dva_arena_current()
  %err.alloc1043 = call ptr @dva_arena_alloc(ptr %arena.cur1042, i64 56)
  %err.code.gep1044 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1044, align 8
  %err.msg.gep1045 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1045, align 8
  %err.file.gep1046 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1046, align 8
  %err.line.gep1047 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 3
  store i64 0, ptr %err.line.gep1047, align 8
  %err.col.gep1048 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 4
  store i64 0, ptr %err.col.gep1048, align 8
  %err.ctx.gep1049 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1043, i32 0, i32 5
  %err.ctx0.gep1050 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1049, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1050, align 8
  %err.ctx1.gep1051 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1049, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1051, align 8
  %err.p2i1052 = ptrtoint ptr %err.alloc1043 to i64
  br label %a.rd.done1032

a.rd.err.oob1031:                                 ; preds = %a.rd.check1028
  %arena.cur1053 = call ptr @dva_arena_current()
  %err.alloc1054 = call ptr @dva_arena_alloc(ptr %arena.cur1053, i64 56)
  %err.code.gep1055 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1055, align 8
  %err.msg.gep1056 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1056, align 8
  %err.file.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1057, align 8
  %err.line.gep1058 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 3
  store i64 0, ptr %err.line.gep1058, align 8
  %err.col.gep1059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 4
  store i64 0, ptr %err.col.gep1059, align 8
  %err.ctx.gep1060 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1054, i32 0, i32 5
  %err.ctx0.gep1061 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1060, i32 0, i32 0
  store i64 %var.load1026, ptr %err.ctx0.gep1061, align 8
  %err.ctx1.gep1062 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1060, i32 0, i32 1
  store i64 %a.rd.len1034, ptr %err.ctx1.gep1062, align 8
  %err.p2i1063 = ptrtoint ptr %err.alloc1054 to i64
  br label %a.rd.done1032

a.rd.done1032:                                    ; preds = %a.rd.err.oob1031, %a.rd.err.null1030, %a.rd.ok1029
  %a.rd.tag1064 = phi i1 [ true, %a.rd.ok1029 ], [ false, %a.rd.err.null1030 ], [ false, %a.rd.err.oob1031 ]
  %a.rd.pay1065 = phi i64 [ %a.rd.elem1041, %a.rd.ok1029 ], [ %err.p2i1052, %a.rd.err.null1030 ], [ %err.p2i1063, %a.rd.err.oob1031 ]
  %ram.tag1066 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1064, 0
  %ram.pay1067 = insertvalue { i1, i64 } %ram.tag1066, i64 %a.rd.pay1065, 1
  %ram.tag1068 = extractvalue { i1, i64 } %ram.pay1067, 0
  br i1 %ram.tag1068, label %choice.then1069, label %choice.else1070

choice.then1069:                                  ; preds = %a.rd.done1032
  %ram.pay1072 = extractvalue { i1, i64 } %ram.pay1067, 1
  %pay.ptr1073 = inttoptr i64 %ram.pay1072 to ptr
  store ptr %pay.ptr1073, ptr %var._1074, align 8
  br label %choice.exit1071

choice.else1070:                                  ; preds = %a.rd.done1032
  %ram.pay1075 = extractvalue { i1, i64 } %ram.pay1067, 1
  %pay.ptr1076 = inttoptr i64 %ram.pay1075 to ptr
  store ptr %pay.ptr1076, ptr %var._1077, align 8
  %arena.cur1078 = call ptr @dva_arena_current()
  %enum.alloc1079 = call ptr @dva_arena_alloc(ptr %arena.cur1078, i64 16)
  %tag.gep1080 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1079, i32 0, i32 0
  store i64 0, ptr %tag.gep1080, align 8
  %pay.gep1081 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1079, i32 0, i32 1
  %arena.cur1082 = call ptr @dva_arena_current()
  %enum.pay.alloc1083 = call ptr @dva_arena_alloc(ptr %arena.cur1082, i64 8)
  store i64 0, ptr %enum.pay.alloc1083, align 8
  store ptr %enum.pay.alloc1083, ptr %pay.gep1081, align 8
  br label %choice.exit1071

choice.exit1071:                                  ; preds = %choice.else1070, %choice.then1069
  %choice.res1084 = phi ptr [ %pay.ptr1073, %choice.then1069 ], [ %enum.alloc1079, %choice.else1070 ]
  store ptr %choice.res1084, ptr %var.cv, align 8
  %var.load1085 = load ptr, ptr %var.cv, align 8
  %var.load1086 = load ptr, ptr %var.br_locals, align 8
  %a.load1087 = load ptr, ptr %var.br_locals, align 8
  %a.null1088 = icmp eq ptr %a.load1087, null
  br i1 %a.null1088, label %a.create1089, label %a.after1090

a.create1089:                                     ; preds = %choice.exit1071
  %arena.cur1091 = call ptr @dva_arena_current()
  %a.create1092 = call ptr @dva_arena_alloc(ptr %arena.cur1091, i64 24)
  %arena.cur1093 = call ptr @dva_arena_current()
  %a.buf1094 = call ptr @dva_arena_alloc(ptr %arena.cur1093, i64 128)
  %a.len.gep1095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 0
  store i64 0, ptr %a.len.gep1095, align 8
  %a.data.gep1096 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 1
  store ptr %a.buf1094, ptr %a.data.gep1096, align 8
  %a.cap.gep1097 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1097, align 8
  store ptr %a.create1092, ptr %var.br_locals, align 8
  br label %a.after1090

a.after1090:                                      ; preds = %a.create1089, %choice.exit1071
  %a.load21098 = load ptr, ptr %var.br_locals, align 8
  %var.load1099 = load ptr, ptr %var.refs, align 8
  %a.load1100 = load ptr, ptr %var.refs, align 8
  %a.null1101 = icmp eq ptr %a.load1100, null
  br i1 %a.null1101, label %a.create1102, label %a.after1103

a.create1102:                                     ; preds = %a.after1090
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
  store ptr %a.create1105, ptr %var.refs, align 8
  br label %a.after1103

a.after1103:                                      ; preds = %a.create1102, %a.after1090
  %a.load21111 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1085, ptr %a.load21098, ptr %a.load21111)
  br label %loop.latch.12

choice.case1116:                                  ; preds = %choice.next717
  %pay.gep1121 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1122 = load ptr, ptr %pay.gep1121, align 8
  store ptr %payload.ptr1122, ptr %var.re, align 8
  %var.load1123 = load ptr, ptr %var.re, align 8
  %fld.gep1124 = getelementptr inbounds { ptr, i1 }, ptr %var.load1123, i32 0, i32 0
  %fld.load1125 = load ptr, ptr %fld.gep1124, align 8
  %a.len.query1126 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1125, i32 0, i32 0
  %a.len.query1127 = load i64, ptr %a.len.query1126, align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

choice.next1117:                                  ; preds = %choice.next717
  %tag.gep1234 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1235 = load i64, ptr %tag.gep1234, align 8
  %tag.match1236 = icmp eq i64 %tag.id1235, 16
  br i1 %tag.match1236, label %choice.case1232, label %choice.next1233

loop.header.13:                                   ; preds = %loop.latch.13, %choice.case1116
  %counter.load1129 = load i64, ptr %loop.idx.13, align 8
  %loop.cond1130 = icmp slt i64 %counter.load1129, %a.len.query1127
  br i1 %loop.cond1130, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i1131 = sub i64 %counter.load1129, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i1131, ptr %var._i1132, align 8
  store i64 %counter.load1129, ptr %var._1133, align 8
  store i64 %counter.load1129, ptr %var.i1128, align 8
  %var.load1134 = load ptr, ptr %var.re, align 8
  %fld.gep1135 = getelementptr inbounds { ptr, i1 }, ptr %var.load1134, i32 0, i32 0
  %fld.load1136 = load ptr, ptr %fld.gep1135, align 8
  %var.load1137 = load i64, ptr %var.i1128, align 8
  %a.rd.nonnull1138 = icmp ne ptr %fld.load1136, null
  br i1 %a.rd.nonnull1138, label %a.rd.check1139, label %a.rd.err.null1141

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %a.after1221
  %step.val1230 = load i64, ptr %loop.step.13, align 8
  %loop.next1231 = add i64 %counter.load1129, %step.val1230
  store i64 %loop.next1231, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  br label %choice.exit

a.rd.check1139:                                   ; preds = %loop.body.13
  %a.rd.len1144 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1136, i32 0, i32 0
  %a.rd.len1145 = load i64, ptr %a.rd.len1144, align 8
  %a.rd.ge01146 = icmp sge i64 %var.load1137, 0
  %a.rd.lt1147 = icmp slt i64 %var.load1137, %a.rd.len1145
  %a.rd.bounds1148 = and i1 %a.rd.ge01146, %a.rd.lt1147
  br i1 %a.rd.bounds1148, label %a.rd.ok1140, label %a.rd.err.oob1142

a.rd.ok1140:                                      ; preds = %a.rd.check1139
  %a.rd.data1149 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1136, i32 0, i32 1
  %a.rd.data1150 = load ptr, ptr %a.rd.data1149, align 8
  %a.rd.elem.gep1151 = getelementptr i64, ptr %a.rd.data1150, i64 %var.load1137
  %a.rd.elem1152 = load i64, ptr %a.rd.elem.gep1151, align 8
  br label %a.rd.done1143

a.rd.err.null1141:                                ; preds = %loop.body.13
  %arena.cur1153 = call ptr @dva_arena_current()
  %err.alloc1154 = call ptr @dva_arena_alloc(ptr %arena.cur1153, i64 56)
  %err.code.gep1155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1155, align 8
  %err.msg.gep1156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1156, align 8
  %err.file.gep1157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1157, align 8
  %err.line.gep1158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 3
  store i64 0, ptr %err.line.gep1158, align 8
  %err.col.gep1159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 4
  store i64 0, ptr %err.col.gep1159, align 8
  %err.ctx.gep1160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1154, i32 0, i32 5
  %err.ctx0.gep1161 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1160, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1161, align 8
  %err.ctx1.gep1162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1160, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1162, align 8
  %err.p2i1163 = ptrtoint ptr %err.alloc1154 to i64
  br label %a.rd.done1143

a.rd.err.oob1142:                                 ; preds = %a.rd.check1139
  %arena.cur1164 = call ptr @dva_arena_current()
  %err.alloc1165 = call ptr @dva_arena_alloc(ptr %arena.cur1164, i64 56)
  %err.code.gep1166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1166, align 8
  %err.msg.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1167, align 8
  %err.file.gep1168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1168, align 8
  %err.line.gep1169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 3
  store i64 0, ptr %err.line.gep1169, align 8
  %err.col.gep1170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 4
  store i64 0, ptr %err.col.gep1170, align 8
  %err.ctx.gep1171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1165, i32 0, i32 5
  %err.ctx0.gep1172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1171, i32 0, i32 0
  store i64 %var.load1137, ptr %err.ctx0.gep1172, align 8
  %err.ctx1.gep1173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1171, i32 0, i32 1
  store i64 %a.rd.len1145, ptr %err.ctx1.gep1173, align 8
  %err.p2i1174 = ptrtoint ptr %err.alloc1165 to i64
  br label %a.rd.done1143

a.rd.done1143:                                    ; preds = %a.rd.err.oob1142, %a.rd.err.null1141, %a.rd.ok1140
  %a.rd.tag1175 = phi i1 [ true, %a.rd.ok1140 ], [ false, %a.rd.err.null1141 ], [ false, %a.rd.err.oob1142 ]
  %a.rd.pay1176 = phi i64 [ %a.rd.elem1152, %a.rd.ok1140 ], [ %err.p2i1163, %a.rd.err.null1141 ], [ %err.p2i1174, %a.rd.err.oob1142 ]
  %ram.tag1177 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1175, 0
  %ram.pay1178 = insertvalue { i1, i64 } %ram.tag1177, i64 %a.rd.pay1176, 1
  %ram.tag1179 = extractvalue { i1, i64 } %ram.pay1178, 0
  br i1 %ram.tag1179, label %choice.then1180, label %choice.else1181

choice.then1180:                                  ; preds = %a.rd.done1143
  %ram.pay1183 = extractvalue { i1, i64 } %ram.pay1178, 1
  %pay.ptr1184 = inttoptr i64 %ram.pay1183 to ptr
  store ptr %pay.ptr1184, ptr %var._1185, align 8
  br label %choice.exit1182

choice.else1181:                                  ; preds = %a.rd.done1143
  %ram.pay1186 = extractvalue { i1, i64 } %ram.pay1178, 1
  %pay.ptr1187 = inttoptr i64 %ram.pay1186 to ptr
  store ptr %pay.ptr1187, ptr %var._1188, align 8
  %arena.cur1189 = call ptr @dva_arena_current()
  %enum.alloc1190 = call ptr @dva_arena_alloc(ptr %arena.cur1189, i64 16)
  %tag.gep1191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1190, i32 0, i32 0
  store i64 0, ptr %tag.gep1191, align 8
  %pay.gep1192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1190, i32 0, i32 1
  %arena.cur1193 = call ptr @dva_arena_current()
  %enum.pay.alloc1194 = call ptr @dva_arena_alloc(ptr %arena.cur1193, i64 8)
  store i64 0, ptr %enum.pay.alloc1194, align 8
  store ptr %enum.pay.alloc1194, ptr %pay.gep1192, align 8
  %arena.cur1195 = call ptr @dva_arena_current()
  %rec.alloc1196 = call ptr @dva_arena_alloc(ptr %arena.cur1195, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1197 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1196, i32 0, i32 0
  store i1 false, ptr %rec.fld1197, align 1
  %rec.fld1198 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1196, i32 0, i32 1
  store ptr @str.4.struct, ptr %rec.fld1198, align 8
  %rec.fld1199 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1196, i32 0, i32 2
  store ptr %enum.alloc1190, ptr %rec.fld1199, align 8
  br label %choice.exit1182

choice.exit1182:                                  ; preds = %choice.else1181, %choice.then1180
  %choice.res1200 = phi ptr [ %pay.ptr1184, %choice.then1180 ], [ %rec.alloc1196, %choice.else1181 ]
  store ptr %choice.res1200, ptr %var.fld, align 8
  %var.load1201 = load ptr, ptr %var.fld, align 8
  %fld.gep1202 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1201, i32 0, i32 2
  %fld.load1203 = load ptr, ptr %fld.gep1202, align 8
  %var.load1204 = load ptr, ptr %var.locals, align 8
  %a.load1205 = load ptr, ptr %var.locals, align 8
  %a.null1206 = icmp eq ptr %a.load1205, null
  br i1 %a.null1206, label %a.create1207, label %a.after1208

a.create1207:                                     ; preds = %choice.exit1182
  %arena.cur1209 = call ptr @dva_arena_current()
  %a.create1210 = call ptr @dva_arena_alloc(ptr %arena.cur1209, i64 24)
  %arena.cur1211 = call ptr @dva_arena_current()
  %a.buf1212 = call ptr @dva_arena_alloc(ptr %arena.cur1211, i64 128)
  %a.len.gep1213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 0
  store i64 0, ptr %a.len.gep1213, align 8
  %a.data.gep1214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 1
  store ptr %a.buf1212, ptr %a.data.gep1214, align 8
  %a.cap.gep1215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1215, align 8
  store ptr %a.create1210, ptr %var.locals, align 8
  br label %a.after1208

a.after1208:                                      ; preds = %a.create1207, %choice.exit1182
  %a.load21216 = load ptr, ptr %var.locals, align 8
  %var.load1217 = load ptr, ptr %var.refs, align 8
  %a.load1218 = load ptr, ptr %var.refs, align 8
  %a.null1219 = icmp eq ptr %a.load1218, null
  br i1 %a.null1219, label %a.create1220, label %a.after1221

a.create1220:                                     ; preds = %a.after1208
  %arena.cur1222 = call ptr @dva_arena_current()
  %a.create1223 = call ptr @dva_arena_alloc(ptr %arena.cur1222, i64 24)
  %arena.cur1224 = call ptr @dva_arena_current()
  %a.buf1225 = call ptr @dva_arena_alloc(ptr %arena.cur1224, i64 128)
  %a.len.gep1226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1223, i32 0, i32 0
  store i64 0, ptr %a.len.gep1226, align 8
  %a.data.gep1227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1223, i32 0, i32 1
  store ptr %a.buf1225, ptr %a.data.gep1227, align 8
  %a.cap.gep1228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1223, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1228, align 8
  store ptr %a.create1223, ptr %var.refs, align 8
  br label %a.after1221

a.after1221:                                      ; preds = %a.create1220, %a.after1208
  %a.load21229 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1203, ptr %a.load21216, ptr %a.load21229)
  br label %loop.latch.13

choice.case1232:                                  ; preds = %choice.next1117
  %pay.gep1237 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1238 = load ptr, ptr %pay.gep1237, align 8
  store ptr %payload.ptr1238, ptr %var.m, align 8
  %var.load1239 = load ptr, ptr %var.m, align 8
  %fld.gep1240 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1239, i32 0, i32 0
  %fld.load1241 = load ptr, ptr %fld.gep1240, align 8
  %var.load1242 = load ptr, ptr %var.locals, align 8
  %a.load1243 = load ptr, ptr %var.locals, align 8
  %a.null1244 = icmp eq ptr %a.load1243, null
  br i1 %a.null1244, label %a.create1245, label %a.after1246

choice.next1233:                                  ; preds = %choice.next1117
  %tag.gep1299 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1300 = load i64, ptr %tag.gep1299, align 8
  %tag.match1301 = icmp eq i64 %tag.id1300, 17
  br i1 %tag.match1301, label %choice.case1297, label %choice.next1298

a.create1245:                                     ; preds = %choice.case1232
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

a.after1246:                                      ; preds = %a.create1245, %choice.case1232
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
  %var.load1268 = load ptr, ptr %var.m, align 8
  %fld.gep1269 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1268, i32 0, i32 3
  %fld.load1270 = load ptr, ptr %fld.gep1269, align 8
  %var.load1271 = load ptr, ptr %var.locals, align 8
  %a.load1272 = load ptr, ptr %var.locals, align 8
  %a.null1273 = icmp eq ptr %a.load1272, null
  br i1 %a.null1273, label %a.create1274, label %a.after1275

a.create1274:                                     ; preds = %a.after1259
  %arena.cur1276 = call ptr @dva_arena_current()
  %a.create1277 = call ptr @dva_arena_alloc(ptr %arena.cur1276, i64 24)
  %arena.cur1278 = call ptr @dva_arena_current()
  %a.buf1279 = call ptr @dva_arena_alloc(ptr %arena.cur1278, i64 128)
  %a.len.gep1280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1277, i32 0, i32 0
  store i64 0, ptr %a.len.gep1280, align 8
  %a.data.gep1281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1277, i32 0, i32 1
  store ptr %a.buf1279, ptr %a.data.gep1281, align 8
  %a.cap.gep1282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1277, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1282, align 8
  store ptr %a.create1277, ptr %var.locals, align 8
  br label %a.after1275

a.after1275:                                      ; preds = %a.create1274, %a.after1259
  %a.load21283 = load ptr, ptr %var.locals, align 8
  %var.load1284 = load ptr, ptr %var.refs, align 8
  %a.load1285 = load ptr, ptr %var.refs, align 8
  %a.null1286 = icmp eq ptr %a.load1285, null
  br i1 %a.null1286, label %a.create1287, label %a.after1288

a.create1287:                                     ; preds = %a.after1275
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
  store ptr %a.create1290, ptr %var.refs, align 8
  br label %a.after1288

a.after1288:                                      ; preds = %a.create1287, %a.after1275
  %a.load21296 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1270, ptr %a.load21283, ptr %a.load21296)
  br label %choice.exit

choice.case1297:                                  ; preds = %choice.next1233
  %pay.gep1302 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1303 = load ptr, ptr %pay.gep1302, align 8
  store ptr %payload.ptr1303, ptr %var.ka, align 8
  %var.load1304 = load ptr, ptr %var.ka, align 8
  %fld.gep1305 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1304, i32 0, i32 0
  %fld.load1306 = load ptr, ptr %fld.gep1305, align 8
  %var.load1307 = load ptr, ptr %var.locals, align 8
  %a.load1308 = load ptr, ptr %var.locals, align 8
  %a.null1309 = icmp eq ptr %a.load1308, null
  br i1 %a.null1309, label %a.create1310, label %a.after1311

choice.next1298:                                  ; preds = %choice.next1233
  %tag.gep1364 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1365 = load i64, ptr %tag.gep1364, align 8
  %tag.match1366 = icmp eq i64 %tag.id1365, 6
  br i1 %tag.match1366, label %choice.case1362, label %choice.next1363

a.create1310:                                     ; preds = %choice.case1297
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
  store ptr %a.create1313, ptr %var.locals, align 8
  br label %a.after1311

a.after1311:                                      ; preds = %a.create1310, %choice.case1297
  %a.load21319 = load ptr, ptr %var.locals, align 8
  %var.load1320 = load ptr, ptr %var.refs, align 8
  %a.load1321 = load ptr, ptr %var.refs, align 8
  %a.null1322 = icmp eq ptr %a.load1321, null
  br i1 %a.null1322, label %a.create1323, label %a.after1324

a.create1323:                                     ; preds = %a.after1311
  %arena.cur1325 = call ptr @dva_arena_current()
  %a.create1326 = call ptr @dva_arena_alloc(ptr %arena.cur1325, i64 24)
  %arena.cur1327 = call ptr @dva_arena_current()
  %a.buf1328 = call ptr @dva_arena_alloc(ptr %arena.cur1327, i64 128)
  %a.len.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 0
  store i64 0, ptr %a.len.gep1329, align 8
  %a.data.gep1330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 1
  store ptr %a.buf1328, ptr %a.data.gep1330, align 8
  %a.cap.gep1331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1331, align 8
  store ptr %a.create1326, ptr %var.refs, align 8
  br label %a.after1324

a.after1324:                                      ; preds = %a.create1323, %a.after1311
  %a.load21332 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1306, ptr %a.load21319, ptr %a.load21332)
  %var.load1333 = load ptr, ptr %var.ka, align 8
  %fld.gep1334 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1333, i32 0, i32 1
  %fld.load1335 = load ptr, ptr %fld.gep1334, align 8
  %var.load1336 = load ptr, ptr %var.locals, align 8
  %a.load1337 = load ptr, ptr %var.locals, align 8
  %a.null1338 = icmp eq ptr %a.load1337, null
  br i1 %a.null1338, label %a.create1339, label %a.after1340

a.create1339:                                     ; preds = %a.after1324
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
  store ptr %a.create1342, ptr %var.locals, align 8
  br label %a.after1340

a.after1340:                                      ; preds = %a.create1339, %a.after1324
  %a.load21348 = load ptr, ptr %var.locals, align 8
  %var.load1349 = load ptr, ptr %var.refs, align 8
  %a.load1350 = load ptr, ptr %var.refs, align 8
  %a.null1351 = icmp eq ptr %a.load1350, null
  br i1 %a.null1351, label %a.create1352, label %a.after1353

a.create1352:                                     ; preds = %a.after1340
  %arena.cur1354 = call ptr @dva_arena_current()
  %a.create1355 = call ptr @dva_arena_alloc(ptr %arena.cur1354, i64 24)
  %arena.cur1356 = call ptr @dva_arena_current()
  %a.buf1357 = call ptr @dva_arena_alloc(ptr %arena.cur1356, i64 128)
  %a.len.gep1358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1355, i32 0, i32 0
  store i64 0, ptr %a.len.gep1358, align 8
  %a.data.gep1359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1355, i32 0, i32 1
  store ptr %a.buf1357, ptr %a.data.gep1359, align 8
  %a.cap.gep1360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1355, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1360, align 8
  store ptr %a.create1355, ptr %var.refs, align 8
  br label %a.after1353

a.after1353:                                      ; preds = %a.create1352, %a.after1340
  %a.load21361 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1335, ptr %a.load21348, ptr %a.load21361)
  br label %choice.exit

choice.case1362:                                  ; preds = %choice.next1298
  %pay.gep1367 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1368 = load ptr, ptr %pay.gep1367, align 8
  store ptr %payload.ptr1368, ptr %var.a1369, align 8
  %var.load1370 = load ptr, ptr %var.a1369, align 8
  %fld.gep1371 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1370, i32 0, i32 5
  %fld.load1372 = load ptr, ptr %fld.gep1371, align 8
  %var.load1373 = load ptr, ptr %var.locals, align 8
  %a.load1374 = load ptr, ptr %var.locals, align 8
  %a.null1375 = icmp eq ptr %a.load1374, null
  br i1 %a.null1375, label %a.create1376, label %a.after1377

choice.next1363:                                  ; preds = %choice.next1298
  %tag.gep1430 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1431 = load i64, ptr %tag.gep1430, align 8
  %tag.match1432 = icmp eq i64 %tag.id1431, 12
  br i1 %tag.match1432, label %choice.case1428, label %choice.next1429

a.create1376:                                     ; preds = %choice.case1362
  %arena.cur1378 = call ptr @dva_arena_current()
  %a.create1379 = call ptr @dva_arena_alloc(ptr %arena.cur1378, i64 24)
  %arena.cur1380 = call ptr @dva_arena_current()
  %a.buf1381 = call ptr @dva_arena_alloc(ptr %arena.cur1380, i64 128)
  %a.len.gep1382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1379, i32 0, i32 0
  store i64 0, ptr %a.len.gep1382, align 8
  %a.data.gep1383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1379, i32 0, i32 1
  store ptr %a.buf1381, ptr %a.data.gep1383, align 8
  %a.cap.gep1384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1379, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1384, align 8
  store ptr %a.create1379, ptr %var.locals, align 8
  br label %a.after1377

a.after1377:                                      ; preds = %a.create1376, %choice.case1362
  %a.load21385 = load ptr, ptr %var.locals, align 8
  %var.load1386 = load ptr, ptr %var.refs, align 8
  %a.load1387 = load ptr, ptr %var.refs, align 8
  %a.null1388 = icmp eq ptr %a.load1387, null
  br i1 %a.null1388, label %a.create1389, label %a.after1390

a.create1389:                                     ; preds = %a.after1377
  %arena.cur1391 = call ptr @dva_arena_current()
  %a.create1392 = call ptr @dva_arena_alloc(ptr %arena.cur1391, i64 24)
  %arena.cur1393 = call ptr @dva_arena_current()
  %a.buf1394 = call ptr @dva_arena_alloc(ptr %arena.cur1393, i64 128)
  %a.len.gep1395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1392, i32 0, i32 0
  store i64 0, ptr %a.len.gep1395, align 8
  %a.data.gep1396 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1392, i32 0, i32 1
  store ptr %a.buf1394, ptr %a.data.gep1396, align 8
  %a.cap.gep1397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1392, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1397, align 8
  store ptr %a.create1392, ptr %var.refs, align 8
  br label %a.after1390

a.after1390:                                      ; preds = %a.create1389, %a.after1377
  %a.load21398 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1372, ptr %a.load21385, ptr %a.load21398)
  %var.load1399 = load ptr, ptr %var.a1369, align 8
  %fld.gep1400 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1399, i32 0, i32 6
  %fld.load1401 = load ptr, ptr %fld.gep1400, align 8
  %var.load1402 = load ptr, ptr %var.locals, align 8
  %a.load1403 = load ptr, ptr %var.locals, align 8
  %a.null1404 = icmp eq ptr %a.load1403, null
  br i1 %a.null1404, label %a.create1405, label %a.after1406

a.create1405:                                     ; preds = %a.after1390
  %arena.cur1407 = call ptr @dva_arena_current()
  %a.create1408 = call ptr @dva_arena_alloc(ptr %arena.cur1407, i64 24)
  %arena.cur1409 = call ptr @dva_arena_current()
  %a.buf1410 = call ptr @dva_arena_alloc(ptr %arena.cur1409, i64 128)
  %a.len.gep1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 0
  store i64 0, ptr %a.len.gep1411, align 8
  %a.data.gep1412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 1
  store ptr %a.buf1410, ptr %a.data.gep1412, align 8
  %a.cap.gep1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1413, align 8
  store ptr %a.create1408, ptr %var.locals, align 8
  br label %a.after1406

a.after1406:                                      ; preds = %a.create1405, %a.after1390
  %a.load21414 = load ptr, ptr %var.locals, align 8
  %var.load1415 = load ptr, ptr %var.refs, align 8
  %a.load1416 = load ptr, ptr %var.refs, align 8
  %a.null1417 = icmp eq ptr %a.load1416, null
  br i1 %a.null1417, label %a.create1418, label %a.after1419

a.create1418:                                     ; preds = %a.after1406
  %arena.cur1420 = call ptr @dva_arena_current()
  %a.create1421 = call ptr @dva_arena_alloc(ptr %arena.cur1420, i64 24)
  %arena.cur1422 = call ptr @dva_arena_current()
  %a.buf1423 = call ptr @dva_arena_alloc(ptr %arena.cur1422, i64 128)
  %a.len.gep1424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1421, i32 0, i32 0
  store i64 0, ptr %a.len.gep1424, align 8
  %a.data.gep1425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1421, i32 0, i32 1
  store ptr %a.buf1423, ptr %a.data.gep1425, align 8
  %a.cap.gep1426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1421, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1426, align 8
  store ptr %a.create1421, ptr %var.refs, align 8
  br label %a.after1419

a.after1419:                                      ; preds = %a.create1418, %a.after1406
  %a.load21427 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1401, ptr %a.load21414, ptr %a.load21427)
  br label %choice.exit

choice.case1428:                                  ; preds = %choice.next1363
  %pay.gep1433 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1434 = load ptr, ptr %pay.gep1433, align 8
  store ptr %payload.ptr1434, ptr %var.cy, align 8
  %var.load1435 = load ptr, ptr %var.cy, align 8
  %fld.gep1436 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1435, i32 0, i32 0
  %fld.load1437 = load ptr, ptr %fld.gep1436, align 8
  %var.load1438 = load ptr, ptr %var.locals, align 8
  %a.load1439 = load ptr, ptr %var.locals, align 8
  %a.null1440 = icmp eq ptr %a.load1439, null
  br i1 %a.null1440, label %a.create1441, label %a.after1442

choice.next1429:                                  ; preds = %choice.next1363
  %tag.gep1495 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1496 = load i64, ptr %tag.gep1495, align 8
  %tag.match1497 = icmp eq i64 %tag.id1496, 11
  br i1 %tag.match1497, label %choice.case1493, label %choice.next1494

a.create1441:                                     ; preds = %choice.case1428
  %arena.cur1443 = call ptr @dva_arena_current()
  %a.create1444 = call ptr @dva_arena_alloc(ptr %arena.cur1443, i64 24)
  %arena.cur1445 = call ptr @dva_arena_current()
  %a.buf1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 128)
  %a.len.gep1447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 0
  store i64 0, ptr %a.len.gep1447, align 8
  %a.data.gep1448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 1
  store ptr %a.buf1446, ptr %a.data.gep1448, align 8
  %a.cap.gep1449 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1449, align 8
  store ptr %a.create1444, ptr %var.locals, align 8
  br label %a.after1442

a.after1442:                                      ; preds = %a.create1441, %choice.case1428
  %a.load21450 = load ptr, ptr %var.locals, align 8
  %var.load1451 = load ptr, ptr %var.refs, align 8
  %a.load1452 = load ptr, ptr %var.refs, align 8
  %a.null1453 = icmp eq ptr %a.load1452, null
  br i1 %a.null1453, label %a.create1454, label %a.after1455

a.create1454:                                     ; preds = %a.after1442
  %arena.cur1456 = call ptr @dva_arena_current()
  %a.create1457 = call ptr @dva_arena_alloc(ptr %arena.cur1456, i64 24)
  %arena.cur1458 = call ptr @dva_arena_current()
  %a.buf1459 = call ptr @dva_arena_alloc(ptr %arena.cur1458, i64 128)
  %a.len.gep1460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1457, i32 0, i32 0
  store i64 0, ptr %a.len.gep1460, align 8
  %a.data.gep1461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1457, i32 0, i32 1
  store ptr %a.buf1459, ptr %a.data.gep1461, align 8
  %a.cap.gep1462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1457, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1462, align 8
  store ptr %a.create1457, ptr %var.refs, align 8
  br label %a.after1455

a.after1455:                                      ; preds = %a.create1454, %a.after1442
  %a.load21463 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1437, ptr %a.load21450, ptr %a.load21463)
  %var.load1464 = load ptr, ptr %var.cy, align 8
  %fld.gep1465 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1464, i32 0, i32 1
  %fld.load1466 = load ptr, ptr %fld.gep1465, align 8
  %var.load1467 = load ptr, ptr %var.locals, align 8
  %a.load1468 = load ptr, ptr %var.locals, align 8
  %a.null1469 = icmp eq ptr %a.load1468, null
  br i1 %a.null1469, label %a.create1470, label %a.after1471

a.create1470:                                     ; preds = %a.after1455
  %arena.cur1472 = call ptr @dva_arena_current()
  %a.create1473 = call ptr @dva_arena_alloc(ptr %arena.cur1472, i64 24)
  %arena.cur1474 = call ptr @dva_arena_current()
  %a.buf1475 = call ptr @dva_arena_alloc(ptr %arena.cur1474, i64 128)
  %a.len.gep1476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 0
  store i64 0, ptr %a.len.gep1476, align 8
  %a.data.gep1477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 1
  store ptr %a.buf1475, ptr %a.data.gep1477, align 8
  %a.cap.gep1478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1478, align 8
  store ptr %a.create1473, ptr %var.locals, align 8
  br label %a.after1471

a.after1471:                                      ; preds = %a.create1470, %a.after1455
  %a.load21479 = load ptr, ptr %var.locals, align 8
  %var.load1480 = load ptr, ptr %var.refs, align 8
  %a.load1481 = load ptr, ptr %var.refs, align 8
  %a.null1482 = icmp eq ptr %a.load1481, null
  br i1 %a.null1482, label %a.create1483, label %a.after1484

a.create1483:                                     ; preds = %a.after1471
  %arena.cur1485 = call ptr @dva_arena_current()
  %a.create1486 = call ptr @dva_arena_alloc(ptr %arena.cur1485, i64 24)
  %arena.cur1487 = call ptr @dva_arena_current()
  %a.buf1488 = call ptr @dva_arena_alloc(ptr %arena.cur1487, i64 128)
  %a.len.gep1489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 0
  store i64 0, ptr %a.len.gep1489, align 8
  %a.data.gep1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 1
  store ptr %a.buf1488, ptr %a.data.gep1490, align 8
  %a.cap.gep1491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1491, align 8
  store ptr %a.create1486, ptr %var.refs, align 8
  br label %a.after1484

a.after1484:                                      ; preds = %a.create1483, %a.after1471
  %a.load21492 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1466, ptr %a.load21479, ptr %a.load21492)
  br label %choice.exit

choice.case1493:                                  ; preds = %choice.next1429
  %pay.gep1498 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1499 = load ptr, ptr %pay.gep1498, align 8
  store ptr %payload.ptr1499, ptr %var.ce, align 8
  %var.load1500 = load ptr, ptr %var.ce, align 8
  %fld.gep1501 = getelementptr inbounds { ptr, ptr }, ptr %var.load1500, i32 0, i32 0
  %fld.load1502 = load ptr, ptr %fld.gep1501, align 8
  %var.load1503 = load ptr, ptr %var.locals, align 8
  %a.load1504 = load ptr, ptr %var.locals, align 8
  %a.null1505 = icmp eq ptr %a.load1504, null
  br i1 %a.null1505, label %a.create1506, label %a.after1507

choice.next1494:                                  ; preds = %choice.next1429
  %tag.gep1560 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1561 = load i64, ptr %tag.gep1560, align 8
  %tag.match1562 = icmp eq i64 %tag.id1561, 13
  br i1 %tag.match1562, label %choice.case1558, label %choice.next1559

a.create1506:                                     ; preds = %choice.case1493
  %arena.cur1508 = call ptr @dva_arena_current()
  %a.create1509 = call ptr @dva_arena_alloc(ptr %arena.cur1508, i64 24)
  %arena.cur1510 = call ptr @dva_arena_current()
  %a.buf1511 = call ptr @dva_arena_alloc(ptr %arena.cur1510, i64 128)
  %a.len.gep1512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1509, i32 0, i32 0
  store i64 0, ptr %a.len.gep1512, align 8
  %a.data.gep1513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1509, i32 0, i32 1
  store ptr %a.buf1511, ptr %a.data.gep1513, align 8
  %a.cap.gep1514 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1509, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1514, align 8
  store ptr %a.create1509, ptr %var.locals, align 8
  br label %a.after1507

a.after1507:                                      ; preds = %a.create1506, %choice.case1493
  %a.load21515 = load ptr, ptr %var.locals, align 8
  %var.load1516 = load ptr, ptr %var.refs, align 8
  %a.load1517 = load ptr, ptr %var.refs, align 8
  %a.null1518 = icmp eq ptr %a.load1517, null
  br i1 %a.null1518, label %a.create1519, label %a.after1520

a.create1519:                                     ; preds = %a.after1507
  %arena.cur1521 = call ptr @dva_arena_current()
  %a.create1522 = call ptr @dva_arena_alloc(ptr %arena.cur1521, i64 24)
  %arena.cur1523 = call ptr @dva_arena_current()
  %a.buf1524 = call ptr @dva_arena_alloc(ptr %arena.cur1523, i64 128)
  %a.len.gep1525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 0
  store i64 0, ptr %a.len.gep1525, align 8
  %a.data.gep1526 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 1
  store ptr %a.buf1524, ptr %a.data.gep1526, align 8
  %a.cap.gep1527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1527, align 8
  store ptr %a.create1522, ptr %var.refs, align 8
  br label %a.after1520

a.after1520:                                      ; preds = %a.create1519, %a.after1507
  %a.load21528 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1502, ptr %a.load21515, ptr %a.load21528)
  %var.load1529 = load ptr, ptr %var.ce, align 8
  %fld.gep1530 = getelementptr inbounds { ptr, ptr }, ptr %var.load1529, i32 0, i32 1
  %fld.load1531 = load ptr, ptr %fld.gep1530, align 8
  %var.load1532 = load ptr, ptr %var.locals, align 8
  %a.load1533 = load ptr, ptr %var.locals, align 8
  %a.null1534 = icmp eq ptr %a.load1533, null
  br i1 %a.null1534, label %a.create1535, label %a.after1536

a.create1535:                                     ; preds = %a.after1520
  %arena.cur1537 = call ptr @dva_arena_current()
  %a.create1538 = call ptr @dva_arena_alloc(ptr %arena.cur1537, i64 24)
  %arena.cur1539 = call ptr @dva_arena_current()
  %a.buf1540 = call ptr @dva_arena_alloc(ptr %arena.cur1539, i64 128)
  %a.len.gep1541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1538, i32 0, i32 0
  store i64 0, ptr %a.len.gep1541, align 8
  %a.data.gep1542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1538, i32 0, i32 1
  store ptr %a.buf1540, ptr %a.data.gep1542, align 8
  %a.cap.gep1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1538, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1543, align 8
  store ptr %a.create1538, ptr %var.locals, align 8
  br label %a.after1536

a.after1536:                                      ; preds = %a.create1535, %a.after1520
  %a.load21544 = load ptr, ptr %var.locals, align 8
  %var.load1545 = load ptr, ptr %var.refs, align 8
  %a.load1546 = load ptr, ptr %var.refs, align 8
  %a.null1547 = icmp eq ptr %a.load1546, null
  br i1 %a.null1547, label %a.create1548, label %a.after1549

a.create1548:                                     ; preds = %a.after1536
  %arena.cur1550 = call ptr @dva_arena_current()
  %a.create1551 = call ptr @dva_arena_alloc(ptr %arena.cur1550, i64 24)
  %arena.cur1552 = call ptr @dva_arena_current()
  %a.buf1553 = call ptr @dva_arena_alloc(ptr %arena.cur1552, i64 128)
  %a.len.gep1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1551, i32 0, i32 0
  store i64 0, ptr %a.len.gep1554, align 8
  %a.data.gep1555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1551, i32 0, i32 1
  store ptr %a.buf1553, ptr %a.data.gep1555, align 8
  %a.cap.gep1556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1551, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1556, align 8
  store ptr %a.create1551, ptr %var.refs, align 8
  br label %a.after1549

a.after1549:                                      ; preds = %a.create1548, %a.after1536
  %a.load21557 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1531, ptr %a.load21544, ptr %a.load21557)
  br label %choice.exit

choice.case1558:                                  ; preds = %choice.next1494
  %pay.gep1563 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1564 = load ptr, ptr %pay.gep1563, align 8
  store ptr %payload.ptr1564, ptr %var.r, align 8
  %var.load1565 = load ptr, ptr %var.r, align 8
  %fld.gep1566 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1565, i32 0, i32 0
  %fld.load1567 = load i1, ptr %fld.gep1566, align 1
  br i1 %fld.load1567, label %choice.then1568, label %choice.exit1569

choice.next1559:                                  ; preds = %choice.next1494
  %tag.gep1717 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1718 = load i64, ptr %tag.gep1717, align 8
  %tag.match1719 = icmp eq i64 %tag.id1718, 35
  br i1 %tag.match1719, label %choice.case1715, label %choice.next1716

choice.then1568:                                  ; preds = %choice.case1558
  %var.load1570 = load ptr, ptr %var.r, align 8
  %fld.gep1571 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1570, i32 0, i32 2
  %fld.load1572 = load ptr, ptr %fld.gep1571, align 8
  %var.load1573 = load ptr, ptr %var.locals, align 8
  %a.load1574 = load ptr, ptr %var.locals, align 8
  %a.null1575 = icmp eq ptr %a.load1574, null
  br i1 %a.null1575, label %a.create1576, label %a.after1577

choice.exit1569:                                  ; preds = %a.after1590, %choice.case1558
  %var.load1599 = load ptr, ptr %var.r, align 8
  %fld.gep1600 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1599, i32 0, i32 1
  %fld.load1601 = load i1, ptr %fld.gep1600, align 1
  br i1 %fld.load1601, label %choice.then1602, label %choice.exit1603

a.create1576:                                     ; preds = %choice.then1568
  %arena.cur1578 = call ptr @dva_arena_current()
  %a.create1579 = call ptr @dva_arena_alloc(ptr %arena.cur1578, i64 24)
  %arena.cur1580 = call ptr @dva_arena_current()
  %a.buf1581 = call ptr @dva_arena_alloc(ptr %arena.cur1580, i64 128)
  %a.len.gep1582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1579, i32 0, i32 0
  store i64 0, ptr %a.len.gep1582, align 8
  %a.data.gep1583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1579, i32 0, i32 1
  store ptr %a.buf1581, ptr %a.data.gep1583, align 8
  %a.cap.gep1584 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1579, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1584, align 8
  store ptr %a.create1579, ptr %var.locals, align 8
  br label %a.after1577

a.after1577:                                      ; preds = %a.create1576, %choice.then1568
  %a.load21585 = load ptr, ptr %var.locals, align 8
  %var.load1586 = load ptr, ptr %var.refs, align 8
  %a.load1587 = load ptr, ptr %var.refs, align 8
  %a.null1588 = icmp eq ptr %a.load1587, null
  br i1 %a.null1588, label %a.create1589, label %a.after1590

a.create1589:                                     ; preds = %a.after1577
  %arena.cur1591 = call ptr @dva_arena_current()
  %a.create1592 = call ptr @dva_arena_alloc(ptr %arena.cur1591, i64 24)
  %arena.cur1593 = call ptr @dva_arena_current()
  %a.buf1594 = call ptr @dva_arena_alloc(ptr %arena.cur1593, i64 128)
  %a.len.gep1595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 0
  store i64 0, ptr %a.len.gep1595, align 8
  %a.data.gep1596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 1
  store ptr %a.buf1594, ptr %a.data.gep1596, align 8
  %a.cap.gep1597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1597, align 8
  store ptr %a.create1592, ptr %var.refs, align 8
  br label %a.after1590

a.after1590:                                      ; preds = %a.create1589, %a.after1577
  %a.load21598 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1572, ptr %a.load21585, ptr %a.load21598)
  br label %choice.exit1569

choice.then1602:                                  ; preds = %choice.exit1569
  %var.load1604 = load ptr, ptr %var.r, align 8
  %fld.gep1605 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1604, i32 0, i32 3
  %fld.load1606 = load ptr, ptr %fld.gep1605, align 8
  %tag.gep1610 = getelementptr inbounds { i64, ptr }, ptr %fld.load1606, i32 0, i32 0
  %tag.id1611 = load i64, ptr %tag.gep1610, align 8
  %tag.match1612 = icmp eq i64 %tag.id1611, 3
  br i1 %tag.match1612, label %choice.case1608, label %choice.next1609

choice.exit1603:                                  ; preds = %choice.exit1607, %choice.exit1569
  br label %choice.exit

choice.exit1607:                                  ; preds = %a.after1706, %choice.exit1656
  br label %choice.exit1603

choice.case1608:                                  ; preds = %choice.then1602
  %pay.gep1613 = getelementptr inbounds { i64, ptr }, ptr %fld.load1606, i32 0, i32 1
  %payload.ptr1614 = load ptr, ptr %pay.gep1613, align 8
  store ptr %payload.ptr1614, ptr %var.v1615, align 8
  %var.load1616 = load ptr, ptr %var.v1615, align 8
  %eq.lhs.len1617 = getelementptr inbounds { i64, ptr }, ptr %var.load1616, i32 0, i32 0
  %eq.lhs.len1618 = load i64, ptr %eq.lhs.len1617, align 8
  %eq.lhs.len1619 = and i64 %eq.lhs.len1618, 281474976710655
  %str.tag1620 = lshr i64 %eq.lhs.len1618, 48
  %str.immortal1621 = icmp eq i64 %str.tag1620, 0
  br i1 %str.immortal1621, label %str_ok1623, label %str_gen_check1622

choice.next1609:                                  ; preds = %choice.then1602
  %var.load1686 = load ptr, ptr %var.r, align 8
  %fld.gep1687 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1686, i32 0, i32 3
  %fld.load1688 = load ptr, ptr %fld.gep1687, align 8
  %var.load1689 = load ptr, ptr %var.locals, align 8
  %a.load1690 = load ptr, ptr %var.locals, align 8
  %a.null1691 = icmp eq ptr %a.load1690, null
  br i1 %a.null1691, label %a.create1692, label %a.after1693

str_gen_check1622:                                ; preds = %choice.case1608
  %arena.gen1625 = call ptr @dva_arena_current()
  %arena.gen1626 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1625, i32 0, i32 4
  %arena.gen1627 = load i64, ptr %arena.gen1626, align 8
  %str.tag.match1628 = icmp eq i64 %str.tag1620, %arena.gen1627
  br i1 %str.tag.match1628, label %str_ok1623, label %str_stale1624

str_ok1623:                                       ; preds = %str_stale1624, %str_gen_check1622, %choice.case1608
  %eq.rhs.len1629 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1630 = and i64 %eq.rhs.len1629, 281474976710655
  %str.tag1631 = lshr i64 %eq.rhs.len1629, 48
  %str.immortal1632 = icmp eq i64 %str.tag1631, 0
  br i1 %str.immortal1632, label %str_ok1634, label %str_gen_check1633

str_stale1624:                                    ; preds = %str_gen_check1622
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1623

str_gen_check1633:                                ; preds = %str_ok1623
  %arena.gen1636 = call ptr @dva_arena_current()
  %arena.gen1637 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1636, i32 0, i32 4
  %arena.gen1638 = load i64, ptr %arena.gen1637, align 8
  %str.tag.match1639 = icmp eq i64 %str.tag1631, %arena.gen1638
  br i1 %str.tag.match1639, label %str_ok1634, label %str_stale1635

str_ok1634:                                       ; preds = %str_stale1635, %str_gen_check1633, %str_ok1623
  %eq.len1640 = icmp eq i64 %eq.lhs.len1619, %eq.rhs.len1630
  br i1 %eq.len1640, label %str.eq.then1641, label %str.eq.else1642

str_stale1635:                                    ; preds = %str_gen_check1633
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1634

str.eq.then1641:                                  ; preds = %str_ok1634
  %eq.lhs.data1644 = getelementptr inbounds { i64, ptr }, ptr %var.load1616, i32 0, i32 1
  %eq.lhs.data1645 = load ptr, ptr %eq.lhs.data1644, align 8
  %eq.rhs.data1646 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1647 = call i32 @memcmp(ptr %eq.lhs.data1645, ptr %eq.rhs.data1646, i64 %eq.lhs.len1619)
  %eq.cmp.zero1648 = icmp eq i32 %eq.memcmp1647, 0
  br label %str.eq.merge1643

str.eq.else1642:                                  ; preds = %str_ok1634
  br label %str.eq.merge1643

str.eq.merge1643:                                 ; preds = %str.eq.else1642, %str.eq.then1641
  %str.eq.result1649 = phi i1 [ %eq.cmp.zero1648, %str.eq.then1641 ], [ false, %str.eq.else1642 ]
  br i1 %str.eq.result1649, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %str.eq.merge1643
  %var.load1650 = load ptr, ptr %var.r, align 8
  %fld.gep1651 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1650, i32 0, i32 0
  %fld.load1652 = load i1, ptr %fld.gep1651, align 1
  %nottmp1653 = xor i1 %fld.load1652, true
  br label %and.14.exit

and.14.else:                                      ; preds = %str.eq.merge1643
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %nottmp1653, %and.14.then ], [ %str.eq.result1649, %and.14.else ]
  br i1 %and.14.phi, label %choice.then1654, label %choice.else1655

choice.then1654:                                  ; preds = %and.14.exit
  br label %choice.exit1656

choice.else1655:                                  ; preds = %and.14.exit
  %var.load1657 = load ptr, ptr %var.r, align 8
  %fld.gep1658 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1657, i32 0, i32 3
  %fld.load1659 = load ptr, ptr %fld.gep1658, align 8
  %var.load1660 = load ptr, ptr %var.locals, align 8
  %a.load1661 = load ptr, ptr %var.locals, align 8
  %a.null1662 = icmp eq ptr %a.load1661, null
  br i1 %a.null1662, label %a.create1663, label %a.after1664

choice.exit1656:                                  ; preds = %a.after1677, %choice.then1654
  br label %choice.exit1607

a.create1663:                                     ; preds = %choice.else1655
  %arena.cur1665 = call ptr @dva_arena_current()
  %a.create1666 = call ptr @dva_arena_alloc(ptr %arena.cur1665, i64 24)
  %arena.cur1667 = call ptr @dva_arena_current()
  %a.buf1668 = call ptr @dva_arena_alloc(ptr %arena.cur1667, i64 128)
  %a.len.gep1669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 0
  store i64 0, ptr %a.len.gep1669, align 8
  %a.data.gep1670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 1
  store ptr %a.buf1668, ptr %a.data.gep1670, align 8
  %a.cap.gep1671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1671, align 8
  store ptr %a.create1666, ptr %var.locals, align 8
  br label %a.after1664

a.after1664:                                      ; preds = %a.create1663, %choice.else1655
  %a.load21672 = load ptr, ptr %var.locals, align 8
  %var.load1673 = load ptr, ptr %var.refs, align 8
  %a.load1674 = load ptr, ptr %var.refs, align 8
  %a.null1675 = icmp eq ptr %a.load1674, null
  br i1 %a.null1675, label %a.create1676, label %a.after1677

a.create1676:                                     ; preds = %a.after1664
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
  store ptr %a.create1679, ptr %var.refs, align 8
  br label %a.after1677

a.after1677:                                      ; preds = %a.create1676, %a.after1664
  %a.load21685 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1659, ptr %a.load21672, ptr %a.load21685)
  br label %choice.exit1656

a.create1692:                                     ; preds = %choice.next1609
  %arena.cur1694 = call ptr @dva_arena_current()
  %a.create1695 = call ptr @dva_arena_alloc(ptr %arena.cur1694, i64 24)
  %arena.cur1696 = call ptr @dva_arena_current()
  %a.buf1697 = call ptr @dva_arena_alloc(ptr %arena.cur1696, i64 128)
  %a.len.gep1698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 0
  store i64 0, ptr %a.len.gep1698, align 8
  %a.data.gep1699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 1
  store ptr %a.buf1697, ptr %a.data.gep1699, align 8
  %a.cap.gep1700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1700, align 8
  store ptr %a.create1695, ptr %var.locals, align 8
  br label %a.after1693

a.after1693:                                      ; preds = %a.create1692, %choice.next1609
  %a.load21701 = load ptr, ptr %var.locals, align 8
  %var.load1702 = load ptr, ptr %var.refs, align 8
  %a.load1703 = load ptr, ptr %var.refs, align 8
  %a.null1704 = icmp eq ptr %a.load1703, null
  br i1 %a.null1704, label %a.create1705, label %a.after1706

a.create1705:                                     ; preds = %a.after1693
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
  store ptr %a.create1708, ptr %var.refs, align 8
  br label %a.after1706

a.after1706:                                      ; preds = %a.create1705, %a.after1693
  %a.load21714 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1688, ptr %a.load21701, ptr %a.load21714)
  br label %choice.exit1607

choice.case1715:                                  ; preds = %choice.next1559
  %pay.gep1720 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1721 = load ptr, ptr %pay.gep1720, align 8
  store ptr %payload.ptr1721, ptr %var.na, align 8
  %var.load1722 = load ptr, ptr %var.na, align 8
  %fld.gep1723 = getelementptr inbounds { ptr, ptr }, ptr %var.load1722, i32 0, i32 1
  %fld.load1724 = load ptr, ptr %fld.gep1723, align 8
  %var.load1725 = load ptr, ptr %var.locals, align 8
  %a.load1726 = load ptr, ptr %var.locals, align 8
  %a.null1727 = icmp eq ptr %a.load1726, null
  br i1 %a.null1727, label %a.create1728, label %a.after1729

choice.next1716:                                  ; preds = %choice.next1559
  %tag.gep1753 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1754 = load i64, ptr %tag.gep1753, align 8
  %tag.match1755 = icmp eq i64 %tag.id1754, 18
  br i1 %tag.match1755, label %choice.case1751, label %choice.next1752

a.create1728:                                     ; preds = %choice.case1715
  %arena.cur1730 = call ptr @dva_arena_current()
  %a.create1731 = call ptr @dva_arena_alloc(ptr %arena.cur1730, i64 24)
  %arena.cur1732 = call ptr @dva_arena_current()
  %a.buf1733 = call ptr @dva_arena_alloc(ptr %arena.cur1732, i64 128)
  %a.len.gep1734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 0
  store i64 0, ptr %a.len.gep1734, align 8
  %a.data.gep1735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 1
  store ptr %a.buf1733, ptr %a.data.gep1735, align 8
  %a.cap.gep1736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1736, align 8
  store ptr %a.create1731, ptr %var.locals, align 8
  br label %a.after1729

a.after1729:                                      ; preds = %a.create1728, %choice.case1715
  %a.load21737 = load ptr, ptr %var.locals, align 8
  %var.load1738 = load ptr, ptr %var.refs, align 8
  %a.load1739 = load ptr, ptr %var.refs, align 8
  %a.null1740 = icmp eq ptr %a.load1739, null
  br i1 %a.null1740, label %a.create1741, label %a.after1742

a.create1741:                                     ; preds = %a.after1729
  %arena.cur1743 = call ptr @dva_arena_current()
  %a.create1744 = call ptr @dva_arena_alloc(ptr %arena.cur1743, i64 24)
  %arena.cur1745 = call ptr @dva_arena_current()
  %a.buf1746 = call ptr @dva_arena_alloc(ptr %arena.cur1745, i64 128)
  %a.len.gep1747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 0
  store i64 0, ptr %a.len.gep1747, align 8
  %a.data.gep1748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 1
  store ptr %a.buf1746, ptr %a.data.gep1748, align 8
  %a.cap.gep1749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1749, align 8
  store ptr %a.create1744, ptr %var.refs, align 8
  br label %a.after1742

a.after1742:                                      ; preds = %a.create1741, %a.after1729
  %a.load21750 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1724, ptr %a.load21737, ptr %a.load21750)
  br label %choice.exit

choice.case1751:                                  ; preds = %choice.next1716
  %pay.gep1756 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1757 = load ptr, ptr %pay.gep1756, align 8
  store ptr %payload.ptr1757, ptr %var.v1758, align 8
  %var.load1759 = load ptr, ptr %var.v1758, align 8
  %fld.gep1760 = getelementptr inbounds { ptr, ptr }, ptr %var.load1759, i32 0, i32 1
  %fld.load1761 = load ptr, ptr %fld.gep1760, align 8
  %a.len.query1762 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1761, i32 0, i32 0
  %a.len.query1763 = load i64, ptr %a.len.query1762, align 8
  store i64 0, ptr %loop.idx.15, align 8
  br label %loop.header.15

choice.next1752:                                  ; preds = %choice.next1716
  %tag.gep1863 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1864 = load i64, ptr %tag.gep1863, align 8
  %tag.match1865 = icmp eq i64 %tag.id1864, 25
  br i1 %tag.match1865, label %choice.case1861, label %choice.next1862

loop.header.15:                                   ; preds = %loop.latch.15, %choice.case1751
  %counter.load1765 = load i64, ptr %loop.idx.15, align 8
  %loop.cond1766 = icmp slt i64 %counter.load1765, %a.len.query1763
  br i1 %loop.cond1766, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i1767 = sub i64 %counter.load1765, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i1767, ptr %var._i1768, align 8
  store i64 %counter.load1765, ptr %var._1769, align 8
  store i64 %counter.load1765, ptr %var.i1764, align 8
  %var.load1770 = load ptr, ptr %var.v1758, align 8
  %fld.gep1771 = getelementptr inbounds { ptr, ptr }, ptr %var.load1770, i32 0, i32 1
  %fld.load1772 = load ptr, ptr %fld.gep1771, align 8
  %var.load1773 = load i64, ptr %var.i1764, align 8
  %a.rd.nonnull1774 = icmp ne ptr %fld.load1772, null
  br i1 %a.rd.nonnull1774, label %a.rd.check1775, label %a.rd.err.null1777

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %a.after1850
  %step.val1859 = load i64, ptr %loop.step.15, align 8
  %loop.next1860 = add i64 %counter.load1765, %step.val1859
  store i64 %loop.next1860, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit

a.rd.check1775:                                   ; preds = %loop.body.15
  %a.rd.len1780 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1772, i32 0, i32 0
  %a.rd.len1781 = load i64, ptr %a.rd.len1780, align 8
  %a.rd.ge01782 = icmp sge i64 %var.load1773, 0
  %a.rd.lt1783 = icmp slt i64 %var.load1773, %a.rd.len1781
  %a.rd.bounds1784 = and i1 %a.rd.ge01782, %a.rd.lt1783
  br i1 %a.rd.bounds1784, label %a.rd.ok1776, label %a.rd.err.oob1778

a.rd.ok1776:                                      ; preds = %a.rd.check1775
  %a.rd.data1785 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1772, i32 0, i32 1
  %a.rd.data1786 = load ptr, ptr %a.rd.data1785, align 8
  %a.rd.elem.gep1787 = getelementptr i64, ptr %a.rd.data1786, i64 %var.load1773
  %a.rd.elem1788 = load i64, ptr %a.rd.elem.gep1787, align 8
  br label %a.rd.done1779

a.rd.err.null1777:                                ; preds = %loop.body.15
  %arena.cur1789 = call ptr @dva_arena_current()
  %err.alloc1790 = call ptr @dva_arena_alloc(ptr %arena.cur1789, i64 56)
  %err.code.gep1791 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1791, align 8
  %err.msg.gep1792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1792, align 8
  %err.file.gep1793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1793, align 8
  %err.line.gep1794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 3
  store i64 0, ptr %err.line.gep1794, align 8
  %err.col.gep1795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 4
  store i64 0, ptr %err.col.gep1795, align 8
  %err.ctx.gep1796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 5
  %err.ctx0.gep1797 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1796, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1797, align 8
  %err.ctx1.gep1798 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1796, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1798, align 8
  %err.p2i1799 = ptrtoint ptr %err.alloc1790 to i64
  br label %a.rd.done1779

a.rd.err.oob1778:                                 ; preds = %a.rd.check1775
  %arena.cur1800 = call ptr @dva_arena_current()
  %err.alloc1801 = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 56)
  %err.code.gep1802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1802, align 8
  %err.msg.gep1803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1803, align 8
  %err.file.gep1804 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1804, align 8
  %err.line.gep1805 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 3
  store i64 0, ptr %err.line.gep1805, align 8
  %err.col.gep1806 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 4
  store i64 0, ptr %err.col.gep1806, align 8
  %err.ctx.gep1807 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1801, i32 0, i32 5
  %err.ctx0.gep1808 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1807, i32 0, i32 0
  store i64 %var.load1773, ptr %err.ctx0.gep1808, align 8
  %err.ctx1.gep1809 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1807, i32 0, i32 1
  store i64 %a.rd.len1781, ptr %err.ctx1.gep1809, align 8
  %err.p2i1810 = ptrtoint ptr %err.alloc1801 to i64
  br label %a.rd.done1779

a.rd.done1779:                                    ; preds = %a.rd.err.oob1778, %a.rd.err.null1777, %a.rd.ok1776
  %a.rd.tag1811 = phi i1 [ true, %a.rd.ok1776 ], [ false, %a.rd.err.null1777 ], [ false, %a.rd.err.oob1778 ]
  %a.rd.pay1812 = phi i64 [ %a.rd.elem1788, %a.rd.ok1776 ], [ %err.p2i1799, %a.rd.err.null1777 ], [ %err.p2i1810, %a.rd.err.oob1778 ]
  %ram.tag1813 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1811, 0
  %ram.pay1814 = insertvalue { i1, i64 } %ram.tag1813, i64 %a.rd.pay1812, 1
  %ram.tag1815 = extractvalue { i1, i64 } %ram.pay1814, 0
  br i1 %ram.tag1815, label %choice.then1816, label %choice.else1817

choice.then1816:                                  ; preds = %a.rd.done1779
  %ram.pay1819 = extractvalue { i1, i64 } %ram.pay1814, 1
  %pay.ptr1820 = inttoptr i64 %ram.pay1819 to ptr
  store ptr %pay.ptr1820, ptr %var._1821, align 8
  br label %choice.exit1818

choice.else1817:                                  ; preds = %a.rd.done1779
  %ram.pay1822 = extractvalue { i1, i64 } %ram.pay1814, 1
  %pay.ptr1823 = inttoptr i64 %ram.pay1822 to ptr
  store ptr %pay.ptr1823, ptr %var._1824, align 8
  %arena.cur1825 = call ptr @dva_arena_current()
  %enum.alloc1826 = call ptr @dva_arena_alloc(ptr %arena.cur1825, i64 16)
  %tag.gep1827 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1826, i32 0, i32 0
  store i64 0, ptr %tag.gep1827, align 8
  %pay.gep1828 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1826, i32 0, i32 1
  %arena.cur1829 = call ptr @dva_arena_current()
  %enum.pay.alloc1830 = call ptr @dva_arena_alloc(ptr %arena.cur1829, i64 8)
  store i64 0, ptr %enum.pay.alloc1830, align 8
  store ptr %enum.pay.alloc1830, ptr %pay.gep1828, align 8
  br label %choice.exit1818

choice.exit1818:                                  ; preds = %choice.else1817, %choice.then1816
  %choice.res1831 = phi ptr [ %pay.ptr1820, %choice.then1816 ], [ %enum.alloc1826, %choice.else1817 ]
  store ptr %choice.res1831, ptr %var.varg, align 8
  %var.load1832 = load ptr, ptr %var.varg, align 8
  %var.load1833 = load ptr, ptr %var.locals, align 8
  %a.load1834 = load ptr, ptr %var.locals, align 8
  %a.null1835 = icmp eq ptr %a.load1834, null
  br i1 %a.null1835, label %a.create1836, label %a.after1837

a.create1836:                                     ; preds = %choice.exit1818
  %arena.cur1838 = call ptr @dva_arena_current()
  %a.create1839 = call ptr @dva_arena_alloc(ptr %arena.cur1838, i64 24)
  %arena.cur1840 = call ptr @dva_arena_current()
  %a.buf1841 = call ptr @dva_arena_alloc(ptr %arena.cur1840, i64 128)
  %a.len.gep1842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1839, i32 0, i32 0
  store i64 0, ptr %a.len.gep1842, align 8
  %a.data.gep1843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1839, i32 0, i32 1
  store ptr %a.buf1841, ptr %a.data.gep1843, align 8
  %a.cap.gep1844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1839, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1844, align 8
  store ptr %a.create1839, ptr %var.locals, align 8
  br label %a.after1837

a.after1837:                                      ; preds = %a.create1836, %choice.exit1818
  %a.load21845 = load ptr, ptr %var.locals, align 8
  %var.load1846 = load ptr, ptr %var.refs, align 8
  %a.load1847 = load ptr, ptr %var.refs, align 8
  %a.null1848 = icmp eq ptr %a.load1847, null
  br i1 %a.null1848, label %a.create1849, label %a.after1850

a.create1849:                                     ; preds = %a.after1837
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
  store ptr %a.create1852, ptr %var.refs, align 8
  br label %a.after1850

a.after1850:                                      ; preds = %a.create1849, %a.after1837
  %a.load21858 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1832, ptr %a.load21845, ptr %a.load21858)
  br label %loop.latch.15

choice.case1861:                                  ; preds = %choice.next1752
  %pay.gep1866 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1867 = load ptr, ptr %pay.gep1866, align 8
  store ptr %payload.ptr1867, ptr %var.cp, align 8
  %var.load1868 = load ptr, ptr %var.cp, align 8
  %var.load1869 = load ptr, ptr %var.locals, align 8
  %a.load1870 = load ptr, ptr %var.locals, align 8
  %a.null1871 = icmp eq ptr %a.load1870, null
  br i1 %a.null1871, label %a.create1872, label %a.after1873

choice.next1862:                                  ; preds = %choice.next1752
  %tag.gep1897 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1898 = load i64, ptr %tag.gep1897, align 8
  %tag.match1899 = icmp eq i64 %tag.id1898, 27
  br i1 %tag.match1899, label %choice.case1895, label %choice.next1896

a.create1872:                                     ; preds = %choice.case1861
  %arena.cur1874 = call ptr @dva_arena_current()
  %a.create1875 = call ptr @dva_arena_alloc(ptr %arena.cur1874, i64 24)
  %arena.cur1876 = call ptr @dva_arena_current()
  %a.buf1877 = call ptr @dva_arena_alloc(ptr %arena.cur1876, i64 128)
  %a.len.gep1878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1875, i32 0, i32 0
  store i64 0, ptr %a.len.gep1878, align 8
  %a.data.gep1879 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1875, i32 0, i32 1
  store ptr %a.buf1877, ptr %a.data.gep1879, align 8
  %a.cap.gep1880 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1875, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1880, align 8
  store ptr %a.create1875, ptr %var.locals, align 8
  br label %a.after1873

a.after1873:                                      ; preds = %a.create1872, %choice.case1861
  %a.load21881 = load ptr, ptr %var.locals, align 8
  %var.load1882 = load ptr, ptr %var.refs, align 8
  %a.load1883 = load ptr, ptr %var.refs, align 8
  %a.null1884 = icmp eq ptr %a.load1883, null
  br i1 %a.null1884, label %a.create1885, label %a.after1886

a.create1885:                                     ; preds = %a.after1873
  %arena.cur1887 = call ptr @dva_arena_current()
  %a.create1888 = call ptr @dva_arena_alloc(ptr %arena.cur1887, i64 24)
  %arena.cur1889 = call ptr @dva_arena_current()
  %a.buf1890 = call ptr @dva_arena_alloc(ptr %arena.cur1889, i64 128)
  %a.len.gep1891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1888, i32 0, i32 0
  store i64 0, ptr %a.len.gep1891, align 8
  %a.data.gep1892 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1888, i32 0, i32 1
  store ptr %a.buf1890, ptr %a.data.gep1892, align 8
  %a.cap.gep1893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1888, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1893, align 8
  store ptr %a.create1888, ptr %var.refs, align 8
  br label %a.after1886

a.after1886:                                      ; preds = %a.create1885, %a.after1873
  %a.load21894 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1868, ptr %a.load21881, ptr %a.load21894)
  br label %choice.exit

choice.case1895:                                  ; preds = %choice.next1862
  %pay.gep1900 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1901 = load ptr, ptr %pay.gep1900, align 8
  store ptr %payload.ptr1901, ptr %var.bc, align 8
  %var.load1902 = load ptr, ptr %var.bc, align 8
  %var.load1903 = load ptr, ptr %var.locals, align 8
  %a.load1904 = load ptr, ptr %var.locals, align 8
  %a.null1905 = icmp eq ptr %a.load1904, null
  br i1 %a.null1905, label %a.create1906, label %a.after1907

choice.next1896:                                  ; preds = %choice.next1862
  %tag.gep1931 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1932 = load i64, ptr %tag.gep1931, align 8
  %tag.match1933 = icmp eq i64 %tag.id1932, 22
  br i1 %tag.match1933, label %choice.case1929, label %choice.next1930

a.create1906:                                     ; preds = %choice.case1895
  %arena.cur1908 = call ptr @dva_arena_current()
  %a.create1909 = call ptr @dva_arena_alloc(ptr %arena.cur1908, i64 24)
  %arena.cur1910 = call ptr @dva_arena_current()
  %a.buf1911 = call ptr @dva_arena_alloc(ptr %arena.cur1910, i64 128)
  %a.len.gep1912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1909, i32 0, i32 0
  store i64 0, ptr %a.len.gep1912, align 8
  %a.data.gep1913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1909, i32 0, i32 1
  store ptr %a.buf1911, ptr %a.data.gep1913, align 8
  %a.cap.gep1914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1909, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1914, align 8
  store ptr %a.create1909, ptr %var.locals, align 8
  br label %a.after1907

a.after1907:                                      ; preds = %a.create1906, %choice.case1895
  %a.load21915 = load ptr, ptr %var.locals, align 8
  %var.load1916 = load ptr, ptr %var.refs, align 8
  %a.load1917 = load ptr, ptr %var.refs, align 8
  %a.null1918 = icmp eq ptr %a.load1917, null
  br i1 %a.null1918, label %a.create1919, label %a.after1920

a.create1919:                                     ; preds = %a.after1907
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
  store ptr %a.create1922, ptr %var.refs, align 8
  br label %a.after1920

a.after1920:                                      ; preds = %a.create1919, %a.after1907
  %a.load21928 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1902, ptr %a.load21915, ptr %a.load21928)
  br label %choice.exit

choice.case1929:                                  ; preds = %choice.next1896
  %pay.gep1934 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1935 = load ptr, ptr %pay.gep1934, align 8
  store ptr %payload.ptr1935, ptr %var.tc, align 8
  %var.load1936 = load ptr, ptr %var.tc, align 8
  %fld.gep1937 = getelementptr inbounds { ptr, ptr }, ptr %var.load1936, i32 0, i32 1
  %fld.load1938 = load ptr, ptr %fld.gep1937, align 8
  %var.load1939 = load ptr, ptr %var.locals, align 8
  %a.load1940 = load ptr, ptr %var.locals, align 8
  %a.null1941 = icmp eq ptr %a.load1940, null
  br i1 %a.null1941, label %a.create1942, label %a.after1943

choice.next1930:                                  ; preds = %choice.next1896
  %tag.gep1967 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1968 = load i64, ptr %tag.gep1967, align 8
  %tag.match1969 = icmp eq i64 %tag.id1968, 29
  br i1 %tag.match1969, label %choice.case1965, label %choice.next1966

a.create1942:                                     ; preds = %choice.case1929
  %arena.cur1944 = call ptr @dva_arena_current()
  %a.create1945 = call ptr @dva_arena_alloc(ptr %arena.cur1944, i64 24)
  %arena.cur1946 = call ptr @dva_arena_current()
  %a.buf1947 = call ptr @dva_arena_alloc(ptr %arena.cur1946, i64 128)
  %a.len.gep1948 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 0
  store i64 0, ptr %a.len.gep1948, align 8
  %a.data.gep1949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 1
  store ptr %a.buf1947, ptr %a.data.gep1949, align 8
  %a.cap.gep1950 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1950, align 8
  store ptr %a.create1945, ptr %var.locals, align 8
  br label %a.after1943

a.after1943:                                      ; preds = %a.create1942, %choice.case1929
  %a.load21951 = load ptr, ptr %var.locals, align 8
  %var.load1952 = load ptr, ptr %var.refs, align 8
  %a.load1953 = load ptr, ptr %var.refs, align 8
  %a.null1954 = icmp eq ptr %a.load1953, null
  br i1 %a.null1954, label %a.create1955, label %a.after1956

a.create1955:                                     ; preds = %a.after1943
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
  store ptr %a.create1958, ptr %var.refs, align 8
  br label %a.after1956

a.after1956:                                      ; preds = %a.create1955, %a.after1943
  %a.load21964 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1938, ptr %a.load21951, ptr %a.load21964)
  br label %choice.exit

choice.case1965:                                  ; preds = %choice.next1930
  %pay.gep1970 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1971 = load ptr, ptr %pay.gep1970, align 8
  store ptr %payload.ptr1971, ptr %var.ct, align 8
  %var.load1972 = load ptr, ptr %var.ct, align 8
  %fld.gep1973 = getelementptr inbounds { ptr }, ptr %var.load1972, i32 0, i32 0
  %fld.load1974 = load ptr, ptr %fld.gep1973, align 8
  %var.load1975 = load ptr, ptr %var.locals, align 8
  %a.load1976 = load ptr, ptr %var.locals, align 8
  %a.null1977 = icmp eq ptr %a.load1976, null
  br i1 %a.null1977, label %a.create1978, label %a.after1979

choice.next1966:                                  ; preds = %choice.next1930
  %tag.gep2003 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2004 = load i64, ptr %tag.gep2003, align 8
  %tag.match2005 = icmp eq i64 %tag.id2004, 30
  br i1 %tag.match2005, label %choice.case2001, label %choice.next2002

a.create1978:                                     ; preds = %choice.case1965
  %arena.cur1980 = call ptr @dva_arena_current()
  %a.create1981 = call ptr @dva_arena_alloc(ptr %arena.cur1980, i64 24)
  %arena.cur1982 = call ptr @dva_arena_current()
  %a.buf1983 = call ptr @dva_arena_alloc(ptr %arena.cur1982, i64 128)
  %a.len.gep1984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1981, i32 0, i32 0
  store i64 0, ptr %a.len.gep1984, align 8
  %a.data.gep1985 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1981, i32 0, i32 1
  store ptr %a.buf1983, ptr %a.data.gep1985, align 8
  %a.cap.gep1986 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1981, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1986, align 8
  store ptr %a.create1981, ptr %var.locals, align 8
  br label %a.after1979

a.after1979:                                      ; preds = %a.create1978, %choice.case1965
  %a.load21987 = load ptr, ptr %var.locals, align 8
  %var.load1988 = load ptr, ptr %var.refs, align 8
  %a.load1989 = load ptr, ptr %var.refs, align 8
  %a.null1990 = icmp eq ptr %a.load1989, null
  br i1 %a.null1990, label %a.create1991, label %a.after1992

a.create1991:                                     ; preds = %a.after1979
  %arena.cur1993 = call ptr @dva_arena_current()
  %a.create1994 = call ptr @dva_arena_alloc(ptr %arena.cur1993, i64 24)
  %arena.cur1995 = call ptr @dva_arena_current()
  %a.buf1996 = call ptr @dva_arena_alloc(ptr %arena.cur1995, i64 128)
  %a.len.gep1997 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1994, i32 0, i32 0
  store i64 0, ptr %a.len.gep1997, align 8
  %a.data.gep1998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1994, i32 0, i32 1
  store ptr %a.buf1996, ptr %a.data.gep1998, align 8
  %a.cap.gep1999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1994, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1999, align 8
  store ptr %a.create1994, ptr %var.refs, align 8
  br label %a.after1992

a.after1992:                                      ; preds = %a.create1991, %a.after1979
  %a.load22000 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1974, ptr %a.load21987, ptr %a.load22000)
  br label %choice.exit

choice.case2001:                                  ; preds = %choice.next1966
  %pay.gep2006 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2007 = load ptr, ptr %pay.gep2006, align 8
  store ptr %payload.ptr2007, ptr %var.sp, align 8
  %arena.cur2008 = call ptr @dva_arena_current()
  %enum.alloc2009 = call ptr @dva_arena_alloc(ptr %arena.cur2008, i64 16)
  %tag.gep2010 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2009, i32 0, i32 0
  store i64 9, ptr %tag.gep2010, align 8
  %pay.gep2011 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2009, i32 0, i32 1
  %var.load2012 = load ptr, ptr %var.sp, align 8
  %fld.gep2013 = getelementptr inbounds { { ptr, ptr, ptr, i64, i64 } }, ptr %var.load2012, i32 0, i32 0
  store ptr %fld.gep2013, ptr %pay.gep2011, align 8
  %var.load2014 = load ptr, ptr %var.locals, align 8
  %a.load2015 = load ptr, ptr %var.locals, align 8
  %a.null2016 = icmp eq ptr %a.load2015, null
  br i1 %a.null2016, label %a.create2017, label %a.after2018

choice.next2002:                                  ; preds = %choice.next1966
  %tag.gep2042 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2043 = load i64, ptr %tag.gep2042, align 8
  %tag.match2044 = icmp eq i64 %tag.id2043, 31
  br i1 %tag.match2044, label %choice.case2040, label %choice.next2041

a.create2017:                                     ; preds = %choice.case2001
  %arena.cur2019 = call ptr @dva_arena_current()
  %a.create2020 = call ptr @dva_arena_alloc(ptr %arena.cur2019, i64 24)
  %arena.cur2021 = call ptr @dva_arena_current()
  %a.buf2022 = call ptr @dva_arena_alloc(ptr %arena.cur2021, i64 128)
  %a.len.gep2023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 0
  store i64 0, ptr %a.len.gep2023, align 8
  %a.data.gep2024 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 1
  store ptr %a.buf2022, ptr %a.data.gep2024, align 8
  %a.cap.gep2025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2025, align 8
  store ptr %a.create2020, ptr %var.locals, align 8
  br label %a.after2018

a.after2018:                                      ; preds = %a.create2017, %choice.case2001
  %a.load22026 = load ptr, ptr %var.locals, align 8
  %var.load2027 = load ptr, ptr %var.refs, align 8
  %a.load2028 = load ptr, ptr %var.refs, align 8
  %a.null2029 = icmp eq ptr %a.load2028, null
  br i1 %a.null2029, label %a.create2030, label %a.after2031

a.create2030:                                     ; preds = %a.after2018
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
  store ptr %a.create2033, ptr %var.refs, align 8
  br label %a.after2031

a.after2031:                                      ; preds = %a.create2030, %a.after2018
  %a.load22039 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc2009, ptr %a.load22026, ptr %a.load22039)
  br label %choice.exit

choice.case2040:                                  ; preds = %choice.next2002
  %pay.gep2045 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2046 = load ptr, ptr %pay.gep2045, align 8
  store ptr %payload.ptr2046, ptr %var.jn, align 8
  %var.load2047 = load ptr, ptr %var.jn, align 8
  %fld.gep2048 = getelementptr inbounds { ptr }, ptr %var.load2047, i32 0, i32 0
  %fld.load2049 = load ptr, ptr %fld.gep2048, align 8
  %var.load2050 = load ptr, ptr %var.locals, align 8
  %a.load2051 = load ptr, ptr %var.locals, align 8
  %a.null2052 = icmp eq ptr %a.load2051, null
  br i1 %a.null2052, label %a.create2053, label %a.after2054

choice.next2041:                                  ; preds = %choice.next2002
  %tag.gep2078 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2079 = load i64, ptr %tag.gep2078, align 8
  %tag.match2080 = icmp eq i64 %tag.id2079, 32
  br i1 %tag.match2080, label %choice.case2076, label %choice.next2077

a.create2053:                                     ; preds = %choice.case2040
  %arena.cur2055 = call ptr @dva_arena_current()
  %a.create2056 = call ptr @dva_arena_alloc(ptr %arena.cur2055, i64 24)
  %arena.cur2057 = call ptr @dva_arena_current()
  %a.buf2058 = call ptr @dva_arena_alloc(ptr %arena.cur2057, i64 128)
  %a.len.gep2059 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2056, i32 0, i32 0
  store i64 0, ptr %a.len.gep2059, align 8
  %a.data.gep2060 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2056, i32 0, i32 1
  store ptr %a.buf2058, ptr %a.data.gep2060, align 8
  %a.cap.gep2061 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2056, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2061, align 8
  store ptr %a.create2056, ptr %var.locals, align 8
  br label %a.after2054

a.after2054:                                      ; preds = %a.create2053, %choice.case2040
  %a.load22062 = load ptr, ptr %var.locals, align 8
  %var.load2063 = load ptr, ptr %var.refs, align 8
  %a.load2064 = load ptr, ptr %var.refs, align 8
  %a.null2065 = icmp eq ptr %a.load2064, null
  br i1 %a.null2065, label %a.create2066, label %a.after2067

a.create2066:                                     ; preds = %a.after2054
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
  store ptr %a.create2069, ptr %var.refs, align 8
  br label %a.after2067

a.after2067:                                      ; preds = %a.create2066, %a.after2054
  %a.load22075 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2049, ptr %a.load22062, ptr %a.load22075)
  br label %choice.exit

choice.case2076:                                  ; preds = %choice.next2041
  %pay.gep2081 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2082 = load ptr, ptr %pay.gep2081, align 8
  store ptr %payload.ptr2082, ptr %var.ex, align 8
  %var.load2083 = load ptr, ptr %var.ex, align 8
  %fld.gep2084 = getelementptr inbounds { ptr }, ptr %var.load2083, i32 0, i32 0
  %fld.load2085 = load ptr, ptr %fld.gep2084, align 8
  %var.load2086 = load ptr, ptr %var.locals, align 8
  %a.load2087 = load ptr, ptr %var.locals, align 8
  %a.null2088 = icmp eq ptr %a.load2087, null
  br i1 %a.null2088, label %a.create2089, label %a.after2090

choice.next2077:                                  ; preds = %choice.next2041
  %tag.gep2114 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2115 = load i64, ptr %tag.gep2114, align 8
  %tag.match2116 = icmp eq i64 %tag.id2115, 36
  br i1 %tag.match2116, label %choice.case2112, label %choice.next2113

a.create2089:                                     ; preds = %choice.case2076
  %arena.cur2091 = call ptr @dva_arena_current()
  %a.create2092 = call ptr @dva_arena_alloc(ptr %arena.cur2091, i64 24)
  %arena.cur2093 = call ptr @dva_arena_current()
  %a.buf2094 = call ptr @dva_arena_alloc(ptr %arena.cur2093, i64 128)
  %a.len.gep2095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2092, i32 0, i32 0
  store i64 0, ptr %a.len.gep2095, align 8
  %a.data.gep2096 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2092, i32 0, i32 1
  store ptr %a.buf2094, ptr %a.data.gep2096, align 8
  %a.cap.gep2097 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2092, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2097, align 8
  store ptr %a.create2092, ptr %var.locals, align 8
  br label %a.after2090

a.after2090:                                      ; preds = %a.create2089, %choice.case2076
  %a.load22098 = load ptr, ptr %var.locals, align 8
  %var.load2099 = load ptr, ptr %var.refs, align 8
  %a.load2100 = load ptr, ptr %var.refs, align 8
  %a.null2101 = icmp eq ptr %a.load2100, null
  br i1 %a.null2101, label %a.create2102, label %a.after2103

a.create2102:                                     ; preds = %a.after2090
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
  store ptr %a.create2105, ptr %var.refs, align 8
  br label %a.after2103

a.after2103:                                      ; preds = %a.create2102, %a.after2090
  %a.load22111 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2085, ptr %a.load22098, ptr %a.load22111)
  br label %choice.exit

choice.case2112:                                  ; preds = %choice.next2077
  %pay.gep2117 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2118 = load ptr, ptr %pay.gep2117, align 8
  store ptr %payload.ptr2118, ptr %var.ud, align 8
  %var.load2119 = load ptr, ptr %var.ud, align 8
  %fld.gep2120 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2119, i32 0, i32 1
  %fld.load2121 = load ptr, ptr %fld.gep2120, align 8
  %var.load2122 = load ptr, ptr %var.locals, align 8
  %a.load2123 = load ptr, ptr %var.locals, align 8
  %a.null2124 = icmp eq ptr %a.load2123, null
  br i1 %a.null2124, label %a.create2125, label %a.after2126

choice.next2113:                                  ; preds = %choice.next2077
  br label %choice.exit

a.create2125:                                     ; preds = %choice.case2112
  %arena.cur2127 = call ptr @dva_arena_current()
  %a.create2128 = call ptr @dva_arena_alloc(ptr %arena.cur2127, i64 24)
  %arena.cur2129 = call ptr @dva_arena_current()
  %a.buf2130 = call ptr @dva_arena_alloc(ptr %arena.cur2129, i64 128)
  %a.len.gep2131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2128, i32 0, i32 0
  store i64 0, ptr %a.len.gep2131, align 8
  %a.data.gep2132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2128, i32 0, i32 1
  store ptr %a.buf2130, ptr %a.data.gep2132, align 8
  %a.cap.gep2133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2133, align 8
  store ptr %a.create2128, ptr %var.locals, align 8
  br label %a.after2126

a.after2126:                                      ; preds = %a.create2125, %choice.case2112
  %a.load22134 = load ptr, ptr %var.locals, align 8
  %var.load2135 = load ptr, ptr %var.refs, align 8
  %a.load2136 = load ptr, ptr %var.refs, align 8
  %a.null2137 = icmp eq ptr %a.load2136, null
  br i1 %a.null2137, label %a.create2138, label %a.after2139

a.create2138:                                     ; preds = %a.after2126
  %arena.cur2140 = call ptr @dva_arena_current()
  %a.create2141 = call ptr @dva_arena_alloc(ptr %arena.cur2140, i64 24)
  %arena.cur2142 = call ptr @dva_arena_current()
  %a.buf2143 = call ptr @dva_arena_alloc(ptr %arena.cur2142, i64 128)
  %a.len.gep2144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2141, i32 0, i32 0
  store i64 0, ptr %a.len.gep2144, align 8
  %a.data.gep2145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2141, i32 0, i32 1
  store ptr %a.buf2143, ptr %a.data.gep2145, align 8
  %a.cap.gep2146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2146, align 8
  store ptr %a.create2141, ptr %var.refs, align 8
  br label %a.after2139

a.after2139:                                      ; preds = %a.create2138, %a.after2126
  %a.load22147 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2121, ptr %a.load22134, ptr %a.load22147)
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
  %var._102 = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var._100 = alloca ptr, align 8
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
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %m.cap3 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %m.keys4 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 4
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen9 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen10 = load i64, ptr %arena.gen9, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen10
  br i1 %str.tag.match, label %str_ok, label %str_stale

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
  %m.mem.state.gep = getelementptr i8, ptr %m.states5, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.empty, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  br i1 %m.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys4, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen11 = load i64, ptr %mk.slen, align 8
  %mk.slen12 = and i64 %mk.slen11, 281474976710655
  %str.tag13 = lshr i64 %mk.slen11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

m.mem.next:                                       ; preds = %str_ok28, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check15:                                  ; preds = %m.mem.found
  %arena.gen18 = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen18, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match21 = icmp eq i64 %str.tag13, %arena.gen20
  br i1 %str.tag.match21, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %m.mem.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata22 = load ptr, ptr %mk.sdata, align 8
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen23 = load i64, ptr %mk.nlen, align 8
  %mk.nlen24 = and i64 %mk.nlen23, 281474976710655
  %str.tag25 = lshr i64 %mk.nlen23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check27:                                  ; preds = %str_ok16
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok16
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata34 = load ptr, ptr %mk.ndata, align 8
  %mk.lenseq = icmp eq i64 %mk.slen12, %mk.nlen24
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata22, ptr %mk.ndata34, i64 %mk.nlen24)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  %mk.eq = and i1 %mk.lenseq, %mk.cmpeq
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

m.mem.hit:                                        ; preds = %str_ok28
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load35 = load ptr, ptr %var.indices, align 8
  %var.load36 = load ptr, ptr %var.name, align 8
  %m.cap37 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 1
  %m.cap38 = load i64, ptr %m.cap37, align 8
  %m.keys39 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 2
  %m.keys40 = load ptr, ptr %m.keys39, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 3
  %m.vals41 = load ptr, ptr %m.vals, align 8
  %m.states42 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 4
  %m.states43 = load ptr, ptr %m.states42, align 8
  %mk.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %mk.data45 = load ptr, ptr %mk.data44, align 8
  %mk.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %mk.len47 = load i64, ptr %mk.len46, align 8
  %mk.len48 = and i64 %mk.len47, 281474976710655
  %str.tag49 = lshr i64 %mk.len47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit97
  %choice.res133 = phi i64 [ %var.load132, %choice.exit97 ], [ -1, %choice.else ]
  ret i64 %choice.res133

str_gen_check51:                                  ; preds = %choice.then
  %arena.gen54 = call ptr @dva_arena_current()
  %arena.gen55 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen54, i32 0, i32 4
  %arena.gen56 = load i64, ptr %arena.gen55, align 8
  %str.tag.match57 = icmp eq i64 %str.tag49, %arena.gen56
  br i1 %str.tag.match57, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %choice.then
  %hash.str58 = call i64 @dva_hash_string(ptr %mk.data45, i64 %mk.len48)
  %m.capm159 = sub i64 %m.cap38, 1
  %m.idx060 = and i64 %hash.str58, %m.capm159
  br label %m.rd.loop

str_stale53:                                      ; preds = %str_gen_check51
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

m.rd.loop:                                        ; preds = %m.rd.next, %str_ok52
  %m.rd.idx = phi i64 [ %m.idx060, %str_ok52 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.state.gep = getelementptr i8, ptr %m.states43, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.empty, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr ptr, ptr %m.keys40, i64 %m.rd.idx
  %mk.stored61 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen62 = getelementptr inbounds { i64, ptr }, ptr %mk.stored61, i32 0, i32 0
  %mk.slen63 = load i64, ptr %mk.slen62, align 8
  %mk.slen64 = and i64 %mk.slen63, 281474976710655
  %str.tag65 = lshr i64 %mk.slen63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

m.rd.next:                                        ; preds = %str_ok82, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm159
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %ram.tag94 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag94, label %choice.then95, label %choice.else96

str_gen_check67:                                  ; preds = %m.rd.found
  %arena.gen70 = call ptr @dva_arena_current()
  %arena.gen71 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen70, i32 0, i32 4
  %arena.gen72 = load i64, ptr %arena.gen71, align 8
  %str.tag.match73 = icmp eq i64 %str.tag65, %arena.gen72
  br i1 %str.tag.match73, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %m.rd.found
  %mk.sdata74 = getelementptr inbounds { i64, ptr }, ptr %mk.stored61, i32 0, i32 1
  %mk.sdata75 = load ptr, ptr %mk.sdata74, align 8
  %mk.nlen76 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %mk.nlen77 = load i64, ptr %mk.nlen76, align 8
  %mk.nlen78 = and i64 %mk.nlen77, 281474976710655
  %str.tag79 = lshr i64 %mk.nlen77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

str_stale69:                                      ; preds = %str_gen_check67
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check81:                                  ; preds = %str_ok68
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %str_ok68
  %mk.ndata88 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %mk.ndata89 = load ptr, ptr %mk.ndata88, align 8
  %mk.lenseq90 = icmp eq i64 %mk.slen64, %mk.nlen78
  %mk.memcmp91 = call i32 @memcmp(ptr %mk.sdata75, ptr %mk.ndata89, i64 %mk.nlen78)
  %mk.cmpeq92 = icmp eq i32 %mk.memcmp91, 0
  %mk.eq93 = and i1 %mk.lenseq90, %mk.cmpeq92
  br i1 %mk.eq93, label %m.rd.hit, label %m.rd.next

str_stale83:                                      ; preds = %str_gen_check81
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

m.rd.hit:                                         ; preds = %str_ok82
  %m.rd.val.slot = getelementptr i64, ptr %m.vals41, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then95:                                    ; preds = %m.rd.done
  %ram.pay98 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay98, ptr %var._, align 8
  br label %choice.exit97

choice.else96:                                    ; preds = %m.rd.done
  %ram.pay99 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay99 to ptr
  store ptr %pay.ptr, ptr %var._100, align 8
  store ptr %pay.ptr, ptr %var._101, align 8
  store ptr %pay.ptr, ptr %var._102, align 8
  %err.code.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep103, align 8
  %err.msg.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep104, align 8
  %err.file.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep105, align 8
  %err.line.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep106, align 8
  %err.col.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep107, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len108 = load i64, ptr %err.msg.len, align 8
  %err.msg.len109 = and i64 %err.msg.len108, 281474976710655
  %str.tag110 = lshr i64 %err.msg.len108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit97:                                    ; preds = %err.abort, %choice.then95
  %choice.res = phi i64 [ %ram.pay98, %choice.then95 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load132 = load i64, ptr %var.idx, align 8
  br label %choice.exit

str_gen_check112:                                 ; preds = %choice.else96
  %arena.gen115 = call ptr @dva_arena_current()
  %arena.gen116 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen115, i32 0, i32 4
  %arena.gen117 = load i64, ptr %arena.gen116, align 8
  %str.tag.match118 = icmp eq i64 %str.tag110, %arena.gen117
  br i1 %str.tag.match118, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else96
  %err.msg.len32 = trunc i64 %err.msg.len109 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data119 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len120 = load i64, ptr %err.file.len, align 8
  %err.file.len121 = and i64 %err.file.len120, 281474976710655
  %str.tag122 = lshr i64 %err.file.len120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_stale114:                                     ; preds = %str_gen_check112
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check124:                                 ; preds = %str_ok113
  %arena.gen127 = call ptr @dva_arena_current()
  %arena.gen128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen127, i32 0, i32 4
  %arena.gen129 = load i64, ptr %arena.gen128, align 8
  %str.tag.match130 = icmp eq i64 %str.tag122, %arena.gen129
  br i1 %str.tag.match130, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %str_ok113
  %err.file.len32 = trunc i64 %err.file.len121 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data131 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale126:                                     ; preds = %str_gen_check124
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

err.thread:                                       ; preds = %str_ok125
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok125
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data119, i32 %err.file.len32, ptr %err.file.data131, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit97
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.16.then, label %and.16.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.16.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.a, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load5, i32 0, i32 7
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.16.else:                                      ; preds = %str_ok
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %str.eq.merge
  %and.16.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.16.else ]
  store i1 %and.16.phi, ptr %var.is_ct, align 1
  %var.load42 = load ptr, ptr %var.a, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load42, i32 0, i32 8
  %fld.load44 = load ptr, ptr %fld.gep43, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str_gen_check12:                                  ; preds = %and.16.then
  %arena.gen15 = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen15, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match18 = icmp eq i64 %str.tag10, %arena.gen17
  br i1 %str.tag.match18, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.16.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load7, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len9, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %rel.end = add i64 %s.read.len9, 4
  %norm.end = select i1 false, i64 %rel.end, i64 4
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data19, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len20 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %str.tag22 = lshr i64 %eq.lhs.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str_gen_check24:                                  ; preds = %str_ok13
  %arena.gen27 = call ptr @dva_arena_current()
  %arena.gen28 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen27, i32 0, i32 4
  %arena.gen29 = load i64, ptr %arena.gen28, align 8
  %str.tag.match30 = icmp eq i64 %str.tag22, %arena.gen29
  br i1 %str.tag.match30, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %str_ok13
  %eq.rhs.len = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len31 = and i64 %eq.rhs.len, 281474976710655
  %str.tag32 = lshr i64 %eq.rhs.len, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale26:                                      ; preds = %str_gen_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check34:                                  ; preds = %str_ok25
  %arena.gen37 = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen37, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %str.tag.match40 = icmp eq i64 %str.tag32, %arena.gen39
  br i1 %str.tag.match40, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok25
  %eq.len = icmp eq i64 %eq.lhs.len21, %eq.rhs.len31
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale36:                                      ; preds = %str_gen_check34
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data41 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data41, ptr %eq.rhs.data, i64 %eq.lhs.len21)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.16.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp49, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load50 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load50, label %or.17.then, label %or.17.else

choice.case:                                      ; preds = %and.16.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load45 = load ptr, ptr %var.f, align 8
  %fld.gep46 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load45, i32 0, i32 4
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load47, i32 0, i32 0
  %a.len.query48 = load i64, ptr %a.len.query, align 8
  %cmptmp49 = icmp sgt i64 %a.len.query48, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.16.exit
  br label %choice.exit

or.17.then:                                       ; preds = %choice.exit
  br label %or.17.exit

or.17.else:                                       ; preds = %choice.exit
  %var.load51 = load i1, ptr %var.is_ti, align 1
  br label %or.17.exit

or.17.exit:                                       ; preds = %or.17.else, %or.17.then
  %or.17.phi = phi i1 [ %var.load50, %or.17.then ], [ %var.load51, %or.17.else ]
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
  %var._777 = alloca ptr, align 8
  %var._774 = alloca ptr, align 8
  %var._712 = alloca i64, align 8
  %var._i711 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var.st1 = alloca ptr, align 8
  %var._351 = alloca ptr, align 8
  %var._348 = alloca ptr, align 8
  %var._286 = alloca i64, align 8
  %var._i285 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
  %var.stk = alloca ptr, align 8
  %var._62 = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var.gen_names = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  %var.stmts = alloca ptr, align 8
  store ptr %0, ptr %var.stmts, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 40)
  %arena.cur3 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 64)
  %arena.cur4 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 64)
  %arena.cur5 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states, i8 0, i64 8, i1 false)
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new, i32 0, i32 1
  store i64 8, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new, i32 0, i32 2
  store ptr %m.keys, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new, i32 0, i32 3
  store ptr %m.vals, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new, i32 0, i32 4
  store ptr %m.states, ptr %m.states.gep, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %m.new, ptr %rec.fld7, align 8
  store ptr %rec.alloc, ptr %var.graph, align 8
  %arena.cur8 = call ptr @dva_arena_current()
  %m.new9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 40)
  %arena.cur10 = call ptr @dva_arena_current()
  %m.keys11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 64)
  %arena.cur12 = call ptr @dva_arena_current()
  %m.vals13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 64)
  %arena.cur14 = call ptr @dva_arena_current()
  %m.states15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states15, i8 0, i64 8, i1 false)
  %m.count.gep16 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new9, i32 0, i32 0
  store i64 0, ptr %m.count.gep16, align 8
  %m.cap.gep17 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new9, i32 0, i32 1
  store i64 8, ptr %m.cap.gep17, align 8
  %m.keys.gep18 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new9, i32 0, i32 2
  store ptr %m.keys11, ptr %m.keys.gep18, align 8
  %m.vals.gep19 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new9, i32 0, i32 3
  store ptr %m.vals13, ptr %m.vals.gep19, align 8
  %m.states.gep20 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new9, i32 0, i32 4
  store ptr %m.states15, ptr %m.states.gep20, align 8
  store ptr %m.new9, ptr %var.gen_names, align 8
  %var.load = load ptr, ptr %var.stmts, align 8
  %a.load = load ptr, ptr %var.stmts, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur21 = call ptr @dva_arena_current()
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %var.stmts, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.stmts, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query28 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %a.after
  %counter.load = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query28
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load29 = load ptr, ptr %var.stmts, align 8
  %a.load30 = load ptr, ptr %var.stmts, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %choice.exit66
  %step.val = load i64, ptr %loop.step.18, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %arena.cur254 = call ptr @dva_arena_current()
  %m.new255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 40)
  %arena.cur256 = call ptr @dva_arena_current()
  %m.keys257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 64)
  %arena.cur258 = call ptr @dva_arena_current()
  %m.vals259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 64)
  %arena.cur260 = call ptr @dva_arena_current()
  %m.states261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states261, i8 0, i64 8, i1 false)
  %m.count.gep262 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new255, i32 0, i32 0
  store i64 0, ptr %m.count.gep262, align 8
  %m.cap.gep263 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new255, i32 0, i32 1
  store i64 8, ptr %m.cap.gep263, align 8
  %m.keys.gep264 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new255, i32 0, i32 2
  store ptr %m.keys257, ptr %m.keys.gep264, align 8
  %m.vals.gep265 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new255, i32 0, i32 3
  store ptr %m.vals259, ptr %m.vals.gep265, align 8
  %m.states.gep266 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new255, i32 0, i32 4
  store ptr %m.states261, ptr %m.states.gep266, align 8
  store ptr %m.new255, ptr %var.def_names, align 8
  %var.load267 = load ptr, ptr %var.stmts, align 8
  %a.load268 = load ptr, ptr %var.stmts, align 8
  %a.null269 = icmp eq ptr %a.load268, null
  br i1 %a.null269, label %a.create270, label %a.after271

a.create32:                                       ; preds = %loop.body.18
  %arena.cur34 = call ptr @dva_arena_current()
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = call ptr @dva_arena_current()
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %var.stmts, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %loop.body.18
  %a.load241 = load ptr, ptr %var.stmts, align 8
  %var.load42 = load i64, ptr %var.k, align 8
  %a.rd.nonnull = icmp ne ptr %a.load241, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after33
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %a.rd.len43 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load42, 0
  %a.rd.lt = icmp slt i64 %var.load42, %a.rd.len43
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 1
  %a.rd.data44 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data44, i64 %var.load42
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after33
  %arena.cur45 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 208, ptr %err.line.gep, align 8
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
  %arena.cur46 = call ptr @dva_arena_current()
  %err.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 56)
  %err.code.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 0
  store i64 4011, ptr %err.code.gep48, align 8
  %err.msg.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep49, align 8
  %err.file.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep50, align 8
  %err.line.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 3
  store i64 208, ptr %err.line.gep51, align 8
  %err.col.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 4
  store i64 22, ptr %err.col.gep52, align 8
  %err.ctx.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 5
  %err.ctx0.gep54 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep53, i32 0, i32 0
  store i64 %var.load42, ptr %err.ctx0.gep54, align 8
  %err.ctx1.gep55 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep53, i32 0, i32 1
  store i64 %a.rd.len43, ptr %err.ctx1.gep55, align 8
  %err.p2i56 = ptrtoint ptr %err.alloc47 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i56, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag57 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag57, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay58 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay58 to ptr
  store ptr %pay.ptr, ptr %var._59, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay60 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr61 = inttoptr i64 %ram.pay60 to ptr
  store ptr %pay.ptr61, ptr %var._62, align 8
  %arena.cur63 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur64 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.stk, align 8
  %var.load65 = load ptr, ptr %var.stk, align 8
  %tag.gep67 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep67, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit66:                                    ; preds = %choice.next, %choice.exit106
  br label %loop.latch.18

choice.case:                                      ; preds = %choice.exit
  %pay.gep68 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep68, align 8
  store ptr %payload.ptr, ptr %var.ak, align 8
  %var.load69 = load ptr, ptr %var.ak, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load69, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep73 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id74 = load i64, ptr %tag.gep73, align 8
  %tag.match75 = icmp eq i64 %tag.id74, 14
  br i1 %tag.match75, label %choice.case71, label %choice.next72

choice.next:                                      ; preds = %choice.exit
  br label %choice.exit66

choice.exit70:                                    ; preds = %choice.next72, %choice.case71
  %choice.res83 = phi i1 [ %cmptmp, %choice.case71 ], [ false, %choice.next72 ]
  store i1 %choice.res83, ptr %var.is_fe, align 1
  %var.load84 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load84)
  br i1 %call.res, label %or.19.then, label %or.19.else

choice.case71:                                    ; preds = %choice.case
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr77 = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr77, ptr %var.fek, align 8
  %var.load78 = load ptr, ptr %var.fek, align 8
  %fld.gep79 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load78, i32 0, i32 1
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %a.len.query81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load80, i32 0, i32 0
  %a.len.query82 = load i64, ptr %a.len.query81, align 8
  %cmptmp = icmp sgt i64 %a.len.query82, 0
  br label %choice.exit70

choice.next72:                                    ; preds = %choice.case
  br label %choice.exit70

or.19.then:                                       ; preds = %choice.exit70
  br label %or.19.exit

or.19.else:                                       ; preds = %choice.exit70
  %var.load85 = load i1, ptr %var.is_fe, align 1
  br label %or.19.exit

or.19.exit:                                       ; preds = %or.19.else, %or.19.then
  %or.19.phi = phi i1 [ %call.res, %or.19.then ], [ %var.load85, %or.19.else ]
  store i1 %or.19.phi, ptr %var.is_gen, align 1
  %var.load86 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load86, label %and.20.then, label %and.20.else

and.20.then:                                      ; preds = %or.19.exit
  %var.load87 = load ptr, ptr %var.ak, align 8
  %fld.gep88 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load87, i32 0, i32 0
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load89, i32 0, i32 0
  %eq.lhs.len90 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len91 = and i64 %eq.lhs.len90, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len90, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.20.else:                                      ; preds = %or.19.exit
  br label %and.20.exit

and.20.exit:                                      ; preds = %and.20.else, %str.eq.merge
  %and.20.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load86, %and.20.else ]
  br i1 %and.20.phi, label %choice.then105, label %choice.exit106

str_gen_check:                                    ; preds = %and.20.then
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen93
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.20.then
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len94 = and i64 %eq.rhs.len, 281474976710655
  %str.tag95 = lshr i64 %eq.rhs.len, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check97:                                  ; preds = %str_ok
  %arena.gen100 = call ptr @dva_arena_current()
  %arena.gen101 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen100, i32 0, i32 4
  %arena.gen102 = load i64, ptr %arena.gen101, align 8
  %str.tag.match103 = icmp eq i64 %str.tag95, %arena.gen102
  br i1 %str.tag.match103, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len91, %eq.rhs.len94
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale99:                                      ; preds = %str_gen_check97
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

str.eq.then:                                      ; preds = %str_ok98
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load89, i32 0, i32 1
  %eq.lhs.data104 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data104, ptr %eq.rhs.data, i64 %eq.lhs.len91)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok98
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.20.exit

choice.then105:                                   ; preds = %and.20.exit
  %var.load107 = load ptr, ptr %var.gen_names, align 8
  %var.load108 = load ptr, ptr %var.ak, align 8
  %fld.gep109 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load108, i32 0, i32 0
  %fld.load110 = load ptr, ptr %fld.gep109, align 8
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  %m.count111 = load i64, ptr %m.count, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 1
  %m.cap112 = load i64, ptr %m.cap, align 8
  %m.c.plus = add i64 %m.count111, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap112, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins

choice.exit106:                                   ; preds = %m.done202, %and.20.exit
  br label %choice.exit66

m.grow:                                           ; preds = %choice.then105
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 1
  %m.old.cap113 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 2
  %m.old.keys114 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 3
  %m.old.vals115 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 4
  %m.old.states116 = load ptr, ptr %m.old.states, align 8
  %m.new.cap = mul i64 %m.old.cap113, 2
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur117 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur118 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %m.gv.bytes)
  %arena.cur119 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep120 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep120, align 8
  %m.keys.gep121 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep121, align 8
  %m.vals.gep122 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep122, align 8
  %m.states.gep123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep123, align 8
  %m.count.gep124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  store i64 0, ptr %m.count.gep124, align 8
  br label %m.re.loop

m.ins:                                            ; preds = %m.re.done, %choice.then105
  %m.cap174 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 1
  %m.cap175 = load i64, ptr %m.cap174, align 8
  %m.keys176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 2
  %m.keys177 = load ptr, ptr %m.keys176, align 8
  %m.vals178 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 3
  %m.vals179 = load ptr, ptr %m.vals178, align 8
  %m.states180 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 4
  %m.states181 = load ptr, ptr %m.states180, align 8
  %mk.data182 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 1
  %mk.data183 = load ptr, ptr %mk.data182, align 8
  %mk.len184 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 0
  %mk.len185 = load i64, ptr %mk.len184, align 8
  %mk.len186 = and i64 %mk.len185, 281474976710655
  %str.tag187 = lshr i64 %mk.len185, 48
  %str.immortal188 = icmp eq i64 %str.tag187, 0
  br i1 %str.immortal188, label %str_ok190, label %str_gen_check189

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap113
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states116, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  br label %m.ins

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys114, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals115, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 1
  %m.cap126 = load i64, ptr %m.cap125, align 8
  %m.keys127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 2
  %m.keys128 = load ptr, ptr %m.keys127, align 8
  %m.vals129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 3
  %m.vals130 = load ptr, ptr %m.vals129, align 8
  %m.states131 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 4
  %m.states132 = load ptr, ptr %m.states131, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data133 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len134 = load i64, ptr %mk.len, align 8
  %mk.len135 = and i64 %mk.len134, 281474976710655
  %str.tag136 = lshr i64 %mk.len134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

str_gen_check138:                                 ; preds = %m.re.ins
  %arena.gen141 = call ptr @dva_arena_current()
  %arena.gen142 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen141, i32 0, i32 4
  %arena.gen143 = load i64, ptr %arena.gen142, align 8
  %str.tag.match144 = icmp eq i64 %str.tag136, %arena.gen143
  br i1 %str.tag.match144, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %m.re.ins
  %hash.str = call i64 @dva_hash_string(ptr %mk.data133, i64 %mk.len135)
  %m.capm1 = sub i64 %m.cap126, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale140:                                     ; preds = %str_gen_check138
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

m.loop:                                           ; preds = %m.next, %str_ok139
  %m.idx = phi i64 [ %m.idx0, %str_ok139 ], [ %m.idx.next, %m.next ]
  %m.state.gep = getelementptr i8, ptr %m.states132, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.is.tomb = icmp eq i8 %m.state, 2
  %m.is.free = or i1 %m.is.empty, %m.is.tomb
  br i1 %m.is.free, label %m.empty, label %m.found

m.found:                                          ; preds = %m.loop
  %m.key.slot = getelementptr ptr, ptr %m.keys128, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen145 = load i64, ptr %mk.slen, align 8
  %mk.slen146 = and i64 %mk.slen145, 281474976710655
  %str.tag147 = lshr i64 %mk.slen145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

m.empty:                                          ; preds = %m.loop
  %m.key.slot169 = getelementptr ptr, ptr %m.keys128, i64 %m.idx
  store ptr %m.re.key, ptr %m.key.slot169, align 8
  %m.val.slot170 = getelementptr i64, ptr %m.vals130, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot170, align 8
  store i8 1, ptr %m.state.gep, align 1
  %m.count171 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  %m.count172 = load i64, ptr %m.count171, align 8
  %m.count.next = add i64 %m.count172, 1
  %m.count.gep173 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep173, align 8
  br label %m.done

m.done:                                           ; preds = %m.empty, %m.overwrite
  br label %m.re.cont

str_gen_check149:                                 ; preds = %m.found
  %arena.gen152 = call ptr @dva_arena_current()
  %arena.gen153 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen152, i32 0, i32 4
  %arena.gen154 = load i64, ptr %arena.gen153, align 8
  %str.tag.match155 = icmp eq i64 %str.tag147, %arena.gen154
  br i1 %str.tag.match155, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata156 = load ptr, ptr %mk.sdata, align 8
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen157 = load i64, ptr %mk.nlen, align 8
  %mk.nlen158 = and i64 %mk.nlen157, 281474976710655
  %str.tag159 = lshr i64 %mk.nlen157, 48
  %str.immortal160 = icmp eq i64 %str.tag159, 0
  br i1 %str.immortal160, label %str_ok162, label %str_gen_check161

str_stale151:                                     ; preds = %str_gen_check149
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

str_gen_check161:                                 ; preds = %str_ok150
  %arena.gen164 = call ptr @dva_arena_current()
  %arena.gen165 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen164, i32 0, i32 4
  %arena.gen166 = load i64, ptr %arena.gen165, align 8
  %str.tag.match167 = icmp eq i64 %str.tag159, %arena.gen166
  br i1 %str.tag.match167, label %str_ok162, label %str_stale163

str_ok162:                                        ; preds = %str_stale163, %str_gen_check161, %str_ok150
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata168 = load ptr, ptr %mk.ndata, align 8
  %mk.lenseq = icmp eq i64 %mk.slen146, %mk.nlen158
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata156, ptr %mk.ndata168, i64 %mk.nlen158)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  %mk.eq = and i1 %mk.lenseq, %mk.cmpeq
  br i1 %mk.eq, label %m.overwrite, label %m.next

str_stale163:                                     ; preds = %str_gen_check161
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok162

m.next:                                           ; preds = %str_ok162
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  br label %m.loop

m.overwrite:                                      ; preds = %str_ok162
  %m.val.slot = getelementptr i64, ptr %m.vals130, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot, align 8
  br label %m.done

str_gen_check189:                                 ; preds = %m.ins
  %arena.gen192 = call ptr @dva_arena_current()
  %arena.gen193 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen192, i32 0, i32 4
  %arena.gen194 = load i64, ptr %arena.gen193, align 8
  %str.tag.match195 = icmp eq i64 %str.tag187, %arena.gen194
  br i1 %str.tag.match195, label %str_ok190, label %str_stale191

str_ok190:                                        ; preds = %str_stale191, %str_gen_check189, %m.ins
  %hash.str196 = call i64 @dva_hash_string(ptr %mk.data183, i64 %mk.len186)
  %m.capm1197 = sub i64 %m.cap175, 1
  %m.idx0198 = and i64 %hash.str196, %m.capm1197
  br label %m.loop199

str_stale191:                                     ; preds = %str_gen_check189
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok190

m.loop199:                                        ; preds = %m.next243, %str_ok190
  %m.idx203 = phi i64 [ %m.idx0198, %str_ok190 ], [ %m.idx.next247, %m.next243 ]
  %m.state.gep204 = getelementptr i8, ptr %m.states181, i64 %m.idx203
  %m.state205 = load i8, ptr %m.state.gep204, align 1
  %m.is.empty206 = icmp eq i8 %m.state205, 0
  %m.is.tomb207 = icmp eq i8 %m.state205, 2
  %m.is.free208 = or i1 %m.is.empty206, %m.is.tomb207
  br i1 %m.is.free208, label %m.empty201, label %m.found200

m.found200:                                       ; preds = %m.loop199
  %m.key.slot209 = getelementptr ptr, ptr %m.keys177, i64 %m.idx203
  %mk.stored210 = load ptr, ptr %m.key.slot209, align 8
  %mk.slen211 = getelementptr inbounds { i64, ptr }, ptr %mk.stored210, i32 0, i32 0
  %mk.slen212 = load i64, ptr %mk.slen211, align 8
  %mk.slen213 = and i64 %mk.slen212, 281474976710655
  %str.tag214 = lshr i64 %mk.slen212, 48
  %str.immortal215 = icmp eq i64 %str.tag214, 0
  br i1 %str.immortal215, label %str_ok217, label %str_gen_check216

m.empty201:                                       ; preds = %m.loop199
  %m.key.slot248 = getelementptr ptr, ptr %m.keys177, i64 %m.idx203
  store ptr %fld.load110, ptr %m.key.slot248, align 8
  %m.val.slot249 = getelementptr i64, ptr %m.vals179, i64 %m.idx203
  store i64 1, ptr %m.val.slot249, align 8
  store i8 1, ptr %m.state.gep204, align 1
  %m.count250 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  %m.count251 = load i64, ptr %m.count250, align 8
  %m.count.next252 = add i64 %m.count251, 1
  %m.count.gep253 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load107, i32 0, i32 0
  store i64 %m.count.next252, ptr %m.count.gep253, align 8
  br label %m.done202

m.done202:                                        ; preds = %m.empty201, %m.overwrite244
  br label %choice.exit106

str_gen_check216:                                 ; preds = %m.found200
  %arena.gen219 = call ptr @dva_arena_current()
  %arena.gen220 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen219, i32 0, i32 4
  %arena.gen221 = load i64, ptr %arena.gen220, align 8
  %str.tag.match222 = icmp eq i64 %str.tag214, %arena.gen221
  br i1 %str.tag.match222, label %str_ok217, label %str_stale218

str_ok217:                                        ; preds = %str_stale218, %str_gen_check216, %m.found200
  %mk.sdata223 = getelementptr inbounds { i64, ptr }, ptr %mk.stored210, i32 0, i32 1
  %mk.sdata224 = load ptr, ptr %mk.sdata223, align 8
  %mk.nlen225 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 0
  %mk.nlen226 = load i64, ptr %mk.nlen225, align 8
  %mk.nlen227 = and i64 %mk.nlen226, 281474976710655
  %str.tag228 = lshr i64 %mk.nlen226, 48
  %str.immortal229 = icmp eq i64 %str.tag228, 0
  br i1 %str.immortal229, label %str_ok231, label %str_gen_check230

str_stale218:                                     ; preds = %str_gen_check216
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok217

str_gen_check230:                                 ; preds = %str_ok217
  %arena.gen233 = call ptr @dva_arena_current()
  %arena.gen234 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen233, i32 0, i32 4
  %arena.gen235 = load i64, ptr %arena.gen234, align 8
  %str.tag.match236 = icmp eq i64 %str.tag228, %arena.gen235
  br i1 %str.tag.match236, label %str_ok231, label %str_stale232

str_ok231:                                        ; preds = %str_stale232, %str_gen_check230, %str_ok217
  %mk.ndata237 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 1
  %mk.ndata238 = load ptr, ptr %mk.ndata237, align 8
  %mk.lenseq239 = icmp eq i64 %mk.slen213, %mk.nlen227
  %mk.memcmp240 = call i32 @memcmp(ptr %mk.sdata224, ptr %mk.ndata238, i64 %mk.nlen227)
  %mk.cmpeq241 = icmp eq i32 %mk.memcmp240, 0
  %mk.eq242 = and i1 %mk.lenseq239, %mk.cmpeq241
  br i1 %mk.eq242, label %m.overwrite244, label %m.next243

str_stale232:                                     ; preds = %str_gen_check230
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok231

m.next243:                                        ; preds = %str_ok231
  %m.idx.add246 = add i64 %m.idx203, 1
  %m.idx.next247 = and i64 %m.idx.add246, %m.capm1197
  br label %m.loop199

m.overwrite244:                                   ; preds = %str_ok231
  %m.val.slot245 = getelementptr i64, ptr %m.vals179, i64 %m.idx203
  store i64 1, ptr %m.val.slot245, align 8
  br label %m.done202

a.create270:                                      ; preds = %loop.exit.18
  %arena.cur272 = call ptr @dva_arena_current()
  %a.create273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 24)
  %arena.cur274 = call ptr @dva_arena_current()
  %a.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 128)
  %a.len.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 0
  store i64 0, ptr %a.len.gep276, align 8
  %a.data.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 1
  store ptr %a.buf275, ptr %a.data.gep277, align 8
  %a.cap.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 2
  store i64 16, ptr %a.cap.gep278, align 8
  store ptr %a.create273, ptr %var.stmts, align 8
  br label %a.after271

a.after271:                                       ; preds = %a.create270, %loop.exit.18
  %a.load2279 = load ptr, ptr %var.stmts, align 8
  %a.len.query280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 0
  %a.len.query281 = load i64, ptr %a.len.query280, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after271
  %counter.load282 = load i64, ptr %loop.idx.21, align 8
  %loop.cond283 = icmp slt i64 %counter.load282, %a.len.query281
  br i1 %loop.cond283, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i284 = sub i64 %counter.load282, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i284, ptr %var._i285, align 8
  store i64 %counter.load282, ptr %var._286, align 8
  store i64 %counter.load282, ptr %var.i, align 8
  %var.load287 = load ptr, ptr %var.stmts, align 8
  %a.load288 = load ptr, ptr %var.stmts, align 8
  %a.null289 = icmp eq ptr %a.load288, null
  br i1 %a.null289, label %a.create290, label %a.after291

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit360
  %step.val691 = load i64, ptr %loop.step.21, align 8
  %loop.next692 = add i64 %counter.load282, %step.val691
  store i64 %loop.next692, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load693 = load ptr, ptr %var.stmts, align 8
  %a.load694 = load ptr, ptr %var.stmts, align 8
  %a.null695 = icmp eq ptr %a.load694, null
  br i1 %a.null695, label %a.create696, label %a.after697

a.create290:                                      ; preds = %loop.body.21
  %arena.cur292 = call ptr @dva_arena_current()
  %a.create293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 24)
  %arena.cur294 = call ptr @dva_arena_current()
  %a.buf295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 128)
  %a.len.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 0
  store i64 0, ptr %a.len.gep296, align 8
  %a.data.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 1
  store ptr %a.buf295, ptr %a.data.gep297, align 8
  %a.cap.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 2
  store i64 16, ptr %a.cap.gep298, align 8
  store ptr %a.create293, ptr %var.stmts, align 8
  br label %a.after291

a.after291:                                       ; preds = %a.create290, %loop.body.21
  %a.load2299 = load ptr, ptr %var.stmts, align 8
  %var.load300 = load i64, ptr %var.i, align 8
  %a.rd.nonnull301 = icmp ne ptr %a.load2299, null
  br i1 %a.rd.nonnull301, label %a.rd.check302, label %a.rd.err.null304

a.rd.check302:                                    ; preds = %a.after291
  %a.rd.len307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 0
  %a.rd.len308 = load i64, ptr %a.rd.len307, align 8
  %a.rd.ge0309 = icmp sge i64 %var.load300, 0
  %a.rd.lt310 = icmp slt i64 %var.load300, %a.rd.len308
  %a.rd.bounds311 = and i1 %a.rd.ge0309, %a.rd.lt310
  br i1 %a.rd.bounds311, label %a.rd.ok303, label %a.rd.err.oob305

a.rd.ok303:                                       ; preds = %a.rd.check302
  %a.rd.data312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 1
  %a.rd.data313 = load ptr, ptr %a.rd.data312, align 8
  %a.rd.elem.gep314 = getelementptr i64, ptr %a.rd.data313, i64 %var.load300
  %a.rd.elem315 = load i64, ptr %a.rd.elem.gep314, align 8
  br label %a.rd.done306

a.rd.err.null304:                                 ; preds = %a.after291
  %arena.cur316 = call ptr @dva_arena_current()
  %err.alloc317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 56)
  %err.code.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 0
  store i64 4011, ptr %err.code.gep318, align 8
  %err.msg.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep319, align 8
  %err.file.gep320 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep320, align 8
  %err.line.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 3
  store i64 216, ptr %err.line.gep321, align 8
  %err.col.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 4
  store i64 22, ptr %err.col.gep322, align 8
  %err.ctx.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc317, i32 0, i32 5
  %err.ctx0.gep324 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep323, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep324, align 8
  %err.ctx1.gep325 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep323, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep325, align 8
  %err.p2i326 = ptrtoint ptr %err.alloc317 to i64
  br label %a.rd.done306

a.rd.err.oob305:                                  ; preds = %a.rd.check302
  %arena.cur327 = call ptr @dva_arena_current()
  %err.alloc328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 56)
  %err.code.gep329 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 0
  store i64 4011, ptr %err.code.gep329, align 8
  %err.msg.gep330 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep330, align 8
  %err.file.gep331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep331, align 8
  %err.line.gep332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 3
  store i64 216, ptr %err.line.gep332, align 8
  %err.col.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 4
  store i64 22, ptr %err.col.gep333, align 8
  %err.ctx.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc328, i32 0, i32 5
  %err.ctx0.gep335 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep334, i32 0, i32 0
  store i64 %var.load300, ptr %err.ctx0.gep335, align 8
  %err.ctx1.gep336 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep334, i32 0, i32 1
  store i64 %a.rd.len308, ptr %err.ctx1.gep336, align 8
  %err.p2i337 = ptrtoint ptr %err.alloc328 to i64
  br label %a.rd.done306

a.rd.done306:                                     ; preds = %a.rd.err.oob305, %a.rd.err.null304, %a.rd.ok303
  %a.rd.tag338 = phi i1 [ true, %a.rd.ok303 ], [ false, %a.rd.err.null304 ], [ false, %a.rd.err.oob305 ]
  %a.rd.pay339 = phi i64 [ %a.rd.elem315, %a.rd.ok303 ], [ %err.p2i326, %a.rd.err.null304 ], [ %err.p2i337, %a.rd.err.oob305 ]
  %ram.tag340 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag338, 0
  %ram.pay341 = insertvalue { i1, i64 } %ram.tag340, i64 %a.rd.pay339, 1
  %ram.tag342 = extractvalue { i1, i64 } %ram.pay341, 0
  br i1 %ram.tag342, label %choice.then343, label %choice.else344

choice.then343:                                   ; preds = %a.rd.done306
  %ram.pay346 = extractvalue { i1, i64 } %ram.pay341, 1
  %pay.ptr347 = inttoptr i64 %ram.pay346 to ptr
  store ptr %pay.ptr347, ptr %var._348, align 8
  br label %choice.exit345

choice.else344:                                   ; preds = %a.rd.done306
  %ram.pay349 = extractvalue { i1, i64 } %ram.pay341, 1
  %pay.ptr350 = inttoptr i64 %ram.pay349 to ptr
  store ptr %pay.ptr350, ptr %var._351, align 8
  %arena.cur352 = call ptr @dva_arena_current()
  %enum.alloc353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 16)
  %tag.gep354 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc353, i32 0, i32 0
  store i64 0, ptr %tag.gep354, align 8
  %pay.gep355 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc353, i32 0, i32 1
  %arena.cur356 = call ptr @dva_arena_current()
  %enum.pay.alloc357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 8)
  store i64 0, ptr %enum.pay.alloc357, align 8
  store ptr %enum.pay.alloc357, ptr %pay.gep355, align 8
  br label %choice.exit345

choice.exit345:                                   ; preds = %choice.else344, %choice.then343
  %choice.res358 = phi ptr [ %pay.ptr347, %choice.then343 ], [ %enum.alloc353, %choice.else344 ]
  store ptr %choice.res358, ptr %var.st1, align 8
  %var.load359 = load ptr, ptr %var.st1, align 8
  %tag.gep363 = getelementptr inbounds { i64, ptr }, ptr %var.load359, i32 0, i32 0
  %tag.id364 = load i64, ptr %tag.gep363, align 8
  %tag.match365 = icmp eq i64 %tag.id364, 6
  br i1 %tag.match365, label %choice.case361, label %choice.next362

choice.exit360:                                   ; preds = %choice.next362, %choice.exit481
  br label %loop.latch.21

choice.case361:                                   ; preds = %choice.exit345
  %pay.gep366 = getelementptr inbounds { i64, ptr }, ptr %var.load359, i32 0, i32 1
  %payload.ptr367 = load ptr, ptr %pay.gep366, align 8
  store ptr %payload.ptr367, ptr %var.a1, align 8
  %var.load368 = load ptr, ptr %var.a1, align 8
  %call.res369 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load368)
  store i1 %call.res369, ptr %var.is_fwd1, align 1
  %var.load370 = load ptr, ptr %var.gen_names, align 8
  %var.load371 = load ptr, ptr %var.a1, align 8
  %fld.gep372 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load371, i32 0, i32 0
  %fld.load373 = load ptr, ptr %fld.gep372, align 8
  %m.cap374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load370, i32 0, i32 1
  %m.cap375 = load i64, ptr %m.cap374, align 8
  %m.keys376 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load370, i32 0, i32 2
  %m.keys377 = load ptr, ptr %m.keys376, align 8
  %m.states378 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load370, i32 0, i32 4
  %m.states379 = load ptr, ptr %m.states378, align 8
  %mk.data380 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.data381 = load ptr, ptr %mk.data380, align 8
  %mk.len382 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.len383 = load i64, ptr %mk.len382, align 8
  %mk.len384 = and i64 %mk.len383, 281474976710655
  %str.tag385 = lshr i64 %mk.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

choice.next362:                                   ; preds = %choice.exit345
  br label %choice.exit360

str_gen_check387:                                 ; preds = %choice.case361
  %arena.gen390 = call ptr @dva_arena_current()
  %arena.gen391 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen390, i32 0, i32 4
  %arena.gen392 = load i64, ptr %arena.gen391, align 8
  %str.tag.match393 = icmp eq i64 %str.tag385, %arena.gen392
  br i1 %str.tag.match393, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %choice.case361
  %hash.str394 = call i64 @dva_hash_string(ptr %mk.data381, i64 %mk.len384)
  %m.capm1395 = sub i64 %m.cap375, 1
  %m.idx0396 = and i64 %hash.str394, %m.capm1395
  br label %m.mem.loop

str_stale389:                                     ; preds = %str_gen_check387
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok388
  %m.mem.idx = phi i64 [ %m.idx0396, %str_ok388 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.state.gep = getelementptr i8, ptr %m.states379, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.is.tomb397 = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.empty, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  br i1 %m.is.tomb397, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys377, i64 %m.mem.idx
  %mk.stored398 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen399 = getelementptr inbounds { i64, ptr }, ptr %mk.stored398, i32 0, i32 0
  %mk.slen400 = load i64, ptr %mk.slen399, align 8
  %mk.slen401 = and i64 %mk.slen400, 281474976710655
  %str.tag402 = lshr i64 %mk.slen400, 48
  %str.immortal403 = icmp eq i64 %str.tag402, 0
  br i1 %str.immortal403, label %str_ok405, label %str_gen_check404

m.mem.next:                                       ; preds = %str_ok419, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1395
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load431 = load ptr, ptr %var.a1, align 8
  %fld.gep432 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load431, i32 0, i32 0
  %fld.load433 = load ptr, ptr %fld.gep432, align 8
  store ptr %fld.load433, ptr %var.name1, align 8
  %var.load434 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load434, true
  br i1 %nottmp, label %and.22.then, label %and.22.else

str_gen_check404:                                 ; preds = %m.mem.found
  %arena.gen407 = call ptr @dva_arena_current()
  %arena.gen408 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen407, i32 0, i32 4
  %arena.gen409 = load i64, ptr %arena.gen408, align 8
  %str.tag.match410 = icmp eq i64 %str.tag402, %arena.gen409
  br i1 %str.tag.match410, label %str_ok405, label %str_stale406

str_ok405:                                        ; preds = %str_stale406, %str_gen_check404, %m.mem.found
  %mk.sdata411 = getelementptr inbounds { i64, ptr }, ptr %mk.stored398, i32 0, i32 1
  %mk.sdata412 = load ptr, ptr %mk.sdata411, align 8
  %mk.nlen413 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.nlen414 = load i64, ptr %mk.nlen413, align 8
  %mk.nlen415 = and i64 %mk.nlen414, 281474976710655
  %str.tag416 = lshr i64 %mk.nlen414, 48
  %str.immortal417 = icmp eq i64 %str.tag416, 0
  br i1 %str.immortal417, label %str_ok419, label %str_gen_check418

str_stale406:                                     ; preds = %str_gen_check404
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok405

str_gen_check418:                                 ; preds = %str_ok405
  %arena.gen421 = call ptr @dva_arena_current()
  %arena.gen422 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen421, i32 0, i32 4
  %arena.gen423 = load i64, ptr %arena.gen422, align 8
  %str.tag.match424 = icmp eq i64 %str.tag416, %arena.gen423
  br i1 %str.tag.match424, label %str_ok419, label %str_stale420

str_ok419:                                        ; preds = %str_stale420, %str_gen_check418, %str_ok405
  %mk.ndata425 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.ndata426 = load ptr, ptr %mk.ndata425, align 8
  %mk.lenseq427 = icmp eq i64 %mk.slen401, %mk.nlen415
  %mk.memcmp428 = call i32 @memcmp(ptr %mk.sdata412, ptr %mk.ndata426, i64 %mk.nlen415)
  %mk.cmpeq429 = icmp eq i32 %mk.memcmp428, 0
  %mk.eq430 = and i1 %mk.lenseq427, %mk.cmpeq429
  br i1 %mk.eq430, label %m.mem.hit, label %m.mem.next

str_stale420:                                     ; preds = %str_gen_check418
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok419

m.mem.hit:                                        ; preds = %str_ok419
  br label %m.mem.done

and.22.then:                                      ; preds = %m.mem.done
  %var.load435 = load i1, ptr %var.is_gen1, align 1
  %nottmp436 = xor i1 %var.load435, true
  br label %and.22.exit

and.22.else:                                      ; preds = %m.mem.done
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %nottmp436, %and.22.then ], [ %nottmp, %and.22.else ]
  br i1 %and.22.phi, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %and.22.exit
  %var.load437 = load ptr, ptr %var.a1, align 8
  %fld.gep438 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load437, i32 0, i32 2
  %fld.load439 = load i1, ptr %fld.gep438, align 1
  %nottmp440 = xor i1 %fld.load439, true
  br label %and.23.exit

and.23.else:                                      ; preds = %and.22.exit
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp440, %and.23.then ], [ %and.22.phi, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

and.24.then:                                      ; preds = %and.23.exit
  %var.load441 = load ptr, ptr %var.a1, align 8
  %fld.gep442 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load441, i32 0, i32 4
  %fld.load443 = load i1, ptr %fld.gep442, align 1
  %nottmp444 = xor i1 %fld.load443, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp444, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %and.24.exit
  %var.load445 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len446 = getelementptr inbounds { i64, ptr }, ptr %var.load445, i32 0, i32 0
  %eq.lhs.len447 = load i64, ptr %eq.lhs.len446, align 8
  %eq.lhs.len448 = and i64 %eq.lhs.len447, 281474976710655
  %str.tag449 = lshr i64 %eq.lhs.len447, 48
  %str.immortal450 = icmp eq i64 %str.tag449, 0
  br i1 %str.immortal450, label %str_ok452, label %str_gen_check451

and.25.else:                                      ; preds = %and.24.exit
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %str.eq.merge472
  %and.25.phi = phi i1 [ %str.neq479, %str.eq.merge472 ], [ %and.24.phi, %and.25.else ]
  br i1 %and.25.phi, label %choice.then480, label %choice.exit481

str_gen_check451:                                 ; preds = %and.25.then
  %arena.gen454 = call ptr @dva_arena_current()
  %arena.gen455 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen454, i32 0, i32 4
  %arena.gen456 = load i64, ptr %arena.gen455, align 8
  %str.tag.match457 = icmp eq i64 %str.tag449, %arena.gen456
  br i1 %str.tag.match457, label %str_ok452, label %str_stale453

str_ok452:                                        ; preds = %str_stale453, %str_gen_check451, %and.25.then
  %eq.rhs.len458 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len459 = and i64 %eq.rhs.len458, 281474976710655
  %str.tag460 = lshr i64 %eq.rhs.len458, 48
  %str.immortal461 = icmp eq i64 %str.tag460, 0
  br i1 %str.immortal461, label %str_ok463, label %str_gen_check462

str_stale453:                                     ; preds = %str_gen_check451
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok452

str_gen_check462:                                 ; preds = %str_ok452
  %arena.gen465 = call ptr @dva_arena_current()
  %arena.gen466 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen465, i32 0, i32 4
  %arena.gen467 = load i64, ptr %arena.gen466, align 8
  %str.tag.match468 = icmp eq i64 %str.tag460, %arena.gen467
  br i1 %str.tag.match468, label %str_ok463, label %str_stale464

str_ok463:                                        ; preds = %str_stale464, %str_gen_check462, %str_ok452
  %eq.len469 = icmp eq i64 %eq.lhs.len448, %eq.rhs.len459
  br i1 %eq.len469, label %str.eq.then470, label %str.eq.else471

str_stale464:                                     ; preds = %str_gen_check462
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok463

str.eq.then470:                                   ; preds = %str_ok463
  %eq.lhs.data473 = getelementptr inbounds { i64, ptr }, ptr %var.load445, i32 0, i32 1
  %eq.lhs.data474 = load ptr, ptr %eq.lhs.data473, align 8
  %eq.rhs.data475 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp476 = call i32 @memcmp(ptr %eq.lhs.data474, ptr %eq.rhs.data475, i64 %eq.lhs.len448)
  %eq.cmp.zero477 = icmp eq i32 %eq.memcmp476, 0
  br label %str.eq.merge472

str.eq.else471:                                   ; preds = %str_ok463
  br label %str.eq.merge472

str.eq.merge472:                                  ; preds = %str.eq.else471, %str.eq.then470
  %str.eq.result478 = phi i1 [ %eq.cmp.zero477, %str.eq.then470 ], [ false, %str.eq.else471 ]
  %str.neq479 = xor i1 %str.eq.result478, true
  br label %and.25.exit

choice.then480:                                   ; preds = %and.25.exit
  %var.load482 = load ptr, ptr %var.def_names, align 8
  %var.load483 = load ptr, ptr %var.name1, align 8
  %m.count484 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  %m.count485 = load i64, ptr %m.count484, align 8
  %m.cap486 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 1
  %m.cap487 = load i64, ptr %m.cap486, align 8
  %m.c.plus488 = add i64 %m.count485, 1
  %m.c.lhs489 = mul i64 %m.c.plus488, 4
  %m.c.rhs490 = mul i64 %m.cap487, 3
  %m.need.grow491 = icmp sgt i64 %m.c.lhs489, %m.c.rhs490
  br i1 %m.need.grow491, label %m.grow492, label %m.ins493

choice.exit481:                                   ; preds = %m.done639, %and.25.exit
  br label %choice.exit360

m.grow492:                                        ; preds = %choice.then480
  %m.old.cap494 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 1
  %m.old.cap495 = load i64, ptr %m.old.cap494, align 8
  %m.old.keys496 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 2
  %m.old.keys497 = load ptr, ptr %m.old.keys496, align 8
  %m.old.vals498 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 3
  %m.old.vals499 = load ptr, ptr %m.old.vals498, align 8
  %m.old.states500 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 4
  %m.old.states501 = load ptr, ptr %m.old.states500, align 8
  %m.new.cap502 = mul i64 %m.old.cap495, 2
  %m.gk.bytes503 = mul i64 %m.new.cap502, 8
  %arena.cur504 = call ptr @dva_arena_current()
  %m.gk505 = call ptr @dva_arena_alloc(ptr %arena.cur504, i64 %m.gk.bytes503)
  %m.gv.bytes506 = mul i64 %m.new.cap502, 8
  %arena.cur507 = call ptr @dva_arena_current()
  %m.gv508 = call ptr @dva_arena_alloc(ptr %arena.cur507, i64 %m.gv.bytes506)
  %arena.cur509 = call ptr @dva_arena_current()
  %m.gs510 = call ptr @dva_arena_alloc(ptr %arena.cur509, i64 %m.new.cap502)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs510, i8 0, i64 %m.new.cap502, i1 false)
  %m.cap.gep511 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 1
  store i64 %m.new.cap502, ptr %m.cap.gep511, align 8
  %m.keys.gep512 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 2
  store ptr %m.gk505, ptr %m.keys.gep512, align 8
  %m.vals.gep513 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 3
  store ptr %m.gv508, ptr %m.vals.gep513, align 8
  %m.states.gep514 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 4
  store ptr %m.gs510, ptr %m.states.gep514, align 8
  %m.count.gep515 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  store i64 0, ptr %m.count.gep515, align 8
  br label %m.re.loop516

m.ins493:                                         ; preds = %m.re.done519, %choice.then480
  %m.cap611 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 1
  %m.cap612 = load i64, ptr %m.cap611, align 8
  %m.keys613 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 2
  %m.keys614 = load ptr, ptr %m.keys613, align 8
  %m.vals615 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 3
  %m.vals616 = load ptr, ptr %m.vals615, align 8
  %m.states617 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 4
  %m.states618 = load ptr, ptr %m.states617, align 8
  %mk.data619 = getelementptr inbounds { i64, ptr }, ptr %var.load483, i32 0, i32 1
  %mk.data620 = load ptr, ptr %mk.data619, align 8
  %mk.len621 = getelementptr inbounds { i64, ptr }, ptr %var.load483, i32 0, i32 0
  %mk.len622 = load i64, ptr %mk.len621, align 8
  %mk.len623 = and i64 %mk.len622, 281474976710655
  %str.tag624 = lshr i64 %mk.len622, 48
  %str.immortal625 = icmp eq i64 %str.tag624, 0
  br i1 %str.immortal625, label %str_ok627, label %str_gen_check626

m.re.loop516:                                     ; preds = %m.re.cont518, %m.grow492
  %m.re.i520 = phi i64 [ 0, %m.grow492 ], [ %m.re.i.next610, %m.re.cont518 ]
  %m.re.lt521 = icmp slt i64 %m.re.i520, %m.old.cap495
  br i1 %m.re.lt521, label %m.re.body517, label %m.re.done519

m.re.body517:                                     ; preds = %m.re.loop516
  %m.re.state.gep522 = getelementptr i8, ptr %m.old.states501, i64 %m.re.i520
  %m.re.state523 = load i8, ptr %m.re.state.gep522, align 1
  %m.re.occ524 = icmp eq i8 %m.re.state523, 1
  br i1 %m.re.occ524, label %m.re.ins525, label %m.re.cont518

m.re.cont518:                                     ; preds = %m.done558, %m.re.body517
  %m.re.i.next610 = add i64 %m.re.i520, 1
  br label %m.re.loop516

m.re.done519:                                     ; preds = %m.re.loop516
  br label %m.ins493

m.re.ins525:                                      ; preds = %m.re.body517
  %m.re.key.slot526 = getelementptr ptr, ptr %m.old.keys497, i64 %m.re.i520
  %m.re.val.slot527 = getelementptr i64, ptr %m.old.vals499, i64 %m.re.i520
  %m.re.key528 = load ptr, ptr %m.re.key.slot526, align 8
  %m.re.val529 = load i64, ptr %m.re.val.slot527, align 8
  %m.cap530 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 1
  %m.cap531 = load i64, ptr %m.cap530, align 8
  %m.keys532 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 2
  %m.keys533 = load ptr, ptr %m.keys532, align 8
  %m.vals534 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 3
  %m.vals535 = load ptr, ptr %m.vals534, align 8
  %m.states536 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 4
  %m.states537 = load ptr, ptr %m.states536, align 8
  %mk.data538 = getelementptr inbounds { i64, ptr }, ptr %m.re.key528, i32 0, i32 1
  %mk.data539 = load ptr, ptr %mk.data538, align 8
  %mk.len540 = getelementptr inbounds { i64, ptr }, ptr %m.re.key528, i32 0, i32 0
  %mk.len541 = load i64, ptr %mk.len540, align 8
  %mk.len542 = and i64 %mk.len541, 281474976710655
  %str.tag543 = lshr i64 %mk.len541, 48
  %str.immortal544 = icmp eq i64 %str.tag543, 0
  br i1 %str.immortal544, label %str_ok546, label %str_gen_check545

str_gen_check545:                                 ; preds = %m.re.ins525
  %arena.gen548 = call ptr @dva_arena_current()
  %arena.gen549 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen548, i32 0, i32 4
  %arena.gen550 = load i64, ptr %arena.gen549, align 8
  %str.tag.match551 = icmp eq i64 %str.tag543, %arena.gen550
  br i1 %str.tag.match551, label %str_ok546, label %str_stale547

str_ok546:                                        ; preds = %str_stale547, %str_gen_check545, %m.re.ins525
  %hash.str552 = call i64 @dva_hash_string(ptr %mk.data539, i64 %mk.len542)
  %m.capm1553 = sub i64 %m.cap531, 1
  %m.idx0554 = and i64 %hash.str552, %m.capm1553
  br label %m.loop555

str_stale547:                                     ; preds = %str_gen_check545
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok546

m.loop555:                                        ; preds = %m.next599, %str_ok546
  %m.idx559 = phi i64 [ %m.idx0554, %str_ok546 ], [ %m.idx.next603, %m.next599 ]
  %m.state.gep560 = getelementptr i8, ptr %m.states537, i64 %m.idx559
  %m.state561 = load i8, ptr %m.state.gep560, align 1
  %m.is.empty562 = icmp eq i8 %m.state561, 0
  %m.is.tomb563 = icmp eq i8 %m.state561, 2
  %m.is.free564 = or i1 %m.is.empty562, %m.is.tomb563
  br i1 %m.is.free564, label %m.empty557, label %m.found556

m.found556:                                       ; preds = %m.loop555
  %m.key.slot565 = getelementptr ptr, ptr %m.keys533, i64 %m.idx559
  %mk.stored566 = load ptr, ptr %m.key.slot565, align 8
  %mk.slen567 = getelementptr inbounds { i64, ptr }, ptr %mk.stored566, i32 0, i32 0
  %mk.slen568 = load i64, ptr %mk.slen567, align 8
  %mk.slen569 = and i64 %mk.slen568, 281474976710655
  %str.tag570 = lshr i64 %mk.slen568, 48
  %str.immortal571 = icmp eq i64 %str.tag570, 0
  br i1 %str.immortal571, label %str_ok573, label %str_gen_check572

m.empty557:                                       ; preds = %m.loop555
  %m.key.slot604 = getelementptr ptr, ptr %m.keys533, i64 %m.idx559
  store ptr %m.re.key528, ptr %m.key.slot604, align 8
  %m.val.slot605 = getelementptr i64, ptr %m.vals535, i64 %m.idx559
  store i64 %m.re.val529, ptr %m.val.slot605, align 8
  store i8 1, ptr %m.state.gep560, align 1
  %m.count606 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  %m.count607 = load i64, ptr %m.count606, align 8
  %m.count.next608 = add i64 %m.count607, 1
  %m.count.gep609 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  store i64 %m.count.next608, ptr %m.count.gep609, align 8
  br label %m.done558

m.done558:                                        ; preds = %m.empty557, %m.overwrite600
  br label %m.re.cont518

str_gen_check572:                                 ; preds = %m.found556
  %arena.gen575 = call ptr @dva_arena_current()
  %arena.gen576 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen575, i32 0, i32 4
  %arena.gen577 = load i64, ptr %arena.gen576, align 8
  %str.tag.match578 = icmp eq i64 %str.tag570, %arena.gen577
  br i1 %str.tag.match578, label %str_ok573, label %str_stale574

str_ok573:                                        ; preds = %str_stale574, %str_gen_check572, %m.found556
  %mk.sdata579 = getelementptr inbounds { i64, ptr }, ptr %mk.stored566, i32 0, i32 1
  %mk.sdata580 = load ptr, ptr %mk.sdata579, align 8
  %mk.nlen581 = getelementptr inbounds { i64, ptr }, ptr %m.re.key528, i32 0, i32 0
  %mk.nlen582 = load i64, ptr %mk.nlen581, align 8
  %mk.nlen583 = and i64 %mk.nlen582, 281474976710655
  %str.tag584 = lshr i64 %mk.nlen582, 48
  %str.immortal585 = icmp eq i64 %str.tag584, 0
  br i1 %str.immortal585, label %str_ok587, label %str_gen_check586

str_stale574:                                     ; preds = %str_gen_check572
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok573

str_gen_check586:                                 ; preds = %str_ok573
  %arena.gen589 = call ptr @dva_arena_current()
  %arena.gen590 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen589, i32 0, i32 4
  %arena.gen591 = load i64, ptr %arena.gen590, align 8
  %str.tag.match592 = icmp eq i64 %str.tag584, %arena.gen591
  br i1 %str.tag.match592, label %str_ok587, label %str_stale588

str_ok587:                                        ; preds = %str_stale588, %str_gen_check586, %str_ok573
  %mk.ndata593 = getelementptr inbounds { i64, ptr }, ptr %m.re.key528, i32 0, i32 1
  %mk.ndata594 = load ptr, ptr %mk.ndata593, align 8
  %mk.lenseq595 = icmp eq i64 %mk.slen569, %mk.nlen583
  %mk.memcmp596 = call i32 @memcmp(ptr %mk.sdata580, ptr %mk.ndata594, i64 %mk.nlen583)
  %mk.cmpeq597 = icmp eq i32 %mk.memcmp596, 0
  %mk.eq598 = and i1 %mk.lenseq595, %mk.cmpeq597
  br i1 %mk.eq598, label %m.overwrite600, label %m.next599

str_stale588:                                     ; preds = %str_gen_check586
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok587

m.next599:                                        ; preds = %str_ok587
  %m.idx.add602 = add i64 %m.idx559, 1
  %m.idx.next603 = and i64 %m.idx.add602, %m.capm1553
  br label %m.loop555

m.overwrite600:                                   ; preds = %str_ok587
  %m.val.slot601 = getelementptr i64, ptr %m.vals535, i64 %m.idx559
  store i64 %m.re.val529, ptr %m.val.slot601, align 8
  br label %m.done558

str_gen_check626:                                 ; preds = %m.ins493
  %arena.gen629 = call ptr @dva_arena_current()
  %arena.gen630 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen629, i32 0, i32 4
  %arena.gen631 = load i64, ptr %arena.gen630, align 8
  %str.tag.match632 = icmp eq i64 %str.tag624, %arena.gen631
  br i1 %str.tag.match632, label %str_ok627, label %str_stale628

str_ok627:                                        ; preds = %str_stale628, %str_gen_check626, %m.ins493
  %hash.str633 = call i64 @dva_hash_string(ptr %mk.data620, i64 %mk.len623)
  %m.capm1634 = sub i64 %m.cap612, 1
  %m.idx0635 = and i64 %hash.str633, %m.capm1634
  br label %m.loop636

str_stale628:                                     ; preds = %str_gen_check626
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok627

m.loop636:                                        ; preds = %m.next680, %str_ok627
  %m.idx640 = phi i64 [ %m.idx0635, %str_ok627 ], [ %m.idx.next684, %m.next680 ]
  %m.state.gep641 = getelementptr i8, ptr %m.states618, i64 %m.idx640
  %m.state642 = load i8, ptr %m.state.gep641, align 1
  %m.is.empty643 = icmp eq i8 %m.state642, 0
  %m.is.tomb644 = icmp eq i8 %m.state642, 2
  %m.is.free645 = or i1 %m.is.empty643, %m.is.tomb644
  br i1 %m.is.free645, label %m.empty638, label %m.found637

m.found637:                                       ; preds = %m.loop636
  %m.key.slot646 = getelementptr ptr, ptr %m.keys614, i64 %m.idx640
  %mk.stored647 = load ptr, ptr %m.key.slot646, align 8
  %mk.slen648 = getelementptr inbounds { i64, ptr }, ptr %mk.stored647, i32 0, i32 0
  %mk.slen649 = load i64, ptr %mk.slen648, align 8
  %mk.slen650 = and i64 %mk.slen649, 281474976710655
  %str.tag651 = lshr i64 %mk.slen649, 48
  %str.immortal652 = icmp eq i64 %str.tag651, 0
  br i1 %str.immortal652, label %str_ok654, label %str_gen_check653

m.empty638:                                       ; preds = %m.loop636
  %m.key.slot685 = getelementptr ptr, ptr %m.keys614, i64 %m.idx640
  store ptr %var.load483, ptr %m.key.slot685, align 8
  %m.val.slot686 = getelementptr i64, ptr %m.vals616, i64 %m.idx640
  store i64 1, ptr %m.val.slot686, align 8
  store i8 1, ptr %m.state.gep641, align 1
  %m.count687 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  %m.count688 = load i64, ptr %m.count687, align 8
  %m.count.next689 = add i64 %m.count688, 1
  %m.count.gep690 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load482, i32 0, i32 0
  store i64 %m.count.next689, ptr %m.count.gep690, align 8
  br label %m.done639

m.done639:                                        ; preds = %m.empty638, %m.overwrite681
  br label %choice.exit481

str_gen_check653:                                 ; preds = %m.found637
  %arena.gen656 = call ptr @dva_arena_current()
  %arena.gen657 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen656, i32 0, i32 4
  %arena.gen658 = load i64, ptr %arena.gen657, align 8
  %str.tag.match659 = icmp eq i64 %str.tag651, %arena.gen658
  br i1 %str.tag.match659, label %str_ok654, label %str_stale655

str_ok654:                                        ; preds = %str_stale655, %str_gen_check653, %m.found637
  %mk.sdata660 = getelementptr inbounds { i64, ptr }, ptr %mk.stored647, i32 0, i32 1
  %mk.sdata661 = load ptr, ptr %mk.sdata660, align 8
  %mk.nlen662 = getelementptr inbounds { i64, ptr }, ptr %var.load483, i32 0, i32 0
  %mk.nlen663 = load i64, ptr %mk.nlen662, align 8
  %mk.nlen664 = and i64 %mk.nlen663, 281474976710655
  %str.tag665 = lshr i64 %mk.nlen663, 48
  %str.immortal666 = icmp eq i64 %str.tag665, 0
  br i1 %str.immortal666, label %str_ok668, label %str_gen_check667

str_stale655:                                     ; preds = %str_gen_check653
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok654

str_gen_check667:                                 ; preds = %str_ok654
  %arena.gen670 = call ptr @dva_arena_current()
  %arena.gen671 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen670, i32 0, i32 4
  %arena.gen672 = load i64, ptr %arena.gen671, align 8
  %str.tag.match673 = icmp eq i64 %str.tag665, %arena.gen672
  br i1 %str.tag.match673, label %str_ok668, label %str_stale669

str_ok668:                                        ; preds = %str_stale669, %str_gen_check667, %str_ok654
  %mk.ndata674 = getelementptr inbounds { i64, ptr }, ptr %var.load483, i32 0, i32 1
  %mk.ndata675 = load ptr, ptr %mk.ndata674, align 8
  %mk.lenseq676 = icmp eq i64 %mk.slen650, %mk.nlen664
  %mk.memcmp677 = call i32 @memcmp(ptr %mk.sdata661, ptr %mk.ndata675, i64 %mk.nlen664)
  %mk.cmpeq678 = icmp eq i32 %mk.memcmp677, 0
  %mk.eq679 = and i1 %mk.lenseq676, %mk.cmpeq678
  br i1 %mk.eq679, label %m.overwrite681, label %m.next680

str_stale669:                                     ; preds = %str_gen_check667
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok668

m.next680:                                        ; preds = %str_ok668
  %m.idx.add683 = add i64 %m.idx640, 1
  %m.idx.next684 = and i64 %m.idx.add683, %m.capm1634
  br label %m.loop636

m.overwrite681:                                   ; preds = %str_ok668
  %m.val.slot682 = getelementptr i64, ptr %m.vals616, i64 %m.idx640
  store i64 1, ptr %m.val.slot682, align 8
  br label %m.done639

a.create696:                                      ; preds = %loop.exit.21
  %arena.cur698 = call ptr @dva_arena_current()
  %a.create699 = call ptr @dva_arena_alloc(ptr %arena.cur698, i64 24)
  %arena.cur700 = call ptr @dva_arena_current()
  %a.buf701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 128)
  %a.len.gep702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create699, i32 0, i32 0
  store i64 0, ptr %a.len.gep702, align 8
  %a.data.gep703 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create699, i32 0, i32 1
  store ptr %a.buf701, ptr %a.data.gep703, align 8
  %a.cap.gep704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create699, i32 0, i32 2
  store i64 16, ptr %a.cap.gep704, align 8
  store ptr %a.create699, ptr %var.stmts, align 8
  br label %a.after697

a.after697:                                       ; preds = %a.create696, %loop.exit.21
  %a.load2705 = load ptr, ptr %var.stmts, align 8
  %a.len.query706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2705, i32 0, i32 0
  %a.len.query707 = load i64, ptr %a.len.query706, align 8
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %a.after697
  %counter.load708 = load i64, ptr %loop.idx.26, align 8
  %loop.cond709 = icmp slt i64 %counter.load708, %a.len.query707
  br i1 %loop.cond709, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i710 = sub i64 %counter.load708, 0
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i710, ptr %var._i711, align 8
  store i64 %counter.load708, ptr %var._712, align 8
  store i64 %counter.load708, ptr %var.j, align 8
  %var.load713 = load ptr, ptr %var.stmts, align 8
  %a.load714 = load ptr, ptr %var.stmts, align 8
  %a.null715 = icmp eq ptr %a.load714, null
  br i1 %a.null715, label %a.create716, label %a.after717

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit786
  %step.val1390 = load i64, ptr %loop.step.26, align 8
  %loop.next1391 = add i64 %counter.load708, %step.val1390
  store i64 %loop.next1391, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  %var.load1392 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1392

a.create716:                                      ; preds = %loop.body.26
  %arena.cur718 = call ptr @dva_arena_current()
  %a.create719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 24)
  %arena.cur720 = call ptr @dva_arena_current()
  %a.buf721 = call ptr @dva_arena_alloc(ptr %arena.cur720, i64 128)
  %a.len.gep722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 0
  store i64 0, ptr %a.len.gep722, align 8
  %a.data.gep723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 1
  store ptr %a.buf721, ptr %a.data.gep723, align 8
  %a.cap.gep724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 2
  store i64 16, ptr %a.cap.gep724, align 8
  store ptr %a.create719, ptr %var.stmts, align 8
  br label %a.after717

a.after717:                                       ; preds = %a.create716, %loop.body.26
  %a.load2725 = load ptr, ptr %var.stmts, align 8
  %var.load726 = load i64, ptr %var.j, align 8
  %a.rd.nonnull727 = icmp ne ptr %a.load2725, null
  br i1 %a.rd.nonnull727, label %a.rd.check728, label %a.rd.err.null730

a.rd.check728:                                    ; preds = %a.after717
  %a.rd.len733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 0
  %a.rd.len734 = load i64, ptr %a.rd.len733, align 8
  %a.rd.ge0735 = icmp sge i64 %var.load726, 0
  %a.rd.lt736 = icmp slt i64 %var.load726, %a.rd.len734
  %a.rd.bounds737 = and i1 %a.rd.ge0735, %a.rd.lt736
  br i1 %a.rd.bounds737, label %a.rd.ok729, label %a.rd.err.oob731

a.rd.ok729:                                       ; preds = %a.rd.check728
  %a.rd.data738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 1
  %a.rd.data739 = load ptr, ptr %a.rd.data738, align 8
  %a.rd.elem.gep740 = getelementptr i64, ptr %a.rd.data739, i64 %var.load726
  %a.rd.elem741 = load i64, ptr %a.rd.elem.gep740, align 8
  br label %a.rd.done732

a.rd.err.null730:                                 ; preds = %a.after717
  %arena.cur742 = call ptr @dva_arena_current()
  %err.alloc743 = call ptr @dva_arena_alloc(ptr %arena.cur742, i64 56)
  %err.code.gep744 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 0
  store i64 4011, ptr %err.code.gep744, align 8
  %err.msg.gep745 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep745, align 8
  %err.file.gep746 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep746, align 8
  %err.line.gep747 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 3
  store i64 226, ptr %err.line.gep747, align 8
  %err.col.gep748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 4
  store i64 22, ptr %err.col.gep748, align 8
  %err.ctx.gep749 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc743, i32 0, i32 5
  %err.ctx0.gep750 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep749, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep750, align 8
  %err.ctx1.gep751 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep749, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep751, align 8
  %err.p2i752 = ptrtoint ptr %err.alloc743 to i64
  br label %a.rd.done732

a.rd.err.oob731:                                  ; preds = %a.rd.check728
  %arena.cur753 = call ptr @dva_arena_current()
  %err.alloc754 = call ptr @dva_arena_alloc(ptr %arena.cur753, i64 56)
  %err.code.gep755 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 0
  store i64 4011, ptr %err.code.gep755, align 8
  %err.msg.gep756 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep756, align 8
  %err.file.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep757, align 8
  %err.line.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 3
  store i64 226, ptr %err.line.gep758, align 8
  %err.col.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 4
  store i64 22, ptr %err.col.gep759, align 8
  %err.ctx.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 5
  %err.ctx0.gep761 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep760, i32 0, i32 0
  store i64 %var.load726, ptr %err.ctx0.gep761, align 8
  %err.ctx1.gep762 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep760, i32 0, i32 1
  store i64 %a.rd.len734, ptr %err.ctx1.gep762, align 8
  %err.p2i763 = ptrtoint ptr %err.alloc754 to i64
  br label %a.rd.done732

a.rd.done732:                                     ; preds = %a.rd.err.oob731, %a.rd.err.null730, %a.rd.ok729
  %a.rd.tag764 = phi i1 [ true, %a.rd.ok729 ], [ false, %a.rd.err.null730 ], [ false, %a.rd.err.oob731 ]
  %a.rd.pay765 = phi i64 [ %a.rd.elem741, %a.rd.ok729 ], [ %err.p2i752, %a.rd.err.null730 ], [ %err.p2i763, %a.rd.err.oob731 ]
  %ram.tag766 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag764, 0
  %ram.pay767 = insertvalue { i1, i64 } %ram.tag766, i64 %a.rd.pay765, 1
  %ram.tag768 = extractvalue { i1, i64 } %ram.pay767, 0
  br i1 %ram.tag768, label %choice.then769, label %choice.else770

choice.then769:                                   ; preds = %a.rd.done732
  %ram.pay772 = extractvalue { i1, i64 } %ram.pay767, 1
  %pay.ptr773 = inttoptr i64 %ram.pay772 to ptr
  store ptr %pay.ptr773, ptr %var._774, align 8
  br label %choice.exit771

choice.else770:                                   ; preds = %a.rd.done732
  %ram.pay775 = extractvalue { i1, i64 } %ram.pay767, 1
  %pay.ptr776 = inttoptr i64 %ram.pay775 to ptr
  store ptr %pay.ptr776, ptr %var._777, align 8
  %arena.cur778 = call ptr @dva_arena_current()
  %enum.alloc779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 16)
  %tag.gep780 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc779, i32 0, i32 0
  store i64 0, ptr %tag.gep780, align 8
  %pay.gep781 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc779, i32 0, i32 1
  %arena.cur782 = call ptr @dva_arena_current()
  %enum.pay.alloc783 = call ptr @dva_arena_alloc(ptr %arena.cur782, i64 8)
  store i64 0, ptr %enum.pay.alloc783, align 8
  store ptr %enum.pay.alloc783, ptr %pay.gep781, align 8
  br label %choice.exit771

choice.exit771:                                   ; preds = %choice.else770, %choice.then769
  %choice.res784 = phi ptr [ %pay.ptr773, %choice.then769 ], [ %enum.alloc779, %choice.else770 ]
  store ptr %choice.res784, ptr %var.st2, align 8
  %var.load785 = load ptr, ptr %var.st2, align 8
  %tag.gep789 = getelementptr inbounds { i64, ptr }, ptr %var.load785, i32 0, i32 0
  %tag.id790 = load i64, ptr %tag.gep789, align 8
  %tag.match791 = icmp eq i64 %tag.id790, 6
  br i1 %tag.match791, label %choice.case787, label %choice.next788

choice.exit786:                                   ; preds = %choice.next788, %choice.exit923
  br label %loop.latch.26

choice.case787:                                   ; preds = %choice.exit771
  %pay.gep792 = getelementptr inbounds { i64, ptr }, ptr %var.load785, i32 0, i32 1
  %payload.ptr793 = load ptr, ptr %pay.gep792, align 8
  store ptr %payload.ptr793, ptr %var.a2, align 8
  %var.load794 = load ptr, ptr %var.a2, align 8
  %call.res795 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load794)
  store i1 %call.res795, ptr %var.is_fwd2, align 1
  %var.load796 = load ptr, ptr %var.gen_names, align 8
  %var.load797 = load ptr, ptr %var.a2, align 8
  %fld.gep798 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load797, i32 0, i32 0
  %fld.load799 = load ptr, ptr %fld.gep798, align 8
  %m.cap800 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load796, i32 0, i32 1
  %m.cap801 = load i64, ptr %m.cap800, align 8
  %m.keys802 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load796, i32 0, i32 2
  %m.keys803 = load ptr, ptr %m.keys802, align 8
  %m.states804 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load796, i32 0, i32 4
  %m.states805 = load ptr, ptr %m.states804, align 8
  %mk.data806 = getelementptr inbounds { i64, ptr }, ptr %fld.load799, i32 0, i32 1
  %mk.data807 = load ptr, ptr %mk.data806, align 8
  %mk.len808 = getelementptr inbounds { i64, ptr }, ptr %fld.load799, i32 0, i32 0
  %mk.len809 = load i64, ptr %mk.len808, align 8
  %mk.len810 = and i64 %mk.len809, 281474976710655
  %str.tag811 = lshr i64 %mk.len809, 48
  %str.immortal812 = icmp eq i64 %str.tag811, 0
  br i1 %str.immortal812, label %str_ok814, label %str_gen_check813

choice.next788:                                   ; preds = %choice.exit771
  br label %choice.exit786

str_gen_check813:                                 ; preds = %choice.case787
  %arena.gen816 = call ptr @dva_arena_current()
  %arena.gen817 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen816, i32 0, i32 4
  %arena.gen818 = load i64, ptr %arena.gen817, align 8
  %str.tag.match819 = icmp eq i64 %str.tag811, %arena.gen818
  br i1 %str.tag.match819, label %str_ok814, label %str_stale815

str_ok814:                                        ; preds = %str_stale815, %str_gen_check813, %choice.case787
  %hash.str820 = call i64 @dva_hash_string(ptr %mk.data807, i64 %mk.len810)
  %m.capm1821 = sub i64 %m.cap801, 1
  %m.idx0822 = and i64 %hash.str820, %m.capm1821
  br label %m.mem.loop823

str_stale815:                                     ; preds = %str_gen_check813
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok814

m.mem.loop823:                                    ; preds = %m.mem.next826, %str_ok814
  %m.mem.idx829 = phi i64 [ %m.idx0822, %str_ok814 ], [ %m.mem.idx.next870, %m.mem.next826 ]
  %m.mem.state.gep830 = getelementptr i8, ptr %m.states805, i64 %m.mem.idx829
  %m.mem.state831 = load i8, ptr %m.mem.state.gep830, align 1
  %m.mem.is.empty832 = icmp eq i8 %m.mem.state831, 0
  %m.is.tomb833 = icmp eq i8 %m.mem.state831, 2
  br i1 %m.mem.is.empty832, label %m.mem.miss827, label %m.mem.probe824

m.mem.probe824:                                   ; preds = %m.mem.loop823
  br i1 %m.is.tomb833, label %m.mem.next826, label %m.mem.found825

m.mem.found825:                                   ; preds = %m.mem.probe824
  %m.mem.key.slot834 = getelementptr ptr, ptr %m.keys803, i64 %m.mem.idx829
  %mk.stored835 = load ptr, ptr %m.mem.key.slot834, align 8
  %mk.slen836 = getelementptr inbounds { i64, ptr }, ptr %mk.stored835, i32 0, i32 0
  %mk.slen837 = load i64, ptr %mk.slen836, align 8
  %mk.slen838 = and i64 %mk.slen837, 281474976710655
  %str.tag839 = lshr i64 %mk.slen837, 48
  %str.immortal840 = icmp eq i64 %str.tag839, 0
  br i1 %str.immortal840, label %str_ok842, label %str_gen_check841

m.mem.next826:                                    ; preds = %str_ok856, %m.mem.probe824
  %m.mem.idx.add869 = add i64 %m.mem.idx829, 1
  %m.mem.idx.next870 = and i64 %m.mem.idx.add869, %m.capm1821
  br label %m.mem.loop823

m.mem.miss827:                                    ; preds = %m.mem.loop823
  br label %m.mem.done828

m.mem.done828:                                    ; preds = %m.mem.miss827, %m.mem.hit868
  %m.mem.res871 = phi i1 [ true, %m.mem.hit868 ], [ false, %m.mem.miss827 ]
  store i1 %m.mem.res871, ptr %var.is_gen2, align 1
  %var.load872 = load ptr, ptr %var.a2, align 8
  %fld.gep873 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load872, i32 0, i32 0
  %fld.load874 = load ptr, ptr %fld.gep873, align 8
  store ptr %fld.load874, ptr %var.name2, align 8
  %var.load875 = load i1, ptr %var.is_fwd2, align 1
  %nottmp876 = xor i1 %var.load875, true
  br i1 %nottmp876, label %and.27.then, label %and.27.else

str_gen_check841:                                 ; preds = %m.mem.found825
  %arena.gen844 = call ptr @dva_arena_current()
  %arena.gen845 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen844, i32 0, i32 4
  %arena.gen846 = load i64, ptr %arena.gen845, align 8
  %str.tag.match847 = icmp eq i64 %str.tag839, %arena.gen846
  br i1 %str.tag.match847, label %str_ok842, label %str_stale843

str_ok842:                                        ; preds = %str_stale843, %str_gen_check841, %m.mem.found825
  %mk.sdata848 = getelementptr inbounds { i64, ptr }, ptr %mk.stored835, i32 0, i32 1
  %mk.sdata849 = load ptr, ptr %mk.sdata848, align 8
  %mk.nlen850 = getelementptr inbounds { i64, ptr }, ptr %fld.load799, i32 0, i32 0
  %mk.nlen851 = load i64, ptr %mk.nlen850, align 8
  %mk.nlen852 = and i64 %mk.nlen851, 281474976710655
  %str.tag853 = lshr i64 %mk.nlen851, 48
  %str.immortal854 = icmp eq i64 %str.tag853, 0
  br i1 %str.immortal854, label %str_ok856, label %str_gen_check855

str_stale843:                                     ; preds = %str_gen_check841
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok842

str_gen_check855:                                 ; preds = %str_ok842
  %arena.gen858 = call ptr @dva_arena_current()
  %arena.gen859 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen858, i32 0, i32 4
  %arena.gen860 = load i64, ptr %arena.gen859, align 8
  %str.tag.match861 = icmp eq i64 %str.tag853, %arena.gen860
  br i1 %str.tag.match861, label %str_ok856, label %str_stale857

str_ok856:                                        ; preds = %str_stale857, %str_gen_check855, %str_ok842
  %mk.ndata862 = getelementptr inbounds { i64, ptr }, ptr %fld.load799, i32 0, i32 1
  %mk.ndata863 = load ptr, ptr %mk.ndata862, align 8
  %mk.lenseq864 = icmp eq i64 %mk.slen838, %mk.nlen852
  %mk.memcmp865 = call i32 @memcmp(ptr %mk.sdata849, ptr %mk.ndata863, i64 %mk.nlen852)
  %mk.cmpeq866 = icmp eq i32 %mk.memcmp865, 0
  %mk.eq867 = and i1 %mk.lenseq864, %mk.cmpeq866
  br i1 %mk.eq867, label %m.mem.hit868, label %m.mem.next826

str_stale857:                                     ; preds = %str_gen_check855
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok856

m.mem.hit868:                                     ; preds = %str_ok856
  br label %m.mem.done828

and.27.then:                                      ; preds = %m.mem.done828
  %var.load877 = load i1, ptr %var.is_gen2, align 1
  %nottmp878 = xor i1 %var.load877, true
  br label %and.27.exit

and.27.else:                                      ; preds = %m.mem.done828
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp878, %and.27.then ], [ %nottmp876, %and.27.else ]
  br i1 %and.27.phi, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %and.27.exit
  %var.load879 = load ptr, ptr %var.a2, align 8
  %fld.gep880 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load879, i32 0, i32 2
  %fld.load881 = load i1, ptr %fld.gep880, align 1
  %nottmp882 = xor i1 %fld.load881, true
  br label %and.28.exit

and.28.else:                                      ; preds = %and.27.exit
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp882, %and.28.then ], [ %and.27.phi, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load883 = load ptr, ptr %var.a2, align 8
  %fld.gep884 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load883, i32 0, i32 4
  %fld.load885 = load i1, ptr %fld.gep884, align 1
  %nottmp886 = xor i1 %fld.load885, true
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp886, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load887 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len888 = getelementptr inbounds { i64, ptr }, ptr %var.load887, i32 0, i32 0
  %eq.lhs.len889 = load i64, ptr %eq.lhs.len888, align 8
  %eq.lhs.len890 = and i64 %eq.lhs.len889, 281474976710655
  %str.tag891 = lshr i64 %eq.lhs.len889, 48
  %str.immortal892 = icmp eq i64 %str.tag891, 0
  br i1 %str.immortal892, label %str_ok894, label %str_gen_check893

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %str.eq.merge914
  %and.30.phi = phi i1 [ %str.neq921, %str.eq.merge914 ], [ %and.29.phi, %and.30.else ]
  br i1 %and.30.phi, label %choice.then922, label %choice.exit923

str_gen_check893:                                 ; preds = %and.30.then
  %arena.gen896 = call ptr @dva_arena_current()
  %arena.gen897 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen896, i32 0, i32 4
  %arena.gen898 = load i64, ptr %arena.gen897, align 8
  %str.tag.match899 = icmp eq i64 %str.tag891, %arena.gen898
  br i1 %str.tag.match899, label %str_ok894, label %str_stale895

str_ok894:                                        ; preds = %str_stale895, %str_gen_check893, %and.30.then
  %eq.rhs.len900 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len901 = and i64 %eq.rhs.len900, 281474976710655
  %str.tag902 = lshr i64 %eq.rhs.len900, 48
  %str.immortal903 = icmp eq i64 %str.tag902, 0
  br i1 %str.immortal903, label %str_ok905, label %str_gen_check904

str_stale895:                                     ; preds = %str_gen_check893
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok894

str_gen_check904:                                 ; preds = %str_ok894
  %arena.gen907 = call ptr @dva_arena_current()
  %arena.gen908 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen907, i32 0, i32 4
  %arena.gen909 = load i64, ptr %arena.gen908, align 8
  %str.tag.match910 = icmp eq i64 %str.tag902, %arena.gen909
  br i1 %str.tag.match910, label %str_ok905, label %str_stale906

str_ok905:                                        ; preds = %str_stale906, %str_gen_check904, %str_ok894
  %eq.len911 = icmp eq i64 %eq.lhs.len890, %eq.rhs.len901
  br i1 %eq.len911, label %str.eq.then912, label %str.eq.else913

str_stale906:                                     ; preds = %str_gen_check904
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok905

str.eq.then912:                                   ; preds = %str_ok905
  %eq.lhs.data915 = getelementptr inbounds { i64, ptr }, ptr %var.load887, i32 0, i32 1
  %eq.lhs.data916 = load ptr, ptr %eq.lhs.data915, align 8
  %eq.rhs.data917 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp918 = call i32 @memcmp(ptr %eq.lhs.data916, ptr %eq.rhs.data917, i64 %eq.lhs.len890)
  %eq.cmp.zero919 = icmp eq i32 %eq.memcmp918, 0
  br label %str.eq.merge914

str.eq.else913:                                   ; preds = %str_ok905
  br label %str.eq.merge914

str.eq.merge914:                                  ; preds = %str.eq.else913, %str.eq.then912
  %str.eq.result920 = phi i1 [ %eq.cmp.zero919, %str.eq.then912 ], [ false, %str.eq.else913 ]
  %str.neq921 = xor i1 %str.eq.result920, true
  br label %and.30.exit

choice.then922:                                   ; preds = %and.30.exit
  %arena.cur924 = call ptr @dva_arena_current()
  %a.new925 = call ptr @dva_arena_alloc(ptr %arena.cur924, i64 24)
  %arena.cur926 = call ptr @dva_arena_current()
  %a.buf927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 128)
  %a.len.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new925, i32 0, i32 0
  store i64 0, ptr %a.len.gep928, align 8
  %a.data.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new925, i32 0, i32 1
  store ptr %a.buf927, ptr %a.data.gep929, align 8
  %a.cap.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new925, i32 0, i32 2
  store i64 16, ptr %a.cap.gep930, align 8
  store ptr %a.new925, ptr %var.raw_refs, align 8
  %var.load931 = load ptr, ptr %var.a2, align 8
  %fld.gep932 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load931, i32 0, i32 5
  %fld.load933 = load ptr, ptr %fld.gep932, align 8
  %arena.cur934 = call ptr @dva_arena_current()
  %a.new935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 24)
  %arena.cur936 = call ptr @dva_arena_current()
  %a.buf937 = call ptr @dva_arena_alloc(ptr %arena.cur936, i64 128)
  %a.len.gep938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new935, i32 0, i32 0
  store i64 0, ptr %a.len.gep938, align 8
  %a.data.gep939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new935, i32 0, i32 1
  store ptr %a.buf937, ptr %a.data.gep939, align 8
  %a.cap.gep940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new935, i32 0, i32 2
  store i64 16, ptr %a.cap.gep940, align 8
  %var.load941 = load ptr, ptr %var.raw_refs, align 8
  %a.load942 = load ptr, ptr %var.raw_refs, align 8
  %a.null943 = icmp eq ptr %a.load942, null
  br i1 %a.null943, label %a.create944, label %a.after945

choice.exit923:                                   ; preds = %a.store1376, %and.30.exit
  br label %choice.exit786

a.create944:                                      ; preds = %choice.then922
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
  store ptr %a.create947, ptr %var.raw_refs, align 8
  br label %a.after945

a.after945:                                       ; preds = %a.create944, %choice.then922
  %a.load2953 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load933, ptr %a.new935, ptr %a.load2953)
  %arena.cur954 = call ptr @dva_arena_current()
  %a.new955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 24)
  %arena.cur956 = call ptr @dva_arena_current()
  %a.buf957 = call ptr @dva_arena_alloc(ptr %arena.cur956, i64 128)
  %a.len.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new955, i32 0, i32 0
  store i64 0, ptr %a.len.gep958, align 8
  %a.data.gep959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new955, i32 0, i32 1
  store ptr %a.buf957, ptr %a.data.gep959, align 8
  %a.cap.gep960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new955, i32 0, i32 2
  store i64 16, ptr %a.cap.gep960, align 8
  store ptr %a.new955, ptr %var.filtered_deps, align 8
  %var.load961 = load ptr, ptr %var.name2, align 8
  %call.res962 = call ptr @"dep_graph::decl_module"(ptr %var.load961, i64 0)
  store ptr %call.res962, ptr %var.mod2, align 8
  %var.load963 = load ptr, ptr %var.raw_refs, align 8
  %a.load964 = load ptr, ptr %var.raw_refs, align 8
  %a.null965 = icmp eq ptr %a.load964, null
  br i1 %a.null965, label %a.create966, label %a.after967

a.create966:                                      ; preds = %a.after945
  %arena.cur968 = call ptr @dva_arena_current()
  %a.create969 = call ptr @dva_arena_alloc(ptr %arena.cur968, i64 24)
  %arena.cur970 = call ptr @dva_arena_current()
  %a.buf971 = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 128)
  %a.len.gep972 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create969, i32 0, i32 0
  store i64 0, ptr %a.len.gep972, align 8
  %a.data.gep973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create969, i32 0, i32 1
  store ptr %a.buf971, ptr %a.data.gep973, align 8
  %a.cap.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create969, i32 0, i32 2
  store i64 16, ptr %a.cap.gep974, align 8
  store ptr %a.create969, ptr %var.raw_refs, align 8
  br label %a.after967

a.after967:                                       ; preds = %a.create966, %a.after945
  %a.load2975 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2975, i32 0, i32 0
  %arr.cycle.len976 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2975, i32 0, i32 1
  %arr.cycle.data977 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after967
  %counter.load978 = load i64, ptr %loop.idx.31, align 8
  %loop.cond979 = icmp slt i64 %counter.load978, %arr.cycle.len976
  br i1 %loop.cond979, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i980 = sub i64 %counter.load978, 0
  store i64 1, ptr %loop.step.31, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data977, i64 %counter.load978
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i980, ptr %var._i711, align 8
  store ptr %arr.elem.ptr, ptr %var._712, align 8
  store ptr %arr.elem.ptr, ptr %var.ref_name, align 8
  %var.load981 = load ptr, ptr %var.def_names, align 8
  %var.load982 = load ptr, ptr %var.mod2, align 8
  %var.load983 = load ptr, ptr %var.ref_name, align 8
  %call.res984 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load981, ptr %var.load982, ptr %var.load983)
  store ptr %call.res984, ptr %var.target_ref, align 8
  %var.load985 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len986 = getelementptr inbounds { i64, ptr }, ptr %var.load985, i32 0, i32 0
  %eq.lhs.len987 = load i64, ptr %eq.lhs.len986, align 8
  %eq.lhs.len988 = and i64 %eq.lhs.len987, 281474976710655
  %str.tag989 = lshr i64 %eq.lhs.len987, 48
  %str.immortal990 = icmp eq i64 %str.tag989, 0
  br i1 %str.immortal990, label %str_ok992, label %str_gen_check991

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit1037
  %step.val1055 = load i64, ptr %loop.step.31, align 8
  %loop.next1056 = add i64 %counter.load978, %step.val1055
  store i64 %loop.next1056, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load1057 = load ptr, ptr %var.graph, align 8
  %fld.gep1058 = getelementptr inbounds { ptr, ptr }, ptr %var.load1057, i32 0, i32 1
  %fld.load1059 = load ptr, ptr %fld.gep1058, align 8
  store ptr %fld.load1059, ptr %var.node_indices, align 8
  %var.load1060 = load ptr, ptr %var.node_indices, align 8
  %var.load1061 = load ptr, ptr %var.name2, align 8
  %m.cap1062 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1060, i32 0, i32 1
  %m.cap1063 = load i64, ptr %m.cap1062, align 8
  %m.keys1064 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1060, i32 0, i32 2
  %m.keys1065 = load ptr, ptr %m.keys1064, align 8
  %m.states1066 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1060, i32 0, i32 4
  %m.states1067 = load ptr, ptr %m.states1066, align 8
  %mk.data1068 = getelementptr inbounds { i64, ptr }, ptr %var.load1061, i32 0, i32 1
  %mk.data1069 = load ptr, ptr %mk.data1068, align 8
  %mk.len1070 = getelementptr inbounds { i64, ptr }, ptr %var.load1061, i32 0, i32 0
  %mk.len1071 = load i64, ptr %mk.len1070, align 8
  %mk.len1072 = and i64 %mk.len1071, 281474976710655
  %str.tag1073 = lshr i64 %mk.len1071, 48
  %str.immortal1074 = icmp eq i64 %str.tag1073, 0
  br i1 %str.immortal1074, label %str_ok1076, label %str_gen_check1075

str_gen_check991:                                 ; preds = %loop.body.31
  %arena.gen994 = call ptr @dva_arena_current()
  %arena.gen995 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen994, i32 0, i32 4
  %arena.gen996 = load i64, ptr %arena.gen995, align 8
  %str.tag.match997 = icmp eq i64 %str.tag989, %arena.gen996
  br i1 %str.tag.match997, label %str_ok992, label %str_stale993

str_ok992:                                        ; preds = %str_stale993, %str_gen_check991, %loop.body.31
  %eq.rhs.len998 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len999 = and i64 %eq.rhs.len998, 281474976710655
  %str.tag1000 = lshr i64 %eq.rhs.len998, 48
  %str.immortal1001 = icmp eq i64 %str.tag1000, 0
  br i1 %str.immortal1001, label %str_ok1003, label %str_gen_check1002

str_stale993:                                     ; preds = %str_gen_check991
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok992

str_gen_check1002:                                ; preds = %str_ok992
  %arena.gen1005 = call ptr @dva_arena_current()
  %arena.gen1006 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1005, i32 0, i32 4
  %arena.gen1007 = load i64, ptr %arena.gen1006, align 8
  %str.tag.match1008 = icmp eq i64 %str.tag1000, %arena.gen1007
  br i1 %str.tag.match1008, label %str_ok1003, label %str_stale1004

str_ok1003:                                       ; preds = %str_stale1004, %str_gen_check1002, %str_ok992
  %eq.len1009 = icmp eq i64 %eq.lhs.len988, %eq.rhs.len999
  br i1 %eq.len1009, label %str.eq.then1010, label %str.eq.else1011

str_stale1004:                                    ; preds = %str_gen_check1002
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1003

str.eq.then1010:                                  ; preds = %str_ok1003
  %eq.lhs.data1013 = getelementptr inbounds { i64, ptr }, ptr %var.load985, i32 0, i32 1
  %eq.lhs.data1014 = load ptr, ptr %eq.lhs.data1013, align 8
  %eq.rhs.data1015 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1016 = call i32 @memcmp(ptr %eq.lhs.data1014, ptr %eq.rhs.data1015, i64 %eq.lhs.len988)
  %eq.cmp.zero1017 = icmp eq i32 %eq.memcmp1016, 0
  br label %str.eq.merge1012

str.eq.else1011:                                  ; preds = %str_ok1003
  br label %str.eq.merge1012

str.eq.merge1012:                                 ; preds = %str.eq.else1011, %str.eq.then1010
  %str.eq.result1018 = phi i1 [ %eq.cmp.zero1017, %str.eq.then1010 ], [ false, %str.eq.else1011 ]
  %str.neq1019 = xor i1 %str.eq.result1018, true
  br i1 %str.neq1019, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge1012
  %var.load1020 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1021 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1022 = icmp eq ptr %a.load1021, null
  br i1 %a.null1022, label %a.create1023, label %a.after1024

and.32.else:                                      ; preds = %str.eq.merge1012
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after1024
  %and.32.phi = phi i1 [ %nottmp1035, %a.after1024 ], [ %str.neq1019, %and.32.else ]
  br i1 %and.32.phi, label %choice.then1036, label %choice.exit1037

a.create1023:                                     ; preds = %and.32.then
  %arena.cur1025 = call ptr @dva_arena_current()
  %a.create1026 = call ptr @dva_arena_alloc(ptr %arena.cur1025, i64 24)
  %arena.cur1027 = call ptr @dva_arena_current()
  %a.buf1028 = call ptr @dva_arena_alloc(ptr %arena.cur1027, i64 128)
  %a.len.gep1029 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1026, i32 0, i32 0
  store i64 0, ptr %a.len.gep1029, align 8
  %a.data.gep1030 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1026, i32 0, i32 1
  store ptr %a.buf1028, ptr %a.data.gep1030, align 8
  %a.cap.gep1031 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1026, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1031, align 8
  store ptr %a.create1026, ptr %var.filtered_deps, align 8
  br label %a.after1024

a.after1024:                                      ; preds = %a.create1023, %and.32.then
  %a.load21032 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1033 = load ptr, ptr %var.target_ref, align 8
  %call.res1034 = call i1 @"dep_graph::has_name"(ptr %a.load21032, ptr %var.load1033)
  %nottmp1035 = xor i1 %call.res1034, true
  br label %and.32.exit

choice.then1036:                                  ; preds = %and.32.exit
  %var.load1038 = load ptr, ptr %var.target_ref, align 8
  %a.load1039 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1040 = icmp eq ptr %a.load1039, null
  br i1 %a.null1040, label %a.create1041, label %a.after1042

choice.exit1037:                                  ; preds = %a.store, %and.32.exit
  br label %loop.latch.31

a.create1041:                                     ; preds = %choice.then1036
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
  store ptr %a.create1044, ptr %var.filtered_deps, align 8
  br label %a.after1042

a.after1042:                                      ; preds = %a.create1041, %choice.then1036
  %a.load21050 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1042
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 0
  %a.len1051 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 2
  %a.cap1052 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1051, %a.cap1052
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21050)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 1
  %a.cur.data1053 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 0
  %a.cur.len1054 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1053, i64 %a.cur.len1054
  %a.elem.p2i = ptrtoint ptr %var.load1038 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1054, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1037

str_gen_check1075:                                ; preds = %loop.exit.31
  %arena.gen1078 = call ptr @dva_arena_current()
  %arena.gen1079 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1078, i32 0, i32 4
  %arena.gen1080 = load i64, ptr %arena.gen1079, align 8
  %str.tag.match1081 = icmp eq i64 %str.tag1073, %arena.gen1080
  br i1 %str.tag.match1081, label %str_ok1076, label %str_stale1077

str_ok1076:                                       ; preds = %str_stale1077, %str_gen_check1075, %loop.exit.31
  %hash.str1082 = call i64 @dva_hash_string(ptr %mk.data1069, i64 %mk.len1072)
  %m.capm11083 = sub i64 %m.cap1063, 1
  %m.idx01084 = and i64 %hash.str1082, %m.capm11083
  br label %m.mem.loop1085

str_stale1077:                                    ; preds = %str_gen_check1075
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1076

m.mem.loop1085:                                   ; preds = %m.mem.next1088, %str_ok1076
  %m.mem.idx1091 = phi i64 [ %m.idx01084, %str_ok1076 ], [ %m.mem.idx.next1132, %m.mem.next1088 ]
  %m.mem.state.gep1092 = getelementptr i8, ptr %m.states1067, i64 %m.mem.idx1091
  %m.mem.state1093 = load i8, ptr %m.mem.state.gep1092, align 1
  %m.mem.is.empty1094 = icmp eq i8 %m.mem.state1093, 0
  %m.is.tomb1095 = icmp eq i8 %m.mem.state1093, 2
  br i1 %m.mem.is.empty1094, label %m.mem.miss1089, label %m.mem.probe1086

m.mem.probe1086:                                  ; preds = %m.mem.loop1085
  br i1 %m.is.tomb1095, label %m.mem.next1088, label %m.mem.found1087

m.mem.found1087:                                  ; preds = %m.mem.probe1086
  %m.mem.key.slot1096 = getelementptr ptr, ptr %m.keys1065, i64 %m.mem.idx1091
  %mk.stored1097 = load ptr, ptr %m.mem.key.slot1096, align 8
  %mk.slen1098 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1097, i32 0, i32 0
  %mk.slen1099 = load i64, ptr %mk.slen1098, align 8
  %mk.slen1100 = and i64 %mk.slen1099, 281474976710655
  %str.tag1101 = lshr i64 %mk.slen1099, 48
  %str.immortal1102 = icmp eq i64 %str.tag1101, 0
  br i1 %str.immortal1102, label %str_ok1104, label %str_gen_check1103

m.mem.next1088:                                   ; preds = %str_ok1118, %m.mem.probe1086
  %m.mem.idx.add1131 = add i64 %m.mem.idx1091, 1
  %m.mem.idx.next1132 = and i64 %m.mem.idx.add1131, %m.capm11083
  br label %m.mem.loop1085

m.mem.miss1089:                                   ; preds = %m.mem.loop1085
  br label %m.mem.done1090

m.mem.done1090:                                   ; preds = %m.mem.miss1089, %m.mem.hit1130
  %m.mem.res1133 = phi i1 [ true, %m.mem.hit1130 ], [ false, %m.mem.miss1089 ]
  store i1 %m.mem.res1133, ptr %var.known, align 1
  %var.load1134 = load i1, ptr %var.known, align 1
  %nottmp1135 = xor i1 %var.load1134, true
  br i1 %nottmp1135, label %choice.then1136, label %choice.exit1137

str_gen_check1103:                                ; preds = %m.mem.found1087
  %arena.gen1106 = call ptr @dva_arena_current()
  %arena.gen1107 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1106, i32 0, i32 4
  %arena.gen1108 = load i64, ptr %arena.gen1107, align 8
  %str.tag.match1109 = icmp eq i64 %str.tag1101, %arena.gen1108
  br i1 %str.tag.match1109, label %str_ok1104, label %str_stale1105

str_ok1104:                                       ; preds = %str_stale1105, %str_gen_check1103, %m.mem.found1087
  %mk.sdata1110 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1097, i32 0, i32 1
  %mk.sdata1111 = load ptr, ptr %mk.sdata1110, align 8
  %mk.nlen1112 = getelementptr inbounds { i64, ptr }, ptr %var.load1061, i32 0, i32 0
  %mk.nlen1113 = load i64, ptr %mk.nlen1112, align 8
  %mk.nlen1114 = and i64 %mk.nlen1113, 281474976710655
  %str.tag1115 = lshr i64 %mk.nlen1113, 48
  %str.immortal1116 = icmp eq i64 %str.tag1115, 0
  br i1 %str.immortal1116, label %str_ok1118, label %str_gen_check1117

str_stale1105:                                    ; preds = %str_gen_check1103
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1104

str_gen_check1117:                                ; preds = %str_ok1104
  %arena.gen1120 = call ptr @dva_arena_current()
  %arena.gen1121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1120, i32 0, i32 4
  %arena.gen1122 = load i64, ptr %arena.gen1121, align 8
  %str.tag.match1123 = icmp eq i64 %str.tag1115, %arena.gen1122
  br i1 %str.tag.match1123, label %str_ok1118, label %str_stale1119

str_ok1118:                                       ; preds = %str_stale1119, %str_gen_check1117, %str_ok1104
  %mk.ndata1124 = getelementptr inbounds { i64, ptr }, ptr %var.load1061, i32 0, i32 1
  %mk.ndata1125 = load ptr, ptr %mk.ndata1124, align 8
  %mk.lenseq1126 = icmp eq i64 %mk.slen1100, %mk.nlen1114
  %mk.memcmp1127 = call i32 @memcmp(ptr %mk.sdata1111, ptr %mk.ndata1125, i64 %mk.nlen1114)
  %mk.cmpeq1128 = icmp eq i32 %mk.memcmp1127, 0
  %mk.eq1129 = and i1 %mk.lenseq1126, %mk.cmpeq1128
  br i1 %mk.eq1129, label %m.mem.hit1130, label %m.mem.next1088

str_stale1119:                                    ; preds = %str_gen_check1117
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1118

m.mem.hit1130:                                    ; preds = %str_ok1118
  br label %m.mem.done1090

choice.then1136:                                  ; preds = %m.mem.done1090
  %var.load1138 = load ptr, ptr %var.node_indices, align 8
  %var.load1139 = load ptr, ptr %var.name2, align 8
  %var.load1140 = load ptr, ptr %var.graph, align 8
  %fld.gep1141 = getelementptr inbounds { ptr, ptr }, ptr %var.load1140, i32 0, i32 0
  %fld.load1142 = load ptr, ptr %fld.gep1141, align 8
  %a.len.query1143 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1142, i32 0, i32 0
  %a.len.query1144 = load i64, ptr %a.len.query1143, align 8
  %m.count1145 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  %m.count1146 = load i64, ptr %m.count1145, align 8
  %m.cap1147 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 1
  %m.cap1148 = load i64, ptr %m.cap1147, align 8
  %m.c.plus1149 = add i64 %m.count1146, 1
  %m.c.lhs1150 = mul i64 %m.c.plus1149, 4
  %m.c.rhs1151 = mul i64 %m.cap1148, 3
  %m.need.grow1152 = icmp sgt i64 %m.c.lhs1150, %m.c.rhs1151
  br i1 %m.need.grow1152, label %m.grow1153, label %m.ins1154

choice.exit1137:                                  ; preds = %m.done1300, %m.mem.done1090
  %var.load1352 = load ptr, ptr %var.graph, align 8
  %var.load1353 = load ptr, ptr %var.name2, align 8
  %var.load1354 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1355 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1356 = icmp eq ptr %a.load1355, null
  br i1 %a.null1356, label %a.create1357, label %a.after1358

m.grow1153:                                       ; preds = %choice.then1136
  %m.old.cap1155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 1
  %m.old.cap1156 = load i64, ptr %m.old.cap1155, align 8
  %m.old.keys1157 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 2
  %m.old.keys1158 = load ptr, ptr %m.old.keys1157, align 8
  %m.old.vals1159 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 3
  %m.old.vals1160 = load ptr, ptr %m.old.vals1159, align 8
  %m.old.states1161 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 4
  %m.old.states1162 = load ptr, ptr %m.old.states1161, align 8
  %m.new.cap1163 = mul i64 %m.old.cap1156, 2
  %m.gk.bytes1164 = mul i64 %m.new.cap1163, 8
  %arena.cur1165 = call ptr @dva_arena_current()
  %m.gk1166 = call ptr @dva_arena_alloc(ptr %arena.cur1165, i64 %m.gk.bytes1164)
  %m.gv.bytes1167 = mul i64 %m.new.cap1163, 8
  %arena.cur1168 = call ptr @dva_arena_current()
  %m.gv1169 = call ptr @dva_arena_alloc(ptr %arena.cur1168, i64 %m.gv.bytes1167)
  %arena.cur1170 = call ptr @dva_arena_current()
  %m.gs1171 = call ptr @dva_arena_alloc(ptr %arena.cur1170, i64 %m.new.cap1163)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1171, i8 0, i64 %m.new.cap1163, i1 false)
  %m.cap.gep1172 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 1
  store i64 %m.new.cap1163, ptr %m.cap.gep1172, align 8
  %m.keys.gep1173 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 2
  store ptr %m.gk1166, ptr %m.keys.gep1173, align 8
  %m.vals.gep1174 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 3
  store ptr %m.gv1169, ptr %m.vals.gep1174, align 8
  %m.states.gep1175 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 4
  store ptr %m.gs1171, ptr %m.states.gep1175, align 8
  %m.count.gep1176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  store i64 0, ptr %m.count.gep1176, align 8
  br label %m.re.loop1177

m.ins1154:                                        ; preds = %m.re.done1180, %choice.then1136
  %m.cap1272 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 1
  %m.cap1273 = load i64, ptr %m.cap1272, align 8
  %m.keys1274 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 2
  %m.keys1275 = load ptr, ptr %m.keys1274, align 8
  %m.vals1276 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 3
  %m.vals1277 = load ptr, ptr %m.vals1276, align 8
  %m.states1278 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 4
  %m.states1279 = load ptr, ptr %m.states1278, align 8
  %mk.data1280 = getelementptr inbounds { i64, ptr }, ptr %var.load1139, i32 0, i32 1
  %mk.data1281 = load ptr, ptr %mk.data1280, align 8
  %mk.len1282 = getelementptr inbounds { i64, ptr }, ptr %var.load1139, i32 0, i32 0
  %mk.len1283 = load i64, ptr %mk.len1282, align 8
  %mk.len1284 = and i64 %mk.len1283, 281474976710655
  %str.tag1285 = lshr i64 %mk.len1283, 48
  %str.immortal1286 = icmp eq i64 %str.tag1285, 0
  br i1 %str.immortal1286, label %str_ok1288, label %str_gen_check1287

m.re.loop1177:                                    ; preds = %m.re.cont1179, %m.grow1153
  %m.re.i1181 = phi i64 [ 0, %m.grow1153 ], [ %m.re.i.next1271, %m.re.cont1179 ]
  %m.re.lt1182 = icmp slt i64 %m.re.i1181, %m.old.cap1156
  br i1 %m.re.lt1182, label %m.re.body1178, label %m.re.done1180

m.re.body1178:                                    ; preds = %m.re.loop1177
  %m.re.state.gep1183 = getelementptr i8, ptr %m.old.states1162, i64 %m.re.i1181
  %m.re.state1184 = load i8, ptr %m.re.state.gep1183, align 1
  %m.re.occ1185 = icmp eq i8 %m.re.state1184, 1
  br i1 %m.re.occ1185, label %m.re.ins1186, label %m.re.cont1179

m.re.cont1179:                                    ; preds = %m.done1219, %m.re.body1178
  %m.re.i.next1271 = add i64 %m.re.i1181, 1
  br label %m.re.loop1177

m.re.done1180:                                    ; preds = %m.re.loop1177
  br label %m.ins1154

m.re.ins1186:                                     ; preds = %m.re.body1178
  %m.re.key.slot1187 = getelementptr ptr, ptr %m.old.keys1158, i64 %m.re.i1181
  %m.re.val.slot1188 = getelementptr i64, ptr %m.old.vals1160, i64 %m.re.i1181
  %m.re.key1189 = load ptr, ptr %m.re.key.slot1187, align 8
  %m.re.val1190 = load i64, ptr %m.re.val.slot1188, align 8
  %m.cap1191 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 1
  %m.cap1192 = load i64, ptr %m.cap1191, align 8
  %m.keys1193 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 2
  %m.keys1194 = load ptr, ptr %m.keys1193, align 8
  %m.vals1195 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 3
  %m.vals1196 = load ptr, ptr %m.vals1195, align 8
  %m.states1197 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 4
  %m.states1198 = load ptr, ptr %m.states1197, align 8
  %mk.data1199 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1189, i32 0, i32 1
  %mk.data1200 = load ptr, ptr %mk.data1199, align 8
  %mk.len1201 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1189, i32 0, i32 0
  %mk.len1202 = load i64, ptr %mk.len1201, align 8
  %mk.len1203 = and i64 %mk.len1202, 281474976710655
  %str.tag1204 = lshr i64 %mk.len1202, 48
  %str.immortal1205 = icmp eq i64 %str.tag1204, 0
  br i1 %str.immortal1205, label %str_ok1207, label %str_gen_check1206

str_gen_check1206:                                ; preds = %m.re.ins1186
  %arena.gen1209 = call ptr @dva_arena_current()
  %arena.gen1210 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1209, i32 0, i32 4
  %arena.gen1211 = load i64, ptr %arena.gen1210, align 8
  %str.tag.match1212 = icmp eq i64 %str.tag1204, %arena.gen1211
  br i1 %str.tag.match1212, label %str_ok1207, label %str_stale1208

str_ok1207:                                       ; preds = %str_stale1208, %str_gen_check1206, %m.re.ins1186
  %hash.str1213 = call i64 @dva_hash_string(ptr %mk.data1200, i64 %mk.len1203)
  %m.capm11214 = sub i64 %m.cap1192, 1
  %m.idx01215 = and i64 %hash.str1213, %m.capm11214
  br label %m.loop1216

str_stale1208:                                    ; preds = %str_gen_check1206
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1207

m.loop1216:                                       ; preds = %m.next1260, %str_ok1207
  %m.idx1220 = phi i64 [ %m.idx01215, %str_ok1207 ], [ %m.idx.next1264, %m.next1260 ]
  %m.state.gep1221 = getelementptr i8, ptr %m.states1198, i64 %m.idx1220
  %m.state1222 = load i8, ptr %m.state.gep1221, align 1
  %m.is.empty1223 = icmp eq i8 %m.state1222, 0
  %m.is.tomb1224 = icmp eq i8 %m.state1222, 2
  %m.is.free1225 = or i1 %m.is.empty1223, %m.is.tomb1224
  br i1 %m.is.free1225, label %m.empty1218, label %m.found1217

m.found1217:                                      ; preds = %m.loop1216
  %m.key.slot1226 = getelementptr ptr, ptr %m.keys1194, i64 %m.idx1220
  %mk.stored1227 = load ptr, ptr %m.key.slot1226, align 8
  %mk.slen1228 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1227, i32 0, i32 0
  %mk.slen1229 = load i64, ptr %mk.slen1228, align 8
  %mk.slen1230 = and i64 %mk.slen1229, 281474976710655
  %str.tag1231 = lshr i64 %mk.slen1229, 48
  %str.immortal1232 = icmp eq i64 %str.tag1231, 0
  br i1 %str.immortal1232, label %str_ok1234, label %str_gen_check1233

m.empty1218:                                      ; preds = %m.loop1216
  %m.key.slot1265 = getelementptr ptr, ptr %m.keys1194, i64 %m.idx1220
  store ptr %m.re.key1189, ptr %m.key.slot1265, align 8
  %m.val.slot1266 = getelementptr i64, ptr %m.vals1196, i64 %m.idx1220
  store i64 %m.re.val1190, ptr %m.val.slot1266, align 8
  store i8 1, ptr %m.state.gep1221, align 1
  %m.count1267 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  %m.count1268 = load i64, ptr %m.count1267, align 8
  %m.count.next1269 = add i64 %m.count1268, 1
  %m.count.gep1270 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  store i64 %m.count.next1269, ptr %m.count.gep1270, align 8
  br label %m.done1219

m.done1219:                                       ; preds = %m.empty1218, %m.overwrite1261
  br label %m.re.cont1179

str_gen_check1233:                                ; preds = %m.found1217
  %arena.gen1236 = call ptr @dva_arena_current()
  %arena.gen1237 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1236, i32 0, i32 4
  %arena.gen1238 = load i64, ptr %arena.gen1237, align 8
  %str.tag.match1239 = icmp eq i64 %str.tag1231, %arena.gen1238
  br i1 %str.tag.match1239, label %str_ok1234, label %str_stale1235

str_ok1234:                                       ; preds = %str_stale1235, %str_gen_check1233, %m.found1217
  %mk.sdata1240 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1227, i32 0, i32 1
  %mk.sdata1241 = load ptr, ptr %mk.sdata1240, align 8
  %mk.nlen1242 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1189, i32 0, i32 0
  %mk.nlen1243 = load i64, ptr %mk.nlen1242, align 8
  %mk.nlen1244 = and i64 %mk.nlen1243, 281474976710655
  %str.tag1245 = lshr i64 %mk.nlen1243, 48
  %str.immortal1246 = icmp eq i64 %str.tag1245, 0
  br i1 %str.immortal1246, label %str_ok1248, label %str_gen_check1247

str_stale1235:                                    ; preds = %str_gen_check1233
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1234

str_gen_check1247:                                ; preds = %str_ok1234
  %arena.gen1250 = call ptr @dva_arena_current()
  %arena.gen1251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1250, i32 0, i32 4
  %arena.gen1252 = load i64, ptr %arena.gen1251, align 8
  %str.tag.match1253 = icmp eq i64 %str.tag1245, %arena.gen1252
  br i1 %str.tag.match1253, label %str_ok1248, label %str_stale1249

str_ok1248:                                       ; preds = %str_stale1249, %str_gen_check1247, %str_ok1234
  %mk.ndata1254 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1189, i32 0, i32 1
  %mk.ndata1255 = load ptr, ptr %mk.ndata1254, align 8
  %mk.lenseq1256 = icmp eq i64 %mk.slen1230, %mk.nlen1244
  %mk.memcmp1257 = call i32 @memcmp(ptr %mk.sdata1241, ptr %mk.ndata1255, i64 %mk.nlen1244)
  %mk.cmpeq1258 = icmp eq i32 %mk.memcmp1257, 0
  %mk.eq1259 = and i1 %mk.lenseq1256, %mk.cmpeq1258
  br i1 %mk.eq1259, label %m.overwrite1261, label %m.next1260

str_stale1249:                                    ; preds = %str_gen_check1247
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1248

m.next1260:                                       ; preds = %str_ok1248
  %m.idx.add1263 = add i64 %m.idx1220, 1
  %m.idx.next1264 = and i64 %m.idx.add1263, %m.capm11214
  br label %m.loop1216

m.overwrite1261:                                  ; preds = %str_ok1248
  %m.val.slot1262 = getelementptr i64, ptr %m.vals1196, i64 %m.idx1220
  store i64 %m.re.val1190, ptr %m.val.slot1262, align 8
  br label %m.done1219

str_gen_check1287:                                ; preds = %m.ins1154
  %arena.gen1290 = call ptr @dva_arena_current()
  %arena.gen1291 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1290, i32 0, i32 4
  %arena.gen1292 = load i64, ptr %arena.gen1291, align 8
  %str.tag.match1293 = icmp eq i64 %str.tag1285, %arena.gen1292
  br i1 %str.tag.match1293, label %str_ok1288, label %str_stale1289

str_ok1288:                                       ; preds = %str_stale1289, %str_gen_check1287, %m.ins1154
  %hash.str1294 = call i64 @dva_hash_string(ptr %mk.data1281, i64 %mk.len1284)
  %m.capm11295 = sub i64 %m.cap1273, 1
  %m.idx01296 = and i64 %hash.str1294, %m.capm11295
  br label %m.loop1297

str_stale1289:                                    ; preds = %str_gen_check1287
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1288

m.loop1297:                                       ; preds = %m.next1341, %str_ok1288
  %m.idx1301 = phi i64 [ %m.idx01296, %str_ok1288 ], [ %m.idx.next1345, %m.next1341 ]
  %m.state.gep1302 = getelementptr i8, ptr %m.states1279, i64 %m.idx1301
  %m.state1303 = load i8, ptr %m.state.gep1302, align 1
  %m.is.empty1304 = icmp eq i8 %m.state1303, 0
  %m.is.tomb1305 = icmp eq i8 %m.state1303, 2
  %m.is.free1306 = or i1 %m.is.empty1304, %m.is.tomb1305
  br i1 %m.is.free1306, label %m.empty1299, label %m.found1298

m.found1298:                                      ; preds = %m.loop1297
  %m.key.slot1307 = getelementptr ptr, ptr %m.keys1275, i64 %m.idx1301
  %mk.stored1308 = load ptr, ptr %m.key.slot1307, align 8
  %mk.slen1309 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1308, i32 0, i32 0
  %mk.slen1310 = load i64, ptr %mk.slen1309, align 8
  %mk.slen1311 = and i64 %mk.slen1310, 281474976710655
  %str.tag1312 = lshr i64 %mk.slen1310, 48
  %str.immortal1313 = icmp eq i64 %str.tag1312, 0
  br i1 %str.immortal1313, label %str_ok1315, label %str_gen_check1314

m.empty1299:                                      ; preds = %m.loop1297
  %m.key.slot1346 = getelementptr ptr, ptr %m.keys1275, i64 %m.idx1301
  store ptr %var.load1139, ptr %m.key.slot1346, align 8
  %m.val.slot1347 = getelementptr i64, ptr %m.vals1277, i64 %m.idx1301
  store i64 %a.len.query1144, ptr %m.val.slot1347, align 8
  store i8 1, ptr %m.state.gep1302, align 1
  %m.count1348 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  %m.count1349 = load i64, ptr %m.count1348, align 8
  %m.count.next1350 = add i64 %m.count1349, 1
  %m.count.gep1351 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 0
  store i64 %m.count.next1350, ptr %m.count.gep1351, align 8
  br label %m.done1300

m.done1300:                                       ; preds = %m.empty1299, %m.overwrite1342
  br label %choice.exit1137

str_gen_check1314:                                ; preds = %m.found1298
  %arena.gen1317 = call ptr @dva_arena_current()
  %arena.gen1318 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1317, i32 0, i32 4
  %arena.gen1319 = load i64, ptr %arena.gen1318, align 8
  %str.tag.match1320 = icmp eq i64 %str.tag1312, %arena.gen1319
  br i1 %str.tag.match1320, label %str_ok1315, label %str_stale1316

str_ok1315:                                       ; preds = %str_stale1316, %str_gen_check1314, %m.found1298
  %mk.sdata1321 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1308, i32 0, i32 1
  %mk.sdata1322 = load ptr, ptr %mk.sdata1321, align 8
  %mk.nlen1323 = getelementptr inbounds { i64, ptr }, ptr %var.load1139, i32 0, i32 0
  %mk.nlen1324 = load i64, ptr %mk.nlen1323, align 8
  %mk.nlen1325 = and i64 %mk.nlen1324, 281474976710655
  %str.tag1326 = lshr i64 %mk.nlen1324, 48
  %str.immortal1327 = icmp eq i64 %str.tag1326, 0
  br i1 %str.immortal1327, label %str_ok1329, label %str_gen_check1328

str_stale1316:                                    ; preds = %str_gen_check1314
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1315

str_gen_check1328:                                ; preds = %str_ok1315
  %arena.gen1331 = call ptr @dva_arena_current()
  %arena.gen1332 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1331, i32 0, i32 4
  %arena.gen1333 = load i64, ptr %arena.gen1332, align 8
  %str.tag.match1334 = icmp eq i64 %str.tag1326, %arena.gen1333
  br i1 %str.tag.match1334, label %str_ok1329, label %str_stale1330

str_ok1329:                                       ; preds = %str_stale1330, %str_gen_check1328, %str_ok1315
  %mk.ndata1335 = getelementptr inbounds { i64, ptr }, ptr %var.load1139, i32 0, i32 1
  %mk.ndata1336 = load ptr, ptr %mk.ndata1335, align 8
  %mk.lenseq1337 = icmp eq i64 %mk.slen1311, %mk.nlen1325
  %mk.memcmp1338 = call i32 @memcmp(ptr %mk.sdata1322, ptr %mk.ndata1336, i64 %mk.nlen1325)
  %mk.cmpeq1339 = icmp eq i32 %mk.memcmp1338, 0
  %mk.eq1340 = and i1 %mk.lenseq1337, %mk.cmpeq1339
  br i1 %mk.eq1340, label %m.overwrite1342, label %m.next1341

str_stale1330:                                    ; preds = %str_gen_check1328
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1329

m.next1341:                                       ; preds = %str_ok1329
  %m.idx.add1344 = add i64 %m.idx1301, 1
  %m.idx.next1345 = and i64 %m.idx.add1344, %m.capm11295
  br label %m.loop1297

m.overwrite1342:                                  ; preds = %str_ok1329
  %m.val.slot1343 = getelementptr i64, ptr %m.vals1277, i64 %m.idx1301
  store i64 %a.len.query1144, ptr %m.val.slot1343, align 8
  br label %m.done1300

a.create1357:                                     ; preds = %choice.exit1137
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
  store ptr %a.create1360, ptr %var.filtered_deps, align 8
  br label %a.after1358

a.after1358:                                      ; preds = %a.create1357, %choice.exit1137
  %a.load21366 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1367 = load i64, ptr %var.j, align 8
  %arena.cur1368 = call ptr @dva_arena_current()
  %rec.alloc1369 = call ptr @dva_arena_alloc(ptr %arena.cur1368, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1370 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1369, i32 0, i32 0
  store ptr %var.load1353, ptr %rec.fld1370, align 8
  %rec.fld1371 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1369, i32 0, i32 1
  store ptr %a.load21366, ptr %rec.fld1371, align 8
  %rec.fld1372 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1369, i32 0, i32 2
  store i64 %var.load1367, ptr %rec.fld1372, align 8
  %fld.gep1373 = getelementptr inbounds { ptr, ptr }, ptr %var.load1352, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1373, align 8
  br label %a.check1374

a.check1374:                                      ; preds = %a.after1358
  %a.len1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1378 = load i64, ptr %a.len1377, align 8
  %a.cap1379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1380 = load i64, ptr %a.cap1379, align 8
  %a.needs.grow1381 = icmp eq i64 %a.len1378, %a.cap1380
  br i1 %a.needs.grow1381, label %a.grow1375, label %a.store1376

a.grow1375:                                       ; preds = %a.check1374
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1376

a.store1376:                                      ; preds = %a.grow1375, %a.check1374
  %a.cur.data1382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1383 = load ptr, ptr %a.cur.data1382, align 8
  %a.cur.len1384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1385 = load i64, ptr %a.cur.len1384, align 8
  %a.elem.gep1386 = getelementptr i64, ptr %a.cur.data1383, i64 %a.cur.len1385
  %a.elem.p2i1387 = ptrtoint ptr %rec.alloc1369 to i64
  store i64 %a.elem.p2i1387, ptr %a.elem.gep1386, align 8
  %a.next.len1388 = add i64 %a.cur.len1385, 1
  %b.len.gep1389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1388, ptr %b.len.gep1389, align 8
  br label %choice.exit923
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"dep_graph::init_tarjan_state"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.33 = alloca i64, align 8
  %loop.idx.33 = alloca i64, align 8
  %var.counter = alloca ptr, align 8
  %var.stack_ptr = alloca ptr, align 8
  %var.stack = alloca ptr, align 8
  %var.on_stack = alloca ptr, align 8
  %var.lowlinks = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.indices, align 8
  %arena.cur2 = call ptr @dva_arena_current()
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.new3, ptr %var.lowlinks, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.new10, ptr %var.on_stack, align 8
  %arena.cur16 = call ptr @dva_arena_current()
  %a.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.new17, ptr %var.stack, align 8
  %arena.cur23 = call ptr @dva_arena_current()
  %a.new24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = call ptr @dva_arena_current()
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  %a.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new24, i32 0, i32 0
  store i64 0, ptr %a.len.gep27, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  store ptr %a.new24, ptr %var.stack_ptr, align 8
  %a.load = load ptr, ptr %var.stack_ptr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.stack_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.stack_ptr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len37 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap38 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len37, %a.cap38
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data39 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len40 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data39, i64 %a.cur.len40
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len40, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %arena.cur41 = call ptr @dva_arena_current()
  %a.new42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new42, i32 0, i32 0
  store i64 0, ptr %a.len.gep45, align 8
  %a.data.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new42, i32 0, i32 1
  store ptr %a.buf44, ptr %a.data.gep46, align 8
  %a.cap.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep47, align 8
  store ptr %a.new42, ptr %var.counter, align 8
  %a.load48 = load ptr, ptr %var.counter, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

a.create50:                                       ; preds = %a.store
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
  store ptr %a.create53, ptr %var.counter, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %a.store
  %a.load259 = load ptr, ptr %var.counter, align 8
  br label %a.check60

a.check60:                                        ; preds = %a.after51
  %a.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.len64 = load i64, ptr %a.len63, align 8
  %a.cap65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 2
  %a.cap66 = load i64, ptr %a.cap65, align 8
  %a.needs.grow67 = icmp eq i64 %a.len64, %a.cap66
  br i1 %a.needs.grow67, label %a.grow61, label %a.store62

a.grow61:                                         ; preds = %a.check60
  call void @dva_array_grow(ptr %a.load259)
  br label %a.store62

a.store62:                                        ; preds = %a.grow61, %a.check60
  %a.cur.data68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 1
  %a.cur.data69 = load ptr, ptr %a.cur.data68, align 8
  %a.cur.len70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.cur.len71 = load i64, ptr %a.cur.len70, align 8
  %a.elem.gep72 = getelementptr i64, ptr %a.cur.data69, i64 %a.cur.len71
  store i64 0, ptr %a.elem.gep72, align 8
  %a.next.len73 = add i64 %a.cur.len71, 1
  %b.len.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  store i64 %a.next.len73, ptr %b.len.gep74, align 8
  %var.load = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.header.33:                                   ; preds = %loop.latch.33, %a.store62
  %counter.load = load i64, ptr %loop.idx.33, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.33, label %loop.exit.nat.33

loop.body.33:                                     ; preds = %loop.header.33
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.33, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %a.load75 = load ptr, ptr %var.indices, align 8
  %a.null76 = icmp eq ptr %a.load75, null
  br i1 %a.null76, label %a.create77, label %a.after78

loop.exit.nat.33:                                 ; preds = %loop.header.33
  br label %loop.exit.33

loop.latch.33:                                    ; preds = %a.store143
  %step.val = load i64, ptr %loop.step.33, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.exit.33:                                     ; preds = %loop.exit.nat.33
  %var.load156 = load ptr, ptr %var.indices, align 8
  %a.load157 = load ptr, ptr %var.indices, align 8
  %a.null158 = icmp eq ptr %a.load157, null
  br i1 %a.null158, label %a.create159, label %a.after160

a.create77:                                       ; preds = %loop.body.33
  %arena.cur79 = call ptr @dva_arena_current()
  %a.create80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 24)
  %arena.cur81 = call ptr @dva_arena_current()
  %a.buf82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 128)
  %a.len.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create80, i32 0, i32 0
  store i64 0, ptr %a.len.gep83, align 8
  %a.data.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create80, i32 0, i32 1
  store ptr %a.buf82, ptr %a.data.gep84, align 8
  %a.cap.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create80, i32 0, i32 2
  store i64 16, ptr %a.cap.gep85, align 8
  store ptr %a.create80, ptr %var.indices, align 8
  br label %a.after78

a.after78:                                        ; preds = %a.create77, %loop.body.33
  %a.load286 = load ptr, ptr %var.indices, align 8
  br label %a.check87

a.check87:                                        ; preds = %a.after78
  %a.len90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 0
  %a.len91 = load i64, ptr %a.len90, align 8
  %a.cap92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 2
  %a.cap93 = load i64, ptr %a.cap92, align 8
  %a.needs.grow94 = icmp eq i64 %a.len91, %a.cap93
  br i1 %a.needs.grow94, label %a.grow88, label %a.store89

a.grow88:                                         ; preds = %a.check87
  call void @dva_array_grow(ptr %a.load286)
  br label %a.store89

a.store89:                                        ; preds = %a.grow88, %a.check87
  %a.cur.data95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 1
  %a.cur.data96 = load ptr, ptr %a.cur.data95, align 8
  %a.cur.len97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 0
  %a.cur.len98 = load i64, ptr %a.cur.len97, align 8
  %a.elem.gep99 = getelementptr i64, ptr %a.cur.data96, i64 %a.cur.len98
  store i64 -1, ptr %a.elem.gep99, align 8
  %a.next.len100 = add i64 %a.cur.len98, 1
  %b.len.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 0
  store i64 %a.next.len100, ptr %b.len.gep101, align 8
  %a.load102 = load ptr, ptr %var.lowlinks, align 8
  %a.null103 = icmp eq ptr %a.load102, null
  br i1 %a.null103, label %a.create104, label %a.after105

a.create104:                                      ; preds = %a.store89
  %arena.cur106 = call ptr @dva_arena_current()
  %a.create107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 24)
  %arena.cur108 = call ptr @dva_arena_current()
  %a.buf109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 128)
  %a.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 0
  store i64 0, ptr %a.len.gep110, align 8
  %a.data.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 1
  store ptr %a.buf109, ptr %a.data.gep111, align 8
  %a.cap.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 2
  store i64 16, ptr %a.cap.gep112, align 8
  store ptr %a.create107, ptr %var.lowlinks, align 8
  br label %a.after105

a.after105:                                       ; preds = %a.create104, %a.store89
  %a.load2113 = load ptr, ptr %var.lowlinks, align 8
  br label %a.check114

a.check114:                                       ; preds = %a.after105
  %a.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 0
  %a.len118 = load i64, ptr %a.len117, align 8
  %a.cap119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 2
  %a.cap120 = load i64, ptr %a.cap119, align 8
  %a.needs.grow121 = icmp eq i64 %a.len118, %a.cap120
  br i1 %a.needs.grow121, label %a.grow115, label %a.store116

a.grow115:                                        ; preds = %a.check114
  call void @dva_array_grow(ptr %a.load2113)
  br label %a.store116

a.store116:                                       ; preds = %a.grow115, %a.check114
  %a.cur.data122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 1
  %a.cur.data123 = load ptr, ptr %a.cur.data122, align 8
  %a.cur.len124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 0
  %a.cur.len125 = load i64, ptr %a.cur.len124, align 8
  %a.elem.gep126 = getelementptr i64, ptr %a.cur.data123, i64 %a.cur.len125
  store i64 0, ptr %a.elem.gep126, align 8
  %a.next.len127 = add i64 %a.cur.len125, 1
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 0
  store i64 %a.next.len127, ptr %b.len.gep128, align 8
  %a.load129 = load ptr, ptr %var.on_stack, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

a.create131:                                      ; preds = %a.store116
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
  store ptr %a.create134, ptr %var.on_stack, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.store116
  %a.load2140 = load ptr, ptr %var.on_stack, align 8
  br label %a.check141

a.check141:                                       ; preds = %a.after132
  %a.len144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %a.len145 = load i64, ptr %a.len144, align 8
  %a.cap146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 2
  %a.cap147 = load i64, ptr %a.cap146, align 8
  %a.needs.grow148 = icmp eq i64 %a.len145, %a.cap147
  br i1 %a.needs.grow148, label %a.grow142, label %a.store143

a.grow142:                                        ; preds = %a.check141
  call void @dva_array_grow(ptr %a.load2140)
  br label %a.store143

a.store143:                                       ; preds = %a.grow142, %a.check141
  %a.cur.data149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 1
  %a.cur.data150 = load ptr, ptr %a.cur.data149, align 8
  %a.cur.len151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %a.cur.len152 = load i64, ptr %a.cur.len151, align 8
  %a.elem.gep153 = getelementptr i64, ptr %a.cur.data150, i64 %a.cur.len152
  store i1 false, ptr %a.elem.gep153, align 1
  %a.next.len154 = add i64 %a.cur.len152, 1
  %b.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  store i64 %a.next.len154, ptr %b.len.gep155, align 8
  br label %loop.latch.33

a.create159:                                      ; preds = %loop.exit.33
  %arena.cur161 = call ptr @dva_arena_current()
  %a.create162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 24)
  %arena.cur163 = call ptr @dva_arena_current()
  %a.buf164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 128)
  %a.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 0
  store i64 0, ptr %a.len.gep165, align 8
  %a.data.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 1
  store ptr %a.buf164, ptr %a.data.gep166, align 8
  %a.cap.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 2
  store i64 16, ptr %a.cap.gep167, align 8
  store ptr %a.create162, ptr %var.indices, align 8
  br label %a.after160

a.after160:                                       ; preds = %a.create159, %loop.exit.33
  %a.load2168 = load ptr, ptr %var.indices, align 8
  %var.load169 = load ptr, ptr %var.lowlinks, align 8
  %a.load170 = load ptr, ptr %var.lowlinks, align 8
  %a.null171 = icmp eq ptr %a.load170, null
  br i1 %a.null171, label %a.create172, label %a.after173

a.create172:                                      ; preds = %a.after160
  %arena.cur174 = call ptr @dva_arena_current()
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = call ptr @dva_arena_current()
  %a.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 128)
  %a.len.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 0
  store i64 0, ptr %a.len.gep178, align 8
  %a.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 1
  store ptr %a.buf177, ptr %a.data.gep179, align 8
  %a.cap.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 2
  store i64 16, ptr %a.cap.gep180, align 8
  store ptr %a.create175, ptr %var.lowlinks, align 8
  br label %a.after173

a.after173:                                       ; preds = %a.create172, %a.after160
  %a.load2181 = load ptr, ptr %var.lowlinks, align 8
  %var.load182 = load ptr, ptr %var.on_stack, align 8
  %a.load183 = load ptr, ptr %var.on_stack, align 8
  %a.null184 = icmp eq ptr %a.load183, null
  br i1 %a.null184, label %a.create185, label %a.after186

a.create185:                                      ; preds = %a.after173
  %arena.cur187 = call ptr @dva_arena_current()
  %a.create188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 24)
  %arena.cur189 = call ptr @dva_arena_current()
  %a.buf190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 128)
  %a.len.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 0
  store i64 0, ptr %a.len.gep191, align 8
  %a.data.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 1
  store ptr %a.buf190, ptr %a.data.gep192, align 8
  %a.cap.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create188, i32 0, i32 2
  store i64 16, ptr %a.cap.gep193, align 8
  store ptr %a.create188, ptr %var.on_stack, align 8
  br label %a.after186

a.after186:                                       ; preds = %a.create185, %a.after173
  %a.load2194 = load ptr, ptr %var.on_stack, align 8
  %var.load195 = load ptr, ptr %var.stack, align 8
  %a.load196 = load ptr, ptr %var.stack, align 8
  %a.null197 = icmp eq ptr %a.load196, null
  br i1 %a.null197, label %a.create198, label %a.after199

a.create198:                                      ; preds = %a.after186
  %arena.cur200 = call ptr @dva_arena_current()
  %a.create201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 24)
  %arena.cur202 = call ptr @dva_arena_current()
  %a.buf203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 128)
  %a.len.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create201, i32 0, i32 0
  store i64 0, ptr %a.len.gep204, align 8
  %a.data.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create201, i32 0, i32 1
  store ptr %a.buf203, ptr %a.data.gep205, align 8
  %a.cap.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create201, i32 0, i32 2
  store i64 16, ptr %a.cap.gep206, align 8
  store ptr %a.create201, ptr %var.stack, align 8
  br label %a.after199

a.after199:                                       ; preds = %a.create198, %a.after186
  %a.load2207 = load ptr, ptr %var.stack, align 8
  %var.load208 = load ptr, ptr %var.stack_ptr, align 8
  %a.load209 = load ptr, ptr %var.stack_ptr, align 8
  %a.null210 = icmp eq ptr %a.load209, null
  br i1 %a.null210, label %a.create211, label %a.after212

a.create211:                                      ; preds = %a.after199
  %arena.cur213 = call ptr @dva_arena_current()
  %a.create214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 24)
  %arena.cur215 = call ptr @dva_arena_current()
  %a.buf216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 128)
  %a.len.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 0
  store i64 0, ptr %a.len.gep217, align 8
  %a.data.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 1
  store ptr %a.buf216, ptr %a.data.gep218, align 8
  %a.cap.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 2
  store i64 16, ptr %a.cap.gep219, align 8
  store ptr %a.create214, ptr %var.stack_ptr, align 8
  br label %a.after212

a.after212:                                       ; preds = %a.create211, %a.after199
  %a.load2220 = load ptr, ptr %var.stack_ptr, align 8
  %var.load221 = load ptr, ptr %var.counter, align 8
  %a.load222 = load ptr, ptr %var.counter, align 8
  %a.null223 = icmp eq ptr %a.load222, null
  br i1 %a.null223, label %a.create224, label %a.after225

a.create224:                                      ; preds = %a.after212
  %arena.cur226 = call ptr @dva_arena_current()
  %a.create227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 24)
  %arena.cur228 = call ptr @dva_arena_current()
  %a.buf229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 128)
  %a.len.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 0
  store i64 0, ptr %a.len.gep230, align 8
  %a.data.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 1
  store ptr %a.buf229, ptr %a.data.gep231, align 8
  %a.cap.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 2
  store i64 16, ptr %a.cap.gep232, align 8
  store ptr %a.create227, ptr %var.counter, align 8
  br label %a.after225

a.after225:                                       ; preds = %a.create224, %a.after212
  %a.load2233 = load ptr, ptr %var.counter, align 8
  %arena.cur234 = call ptr @dva_arena_current()
  %a.new235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 24)
  %arena.cur236 = call ptr @dva_arena_current()
  %a.buf237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 128)
  %a.len.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new235, i32 0, i32 0
  store i64 0, ptr %a.len.gep238, align 8
  %a.data.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new235, i32 0, i32 1
  store ptr %a.buf237, ptr %a.data.gep239, align 8
  %a.cap.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new235, i32 0, i32 2
  store i64 16, ptr %a.cap.gep240, align 8
  %arena.cur241 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2168, ptr %rec.fld, align 8
  %rec.fld242 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2181, ptr %rec.fld242, align 8
  %rec.fld243 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2194, ptr %rec.fld243, align 8
  %rec.fld244 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.load2207, ptr %rec.fld244, align 8
  %rec.fld245 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.load2220, ptr %rec.fld245, align 8
  %rec.fld246 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %a.load2233, ptr %rec.fld246, align 8
  %rec.fld247 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.new235, ptr %rec.fld247, align 8
  ret ptr %rec.alloc
}

define void @"dep_graph::push_stack"(ptr %0, i64 %1) #1 {
entry:
  %var._180 = alloca ptr, align 8
  %var._179 = alloca ptr, align 8
  %var._178 = alloca ptr, align 8
  %var._81 = alloca ptr, align 8
  %var._80 = alloca ptr, align 8
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
  store i64 267, ptr %err.line.gep, align 8
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
  store i64 267, ptr %err.line.gep12, align 8
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
  %var.load40 = load ptr, ptr %var.state, align 8
  %fld.gep41 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load40, i32 0, i32 3
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  store ptr %fld.load42, ptr %var.stk, align 8
  %var.load43 = load i64, ptr %var.sp, align 8
  %var.load44 = load ptr, ptr %var.stk, align 8
  %a.load45 = load ptr, ptr %var.stk, align 8
  %a.null46 = icmp eq ptr %a.load45, null
  br i1 %a.null46, label %a.create47, label %a.after48

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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen25 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen26 = load i64, ptr %arena.gen25, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen26
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.34
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data27 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len28 = load i64, ptr %err.file.len, align 8
  %err.file.len29 = and i64 %err.file.len28, 281474976710655
  %str.tag30 = lshr i64 %err.file.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check32:                                  ; preds = %str_ok
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok
  %err.file.len32 = trunc i64 %err.file.len29 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data39 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

err.thread:                                       ; preds = %str_ok33
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok33
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data27, i32 %err.file.len32, ptr %err.file.data39, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create47:                                       ; preds = %unwrap.pos.34
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
  store ptr %a.create50, ptr %var.stk, align 8
  br label %a.after48

a.after48:                                        ; preds = %a.create47, %unwrap.pos.34
  %a.load256 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  %a.len.query57 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load43, %a.len.query57
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after48
  %var.load58 = load ptr, ptr %var.stk, align 8
  %a.load59 = load ptr, ptr %var.stk, align 8
  %a.null60 = icmp eq ptr %a.load59, null
  br i1 %a.null60, label %a.create61, label %a.after62

choice.else:                                      ; preds = %a.after48
  %var.load129 = load i64, ptr %var.u, align 8
  %a.load130 = load ptr, ptr %var.stk, align 8
  %a.null131 = icmp eq ptr %a.load130, null
  br i1 %a.null131, label %a.create132, label %a.after133

choice.exit:                                      ; preds = %a.store, %choice.exit79
  %var.load147 = load ptr, ptr %var.s_ptr, align 8
  %a.load148 = load ptr, ptr %var.s_ptr, align 8
  %a.null149 = icmp eq ptr %a.load148, null
  br i1 %a.null149, label %a.create150, label %a.after151

a.create61:                                       ; preds = %choice.then
  %arena.cur63 = call ptr @dva_arena_current()
  %a.create64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 24)
  %arena.cur65 = call ptr @dva_arena_current()
  %a.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 128)
  %a.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 0
  store i64 0, ptr %a.len.gep67, align 8
  %a.data.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 1
  store ptr %a.buf66, ptr %a.data.gep68, align 8
  %a.cap.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 2
  store i64 16, ptr %a.cap.gep69, align 8
  store ptr %a.create64, ptr %var.stk, align 8
  br label %a.after62

a.after62:                                        ; preds = %a.create61, %choice.then
  %a.load270 = load ptr, ptr %var.stk, align 8
  %var.load71 = load i64, ptr %var.sp, align 8
  %var.load72 = load i64, ptr %var.u, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load270, i32 0, i32 1
  %a.wr.data73 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data73, i64 %var.load71
  store i64 %var.load72, ptr %a.elem.gep, align 8
  %arena.cur74 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep75 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep75, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep76, align 8
  br i1 %is.pos, label %choice.then77, label %choice.else78

choice.then77:                                    ; preds = %a.after62
  br label %choice.exit79

choice.else78:                                    ; preds = %a.after62
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._80, align 8
  store ptr %payload.ptr, ptr %var._81, align 8
  %err.code.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code83 = load i64, ptr %err.code.gep82, align 8
  %err.msg.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct85 = load ptr, ptr %err.msg.gep84, align 8
  %err.file.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct87 = load ptr, ptr %err.file.gep86, align 8
  %err.line.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line89 = load i64, ptr %err.line.gep88, align 8
  %err.col.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col91 = load i64, ptr %err.col.gep90, align 8
  %err.msg.len92 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct85, i32 0, i32 0
  %err.msg.len93 = load i64, ptr %err.msg.len92, align 8
  %err.msg.len94 = and i64 %err.msg.len93, 281474976710655
  %str.tag95 = lshr i64 %err.msg.len93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

choice.exit79:                                    ; preds = %err.abort, %choice.then77
  br label %choice.exit

str_gen_check97:                                  ; preds = %choice.else78
  %arena.gen100 = call ptr @dva_arena_current()
  %arena.gen101 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen100, i32 0, i32 4
  %arena.gen102 = load i64, ptr %arena.gen101, align 8
  %str.tag.match103 = icmp eq i64 %str.tag95, %arena.gen102
  br i1 %str.tag.match103, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %choice.else78
  %err.msg.len32104 = trunc i64 %err.msg.len94 to i32
  %err.msg.data105 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct85, i32 0, i32 1
  %err.msg.data106 = load ptr, ptr %err.msg.data105, align 8
  %err.file.len107 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct87, i32 0, i32 0
  %err.file.len108 = load i64, ptr %err.file.len107, align 8
  %err.file.len109 = and i64 %err.file.len108, 281474976710655
  %str.tag110 = lshr i64 %err.file.len108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

str_stale99:                                      ; preds = %str_gen_check97
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

str_gen_check112:                                 ; preds = %str_ok98
  %arena.gen115 = call ptr @dva_arena_current()
  %arena.gen116 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen115, i32 0, i32 4
  %arena.gen117 = load i64, ptr %arena.gen116, align 8
  %str.tag.match118 = icmp eq i64 %str.tag110, %arena.gen117
  br i1 %str.tag.match118, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %str_ok98
  %err.file.len32119 = trunc i64 %err.file.len109 to i32
  %err.file.data120 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct87, i32 0, i32 1
  %err.file.data121 = load ptr, ptr %err.file.data120, align 8
  %err.thread.rec122 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread123 = icmp ne ptr %err.thread.rec122, null
  br i1 %err.is.thread123, label %err.thread124, label %err.normal125

str_stale114:                                     ; preds = %str_gen_check112
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

err.thread124:                                    ; preds = %str_ok113
  %err.haserr.gep126 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec122, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep126, align 8
  %err.err.gep127 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec122, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep127, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal125:                                    ; preds = %str_ok113
  %err.panic.printf128 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code83, i32 %err.msg.len32104, ptr %err.msg.data106, i32 %err.file.len32119, ptr %err.file.data121, i64 %err.line89, i64 %err.col91)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit79

a.create132:                                      ; preds = %choice.else
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

a.after133:                                       ; preds = %a.create132, %choice.else
  %a.load2141 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after133
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 0
  %a.len142 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 2
  %a.cap143 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len142, %a.cap143
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2141)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 1
  %a.cur.data144 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 0
  %a.cur.len145 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep146 = getelementptr i64, ptr %a.cur.data144, i64 %a.cur.len145
  store i64 %var.load129, ptr %a.elem.gep146, align 8
  %a.next.len = add i64 %a.cur.len145, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create150:                                      ; preds = %choice.exit
  %arena.cur152 = call ptr @dva_arena_current()
  %a.create153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 24)
  %arena.cur154 = call ptr @dva_arena_current()
  %a.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 128)
  %a.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 0
  store i64 0, ptr %a.len.gep156, align 8
  %a.data.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 1
  store ptr %a.buf155, ptr %a.data.gep157, align 8
  %a.cap.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep158, align 8
  store ptr %a.create153, ptr %var.s_ptr, align 8
  br label %a.after151

a.after151:                                       ; preds = %a.create150, %choice.exit
  %a.load2159 = load ptr, ptr %var.s_ptr, align 8
  %var.load160 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load160, 1
  %a.wr.data161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2159, i32 0, i32 1
  %a.wr.data162 = load ptr, ptr %a.wr.data161, align 8
  %a.elem.gep163 = getelementptr i64, ptr %a.wr.data162, i64 0
  store i64 %addtmp, ptr %a.elem.gep163, align 8
  %arena.cur164 = call ptr @dva_arena_current()
  %a.wr.succ165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 16)
  %tag.gep166 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ165, i32 0, i32 0
  store i64 1, ptr %tag.gep166, align 8
  %pay.gep167 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ165, i32 0, i32 1
  store ptr null, ptr %pay.gep167, align 8
  %tag.gep168 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ165, i32 0, i32 0
  %tag.id169 = load i64, ptr %tag.gep168, align 8
  %tag.eq.one170 = icmp eq i64 %tag.id169, 1
  %tag.eq.two171 = icmp eq i64 %tag.id169, 2
  %is.pos172 = or i1 %tag.eq.one170, %tag.eq.two171
  %pay.gep173 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ165, i32 0, i32 1
  %payload.ptr174 = load ptr, ptr %pay.gep173, align 8
  br i1 %is.pos172, label %choice.then175, label %choice.else176

choice.then175:                                   ; preds = %a.after151
  br label %choice.exit177

choice.else176:                                   ; preds = %a.after151
  store ptr %payload.ptr174, ptr %var._178, align 8
  store ptr %payload.ptr174, ptr %var._179, align 8
  store ptr %payload.ptr174, ptr %var._180, align 8
  %err.code.gep181 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr174, i32 0, i32 0
  %err.code182 = load i64, ptr %err.code.gep181, align 8
  %err.msg.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr174, i32 0, i32 1
  %err.msg.struct184 = load ptr, ptr %err.msg.gep183, align 8
  %err.file.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr174, i32 0, i32 2
  %err.file.struct186 = load ptr, ptr %err.file.gep185, align 8
  %err.line.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr174, i32 0, i32 3
  %err.line188 = load i64, ptr %err.line.gep187, align 8
  %err.col.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr174, i32 0, i32 4
  %err.col190 = load i64, ptr %err.col.gep189, align 8
  %err.msg.len191 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct184, i32 0, i32 0
  %err.msg.len192 = load i64, ptr %err.msg.len191, align 8
  %err.msg.len193 = and i64 %err.msg.len192, 281474976710655
  %str.tag194 = lshr i64 %err.msg.len192, 48
  %str.immortal195 = icmp eq i64 %str.tag194, 0
  br i1 %str.immortal195, label %str_ok197, label %str_gen_check196

choice.exit177:                                   ; preds = %err.abort228, %choice.then175
  ret void

str_gen_check196:                                 ; preds = %choice.else176
  %arena.gen199 = call ptr @dva_arena_current()
  %arena.gen200 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen199, i32 0, i32 4
  %arena.gen201 = load i64, ptr %arena.gen200, align 8
  %str.tag.match202 = icmp eq i64 %str.tag194, %arena.gen201
  br i1 %str.tag.match202, label %str_ok197, label %str_stale198

str_ok197:                                        ; preds = %str_stale198, %str_gen_check196, %choice.else176
  %err.msg.len32203 = trunc i64 %err.msg.len193 to i32
  %err.msg.data204 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct184, i32 0, i32 1
  %err.msg.data205 = load ptr, ptr %err.msg.data204, align 8
  %err.file.len206 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct186, i32 0, i32 0
  %err.file.len207 = load i64, ptr %err.file.len206, align 8
  %err.file.len208 = and i64 %err.file.len207, 281474976710655
  %str.tag209 = lshr i64 %err.file.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

str_stale198:                                     ; preds = %str_gen_check196
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok197

str_gen_check211:                                 ; preds = %str_ok197
  %arena.gen214 = call ptr @dva_arena_current()
  %arena.gen215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen214, i32 0, i32 4
  %arena.gen216 = load i64, ptr %arena.gen215, align 8
  %str.tag.match217 = icmp eq i64 %str.tag209, %arena.gen216
  br i1 %str.tag.match217, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %str_ok197
  %err.file.len32218 = trunc i64 %err.file.len208 to i32
  %err.file.data219 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct186, i32 0, i32 1
  %err.file.data220 = load ptr, ptr %err.file.data219, align 8
  %err.thread.rec221 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread222 = icmp ne ptr %err.thread.rec221, null
  br i1 %err.is.thread222, label %err.thread223, label %err.normal224

str_stale213:                                     ; preds = %str_gen_check211
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

err.thread223:                                    ; preds = %str_ok212
  %err.haserr.gep225 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec221, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep225, align 8
  %err.err.gep226 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec221, i32 0, i32 7
  store ptr %payload.ptr174, ptr %err.err.gep226, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal224:                                    ; preds = %str_ok212
  %err.panic.printf227 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code182, i32 %err.msg.len32203, ptr %err.msg.data205, i32 %err.file.len32218, ptr %err.file.data220, i64 %err.line188, i64 %err.col190)
  call void @exit(i32 1)
  unreachable

err.abort228:                                     ; No predecessors!
  br label %choice.exit177
}

define i64 @"dep_graph::pop_stack"(ptr %0) #1 {
entry:
  %var.stk = alloca ptr, align 8
  %var._64 = alloca ptr, align 8
  %var._63 = alloca ptr, align 8
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
  store i64 278, ptr %err.line.gep, align 8
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
  store i64 278, ptr %err.line.gep12, align 8
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
  %var.load40 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load40, 0
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen25 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen26 = load i64, ptr %arena.gen25, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen26
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.35
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data27 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len28 = load i64, ptr %err.file.len, align 8
  %err.file.len29 = and i64 %err.file.len28, 281474976710655
  %str.tag30 = lshr i64 %err.file.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check32:                                  ; preds = %str_ok
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok
  %err.file.len32 = trunc i64 %err.file.len29 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data39 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale34:                                      ; preds = %str_gen_check32
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

err.thread:                                       ; preds = %str_ok33
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok33
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data27, i32 %err.file.len32, ptr %err.file.data39, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.35
  %var.load41 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load41, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.35
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load42 = load ptr, ptr %var.s_ptr, align 8
  %a.load43 = load ptr, ptr %var.s_ptr, align 8
  %a.null44 = icmp eq ptr %a.load43, null
  br i1 %a.null44, label %a.create45, label %a.after46

a.create45:                                       ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %a.create48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur49 = call ptr @dva_arena_current()
  %a.buf50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 128)
  %a.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 0
  store i64 0, ptr %a.len.gep51, align 8
  %a.data.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 1
  store ptr %a.buf50, ptr %a.data.gep52, align 8
  %a.cap.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 2
  store i64 16, ptr %a.cap.gep53, align 8
  store ptr %a.create48, ptr %var.s_ptr, align 8
  br label %a.after46

a.after46:                                        ; preds = %a.create45, %choice.exit
  %a.load254 = load ptr, ptr %var.s_ptr, align 8
  %var.load55 = load i64, ptr %var.new_sp, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 1
  %a.wr.data56 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data56, i64 0
  store i64 %var.load55, ptr %a.elem.gep, align 8
  %arena.cur57 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep58 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep58, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep59 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep59, align 8
  br i1 %is.pos, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %a.after46
  br label %choice.exit62

choice.else61:                                    ; preds = %a.after46
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._63, align 8
  store ptr %payload.ptr, ptr %var._64, align 8
  %err.code.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code66 = load i64, ptr %err.code.gep65, align 8
  %err.msg.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct68 = load ptr, ptr %err.msg.gep67, align 8
  %err.file.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct70 = load ptr, ptr %err.file.gep69, align 8
  %err.line.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line72 = load i64, ptr %err.line.gep71, align 8
  %err.col.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col74 = load i64, ptr %err.col.gep73, align 8
  %err.msg.len75 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct68, i32 0, i32 0
  %err.msg.len76 = load i64, ptr %err.msg.len75, align 8
  %err.msg.len77 = and i64 %err.msg.len76, 281474976710655
  %str.tag78 = lshr i64 %err.msg.len76, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

choice.exit62:                                    ; preds = %err.abort, %choice.then60
  %var.load112 = load ptr, ptr %var.state, align 8
  %fld.gep113 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load112, i32 0, i32 3
  %fld.load114 = load ptr, ptr %fld.gep113, align 8
  store ptr %fld.load114, ptr %var.stk, align 8
  %var.load115 = load ptr, ptr %var.stk, align 8
  %a.load116 = load ptr, ptr %var.stk, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

str_gen_check80:                                  ; preds = %choice.else61
  %arena.gen83 = call ptr @dva_arena_current()
  %arena.gen84 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen83, i32 0, i32 4
  %arena.gen85 = load i64, ptr %arena.gen84, align 8
  %str.tag.match86 = icmp eq i64 %str.tag78, %arena.gen85
  br i1 %str.tag.match86, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %choice.else61
  %err.msg.len3287 = trunc i64 %err.msg.len77 to i32
  %err.msg.data88 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct68, i32 0, i32 1
  %err.msg.data89 = load ptr, ptr %err.msg.data88, align 8
  %err.file.len90 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct70, i32 0, i32 0
  %err.file.len91 = load i64, ptr %err.file.len90, align 8
  %err.file.len92 = and i64 %err.file.len91, 281474976710655
  %str.tag93 = lshr i64 %err.file.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale82:                                      ; preds = %str_gen_check80
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

str_gen_check95:                                  ; preds = %str_ok81
  %arena.gen98 = call ptr @dva_arena_current()
  %arena.gen99 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen98, i32 0, i32 4
  %arena.gen100 = load i64, ptr %arena.gen99, align 8
  %str.tag.match101 = icmp eq i64 %str.tag93, %arena.gen100
  br i1 %str.tag.match101, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok81
  %err.file.len32102 = trunc i64 %err.file.len92 to i32
  %err.file.data103 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct70, i32 0, i32 1
  %err.file.data104 = load ptr, ptr %err.file.data103, align 8
  %err.thread.rec105 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread106 = icmp ne ptr %err.thread.rec105, null
  br i1 %err.is.thread106, label %err.thread107, label %err.normal108

str_stale97:                                      ; preds = %str_gen_check95
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

err.thread107:                                    ; preds = %str_ok96
  %err.haserr.gep109 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec105, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep109, align 8
  %err.err.gep110 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec105, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep110, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal108:                                    ; preds = %str_ok96
  %err.panic.printf111 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code66, i32 %err.msg.len3287, ptr %err.msg.data89, i32 %err.file.len32102, ptr %err.file.data104, i64 %err.line72, i64 %err.col74)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit62

a.create118:                                      ; preds = %choice.exit62
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
  store ptr %a.create121, ptr %var.stk, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %choice.exit62
  %a.load2127 = load ptr, ptr %var.stk, align 8
  %var.load128 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull129 = icmp ne ptr %a.load2127, null
  br i1 %a.rd.nonnull129, label %a.rd.check130, label %a.rd.err.null132

a.rd.check130:                                    ; preds = %a.after119
  %a.rd.len135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.rd.len136 = load i64, ptr %a.rd.len135, align 8
  %a.rd.ge0 = icmp sge i64 %var.load128, 0
  %a.rd.lt137 = icmp slt i64 %var.load128, %a.rd.len136
  %a.rd.bounds138 = and i1 %a.rd.ge0, %a.rd.lt137
  br i1 %a.rd.bounds138, label %a.rd.ok131, label %a.rd.err.oob133

a.rd.ok131:                                       ; preds = %a.rd.check130
  %a.rd.data139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 1
  %a.rd.data140 = load ptr, ptr %a.rd.data139, align 8
  %a.rd.elem.gep141 = getelementptr i64, ptr %a.rd.data140, i64 %var.load128
  %a.rd.elem142 = load i64, ptr %a.rd.elem.gep141, align 8
  br label %a.rd.done134

a.rd.err.null132:                                 ; preds = %a.after119
  %arena.cur143 = call ptr @dva_arena_current()
  %err.alloc144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 0
  store i64 4011, ptr %err.code.gep145, align 8
  %err.msg.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep146, align 8
  %err.file.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep147, align 8
  %err.line.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 3
  store i64 282, ptr %err.line.gep148, align 8
  %err.col.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 4
  store i64 15, ptr %err.col.gep149, align 8
  %err.ctx.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 5
  %err.ctx0.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep151, align 8
  %err.ctx1.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep152, align 8
  %err.p2i153 = ptrtoint ptr %err.alloc144 to i64
  br label %a.rd.done134

a.rd.err.oob133:                                  ; preds = %a.rd.check130
  %arena.cur154 = call ptr @dva_arena_current()
  %err.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 56)
  %err.code.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 0
  store i64 4011, ptr %err.code.gep156, align 8
  %err.msg.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep157, align 8
  %err.file.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep158, align 8
  %err.line.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 3
  store i64 282, ptr %err.line.gep159, align 8
  %err.col.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 4
  store i64 15, ptr %err.col.gep160, align 8
  %err.ctx.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 5
  %err.ctx0.gep162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 0
  store i64 %var.load128, ptr %err.ctx0.gep162, align 8
  %err.ctx1.gep163 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 1
  store i64 %a.rd.len136, ptr %err.ctx1.gep163, align 8
  %err.p2i164 = ptrtoint ptr %err.alloc155 to i64
  br label %a.rd.done134

a.rd.done134:                                     ; preds = %a.rd.err.oob133, %a.rd.err.null132, %a.rd.ok131
  %a.rd.tag165 = phi i1 [ true, %a.rd.ok131 ], [ false, %a.rd.err.null132 ], [ false, %a.rd.err.oob133 ]
  %a.rd.pay166 = phi i64 [ %a.rd.elem142, %a.rd.ok131 ], [ %err.p2i153, %a.rd.err.null132 ], [ %err.p2i164, %a.rd.err.oob133 ]
  %ram.tag167 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag165, 0
  %ram.pay168 = insertvalue { i1, i64 } %ram.tag167, i64 %a.rd.pay166, 1
  %unwrap.is_pos169 = extractvalue { i1, i64 } %ram.pay168, 0
  br i1 %unwrap.is_pos169, label %unwrap.pos.36, label %unwrap.abort.36

unwrap.pos.36:                                    ; preds = %a.rd.done134
  %unwrap.pay.pos219 = extractvalue { i1, i64 } %ram.pay168, 1
  ret i64 %unwrap.pay.pos219

unwrap.abort.36:                                  ; preds = %a.rd.done134
  %unwrap.pay.abort170 = extractvalue { i1, i64 } %ram.pay168, 1
  %err.ptr171 = inttoptr i64 %unwrap.pay.abort170 to ptr
  %err.code.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr171, i32 0, i32 0
  %err.code173 = load i64, ptr %err.code.gep172, align 8
  %err.msg.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr171, i32 0, i32 1
  %err.msg.struct175 = load ptr, ptr %err.msg.gep174, align 8
  %err.file.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr171, i32 0, i32 2
  %err.file.struct177 = load ptr, ptr %err.file.gep176, align 8
  %err.line.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr171, i32 0, i32 3
  %err.line179 = load i64, ptr %err.line.gep178, align 8
  %err.col.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr171, i32 0, i32 4
  %err.col181 = load i64, ptr %err.col.gep180, align 8
  %err.msg.len182 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct175, i32 0, i32 0
  %err.msg.len183 = load i64, ptr %err.msg.len182, align 8
  %err.msg.len184 = and i64 %err.msg.len183, 281474976710655
  %str.tag185 = lshr i64 %err.msg.len183, 48
  %str.immortal186 = icmp eq i64 %str.tag185, 0
  br i1 %str.immortal186, label %str_ok188, label %str_gen_check187

str_gen_check187:                                 ; preds = %unwrap.abort.36
  %arena.gen190 = call ptr @dva_arena_current()
  %arena.gen191 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen190, i32 0, i32 4
  %arena.gen192 = load i64, ptr %arena.gen191, align 8
  %str.tag.match193 = icmp eq i64 %str.tag185, %arena.gen192
  br i1 %str.tag.match193, label %str_ok188, label %str_stale189

str_ok188:                                        ; preds = %str_stale189, %str_gen_check187, %unwrap.abort.36
  %err.msg.len32194 = trunc i64 %err.msg.len184 to i32
  %err.msg.data195 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct175, i32 0, i32 1
  %err.msg.data196 = load ptr, ptr %err.msg.data195, align 8
  %err.file.len197 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct177, i32 0, i32 0
  %err.file.len198 = load i64, ptr %err.file.len197, align 8
  %err.file.len199 = and i64 %err.file.len198, 281474976710655
  %str.tag200 = lshr i64 %err.file.len198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

str_stale189:                                     ; preds = %str_gen_check187
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok188

str_gen_check202:                                 ; preds = %str_ok188
  %arena.gen205 = call ptr @dva_arena_current()
  %arena.gen206 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen205, i32 0, i32 4
  %arena.gen207 = load i64, ptr %arena.gen206, align 8
  %str.tag.match208 = icmp eq i64 %str.tag200, %arena.gen207
  br i1 %str.tag.match208, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %str_ok188
  %err.file.len32209 = trunc i64 %err.file.len199 to i32
  %err.file.data210 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct177, i32 0, i32 1
  %err.file.data211 = load ptr, ptr %err.file.data210, align 8
  %err.thread.rec212 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread213 = icmp ne ptr %err.thread.rec212, null
  br i1 %err.is.thread213, label %err.thread214, label %err.normal215

str_stale204:                                     ; preds = %str_gen_check202
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

err.thread214:                                    ; preds = %str_ok203
  %err.haserr.gep216 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec212, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep216, align 8
  %err.err.gep217 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec212, i32 0, i32 7
  store ptr %err.ptr171, ptr %err.err.gep217, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal215:                                    ; preds = %str_ok203
  %err.panic.printf218 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code173, i32 %err.msg.len32194, ptr %err.msg.data196, i32 %err.file.len32209, ptr %err.file.data211, i64 %err.line179, i64 %err.col181)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1353 = alloca ptr, align 8
  %var._1352 = alloca ptr, align 8
  %var._1351 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1206 = alloca i64, align 8
  %var._i1205 = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var._1185 = alloca ptr, align 8
  %var._1182 = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1120 = alloca ptr, align 8
  %var._1117 = alloca i64, align 8
  %var._1008 = alloca ptr, align 8
  %var._1007 = alloca ptr, align 8
  %var._1006 = alloca ptr, align 8
  %var.min_idx = alloca i64, align 8
  %var.idx_v = alloca i64, align 8
  %var._963 = alloca ptr, align 8
  %var._960 = alloca i64, align 8
  %var.lu2 = alloca i64, align 8
  %var._898 = alloca ptr, align 8
  %var._895 = alloca i64, align 8
  %var.v_on = alloca i1, align 1
  %var._830 = alloca ptr, align 8
  %var._827 = alloca i1, align 1
  %var._718 = alloca ptr, align 8
  %var._717 = alloca ptr, align 8
  %var._716 = alloca ptr, align 8
  %var.min_v = alloca i64, align 8
  %var.low_v = alloca i64, align 8
  %var._673 = alloca ptr, align 8
  %var._670 = alloca i64, align 8
  %var.lu1 = alloca i64, align 8
  %var._608 = alloca ptr, align 8
  %var._605 = alloca i64, align 8
  %var.v_idx = alloca i64, align 8
  %var._536 = alloca ptr, align 8
  %var._533 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._467 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._318 = alloca ptr, align 8
  %var._317 = alloca ptr, align 8
  %var._316 = alloca ptr, align 8
  %var._234 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var._232 = alloca ptr, align 8
  %var._152 = alloca ptr, align 8
  %var._151 = alloca ptr, align 8
  %var._150 = alloca ptr, align 8
  %var._70 = alloca ptr, align 8
  %var._69 = alloca ptr, align 8
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
  store i64 290, ptr %err.line.gep, align 8
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
  store i64 290, ptr %err.line.gep21, align 8
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
  %var.load50 = load ptr, ptr %var.idxs, align 8
  %a.load51 = load ptr, ptr %var.idxs, align 8
  %a.null52 = icmp eq ptr %a.load51, null
  br i1 %a.null52, label %a.create53, label %a.after54

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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen34 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen35 = load i64, ptr %arena.gen34, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen35
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.37
  %err.msg.len3236 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data37 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len38 = load i64, ptr %err.file.len, align 8
  %err.file.len39 = and i64 %err.file.len38, 281474976710655
  %str.tag40 = lshr i64 %err.file.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check42:                                  ; preds = %str_ok
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok
  %err.file.len32 = trunc i64 %err.file.len39 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data49 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale44:                                      ; preds = %str_gen_check42
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

err.thread:                                       ; preds = %str_ok43
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok43
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3236, ptr %err.msg.data37, i32 %err.file.len32, ptr %err.file.data49, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create53:                                       ; preds = %unwrap.pos.37
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
  store ptr %a.create56, ptr %var.idxs, align 8
  br label %a.after54

a.after54:                                        ; preds = %a.create53, %unwrap.pos.37
  %a.load262 = load ptr, ptr %var.idxs, align 8
  %var.load63 = load i64, ptr %var.u, align 8
  %var.load64 = load i64, ptr %var.cnt, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load262, i32 0, i32 1
  %a.wr.data65 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data65, i64 %var.load63
  store i64 %var.load64, ptr %a.elem.gep, align 8
  %arena.cur66 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep67 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep67, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep68 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep68, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after54
  br label %choice.exit

choice.else:                                      ; preds = %a.after54
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._69, align 8
  store ptr %payload.ptr, ptr %var._70, align 8
  %err.code.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code72 = load i64, ptr %err.code.gep71, align 8
  %err.msg.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct74 = load ptr, ptr %err.msg.gep73, align 8
  %err.file.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct76 = load ptr, ptr %err.file.gep75, align 8
  %err.line.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line78 = load i64, ptr %err.line.gep77, align 8
  %err.col.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col80 = load i64, ptr %err.col.gep79, align 8
  %err.msg.len81 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct74, i32 0, i32 0
  %err.msg.len82 = load i64, ptr %err.msg.len81, align 8
  %err.msg.len83 = and i64 %err.msg.len82, 281474976710655
  %str.tag84 = lshr i64 %err.msg.len82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load118 = load ptr, ptr %var.lows, align 8
  %a.load119 = load ptr, ptr %var.lows, align 8
  %a.null120 = icmp eq ptr %a.load119, null
  br i1 %a.null120, label %a.create121, label %a.after122

str_gen_check86:                                  ; preds = %choice.else
  %arena.gen89 = call ptr @dva_arena_current()
  %arena.gen90 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen89, i32 0, i32 4
  %arena.gen91 = load i64, ptr %arena.gen90, align 8
  %str.tag.match92 = icmp eq i64 %str.tag84, %arena.gen91
  br i1 %str.tag.match92, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %choice.else
  %err.msg.len3293 = trunc i64 %err.msg.len83 to i32
  %err.msg.data94 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct74, i32 0, i32 1
  %err.msg.data95 = load ptr, ptr %err.msg.data94, align 8
  %err.file.len96 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct76, i32 0, i32 0
  %err.file.len97 = load i64, ptr %err.file.len96, align 8
  %err.file.len98 = and i64 %err.file.len97, 281474976710655
  %str.tag99 = lshr i64 %err.file.len97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

str_stale88:                                      ; preds = %str_gen_check86
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

str_gen_check101:                                 ; preds = %str_ok87
  %arena.gen104 = call ptr @dva_arena_current()
  %arena.gen105 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen104, i32 0, i32 4
  %arena.gen106 = load i64, ptr %arena.gen105, align 8
  %str.tag.match107 = icmp eq i64 %str.tag99, %arena.gen106
  br i1 %str.tag.match107, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %str_ok87
  %err.file.len32108 = trunc i64 %err.file.len98 to i32
  %err.file.data109 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct76, i32 0, i32 1
  %err.file.data110 = load ptr, ptr %err.file.data109, align 8
  %err.thread.rec111 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread112 = icmp ne ptr %err.thread.rec111, null
  br i1 %err.is.thread112, label %err.thread113, label %err.normal114

str_stale103:                                     ; preds = %str_gen_check101
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

err.thread113:                                    ; preds = %str_ok102
  %err.haserr.gep115 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec111, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep115, align 8
  %err.err.gep116 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec111, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep116, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal114:                                    ; preds = %str_ok102
  %err.panic.printf117 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code72, i32 %err.msg.len3293, ptr %err.msg.data95, i32 %err.file.len32108, ptr %err.file.data110, i64 %err.line78, i64 %err.col80)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create121:                                      ; preds = %choice.exit
  %arena.cur123 = call ptr @dva_arena_current()
  %a.create124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 24)
  %arena.cur125 = call ptr @dva_arena_current()
  %a.buf126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 128)
  %a.len.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 0
  store i64 0, ptr %a.len.gep127, align 8
  %a.data.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 1
  store ptr %a.buf126, ptr %a.data.gep128, align 8
  %a.cap.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 2
  store i64 16, ptr %a.cap.gep129, align 8
  store ptr %a.create124, ptr %var.lows, align 8
  br label %a.after122

a.after122:                                       ; preds = %a.create121, %choice.exit
  %a.load2130 = load ptr, ptr %var.lows, align 8
  %var.load131 = load i64, ptr %var.u, align 8
  %var.load132 = load i64, ptr %var.cnt, align 8
  %a.wr.data133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 1
  %a.wr.data134 = load ptr, ptr %a.wr.data133, align 8
  %a.elem.gep135 = getelementptr i64, ptr %a.wr.data134, i64 %var.load131
  store i64 %var.load132, ptr %a.elem.gep135, align 8
  %arena.cur136 = call ptr @dva_arena_current()
  %a.wr.succ137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 16)
  %tag.gep138 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ137, i32 0, i32 0
  store i64 1, ptr %tag.gep138, align 8
  %pay.gep139 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ137, i32 0, i32 1
  store ptr null, ptr %pay.gep139, align 8
  %tag.gep140 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ137, i32 0, i32 0
  %tag.id141 = load i64, ptr %tag.gep140, align 8
  %tag.eq.one142 = icmp eq i64 %tag.id141, 1
  %tag.eq.two143 = icmp eq i64 %tag.id141, 2
  %is.pos144 = or i1 %tag.eq.one142, %tag.eq.two143
  %pay.gep145 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ137, i32 0, i32 1
  %payload.ptr146 = load ptr, ptr %pay.gep145, align 8
  br i1 %is.pos144, label %choice.then147, label %choice.else148

choice.then147:                                   ; preds = %a.after122
  br label %choice.exit149

choice.else148:                                   ; preds = %a.after122
  store ptr %payload.ptr146, ptr %var._150, align 8
  store ptr %payload.ptr146, ptr %var._151, align 8
  store ptr %payload.ptr146, ptr %var._152, align 8
  %err.code.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr146, i32 0, i32 0
  %err.code154 = load i64, ptr %err.code.gep153, align 8
  %err.msg.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr146, i32 0, i32 1
  %err.msg.struct156 = load ptr, ptr %err.msg.gep155, align 8
  %err.file.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr146, i32 0, i32 2
  %err.file.struct158 = load ptr, ptr %err.file.gep157, align 8
  %err.line.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr146, i32 0, i32 3
  %err.line160 = load i64, ptr %err.line.gep159, align 8
  %err.col.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr146, i32 0, i32 4
  %err.col162 = load i64, ptr %err.col.gep161, align 8
  %err.msg.len163 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct156, i32 0, i32 0
  %err.msg.len164 = load i64, ptr %err.msg.len163, align 8
  %err.msg.len165 = and i64 %err.msg.len164, 281474976710655
  %str.tag166 = lshr i64 %err.msg.len164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

choice.exit149:                                   ; preds = %err.abort200, %choice.then147
  %var.load201 = load ptr, ptr %var.s_cnt, align 8
  %a.load202 = load ptr, ptr %var.s_cnt, align 8
  %a.null203 = icmp eq ptr %a.load202, null
  br i1 %a.null203, label %a.create204, label %a.after205

str_gen_check168:                                 ; preds = %choice.else148
  %arena.gen171 = call ptr @dva_arena_current()
  %arena.gen172 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen171, i32 0, i32 4
  %arena.gen173 = load i64, ptr %arena.gen172, align 8
  %str.tag.match174 = icmp eq i64 %str.tag166, %arena.gen173
  br i1 %str.tag.match174, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %choice.else148
  %err.msg.len32175 = trunc i64 %err.msg.len165 to i32
  %err.msg.data176 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct156, i32 0, i32 1
  %err.msg.data177 = load ptr, ptr %err.msg.data176, align 8
  %err.file.len178 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct158, i32 0, i32 0
  %err.file.len179 = load i64, ptr %err.file.len178, align 8
  %err.file.len180 = and i64 %err.file.len179, 281474976710655
  %str.tag181 = lshr i64 %err.file.len179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_stale170:                                     ; preds = %str_gen_check168
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str_gen_check183:                                 ; preds = %str_ok169
  %arena.gen186 = call ptr @dva_arena_current()
  %arena.gen187 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen186, i32 0, i32 4
  %arena.gen188 = load i64, ptr %arena.gen187, align 8
  %str.tag.match189 = icmp eq i64 %str.tag181, %arena.gen188
  br i1 %str.tag.match189, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %str_ok169
  %err.file.len32190 = trunc i64 %err.file.len180 to i32
  %err.file.data191 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct158, i32 0, i32 1
  %err.file.data192 = load ptr, ptr %err.file.data191, align 8
  %err.thread.rec193 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread194 = icmp ne ptr %err.thread.rec193, null
  br i1 %err.is.thread194, label %err.thread195, label %err.normal196

str_stale185:                                     ; preds = %str_gen_check183
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

err.thread195:                                    ; preds = %str_ok184
  %err.haserr.gep197 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec193, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep197, align 8
  %err.err.gep198 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec193, i32 0, i32 7
  store ptr %payload.ptr146, ptr %err.err.gep198, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal196:                                    ; preds = %str_ok184
  %err.panic.printf199 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code154, i32 %err.msg.len32175, ptr %err.msg.data177, i32 %err.file.len32190, ptr %err.file.data192, i64 %err.line160, i64 %err.col162)
  call void @exit(i32 1)
  unreachable

err.abort200:                                     ; No predecessors!
  br label %choice.exit149

a.create204:                                      ; preds = %choice.exit149
  %arena.cur206 = call ptr @dva_arena_current()
  %a.create207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 24)
  %arena.cur208 = call ptr @dva_arena_current()
  %a.buf209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 128)
  %a.len.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 0
  store i64 0, ptr %a.len.gep210, align 8
  %a.data.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 1
  store ptr %a.buf209, ptr %a.data.gep211, align 8
  %a.cap.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 2
  store i64 16, ptr %a.cap.gep212, align 8
  store ptr %a.create207, ptr %var.s_cnt, align 8
  br label %a.after205

a.after205:                                       ; preds = %a.create204, %choice.exit149
  %a.load2213 = load ptr, ptr %var.s_cnt, align 8
  %var.load214 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load214, 1
  %a.wr.data215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2213, i32 0, i32 1
  %a.wr.data216 = load ptr, ptr %a.wr.data215, align 8
  %a.elem.gep217 = getelementptr i64, ptr %a.wr.data216, i64 0
  store i64 %addtmp, ptr %a.elem.gep217, align 8
  %arena.cur218 = call ptr @dva_arena_current()
  %a.wr.succ219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %tag.gep220 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ219, i32 0, i32 0
  store i64 1, ptr %tag.gep220, align 8
  %pay.gep221 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ219, i32 0, i32 1
  store ptr null, ptr %pay.gep221, align 8
  %tag.gep222 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ219, i32 0, i32 0
  %tag.id223 = load i64, ptr %tag.gep222, align 8
  %tag.eq.one224 = icmp eq i64 %tag.id223, 1
  %tag.eq.two225 = icmp eq i64 %tag.id223, 2
  %is.pos226 = or i1 %tag.eq.one224, %tag.eq.two225
  %pay.gep227 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ219, i32 0, i32 1
  %payload.ptr228 = load ptr, ptr %pay.gep227, align 8
  br i1 %is.pos226, label %choice.then229, label %choice.else230

choice.then229:                                   ; preds = %a.after205
  br label %choice.exit231

choice.else230:                                   ; preds = %a.after205
  store ptr %payload.ptr228, ptr %var._232, align 8
  store ptr %payload.ptr228, ptr %var._233, align 8
  store ptr %payload.ptr228, ptr %var._234, align 8
  %err.code.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr228, i32 0, i32 0
  %err.code236 = load i64, ptr %err.code.gep235, align 8
  %err.msg.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr228, i32 0, i32 1
  %err.msg.struct238 = load ptr, ptr %err.msg.gep237, align 8
  %err.file.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr228, i32 0, i32 2
  %err.file.struct240 = load ptr, ptr %err.file.gep239, align 8
  %err.line.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr228, i32 0, i32 3
  %err.line242 = load i64, ptr %err.line.gep241, align 8
  %err.col.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr228, i32 0, i32 4
  %err.col244 = load i64, ptr %err.col.gep243, align 8
  %err.msg.len245 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct238, i32 0, i32 0
  %err.msg.len246 = load i64, ptr %err.msg.len245, align 8
  %err.msg.len247 = and i64 %err.msg.len246, 281474976710655
  %str.tag248 = lshr i64 %err.msg.len246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

choice.exit231:                                   ; preds = %err.abort282, %choice.then229
  %var.load283 = load ptr, ptr %var.state, align 8
  %var.load284 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load283, i64 %var.load284)
  %var.load285 = load ptr, ptr %var.ons, align 8
  %a.load286 = load ptr, ptr %var.ons, align 8
  %a.null287 = icmp eq ptr %a.load286, null
  br i1 %a.null287, label %a.create288, label %a.after289

str_gen_check250:                                 ; preds = %choice.else230
  %arena.gen253 = call ptr @dva_arena_current()
  %arena.gen254 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen253, i32 0, i32 4
  %arena.gen255 = load i64, ptr %arena.gen254, align 8
  %str.tag.match256 = icmp eq i64 %str.tag248, %arena.gen255
  br i1 %str.tag.match256, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %choice.else230
  %err.msg.len32257 = trunc i64 %err.msg.len247 to i32
  %err.msg.data258 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct238, i32 0, i32 1
  %err.msg.data259 = load ptr, ptr %err.msg.data258, align 8
  %err.file.len260 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct240, i32 0, i32 0
  %err.file.len261 = load i64, ptr %err.file.len260, align 8
  %err.file.len262 = and i64 %err.file.len261, 281474976710655
  %str.tag263 = lshr i64 %err.file.len261, 48
  %str.immortal264 = icmp eq i64 %str.tag263, 0
  br i1 %str.immortal264, label %str_ok266, label %str_gen_check265

str_stale252:                                     ; preds = %str_gen_check250
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

str_gen_check265:                                 ; preds = %str_ok251
  %arena.gen268 = call ptr @dva_arena_current()
  %arena.gen269 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen268, i32 0, i32 4
  %arena.gen270 = load i64, ptr %arena.gen269, align 8
  %str.tag.match271 = icmp eq i64 %str.tag263, %arena.gen270
  br i1 %str.tag.match271, label %str_ok266, label %str_stale267

str_ok266:                                        ; preds = %str_stale267, %str_gen_check265, %str_ok251
  %err.file.len32272 = trunc i64 %err.file.len262 to i32
  %err.file.data273 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct240, i32 0, i32 1
  %err.file.data274 = load ptr, ptr %err.file.data273, align 8
  %err.thread.rec275 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread276 = icmp ne ptr %err.thread.rec275, null
  br i1 %err.is.thread276, label %err.thread277, label %err.normal278

str_stale267:                                     ; preds = %str_gen_check265
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok266

err.thread277:                                    ; preds = %str_ok266
  %err.haserr.gep279 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec275, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep279, align 8
  %err.err.gep280 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec275, i32 0, i32 7
  store ptr %payload.ptr228, ptr %err.err.gep280, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal278:                                    ; preds = %str_ok266
  %err.panic.printf281 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code236, i32 %err.msg.len32257, ptr %err.msg.data259, i32 %err.file.len32272, ptr %err.file.data274, i64 %err.line242, i64 %err.col244)
  call void @exit(i32 1)
  unreachable

err.abort282:                                     ; No predecessors!
  br label %choice.exit231

a.create288:                                      ; preds = %choice.exit231
  %arena.cur290 = call ptr @dva_arena_current()
  %a.create291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 24)
  %arena.cur292 = call ptr @dva_arena_current()
  %a.buf293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 128)
  %a.len.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 0
  store i64 0, ptr %a.len.gep294, align 8
  %a.data.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 1
  store ptr %a.buf293, ptr %a.data.gep295, align 8
  %a.cap.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 2
  store i64 16, ptr %a.cap.gep296, align 8
  store ptr %a.create291, ptr %var.ons, align 8
  br label %a.after289

a.after289:                                       ; preds = %a.create288, %choice.exit231
  %a.load2297 = load ptr, ptr %var.ons, align 8
  %var.load298 = load i64, ptr %var.u, align 8
  %a.wr.data299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 1
  %a.wr.data300 = load ptr, ptr %a.wr.data299, align 8
  %a.elem.gep301 = getelementptr i64, ptr %a.wr.data300, i64 %var.load298
  store i64 1, ptr %a.elem.gep301, align 8
  %arena.cur302 = call ptr @dva_arena_current()
  %a.wr.succ303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 16)
  %tag.gep304 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ303, i32 0, i32 0
  store i64 1, ptr %tag.gep304, align 8
  %pay.gep305 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ303, i32 0, i32 1
  store ptr null, ptr %pay.gep305, align 8
  %tag.gep306 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ303, i32 0, i32 0
  %tag.id307 = load i64, ptr %tag.gep306, align 8
  %tag.eq.one308 = icmp eq i64 %tag.id307, 1
  %tag.eq.two309 = icmp eq i64 %tag.id307, 2
  %is.pos310 = or i1 %tag.eq.one308, %tag.eq.two309
  %pay.gep311 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ303, i32 0, i32 1
  %payload.ptr312 = load ptr, ptr %pay.gep311, align 8
  br i1 %is.pos310, label %choice.then313, label %choice.else314

choice.then313:                                   ; preds = %a.after289
  br label %choice.exit315

choice.else314:                                   ; preds = %a.after289
  store ptr %payload.ptr312, ptr %var._316, align 8
  store ptr %payload.ptr312, ptr %var._317, align 8
  store ptr %payload.ptr312, ptr %var._318, align 8
  %err.code.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr312, i32 0, i32 0
  %err.code320 = load i64, ptr %err.code.gep319, align 8
  %err.msg.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr312, i32 0, i32 1
  %err.msg.struct322 = load ptr, ptr %err.msg.gep321, align 8
  %err.file.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr312, i32 0, i32 2
  %err.file.struct324 = load ptr, ptr %err.file.gep323, align 8
  %err.line.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr312, i32 0, i32 3
  %err.line326 = load i64, ptr %err.line.gep325, align 8
  %err.col.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr312, i32 0, i32 4
  %err.col328 = load i64, ptr %err.col.gep327, align 8
  %err.msg.len329 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct322, i32 0, i32 0
  %err.msg.len330 = load i64, ptr %err.msg.len329, align 8
  %err.msg.len331 = and i64 %err.msg.len330, 281474976710655
  %str.tag332 = lshr i64 %err.msg.len330, 48
  %str.immortal333 = icmp eq i64 %str.tag332, 0
  br i1 %str.immortal333, label %str_ok335, label %str_gen_check334

choice.exit315:                                   ; preds = %err.abort366, %choice.then313
  %var.load367 = load ptr, ptr %var.graph, align 8
  %fld.gep368 = getelementptr inbounds { ptr, ptr }, ptr %var.load367, i32 0, i32 0
  %fld.load369 = load ptr, ptr %fld.gep368, align 8
  %var.load370 = load i64, ptr %var.u, align 8
  %a.rd.nonnull371 = icmp ne ptr %fld.load369, null
  br i1 %a.rd.nonnull371, label %a.rd.check372, label %a.rd.err.null374

str_gen_check334:                                 ; preds = %choice.else314
  %arena.gen337 = call ptr @dva_arena_current()
  %arena.gen338 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen337, i32 0, i32 4
  %arena.gen339 = load i64, ptr %arena.gen338, align 8
  %str.tag.match340 = icmp eq i64 %str.tag332, %arena.gen339
  br i1 %str.tag.match340, label %str_ok335, label %str_stale336

str_ok335:                                        ; preds = %str_stale336, %str_gen_check334, %choice.else314
  %err.msg.len32341 = trunc i64 %err.msg.len331 to i32
  %err.msg.data342 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct322, i32 0, i32 1
  %err.msg.data343 = load ptr, ptr %err.msg.data342, align 8
  %err.file.len344 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct324, i32 0, i32 0
  %err.file.len345 = load i64, ptr %err.file.len344, align 8
  %err.file.len346 = and i64 %err.file.len345, 281474976710655
  %str.tag347 = lshr i64 %err.file.len345, 48
  %str.immortal348 = icmp eq i64 %str.tag347, 0
  br i1 %str.immortal348, label %str_ok350, label %str_gen_check349

str_stale336:                                     ; preds = %str_gen_check334
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok335

str_gen_check349:                                 ; preds = %str_ok335
  %arena.gen352 = call ptr @dva_arena_current()
  %arena.gen353 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen352, i32 0, i32 4
  %arena.gen354 = load i64, ptr %arena.gen353, align 8
  %str.tag.match355 = icmp eq i64 %str.tag347, %arena.gen354
  br i1 %str.tag.match355, label %str_ok350, label %str_stale351

str_ok350:                                        ; preds = %str_stale351, %str_gen_check349, %str_ok335
  %err.file.len32356 = trunc i64 %err.file.len346 to i32
  %err.file.data357 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct324, i32 0, i32 1
  %err.file.data358 = load ptr, ptr %err.file.data357, align 8
  %err.thread.rec359 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread360 = icmp ne ptr %err.thread.rec359, null
  br i1 %err.is.thread360, label %err.thread361, label %err.normal362

str_stale351:                                     ; preds = %str_gen_check349
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok350

err.thread361:                                    ; preds = %str_ok350
  %err.haserr.gep363 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec359, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep363, align 8
  %err.err.gep364 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec359, i32 0, i32 7
  store ptr %payload.ptr312, ptr %err.err.gep364, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal362:                                    ; preds = %str_ok350
  %err.panic.printf365 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code320, i32 %err.msg.len32341, ptr %err.msg.data343, i32 %err.file.len32356, ptr %err.file.data358, i64 %err.line326, i64 %err.col328)
  call void @exit(i32 1)
  unreachable

err.abort366:                                     ; No predecessors!
  br label %choice.exit315

a.rd.check372:                                    ; preds = %choice.exit315
  %a.rd.len377 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load369, i32 0, i32 0
  %a.rd.len378 = load i64, ptr %a.rd.len377, align 8
  %a.rd.ge0 = icmp sge i64 %var.load370, 0
  %a.rd.lt379 = icmp slt i64 %var.load370, %a.rd.len378
  %a.rd.bounds380 = and i1 %a.rd.ge0, %a.rd.lt379
  br i1 %a.rd.bounds380, label %a.rd.ok373, label %a.rd.err.oob375

a.rd.ok373:                                       ; preds = %a.rd.check372
  %a.rd.data381 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load369, i32 0, i32 1
  %a.rd.data382 = load ptr, ptr %a.rd.data381, align 8
  %a.rd.elem.gep383 = getelementptr i64, ptr %a.rd.data382, i64 %var.load370
  %a.rd.elem384 = load i64, ptr %a.rd.elem.gep383, align 8
  br label %a.rd.done376

a.rd.err.null374:                                 ; preds = %choice.exit315
  %arena.cur385 = call ptr @dva_arena_current()
  %err.alloc386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 56)
  %err.code.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 0
  store i64 4011, ptr %err.code.gep387, align 8
  %err.msg.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep388, align 8
  %err.file.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep389, align 8
  %err.line.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 3
  store i64 0, ptr %err.line.gep390, align 8
  %err.col.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 4
  store i64 0, ptr %err.col.gep391, align 8
  %err.ctx.gep392 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc386, i32 0, i32 5
  %err.ctx0.gep393 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep392, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep393, align 8
  %err.ctx1.gep394 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep392, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep394, align 8
  %err.p2i395 = ptrtoint ptr %err.alloc386 to i64
  br label %a.rd.done376

a.rd.err.oob375:                                  ; preds = %a.rd.check372
  %arena.cur396 = call ptr @dva_arena_current()
  %err.alloc397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 56)
  %err.code.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 0
  store i64 4011, ptr %err.code.gep398, align 8
  %err.msg.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep399, align 8
  %err.file.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep400, align 8
  %err.line.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 3
  store i64 0, ptr %err.line.gep401, align 8
  %err.col.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 4
  store i64 0, ptr %err.col.gep402, align 8
  %err.ctx.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 5
  %err.ctx0.gep404 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep403, i32 0, i32 0
  store i64 %var.load370, ptr %err.ctx0.gep404, align 8
  %err.ctx1.gep405 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep403, i32 0, i32 1
  store i64 %a.rd.len378, ptr %err.ctx1.gep405, align 8
  %err.p2i406 = ptrtoint ptr %err.alloc397 to i64
  br label %a.rd.done376

a.rd.done376:                                     ; preds = %a.rd.err.oob375, %a.rd.err.null374, %a.rd.ok373
  %a.rd.tag407 = phi i1 [ true, %a.rd.ok373 ], [ false, %a.rd.err.null374 ], [ false, %a.rd.err.oob375 ]
  %a.rd.pay408 = phi i64 [ %a.rd.elem384, %a.rd.ok373 ], [ %err.p2i395, %a.rd.err.null374 ], [ %err.p2i406, %a.rd.err.oob375 ]
  %ram.tag409 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag407, 0
  %ram.pay410 = insertvalue { i1, i64 } %ram.tag409, i64 %a.rd.pay408, 1
  %unwrap.is_pos411 = extractvalue { i1, i64 } %ram.pay410, 0
  br i1 %unwrap.is_pos411, label %unwrap.pos.38, label %unwrap.abort.38

unwrap.pos.38:                                    ; preds = %a.rd.done376
  %unwrap.pay.pos461 = extractvalue { i1, i64 } %ram.pay410, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos461 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load462 = load ptr, ptr %var.u_node, align 8
  %fld.gep463 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load462, i32 0, i32 1
  %fld.load464 = load ptr, ptr %fld.gep463, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load464, i32 0, i32 0
  %arr.cycle.len465 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load464, i32 0, i32 1
  %arr.cycle.data466 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

unwrap.abort.38:                                  ; preds = %a.rd.done376
  %unwrap.pay.abort412 = extractvalue { i1, i64 } %ram.pay410, 1
  %err.ptr413 = inttoptr i64 %unwrap.pay.abort412 to ptr
  %err.code.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr413, i32 0, i32 0
  %err.code415 = load i64, ptr %err.code.gep414, align 8
  %err.msg.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr413, i32 0, i32 1
  %err.msg.struct417 = load ptr, ptr %err.msg.gep416, align 8
  %err.file.gep418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr413, i32 0, i32 2
  %err.file.struct419 = load ptr, ptr %err.file.gep418, align 8
  %err.line.gep420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr413, i32 0, i32 3
  %err.line421 = load i64, ptr %err.line.gep420, align 8
  %err.col.gep422 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr413, i32 0, i32 4
  %err.col423 = load i64, ptr %err.col.gep422, align 8
  %err.msg.len424 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct417, i32 0, i32 0
  %err.msg.len425 = load i64, ptr %err.msg.len424, align 8
  %err.msg.len426 = and i64 %err.msg.len425, 281474976710655
  %str.tag427 = lshr i64 %err.msg.len425, 48
  %str.immortal428 = icmp eq i64 %str.tag427, 0
  br i1 %str.immortal428, label %str_ok430, label %str_gen_check429

str_gen_check429:                                 ; preds = %unwrap.abort.38
  %arena.gen432 = call ptr @dva_arena_current()
  %arena.gen433 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen432, i32 0, i32 4
  %arena.gen434 = load i64, ptr %arena.gen433, align 8
  %str.tag.match435 = icmp eq i64 %str.tag427, %arena.gen434
  br i1 %str.tag.match435, label %str_ok430, label %str_stale431

str_ok430:                                        ; preds = %str_stale431, %str_gen_check429, %unwrap.abort.38
  %err.msg.len32436 = trunc i64 %err.msg.len426 to i32
  %err.msg.data437 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct417, i32 0, i32 1
  %err.msg.data438 = load ptr, ptr %err.msg.data437, align 8
  %err.file.len439 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct419, i32 0, i32 0
  %err.file.len440 = load i64, ptr %err.file.len439, align 8
  %err.file.len441 = and i64 %err.file.len440, 281474976710655
  %str.tag442 = lshr i64 %err.file.len440, 48
  %str.immortal443 = icmp eq i64 %str.tag442, 0
  br i1 %str.immortal443, label %str_ok445, label %str_gen_check444

str_stale431:                                     ; preds = %str_gen_check429
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok430

str_gen_check444:                                 ; preds = %str_ok430
  %arena.gen447 = call ptr @dva_arena_current()
  %arena.gen448 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen447, i32 0, i32 4
  %arena.gen449 = load i64, ptr %arena.gen448, align 8
  %str.tag.match450 = icmp eq i64 %str.tag442, %arena.gen449
  br i1 %str.tag.match450, label %str_ok445, label %str_stale446

str_ok445:                                        ; preds = %str_stale446, %str_gen_check444, %str_ok430
  %err.file.len32451 = trunc i64 %err.file.len441 to i32
  %err.file.data452 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct419, i32 0, i32 1
  %err.file.data453 = load ptr, ptr %err.file.data452, align 8
  %err.thread.rec454 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread455 = icmp ne ptr %err.thread.rec454, null
  br i1 %err.is.thread455, label %err.thread456, label %err.normal457

str_stale446:                                     ; preds = %str_gen_check444
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok445

err.thread456:                                    ; preds = %str_ok445
  %err.haserr.gep458 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec454, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep458, align 8
  %err.err.gep459 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec454, i32 0, i32 7
  store ptr %err.ptr413, ptr %err.err.gep459, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal457:                                    ; preds = %str_ok445
  %err.panic.printf460 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code415, i32 %err.msg.len32436, ptr %err.msg.data438, i32 %err.file.len32451, ptr %err.file.data453, i64 %err.line421, i64 %err.col423)
  call void @exit(i32 1)
  unreachable

loop.header.39:                                   ; preds = %loop.latch.39, %unwrap.pos.38
  %counter.load = load i64, ptr %loop.idx.39, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len465
  br i1 %loop.cond, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data466, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %arr.elem.ptr, ptr %var._467, align 8
  store ptr %arr.elem.ptr, ptr %var.d_name, align 8
  %var.load468 = load ptr, ptr %var.graph, align 8
  %var.load469 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load468, ptr %var.load469)
  store i64 %call.res, ptr %var.v, align 8
  %var.load470 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load470, 0
  br i1 %cmptmp, label %choice.then471, label %choice.exit472

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %choice.exit472
  %step.val = load i64, ptr %loop.step.39, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  %var.load1057 = load ptr, ptr %var.lows, align 8
  %a.load1058 = load ptr, ptr %var.lows, align 8
  %a.null1059 = icmp eq ptr %a.load1058, null
  br i1 %a.null1059, label %a.create1060, label %a.after1061

choice.then471:                                   ; preds = %loop.body.39
  %var.load473 = load ptr, ptr %var.idxs, align 8
  %a.load474 = load ptr, ptr %var.idxs, align 8
  %a.null475 = icmp eq ptr %a.load474, null
  br i1 %a.null475, label %a.create476, label %a.after477

choice.exit472:                                   ; preds = %choice.exit541, %loop.body.39
  br label %loop.latch.39

a.create476:                                      ; preds = %choice.then471
  %arena.cur478 = call ptr @dva_arena_current()
  %a.create479 = call ptr @dva_arena_alloc(ptr %arena.cur478, i64 24)
  %arena.cur480 = call ptr @dva_arena_current()
  %a.buf481 = call ptr @dva_arena_alloc(ptr %arena.cur480, i64 128)
  %a.len.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create479, i32 0, i32 0
  store i64 0, ptr %a.len.gep482, align 8
  %a.data.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create479, i32 0, i32 1
  store ptr %a.buf481, ptr %a.data.gep483, align 8
  %a.cap.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create479, i32 0, i32 2
  store i64 16, ptr %a.cap.gep484, align 8
  store ptr %a.create479, ptr %var.idxs, align 8
  br label %a.after477

a.after477:                                       ; preds = %a.create476, %choice.then471
  %a.load2485 = load ptr, ptr %var.idxs, align 8
  %var.load486 = load i64, ptr %var.v, align 8
  %a.rd.nonnull487 = icmp ne ptr %a.load2485, null
  br i1 %a.rd.nonnull487, label %a.rd.check488, label %a.rd.err.null490

a.rd.check488:                                    ; preds = %a.after477
  %a.rd.len493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2485, i32 0, i32 0
  %a.rd.len494 = load i64, ptr %a.rd.len493, align 8
  %a.rd.ge0495 = icmp sge i64 %var.load486, 0
  %a.rd.lt496 = icmp slt i64 %var.load486, %a.rd.len494
  %a.rd.bounds497 = and i1 %a.rd.ge0495, %a.rd.lt496
  br i1 %a.rd.bounds497, label %a.rd.ok489, label %a.rd.err.oob491

a.rd.ok489:                                       ; preds = %a.rd.check488
  %a.rd.data498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2485, i32 0, i32 1
  %a.rd.data499 = load ptr, ptr %a.rd.data498, align 8
  %a.rd.elem.gep500 = getelementptr i64, ptr %a.rd.data499, i64 %var.load486
  %a.rd.elem501 = load i64, ptr %a.rd.elem.gep500, align 8
  br label %a.rd.done492

a.rd.err.null490:                                 ; preds = %a.after477
  %arena.cur502 = call ptr @dva_arena_current()
  %err.alloc503 = call ptr @dva_arena_alloc(ptr %arena.cur502, i64 56)
  %err.code.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 0
  store i64 4011, ptr %err.code.gep504, align 8
  %err.msg.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep505, align 8
  %err.file.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep506, align 8
  %err.line.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 3
  store i64 302, ptr %err.line.gep507, align 8
  %err.col.gep508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 4
  store i64 29, ptr %err.col.gep508, align 8
  %err.ctx.gep509 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 5
  %err.ctx0.gep510 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep509, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep510, align 8
  %err.ctx1.gep511 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep509, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep511, align 8
  %err.p2i512 = ptrtoint ptr %err.alloc503 to i64
  br label %a.rd.done492

a.rd.err.oob491:                                  ; preds = %a.rd.check488
  %arena.cur513 = call ptr @dva_arena_current()
  %err.alloc514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 56)
  %err.code.gep515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 0
  store i64 4011, ptr %err.code.gep515, align 8
  %err.msg.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep516, align 8
  %err.file.gep517 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep517, align 8
  %err.line.gep518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 3
  store i64 302, ptr %err.line.gep518, align 8
  %err.col.gep519 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 4
  store i64 29, ptr %err.col.gep519, align 8
  %err.ctx.gep520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc514, i32 0, i32 5
  %err.ctx0.gep521 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep520, i32 0, i32 0
  store i64 %var.load486, ptr %err.ctx0.gep521, align 8
  %err.ctx1.gep522 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep520, i32 0, i32 1
  store i64 %a.rd.len494, ptr %err.ctx1.gep522, align 8
  %err.p2i523 = ptrtoint ptr %err.alloc514 to i64
  br label %a.rd.done492

a.rd.done492:                                     ; preds = %a.rd.err.oob491, %a.rd.err.null490, %a.rd.ok489
  %a.rd.tag524 = phi i1 [ true, %a.rd.ok489 ], [ false, %a.rd.err.null490 ], [ false, %a.rd.err.oob491 ]
  %a.rd.pay525 = phi i64 [ %a.rd.elem501, %a.rd.ok489 ], [ %err.p2i512, %a.rd.err.null490 ], [ %err.p2i523, %a.rd.err.oob491 ]
  %ram.tag526 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag524, 0
  %ram.pay527 = insertvalue { i1, i64 } %ram.tag526, i64 %a.rd.pay525, 1
  %ram.tag528 = extractvalue { i1, i64 } %ram.pay527, 0
  br i1 %ram.tag528, label %choice.then529, label %choice.else530

choice.then529:                                   ; preds = %a.rd.done492
  %ram.pay532 = extractvalue { i1, i64 } %ram.pay527, 1
  store i64 %ram.pay532, ptr %var._533, align 8
  br label %choice.exit531

choice.else530:                                   ; preds = %a.rd.done492
  %ram.pay534 = extractvalue { i1, i64 } %ram.pay527, 1
  %pay.ptr535 = inttoptr i64 %ram.pay534 to ptr
  store ptr %pay.ptr535, ptr %var._536, align 8
  br label %choice.exit531

choice.exit531:                                   ; preds = %choice.else530, %choice.then529
  %choice.res = phi i64 [ %ram.pay532, %choice.then529 ], [ -1, %choice.else530 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load537 = load i64, ptr %var.v_idx, align 8
  %cmptmp538 = icmp slt i64 %var.load537, 0
  br i1 %cmptmp538, label %choice.then539, label %choice.else540

choice.then539:                                   ; preds = %choice.exit531
  %var.load542 = load ptr, ptr %var.graph, align 8
  %var.load543 = load ptr, ptr %var.state, align 8
  %var.load544 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load542, ptr %var.load543, i64 %var.load544)
  %var.load545 = load ptr, ptr %var.lows, align 8
  %a.load546 = load ptr, ptr %var.lows, align 8
  %a.null547 = icmp eq ptr %a.load546, null
  br i1 %a.null547, label %a.create548, label %a.after549

choice.else540:                                   ; preds = %choice.exit531
  %var.load767 = load ptr, ptr %var.ons, align 8
  %a.load768 = load ptr, ptr %var.ons, align 8
  %a.null769 = icmp eq ptr %a.load768, null
  br i1 %a.null769, label %a.create770, label %a.after771

choice.exit541:                                   ; preds = %choice.exit834, %choice.exit715
  br label %choice.exit472

a.create548:                                      ; preds = %choice.then539
  %arena.cur550 = call ptr @dva_arena_current()
  %a.create551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 24)
  %arena.cur552 = call ptr @dva_arena_current()
  %a.buf553 = call ptr @dva_arena_alloc(ptr %arena.cur552, i64 128)
  %a.len.gep554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create551, i32 0, i32 0
  store i64 0, ptr %a.len.gep554, align 8
  %a.data.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create551, i32 0, i32 1
  store ptr %a.buf553, ptr %a.data.gep555, align 8
  %a.cap.gep556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create551, i32 0, i32 2
  store i64 16, ptr %a.cap.gep556, align 8
  store ptr %a.create551, ptr %var.lows, align 8
  br label %a.after549

a.after549:                                       ; preds = %a.create548, %choice.then539
  %a.load2557 = load ptr, ptr %var.lows, align 8
  %var.load558 = load i64, ptr %var.u, align 8
  %a.rd.nonnull559 = icmp ne ptr %a.load2557, null
  br i1 %a.rd.nonnull559, label %a.rd.check560, label %a.rd.err.null562

a.rd.check560:                                    ; preds = %a.after549
  %a.rd.len565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2557, i32 0, i32 0
  %a.rd.len566 = load i64, ptr %a.rd.len565, align 8
  %a.rd.ge0567 = icmp sge i64 %var.load558, 0
  %a.rd.lt568 = icmp slt i64 %var.load558, %a.rd.len566
  %a.rd.bounds569 = and i1 %a.rd.ge0567, %a.rd.lt568
  br i1 %a.rd.bounds569, label %a.rd.ok561, label %a.rd.err.oob563

a.rd.ok561:                                       ; preds = %a.rd.check560
  %a.rd.data570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2557, i32 0, i32 1
  %a.rd.data571 = load ptr, ptr %a.rd.data570, align 8
  %a.rd.elem.gep572 = getelementptr i64, ptr %a.rd.data571, i64 %var.load558
  %a.rd.elem573 = load i64, ptr %a.rd.elem.gep572, align 8
  br label %a.rd.done564

a.rd.err.null562:                                 ; preds = %a.after549
  %arena.cur574 = call ptr @dva_arena_current()
  %err.alloc575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 56)
  %err.code.gep576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 0
  store i64 4011, ptr %err.code.gep576, align 8
  %err.msg.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep577, align 8
  %err.file.gep578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep578, align 8
  %err.line.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 3
  store i64 306, ptr %err.line.gep579, align 8
  %err.col.gep580 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 4
  store i64 33, ptr %err.col.gep580, align 8
  %err.ctx.gep581 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc575, i32 0, i32 5
  %err.ctx0.gep582 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep581, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep582, align 8
  %err.ctx1.gep583 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep581, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep583, align 8
  %err.p2i584 = ptrtoint ptr %err.alloc575 to i64
  br label %a.rd.done564

a.rd.err.oob563:                                  ; preds = %a.rd.check560
  %arena.cur585 = call ptr @dva_arena_current()
  %err.alloc586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 56)
  %err.code.gep587 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 0
  store i64 4011, ptr %err.code.gep587, align 8
  %err.msg.gep588 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep588, align 8
  %err.file.gep589 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep589, align 8
  %err.line.gep590 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 3
  store i64 306, ptr %err.line.gep590, align 8
  %err.col.gep591 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 4
  store i64 33, ptr %err.col.gep591, align 8
  %err.ctx.gep592 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc586, i32 0, i32 5
  %err.ctx0.gep593 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep592, i32 0, i32 0
  store i64 %var.load558, ptr %err.ctx0.gep593, align 8
  %err.ctx1.gep594 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep592, i32 0, i32 1
  store i64 %a.rd.len566, ptr %err.ctx1.gep594, align 8
  %err.p2i595 = ptrtoint ptr %err.alloc586 to i64
  br label %a.rd.done564

a.rd.done564:                                     ; preds = %a.rd.err.oob563, %a.rd.err.null562, %a.rd.ok561
  %a.rd.tag596 = phi i1 [ true, %a.rd.ok561 ], [ false, %a.rd.err.null562 ], [ false, %a.rd.err.oob563 ]
  %a.rd.pay597 = phi i64 [ %a.rd.elem573, %a.rd.ok561 ], [ %err.p2i584, %a.rd.err.null562 ], [ %err.p2i595, %a.rd.err.oob563 ]
  %ram.tag598 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag596, 0
  %ram.pay599 = insertvalue { i1, i64 } %ram.tag598, i64 %a.rd.pay597, 1
  %ram.tag600 = extractvalue { i1, i64 } %ram.pay599, 0
  br i1 %ram.tag600, label %choice.then601, label %choice.else602

choice.then601:                                   ; preds = %a.rd.done564
  %ram.pay604 = extractvalue { i1, i64 } %ram.pay599, 1
  store i64 %ram.pay604, ptr %var._605, align 8
  br label %choice.exit603

choice.else602:                                   ; preds = %a.rd.done564
  %ram.pay606 = extractvalue { i1, i64 } %ram.pay599, 1
  %pay.ptr607 = inttoptr i64 %ram.pay606 to ptr
  store ptr %pay.ptr607, ptr %var._608, align 8
  br label %choice.exit603

choice.exit603:                                   ; preds = %choice.else602, %choice.then601
  %choice.res609 = phi i64 [ %ram.pay604, %choice.then601 ], [ 0, %choice.else602 ]
  store i64 %choice.res609, ptr %var.lu1, align 8
  %var.load610 = load ptr, ptr %var.lows, align 8
  %a.load611 = load ptr, ptr %var.lows, align 8
  %a.null612 = icmp eq ptr %a.load611, null
  br i1 %a.null612, label %a.create613, label %a.after614

a.create613:                                      ; preds = %choice.exit603
  %arena.cur615 = call ptr @dva_arena_current()
  %a.create616 = call ptr @dva_arena_alloc(ptr %arena.cur615, i64 24)
  %arena.cur617 = call ptr @dva_arena_current()
  %a.buf618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 128)
  %a.len.gep619 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 0
  store i64 0, ptr %a.len.gep619, align 8
  %a.data.gep620 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 1
  store ptr %a.buf618, ptr %a.data.gep620, align 8
  %a.cap.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 2
  store i64 16, ptr %a.cap.gep621, align 8
  store ptr %a.create616, ptr %var.lows, align 8
  br label %a.after614

a.after614:                                       ; preds = %a.create613, %choice.exit603
  %a.load2622 = load ptr, ptr %var.lows, align 8
  %var.load623 = load i64, ptr %var.v, align 8
  %a.rd.nonnull624 = icmp ne ptr %a.load2622, null
  br i1 %a.rd.nonnull624, label %a.rd.check625, label %a.rd.err.null627

a.rd.check625:                                    ; preds = %a.after614
  %a.rd.len630 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2622, i32 0, i32 0
  %a.rd.len631 = load i64, ptr %a.rd.len630, align 8
  %a.rd.ge0632 = icmp sge i64 %var.load623, 0
  %a.rd.lt633 = icmp slt i64 %var.load623, %a.rd.len631
  %a.rd.bounds634 = and i1 %a.rd.ge0632, %a.rd.lt633
  br i1 %a.rd.bounds634, label %a.rd.ok626, label %a.rd.err.oob628

a.rd.ok626:                                       ; preds = %a.rd.check625
  %a.rd.data635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2622, i32 0, i32 1
  %a.rd.data636 = load ptr, ptr %a.rd.data635, align 8
  %a.rd.elem.gep637 = getelementptr i64, ptr %a.rd.data636, i64 %var.load623
  %a.rd.elem638 = load i64, ptr %a.rd.elem.gep637, align 8
  br label %a.rd.done629

a.rd.err.null627:                                 ; preds = %a.after614
  %arena.cur639 = call ptr @dva_arena_current()
  %err.alloc640 = call ptr @dva_arena_alloc(ptr %arena.cur639, i64 56)
  %err.code.gep641 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 0
  store i64 4011, ptr %err.code.gep641, align 8
  %err.msg.gep642 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep642, align 8
  %err.file.gep643 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep643, align 8
  %err.line.gep644 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 3
  store i64 307, ptr %err.line.gep644, align 8
  %err.col.gep645 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 4
  store i64 35, ptr %err.col.gep645, align 8
  %err.ctx.gep646 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc640, i32 0, i32 5
  %err.ctx0.gep647 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep646, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep647, align 8
  %err.ctx1.gep648 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep646, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep648, align 8
  %err.p2i649 = ptrtoint ptr %err.alloc640 to i64
  br label %a.rd.done629

a.rd.err.oob628:                                  ; preds = %a.rd.check625
  %arena.cur650 = call ptr @dva_arena_current()
  %err.alloc651 = call ptr @dva_arena_alloc(ptr %arena.cur650, i64 56)
  %err.code.gep652 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 0
  store i64 4011, ptr %err.code.gep652, align 8
  %err.msg.gep653 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep653, align 8
  %err.file.gep654 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep654, align 8
  %err.line.gep655 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 3
  store i64 307, ptr %err.line.gep655, align 8
  %err.col.gep656 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 4
  store i64 35, ptr %err.col.gep656, align 8
  %err.ctx.gep657 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc651, i32 0, i32 5
  %err.ctx0.gep658 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep657, i32 0, i32 0
  store i64 %var.load623, ptr %err.ctx0.gep658, align 8
  %err.ctx1.gep659 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep657, i32 0, i32 1
  store i64 %a.rd.len631, ptr %err.ctx1.gep659, align 8
  %err.p2i660 = ptrtoint ptr %err.alloc651 to i64
  br label %a.rd.done629

a.rd.done629:                                     ; preds = %a.rd.err.oob628, %a.rd.err.null627, %a.rd.ok626
  %a.rd.tag661 = phi i1 [ true, %a.rd.ok626 ], [ false, %a.rd.err.null627 ], [ false, %a.rd.err.oob628 ]
  %a.rd.pay662 = phi i64 [ %a.rd.elem638, %a.rd.ok626 ], [ %err.p2i649, %a.rd.err.null627 ], [ %err.p2i660, %a.rd.err.oob628 ]
  %ram.tag663 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag661, 0
  %ram.pay664 = insertvalue { i1, i64 } %ram.tag663, i64 %a.rd.pay662, 1
  %ram.tag665 = extractvalue { i1, i64 } %ram.pay664, 0
  br i1 %ram.tag665, label %choice.then666, label %choice.else667

choice.then666:                                   ; preds = %a.rd.done629
  %ram.pay669 = extractvalue { i1, i64 } %ram.pay664, 1
  store i64 %ram.pay669, ptr %var._670, align 8
  br label %choice.exit668

choice.else667:                                   ; preds = %a.rd.done629
  %ram.pay671 = extractvalue { i1, i64 } %ram.pay664, 1
  %pay.ptr672 = inttoptr i64 %ram.pay671 to ptr
  store ptr %pay.ptr672, ptr %var._673, align 8
  br label %choice.exit668

choice.exit668:                                   ; preds = %choice.else667, %choice.then666
  %choice.res674 = phi i64 [ %ram.pay669, %choice.then666 ], [ 0, %choice.else667 ]
  store i64 %choice.res674, ptr %var.low_v, align 8
  %var.load675 = load i64, ptr %var.low_v, align 8
  %var.load676 = load i64, ptr %var.lu1, align 8
  %cmptmp677 = icmp slt i64 %var.load675, %var.load676
  br i1 %cmptmp677, label %choice.then678, label %choice.else679

choice.then678:                                   ; preds = %choice.exit668
  %var.load681 = load i64, ptr %var.low_v, align 8
  br label %choice.exit680

choice.else679:                                   ; preds = %choice.exit668
  %var.load682 = load i64, ptr %var.lu1, align 8
  br label %choice.exit680

choice.exit680:                                   ; preds = %choice.else679, %choice.then678
  %choice.res683 = phi i64 [ %var.load681, %choice.then678 ], [ %var.load682, %choice.else679 ]
  store i64 %choice.res683, ptr %var.min_v, align 8
  %var.load684 = load ptr, ptr %var.lows, align 8
  %a.load685 = load ptr, ptr %var.lows, align 8
  %a.null686 = icmp eq ptr %a.load685, null
  br i1 %a.null686, label %a.create687, label %a.after688

a.create687:                                      ; preds = %choice.exit680
  %arena.cur689 = call ptr @dva_arena_current()
  %a.create690 = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 24)
  %arena.cur691 = call ptr @dva_arena_current()
  %a.buf692 = call ptr @dva_arena_alloc(ptr %arena.cur691, i64 128)
  %a.len.gep693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create690, i32 0, i32 0
  store i64 0, ptr %a.len.gep693, align 8
  %a.data.gep694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create690, i32 0, i32 1
  store ptr %a.buf692, ptr %a.data.gep694, align 8
  %a.cap.gep695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create690, i32 0, i32 2
  store i64 16, ptr %a.cap.gep695, align 8
  store ptr %a.create690, ptr %var.lows, align 8
  br label %a.after688

a.after688:                                       ; preds = %a.create687, %choice.exit680
  %a.load2696 = load ptr, ptr %var.lows, align 8
  %var.load697 = load i64, ptr %var.u, align 8
  %var.load698 = load i64, ptr %var.min_v, align 8
  %a.wr.data699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2696, i32 0, i32 1
  %a.wr.data700 = load ptr, ptr %a.wr.data699, align 8
  %a.elem.gep701 = getelementptr i64, ptr %a.wr.data700, i64 %var.load697
  store i64 %var.load698, ptr %a.elem.gep701, align 8
  %arena.cur702 = call ptr @dva_arena_current()
  %a.wr.succ703 = call ptr @dva_arena_alloc(ptr %arena.cur702, i64 16)
  %tag.gep704 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ703, i32 0, i32 0
  store i64 1, ptr %tag.gep704, align 8
  %pay.gep705 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ703, i32 0, i32 1
  store ptr null, ptr %pay.gep705, align 8
  %tag.gep706 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ703, i32 0, i32 0
  %tag.id707 = load i64, ptr %tag.gep706, align 8
  %tag.eq.one708 = icmp eq i64 %tag.id707, 1
  %tag.eq.two709 = icmp eq i64 %tag.id707, 2
  %is.pos710 = or i1 %tag.eq.one708, %tag.eq.two709
  %pay.gep711 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ703, i32 0, i32 1
  %payload.ptr712 = load ptr, ptr %pay.gep711, align 8
  br i1 %is.pos710, label %choice.then713, label %choice.else714

choice.then713:                                   ; preds = %a.after688
  br label %choice.exit715

choice.else714:                                   ; preds = %a.after688
  store ptr %payload.ptr712, ptr %var._716, align 8
  store ptr %payload.ptr712, ptr %var._717, align 8
  store ptr %payload.ptr712, ptr %var._718, align 8
  %err.code.gep719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr712, i32 0, i32 0
  %err.code720 = load i64, ptr %err.code.gep719, align 8
  %err.msg.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr712, i32 0, i32 1
  %err.msg.struct722 = load ptr, ptr %err.msg.gep721, align 8
  %err.file.gep723 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr712, i32 0, i32 2
  %err.file.struct724 = load ptr, ptr %err.file.gep723, align 8
  %err.line.gep725 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr712, i32 0, i32 3
  %err.line726 = load i64, ptr %err.line.gep725, align 8
  %err.col.gep727 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr712, i32 0, i32 4
  %err.col728 = load i64, ptr %err.col.gep727, align 8
  %err.msg.len729 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct722, i32 0, i32 0
  %err.msg.len730 = load i64, ptr %err.msg.len729, align 8
  %err.msg.len731 = and i64 %err.msg.len730, 281474976710655
  %str.tag732 = lshr i64 %err.msg.len730, 48
  %str.immortal733 = icmp eq i64 %str.tag732, 0
  br i1 %str.immortal733, label %str_ok735, label %str_gen_check734

choice.exit715:                                   ; preds = %err.abort766, %choice.then713
  br label %choice.exit541

str_gen_check734:                                 ; preds = %choice.else714
  %arena.gen737 = call ptr @dva_arena_current()
  %arena.gen738 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen737, i32 0, i32 4
  %arena.gen739 = load i64, ptr %arena.gen738, align 8
  %str.tag.match740 = icmp eq i64 %str.tag732, %arena.gen739
  br i1 %str.tag.match740, label %str_ok735, label %str_stale736

str_ok735:                                        ; preds = %str_stale736, %str_gen_check734, %choice.else714
  %err.msg.len32741 = trunc i64 %err.msg.len731 to i32
  %err.msg.data742 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct722, i32 0, i32 1
  %err.msg.data743 = load ptr, ptr %err.msg.data742, align 8
  %err.file.len744 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct724, i32 0, i32 0
  %err.file.len745 = load i64, ptr %err.file.len744, align 8
  %err.file.len746 = and i64 %err.file.len745, 281474976710655
  %str.tag747 = lshr i64 %err.file.len745, 48
  %str.immortal748 = icmp eq i64 %str.tag747, 0
  br i1 %str.immortal748, label %str_ok750, label %str_gen_check749

str_stale736:                                     ; preds = %str_gen_check734
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok735

str_gen_check749:                                 ; preds = %str_ok735
  %arena.gen752 = call ptr @dva_arena_current()
  %arena.gen753 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen752, i32 0, i32 4
  %arena.gen754 = load i64, ptr %arena.gen753, align 8
  %str.tag.match755 = icmp eq i64 %str.tag747, %arena.gen754
  br i1 %str.tag.match755, label %str_ok750, label %str_stale751

str_ok750:                                        ; preds = %str_stale751, %str_gen_check749, %str_ok735
  %err.file.len32756 = trunc i64 %err.file.len746 to i32
  %err.file.data757 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct724, i32 0, i32 1
  %err.file.data758 = load ptr, ptr %err.file.data757, align 8
  %err.thread.rec759 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread760 = icmp ne ptr %err.thread.rec759, null
  br i1 %err.is.thread760, label %err.thread761, label %err.normal762

str_stale751:                                     ; preds = %str_gen_check749
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok750

err.thread761:                                    ; preds = %str_ok750
  %err.haserr.gep763 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec759, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep763, align 8
  %err.err.gep764 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec759, i32 0, i32 7
  store ptr %payload.ptr712, ptr %err.err.gep764, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal762:                                    ; preds = %str_ok750
  %err.panic.printf765 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code720, i32 %err.msg.len32741, ptr %err.msg.data743, i32 %err.file.len32756, ptr %err.file.data758, i64 %err.line726, i64 %err.col728)
  call void @exit(i32 1)
  unreachable

err.abort766:                                     ; No predecessors!
  br label %choice.exit715

a.create770:                                      ; preds = %choice.else540
  %arena.cur772 = call ptr @dva_arena_current()
  %a.create773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 24)
  %arena.cur774 = call ptr @dva_arena_current()
  %a.buf775 = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 128)
  %a.len.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 0
  store i64 0, ptr %a.len.gep776, align 8
  %a.data.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 1
  store ptr %a.buf775, ptr %a.data.gep777, align 8
  %a.cap.gep778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 2
  store i64 16, ptr %a.cap.gep778, align 8
  store ptr %a.create773, ptr %var.ons, align 8
  br label %a.after771

a.after771:                                       ; preds = %a.create770, %choice.else540
  %a.load2779 = load ptr, ptr %var.ons, align 8
  %var.load780 = load i64, ptr %var.v, align 8
  %a.rd.nonnull781 = icmp ne ptr %a.load2779, null
  br i1 %a.rd.nonnull781, label %a.rd.check782, label %a.rd.err.null784

a.rd.check782:                                    ; preds = %a.after771
  %a.rd.len787 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 0
  %a.rd.len788 = load i64, ptr %a.rd.len787, align 8
  %a.rd.ge0789 = icmp sge i64 %var.load780, 0
  %a.rd.lt790 = icmp slt i64 %var.load780, %a.rd.len788
  %a.rd.bounds791 = and i1 %a.rd.ge0789, %a.rd.lt790
  br i1 %a.rd.bounds791, label %a.rd.ok783, label %a.rd.err.oob785

a.rd.ok783:                                       ; preds = %a.rd.check782
  %a.rd.data792 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 1
  %a.rd.data793 = load ptr, ptr %a.rd.data792, align 8
  %a.rd.elem.gep794 = getelementptr i64, ptr %a.rd.data793, i64 %var.load780
  %a.rd.elem795 = load i64, ptr %a.rd.elem.gep794, align 8
  br label %a.rd.done786

a.rd.err.null784:                                 ; preds = %a.after771
  %arena.cur796 = call ptr @dva_arena_current()
  %err.alloc797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 56)
  %err.code.gep798 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 0
  store i64 4011, ptr %err.code.gep798, align 8
  %err.msg.gep799 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep799, align 8
  %err.file.gep800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep800, align 8
  %err.line.gep801 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 3
  store i64 311, ptr %err.line.gep801, align 8
  %err.col.gep802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 4
  store i64 33, ptr %err.col.gep802, align 8
  %err.ctx.gep803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc797, i32 0, i32 5
  %err.ctx0.gep804 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep803, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep804, align 8
  %err.ctx1.gep805 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep803, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep805, align 8
  %err.p2i806 = ptrtoint ptr %err.alloc797 to i64
  br label %a.rd.done786

a.rd.err.oob785:                                  ; preds = %a.rd.check782
  %arena.cur807 = call ptr @dva_arena_current()
  %err.alloc808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 56)
  %err.code.gep809 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 0
  store i64 4011, ptr %err.code.gep809, align 8
  %err.msg.gep810 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep810, align 8
  %err.file.gep811 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep811, align 8
  %err.line.gep812 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 3
  store i64 311, ptr %err.line.gep812, align 8
  %err.col.gep813 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 4
  store i64 33, ptr %err.col.gep813, align 8
  %err.ctx.gep814 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc808, i32 0, i32 5
  %err.ctx0.gep815 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep814, i32 0, i32 0
  store i64 %var.load780, ptr %err.ctx0.gep815, align 8
  %err.ctx1.gep816 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep814, i32 0, i32 1
  store i64 %a.rd.len788, ptr %err.ctx1.gep816, align 8
  %err.p2i817 = ptrtoint ptr %err.alloc808 to i64
  br label %a.rd.done786

a.rd.done786:                                     ; preds = %a.rd.err.oob785, %a.rd.err.null784, %a.rd.ok783
  %a.rd.tag818 = phi i1 [ true, %a.rd.ok783 ], [ false, %a.rd.err.null784 ], [ false, %a.rd.err.oob785 ]
  %a.rd.pay819 = phi i64 [ %a.rd.elem795, %a.rd.ok783 ], [ %err.p2i806, %a.rd.err.null784 ], [ %err.p2i817, %a.rd.err.oob785 ]
  %ram.tag820 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag818, 0
  %ram.pay821 = insertvalue { i1, i64 } %ram.tag820, i64 %a.rd.pay819, 1
  %ram.tag822 = extractvalue { i1, i64 } %ram.pay821, 0
  br i1 %ram.tag822, label %choice.then823, label %choice.else824

choice.then823:                                   ; preds = %a.rd.done786
  %ram.pay826 = extractvalue { i1, i64 } %ram.pay821, 1
  %pay.flag = trunc i64 %ram.pay826 to i1
  store i1 %pay.flag, ptr %var._827, align 1
  br label %choice.exit825

choice.else824:                                   ; preds = %a.rd.done786
  %ram.pay828 = extractvalue { i1, i64 } %ram.pay821, 1
  %pay.ptr829 = inttoptr i64 %ram.pay828 to ptr
  store ptr %pay.ptr829, ptr %var._830, align 8
  br label %choice.exit825

choice.exit825:                                   ; preds = %choice.else824, %choice.then823
  %choice.res831 = phi i1 [ %pay.flag, %choice.then823 ], [ false, %choice.else824 ]
  store i1 %choice.res831, ptr %var.v_on, align 1
  %var.load832 = load i1, ptr %var.v_on, align 1
  br i1 %var.load832, label %choice.then833, label %choice.exit834

choice.then833:                                   ; preds = %choice.exit825
  %var.load835 = load ptr, ptr %var.lows, align 8
  %a.load836 = load ptr, ptr %var.lows, align 8
  %a.null837 = icmp eq ptr %a.load836, null
  br i1 %a.null837, label %a.create838, label %a.after839

choice.exit834:                                   ; preds = %choice.exit1005, %choice.exit825
  br label %choice.exit541

a.create838:                                      ; preds = %choice.then833
  %arena.cur840 = call ptr @dva_arena_current()
  %a.create841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 24)
  %arena.cur842 = call ptr @dva_arena_current()
  %a.buf843 = call ptr @dva_arena_alloc(ptr %arena.cur842, i64 128)
  %a.len.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 0
  store i64 0, ptr %a.len.gep844, align 8
  %a.data.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 1
  store ptr %a.buf843, ptr %a.data.gep845, align 8
  %a.cap.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 2
  store i64 16, ptr %a.cap.gep846, align 8
  store ptr %a.create841, ptr %var.lows, align 8
  br label %a.after839

a.after839:                                       ; preds = %a.create838, %choice.then833
  %a.load2847 = load ptr, ptr %var.lows, align 8
  %var.load848 = load i64, ptr %var.u, align 8
  %a.rd.nonnull849 = icmp ne ptr %a.load2847, null
  br i1 %a.rd.nonnull849, label %a.rd.check850, label %a.rd.err.null852

a.rd.check850:                                    ; preds = %a.after839
  %a.rd.len855 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 0
  %a.rd.len856 = load i64, ptr %a.rd.len855, align 8
  %a.rd.ge0857 = icmp sge i64 %var.load848, 0
  %a.rd.lt858 = icmp slt i64 %var.load848, %a.rd.len856
  %a.rd.bounds859 = and i1 %a.rd.ge0857, %a.rd.lt858
  br i1 %a.rd.bounds859, label %a.rd.ok851, label %a.rd.err.oob853

a.rd.ok851:                                       ; preds = %a.rd.check850
  %a.rd.data860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 1
  %a.rd.data861 = load ptr, ptr %a.rd.data860, align 8
  %a.rd.elem.gep862 = getelementptr i64, ptr %a.rd.data861, i64 %var.load848
  %a.rd.elem863 = load i64, ptr %a.rd.elem.gep862, align 8
  br label %a.rd.done854

a.rd.err.null852:                                 ; preds = %a.after839
  %arena.cur864 = call ptr @dva_arena_current()
  %err.alloc865 = call ptr @dva_arena_alloc(ptr %arena.cur864, i64 56)
  %err.code.gep866 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 0
  store i64 4011, ptr %err.code.gep866, align 8
  %err.msg.gep867 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep867, align 8
  %err.file.gep868 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep868, align 8
  %err.line.gep869 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 3
  store i64 314, ptr %err.line.gep869, align 8
  %err.col.gep870 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 4
  store i64 39, ptr %err.col.gep870, align 8
  %err.ctx.gep871 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc865, i32 0, i32 5
  %err.ctx0.gep872 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep871, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep872, align 8
  %err.ctx1.gep873 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep871, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep873, align 8
  %err.p2i874 = ptrtoint ptr %err.alloc865 to i64
  br label %a.rd.done854

a.rd.err.oob853:                                  ; preds = %a.rd.check850
  %arena.cur875 = call ptr @dva_arena_current()
  %err.alloc876 = call ptr @dva_arena_alloc(ptr %arena.cur875, i64 56)
  %err.code.gep877 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 0
  store i64 4011, ptr %err.code.gep877, align 8
  %err.msg.gep878 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep878, align 8
  %err.file.gep879 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep879, align 8
  %err.line.gep880 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 3
  store i64 314, ptr %err.line.gep880, align 8
  %err.col.gep881 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 4
  store i64 39, ptr %err.col.gep881, align 8
  %err.ctx.gep882 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc876, i32 0, i32 5
  %err.ctx0.gep883 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep882, i32 0, i32 0
  store i64 %var.load848, ptr %err.ctx0.gep883, align 8
  %err.ctx1.gep884 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep882, i32 0, i32 1
  store i64 %a.rd.len856, ptr %err.ctx1.gep884, align 8
  %err.p2i885 = ptrtoint ptr %err.alloc876 to i64
  br label %a.rd.done854

a.rd.done854:                                     ; preds = %a.rd.err.oob853, %a.rd.err.null852, %a.rd.ok851
  %a.rd.tag886 = phi i1 [ true, %a.rd.ok851 ], [ false, %a.rd.err.null852 ], [ false, %a.rd.err.oob853 ]
  %a.rd.pay887 = phi i64 [ %a.rd.elem863, %a.rd.ok851 ], [ %err.p2i874, %a.rd.err.null852 ], [ %err.p2i885, %a.rd.err.oob853 ]
  %ram.tag888 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag886, 0
  %ram.pay889 = insertvalue { i1, i64 } %ram.tag888, i64 %a.rd.pay887, 1
  %ram.tag890 = extractvalue { i1, i64 } %ram.pay889, 0
  br i1 %ram.tag890, label %choice.then891, label %choice.else892

choice.then891:                                   ; preds = %a.rd.done854
  %ram.pay894 = extractvalue { i1, i64 } %ram.pay889, 1
  store i64 %ram.pay894, ptr %var._895, align 8
  br label %choice.exit893

choice.else892:                                   ; preds = %a.rd.done854
  %ram.pay896 = extractvalue { i1, i64 } %ram.pay889, 1
  %pay.ptr897 = inttoptr i64 %ram.pay896 to ptr
  store ptr %pay.ptr897, ptr %var._898, align 8
  br label %choice.exit893

choice.exit893:                                   ; preds = %choice.else892, %choice.then891
  %choice.res899 = phi i64 [ %ram.pay894, %choice.then891 ], [ 0, %choice.else892 ]
  store i64 %choice.res899, ptr %var.lu2, align 8
  %var.load900 = load ptr, ptr %var.idxs, align 8
  %a.load901 = load ptr, ptr %var.idxs, align 8
  %a.null902 = icmp eq ptr %a.load901, null
  br i1 %a.null902, label %a.create903, label %a.after904

a.create903:                                      ; preds = %choice.exit893
  %arena.cur905 = call ptr @dva_arena_current()
  %a.create906 = call ptr @dva_arena_alloc(ptr %arena.cur905, i64 24)
  %arena.cur907 = call ptr @dva_arena_current()
  %a.buf908 = call ptr @dva_arena_alloc(ptr %arena.cur907, i64 128)
  %a.len.gep909 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 0
  store i64 0, ptr %a.len.gep909, align 8
  %a.data.gep910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 1
  store ptr %a.buf908, ptr %a.data.gep910, align 8
  %a.cap.gep911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 2
  store i64 16, ptr %a.cap.gep911, align 8
  store ptr %a.create906, ptr %var.idxs, align 8
  br label %a.after904

a.after904:                                       ; preds = %a.create903, %choice.exit893
  %a.load2912 = load ptr, ptr %var.idxs, align 8
  %var.load913 = load i64, ptr %var.v, align 8
  %a.rd.nonnull914 = icmp ne ptr %a.load2912, null
  br i1 %a.rd.nonnull914, label %a.rd.check915, label %a.rd.err.null917

a.rd.check915:                                    ; preds = %a.after904
  %a.rd.len920 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 0
  %a.rd.len921 = load i64, ptr %a.rd.len920, align 8
  %a.rd.ge0922 = icmp sge i64 %var.load913, 0
  %a.rd.lt923 = icmp slt i64 %var.load913, %a.rd.len921
  %a.rd.bounds924 = and i1 %a.rd.ge0922, %a.rd.lt923
  br i1 %a.rd.bounds924, label %a.rd.ok916, label %a.rd.err.oob918

a.rd.ok916:                                       ; preds = %a.rd.check915
  %a.rd.data925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 1
  %a.rd.data926 = load ptr, ptr %a.rd.data925, align 8
  %a.rd.elem.gep927 = getelementptr i64, ptr %a.rd.data926, i64 %var.load913
  %a.rd.elem928 = load i64, ptr %a.rd.elem.gep927, align 8
  br label %a.rd.done919

a.rd.err.null917:                                 ; preds = %a.after904
  %arena.cur929 = call ptr @dva_arena_current()
  %err.alloc930 = call ptr @dva_arena_alloc(ptr %arena.cur929, i64 56)
  %err.code.gep931 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 0
  store i64 4011, ptr %err.code.gep931, align 8
  %err.msg.gep932 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep932, align 8
  %err.file.gep933 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep933, align 8
  %err.line.gep934 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 3
  store i64 315, ptr %err.line.gep934, align 8
  %err.col.gep935 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 4
  store i64 41, ptr %err.col.gep935, align 8
  %err.ctx.gep936 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc930, i32 0, i32 5
  %err.ctx0.gep937 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep936, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep937, align 8
  %err.ctx1.gep938 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep936, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep938, align 8
  %err.p2i939 = ptrtoint ptr %err.alloc930 to i64
  br label %a.rd.done919

a.rd.err.oob918:                                  ; preds = %a.rd.check915
  %arena.cur940 = call ptr @dva_arena_current()
  %err.alloc941 = call ptr @dva_arena_alloc(ptr %arena.cur940, i64 56)
  %err.code.gep942 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 0
  store i64 4011, ptr %err.code.gep942, align 8
  %err.msg.gep943 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep943, align 8
  %err.file.gep944 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep944, align 8
  %err.line.gep945 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 3
  store i64 315, ptr %err.line.gep945, align 8
  %err.col.gep946 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 4
  store i64 41, ptr %err.col.gep946, align 8
  %err.ctx.gep947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 5
  %err.ctx0.gep948 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep947, i32 0, i32 0
  store i64 %var.load913, ptr %err.ctx0.gep948, align 8
  %err.ctx1.gep949 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep947, i32 0, i32 1
  store i64 %a.rd.len921, ptr %err.ctx1.gep949, align 8
  %err.p2i950 = ptrtoint ptr %err.alloc941 to i64
  br label %a.rd.done919

a.rd.done919:                                     ; preds = %a.rd.err.oob918, %a.rd.err.null917, %a.rd.ok916
  %a.rd.tag951 = phi i1 [ true, %a.rd.ok916 ], [ false, %a.rd.err.null917 ], [ false, %a.rd.err.oob918 ]
  %a.rd.pay952 = phi i64 [ %a.rd.elem928, %a.rd.ok916 ], [ %err.p2i939, %a.rd.err.null917 ], [ %err.p2i950, %a.rd.err.oob918 ]
  %ram.tag953 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag951, 0
  %ram.pay954 = insertvalue { i1, i64 } %ram.tag953, i64 %a.rd.pay952, 1
  %ram.tag955 = extractvalue { i1, i64 } %ram.pay954, 0
  br i1 %ram.tag955, label %choice.then956, label %choice.else957

choice.then956:                                   ; preds = %a.rd.done919
  %ram.pay959 = extractvalue { i1, i64 } %ram.pay954, 1
  store i64 %ram.pay959, ptr %var._960, align 8
  br label %choice.exit958

choice.else957:                                   ; preds = %a.rd.done919
  %ram.pay961 = extractvalue { i1, i64 } %ram.pay954, 1
  %pay.ptr962 = inttoptr i64 %ram.pay961 to ptr
  store ptr %pay.ptr962, ptr %var._963, align 8
  br label %choice.exit958

choice.exit958:                                   ; preds = %choice.else957, %choice.then956
  %choice.res964 = phi i64 [ %ram.pay959, %choice.then956 ], [ 0, %choice.else957 ]
  store i64 %choice.res964, ptr %var.idx_v, align 8
  %var.load965 = load i64, ptr %var.idx_v, align 8
  %var.load966 = load i64, ptr %var.lu2, align 8
  %cmptmp967 = icmp slt i64 %var.load965, %var.load966
  br i1 %cmptmp967, label %choice.then968, label %choice.else969

choice.then968:                                   ; preds = %choice.exit958
  %var.load971 = load i64, ptr %var.idx_v, align 8
  br label %choice.exit970

choice.else969:                                   ; preds = %choice.exit958
  %var.load972 = load i64, ptr %var.lu2, align 8
  br label %choice.exit970

choice.exit970:                                   ; preds = %choice.else969, %choice.then968
  %choice.res973 = phi i64 [ %var.load971, %choice.then968 ], [ %var.load972, %choice.else969 ]
  store i64 %choice.res973, ptr %var.min_idx, align 8
  %var.load974 = load ptr, ptr %var.lows, align 8
  %a.load975 = load ptr, ptr %var.lows, align 8
  %a.null976 = icmp eq ptr %a.load975, null
  br i1 %a.null976, label %a.create977, label %a.after978

a.create977:                                      ; preds = %choice.exit970
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
  store ptr %a.create980, ptr %var.lows, align 8
  br label %a.after978

a.after978:                                       ; preds = %a.create977, %choice.exit970
  %a.load2986 = load ptr, ptr %var.lows, align 8
  %var.load987 = load i64, ptr %var.u, align 8
  %var.load988 = load i64, ptr %var.min_idx, align 8
  %a.wr.data989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2986, i32 0, i32 1
  %a.wr.data990 = load ptr, ptr %a.wr.data989, align 8
  %a.elem.gep991 = getelementptr i64, ptr %a.wr.data990, i64 %var.load987
  store i64 %var.load988, ptr %a.elem.gep991, align 8
  %arena.cur992 = call ptr @dva_arena_current()
  %a.wr.succ993 = call ptr @dva_arena_alloc(ptr %arena.cur992, i64 16)
  %tag.gep994 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ993, i32 0, i32 0
  store i64 1, ptr %tag.gep994, align 8
  %pay.gep995 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ993, i32 0, i32 1
  store ptr null, ptr %pay.gep995, align 8
  %tag.gep996 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ993, i32 0, i32 0
  %tag.id997 = load i64, ptr %tag.gep996, align 8
  %tag.eq.one998 = icmp eq i64 %tag.id997, 1
  %tag.eq.two999 = icmp eq i64 %tag.id997, 2
  %is.pos1000 = or i1 %tag.eq.one998, %tag.eq.two999
  %pay.gep1001 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ993, i32 0, i32 1
  %payload.ptr1002 = load ptr, ptr %pay.gep1001, align 8
  br i1 %is.pos1000, label %choice.then1003, label %choice.else1004

choice.then1003:                                  ; preds = %a.after978
  br label %choice.exit1005

choice.else1004:                                  ; preds = %a.after978
  store ptr %payload.ptr1002, ptr %var._1006, align 8
  store ptr %payload.ptr1002, ptr %var._1007, align 8
  store ptr %payload.ptr1002, ptr %var._1008, align 8
  %err.code.gep1009 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1002, i32 0, i32 0
  %err.code1010 = load i64, ptr %err.code.gep1009, align 8
  %err.msg.gep1011 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1002, i32 0, i32 1
  %err.msg.struct1012 = load ptr, ptr %err.msg.gep1011, align 8
  %err.file.gep1013 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1002, i32 0, i32 2
  %err.file.struct1014 = load ptr, ptr %err.file.gep1013, align 8
  %err.line.gep1015 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1002, i32 0, i32 3
  %err.line1016 = load i64, ptr %err.line.gep1015, align 8
  %err.col.gep1017 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1002, i32 0, i32 4
  %err.col1018 = load i64, ptr %err.col.gep1017, align 8
  %err.msg.len1019 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1012, i32 0, i32 0
  %err.msg.len1020 = load i64, ptr %err.msg.len1019, align 8
  %err.msg.len1021 = and i64 %err.msg.len1020, 281474976710655
  %str.tag1022 = lshr i64 %err.msg.len1020, 48
  %str.immortal1023 = icmp eq i64 %str.tag1022, 0
  br i1 %str.immortal1023, label %str_ok1025, label %str_gen_check1024

choice.exit1005:                                  ; preds = %err.abort1056, %choice.then1003
  br label %choice.exit834

str_gen_check1024:                                ; preds = %choice.else1004
  %arena.gen1027 = call ptr @dva_arena_current()
  %arena.gen1028 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1027, i32 0, i32 4
  %arena.gen1029 = load i64, ptr %arena.gen1028, align 8
  %str.tag.match1030 = icmp eq i64 %str.tag1022, %arena.gen1029
  br i1 %str.tag.match1030, label %str_ok1025, label %str_stale1026

str_ok1025:                                       ; preds = %str_stale1026, %str_gen_check1024, %choice.else1004
  %err.msg.len321031 = trunc i64 %err.msg.len1021 to i32
  %err.msg.data1032 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1012, i32 0, i32 1
  %err.msg.data1033 = load ptr, ptr %err.msg.data1032, align 8
  %err.file.len1034 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1014, i32 0, i32 0
  %err.file.len1035 = load i64, ptr %err.file.len1034, align 8
  %err.file.len1036 = and i64 %err.file.len1035, 281474976710655
  %str.tag1037 = lshr i64 %err.file.len1035, 48
  %str.immortal1038 = icmp eq i64 %str.tag1037, 0
  br i1 %str.immortal1038, label %str_ok1040, label %str_gen_check1039

str_stale1026:                                    ; preds = %str_gen_check1024
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1025

str_gen_check1039:                                ; preds = %str_ok1025
  %arena.gen1042 = call ptr @dva_arena_current()
  %arena.gen1043 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1042, i32 0, i32 4
  %arena.gen1044 = load i64, ptr %arena.gen1043, align 8
  %str.tag.match1045 = icmp eq i64 %str.tag1037, %arena.gen1044
  br i1 %str.tag.match1045, label %str_ok1040, label %str_stale1041

str_ok1040:                                       ; preds = %str_stale1041, %str_gen_check1039, %str_ok1025
  %err.file.len321046 = trunc i64 %err.file.len1036 to i32
  %err.file.data1047 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1014, i32 0, i32 1
  %err.file.data1048 = load ptr, ptr %err.file.data1047, align 8
  %err.thread.rec1049 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1050 = icmp ne ptr %err.thread.rec1049, null
  br i1 %err.is.thread1050, label %err.thread1051, label %err.normal1052

str_stale1041:                                    ; preds = %str_gen_check1039
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1040

err.thread1051:                                   ; preds = %str_ok1040
  %err.haserr.gep1053 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1049, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1053, align 8
  %err.err.gep1054 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1049, i32 0, i32 7
  store ptr %payload.ptr1002, ptr %err.err.gep1054, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1052:                                   ; preds = %str_ok1040
  %err.panic.printf1055 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1010, i32 %err.msg.len321031, ptr %err.msg.data1033, i32 %err.file.len321046, ptr %err.file.data1048, i64 %err.line1016, i64 %err.col1018)
  call void @exit(i32 1)
  unreachable

err.abort1056:                                    ; No predecessors!
  br label %choice.exit1005

a.create1060:                                     ; preds = %loop.exit.39
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
  store ptr %a.create1063, ptr %var.lows, align 8
  br label %a.after1061

a.after1061:                                      ; preds = %a.create1060, %loop.exit.39
  %a.load21069 = load ptr, ptr %var.lows, align 8
  %var.load1070 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1071 = icmp ne ptr %a.load21069, null
  br i1 %a.rd.nonnull1071, label %a.rd.check1072, label %a.rd.err.null1074

a.rd.check1072:                                   ; preds = %a.after1061
  %a.rd.len1077 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21069, i32 0, i32 0
  %a.rd.len1078 = load i64, ptr %a.rd.len1077, align 8
  %a.rd.ge01079 = icmp sge i64 %var.load1070, 0
  %a.rd.lt1080 = icmp slt i64 %var.load1070, %a.rd.len1078
  %a.rd.bounds1081 = and i1 %a.rd.ge01079, %a.rd.lt1080
  br i1 %a.rd.bounds1081, label %a.rd.ok1073, label %a.rd.err.oob1075

a.rd.ok1073:                                      ; preds = %a.rd.check1072
  %a.rd.data1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21069, i32 0, i32 1
  %a.rd.data1083 = load ptr, ptr %a.rd.data1082, align 8
  %a.rd.elem.gep1084 = getelementptr i64, ptr %a.rd.data1083, i64 %var.load1070
  %a.rd.elem1085 = load i64, ptr %a.rd.elem.gep1084, align 8
  br label %a.rd.done1076

a.rd.err.null1074:                                ; preds = %a.after1061
  %arena.cur1086 = call ptr @dva_arena_current()
  %err.alloc1087 = call ptr @dva_arena_alloc(ptr %arena.cur1086, i64 56)
  %err.code.gep1088 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1088, align 8
  %err.msg.gep1089 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1089, align 8
  %err.file.gep1090 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1090, align 8
  %err.line.gep1091 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 3
  store i64 319, ptr %err.line.gep1091, align 8
  %err.col.gep1092 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 4
  store i64 20, ptr %err.col.gep1092, align 8
  %err.ctx.gep1093 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1087, i32 0, i32 5
  %err.ctx0.gep1094 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1093, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1094, align 8
  %err.ctx1.gep1095 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1093, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1095, align 8
  %err.p2i1096 = ptrtoint ptr %err.alloc1087 to i64
  br label %a.rd.done1076

a.rd.err.oob1075:                                 ; preds = %a.rd.check1072
  %arena.cur1097 = call ptr @dva_arena_current()
  %err.alloc1098 = call ptr @dva_arena_alloc(ptr %arena.cur1097, i64 56)
  %err.code.gep1099 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1099, align 8
  %err.msg.gep1100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1100, align 8
  %err.file.gep1101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1101, align 8
  %err.line.gep1102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 3
  store i64 319, ptr %err.line.gep1102, align 8
  %err.col.gep1103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 4
  store i64 20, ptr %err.col.gep1103, align 8
  %err.ctx.gep1104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1098, i32 0, i32 5
  %err.ctx0.gep1105 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1104, i32 0, i32 0
  store i64 %var.load1070, ptr %err.ctx0.gep1105, align 8
  %err.ctx1.gep1106 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1104, i32 0, i32 1
  store i64 %a.rd.len1078, ptr %err.ctx1.gep1106, align 8
  %err.p2i1107 = ptrtoint ptr %err.alloc1098 to i64
  br label %a.rd.done1076

a.rd.done1076:                                    ; preds = %a.rd.err.oob1075, %a.rd.err.null1074, %a.rd.ok1073
  %a.rd.tag1108 = phi i1 [ true, %a.rd.ok1073 ], [ false, %a.rd.err.null1074 ], [ false, %a.rd.err.oob1075 ]
  %a.rd.pay1109 = phi i64 [ %a.rd.elem1085, %a.rd.ok1073 ], [ %err.p2i1096, %a.rd.err.null1074 ], [ %err.p2i1107, %a.rd.err.oob1075 ]
  %ram.tag1110 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1108, 0
  %ram.pay1111 = insertvalue { i1, i64 } %ram.tag1110, i64 %a.rd.pay1109, 1
  %ram.tag1112 = extractvalue { i1, i64 } %ram.pay1111, 0
  br i1 %ram.tag1112, label %choice.then1113, label %choice.else1114

choice.then1113:                                  ; preds = %a.rd.done1076
  %ram.pay1116 = extractvalue { i1, i64 } %ram.pay1111, 1
  store i64 %ram.pay1116, ptr %var._1117, align 8
  br label %choice.exit1115

choice.else1114:                                  ; preds = %a.rd.done1076
  %ram.pay1118 = extractvalue { i1, i64 } %ram.pay1111, 1
  %pay.ptr1119 = inttoptr i64 %ram.pay1118 to ptr
  store ptr %pay.ptr1119, ptr %var._1120, align 8
  br label %choice.exit1115

choice.exit1115:                                  ; preds = %choice.else1114, %choice.then1113
  %choice.res1121 = phi i64 [ %ram.pay1116, %choice.then1113 ], [ 0, %choice.else1114 ]
  store i64 %choice.res1121, ptr %var.low_u, align 8
  %var.load1122 = load ptr, ptr %var.idxs, align 8
  %a.load1123 = load ptr, ptr %var.idxs, align 8
  %a.null1124 = icmp eq ptr %a.load1123, null
  br i1 %a.null1124, label %a.create1125, label %a.after1126

a.create1125:                                     ; preds = %choice.exit1115
  %arena.cur1127 = call ptr @dva_arena_current()
  %a.create1128 = call ptr @dva_arena_alloc(ptr %arena.cur1127, i64 24)
  %arena.cur1129 = call ptr @dva_arena_current()
  %a.buf1130 = call ptr @dva_arena_alloc(ptr %arena.cur1129, i64 128)
  %a.len.gep1131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1128, i32 0, i32 0
  store i64 0, ptr %a.len.gep1131, align 8
  %a.data.gep1132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1128, i32 0, i32 1
  store ptr %a.buf1130, ptr %a.data.gep1132, align 8
  %a.cap.gep1133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1133, align 8
  store ptr %a.create1128, ptr %var.idxs, align 8
  br label %a.after1126

a.after1126:                                      ; preds = %a.create1125, %choice.exit1115
  %a.load21134 = load ptr, ptr %var.idxs, align 8
  %var.load1135 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1136 = icmp ne ptr %a.load21134, null
  br i1 %a.rd.nonnull1136, label %a.rd.check1137, label %a.rd.err.null1139

a.rd.check1137:                                   ; preds = %a.after1126
  %a.rd.len1142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21134, i32 0, i32 0
  %a.rd.len1143 = load i64, ptr %a.rd.len1142, align 8
  %a.rd.ge01144 = icmp sge i64 %var.load1135, 0
  %a.rd.lt1145 = icmp slt i64 %var.load1135, %a.rd.len1143
  %a.rd.bounds1146 = and i1 %a.rd.ge01144, %a.rd.lt1145
  br i1 %a.rd.bounds1146, label %a.rd.ok1138, label %a.rd.err.oob1140

a.rd.ok1138:                                      ; preds = %a.rd.check1137
  %a.rd.data1147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21134, i32 0, i32 1
  %a.rd.data1148 = load ptr, ptr %a.rd.data1147, align 8
  %a.rd.elem.gep1149 = getelementptr i64, ptr %a.rd.data1148, i64 %var.load1135
  %a.rd.elem1150 = load i64, ptr %a.rd.elem.gep1149, align 8
  br label %a.rd.done1141

a.rd.err.null1139:                                ; preds = %a.after1126
  %arena.cur1151 = call ptr @dva_arena_current()
  %err.alloc1152 = call ptr @dva_arena_alloc(ptr %arena.cur1151, i64 56)
  %err.code.gep1153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1153, align 8
  %err.msg.gep1154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1154, align 8
  %err.file.gep1155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1155, align 8
  %err.line.gep1156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 3
  store i64 320, ptr %err.line.gep1156, align 8
  %err.col.gep1157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 4
  store i64 20, ptr %err.col.gep1157, align 8
  %err.ctx.gep1158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1152, i32 0, i32 5
  %err.ctx0.gep1159 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1158, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1159, align 8
  %err.ctx1.gep1160 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1158, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1160, align 8
  %err.p2i1161 = ptrtoint ptr %err.alloc1152 to i64
  br label %a.rd.done1141

a.rd.err.oob1140:                                 ; preds = %a.rd.check1137
  %arena.cur1162 = call ptr @dva_arena_current()
  %err.alloc1163 = call ptr @dva_arena_alloc(ptr %arena.cur1162, i64 56)
  %err.code.gep1164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1164, align 8
  %err.msg.gep1165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1165, align 8
  %err.file.gep1166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1166, align 8
  %err.line.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 3
  store i64 320, ptr %err.line.gep1167, align 8
  %err.col.gep1168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 4
  store i64 20, ptr %err.col.gep1168, align 8
  %err.ctx.gep1169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1163, i32 0, i32 5
  %err.ctx0.gep1170 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1169, i32 0, i32 0
  store i64 %var.load1135, ptr %err.ctx0.gep1170, align 8
  %err.ctx1.gep1171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1169, i32 0, i32 1
  store i64 %a.rd.len1143, ptr %err.ctx1.gep1171, align 8
  %err.p2i1172 = ptrtoint ptr %err.alloc1163 to i64
  br label %a.rd.done1141

a.rd.done1141:                                    ; preds = %a.rd.err.oob1140, %a.rd.err.null1139, %a.rd.ok1138
  %a.rd.tag1173 = phi i1 [ true, %a.rd.ok1138 ], [ false, %a.rd.err.null1139 ], [ false, %a.rd.err.oob1140 ]
  %a.rd.pay1174 = phi i64 [ %a.rd.elem1150, %a.rd.ok1138 ], [ %err.p2i1161, %a.rd.err.null1139 ], [ %err.p2i1172, %a.rd.err.oob1140 ]
  %ram.tag1175 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1173, 0
  %ram.pay1176 = insertvalue { i1, i64 } %ram.tag1175, i64 %a.rd.pay1174, 1
  %ram.tag1177 = extractvalue { i1, i64 } %ram.pay1176, 0
  br i1 %ram.tag1177, label %choice.then1178, label %choice.else1179

choice.then1178:                                  ; preds = %a.rd.done1141
  %ram.pay1181 = extractvalue { i1, i64 } %ram.pay1176, 1
  store i64 %ram.pay1181, ptr %var._1182, align 8
  br label %choice.exit1180

choice.else1179:                                  ; preds = %a.rd.done1141
  %ram.pay1183 = extractvalue { i1, i64 } %ram.pay1176, 1
  %pay.ptr1184 = inttoptr i64 %ram.pay1183 to ptr
  store ptr %pay.ptr1184, ptr %var._1185, align 8
  br label %choice.exit1180

choice.exit1180:                                  ; preds = %choice.else1179, %choice.then1178
  %choice.res1186 = phi i64 [ %ram.pay1181, %choice.then1178 ], [ 0, %choice.else1179 ]
  store i64 %choice.res1186, ptr %var.idx_u, align 8
  %var.load1187 = load i64, ptr %var.low_u, align 8
  %var.load1188 = load i64, ptr %var.idx_u, align 8
  %cmptmp1189 = icmp eq i64 %var.load1187, %var.load1188
  br i1 %cmptmp1189, label %choice.then1190, label %choice.exit1191

choice.then1190:                                  ; preds = %choice.exit1180
  %arena.cur1192 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1192, i64 24)
  %arena.cur1193 = call ptr @dva_arena_current()
  %a.buf1194 = call ptr @dva_arena_alloc(ptr %arena.cur1193, i64 128)
  %a.len.gep1195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1195, align 8
  %a.data.gep1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1194, ptr %a.data.gep1196, align 8
  %a.cap.gep1197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1197, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1198 = load ptr, ptr %var.u_node, align 8
  %var.load1199 = load ptr, ptr %var.u_node, align 8
  %fld.gep1200 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1199, i32 0, i32 0
  %fld.load1201 = load ptr, ptr %fld.gep1200, align 8
  %call.res1202 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1198, ptr %fld.load1201)
  store i1 %call.res1202, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

choice.exit1191:                                  ; preds = %a.store1562, %choice.exit1180
  ret void

loop.header.40:                                   ; preds = %loop.latch.40, %choice.then1190
  %counter.load1203 = load i64, ptr %loop.idx.40, align 8
  br label %loop.body.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i1204 = sub i64 %counter.load1203, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i1204, ptr %var._i1205, align 8
  store i64 %counter.load1203, ptr %var._1206, align 8
  %var.load1207 = load ptr, ptr %var.state, align 8
  %fld.gep1208 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1207, i32 0, i32 4
  %fld.load1209 = load ptr, ptr %fld.gep1208, align 8
  store ptr %fld.load1209, ptr %var.s_ptr, align 8
  %var.load1210 = load ptr, ptr %var.s_ptr, align 8
  %a.load1211 = load ptr, ptr %var.s_ptr, align 8
  %a.null1212 = icmp eq ptr %a.load1211, null
  br i1 %a.null1212, label %a.create1213, label %a.after1214

loop.exit.nat.40:                                 ; No predecessors!
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit1523
  %step.val1524 = load i64, ptr %loop.step.40, align 8
  %loop.next1525 = add i64 %counter.load1203, %step.val1524
  store i64 %loop.next1525, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %choice.then1522, %choice.then1316, %loop.exit.nat.40
  %var.load1526 = load ptr, ptr %var.scc_names, align 8
  %a.load1527 = load ptr, ptr %var.scc_names, align 8
  %a.null1528 = icmp eq ptr %a.load1527, null
  br i1 %a.null1528, label %a.create1529, label %a.after1530

a.create1213:                                     ; preds = %loop.body.40
  %arena.cur1215 = call ptr @dva_arena_current()
  %a.create1216 = call ptr @dva_arena_alloc(ptr %arena.cur1215, i64 24)
  %arena.cur1217 = call ptr @dva_arena_current()
  %a.buf1218 = call ptr @dva_arena_alloc(ptr %arena.cur1217, i64 128)
  %a.len.gep1219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1216, i32 0, i32 0
  store i64 0, ptr %a.len.gep1219, align 8
  %a.data.gep1220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1216, i32 0, i32 1
  store ptr %a.buf1218, ptr %a.data.gep1220, align 8
  %a.cap.gep1221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1216, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1221, align 8
  store ptr %a.create1216, ptr %var.s_ptr, align 8
  br label %a.after1214

a.after1214:                                      ; preds = %a.create1213, %loop.body.40
  %a.load21222 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1223 = icmp ne ptr %a.load21222, null
  br i1 %a.rd.nonnull1223, label %a.rd.check1224, label %a.rd.err.null1226

a.rd.check1224:                                   ; preds = %a.after1214
  %a.rd.len1229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21222, i32 0, i32 0
  %a.rd.len1230 = load i64, ptr %a.rd.len1229, align 8
  %a.rd.lt1231 = icmp slt i64 0, %a.rd.len1230
  %a.rd.bounds1232 = and i1 true, %a.rd.lt1231
  br i1 %a.rd.bounds1232, label %a.rd.ok1225, label %a.rd.err.oob1227

a.rd.ok1225:                                      ; preds = %a.rd.check1224
  %a.rd.data1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21222, i32 0, i32 1
  %a.rd.data1234 = load ptr, ptr %a.rd.data1233, align 8
  %a.rd.elem.gep1235 = getelementptr i64, ptr %a.rd.data1234, i64 0
  %a.rd.elem1236 = load i64, ptr %a.rd.elem.gep1235, align 8
  br label %a.rd.done1228

a.rd.err.null1226:                                ; preds = %a.after1214
  %arena.cur1237 = call ptr @dva_arena_current()
  %err.alloc1238 = call ptr @dva_arena_alloc(ptr %arena.cur1237, i64 56)
  %err.code.gep1239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1239, align 8
  %err.msg.gep1240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1240, align 8
  %err.file.gep1241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1241, align 8
  %err.line.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 3
  store i64 327, ptr %err.line.gep1242, align 8
  %err.col.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 4
  store i64 26, ptr %err.col.gep1243, align 8
  %err.ctx.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 5
  %err.ctx0.gep1245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1245, align 8
  %err.ctx1.gep1246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1246, align 8
  %err.p2i1247 = ptrtoint ptr %err.alloc1238 to i64
  br label %a.rd.done1228

a.rd.err.oob1227:                                 ; preds = %a.rd.check1224
  %arena.cur1248 = call ptr @dva_arena_current()
  %err.alloc1249 = call ptr @dva_arena_alloc(ptr %arena.cur1248, i64 56)
  %err.code.gep1250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1250, align 8
  %err.msg.gep1251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1251, align 8
  %err.file.gep1252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1252, align 8
  %err.line.gep1253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 3
  store i64 327, ptr %err.line.gep1253, align 8
  %err.col.gep1254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 4
  store i64 26, ptr %err.col.gep1254, align 8
  %err.ctx.gep1255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 5
  %err.ctx0.gep1256 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1255, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1256, align 8
  %err.ctx1.gep1257 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1255, i32 0, i32 1
  store i64 %a.rd.len1230, ptr %err.ctx1.gep1257, align 8
  %err.p2i1258 = ptrtoint ptr %err.alloc1249 to i64
  br label %a.rd.done1228

a.rd.done1228:                                    ; preds = %a.rd.err.oob1227, %a.rd.err.null1226, %a.rd.ok1225
  %a.rd.tag1259 = phi i1 [ true, %a.rd.ok1225 ], [ false, %a.rd.err.null1226 ], [ false, %a.rd.err.oob1227 ]
  %a.rd.pay1260 = phi i64 [ %a.rd.elem1236, %a.rd.ok1225 ], [ %err.p2i1247, %a.rd.err.null1226 ], [ %err.p2i1258, %a.rd.err.oob1227 ]
  %ram.tag1261 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1259, 0
  %ram.pay1262 = insertvalue { i1, i64 } %ram.tag1261, i64 %a.rd.pay1260, 1
  %unwrap.is_pos1263 = extractvalue { i1, i64 } %ram.pay1262, 0
  br i1 %unwrap.is_pos1263, label %unwrap.pos.41, label %unwrap.abort.41

unwrap.pos.41:                                    ; preds = %a.rd.done1228
  %unwrap.pay.pos1313 = extractvalue { i1, i64 } %ram.pay1262, 1
  store i64 %unwrap.pay.pos1313, ptr %var.sp, align 8
  %var.load1314 = load i64, ptr %var.sp, align 8
  %cmptmp1315 = icmp eq i64 %var.load1314, 0
  br i1 %cmptmp1315, label %choice.then1316, label %choice.exit1317

unwrap.abort.41:                                  ; preds = %a.rd.done1228
  %unwrap.pay.abort1264 = extractvalue { i1, i64 } %ram.pay1262, 1
  %err.ptr1265 = inttoptr i64 %unwrap.pay.abort1264 to ptr
  %err.code.gep1266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1265, i32 0, i32 0
  %err.code1267 = load i64, ptr %err.code.gep1266, align 8
  %err.msg.gep1268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1265, i32 0, i32 1
  %err.msg.struct1269 = load ptr, ptr %err.msg.gep1268, align 8
  %err.file.gep1270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1265, i32 0, i32 2
  %err.file.struct1271 = load ptr, ptr %err.file.gep1270, align 8
  %err.line.gep1272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1265, i32 0, i32 3
  %err.line1273 = load i64, ptr %err.line.gep1272, align 8
  %err.col.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1265, i32 0, i32 4
  %err.col1275 = load i64, ptr %err.col.gep1274, align 8
  %err.msg.len1276 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1269, i32 0, i32 0
  %err.msg.len1277 = load i64, ptr %err.msg.len1276, align 8
  %err.msg.len1278 = and i64 %err.msg.len1277, 281474976710655
  %str.tag1279 = lshr i64 %err.msg.len1277, 48
  %str.immortal1280 = icmp eq i64 %str.tag1279, 0
  br i1 %str.immortal1280, label %str_ok1282, label %str_gen_check1281

str_gen_check1281:                                ; preds = %unwrap.abort.41
  %arena.gen1284 = call ptr @dva_arena_current()
  %arena.gen1285 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1284, i32 0, i32 4
  %arena.gen1286 = load i64, ptr %arena.gen1285, align 8
  %str.tag.match1287 = icmp eq i64 %str.tag1279, %arena.gen1286
  br i1 %str.tag.match1287, label %str_ok1282, label %str_stale1283

str_ok1282:                                       ; preds = %str_stale1283, %str_gen_check1281, %unwrap.abort.41
  %err.msg.len321288 = trunc i64 %err.msg.len1278 to i32
  %err.msg.data1289 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1269, i32 0, i32 1
  %err.msg.data1290 = load ptr, ptr %err.msg.data1289, align 8
  %err.file.len1291 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1271, i32 0, i32 0
  %err.file.len1292 = load i64, ptr %err.file.len1291, align 8
  %err.file.len1293 = and i64 %err.file.len1292, 281474976710655
  %str.tag1294 = lshr i64 %err.file.len1292, 48
  %str.immortal1295 = icmp eq i64 %str.tag1294, 0
  br i1 %str.immortal1295, label %str_ok1297, label %str_gen_check1296

str_stale1283:                                    ; preds = %str_gen_check1281
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1282

str_gen_check1296:                                ; preds = %str_ok1282
  %arena.gen1299 = call ptr @dva_arena_current()
  %arena.gen1300 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1299, i32 0, i32 4
  %arena.gen1301 = load i64, ptr %arena.gen1300, align 8
  %str.tag.match1302 = icmp eq i64 %str.tag1294, %arena.gen1301
  br i1 %str.tag.match1302, label %str_ok1297, label %str_stale1298

str_ok1297:                                       ; preds = %str_stale1298, %str_gen_check1296, %str_ok1282
  %err.file.len321303 = trunc i64 %err.file.len1293 to i32
  %err.file.data1304 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1271, i32 0, i32 1
  %err.file.data1305 = load ptr, ptr %err.file.data1304, align 8
  %err.thread.rec1306 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1307 = icmp ne ptr %err.thread.rec1306, null
  br i1 %err.is.thread1307, label %err.thread1308, label %err.normal1309

str_stale1298:                                    ; preds = %str_gen_check1296
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1297

err.thread1308:                                   ; preds = %str_ok1297
  %err.haserr.gep1310 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1306, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1310, align 8
  %err.err.gep1311 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1306, i32 0, i32 7
  store ptr %err.ptr1265, ptr %err.err.gep1311, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1309:                                   ; preds = %str_ok1297
  %err.panic.printf1312 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1267, i32 %err.msg.len321288, ptr %err.msg.data1290, i32 %err.file.len321303, ptr %err.file.data1305, i64 %err.line1273, i64 %err.col1275)
  call void @exit(i32 1)
  unreachable

choice.then1316:                                  ; preds = %unwrap.pos.41
  br label %loop.exit.40

choice.exit1317:                                  ; preds = %unwrap.pos.41
  %var.load1318 = load ptr, ptr %var.state, align 8
  %call.res1319 = call i64 @"dep_graph::pop_stack"(ptr %var.load1318)
  store i64 %call.res1319, ptr %var.w, align 8
  %var.load1320 = load ptr, ptr %var.ons, align 8
  %a.load1321 = load ptr, ptr %var.ons, align 8
  %a.null1322 = icmp eq ptr %a.load1321, null
  br i1 %a.null1322, label %a.create1323, label %a.after1324

a.create1323:                                     ; preds = %choice.exit1317
  %arena.cur1325 = call ptr @dva_arena_current()
  %a.create1326 = call ptr @dva_arena_alloc(ptr %arena.cur1325, i64 24)
  %arena.cur1327 = call ptr @dva_arena_current()
  %a.buf1328 = call ptr @dva_arena_alloc(ptr %arena.cur1327, i64 128)
  %a.len.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 0
  store i64 0, ptr %a.len.gep1329, align 8
  %a.data.gep1330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 1
  store ptr %a.buf1328, ptr %a.data.gep1330, align 8
  %a.cap.gep1331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1326, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1331, align 8
  store ptr %a.create1326, ptr %var.ons, align 8
  br label %a.after1324

a.after1324:                                      ; preds = %a.create1323, %choice.exit1317
  %a.load21332 = load ptr, ptr %var.ons, align 8
  %var.load1333 = load i64, ptr %var.w, align 8
  %a.wr.data1334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21332, i32 0, i32 1
  %a.wr.data1335 = load ptr, ptr %a.wr.data1334, align 8
  %a.elem.gep1336 = getelementptr i64, ptr %a.wr.data1335, i64 %var.load1333
  store i64 0, ptr %a.elem.gep1336, align 8
  %arena.cur1337 = call ptr @dva_arena_current()
  %a.wr.succ1338 = call ptr @dva_arena_alloc(ptr %arena.cur1337, i64 16)
  %tag.gep1339 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1338, i32 0, i32 0
  store i64 1, ptr %tag.gep1339, align 8
  %pay.gep1340 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1338, i32 0, i32 1
  store ptr null, ptr %pay.gep1340, align 8
  %tag.gep1341 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1338, i32 0, i32 0
  %tag.id1342 = load i64, ptr %tag.gep1341, align 8
  %tag.eq.one1343 = icmp eq i64 %tag.id1342, 1
  %tag.eq.two1344 = icmp eq i64 %tag.id1342, 2
  %is.pos1345 = or i1 %tag.eq.one1343, %tag.eq.two1344
  %pay.gep1346 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1338, i32 0, i32 1
  %payload.ptr1347 = load ptr, ptr %pay.gep1346, align 8
  br i1 %is.pos1345, label %choice.then1348, label %choice.else1349

choice.then1348:                                  ; preds = %a.after1324
  br label %choice.exit1350

choice.else1349:                                  ; preds = %a.after1324
  store ptr %payload.ptr1347, ptr %var._1351, align 8
  store ptr %payload.ptr1347, ptr %var._1352, align 8
  store ptr %payload.ptr1347, ptr %var._1353, align 8
  %err.code.gep1354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1347, i32 0, i32 0
  %err.code1355 = load i64, ptr %err.code.gep1354, align 8
  %err.msg.gep1356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1347, i32 0, i32 1
  %err.msg.struct1357 = load ptr, ptr %err.msg.gep1356, align 8
  %err.file.gep1358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1347, i32 0, i32 2
  %err.file.struct1359 = load ptr, ptr %err.file.gep1358, align 8
  %err.line.gep1360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1347, i32 0, i32 3
  %err.line1361 = load i64, ptr %err.line.gep1360, align 8
  %err.col.gep1362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1347, i32 0, i32 4
  %err.col1363 = load i64, ptr %err.col.gep1362, align 8
  %err.msg.len1364 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1357, i32 0, i32 0
  %err.msg.len1365 = load i64, ptr %err.msg.len1364, align 8
  %err.msg.len1366 = and i64 %err.msg.len1365, 281474976710655
  %str.tag1367 = lshr i64 %err.msg.len1365, 48
  %str.immortal1368 = icmp eq i64 %str.tag1367, 0
  br i1 %str.immortal1368, label %str_ok1370, label %str_gen_check1369

choice.exit1350:                                  ; preds = %err.abort1401, %choice.then1348
  %var.load1402 = load ptr, ptr %var.graph, align 8
  %fld.gep1403 = getelementptr inbounds { ptr, ptr }, ptr %var.load1402, i32 0, i32 0
  %fld.load1404 = load ptr, ptr %fld.gep1403, align 8
  %var.load1405 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1406 = icmp ne ptr %fld.load1404, null
  br i1 %a.rd.nonnull1406, label %a.rd.check1407, label %a.rd.err.null1409

str_gen_check1369:                                ; preds = %choice.else1349
  %arena.gen1372 = call ptr @dva_arena_current()
  %arena.gen1373 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1372, i32 0, i32 4
  %arena.gen1374 = load i64, ptr %arena.gen1373, align 8
  %str.tag.match1375 = icmp eq i64 %str.tag1367, %arena.gen1374
  br i1 %str.tag.match1375, label %str_ok1370, label %str_stale1371

str_ok1370:                                       ; preds = %str_stale1371, %str_gen_check1369, %choice.else1349
  %err.msg.len321376 = trunc i64 %err.msg.len1366 to i32
  %err.msg.data1377 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1357, i32 0, i32 1
  %err.msg.data1378 = load ptr, ptr %err.msg.data1377, align 8
  %err.file.len1379 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1359, i32 0, i32 0
  %err.file.len1380 = load i64, ptr %err.file.len1379, align 8
  %err.file.len1381 = and i64 %err.file.len1380, 281474976710655
  %str.tag1382 = lshr i64 %err.file.len1380, 48
  %str.immortal1383 = icmp eq i64 %str.tag1382, 0
  br i1 %str.immortal1383, label %str_ok1385, label %str_gen_check1384

str_stale1371:                                    ; preds = %str_gen_check1369
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1370

str_gen_check1384:                                ; preds = %str_ok1370
  %arena.gen1387 = call ptr @dva_arena_current()
  %arena.gen1388 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1387, i32 0, i32 4
  %arena.gen1389 = load i64, ptr %arena.gen1388, align 8
  %str.tag.match1390 = icmp eq i64 %str.tag1382, %arena.gen1389
  br i1 %str.tag.match1390, label %str_ok1385, label %str_stale1386

str_ok1385:                                       ; preds = %str_stale1386, %str_gen_check1384, %str_ok1370
  %err.file.len321391 = trunc i64 %err.file.len1381 to i32
  %err.file.data1392 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1359, i32 0, i32 1
  %err.file.data1393 = load ptr, ptr %err.file.data1392, align 8
  %err.thread.rec1394 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1395 = icmp ne ptr %err.thread.rec1394, null
  br i1 %err.is.thread1395, label %err.thread1396, label %err.normal1397

str_stale1386:                                    ; preds = %str_gen_check1384
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1385

err.thread1396:                                   ; preds = %str_ok1385
  %err.haserr.gep1398 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1394, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1398, align 8
  %err.err.gep1399 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1394, i32 0, i32 7
  store ptr %payload.ptr1347, ptr %err.err.gep1399, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1397:                                   ; preds = %str_ok1385
  %err.panic.printf1400 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1355, i32 %err.msg.len321376, ptr %err.msg.data1378, i32 %err.file.len321391, ptr %err.file.data1393, i64 %err.line1361, i64 %err.col1363)
  call void @exit(i32 1)
  unreachable

err.abort1401:                                    ; No predecessors!
  br label %choice.exit1350

a.rd.check1407:                                   ; preds = %choice.exit1350
  %a.rd.len1412 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1404, i32 0, i32 0
  %a.rd.len1413 = load i64, ptr %a.rd.len1412, align 8
  %a.rd.ge01414 = icmp sge i64 %var.load1405, 0
  %a.rd.lt1415 = icmp slt i64 %var.load1405, %a.rd.len1413
  %a.rd.bounds1416 = and i1 %a.rd.ge01414, %a.rd.lt1415
  br i1 %a.rd.bounds1416, label %a.rd.ok1408, label %a.rd.err.oob1410

a.rd.ok1408:                                      ; preds = %a.rd.check1407
  %a.rd.data1417 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1404, i32 0, i32 1
  %a.rd.data1418 = load ptr, ptr %a.rd.data1417, align 8
  %a.rd.elem.gep1419 = getelementptr i64, ptr %a.rd.data1418, i64 %var.load1405
  %a.rd.elem1420 = load i64, ptr %a.rd.elem.gep1419, align 8
  br label %a.rd.done1411

a.rd.err.null1409:                                ; preds = %choice.exit1350
  %arena.cur1421 = call ptr @dva_arena_current()
  %err.alloc1422 = call ptr @dva_arena_alloc(ptr %arena.cur1421, i64 56)
  %err.code.gep1423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1423, align 8
  %err.msg.gep1424 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1424, align 8
  %err.file.gep1425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1425, align 8
  %err.line.gep1426 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 3
  store i64 0, ptr %err.line.gep1426, align 8
  %err.col.gep1427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 4
  store i64 0, ptr %err.col.gep1427, align 8
  %err.ctx.gep1428 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1422, i32 0, i32 5
  %err.ctx0.gep1429 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1428, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1429, align 8
  %err.ctx1.gep1430 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1428, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1430, align 8
  %err.p2i1431 = ptrtoint ptr %err.alloc1422 to i64
  br label %a.rd.done1411

a.rd.err.oob1410:                                 ; preds = %a.rd.check1407
  %arena.cur1432 = call ptr @dva_arena_current()
  %err.alloc1433 = call ptr @dva_arena_alloc(ptr %arena.cur1432, i64 56)
  %err.code.gep1434 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1434, align 8
  %err.msg.gep1435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1435, align 8
  %err.file.gep1436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1436, align 8
  %err.line.gep1437 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 3
  store i64 0, ptr %err.line.gep1437, align 8
  %err.col.gep1438 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 4
  store i64 0, ptr %err.col.gep1438, align 8
  %err.ctx.gep1439 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1433, i32 0, i32 5
  %err.ctx0.gep1440 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1439, i32 0, i32 0
  store i64 %var.load1405, ptr %err.ctx0.gep1440, align 8
  %err.ctx1.gep1441 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1439, i32 0, i32 1
  store i64 %a.rd.len1413, ptr %err.ctx1.gep1441, align 8
  %err.p2i1442 = ptrtoint ptr %err.alloc1433 to i64
  br label %a.rd.done1411

a.rd.done1411:                                    ; preds = %a.rd.err.oob1410, %a.rd.err.null1409, %a.rd.ok1408
  %a.rd.tag1443 = phi i1 [ true, %a.rd.ok1408 ], [ false, %a.rd.err.null1409 ], [ false, %a.rd.err.oob1410 ]
  %a.rd.pay1444 = phi i64 [ %a.rd.elem1420, %a.rd.ok1408 ], [ %err.p2i1431, %a.rd.err.null1409 ], [ %err.p2i1442, %a.rd.err.oob1410 ]
  %ram.tag1445 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1443, 0
  %ram.pay1446 = insertvalue { i1, i64 } %ram.tag1445, i64 %a.rd.pay1444, 1
  %unwrap.is_pos1447 = extractvalue { i1, i64 } %ram.pay1446, 0
  br i1 %unwrap.is_pos1447, label %unwrap.pos.42, label %unwrap.abort.42

unwrap.pos.42:                                    ; preds = %a.rd.done1411
  %unwrap.pay.pos1497 = extractvalue { i1, i64 } %ram.pay1446, 1
  %pay.ptr1498 = inttoptr i64 %unwrap.pay.pos1497 to ptr
  store ptr %pay.ptr1498, ptr %var.w_node, align 8
  %var.load1499 = load ptr, ptr %var.w_node, align 8
  %fld.gep1500 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1499, i32 0, i32 0
  %fld.load1501 = load ptr, ptr %fld.gep1500, align 8
  %a.load1502 = load ptr, ptr %var.scc_names, align 8
  %a.null1503 = icmp eq ptr %a.load1502, null
  br i1 %a.null1503, label %a.create1504, label %a.after1505

unwrap.abort.42:                                  ; preds = %a.rd.done1411
  %unwrap.pay.abort1448 = extractvalue { i1, i64 } %ram.pay1446, 1
  %err.ptr1449 = inttoptr i64 %unwrap.pay.abort1448 to ptr
  %err.code.gep1450 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1449, i32 0, i32 0
  %err.code1451 = load i64, ptr %err.code.gep1450, align 8
  %err.msg.gep1452 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1449, i32 0, i32 1
  %err.msg.struct1453 = load ptr, ptr %err.msg.gep1452, align 8
  %err.file.gep1454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1449, i32 0, i32 2
  %err.file.struct1455 = load ptr, ptr %err.file.gep1454, align 8
  %err.line.gep1456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1449, i32 0, i32 3
  %err.line1457 = load i64, ptr %err.line.gep1456, align 8
  %err.col.gep1458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1449, i32 0, i32 4
  %err.col1459 = load i64, ptr %err.col.gep1458, align 8
  %err.msg.len1460 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1453, i32 0, i32 0
  %err.msg.len1461 = load i64, ptr %err.msg.len1460, align 8
  %err.msg.len1462 = and i64 %err.msg.len1461, 281474976710655
  %str.tag1463 = lshr i64 %err.msg.len1461, 48
  %str.immortal1464 = icmp eq i64 %str.tag1463, 0
  br i1 %str.immortal1464, label %str_ok1466, label %str_gen_check1465

str_gen_check1465:                                ; preds = %unwrap.abort.42
  %arena.gen1468 = call ptr @dva_arena_current()
  %arena.gen1469 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1468, i32 0, i32 4
  %arena.gen1470 = load i64, ptr %arena.gen1469, align 8
  %str.tag.match1471 = icmp eq i64 %str.tag1463, %arena.gen1470
  br i1 %str.tag.match1471, label %str_ok1466, label %str_stale1467

str_ok1466:                                       ; preds = %str_stale1467, %str_gen_check1465, %unwrap.abort.42
  %err.msg.len321472 = trunc i64 %err.msg.len1462 to i32
  %err.msg.data1473 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1453, i32 0, i32 1
  %err.msg.data1474 = load ptr, ptr %err.msg.data1473, align 8
  %err.file.len1475 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1455, i32 0, i32 0
  %err.file.len1476 = load i64, ptr %err.file.len1475, align 8
  %err.file.len1477 = and i64 %err.file.len1476, 281474976710655
  %str.tag1478 = lshr i64 %err.file.len1476, 48
  %str.immortal1479 = icmp eq i64 %str.tag1478, 0
  br i1 %str.immortal1479, label %str_ok1481, label %str_gen_check1480

str_stale1467:                                    ; preds = %str_gen_check1465
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1466

str_gen_check1480:                                ; preds = %str_ok1466
  %arena.gen1483 = call ptr @dva_arena_current()
  %arena.gen1484 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1483, i32 0, i32 4
  %arena.gen1485 = load i64, ptr %arena.gen1484, align 8
  %str.tag.match1486 = icmp eq i64 %str.tag1478, %arena.gen1485
  br i1 %str.tag.match1486, label %str_ok1481, label %str_stale1482

str_ok1481:                                       ; preds = %str_stale1482, %str_gen_check1480, %str_ok1466
  %err.file.len321487 = trunc i64 %err.file.len1477 to i32
  %err.file.data1488 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1455, i32 0, i32 1
  %err.file.data1489 = load ptr, ptr %err.file.data1488, align 8
  %err.thread.rec1490 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1491 = icmp ne ptr %err.thread.rec1490, null
  br i1 %err.is.thread1491, label %err.thread1492, label %err.normal1493

str_stale1482:                                    ; preds = %str_gen_check1480
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1481

err.thread1492:                                   ; preds = %str_ok1481
  %err.haserr.gep1494 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1490, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1494, align 8
  %err.err.gep1495 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1490, i32 0, i32 7
  store ptr %err.ptr1449, ptr %err.err.gep1495, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1493:                                   ; preds = %str_ok1481
  %err.panic.printf1496 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1451, i32 %err.msg.len321472, ptr %err.msg.data1474, i32 %err.file.len321487, ptr %err.file.data1489, i64 %err.line1457, i64 %err.col1459)
  call void @exit(i32 1)
  unreachable

a.create1504:                                     ; preds = %unwrap.pos.42
  %arena.cur1506 = call ptr @dva_arena_current()
  %a.create1507 = call ptr @dva_arena_alloc(ptr %arena.cur1506, i64 24)
  %arena.cur1508 = call ptr @dva_arena_current()
  %a.buf1509 = call ptr @dva_arena_alloc(ptr %arena.cur1508, i64 128)
  %a.len.gep1510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 0
  store i64 0, ptr %a.len.gep1510, align 8
  %a.data.gep1511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 1
  store ptr %a.buf1509, ptr %a.data.gep1511, align 8
  %a.cap.gep1512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1512, align 8
  store ptr %a.create1507, ptr %var.scc_names, align 8
  br label %a.after1505

a.after1505:                                      ; preds = %a.create1504, %unwrap.pos.42
  %a.load21513 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1505
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 0
  %a.len1514 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 2
  %a.cap1515 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1514, %a.cap1515
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21513)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 1
  %a.cur.data1516 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 0
  %a.cur.len1517 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1518 = getelementptr i64, ptr %a.cur.data1516, i64 %a.cur.len1517
  %a.elem.p2i = ptrtoint ptr %fld.load1501 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep1518, align 8
  %a.next.len = add i64 %a.cur.len1517, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1519 = load i64, ptr %var.w, align 8
  %var.load1520 = load i64, ptr %var.u, align 8
  %cmptmp1521 = icmp eq i64 %var.load1519, %var.load1520
  br i1 %cmptmp1521, label %choice.then1522, label %choice.exit1523

choice.then1522:                                  ; preds = %a.store
  br label %loop.exit.40

choice.exit1523:                                  ; preds = %a.store
  br label %loop.latch.40

a.create1529:                                     ; preds = %loop.exit.40
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
  store ptr %a.create1532, ptr %var.scc_names, align 8
  br label %a.after1530

a.after1530:                                      ; preds = %a.create1529, %loop.exit.40
  %a.load21538 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21538, i32 0, i32 0
  %a.len.query1539 = load i64, ptr %a.len.query, align 8
  %cmptmp1540 = icmp sgt i64 %a.len.query1539, 1
  br i1 %cmptmp1540, label %or.43.then, label %or.43.else

or.43.then:                                       ; preds = %a.after1530
  br label %or.43.exit

or.43.else:                                       ; preds = %a.after1530
  %var.load1541 = load i1, ptr %var.is_self_rec, align 1
  br label %or.43.exit

or.43.exit:                                       ; preds = %or.43.else, %or.43.then
  %or.43.phi = phi i1 [ %cmptmp1540, %or.43.then ], [ %var.load1541, %or.43.else ]
  store i1 %or.43.phi, ptr %var.is_rec, align 1
  %var.load1542 = load ptr, ptr %var.state, align 8
  %var.load1543 = load ptr, ptr %var.scc_names, align 8
  %a.load1544 = load ptr, ptr %var.scc_names, align 8
  %a.null1545 = icmp eq ptr %a.load1544, null
  br i1 %a.null1545, label %a.create1546, label %a.after1547

a.create1546:                                     ; preds = %or.43.exit
  %arena.cur1548 = call ptr @dva_arena_current()
  %a.create1549 = call ptr @dva_arena_alloc(ptr %arena.cur1548, i64 24)
  %arena.cur1550 = call ptr @dva_arena_current()
  %a.buf1551 = call ptr @dva_arena_alloc(ptr %arena.cur1550, i64 128)
  %a.len.gep1552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 0
  store i64 0, ptr %a.len.gep1552, align 8
  %a.data.gep1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 1
  store ptr %a.buf1551, ptr %a.data.gep1553, align 8
  %a.cap.gep1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1554, align 8
  store ptr %a.create1549, ptr %var.scc_names, align 8
  br label %a.after1547

a.after1547:                                      ; preds = %a.create1546, %or.43.exit
  %a.load21555 = load ptr, ptr %var.scc_names, align 8
  %var.load1556 = load i1, ptr %var.is_rec, align 1
  %arena.cur1557 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1557, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21555, ptr %rec.fld, align 8
  %rec.fld1558 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1556, ptr %rec.fld1558, align 1
  %fld.gep1559 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1542, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1559, align 8
  br label %a.check1560

a.check1560:                                      ; preds = %a.after1547
  %a.len1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1564 = load i64, ptr %a.len1563, align 8
  %a.cap1565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1566 = load i64, ptr %a.cap1565, align 8
  %a.needs.grow1567 = icmp eq i64 %a.len1564, %a.cap1566
  br i1 %a.needs.grow1567, label %a.grow1561, label %a.store1562

a.grow1561:                                       ; preds = %a.check1560
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1562

a.store1562:                                      ; preds = %a.grow1561, %a.check1560
  %a.cur.data1568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1569 = load ptr, ptr %a.cur.data1568, align 8
  %a.cur.len1570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1571 = load i64, ptr %a.cur.len1570, align 8
  %a.elem.gep1572 = getelementptr i64, ptr %a.cur.data1569, i64 %a.cur.len1571
  %a.elem.p2i1573 = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i1573, ptr %a.elem.gep1572, align 8
  %a.next.len1574 = add i64 %a.cur.len1571, 1
  %b.len.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1574, ptr %b.len.gep1575, align 8
  br label %choice.exit1191
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
  store i64 343, ptr %err.line.gep, align 8
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
  store i64 343, ptr %err.line.gep19, align 8
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
