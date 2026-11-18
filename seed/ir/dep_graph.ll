; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@"var.ast::cell_var_names" = external global ptr
@str.0 = internal unnamed_addr constant [6 x i8] c"<fwd>\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.0 }
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
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

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #2 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #3

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #3

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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.next:                                      ; preds = %entry
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.case
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.case
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %choice.exit
}

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
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.copy.len3 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.copy.cap4 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.copy.data5 = load ptr, ptr %a.copy.data, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap4, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
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

choice.exit:                                      ; preds = %choice.exit37, %choice.then
  %choice.res55 = phi i1 [ false, %choice.then ], [ %choice.res54, %choice.exit37 ]
  ret i1 %choice.res55

a.create:                                         ; preds = %choice.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len31 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len31, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit23
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data34 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit23
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then35, label %choice.else36

choice.then35:                                    ; preds = %str.eq.merge
  br label %choice.exit37

choice.else36:                                    ; preds = %str.eq.merge
  %var.load38 = load ptr, ptr %var.names, align 8
  %a.load39 = load ptr, ptr %var.names, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

choice.exit37:                                    ; preds = %a.after42, %choice.then35
  %choice.res54 = phi i1 [ true, %choice.then35 ], [ %call.res, %a.after42 ]
  br label %choice.exit

a.create41:                                       ; preds = %choice.else36
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep47, align 8
  %a.data.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf46, ptr %a.data.gep48, align 8
  %a.cap.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep49, align 8
  store ptr %a.create44, ptr %var.names, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.else36
  %a.load250 = load ptr, ptr %var.names, align 8
  %var.load51 = load ptr, ptr %var.s, align 8
  %var.load52 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load52, 1
  %var.load53 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load250, ptr %var.load51, i64 %addtmp, i64 %var.load53)
  br label %choice.exit37
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
  %var.load3 = load ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.names, align 8
  %a.load5 = load ptr, ptr %var.names, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

a.create7:                                        ; preds = %a.after
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.27.then, label %and.27.else

and.27.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.27.else:                                      ; preds = %entry
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %idx_ok
  %and.27.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.27.else ]
  br i1 %and.27.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.27.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.27.exit

idx_oob:                                          ; preds = %and.27.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.27.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.27.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res47 = phi i1 [ %choice.res, %choice.exit43 ], [ false, %choice.else ]
  ret i1 %choice.res47

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.28.then, label %and.28.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.28.then:                                      ; preds = %idx_ok18
  %var.load25 = load ptr, ptr %var.name, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.i, align 8
  %addtmp32 = add i64 %var.load31, 1
  %idx.oob33 = icmp uge i64 %addtmp32, %s.read.len28
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

and.28.else:                                      ; preds = %idx_ok18
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %idx_ok34
  %and.28.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.28.else ]
  br i1 %and.28.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.28.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.28.exit

idx_oob35:                                        ; preds = %and.28.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.28.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.28.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load44, i64 %addtmp46)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i1 [ true, %choice.then41 ], [ %call.res, %choice.else42 ]
  br label %choice.exit
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

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
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.29.else:                                      ; preds = %entry
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %idx_ok
  %and.29.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.29.else ]
  br i1 %and.29.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.29.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.29.exit

idx_oob:                                          ; preds = %and.29.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.29.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.29.exit
  %var.load53 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res54 = phi i64 [ %choice.res, %choice.exit43 ], [ %var.load53, %choice.else ]
  ret i64 %choice.res54

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.30.then, label %and.30.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.30.then:                                      ; preds = %idx_ok18
  %var.load25 = load ptr, ptr %var.name, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.i, align 8
  %addtmp32 = add i64 %var.load31, 1
  %idx.oob33 = icmp uge i64 %addtmp32, %s.read.len28
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

and.30.else:                                      ; preds = %idx_ok18
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %idx_ok34
  %and.30.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.30.else ]
  br i1 %and.30.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.30.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.30.exit

idx_oob35:                                        ; preds = %and.30.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.30.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.30.exit
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

define { i64, ptr } @"dep_graph::decl_module"(ptr %0, i64 %1) #0 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

choice.exit:                                      ; preds = %ret.dead332, %and.31.exit
  %var.load333 = load ptr, ptr %var.defs, align 8
  %var.load334 = load ptr, ptr %var.ref, align 8
  %m.cap335 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load333, i32 0, i32 1
  %m.cap336 = load i64, ptr %m.cap335, align 8
  %m.keys337 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load333, i32 0, i32 2
  %m.keys338 = load ptr, ptr %m.keys337, align 8
  %m.states339 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load333, i32 0, i32 4
  %m.states340 = load ptr, ptr %m.states339, align 8
  %mk.data341 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 1
  %mk.data342 = load ptr, ptr %mk.data341, align 8
  %mk.len343 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 0
  %mk.len344 = load i64, ptr %mk.len343, align 8
  %mk.len345 = and i64 %mk.len344, 281474976710655
  %str.tag346 = lshr i64 %mk.len344, 48
  %tag.immortal348 = icmp eq i64 %str.tag346, 0
  %active.gen349 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current350 = icmp eq i64 %str.tag346, %active.gen349
  %tag.fast.ok351 = or i1 %tag.immortal348, %tag.current350
  br i1 %tag.fast.ok351, label %str_ok347, label %tag.slow_check352

str_ok11:                                         ; preds = %tag.slow_check16, %choice.then
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load19 = load ptr, ptr %var.ref, align 8
  %cat.seg20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %cat.seg21 = load i64, ptr %cat.seg20, align 8
  %cat.seg22 = and i64 %cat.seg21, 281474976710655
  %str.tag23 = lshr i64 %cat.seg21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

tag.slow_check16:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

str_ok24:                                         ; preds = %tag.slow_check29, %str_ok11
  %cat.seg30 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %cat.seg31 = load ptr, ptr %cat.seg30, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg9, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len32

tag.slow_check29:                                 ; preds = %str_ok11
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

cat.sum.len32:                                    ; preds = %abort.dead, %str_ok24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg22)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort:                               ; preds = %str_ok24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len32

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len32
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len32
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off = add i64 0, %cat.seg9
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off45 = add i64 %cat.off, 2
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.seg31, i64 %cat.seg22, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %m.cap48 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %m.keys49 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 4
  %m.states50 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.data51 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.len52 = load i64, ptr %mk.len, align 8
  %mk.len53 = and i64 %mk.len52, 281474976710655
  %str.tag54 = lshr i64 %mk.len52, 48
  %tag.immortal56 = icmp eq i64 %str.tag54, 0
  %active.gen57 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current58 = icmp eq i64 %str.tag54, %active.gen57
  %tag.fast.ok59 = or i1 %tag.immortal56, %tag.current58
  br i1 %tag.fast.ok59, label %str_ok55, label %tag.slow_check60

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41

str_ok55:                                         ; preds = %tag.slow_check60, %concat.tot.len41
  %hash.str = call i64 @dva_hash_string(ptr %mk.data51, i64 %mk.len53)
  %m.capm1 = sub i64 %m.cap48, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

tag.slow_check60:                                 ; preds = %concat.tot.len41
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag54)
  br label %str_ok55

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok55
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok55 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe61 = phi i64 [ 0, %str_ok55 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe61, %m.cap48
  %m.mem.state.gep = getelementptr i8, ptr %m.states50, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr i64, ptr %m.keys49, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen62 = load i64, ptr %mk.slen, align 8
  %mk.slen63 = and i64 %mk.slen62, 281474976710655
  %str.tag64 = lshr i64 %mk.slen62, 48
  %tag.immortal66 = icmp eq i64 %str.tag64, 0
  %active.gen67 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current68 = icmp eq i64 %str.tag64, %active.gen67
  %tag.fast.ok69 = or i1 %tag.immortal66, %tag.current68
  br i1 %tag.fast.ok69, label %str_ok65, label %tag.slow_check70

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe61, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then82, label %choice.exit83

str_ok65:                                         ; preds = %tag.slow_check70, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.nlen71 = load i64, ptr %mk.nlen, align 8
  %mk.nlen72 = and i64 %mk.nlen71, 281474976710655
  %str.tag73 = lshr i64 %mk.nlen71, 48
  %tag.immortal75 = icmp eq i64 %str.tag73, 0
  %active.gen76 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current77 = icmp eq i64 %str.tag73, %active.gen76
  %tag.fast.ok78 = or i1 %tag.immortal75, %tag.current77
  br i1 %tag.fast.ok78, label %str_ok74, label %tag.slow_check79

tag.slow_check70:                                 ; preds = %m.mem.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag64)
  br label %str_ok65

str_ok74:                                         ; preds = %tag.slow_check79, %str_ok65
  %mk.lenseq = icmp eq i64 %mk.slen63, %mk.nlen72
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.slow_check79:                                 ; preds = %str_ok65
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag73)
  br label %str_ok74

mk.eq.then:                                       ; preds = %str_ok74
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata80 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.ndata81 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata80, ptr %mk.ndata81, i64 %mk.nlen72)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok74
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then82:                                    ; preds = %m.mem.done
  %var.load84 = load ptr, ptr %var.mod, align 8
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %cat.seg86 = load i64, ptr %cat.seg85, align 8
  %cat.seg87 = and i64 %cat.seg86, 281474976710655
  %str.tag88 = lshr i64 %cat.seg86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  %active.gen91 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current92 = icmp eq i64 %str.tag88, %active.gen91
  %tag.fast.ok93 = or i1 %tag.immortal90, %tag.current92
  br i1 %tag.fast.ok93, label %str_ok89, label %tag.slow_check94

choice.exit83:                                    ; preds = %ret.dead, %m.mem.done
  %var.load141 = load ptr, ptr %var.defs, align 8
  %var.load142 = load ptr, ptr %var.mod, align 8
  %cat.seg143 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 0
  %cat.seg144 = load i64, ptr %cat.seg143, align 8
  %cat.seg145 = and i64 %cat.seg144, 281474976710655
  %str.tag146 = lshr i64 %cat.seg144, 48
  %tag.immortal148 = icmp eq i64 %str.tag146, 0
  %active.gen149 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current150 = icmp eq i64 %str.tag146, %active.gen149
  %tag.fast.ok151 = or i1 %tag.immortal148, %tag.current150
  br i1 %tag.fast.ok151, label %str_ok147, label %tag.slow_check152

str_ok89:                                         ; preds = %tag.slow_check94, %choice.then82
  %cat.seg95 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %cat.seg96 = load ptr, ptr %cat.seg95, align 8
  %cat.lit.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load98 = load ptr, ptr %var.ref, align 8
  %cat.seg99 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %cat.seg100 = load i64, ptr %cat.seg99, align 8
  %cat.seg101 = and i64 %cat.seg100, 281474976710655
  %str.tag102 = lshr i64 %cat.seg100, 48
  %tag.immortal104 = icmp eq i64 %str.tag102, 0
  %active.gen105 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current106 = icmp eq i64 %str.tag102, %active.gen105
  %tag.fast.ok107 = or i1 %tag.immortal104, %tag.current106
  br i1 %tag.fast.ok107, label %str_ok103, label %tag.slow_check108

tag.slow_check94:                                 ; preds = %choice.then82
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag88)
  br label %str_ok89

str_ok103:                                        ; preds = %tag.slow_check108, %str_ok89
  %cat.seg109 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %cat.seg110 = load ptr, ptr %cat.seg109, align 8
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg87, i64 2)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

tag.slow_check108:                                ; preds = %str_ok89
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag102)
  br label %str_ok103

cat.sum.len114:                                   ; preds = %abort.dead116, %str_ok103
  %cat.sum.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 %cat.seg101)
  %sum118 = extractvalue { i64, i1 } %cat.sum.len117, 0
  %ovf119 = extractvalue { i64, i1 } %cat.sum.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %cat.sum.len120

str_overflow_abort115:                            ; preds = %str_ok103
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %cat.sum.len114

cat.sum.len120:                                   ; preds = %abort.dead122, %cat.sum.len114
  %concat.tot.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum118, i64 1)
  %sum124 = extractvalue { i64, i1 } %concat.tot.len123, 0
  %ovf125 = extractvalue { i64, i1 } %concat.tot.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %concat.tot.len126

str_overflow_abort121:                            ; preds = %cat.sum.len114
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %cat.sum.len120

concat.tot.len126:                                ; preds = %abort.dead128, %cat.sum.len120
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  %cat.dst131 = getelementptr i8, ptr %concat.buf130, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst131, ptr align 1 %cat.seg96, i64 %cat.seg87, i1 false)
  %cat.off132 = add i64 0, %cat.seg87
  %cat.dst133 = getelementptr i8, ptr %concat.buf130, i64 %cat.off132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst133, ptr align 1 %cat.lit.data97, i64 2, i1 false)
  %cat.off134 = add i64 %cat.off132, 2
  %cat.dst135 = getelementptr i8, ptr %concat.buf130, i64 %cat.off134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst135, ptr align 1 %cat.seg110, i64 %cat.seg101, i1 false)
  %concat.nul136 = getelementptr i8, ptr %concat.buf130, i64 %sum118
  store i8 0, ptr %concat.nul136, align 1
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 16)
  %str.build.len.gep139 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 0
  store i64 %sum118, ptr %str.build.len.gep139, align 8
  %str.build.data.gep140 = getelementptr inbounds { i64, ptr }, ptr %concat.str138, i32 0, i32 1
  store ptr %concat.buf130, ptr %str.build.data.gep140, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str138, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort127:                            ; preds = %cat.sum.len120
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %concat.tot.len126

ret.dead:                                         ; No predecessors!
  br label %choice.exit83

str_ok147:                                        ; preds = %tag.slow_check152, %choice.exit83
  %cat.seg153 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 1
  %cat.seg154 = load ptr, ptr %cat.seg153, align 8
  %cat.lit.data155 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load156 = load ptr, ptr %var.ref, align 8
  %cat.seg157 = getelementptr inbounds { i64, ptr }, ptr %var.load156, i32 0, i32 0
  %cat.seg158 = load i64, ptr %cat.seg157, align 8
  %cat.seg159 = and i64 %cat.seg158, 281474976710655
  %str.tag160 = lshr i64 %cat.seg158, 48
  %tag.immortal162 = icmp eq i64 %str.tag160, 0
  %active.gen163 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current164 = icmp eq i64 %str.tag160, %active.gen163
  %tag.fast.ok165 = or i1 %tag.immortal162, %tag.current164
  br i1 %tag.fast.ok165, label %str_ok161, label %tag.slow_check166

tag.slow_check152:                                ; preds = %choice.exit83
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag146)
  br label %str_ok147

str_ok161:                                        ; preds = %tag.slow_check166, %str_ok147
  %cat.seg167 = getelementptr inbounds { i64, ptr }, ptr %var.load156, i32 0, i32 1
  %cat.seg168 = load ptr, ptr %cat.seg167, align 8
  %cat.sum.len169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg145, i64 3)
  %sum170 = extractvalue { i64, i1 } %cat.sum.len169, 0
  %ovf171 = extractvalue { i64, i1 } %cat.sum.len169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %cat.sum.len172

tag.slow_check166:                                ; preds = %str_ok147
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag160)
  br label %str_ok161

cat.sum.len172:                                   ; preds = %abort.dead174, %str_ok161
  %cat.sum.len175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum170, i64 %cat.seg159)
  %sum176 = extractvalue { i64, i1 } %cat.sum.len175, 0
  %ovf177 = extractvalue { i64, i1 } %cat.sum.len175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %cat.sum.len178

str_overflow_abort173:                            ; preds = %str_ok161
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead174:                                    ; No predecessors!
  br label %cat.sum.len172

cat.sum.len178:                                   ; preds = %abort.dead180, %cat.sum.len172
  %concat.tot.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum176, i64 1)
  %sum182 = extractvalue { i64, i1 } %concat.tot.len181, 0
  %ovf183 = extractvalue { i64, i1 } %concat.tot.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %concat.tot.len184

str_overflow_abort179:                            ; preds = %cat.sum.len172
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %cat.sum.len178

concat.tot.len184:                                ; preds = %abort.dead186, %cat.sum.len178
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 %sum182)
  %cat.dst189 = getelementptr i8, ptr %concat.buf188, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst189, ptr align 1 %cat.seg154, i64 %cat.seg145, i1 false)
  %cat.off190 = add i64 0, %cat.seg145
  %cat.dst191 = getelementptr i8, ptr %concat.buf188, i64 %cat.off190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst191, ptr align 1 %cat.lit.data155, i64 3, i1 false)
  %cat.off192 = add i64 %cat.off190, 3
  %cat.dst193 = getelementptr i8, ptr %concat.buf188, i64 %cat.off192
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst193, ptr align 1 %cat.seg168, i64 %cat.seg159, i1 false)
  %concat.nul194 = getelementptr i8, ptr %concat.buf188, i64 %sum176
  store i8 0, ptr %concat.nul194, align 1
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 16)
  %str.build.len.gep197 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 0
  store i64 %sum176, ptr %str.build.len.gep197, align 8
  %str.build.data.gep198 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 1
  store ptr %concat.buf188, ptr %str.build.data.gep198, align 8
  %m.cap199 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load141, i32 0, i32 1
  %m.cap200 = load i64, ptr %m.cap199, align 8
  %m.keys201 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load141, i32 0, i32 2
  %m.keys202 = load ptr, ptr %m.keys201, align 8
  %m.states203 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load141, i32 0, i32 4
  %m.states204 = load ptr, ptr %m.states203, align 8
  %mk.data205 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 1
  %mk.data206 = load ptr, ptr %mk.data205, align 8
  %mk.len207 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 0
  %mk.len208 = load i64, ptr %mk.len207, align 8
  %mk.len209 = and i64 %mk.len208, 281474976710655
  %str.tag210 = lshr i64 %mk.len208, 48
  %tag.immortal212 = icmp eq i64 %str.tag210, 0
  %active.gen213 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current214 = icmp eq i64 %str.tag210, %active.gen213
  %tag.fast.ok215 = or i1 %tag.immortal212, %tag.current214
  br i1 %tag.fast.ok215, label %str_ok211, label %tag.slow_check216

str_overflow_abort185:                            ; preds = %cat.sum.len178
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %concat.tot.len184

str_ok211:                                        ; preds = %tag.slow_check216, %concat.tot.len184
  %hash.str217 = call i64 @dva_hash_string(ptr %mk.data206, i64 %mk.len209)
  %m.capm1218 = sub i64 %m.cap200, 1
  %m.idx0219 = and i64 %hash.str217, %m.capm1218
  br label %m.mem.loop220

tag.slow_check216:                                ; preds = %concat.tot.len184
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag210)
  br label %str_ok211

m.mem.loop220:                                    ; preds = %m.mem.next223, %str_ok211
  %m.mem.idx226 = phi i64 [ %m.idx0219, %str_ok211 ], [ %m.mem.idx.next269, %m.mem.next223 ]
  %m.mem.probe227 = phi i64 [ 0, %str_ok211 ], [ %m.mem.probe.next270, %m.mem.next223 ]
  %m.mem.reached228 = icmp eq i64 %m.mem.probe227, %m.cap200
  %m.mem.state.gep229 = getelementptr i8, ptr %m.states204, i64 %m.mem.idx226
  %m.mem.state230 = load i8, ptr %m.mem.state.gep229, align 1
  %m.mem.is.empty231 = icmp eq i8 %m.mem.state230, 0
  %m.mem.stop232 = or i1 %m.mem.is.empty231, %m.mem.reached228
  br i1 %m.mem.stop232, label %m.mem.miss224, label %m.mem.probe221

m.mem.probe221:                                   ; preds = %m.mem.loop220
  %m.mem.is.tomb233 = icmp eq i8 %m.mem.state230, 2
  br i1 %m.mem.is.tomb233, label %m.mem.next223, label %m.mem.found222

m.mem.found222:                                   ; preds = %m.mem.probe221
  %m.mem.key.slot234 = getelementptr i64, ptr %m.keys202, i64 %m.mem.idx226
  %mk.stored235 = load ptr, ptr %m.mem.key.slot234, align 8
  %mk.slen236 = getelementptr inbounds { i64, ptr }, ptr %mk.stored235, i32 0, i32 0
  %mk.slen237 = load i64, ptr %mk.slen236, align 8
  %mk.slen238 = and i64 %mk.slen237, 281474976710655
  %str.tag239 = lshr i64 %mk.slen237, 48
  %tag.immortal241 = icmp eq i64 %str.tag239, 0
  %active.gen242 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current243 = icmp eq i64 %str.tag239, %active.gen242
  %tag.fast.ok244 = or i1 %tag.immortal241, %tag.current243
  br i1 %tag.fast.ok244, label %str_ok240, label %tag.slow_check245

m.mem.next223:                                    ; preds = %mk.eq.merge259, %m.mem.probe221
  %m.mem.idx.add268 = add i64 %m.mem.idx226, 1
  %m.mem.idx.next269 = and i64 %m.mem.idx.add268, %m.capm1218
  %m.mem.probe.next270 = add i64 %m.mem.probe227, 1
  br label %m.mem.loop220

m.mem.miss224:                                    ; preds = %m.mem.loop220
  br label %m.mem.done225

m.mem.done225:                                    ; preds = %m.mem.miss224, %m.mem.hit267
  %m.mem.res271 = phi i1 [ true, %m.mem.hit267 ], [ false, %m.mem.miss224 ]
  br i1 %m.mem.res271, label %choice.then272, label %choice.else

str_ok240:                                        ; preds = %tag.slow_check245, %m.mem.found222
  %mk.nlen246 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 0
  %mk.nlen247 = load i64, ptr %mk.nlen246, align 8
  %mk.nlen248 = and i64 %mk.nlen247, 281474976710655
  %str.tag249 = lshr i64 %mk.nlen247, 48
  %tag.immortal251 = icmp eq i64 %str.tag249, 0
  %active.gen252 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current253 = icmp eq i64 %str.tag249, %active.gen252
  %tag.fast.ok254 = or i1 %tag.immortal251, %tag.current253
  br i1 %tag.fast.ok254, label %str_ok250, label %tag.slow_check255

tag.slow_check245:                                ; preds = %m.mem.found222
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag239)
  br label %str_ok240

str_ok250:                                        ; preds = %tag.slow_check255, %str_ok240
  %mk.lenseq256 = icmp eq i64 %mk.slen238, %mk.nlen248
  br i1 %mk.lenseq256, label %mk.eq.then257, label %mk.eq.else258

tag.slow_check255:                                ; preds = %str_ok240
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag249)
  br label %str_ok250

mk.eq.then257:                                    ; preds = %str_ok250
  %mk.sdata260 = getelementptr inbounds { i64, ptr }, ptr %mk.stored235, i32 0, i32 1
  %mk.sdata261 = load ptr, ptr %mk.sdata260, align 8
  %mk.ndata262 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 1
  %mk.ndata263 = load ptr, ptr %mk.ndata262, align 8
  %mk.memcmp264 = call i32 @memcmp(ptr %mk.sdata261, ptr %mk.ndata263, i64 %mk.nlen248)
  %mk.cmpeq265 = icmp eq i32 %mk.memcmp264, 0
  br label %mk.eq.merge259

mk.eq.else258:                                    ; preds = %str_ok250
  br label %mk.eq.merge259

mk.eq.merge259:                                   ; preds = %mk.eq.else258, %mk.eq.then257
  %mk.eq266 = phi i1 [ %mk.cmpeq265, %mk.eq.then257 ], [ false, %mk.eq.else258 ]
  br i1 %mk.eq266, label %m.mem.hit267, label %m.mem.next223

m.mem.hit267:                                     ; preds = %mk.eq.merge259
  br label %m.mem.done225

choice.then272:                                   ; preds = %m.mem.done225
  %var.load274 = load ptr, ptr %var.mod, align 8
  %cat.seg275 = getelementptr inbounds { i64, ptr }, ptr %var.load274, i32 0, i32 0
  %cat.seg276 = load i64, ptr %cat.seg275, align 8
  %cat.seg277 = and i64 %cat.seg276, 281474976710655
  %str.tag278 = lshr i64 %cat.seg276, 48
  %tag.immortal280 = icmp eq i64 %str.tag278, 0
  %active.gen281 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current282 = icmp eq i64 %str.tag278, %active.gen281
  %tag.fast.ok283 = or i1 %tag.immortal280, %tag.current282
  br i1 %tag.fast.ok283, label %str_ok279, label %tag.slow_check284

choice.else:                                      ; preds = %m.mem.done225
  br label %choice.exit273

choice.exit273:                                   ; preds = %choice.else, %concat.tot.len316
  %choice.res = phi ptr [ %concat.str328, %concat.tot.len316 ], [ @str.4.struct, %choice.else ]
  %ret.pack331 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack331

str_ok279:                                        ; preds = %tag.slow_check284, %choice.then272
  %cat.seg285 = getelementptr inbounds { i64, ptr }, ptr %var.load274, i32 0, i32 1
  %cat.seg286 = load ptr, ptr %cat.seg285, align 8
  %cat.lit.data287 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load288 = load ptr, ptr %var.ref, align 8
  %cat.seg289 = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 0
  %cat.seg290 = load i64, ptr %cat.seg289, align 8
  %cat.seg291 = and i64 %cat.seg290, 281474976710655
  %str.tag292 = lshr i64 %cat.seg290, 48
  %tag.immortal294 = icmp eq i64 %str.tag292, 0
  %active.gen295 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current296 = icmp eq i64 %str.tag292, %active.gen295
  %tag.fast.ok297 = or i1 %tag.immortal294, %tag.current296
  br i1 %tag.fast.ok297, label %str_ok293, label %tag.slow_check298

tag.slow_check284:                                ; preds = %choice.then272
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag278)
  br label %str_ok279

str_ok293:                                        ; preds = %tag.slow_check298, %str_ok279
  %cat.seg299 = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 1
  %cat.seg300 = load ptr, ptr %cat.seg299, align 8
  %cat.sum.len301 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg277, i64 3)
  %sum302 = extractvalue { i64, i1 } %cat.sum.len301, 0
  %ovf303 = extractvalue { i64, i1 } %cat.sum.len301, 1
  br i1 %ovf303, label %str_overflow_abort305, label %cat.sum.len304

tag.slow_check298:                                ; preds = %str_ok279
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag292)
  br label %str_ok293

cat.sum.len304:                                   ; preds = %abort.dead306, %str_ok293
  %cat.sum.len307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum302, i64 %cat.seg291)
  %sum308 = extractvalue { i64, i1 } %cat.sum.len307, 0
  %ovf309 = extractvalue { i64, i1 } %cat.sum.len307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %cat.sum.len310

str_overflow_abort305:                            ; preds = %str_ok293
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead306:                                    ; No predecessors!
  br label %cat.sum.len304

cat.sum.len310:                                   ; preds = %abort.dead312, %cat.sum.len304
  %concat.tot.len313 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum308, i64 1)
  %sum314 = extractvalue { i64, i1 } %concat.tot.len313, 0
  %ovf315 = extractvalue { i64, i1 } %concat.tot.len313, 1
  br i1 %ovf315, label %str_overflow_abort317, label %concat.tot.len316

str_overflow_abort311:                            ; preds = %cat.sum.len304
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead312:                                    ; No predecessors!
  br label %cat.sum.len310

concat.tot.len316:                                ; preds = %abort.dead318, %cat.sum.len310
  %arena.cur319 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum314)
  %cat.dst321 = getelementptr i8, ptr %concat.buf320, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst321, ptr align 1 %cat.seg286, i64 %cat.seg277, i1 false)
  %cat.off322 = add i64 0, %cat.seg277
  %cat.dst323 = getelementptr i8, ptr %concat.buf320, i64 %cat.off322
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst323, ptr align 1 %cat.lit.data287, i64 3, i1 false)
  %cat.off324 = add i64 %cat.off322, 3
  %cat.dst325 = getelementptr i8, ptr %concat.buf320, i64 %cat.off324
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst325, ptr align 1 %cat.seg300, i64 %cat.seg291, i1 false)
  %concat.nul326 = getelementptr i8, ptr %concat.buf320, i64 %sum308
  store i8 0, ptr %concat.nul326, align 1
  %arena.cur327 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 16)
  %str.build.len.gep329 = getelementptr inbounds { i64, ptr }, ptr %concat.str328, i32 0, i32 0
  store i64 %sum308, ptr %str.build.len.gep329, align 8
  %str.build.data.gep330 = getelementptr inbounds { i64, ptr }, ptr %concat.str328, i32 0, i32 1
  store ptr %concat.buf320, ptr %str.build.data.gep330, align 8
  br label %choice.exit273

str_overflow_abort317:                            ; preds = %cat.sum.len310
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead318:                                    ; No predecessors!
  br label %concat.tot.len316

ret.dead332:                                      ; No predecessors!
  br label %choice.exit

str_ok347:                                        ; preds = %tag.slow_check352, %choice.exit
  %hash.str353 = call i64 @dva_hash_string(ptr %mk.data342, i64 %mk.len345)
  %m.capm1354 = sub i64 %m.cap336, 1
  %m.idx0355 = and i64 %hash.str353, %m.capm1354
  br label %m.mem.loop356

tag.slow_check352:                                ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag346)
  br label %str_ok347

m.mem.loop356:                                    ; preds = %m.mem.next359, %str_ok347
  %m.mem.idx362 = phi i64 [ %m.idx0355, %str_ok347 ], [ %m.mem.idx.next405, %m.mem.next359 ]
  %m.mem.probe363 = phi i64 [ 0, %str_ok347 ], [ %m.mem.probe.next406, %m.mem.next359 ]
  %m.mem.reached364 = icmp eq i64 %m.mem.probe363, %m.cap336
  %m.mem.state.gep365 = getelementptr i8, ptr %m.states340, i64 %m.mem.idx362
  %m.mem.state366 = load i8, ptr %m.mem.state.gep365, align 1
  %m.mem.is.empty367 = icmp eq i8 %m.mem.state366, 0
  %m.mem.stop368 = or i1 %m.mem.is.empty367, %m.mem.reached364
  br i1 %m.mem.stop368, label %m.mem.miss360, label %m.mem.probe357

m.mem.probe357:                                   ; preds = %m.mem.loop356
  %m.mem.is.tomb369 = icmp eq i8 %m.mem.state366, 2
  br i1 %m.mem.is.tomb369, label %m.mem.next359, label %m.mem.found358

m.mem.found358:                                   ; preds = %m.mem.probe357
  %m.mem.key.slot370 = getelementptr i64, ptr %m.keys338, i64 %m.mem.idx362
  %mk.stored371 = load ptr, ptr %m.mem.key.slot370, align 8
  %mk.slen372 = getelementptr inbounds { i64, ptr }, ptr %mk.stored371, i32 0, i32 0
  %mk.slen373 = load i64, ptr %mk.slen372, align 8
  %mk.slen374 = and i64 %mk.slen373, 281474976710655
  %str.tag375 = lshr i64 %mk.slen373, 48
  %tag.immortal377 = icmp eq i64 %str.tag375, 0
  %active.gen378 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current379 = icmp eq i64 %str.tag375, %active.gen378
  %tag.fast.ok380 = or i1 %tag.immortal377, %tag.current379
  br i1 %tag.fast.ok380, label %str_ok376, label %tag.slow_check381

m.mem.next359:                                    ; preds = %mk.eq.merge395, %m.mem.probe357
  %m.mem.idx.add404 = add i64 %m.mem.idx362, 1
  %m.mem.idx.next405 = and i64 %m.mem.idx.add404, %m.capm1354
  %m.mem.probe.next406 = add i64 %m.mem.probe363, 1
  br label %m.mem.loop356

m.mem.miss360:                                    ; preds = %m.mem.loop356
  br label %m.mem.done361

m.mem.done361:                                    ; preds = %m.mem.miss360, %m.mem.hit403
  %m.mem.res407 = phi i1 [ true, %m.mem.hit403 ], [ false, %m.mem.miss360 ]
  br i1 %m.mem.res407, label %choice.then408, label %choice.else409

str_ok376:                                        ; preds = %tag.slow_check381, %m.mem.found358
  %mk.nlen382 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 0
  %mk.nlen383 = load i64, ptr %mk.nlen382, align 8
  %mk.nlen384 = and i64 %mk.nlen383, 281474976710655
  %str.tag385 = lshr i64 %mk.nlen383, 48
  %tag.immortal387 = icmp eq i64 %str.tag385, 0
  %active.gen388 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current389 = icmp eq i64 %str.tag385, %active.gen388
  %tag.fast.ok390 = or i1 %tag.immortal387, %tag.current389
  br i1 %tag.fast.ok390, label %str_ok386, label %tag.slow_check391

tag.slow_check381:                                ; preds = %m.mem.found358
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag375)
  br label %str_ok376

str_ok386:                                        ; preds = %tag.slow_check391, %str_ok376
  %mk.lenseq392 = icmp eq i64 %mk.slen374, %mk.nlen384
  br i1 %mk.lenseq392, label %mk.eq.then393, label %mk.eq.else394

tag.slow_check391:                                ; preds = %str_ok376
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag385)
  br label %str_ok386

mk.eq.then393:                                    ; preds = %str_ok386
  %mk.sdata396 = getelementptr inbounds { i64, ptr }, ptr %mk.stored371, i32 0, i32 1
  %mk.sdata397 = load ptr, ptr %mk.sdata396, align 8
  %mk.ndata398 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 1
  %mk.ndata399 = load ptr, ptr %mk.ndata398, align 8
  %mk.memcmp400 = call i32 @memcmp(ptr %mk.sdata397, ptr %mk.ndata399, i64 %mk.nlen384)
  %mk.cmpeq401 = icmp eq i32 %mk.memcmp400, 0
  br label %mk.eq.merge395

mk.eq.else394:                                    ; preds = %str_ok386
  br label %mk.eq.merge395

mk.eq.merge395:                                   ; preds = %mk.eq.else394, %mk.eq.then393
  %mk.eq402 = phi i1 [ %mk.cmpeq401, %mk.eq.then393 ], [ false, %mk.eq.else394 ]
  br i1 %mk.eq402, label %m.mem.hit403, label %m.mem.next359

m.mem.hit403:                                     ; preds = %mk.eq.merge395
  br label %m.mem.done361

choice.then408:                                   ; preds = %m.mem.done361
  %var.load411 = load ptr, ptr %var.ref, align 8
  br label %choice.exit410

choice.else409:                                   ; preds = %m.mem.done361
  br label %choice.exit410

choice.exit410:                                   ; preds = %choice.else409, %choice.then408
  %choice.res412 = phi ptr [ %var.load411, %choice.then408 ], [ @str.4.struct, %choice.else409 ]
  %ret.pack413 = load { i64, ptr }, ptr %choice.res412, align 8
  ret { i64, ptr } %ret.pack413
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
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"dep_graph::collect_expr_refs"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.rm = alloca ptr, align 8
  %var._1977 = alloca ptr, align 8
  %var._1909 = alloca ptr, align 8
  %var._i1908 = alloca i64, align 8
  %var.p1900 = alloca ptr, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.m1882 = alloca ptr, align 8
  %var._1881 = alloca ptr, align 8
  %var.r1839 = alloca ptr, align 8
  %var._1838 = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1801 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1766 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1731 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1693 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1658 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1621 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1586 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1551 = alloca ptr, align 8
  %var._1514 = alloca ptr, align 8
  %var._i1513 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %loop.step.47 = alloca i64, align 8
  %loop.idx.47 = alloca i64, align 8
  %var.v1498 = alloca ptr, align 8
  %var._1497 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1460 = alloca ptr, align 8
  %var.v1371 = alloca ptr, align 8
  %var._1370 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1319 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1253 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1187 = alloca ptr, align 8
  %var.a1121 = alloca ptr, align 8
  %var._1120 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1054 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._988 = alloca ptr, align 8
  %var._949 = alloca ptr, align 8
  %var._i948 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._933 = alloca ptr, align 8
  %var._841 = alloca ptr, align 8
  %var._i840 = alloca i64, align 8
  %var.vn = alloca ptr, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._795 = alloca ptr, align 8
  %var._i794 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var._670 = alloca ptr, align 8
  %var._i669 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._640 = alloca ptr, align 8
  %var._i639 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._595 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._477 = alloca ptr, align 8
  %var._467 = alloca ptr, align 8
  %var._i466 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._427 = alloca ptr, align 8
  %var._340 = alloca ptr, align 8
  %var._i339 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._310 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._273 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._207 = alloca ptr, align 8
  %var._172 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._51 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next1971, %a.after1998, %loop.exit.48, %choice.exit1844, %a.after1822, %a.after1785, %a.after1750, %a.after1715, %a.after1677, %a.after1642, %a.after1605, %a.after1570, %loop.exit.47, %a.after1481, %choice.exit1358, %a.after1303, %a.after1237, %a.after1171, %a.after1104, %a.after1038, %loop.exit.45, %loop.exit.39, %loop.exit.38, %a.after411, %a.after294, %a.after257, %loop.exit.36, %choice.exit26
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
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.next:                                      ; preds = %entry
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 9
  br i1 %tag.match48, label %choice.case44, label %choice.next45

str.eq.then:                                      ; preds = %choice.case
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.case
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create7, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.32.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load9 = load ptr, ptr %var.v, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %a.load2, ptr %var.load9)
  %nottmp = xor i1 %call.res, true
  br label %and.32.exit

and.33.then:                                      ; preds = %and.32.exit
  %var.load10 = load ptr, ptr %var.refs, align 8
  %a.load11 = load ptr, ptr %var.refs, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

and.33.else:                                      ; preds = %and.32.exit
  br label %and.33.exit

and.33.exit:                                      ; preds = %and.33.else, %a.after14
  %and.33.phi = phi i1 [ %nottmp25, %a.after14 ], [ %and.32.phi, %and.33.else ]
  br i1 %and.33.phi, label %choice.then, label %choice.exit26

a.create13:                                       ; preds = %and.33.then
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr %var.refs, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %and.33.then
  %a.load222 = load ptr, ptr %var.refs, align 8
  %var.load23 = load ptr, ptr %var.v, align 8
  %call.res24 = call i1 @"dep_graph::has_name"(ptr %a.load222, ptr %var.load23)
  %nottmp25 = xor i1 %call.res24, true
  br label %and.33.exit

choice.then:                                      ; preds = %and.33.exit
  %var.load27 = load ptr, ptr %var.v, align 8
  %a.load28 = load ptr, ptr %var.refs, align 8
  %a.null29 = icmp eq ptr %a.load28, null
  br i1 %a.null29, label %a.create30, label %a.after31

choice.exit26:                                    ; preds = %a.store, %and.33.exit
  br label %choice.exit

a.create30:                                       ; preds = %choice.then
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 128)
  %a.len.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 0
  store i64 0, ptr %a.len.gep36, align 8
  %a.data.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 1
  store ptr %a.buf35, ptr %a.data.gep37, align 8
  %a.cap.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 2
  store i64 16, ptr %a.cap.gep38, align 8
  store ptr %a.create33, ptr %var.refs, align 8
  br label %a.after31

a.after31:                                        ; preds = %a.create30, %choice.then
  %a.load239 = load ptr, ptr %var.refs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after31
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 0
  %a.len40 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 2
  %a.cap41 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len40, %a.cap41
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load239)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 1
  %a.cur.data42 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 0
  %a.cur.len43 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data42, i64 %a.cur.len43
  %slot.p2i = ptrtoint ptr %var.load27 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len43, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit26

choice.case44:                                    ; preds = %choice.next
  %pay.gep49 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr50 = load ptr, ptr %pay.gep49, align 8
  store ptr %payload.ptr50, ptr %var._51, align 8
  store ptr %payload.ptr50, ptr %var.c, align 8
  %var.load52 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load52, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len53 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len54 = load i64, ptr %eq.lhs.len53, align 8
  %eq.lhs.len55 = and i64 %eq.lhs.len54, 281474976710655
  %eq.rhs.len56 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len57 = and i64 %eq.rhs.len56, 281474976710655
  %eq.len58 = icmp eq i64 %eq.lhs.len55, %eq.rhs.len57
  br i1 %eq.len58, label %str.eq.then59, label %str.eq.else60

choice.next45:                                    ; preds = %choice.next
  %tag.gep202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id203 = load i64, ptr %tag.gep202, align 8
  %tag.match204 = icmp eq i64 %tag.id203, 5
  br i1 %tag.match204, label %choice.case200, label %choice.next201

str.eq.then59:                                    ; preds = %choice.case44
  %eq.lhs.data62 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data63 = load ptr, ptr %eq.lhs.data62, align 8
  %eq.rhs.data64 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp65 = call i32 @memcmp(ptr %eq.lhs.data63, ptr %eq.rhs.data64, i64 %eq.lhs.len55)
  %eq.cmp.zero66 = icmp eq i32 %eq.memcmp65, 0
  br label %str.eq.merge61

str.eq.else60:                                    ; preds = %choice.case44
  br label %str.eq.merge61

str.eq.merge61:                                   ; preds = %str.eq.else60, %str.eq.then59
  %str.eq.result67 = phi i1 [ %eq.cmp.zero66, %str.eq.then59 ], [ false, %str.eq.else60 ]
  %str.neq68 = xor i1 %str.eq.result67, true
  br i1 %str.neq68, label %and.34.then, label %and.34.else

and.34.then:                                      ; preds = %str.eq.merge61
  %var.load69 = load ptr, ptr %var.locals, align 8
  %a.load70 = load ptr, ptr %var.locals, align 8
  %a.null71 = icmp eq ptr %a.load70, null
  br i1 %a.null71, label %a.create72, label %a.after73

and.34.else:                                      ; preds = %str.eq.merge61
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %a.after73
  %and.34.phi = phi i1 [ %nottmp86, %a.after73 ], [ %str.neq68, %and.34.else ]
  br i1 %and.34.phi, label %and.35.then, label %and.35.else

a.create72:                                       ; preds = %and.34.then
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 24)
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 128)
  %a.len.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create75, i32 0, i32 0
  store i64 0, ptr %a.len.gep78, align 8
  %a.data.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create75, i32 0, i32 1
  store ptr %a.buf77, ptr %a.data.gep79, align 8
  %a.cap.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create75, i32 0, i32 2
  store i64 16, ptr %a.cap.gep80, align 8
  store ptr %a.create75, ptr %var.locals, align 8
  br label %a.after73

a.after73:                                        ; preds = %a.create72, %and.34.then
  %a.load281 = load ptr, ptr %var.locals, align 8
  %var.load82 = load ptr, ptr %var.c, align 8
  %fld.gep83 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load82, i32 0, i32 0
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %call.res85 = call i1 @"dep_graph::has_name"(ptr %a.load281, ptr %fld.load84)
  %nottmp86 = xor i1 %call.res85, true
  br label %and.34.exit

and.35.then:                                      ; preds = %and.34.exit
  %var.load87 = load ptr, ptr %var.refs, align 8
  %a.load88 = load ptr, ptr %var.refs, align 8
  %a.null89 = icmp eq ptr %a.load88, null
  br i1 %a.null89, label %a.create90, label %a.after91

and.35.else:                                      ; preds = %and.34.exit
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %a.after91
  %and.35.phi = phi i1 [ %nottmp104, %a.after91 ], [ %and.34.phi, %and.35.else ]
  br i1 %and.35.phi, label %choice.then105, label %choice.exit106

a.create90:                                       ; preds = %and.35.then
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  store ptr %a.create93, ptr %var.refs, align 8
  br label %a.after91

a.after91:                                        ; preds = %a.create90, %and.35.then
  %a.load299 = load ptr, ptr %var.refs, align 8
  %var.load100 = load ptr, ptr %var.c, align 8
  %fld.gep101 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %call.res103 = call i1 @"dep_graph::has_name"(ptr %a.load299, ptr %fld.load102)
  %nottmp104 = xor i1 %call.res103, true
  br label %and.35.exit

choice.then105:                                   ; preds = %and.35.exit
  %var.load107 = load ptr, ptr %var.c, align 8
  %fld.gep108 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load107, i32 0, i32 0
  %fld.load109 = load ptr, ptr %fld.gep108, align 8
  %a.load110 = load ptr, ptr %var.refs, align 8
  %a.null111 = icmp eq ptr %a.load110, null
  br i1 %a.null111, label %a.create112, label %a.after113

choice.exit106:                                   ; preds = %a.store124, %and.35.exit
  %var.load138 = load ptr, ptr %var.c, align 8
  %fld.gep139 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load138, i32 0, i32 1
  %fld.load140 = load ptr, ptr %fld.gep139, align 8
  %var.load141 = load ptr, ptr %var.locals, align 8
  %a.load142 = load ptr, ptr %var.locals, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

a.create112:                                      ; preds = %choice.then105
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 128)
  %a.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 0
  store i64 0, ptr %a.len.gep118, align 8
  %a.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 1
  store ptr %a.buf117, ptr %a.data.gep119, align 8
  %a.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 2
  store i64 16, ptr %a.cap.gep120, align 8
  store ptr %a.create115, ptr %var.refs, align 8
  br label %a.after113

a.after113:                                       ; preds = %a.create112, %choice.then105
  %a.load2121 = load ptr, ptr %var.refs, align 8
  br label %a.check122

a.check122:                                       ; preds = %a.after113
  %a.len125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2121, i32 0, i32 0
  %a.len126 = load i64, ptr %a.len125, align 8
  %a.cap127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2121, i32 0, i32 2
  %a.cap128 = load i64, ptr %a.cap127, align 8
  %a.needs.grow129 = icmp eq i64 %a.len126, %a.cap128
  br i1 %a.needs.grow129, label %a.grow123, label %a.store124

a.grow123:                                        ; preds = %a.check122
  call void @dva_array_grow(ptr %a.load2121)
  br label %a.store124

a.store124:                                       ; preds = %a.grow123, %a.check122
  %a.cur.data130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2121, i32 0, i32 1
  %a.cur.data131 = load ptr, ptr %a.cur.data130, align 8
  %a.cur.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2121, i32 0, i32 0
  %a.cur.len133 = load i64, ptr %a.cur.len132, align 8
  %a.elem.gep134 = getelementptr i64, ptr %a.cur.data131, i64 %a.cur.len133
  %slot.p2i135 = ptrtoint ptr %fld.load109 to i64
  store i64 %slot.p2i135, ptr %a.elem.gep134, align 8
  %a.next.len136 = add i64 %a.cur.len133, 1
  %b.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2121, i32 0, i32 0
  store i64 %a.next.len136, ptr %b.len.gep137, align 8
  br label %choice.exit106

a.create144:                                      ; preds = %choice.exit106
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 128)
  %a.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 0
  store i64 0, ptr %a.len.gep150, align 8
  %a.data.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 1
  store ptr %a.buf149, ptr %a.data.gep151, align 8
  %a.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 2
  store i64 16, ptr %a.cap.gep152, align 8
  store ptr %a.create147, ptr %var.locals, align 8
  br label %a.after145

a.after145:                                       ; preds = %a.create144, %choice.exit106
  %a.load2153 = load ptr, ptr %var.locals, align 8
  %var.load154 = load ptr, ptr %var.refs, align 8
  %a.load155 = load ptr, ptr %var.refs, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

a.create157:                                      ; preds = %a.after145
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 128)
  %a.len.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 0
  store i64 0, ptr %a.len.gep163, align 8
  %a.data.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 1
  store ptr %a.buf162, ptr %a.data.gep164, align 8
  %a.cap.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep165, align 8
  store ptr %a.create160, ptr %var.refs, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %a.after145
  %a.load2166 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load140, ptr %a.load2153, ptr %a.load2166)
  %var.load167 = load ptr, ptr %var.c, align 8
  %fld.gep168 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load167, i32 0, i32 2
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load169, i32 0, i32 0
  %arr.cycle.len170 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load169, i32 0, i32 1
  %arr.cycle.data171 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.36, align 8
  %cycle.prev.u = load ptr, ptr %var._51, align 8
  br label %loop.header.36

loop.header.36:                                   ; preds = %loop.latch.36, %a.after158
  %counter.load = load i64, ptr %loop.idx.36, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len170
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.nat.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.36, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data171, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._172, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load173 = load ptr, ptr %var.arg, align 8
  %var.load174 = load ptr, ptr %var.locals, align 8
  %a.load175 = load ptr, ptr %var.locals, align 8
  %a.null176 = icmp eq ptr %a.load175, null
  br i1 %a.null176, label %a.create177, label %a.after178

loop.exit.nat.36:                                 ; preds = %loop.header.36
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %a.after191
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %loop.exit.nat.36
  store ptr %cycle.prev.u, ptr %var._51, align 8
  br label %choice.exit

a.create177:                                      ; preds = %loop.body.36
  %arena.cur179 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 24)
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 128)
  %a.len.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 0
  store i64 0, ptr %a.len.gep183, align 8
  %a.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 1
  store ptr %a.buf182, ptr %a.data.gep184, align 8
  %a.cap.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 2
  store i64 16, ptr %a.cap.gep185, align 8
  store ptr %a.create180, ptr %var.locals, align 8
  br label %a.after178

a.after178:                                       ; preds = %a.create177, %loop.body.36
  %a.load2186 = load ptr, ptr %var.locals, align 8
  %var.load187 = load ptr, ptr %var.refs, align 8
  %a.load188 = load ptr, ptr %var.refs, align 8
  %a.null189 = icmp eq ptr %a.load188, null
  br i1 %a.null189, label %a.create190, label %a.after191

a.create190:                                      ; preds = %a.after178
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 24)
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 128)
  %a.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create193, i32 0, i32 0
  store i64 0, ptr %a.len.gep196, align 8
  %a.data.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create193, i32 0, i32 1
  store ptr %a.buf195, ptr %a.data.gep197, align 8
  %a.cap.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create193, i32 0, i32 2
  store i64 16, ptr %a.cap.gep198, align 8
  store ptr %a.create193, ptr %var.refs, align 8
  br label %a.after191

a.after191:                                       ; preds = %a.create190, %a.after178
  %a.load2199 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load173, ptr %a.load2186, ptr %a.load2199)
  br label %loop.latch.36

choice.case200:                                   ; preds = %choice.next45
  %pay.gep205 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr206 = load ptr, ptr %pay.gep205, align 8
  store ptr %payload.ptr206, ptr %var._207, align 8
  store ptr %payload.ptr206, ptr %var.b, align 8
  %var.load208 = load ptr, ptr %var.b, align 8
  %fld.gep209 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load208, i32 0, i32 1
  %fld.load210 = load ptr, ptr %fld.gep209, align 8
  %var.load211 = load ptr, ptr %var.locals, align 8
  %a.load212 = load ptr, ptr %var.locals, align 8
  %a.null213 = icmp eq ptr %a.load212, null
  br i1 %a.null213, label %a.create214, label %a.after215

choice.next201:                                   ; preds = %choice.next45
  %tag.gep268 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id269 = load i64, ptr %tag.gep268, align 8
  %tag.match270 = icmp eq i64 %tag.id269, 24
  br i1 %tag.match270, label %choice.case266, label %choice.next267

a.create214:                                      ; preds = %choice.case200
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 24)
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 128)
  %a.len.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create217, i32 0, i32 0
  store i64 0, ptr %a.len.gep220, align 8
  %a.data.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create217, i32 0, i32 1
  store ptr %a.buf219, ptr %a.data.gep221, align 8
  %a.cap.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create217, i32 0, i32 2
  store i64 16, ptr %a.cap.gep222, align 8
  store ptr %a.create217, ptr %var.locals, align 8
  br label %a.after215

a.after215:                                       ; preds = %a.create214, %choice.case200
  %a.load2223 = load ptr, ptr %var.locals, align 8
  %var.load224 = load ptr, ptr %var.refs, align 8
  %a.load225 = load ptr, ptr %var.refs, align 8
  %a.null226 = icmp eq ptr %a.load225, null
  br i1 %a.null226, label %a.create227, label %a.after228

a.create227:                                      ; preds = %a.after215
  %arena.cur229 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 24)
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 128)
  %a.len.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 0
  store i64 0, ptr %a.len.gep233, align 8
  %a.data.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 1
  store ptr %a.buf232, ptr %a.data.gep234, align 8
  %a.cap.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep235, align 8
  store ptr %a.create230, ptr %var.refs, align 8
  br label %a.after228

a.after228:                                       ; preds = %a.create227, %a.after215
  %a.load2236 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load210, ptr %a.load2223, ptr %a.load2236)
  %var.load237 = load ptr, ptr %var.b, align 8
  %fld.gep238 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load237, i32 0, i32 2
  %fld.load239 = load ptr, ptr %fld.gep238, align 8
  %var.load240 = load ptr, ptr %var.locals, align 8
  %a.load241 = load ptr, ptr %var.locals, align 8
  %a.null242 = icmp eq ptr %a.load241, null
  br i1 %a.null242, label %a.create243, label %a.after244

a.create243:                                      ; preds = %a.after228
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 24)
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 128)
  %a.len.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create246, i32 0, i32 0
  store i64 0, ptr %a.len.gep249, align 8
  %a.data.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create246, i32 0, i32 1
  store ptr %a.buf248, ptr %a.data.gep250, align 8
  %a.cap.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create246, i32 0, i32 2
  store i64 16, ptr %a.cap.gep251, align 8
  store ptr %a.create246, ptr %var.locals, align 8
  br label %a.after244

a.after244:                                       ; preds = %a.create243, %a.after228
  %a.load2252 = load ptr, ptr %var.locals, align 8
  %var.load253 = load ptr, ptr %var.refs, align 8
  %a.load254 = load ptr, ptr %var.refs, align 8
  %a.null255 = icmp eq ptr %a.load254, null
  br i1 %a.null255, label %a.create256, label %a.after257

a.create256:                                      ; preds = %a.after244
  %arena.cur258 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 24)
  %arena.cur260 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 128)
  %a.len.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create259, i32 0, i32 0
  store i64 0, ptr %a.len.gep262, align 8
  %a.data.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create259, i32 0, i32 1
  store ptr %a.buf261, ptr %a.data.gep263, align 8
  %a.cap.gep264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create259, i32 0, i32 2
  store i64 16, ptr %a.cap.gep264, align 8
  store ptr %a.create259, ptr %var.refs, align 8
  br label %a.after257

a.after257:                                       ; preds = %a.create256, %a.after244
  %a.load2265 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load239, ptr %a.load2252, ptr %a.load2265)
  br label %choice.exit

choice.case266:                                   ; preds = %choice.next201
  %pay.gep271 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr272 = load ptr, ptr %pay.gep271, align 8
  store ptr %payload.ptr272, ptr %var._273, align 8
  store ptr %payload.ptr272, ptr %var.u, align 8
  %var.load274 = load ptr, ptr %var.u, align 8
  %fld.gep275 = getelementptr inbounds { ptr, ptr }, ptr %var.load274, i32 0, i32 1
  %fld.load276 = load ptr, ptr %fld.gep275, align 8
  %var.load277 = load ptr, ptr %var.locals, align 8
  %a.load278 = load ptr, ptr %var.locals, align 8
  %a.null279 = icmp eq ptr %a.load278, null
  br i1 %a.null279, label %a.create280, label %a.after281

choice.next267:                                   ; preds = %choice.next201
  %tag.gep305 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id306 = load i64, ptr %tag.gep305, align 8
  %tag.match307 = icmp eq i64 %tag.id306, 14
  br i1 %tag.match307, label %choice.case303, label %choice.next304

a.create280:                                      ; preds = %choice.case266
  %arena.cur282 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 24)
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 128)
  %a.len.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create283, i32 0, i32 0
  store i64 0, ptr %a.len.gep286, align 8
  %a.data.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create283, i32 0, i32 1
  store ptr %a.buf285, ptr %a.data.gep287, align 8
  %a.cap.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create283, i32 0, i32 2
  store i64 16, ptr %a.cap.gep288, align 8
  store ptr %a.create283, ptr %var.locals, align 8
  br label %a.after281

a.after281:                                       ; preds = %a.create280, %choice.case266
  %a.load2289 = load ptr, ptr %var.locals, align 8
  %var.load290 = load ptr, ptr %var.refs, align 8
  %a.load291 = load ptr, ptr %var.refs, align 8
  %a.null292 = icmp eq ptr %a.load291, null
  br i1 %a.null292, label %a.create293, label %a.after294

a.create293:                                      ; preds = %a.after281
  %arena.cur295 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 24)
  %arena.cur297 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf298 = call ptr @dva_arena_alloc(ptr %arena.cur297, i64 128)
  %a.len.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 0
  store i64 0, ptr %a.len.gep299, align 8
  %a.data.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 1
  store ptr %a.buf298, ptr %a.data.gep300, align 8
  %a.cap.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 2
  store i64 16, ptr %a.cap.gep301, align 8
  store ptr %a.create296, ptr %var.refs, align 8
  br label %a.after294

a.after294:                                       ; preds = %a.create293, %a.after281
  %a.load2302 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load276, ptr %a.load2289, ptr %a.load2302)
  br label %choice.exit

choice.case303:                                   ; preds = %choice.next267
  %pay.gep308 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr309 = load ptr, ptr %pay.gep308, align 8
  store ptr %payload.ptr309, ptr %var._310, align 8
  store ptr %payload.ptr309, ptr %var.fe, align 8
  %var.load311 = load ptr, ptr %var.locals, align 8
  %a.load312 = load ptr, ptr %var.locals, align 8
  %a.null313 = icmp eq ptr %a.load312, null
  br i1 %a.null313, label %a.create314, label %a.after315

choice.next304:                                   ; preds = %choice.next267
  %tag.gep422 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id423 = load i64, ptr %tag.gep422, align 8
  %tag.match424 = icmp eq i64 %tag.id423, 8
  br i1 %tag.match424, label %choice.case420, label %choice.next421

a.create314:                                      ; preds = %choice.case303
  %arena.cur316 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 24)
  %arena.cur318 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 128)
  %a.len.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create317, i32 0, i32 0
  store i64 0, ptr %a.len.gep320, align 8
  %a.data.gep321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create317, i32 0, i32 1
  store ptr %a.buf319, ptr %a.data.gep321, align 8
  %a.cap.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create317, i32 0, i32 2
  store i64 16, ptr %a.cap.gep322, align 8
  store ptr %a.create317, ptr %var.locals, align 8
  br label %a.after315

a.after315:                                       ; preds = %a.create314, %choice.case303
  %a.load2323 = load ptr, ptr %var.locals, align 8
  %call.res324 = call ptr @"dep_graph::copy_names"(ptr %a.load2323)
  store ptr %call.res324, ptr %var.fn_locals, align 8
  %var.load325 = load ptr, ptr %var.fe, align 8
  %fld.gep326 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load325, i32 0, i32 0
  %fld.load327 = load ptr, ptr %fld.gep326, align 8
  %arr.cycle.len328 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load327, i32 0, i32 0
  %arr.cycle.len329 = load i64, ptr %arr.cycle.len328, align 8
  %arr.cycle.data330 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load327, i32 0, i32 1
  %arr.cycle.data331 = load ptr, ptr %arr.cycle.data330, align 8
  store i64 0, ptr %loop.idx.37, align 8
  %cycle.prev.u332 = load ptr, ptr %var._310, align 8
  br label %loop.header.37

loop.header.37:                                   ; preds = %loop.latch.37, %a.after315
  %counter.load333 = load i64, ptr %loop.idx.37, align 8
  %loop.cond334 = icmp slt i64 %counter.load333, %arr.cycle.len329
  br i1 %loop.cond334, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i335 = sub i64 %counter.load333, 0
  store i64 1, ptr %loop.step.37, align 8
  %arr.elem.gep336 = getelementptr i64, ptr %arr.cycle.data331, i64 %counter.load333
  %arr.elem.raw337 = load i64, ptr %arr.elem.gep336, align 8
  %slot.i2p338 = inttoptr i64 %arr.elem.raw337 to ptr
  store i64 %loop.rel.i335, ptr %var._i339, align 8
  store ptr %slot.i2p338, ptr %var._340, align 8
  store ptr %slot.i2p338, ptr %var.p, align 8
  %var.load341 = load ptr, ptr %var.p, align 8
  %eq.lhs.len342 = getelementptr inbounds { i64, ptr }, ptr %var.load341, i32 0, i32 0
  %eq.lhs.len343 = load i64, ptr %eq.lhs.len342, align 8
  %eq.lhs.len344 = and i64 %eq.lhs.len343, 281474976710655
  %eq.rhs.len345 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len346 = and i64 %eq.rhs.len345, 281474976710655
  %eq.len347 = icmp eq i64 %eq.lhs.len344, %eq.rhs.len346
  br i1 %eq.len347, label %str.eq.then348, label %str.eq.else349

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %choice.exit359
  %step.val389 = load i64, ptr %loop.step.37, align 8
  %loop.next390 = add i64 %counter.load333, %step.val389
  store i64 %loop.next390, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  store ptr %cycle.prev.u332, ptr %var._310, align 8
  %var.load391 = load ptr, ptr %var.fe, align 8
  %fld.gep392 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load391, i32 0, i32 2
  %fld.load393 = load ptr, ptr %fld.gep392, align 8
  %var.load394 = load ptr, ptr %var.fn_locals, align 8
  %a.load395 = load ptr, ptr %var.fn_locals, align 8
  %a.null396 = icmp eq ptr %a.load395, null
  br i1 %a.null396, label %a.create397, label %a.after398

str.eq.then348:                                   ; preds = %loop.body.37
  %eq.lhs.data351 = getelementptr inbounds { i64, ptr }, ptr %var.load341, i32 0, i32 1
  %eq.lhs.data352 = load ptr, ptr %eq.lhs.data351, align 8
  %eq.rhs.data353 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp354 = call i32 @memcmp(ptr %eq.lhs.data352, ptr %eq.rhs.data353, i64 %eq.lhs.len344)
  %eq.cmp.zero355 = icmp eq i32 %eq.memcmp354, 0
  br label %str.eq.merge350

str.eq.else349:                                   ; preds = %loop.body.37
  br label %str.eq.merge350

str.eq.merge350:                                  ; preds = %str.eq.else349, %str.eq.then348
  %str.eq.result356 = phi i1 [ %eq.cmp.zero355, %str.eq.then348 ], [ false, %str.eq.else349 ]
  %str.neq357 = xor i1 %str.eq.result356, true
  br i1 %str.neq357, label %choice.then358, label %choice.exit359

choice.then358:                                   ; preds = %str.eq.merge350
  %var.load360 = load ptr, ptr %var.p, align 8
  %a.load361 = load ptr, ptr %var.fn_locals, align 8
  %a.null362 = icmp eq ptr %a.load361, null
  br i1 %a.null362, label %a.create363, label %a.after364

choice.exit359:                                   ; preds = %a.store375, %str.eq.merge350
  br label %loop.latch.37

a.create363:                                      ; preds = %choice.then358
  %arena.cur365 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 24)
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 128)
  %a.len.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create366, i32 0, i32 0
  store i64 0, ptr %a.len.gep369, align 8
  %a.data.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create366, i32 0, i32 1
  store ptr %a.buf368, ptr %a.data.gep370, align 8
  %a.cap.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create366, i32 0, i32 2
  store i64 16, ptr %a.cap.gep371, align 8
  store ptr %a.create366, ptr %var.fn_locals, align 8
  br label %a.after364

a.after364:                                       ; preds = %a.create363, %choice.then358
  %a.load2372 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check373

a.check373:                                       ; preds = %a.after364
  %a.len376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2372, i32 0, i32 0
  %a.len377 = load i64, ptr %a.len376, align 8
  %a.cap378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2372, i32 0, i32 2
  %a.cap379 = load i64, ptr %a.cap378, align 8
  %a.needs.grow380 = icmp eq i64 %a.len377, %a.cap379
  br i1 %a.needs.grow380, label %a.grow374, label %a.store375

a.grow374:                                        ; preds = %a.check373
  call void @dva_array_grow(ptr %a.load2372)
  br label %a.store375

a.store375:                                       ; preds = %a.grow374, %a.check373
  %a.cur.data381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2372, i32 0, i32 1
  %a.cur.data382 = load ptr, ptr %a.cur.data381, align 8
  %a.cur.len383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2372, i32 0, i32 0
  %a.cur.len384 = load i64, ptr %a.cur.len383, align 8
  %a.elem.gep385 = getelementptr i64, ptr %a.cur.data382, i64 %a.cur.len384
  %slot.p2i386 = ptrtoint ptr %var.load360 to i64
  store i64 %slot.p2i386, ptr %a.elem.gep385, align 8
  %a.next.len387 = add i64 %a.cur.len384, 1
  %b.len.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2372, i32 0, i32 0
  store i64 %a.next.len387, ptr %b.len.gep388, align 8
  br label %choice.exit359

a.create397:                                      ; preds = %loop.exit.37
  %arena.cur399 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create400 = call ptr @dva_arena_alloc(ptr %arena.cur399, i64 24)
  %arena.cur401 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 128)
  %a.len.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 0
  store i64 0, ptr %a.len.gep403, align 8
  %a.data.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 1
  store ptr %a.buf402, ptr %a.data.gep404, align 8
  %a.cap.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 2
  store i64 16, ptr %a.cap.gep405, align 8
  store ptr %a.create400, ptr %var.fn_locals, align 8
  br label %a.after398

a.after398:                                       ; preds = %a.create397, %loop.exit.37
  %a.load2406 = load ptr, ptr %var.fn_locals, align 8
  %var.load407 = load ptr, ptr %var.refs, align 8
  %a.load408 = load ptr, ptr %var.refs, align 8
  %a.null409 = icmp eq ptr %a.load408, null
  br i1 %a.null409, label %a.create410, label %a.after411

a.create410:                                      ; preds = %a.after398
  %arena.cur412 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create413 = call ptr @dva_arena_alloc(ptr %arena.cur412, i64 24)
  %arena.cur414 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 128)
  %a.len.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create413, i32 0, i32 0
  store i64 0, ptr %a.len.gep416, align 8
  %a.data.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create413, i32 0, i32 1
  store ptr %a.buf415, ptr %a.data.gep417, align 8
  %a.cap.gep418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create413, i32 0, i32 2
  store i64 16, ptr %a.cap.gep418, align 8
  store ptr %a.create413, ptr %var.refs, align 8
  br label %a.after411

a.after411:                                       ; preds = %a.create410, %a.after398
  %a.load2419 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load393, ptr %a.load2406, ptr %a.load2419)
  br label %choice.exit

choice.case420:                                   ; preds = %choice.next304
  %pay.gep425 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr426 = load ptr, ptr %pay.gep425, align 8
  store ptr %payload.ptr426, ptr %var._427, align 8
  store ptr %payload.ptr426, ptr %var.be, align 8
  %var.load428 = load ptr, ptr %var.locals, align 8
  %a.load429 = load ptr, ptr %var.locals, align 8
  %a.null430 = icmp eq ptr %a.load429, null
  br i1 %a.null430, label %a.create431, label %a.after432

choice.next421:                                   ; preds = %choice.next304
  %tag.gep590 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id591 = load i64, ptr %tag.gep590, align 8
  %tag.match592 = icmp eq i64 %tag.id591, 7
  br i1 %tag.match592, label %choice.case588, label %choice.next589

a.create431:                                      ; preds = %choice.case420
  %arena.cur433 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create434 = call ptr @dva_arena_alloc(ptr %arena.cur433, i64 24)
  %arena.cur435 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 128)
  %a.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 0
  store i64 0, ptr %a.len.gep437, align 8
  %a.data.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 1
  store ptr %a.buf436, ptr %a.data.gep438, align 8
  %a.cap.gep439 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 2
  store i64 16, ptr %a.cap.gep439, align 8
  store ptr %a.create434, ptr %var.locals, align 8
  br label %a.after432

a.after432:                                       ; preds = %a.create431, %choice.case420
  %a.load2440 = load ptr, ptr %var.locals, align 8
  %call.res441 = call ptr @"dep_graph::copy_names"(ptr %a.load2440)
  store ptr %call.res441, ptr %var.blk_locals, align 8
  %var.load442 = load ptr, ptr %var.be, align 8
  %a.load443 = load ptr, ptr %var.be, align 8
  %a.null444 = icmp eq ptr %a.load443, null
  br i1 %a.null444, label %a.create445, label %a.after446

a.create445:                                      ; preds = %a.after432
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 24)
  %arena.cur449 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 128)
  %a.len.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create448, i32 0, i32 0
  store i64 0, ptr %a.len.gep451, align 8
  %a.data.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create448, i32 0, i32 1
  store ptr %a.buf450, ptr %a.data.gep452, align 8
  %a.cap.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create448, i32 0, i32 2
  store i64 16, ptr %a.cap.gep453, align 8
  store ptr %a.create448, ptr %var.be, align 8
  br label %a.after446

a.after446:                                       ; preds = %a.create445, %a.after432
  %a.load2454 = load ptr, ptr %var.be, align 8
  %arr.cycle.len455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2454, i32 0, i32 0
  %arr.cycle.len456 = load i64, ptr %arr.cycle.len455, align 8
  %arr.cycle.data457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2454, i32 0, i32 1
  %arr.cycle.data458 = load ptr, ptr %arr.cycle.data457, align 8
  store i64 0, ptr %loop.idx.38, align 8
  %cycle.prev.u459 = load ptr, ptr %var._427, align 8
  br label %loop.header.38

loop.header.38:                                   ; preds = %loop.latch.38, %a.after446
  %counter.load460 = load i64, ptr %loop.idx.38, align 8
  %loop.cond461 = icmp slt i64 %counter.load460, %arr.cycle.len456
  br i1 %loop.cond461, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i462 = sub i64 %counter.load460, 0
  store i64 1, ptr %loop.step.38, align 8
  %arr.elem.gep463 = getelementptr i64, ptr %arr.cycle.data458, i64 %counter.load460
  %arr.elem.raw464 = load i64, ptr %arr.elem.gep463, align 8
  %slot.i2p465 = inttoptr i64 %arr.elem.raw464 to ptr
  store i64 %loop.rel.i462, ptr %var._i466, align 8
  store ptr %slot.i2p465, ptr %var._467, align 8
  store ptr %slot.i2p465, ptr %var.st, align 8
  %var.load468 = load ptr, ptr %var.st, align 8
  %tag.gep472 = getelementptr inbounds { i64, ptr }, ptr %var.load468, i32 0, i32 0
  %tag.id473 = load i64, ptr %tag.gep472, align 8
  %tag.match474 = icmp eq i64 %tag.id473, 6
  br i1 %tag.match474, label %choice.case470, label %choice.next471

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit469
  %step.val586 = load i64, ptr %loop.step.38, align 8
  %loop.next587 = add i64 %counter.load460, %step.val586
  store i64 %loop.next587, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %loop.exit.nat.38
  store ptr %cycle.prev.u459, ptr %var._427, align 8
  br label %choice.exit

choice.exit469:                                   ; preds = %a.after577, %choice.exit527
  br label %loop.latch.38

choice.case470:                                   ; preds = %loop.body.38
  %pay.gep475 = getelementptr inbounds { i64, ptr }, ptr %var.load468, i32 0, i32 1
  %payload.ptr476 = load ptr, ptr %pay.gep475, align 8
  store ptr %payload.ptr476, ptr %var._477, align 8
  store ptr %payload.ptr476, ptr %var.a, align 8
  %var.load478 = load ptr, ptr %var.a, align 8
  %fld.gep479 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load478, i32 0, i32 5
  %fld.load480 = load ptr, ptr %fld.gep479, align 8
  %var.load481 = load ptr, ptr %var.blk_locals, align 8
  %a.load482 = load ptr, ptr %var.blk_locals, align 8
  %a.null483 = icmp eq ptr %a.load482, null
  br i1 %a.null483, label %a.create484, label %a.after485

choice.next471:                                   ; preds = %loop.body.38
  %var.load559 = load ptr, ptr %var.st, align 8
  %var.load560 = load ptr, ptr %var.blk_locals, align 8
  %a.load561 = load ptr, ptr %var.blk_locals, align 8
  %a.null562 = icmp eq ptr %a.load561, null
  br i1 %a.null562, label %a.create563, label %a.after564

a.create484:                                      ; preds = %choice.case470
  %arena.cur486 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 24)
  %arena.cur488 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 128)
  %a.len.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 0
  store i64 0, ptr %a.len.gep490, align 8
  %a.data.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 1
  store ptr %a.buf489, ptr %a.data.gep491, align 8
  %a.cap.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 2
  store i64 16, ptr %a.cap.gep492, align 8
  store ptr %a.create487, ptr %var.blk_locals, align 8
  br label %a.after485

a.after485:                                       ; preds = %a.create484, %choice.case470
  %a.load2493 = load ptr, ptr %var.blk_locals, align 8
  %var.load494 = load ptr, ptr %var.refs, align 8
  %a.load495 = load ptr, ptr %var.refs, align 8
  %a.null496 = icmp eq ptr %a.load495, null
  br i1 %a.null496, label %a.create497, label %a.after498

a.create497:                                      ; preds = %a.after485
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 24)
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 128)
  %a.len.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 0
  store i64 0, ptr %a.len.gep503, align 8
  %a.data.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 1
  store ptr %a.buf502, ptr %a.data.gep504, align 8
  %a.cap.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 2
  store i64 16, ptr %a.cap.gep505, align 8
  store ptr %a.create500, ptr %var.refs, align 8
  br label %a.after498

a.after498:                                       ; preds = %a.create497, %a.after485
  %a.load2506 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load480, ptr %a.load2493, ptr %a.load2506)
  %var.load507 = load ptr, ptr %var.a, align 8
  %fld.gep508 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load507, i32 0, i32 0
  %fld.load509 = load ptr, ptr %fld.gep508, align 8
  %eq.lhs.len510 = getelementptr inbounds { i64, ptr }, ptr %fld.load509, i32 0, i32 0
  %eq.lhs.len511 = load i64, ptr %eq.lhs.len510, align 8
  %eq.lhs.len512 = and i64 %eq.lhs.len511, 281474976710655
  %eq.rhs.len513 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len514 = and i64 %eq.rhs.len513, 281474976710655
  %eq.len515 = icmp eq i64 %eq.lhs.len512, %eq.rhs.len514
  br i1 %eq.len515, label %str.eq.then516, label %str.eq.else517

str.eq.then516:                                   ; preds = %a.after498
  %eq.lhs.data519 = getelementptr inbounds { i64, ptr }, ptr %fld.load509, i32 0, i32 1
  %eq.lhs.data520 = load ptr, ptr %eq.lhs.data519, align 8
  %eq.rhs.data521 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp522 = call i32 @memcmp(ptr %eq.lhs.data520, ptr %eq.rhs.data521, i64 %eq.lhs.len512)
  %eq.cmp.zero523 = icmp eq i32 %eq.memcmp522, 0
  br label %str.eq.merge518

str.eq.else517:                                   ; preds = %a.after498
  br label %str.eq.merge518

str.eq.merge518:                                  ; preds = %str.eq.else517, %str.eq.then516
  %str.eq.result524 = phi i1 [ %eq.cmp.zero523, %str.eq.then516 ], [ false, %str.eq.else517 ]
  %str.neq525 = xor i1 %str.eq.result524, true
  br i1 %str.neq525, label %choice.then526, label %choice.exit527

choice.then526:                                   ; preds = %str.eq.merge518
  %var.load528 = load ptr, ptr %var.a, align 8
  %fld.gep529 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load528, i32 0, i32 0
  %fld.load530 = load ptr, ptr %fld.gep529, align 8
  %a.load531 = load ptr, ptr %var.blk_locals, align 8
  %a.null532 = icmp eq ptr %a.load531, null
  br i1 %a.null532, label %a.create533, label %a.after534

choice.exit527:                                   ; preds = %a.store545, %str.eq.merge518
  br label %choice.exit469

a.create533:                                      ; preds = %choice.then526
  %arena.cur535 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create536 = call ptr @dva_arena_alloc(ptr %arena.cur535, i64 24)
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 128)
  %a.len.gep539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create536, i32 0, i32 0
  store i64 0, ptr %a.len.gep539, align 8
  %a.data.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create536, i32 0, i32 1
  store ptr %a.buf538, ptr %a.data.gep540, align 8
  %a.cap.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create536, i32 0, i32 2
  store i64 16, ptr %a.cap.gep541, align 8
  store ptr %a.create536, ptr %var.blk_locals, align 8
  br label %a.after534

a.after534:                                       ; preds = %a.create533, %choice.then526
  %a.load2542 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check543

a.check543:                                       ; preds = %a.after534
  %a.len546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2542, i32 0, i32 0
  %a.len547 = load i64, ptr %a.len546, align 8
  %a.cap548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2542, i32 0, i32 2
  %a.cap549 = load i64, ptr %a.cap548, align 8
  %a.needs.grow550 = icmp eq i64 %a.len547, %a.cap549
  br i1 %a.needs.grow550, label %a.grow544, label %a.store545

a.grow544:                                        ; preds = %a.check543
  call void @dva_array_grow(ptr %a.load2542)
  br label %a.store545

a.store545:                                       ; preds = %a.grow544, %a.check543
  %a.cur.data551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2542, i32 0, i32 1
  %a.cur.data552 = load ptr, ptr %a.cur.data551, align 8
  %a.cur.len553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2542, i32 0, i32 0
  %a.cur.len554 = load i64, ptr %a.cur.len553, align 8
  %a.elem.gep555 = getelementptr i64, ptr %a.cur.data552, i64 %a.cur.len554
  %slot.p2i556 = ptrtoint ptr %fld.load530 to i64
  store i64 %slot.p2i556, ptr %a.elem.gep555, align 8
  %a.next.len557 = add i64 %a.cur.len554, 1
  %b.len.gep558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2542, i32 0, i32 0
  store i64 %a.next.len557, ptr %b.len.gep558, align 8
  br label %choice.exit527

a.create563:                                      ; preds = %choice.next471
  %arena.cur565 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 24)
  %arena.cur567 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf568 = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 128)
  %a.len.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 0
  store i64 0, ptr %a.len.gep569, align 8
  %a.data.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 1
  store ptr %a.buf568, ptr %a.data.gep570, align 8
  %a.cap.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 2
  store i64 16, ptr %a.cap.gep571, align 8
  store ptr %a.create566, ptr %var.blk_locals, align 8
  br label %a.after564

a.after564:                                       ; preds = %a.create563, %choice.next471
  %a.load2572 = load ptr, ptr %var.blk_locals, align 8
  %var.load573 = load ptr, ptr %var.refs, align 8
  %a.load574 = load ptr, ptr %var.refs, align 8
  %a.null575 = icmp eq ptr %a.load574, null
  br i1 %a.null575, label %a.create576, label %a.after577

a.create576:                                      ; preds = %a.after564
  %arena.cur578 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create579 = call ptr @dva_arena_alloc(ptr %arena.cur578, i64 24)
  %arena.cur580 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf581 = call ptr @dva_arena_alloc(ptr %arena.cur580, i64 128)
  %a.len.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 0
  store i64 0, ptr %a.len.gep582, align 8
  %a.data.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 1
  store ptr %a.buf581, ptr %a.data.gep583, align 8
  %a.cap.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 2
  store i64 16, ptr %a.cap.gep584, align 8
  store ptr %a.create579, ptr %var.refs, align 8
  br label %a.after577

a.after577:                                       ; preds = %a.create576, %a.after564
  %a.load2585 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load559, ptr %a.load2572, ptr %a.load2585)
  br label %choice.exit469

choice.case588:                                   ; preds = %choice.next421
  %pay.gep593 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr594 = load ptr, ptr %pay.gep593, align 8
  store ptr %payload.ptr594, ptr %var._595, align 8
  store ptr %payload.ptr594, ptr %var.ch, align 8
  %var.load596 = load ptr, ptr %var.ch, align 8
  %fld.gep597 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load596, i32 0, i32 0
  %fld.load598 = load ptr, ptr %fld.gep597, align 8
  %var.load599 = load ptr, ptr %var.locals, align 8
  %a.load600 = load ptr, ptr %var.locals, align 8
  %a.null601 = icmp eq ptr %a.load600, null
  br i1 %a.null601, label %a.create602, label %a.after603

choice.next589:                                   ; preds = %choice.next421
  %tag.gep928 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id929 = load i64, ptr %tag.gep928, align 8
  %tag.match930 = icmp eq i64 %tag.id929, 15
  br i1 %tag.match930, label %choice.case926, label %choice.next927

a.create602:                                      ; preds = %choice.case588
  %arena.cur604 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create605 = call ptr @dva_arena_alloc(ptr %arena.cur604, i64 24)
  %arena.cur606 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 128)
  %a.len.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 0
  store i64 0, ptr %a.len.gep608, align 8
  %a.data.gep609 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 1
  store ptr %a.buf607, ptr %a.data.gep609, align 8
  %a.cap.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 2
  store i64 16, ptr %a.cap.gep610, align 8
  store ptr %a.create605, ptr %var.locals, align 8
  br label %a.after603

a.after603:                                       ; preds = %a.create602, %choice.case588
  %a.load2611 = load ptr, ptr %var.locals, align 8
  %var.load612 = load ptr, ptr %var.refs, align 8
  %a.load613 = load ptr, ptr %var.refs, align 8
  %a.null614 = icmp eq ptr %a.load613, null
  br i1 %a.null614, label %a.create615, label %a.after616

a.create615:                                      ; preds = %a.after603
  %arena.cur617 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 24)
  %arena.cur619 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 128)
  %a.len.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create618, i32 0, i32 0
  store i64 0, ptr %a.len.gep621, align 8
  %a.data.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create618, i32 0, i32 1
  store ptr %a.buf620, ptr %a.data.gep622, align 8
  %a.cap.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create618, i32 0, i32 2
  store i64 16, ptr %a.cap.gep623, align 8
  store ptr %a.create618, ptr %var.refs, align 8
  br label %a.after616

a.after616:                                       ; preds = %a.create615, %a.after603
  %a.load2624 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load598, ptr %a.load2611, ptr %a.load2624)
  %var.load625 = load ptr, ptr %var.ch, align 8
  %fld.gep626 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load625, i32 0, i32 2
  %fld.load627 = load ptr, ptr %fld.gep626, align 8
  %arr.cycle.len628 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load627, i32 0, i32 0
  %arr.cycle.len629 = load i64, ptr %arr.cycle.len628, align 8
  %arr.cycle.data630 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load627, i32 0, i32 1
  %arr.cycle.data631 = load ptr, ptr %arr.cycle.data630, align 8
  store i64 0, ptr %loop.idx.39, align 8
  %cycle.prev.u632 = load ptr, ptr %var._595, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %a.after616
  %counter.load633 = load i64, ptr %loop.idx.39, align 8
  %loop.cond634 = icmp slt i64 %counter.load633, %arr.cycle.len629
  br i1 %loop.cond634, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i635 = sub i64 %counter.load633, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep636 = getelementptr i64, ptr %arr.cycle.data631, i64 %counter.load633
  %arr.elem.raw637 = load i64, ptr %arr.elem.gep636, align 8
  %slot.i2p638 = inttoptr i64 %arr.elem.raw637 to ptr
  store i64 %loop.rel.i635, ptr %var._i639, align 8
  store ptr %slot.i2p638, ptr %var._640, align 8
  store ptr %slot.i2p638, ptr %var.br, align 8
  %var.load641 = load ptr, ptr %var.locals, align 8
  %a.load642 = load ptr, ptr %var.locals, align 8
  %a.null643 = icmp eq ptr %a.load642, null
  br i1 %a.null643, label %a.create644, label %a.after645

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %loop.exit.42
  %step.val924 = load i64, ptr %loop.step.39, align 8
  %loop.next925 = add i64 %counter.load633, %step.val924
  store i64 %loop.next925, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  store ptr %cycle.prev.u632, ptr %var._595, align 8
  br label %choice.exit

a.create644:                                      ; preds = %loop.body.39
  %arena.cur646 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 24)
  %arena.cur648 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 128)
  %a.len.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 0
  store i64 0, ptr %a.len.gep650, align 8
  %a.data.gep651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 1
  store ptr %a.buf649, ptr %a.data.gep651, align 8
  %a.cap.gep652 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 2
  store i64 16, ptr %a.cap.gep652, align 8
  store ptr %a.create647, ptr %var.locals, align 8
  br label %a.after645

a.after645:                                       ; preds = %a.create644, %loop.body.39
  %a.load2653 = load ptr, ptr %var.locals, align 8
  %call.res654 = call ptr @"dep_graph::copy_names"(ptr %a.load2653)
  store ptr %call.res654, ptr %var.br_locals, align 8
  %var.load655 = load ptr, ptr %var.br, align 8
  %fld.gep656 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load655, i32 0, i32 4
  %fld.load657 = load ptr, ptr %fld.gep656, align 8
  %arr.cycle.len658 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load657, i32 0, i32 0
  %arr.cycle.len659 = load i64, ptr %arr.cycle.len658, align 8
  %arr.cycle.data660 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load657, i32 0, i32 1
  %arr.cycle.data661 = load ptr, ptr %arr.cycle.data660, align 8
  store i64 0, ptr %loop.idx.40, align 8
  %cycle.prev.u662 = load ptr, ptr %var._640, align 8
  %cycle.prev.i = load i64, ptr %var._i639, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after645
  %counter.load663 = load i64, ptr %loop.idx.40, align 8
  %loop.cond664 = icmp slt i64 %counter.load663, %arr.cycle.len659
  br i1 %loop.cond664, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i665 = sub i64 %counter.load663, 0
  store i64 1, ptr %loop.step.40, align 8
  %arr.elem.gep666 = getelementptr i64, ptr %arr.cycle.data661, i64 %counter.load663
  %arr.elem.raw667 = load i64, ptr %arr.elem.gep666, align 8
  %slot.i2p668 = inttoptr i64 %arr.elem.raw667 to ptr
  store i64 %loop.rel.i665, ptr %var._i669, align 8
  store ptr %slot.i2p668, ptr %var._670, align 8
  store ptr %slot.i2p668, ptr %var.bv, align 8
  %var.load671 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len672 = getelementptr inbounds { i64, ptr }, ptr %var.load671, i32 0, i32 0
  %eq.lhs.len673 = load i64, ptr %eq.lhs.len672, align 8
  %eq.lhs.len674 = and i64 %eq.lhs.len673, 281474976710655
  %eq.rhs.len675 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len676 = and i64 %eq.rhs.len675, 281474976710655
  %eq.len677 = icmp eq i64 %eq.lhs.len674, %eq.rhs.len676
  br i1 %eq.len677, label %str.eq.then678, label %str.eq.else679

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit689
  %step.val719 = load i64, ptr %loop.step.40, align 8
  %loop.next720 = add i64 %counter.load663, %step.val719
  store i64 %loop.next720, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  store ptr %cycle.prev.u662, ptr %var._640, align 8
  store i64 %cycle.prev.i, ptr %var._i639, align 8
  %var.load721 = load ptr, ptr %var.br, align 8
  %fld.gep722 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load721, i32 0, i32 6
  %fld.load723 = load ptr, ptr %fld.gep722, align 8
  %var.load724 = load ptr, ptr %var.br_locals, align 8
  %a.load725 = load ptr, ptr %var.br_locals, align 8
  %a.null726 = icmp eq ptr %a.load725, null
  br i1 %a.null726, label %a.create727, label %a.after728

str.eq.then678:                                   ; preds = %loop.body.40
  %eq.lhs.data681 = getelementptr inbounds { i64, ptr }, ptr %var.load671, i32 0, i32 1
  %eq.lhs.data682 = load ptr, ptr %eq.lhs.data681, align 8
  %eq.rhs.data683 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp684 = call i32 @memcmp(ptr %eq.lhs.data682, ptr %eq.rhs.data683, i64 %eq.lhs.len674)
  %eq.cmp.zero685 = icmp eq i32 %eq.memcmp684, 0
  br label %str.eq.merge680

str.eq.else679:                                   ; preds = %loop.body.40
  br label %str.eq.merge680

str.eq.merge680:                                  ; preds = %str.eq.else679, %str.eq.then678
  %str.eq.result686 = phi i1 [ %eq.cmp.zero685, %str.eq.then678 ], [ false, %str.eq.else679 ]
  %str.neq687 = xor i1 %str.eq.result686, true
  br i1 %str.neq687, label %choice.then688, label %choice.exit689

choice.then688:                                   ; preds = %str.eq.merge680
  %var.load690 = load ptr, ptr %var.bv, align 8
  %a.load691 = load ptr, ptr %var.br_locals, align 8
  %a.null692 = icmp eq ptr %a.load691, null
  br i1 %a.null692, label %a.create693, label %a.after694

choice.exit689:                                   ; preds = %a.store705, %str.eq.merge680
  br label %loop.latch.40

a.create693:                                      ; preds = %choice.then688
  %arena.cur695 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create696 = call ptr @dva_arena_alloc(ptr %arena.cur695, i64 24)
  %arena.cur697 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf698 = call ptr @dva_arena_alloc(ptr %arena.cur697, i64 128)
  %a.len.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 0
  store i64 0, ptr %a.len.gep699, align 8
  %a.data.gep700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 1
  store ptr %a.buf698, ptr %a.data.gep700, align 8
  %a.cap.gep701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 2
  store i64 16, ptr %a.cap.gep701, align 8
  store ptr %a.create696, ptr %var.br_locals, align 8
  br label %a.after694

a.after694:                                       ; preds = %a.create693, %choice.then688
  %a.load2702 = load ptr, ptr %var.br_locals, align 8
  br label %a.check703

a.check703:                                       ; preds = %a.after694
  %a.len706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2702, i32 0, i32 0
  %a.len707 = load i64, ptr %a.len706, align 8
  %a.cap708 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2702, i32 0, i32 2
  %a.cap709 = load i64, ptr %a.cap708, align 8
  %a.needs.grow710 = icmp eq i64 %a.len707, %a.cap709
  br i1 %a.needs.grow710, label %a.grow704, label %a.store705

a.grow704:                                        ; preds = %a.check703
  call void @dva_array_grow(ptr %a.load2702)
  br label %a.store705

a.store705:                                       ; preds = %a.grow704, %a.check703
  %a.cur.data711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2702, i32 0, i32 1
  %a.cur.data712 = load ptr, ptr %a.cur.data711, align 8
  %a.cur.len713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2702, i32 0, i32 0
  %a.cur.len714 = load i64, ptr %a.cur.len713, align 8
  %a.elem.gep715 = getelementptr i64, ptr %a.cur.data712, i64 %a.cur.len714
  %slot.p2i716 = ptrtoint ptr %var.load690 to i64
  store i64 %slot.p2i716, ptr %a.elem.gep715, align 8
  %a.next.len717 = add i64 %a.cur.len714, 1
  %b.len.gep718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2702, i32 0, i32 0
  store i64 %a.next.len717, ptr %b.len.gep718, align 8
  br label %choice.exit689

a.create727:                                      ; preds = %loop.exit.40
  %arena.cur729 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 24)
  %arena.cur731 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 128)
  %a.len.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 0
  store i64 0, ptr %a.len.gep733, align 8
  %a.data.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 1
  store ptr %a.buf732, ptr %a.data.gep734, align 8
  %a.cap.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 2
  store i64 16, ptr %a.cap.gep735, align 8
  store ptr %a.create730, ptr %var.br_locals, align 8
  br label %a.after728

a.after728:                                       ; preds = %a.create727, %loop.exit.40
  %a.load2736 = load ptr, ptr %var.br_locals, align 8
  %var.load737 = load ptr, ptr %var.refs, align 8
  %a.load738 = load ptr, ptr %var.refs, align 8
  %a.null739 = icmp eq ptr %a.load738, null
  br i1 %a.null739, label %a.create740, label %a.after741

a.create740:                                      ; preds = %a.after728
  %arena.cur742 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create743 = call ptr @dva_arena_alloc(ptr %arena.cur742, i64 24)
  %arena.cur744 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf745 = call ptr @dva_arena_alloc(ptr %arena.cur744, i64 128)
  %a.len.gep746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create743, i32 0, i32 0
  store i64 0, ptr %a.len.gep746, align 8
  %a.data.gep747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create743, i32 0, i32 1
  store ptr %a.buf745, ptr %a.data.gep747, align 8
  %a.cap.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create743, i32 0, i32 2
  store i64 16, ptr %a.cap.gep748, align 8
  store ptr %a.create743, ptr %var.refs, align 8
  br label %a.after741

a.after741:                                       ; preds = %a.create740, %a.after728
  %a.load2749 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load723, ptr %a.load2736, ptr %a.load2749)
  %var.load750 = load ptr, ptr %var.br, align 8
  %fld.gep751 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load750, i32 0, i32 2
  %fld.load752 = load ptr, ptr %fld.gep751, align 8
  %var.load753 = load ptr, ptr %var.br_locals, align 8
  %a.load754 = load ptr, ptr %var.br_locals, align 8
  %a.null755 = icmp eq ptr %a.load754, null
  br i1 %a.null755, label %a.create756, label %a.after757

a.create756:                                      ; preds = %a.after741
  %arena.cur758 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create759 = call ptr @dva_arena_alloc(ptr %arena.cur758, i64 24)
  %arena.cur760 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf761 = call ptr @dva_arena_alloc(ptr %arena.cur760, i64 128)
  %a.len.gep762 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create759, i32 0, i32 0
  store i64 0, ptr %a.len.gep762, align 8
  %a.data.gep763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create759, i32 0, i32 1
  store ptr %a.buf761, ptr %a.data.gep763, align 8
  %a.cap.gep764 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create759, i32 0, i32 2
  store i64 16, ptr %a.cap.gep764, align 8
  store ptr %a.create759, ptr %var.br_locals, align 8
  br label %a.after757

a.after757:                                       ; preds = %a.create756, %a.after741
  %a.load2765 = load ptr, ptr %var.br_locals, align 8
  %var.load766 = load ptr, ptr %var.refs, align 8
  %a.load767 = load ptr, ptr %var.refs, align 8
  %a.null768 = icmp eq ptr %a.load767, null
  br i1 %a.null768, label %a.create769, label %a.after770

a.create769:                                      ; preds = %a.after757
  %arena.cur771 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create772 = call ptr @dva_arena_alloc(ptr %arena.cur771, i64 24)
  %arena.cur773 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf774 = call ptr @dva_arena_alloc(ptr %arena.cur773, i64 128)
  %a.len.gep775 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create772, i32 0, i32 0
  store i64 0, ptr %a.len.gep775, align 8
  %a.data.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create772, i32 0, i32 1
  store ptr %a.buf774, ptr %a.data.gep776, align 8
  %a.cap.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create772, i32 0, i32 2
  store i64 16, ptr %a.cap.gep777, align 8
  store ptr %a.create772, ptr %var.refs, align 8
  br label %a.after770

a.after770:                                       ; preds = %a.create769, %a.after757
  %a.load2778 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load752, ptr %a.load2765, ptr %a.load2778)
  %var.load779 = load ptr, ptr %var.br, align 8
  %fld.gep780 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load779, i32 0, i32 1
  %fld.load781 = load ptr, ptr %fld.gep780, align 8
  %arr.cycle.len782 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load781, i32 0, i32 0
  %arr.cycle.len783 = load i64, ptr %arr.cycle.len782, align 8
  %arr.cycle.data784 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load781, i32 0, i32 1
  %arr.cycle.data785 = load ptr, ptr %arr.cycle.data784, align 8
  store i64 0, ptr %loop.idx.41, align 8
  %cycle.prev.u786 = load ptr, ptr %var._640, align 8
  %cycle.prev.i787 = load i64, ptr %var._i639, align 8
  br label %loop.header.41

loop.header.41:                                   ; preds = %loop.latch.41, %a.after770
  %counter.load788 = load i64, ptr %loop.idx.41, align 8
  %loop.cond789 = icmp slt i64 %counter.load788, %arr.cycle.len783
  br i1 %loop.cond789, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i790 = sub i64 %counter.load788, 0
  store i64 1, ptr %loop.step.41, align 8
  %arr.elem.gep791 = getelementptr i64, ptr %arr.cycle.data785, i64 %counter.load788
  %arr.elem.raw792 = load i64, ptr %arr.elem.gep791, align 8
  %slot.i2p793 = inttoptr i64 %arr.elem.raw792 to ptr
  store i64 %loop.rel.i790, ptr %var._i794, align 8
  store ptr %slot.i2p793, ptr %var._795, align 8
  store ptr %slot.i2p793, ptr %var.cv, align 8
  %var.load796 = load ptr, ptr %var.cv, align 8
  %var.load797 = load ptr, ptr %var.br_locals, align 8
  %a.load798 = load ptr, ptr %var.br_locals, align 8
  %a.null799 = icmp eq ptr %a.load798, null
  br i1 %a.null799, label %a.create800, label %a.after801

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %a.after814
  %step.val823 = load i64, ptr %loop.step.41, align 8
  %loop.next824 = add i64 %counter.load788, %step.val823
  store i64 %loop.next824, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  store ptr %cycle.prev.u786, ptr %var._640, align 8
  store i64 %cycle.prev.i787, ptr %var._i639, align 8
  %var.load825 = load ptr, ptr %var.br, align 8
  %fld.gep826 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load825, i32 0, i32 3
  %fld.load827 = load ptr, ptr %fld.gep826, align 8
  %arr.cycle.len828 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load827, i32 0, i32 0
  %arr.cycle.len829 = load i64, ptr %arr.cycle.len828, align 8
  %arr.cycle.data830 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load827, i32 0, i32 1
  %arr.cycle.data831 = load ptr, ptr %arr.cycle.data830, align 8
  store i64 0, ptr %loop.idx.42, align 8
  %cycle.prev.u832 = load ptr, ptr %var._640, align 8
  %cycle.prev.i833 = load i64, ptr %var._i639, align 8
  br label %loop.header.42

a.create800:                                      ; preds = %loop.body.41
  %arena.cur802 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create803 = call ptr @dva_arena_alloc(ptr %arena.cur802, i64 24)
  %arena.cur804 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf805 = call ptr @dva_arena_alloc(ptr %arena.cur804, i64 128)
  %a.len.gep806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create803, i32 0, i32 0
  store i64 0, ptr %a.len.gep806, align 8
  %a.data.gep807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create803, i32 0, i32 1
  store ptr %a.buf805, ptr %a.data.gep807, align 8
  %a.cap.gep808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create803, i32 0, i32 2
  store i64 16, ptr %a.cap.gep808, align 8
  store ptr %a.create803, ptr %var.br_locals, align 8
  br label %a.after801

a.after801:                                       ; preds = %a.create800, %loop.body.41
  %a.load2809 = load ptr, ptr %var.br_locals, align 8
  %var.load810 = load ptr, ptr %var.refs, align 8
  %a.load811 = load ptr, ptr %var.refs, align 8
  %a.null812 = icmp eq ptr %a.load811, null
  br i1 %a.null812, label %a.create813, label %a.after814

a.create813:                                      ; preds = %a.after801
  %arena.cur815 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create816 = call ptr @dva_arena_alloc(ptr %arena.cur815, i64 24)
  %arena.cur817 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 128)
  %a.len.gep819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create816, i32 0, i32 0
  store i64 0, ptr %a.len.gep819, align 8
  %a.data.gep820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create816, i32 0, i32 1
  store ptr %a.buf818, ptr %a.data.gep820, align 8
  %a.cap.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create816, i32 0, i32 2
  store i64 16, ptr %a.cap.gep821, align 8
  store ptr %a.create816, ptr %var.refs, align 8
  br label %a.after814

a.after814:                                       ; preds = %a.create813, %a.after801
  %a.load2822 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load796, ptr %a.load2809, ptr %a.load2822)
  br label %loop.latch.41

loop.header.42:                                   ; preds = %loop.latch.42, %loop.exit.41
  %counter.load834 = load i64, ptr %loop.idx.42, align 8
  %loop.cond835 = icmp slt i64 %counter.load834, %arr.cycle.len829
  br i1 %loop.cond835, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i836 = sub i64 %counter.load834, 0
  store i64 1, ptr %loop.step.42, align 8
  %arr.elem.gep837 = getelementptr i64, ptr %arr.cycle.data831, i64 %counter.load834
  %arr.elem.raw838 = load i64, ptr %arr.elem.gep837, align 8
  %slot.i2p839 = inttoptr i64 %arr.elem.raw838 to ptr
  store i64 %loop.rel.i836, ptr %var._i840, align 8
  store ptr %slot.i2p839, ptr %var._841, align 8
  store ptr %slot.i2p839, ptr %var.vn, align 8
  %var.load842 = load ptr, ptr %var.vn, align 8
  %eq.lhs.len843 = getelementptr inbounds { i64, ptr }, ptr %var.load842, i32 0, i32 0
  %eq.lhs.len844 = load i64, ptr %eq.lhs.len843, align 8
  %eq.lhs.len845 = and i64 %eq.lhs.len844, 281474976710655
  %eq.rhs.len846 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len847 = and i64 %eq.rhs.len846, 281474976710655
  %eq.len848 = icmp eq i64 %eq.lhs.len845, %eq.rhs.len847
  br i1 %eq.len848, label %str.eq.then849, label %str.eq.else850

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit892
  %step.val922 = load i64, ptr %loop.step.42, align 8
  %loop.next923 = add i64 %counter.load834, %step.val922
  store i64 %loop.next923, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  store ptr %cycle.prev.u832, ptr %var._640, align 8
  store i64 %cycle.prev.i833, ptr %var._i639, align 8
  br label %loop.latch.39

str.eq.then849:                                   ; preds = %loop.body.42
  %eq.lhs.data852 = getelementptr inbounds { i64, ptr }, ptr %var.load842, i32 0, i32 1
  %eq.lhs.data853 = load ptr, ptr %eq.lhs.data852, align 8
  %eq.rhs.data854 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp855 = call i32 @memcmp(ptr %eq.lhs.data853, ptr %eq.rhs.data854, i64 %eq.lhs.len845)
  %eq.cmp.zero856 = icmp eq i32 %eq.memcmp855, 0
  br label %str.eq.merge851

str.eq.else850:                                   ; preds = %loop.body.42
  br label %str.eq.merge851

str.eq.merge851:                                  ; preds = %str.eq.else850, %str.eq.then849
  %str.eq.result857 = phi i1 [ %eq.cmp.zero856, %str.eq.then849 ], [ false, %str.eq.else850 ]
  %str.neq858 = xor i1 %str.eq.result857, true
  br i1 %str.neq858, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %str.eq.merge851
  %var.load859 = load ptr, ptr %var.br_locals, align 8
  %a.load860 = load ptr, ptr %var.br_locals, align 8
  %a.null861 = icmp eq ptr %a.load860, null
  br i1 %a.null861, label %a.create862, label %a.after863

and.43.else:                                      ; preds = %str.eq.merge851
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %a.after863
  %and.43.phi = phi i1 [ %nottmp874, %a.after863 ], [ %str.neq858, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

a.create862:                                      ; preds = %and.43.then
  %arena.cur864 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create865 = call ptr @dva_arena_alloc(ptr %arena.cur864, i64 24)
  %arena.cur866 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf867 = call ptr @dva_arena_alloc(ptr %arena.cur866, i64 128)
  %a.len.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create865, i32 0, i32 0
  store i64 0, ptr %a.len.gep868, align 8
  %a.data.gep869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create865, i32 0, i32 1
  store ptr %a.buf867, ptr %a.data.gep869, align 8
  %a.cap.gep870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create865, i32 0, i32 2
  store i64 16, ptr %a.cap.gep870, align 8
  store ptr %a.create865, ptr %var.br_locals, align 8
  br label %a.after863

a.after863:                                       ; preds = %a.create862, %and.43.then
  %a.load2871 = load ptr, ptr %var.br_locals, align 8
  %var.load872 = load ptr, ptr %var.vn, align 8
  %call.res873 = call i1 @"dep_graph::has_name"(ptr %a.load2871, ptr %var.load872)
  %nottmp874 = xor i1 %call.res873, true
  br label %and.43.exit

and.44.then:                                      ; preds = %and.43.exit
  %var.load875 = load ptr, ptr %var.refs, align 8
  %a.load876 = load ptr, ptr %var.refs, align 8
  %a.null877 = icmp eq ptr %a.load876, null
  br i1 %a.null877, label %a.create878, label %a.after879

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %a.after879
  %and.44.phi = phi i1 [ %nottmp890, %a.after879 ], [ %and.43.phi, %and.44.else ]
  br i1 %and.44.phi, label %choice.then891, label %choice.exit892

a.create878:                                      ; preds = %and.44.then
  %arena.cur880 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 24)
  %arena.cur882 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 128)
  %a.len.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 0
  store i64 0, ptr %a.len.gep884, align 8
  %a.data.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 1
  store ptr %a.buf883, ptr %a.data.gep885, align 8
  %a.cap.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 2
  store i64 16, ptr %a.cap.gep886, align 8
  store ptr %a.create881, ptr %var.refs, align 8
  br label %a.after879

a.after879:                                       ; preds = %a.create878, %and.44.then
  %a.load2887 = load ptr, ptr %var.refs, align 8
  %var.load888 = load ptr, ptr %var.vn, align 8
  %call.res889 = call i1 @"dep_graph::has_name"(ptr %a.load2887, ptr %var.load888)
  %nottmp890 = xor i1 %call.res889, true
  br label %and.44.exit

choice.then891:                                   ; preds = %and.44.exit
  %var.load893 = load ptr, ptr %var.vn, align 8
  %a.load894 = load ptr, ptr %var.refs, align 8
  %a.null895 = icmp eq ptr %a.load894, null
  br i1 %a.null895, label %a.create896, label %a.after897

choice.exit892:                                   ; preds = %a.store908, %and.44.exit
  br label %loop.latch.42

a.create896:                                      ; preds = %choice.then891
  %arena.cur898 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create899 = call ptr @dva_arena_alloc(ptr %arena.cur898, i64 24)
  %arena.cur900 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf901 = call ptr @dva_arena_alloc(ptr %arena.cur900, i64 128)
  %a.len.gep902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create899, i32 0, i32 0
  store i64 0, ptr %a.len.gep902, align 8
  %a.data.gep903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create899, i32 0, i32 1
  store ptr %a.buf901, ptr %a.data.gep903, align 8
  %a.cap.gep904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create899, i32 0, i32 2
  store i64 16, ptr %a.cap.gep904, align 8
  store ptr %a.create899, ptr %var.refs, align 8
  br label %a.after897

a.after897:                                       ; preds = %a.create896, %choice.then891
  %a.load2905 = load ptr, ptr %var.refs, align 8
  br label %a.check906

a.check906:                                       ; preds = %a.after897
  %a.len909 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2905, i32 0, i32 0
  %a.len910 = load i64, ptr %a.len909, align 8
  %a.cap911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2905, i32 0, i32 2
  %a.cap912 = load i64, ptr %a.cap911, align 8
  %a.needs.grow913 = icmp eq i64 %a.len910, %a.cap912
  br i1 %a.needs.grow913, label %a.grow907, label %a.store908

a.grow907:                                        ; preds = %a.check906
  call void @dva_array_grow(ptr %a.load2905)
  br label %a.store908

a.store908:                                       ; preds = %a.grow907, %a.check906
  %a.cur.data914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2905, i32 0, i32 1
  %a.cur.data915 = load ptr, ptr %a.cur.data914, align 8
  %a.cur.len916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2905, i32 0, i32 0
  %a.cur.len917 = load i64, ptr %a.cur.len916, align 8
  %a.elem.gep918 = getelementptr i64, ptr %a.cur.data915, i64 %a.cur.len917
  %slot.p2i919 = ptrtoint ptr %var.load893 to i64
  store i64 %slot.p2i919, ptr %a.elem.gep918, align 8
  %a.next.len920 = add i64 %a.cur.len917, 1
  %b.len.gep921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2905, i32 0, i32 0
  store i64 %a.next.len920, ptr %b.len.gep921, align 8
  br label %choice.exit892

choice.case926:                                   ; preds = %choice.next589
  %pay.gep931 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr932 = load ptr, ptr %pay.gep931, align 8
  store ptr %payload.ptr932, ptr %var._933, align 8
  store ptr %payload.ptr932, ptr %var.re, align 8
  %var.load934 = load ptr, ptr %var.re, align 8
  %fld.gep935 = getelementptr inbounds { ptr, i1 }, ptr %var.load934, i32 0, i32 0
  %fld.load936 = load ptr, ptr %fld.gep935, align 8
  %arr.cycle.len937 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load936, i32 0, i32 0
  %arr.cycle.len938 = load i64, ptr %arr.cycle.len937, align 8
  %arr.cycle.data939 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load936, i32 0, i32 1
  %arr.cycle.data940 = load ptr, ptr %arr.cycle.data939, align 8
  store i64 0, ptr %loop.idx.45, align 8
  %cycle.prev.u941 = load ptr, ptr %var._933, align 8
  br label %loop.header.45

choice.next927:                                   ; preds = %choice.next589
  %tag.gep983 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id984 = load i64, ptr %tag.gep983, align 8
  %tag.match985 = icmp eq i64 %tag.id984, 16
  br i1 %tag.match985, label %choice.case981, label %choice.next982

loop.header.45:                                   ; preds = %loop.latch.45, %choice.case926
  %counter.load942 = load i64, ptr %loop.idx.45, align 8
  %loop.cond943 = icmp slt i64 %counter.load942, %arr.cycle.len938
  br i1 %loop.cond943, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i944 = sub i64 %counter.load942, 0
  store i64 1, ptr %loop.step.45, align 8
  %arr.elem.gep945 = getelementptr i64, ptr %arr.cycle.data940, i64 %counter.load942
  %arr.elem.raw946 = load i64, ptr %arr.elem.gep945, align 8
  %slot.i2p947 = inttoptr i64 %arr.elem.raw946 to ptr
  store i64 %loop.rel.i944, ptr %var._i948, align 8
  store ptr %slot.i2p947, ptr %var._949, align 8
  store ptr %slot.i2p947, ptr %var.fld, align 8
  %var.load950 = load ptr, ptr %var.fld, align 8
  %fld.gep951 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load950, i32 0, i32 2
  %fld.load952 = load ptr, ptr %fld.gep951, align 8
  %var.load953 = load ptr, ptr %var.locals, align 8
  %a.load954 = load ptr, ptr %var.locals, align 8
  %a.null955 = icmp eq ptr %a.load954, null
  br i1 %a.null955, label %a.create956, label %a.after957

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.after970
  %step.val979 = load i64, ptr %loop.step.45, align 8
  %loop.next980 = add i64 %counter.load942, %step.val979
  store i64 %loop.next980, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  store ptr %cycle.prev.u941, ptr %var._933, align 8
  br label %choice.exit

a.create956:                                      ; preds = %loop.body.45
  %arena.cur958 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create959 = call ptr @dva_arena_alloc(ptr %arena.cur958, i64 24)
  %arena.cur960 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 128)
  %a.len.gep962 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 0
  store i64 0, ptr %a.len.gep962, align 8
  %a.data.gep963 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 1
  store ptr %a.buf961, ptr %a.data.gep963, align 8
  %a.cap.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 2
  store i64 16, ptr %a.cap.gep964, align 8
  store ptr %a.create959, ptr %var.locals, align 8
  br label %a.after957

a.after957:                                       ; preds = %a.create956, %loop.body.45
  %a.load2965 = load ptr, ptr %var.locals, align 8
  %var.load966 = load ptr, ptr %var.refs, align 8
  %a.load967 = load ptr, ptr %var.refs, align 8
  %a.null968 = icmp eq ptr %a.load967, null
  br i1 %a.null968, label %a.create969, label %a.after970

a.create969:                                      ; preds = %a.after957
  %arena.cur971 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create972 = call ptr @dva_arena_alloc(ptr %arena.cur971, i64 24)
  %arena.cur973 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf974 = call ptr @dva_arena_alloc(ptr %arena.cur973, i64 128)
  %a.len.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create972, i32 0, i32 0
  store i64 0, ptr %a.len.gep975, align 8
  %a.data.gep976 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create972, i32 0, i32 1
  store ptr %a.buf974, ptr %a.data.gep976, align 8
  %a.cap.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create972, i32 0, i32 2
  store i64 16, ptr %a.cap.gep977, align 8
  store ptr %a.create972, ptr %var.refs, align 8
  br label %a.after970

a.after970:                                       ; preds = %a.create969, %a.after957
  %a.load2978 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load952, ptr %a.load2965, ptr %a.load2978)
  br label %loop.latch.45

choice.case981:                                   ; preds = %choice.next927
  %pay.gep986 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr987 = load ptr, ptr %pay.gep986, align 8
  store ptr %payload.ptr987, ptr %var._988, align 8
  store ptr %payload.ptr987, ptr %var.m, align 8
  %var.load989 = load ptr, ptr %var.m, align 8
  %fld.gep990 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load989, i32 0, i32 0
  %fld.load991 = load ptr, ptr %fld.gep990, align 8
  %var.load992 = load ptr, ptr %var.locals, align 8
  %a.load993 = load ptr, ptr %var.locals, align 8
  %a.null994 = icmp eq ptr %a.load993, null
  br i1 %a.null994, label %a.create995, label %a.after996

choice.next982:                                   ; preds = %choice.next927
  %tag.gep1049 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1050 = load i64, ptr %tag.gep1049, align 8
  %tag.match1051 = icmp eq i64 %tag.id1050, 17
  br i1 %tag.match1051, label %choice.case1047, label %choice.next1048

a.create995:                                      ; preds = %choice.case981
  %arena.cur997 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 24)
  %arena.cur999 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1000 = call ptr @dva_arena_alloc(ptr %arena.cur999, i64 128)
  %a.len.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create998, i32 0, i32 0
  store i64 0, ptr %a.len.gep1001, align 8
  %a.data.gep1002 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create998, i32 0, i32 1
  store ptr %a.buf1000, ptr %a.data.gep1002, align 8
  %a.cap.gep1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create998, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1003, align 8
  store ptr %a.create998, ptr %var.locals, align 8
  br label %a.after996

a.after996:                                       ; preds = %a.create995, %choice.case981
  %a.load21004 = load ptr, ptr %var.locals, align 8
  %var.load1005 = load ptr, ptr %var.refs, align 8
  %a.load1006 = load ptr, ptr %var.refs, align 8
  %a.null1007 = icmp eq ptr %a.load1006, null
  br i1 %a.null1007, label %a.create1008, label %a.after1009

a.create1008:                                     ; preds = %a.after996
  %arena.cur1010 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1011 = call ptr @dva_arena_alloc(ptr %arena.cur1010, i64 24)
  %arena.cur1012 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1013 = call ptr @dva_arena_alloc(ptr %arena.cur1012, i64 128)
  %a.len.gep1014 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1011, i32 0, i32 0
  store i64 0, ptr %a.len.gep1014, align 8
  %a.data.gep1015 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1011, i32 0, i32 1
  store ptr %a.buf1013, ptr %a.data.gep1015, align 8
  %a.cap.gep1016 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1011, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1016, align 8
  store ptr %a.create1011, ptr %var.refs, align 8
  br label %a.after1009

a.after1009:                                      ; preds = %a.create1008, %a.after996
  %a.load21017 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load991, ptr %a.load21004, ptr %a.load21017)
  %var.load1018 = load ptr, ptr %var.m, align 8
  %fld.gep1019 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1018, i32 0, i32 3
  %fld.load1020 = load ptr, ptr %fld.gep1019, align 8
  %var.load1021 = load ptr, ptr %var.locals, align 8
  %a.load1022 = load ptr, ptr %var.locals, align 8
  %a.null1023 = icmp eq ptr %a.load1022, null
  br i1 %a.null1023, label %a.create1024, label %a.after1025

a.create1024:                                     ; preds = %a.after1009
  %arena.cur1026 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1027 = call ptr @dva_arena_alloc(ptr %arena.cur1026, i64 24)
  %arena.cur1028 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1029 = call ptr @dva_arena_alloc(ptr %arena.cur1028, i64 128)
  %a.len.gep1030 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1027, i32 0, i32 0
  store i64 0, ptr %a.len.gep1030, align 8
  %a.data.gep1031 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1027, i32 0, i32 1
  store ptr %a.buf1029, ptr %a.data.gep1031, align 8
  %a.cap.gep1032 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1027, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1032, align 8
  store ptr %a.create1027, ptr %var.locals, align 8
  br label %a.after1025

a.after1025:                                      ; preds = %a.create1024, %a.after1009
  %a.load21033 = load ptr, ptr %var.locals, align 8
  %var.load1034 = load ptr, ptr %var.refs, align 8
  %a.load1035 = load ptr, ptr %var.refs, align 8
  %a.null1036 = icmp eq ptr %a.load1035, null
  br i1 %a.null1036, label %a.create1037, label %a.after1038

a.create1037:                                     ; preds = %a.after1025
  %arena.cur1039 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1040 = call ptr @dva_arena_alloc(ptr %arena.cur1039, i64 24)
  %arena.cur1041 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1042 = call ptr @dva_arena_alloc(ptr %arena.cur1041, i64 128)
  %a.len.gep1043 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1040, i32 0, i32 0
  store i64 0, ptr %a.len.gep1043, align 8
  %a.data.gep1044 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1040, i32 0, i32 1
  store ptr %a.buf1042, ptr %a.data.gep1044, align 8
  %a.cap.gep1045 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1040, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1045, align 8
  store ptr %a.create1040, ptr %var.refs, align 8
  br label %a.after1038

a.after1038:                                      ; preds = %a.create1037, %a.after1025
  %a.load21046 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1020, ptr %a.load21033, ptr %a.load21046)
  br label %choice.exit

choice.case1047:                                  ; preds = %choice.next982
  %pay.gep1052 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1053 = load ptr, ptr %pay.gep1052, align 8
  store ptr %payload.ptr1053, ptr %var._1054, align 8
  store ptr %payload.ptr1053, ptr %var.ka, align 8
  %var.load1055 = load ptr, ptr %var.ka, align 8
  %fld.gep1056 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1055, i32 0, i32 0
  %fld.load1057 = load ptr, ptr %fld.gep1056, align 8
  %var.load1058 = load ptr, ptr %var.locals, align 8
  %a.load1059 = load ptr, ptr %var.locals, align 8
  %a.null1060 = icmp eq ptr %a.load1059, null
  br i1 %a.null1060, label %a.create1061, label %a.after1062

choice.next1048:                                  ; preds = %choice.next982
  %tag.gep1115 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1116 = load i64, ptr %tag.gep1115, align 8
  %tag.match1117 = icmp eq i64 %tag.id1116, 6
  br i1 %tag.match1117, label %choice.case1113, label %choice.next1114

a.create1061:                                     ; preds = %choice.case1047
  %arena.cur1063 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 24)
  %arena.cur1065 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 128)
  %a.len.gep1067 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 0
  store i64 0, ptr %a.len.gep1067, align 8
  %a.data.gep1068 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 1
  store ptr %a.buf1066, ptr %a.data.gep1068, align 8
  %a.cap.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1069, align 8
  store ptr %a.create1064, ptr %var.locals, align 8
  br label %a.after1062

a.after1062:                                      ; preds = %a.create1061, %choice.case1047
  %a.load21070 = load ptr, ptr %var.locals, align 8
  %var.load1071 = load ptr, ptr %var.refs, align 8
  %a.load1072 = load ptr, ptr %var.refs, align 8
  %a.null1073 = icmp eq ptr %a.load1072, null
  br i1 %a.null1073, label %a.create1074, label %a.after1075

a.create1074:                                     ; preds = %a.after1062
  %arena.cur1076 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1077 = call ptr @dva_arena_alloc(ptr %arena.cur1076, i64 24)
  %arena.cur1078 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1079 = call ptr @dva_arena_alloc(ptr %arena.cur1078, i64 128)
  %a.len.gep1080 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 0
  store i64 0, ptr %a.len.gep1080, align 8
  %a.data.gep1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 1
  store ptr %a.buf1079, ptr %a.data.gep1081, align 8
  %a.cap.gep1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1082, align 8
  store ptr %a.create1077, ptr %var.refs, align 8
  br label %a.after1075

a.after1075:                                      ; preds = %a.create1074, %a.after1062
  %a.load21083 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1057, ptr %a.load21070, ptr %a.load21083)
  %var.load1084 = load ptr, ptr %var.ka, align 8
  %fld.gep1085 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1084, i32 0, i32 1
  %fld.load1086 = load ptr, ptr %fld.gep1085, align 8
  %var.load1087 = load ptr, ptr %var.locals, align 8
  %a.load1088 = load ptr, ptr %var.locals, align 8
  %a.null1089 = icmp eq ptr %a.load1088, null
  br i1 %a.null1089, label %a.create1090, label %a.after1091

a.create1090:                                     ; preds = %a.after1075
  %arena.cur1092 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1093 = call ptr @dva_arena_alloc(ptr %arena.cur1092, i64 24)
  %arena.cur1094 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1095 = call ptr @dva_arena_alloc(ptr %arena.cur1094, i64 128)
  %a.len.gep1096 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1093, i32 0, i32 0
  store i64 0, ptr %a.len.gep1096, align 8
  %a.data.gep1097 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1093, i32 0, i32 1
  store ptr %a.buf1095, ptr %a.data.gep1097, align 8
  %a.cap.gep1098 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1093, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1098, align 8
  store ptr %a.create1093, ptr %var.locals, align 8
  br label %a.after1091

a.after1091:                                      ; preds = %a.create1090, %a.after1075
  %a.load21099 = load ptr, ptr %var.locals, align 8
  %var.load1100 = load ptr, ptr %var.refs, align 8
  %a.load1101 = load ptr, ptr %var.refs, align 8
  %a.null1102 = icmp eq ptr %a.load1101, null
  br i1 %a.null1102, label %a.create1103, label %a.after1104

a.create1103:                                     ; preds = %a.after1091
  %arena.cur1105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1106 = call ptr @dva_arena_alloc(ptr %arena.cur1105, i64 24)
  %arena.cur1107 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1108 = call ptr @dva_arena_alloc(ptr %arena.cur1107, i64 128)
  %a.len.gep1109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 0
  store i64 0, ptr %a.len.gep1109, align 8
  %a.data.gep1110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 1
  store ptr %a.buf1108, ptr %a.data.gep1110, align 8
  %a.cap.gep1111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1111, align 8
  store ptr %a.create1106, ptr %var.refs, align 8
  br label %a.after1104

a.after1104:                                      ; preds = %a.create1103, %a.after1091
  %a.load21112 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1086, ptr %a.load21099, ptr %a.load21112)
  br label %choice.exit

choice.case1113:                                  ; preds = %choice.next1048
  %pay.gep1118 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1119 = load ptr, ptr %pay.gep1118, align 8
  store ptr %payload.ptr1119, ptr %var._1120, align 8
  store ptr %payload.ptr1119, ptr %var.a1121, align 8
  %var.load1122 = load ptr, ptr %var.a1121, align 8
  %fld.gep1123 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1122, i32 0, i32 5
  %fld.load1124 = load ptr, ptr %fld.gep1123, align 8
  %var.load1125 = load ptr, ptr %var.locals, align 8
  %a.load1126 = load ptr, ptr %var.locals, align 8
  %a.null1127 = icmp eq ptr %a.load1126, null
  br i1 %a.null1127, label %a.create1128, label %a.after1129

choice.next1114:                                  ; preds = %choice.next1048
  %tag.gep1182 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1183 = load i64, ptr %tag.gep1182, align 8
  %tag.match1184 = icmp eq i64 %tag.id1183, 12
  br i1 %tag.match1184, label %choice.case1180, label %choice.next1181

a.create1128:                                     ; preds = %choice.case1113
  %arena.cur1130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1131 = call ptr @dva_arena_alloc(ptr %arena.cur1130, i64 24)
  %arena.cur1132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1133 = call ptr @dva_arena_alloc(ptr %arena.cur1132, i64 128)
  %a.len.gep1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1131, i32 0, i32 0
  store i64 0, ptr %a.len.gep1134, align 8
  %a.data.gep1135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1131, i32 0, i32 1
  store ptr %a.buf1133, ptr %a.data.gep1135, align 8
  %a.cap.gep1136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1136, align 8
  store ptr %a.create1131, ptr %var.locals, align 8
  br label %a.after1129

a.after1129:                                      ; preds = %a.create1128, %choice.case1113
  %a.load21137 = load ptr, ptr %var.locals, align 8
  %var.load1138 = load ptr, ptr %var.refs, align 8
  %a.load1139 = load ptr, ptr %var.refs, align 8
  %a.null1140 = icmp eq ptr %a.load1139, null
  br i1 %a.null1140, label %a.create1141, label %a.after1142

a.create1141:                                     ; preds = %a.after1129
  %arena.cur1143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1144 = call ptr @dva_arena_alloc(ptr %arena.cur1143, i64 24)
  %arena.cur1145 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1146 = call ptr @dva_arena_alloc(ptr %arena.cur1145, i64 128)
  %a.len.gep1147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1144, i32 0, i32 0
  store i64 0, ptr %a.len.gep1147, align 8
  %a.data.gep1148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1144, i32 0, i32 1
  store ptr %a.buf1146, ptr %a.data.gep1148, align 8
  %a.cap.gep1149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1144, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1149, align 8
  store ptr %a.create1144, ptr %var.refs, align 8
  br label %a.after1142

a.after1142:                                      ; preds = %a.create1141, %a.after1129
  %a.load21150 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1124, ptr %a.load21137, ptr %a.load21150)
  %var.load1151 = load ptr, ptr %var.a1121, align 8
  %fld.gep1152 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1151, i32 0, i32 6
  %fld.load1153 = load ptr, ptr %fld.gep1152, align 8
  %var.load1154 = load ptr, ptr %var.locals, align 8
  %a.load1155 = load ptr, ptr %var.locals, align 8
  %a.null1156 = icmp eq ptr %a.load1155, null
  br i1 %a.null1156, label %a.create1157, label %a.after1158

a.create1157:                                     ; preds = %a.after1142
  %arena.cur1159 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1160 = call ptr @dva_arena_alloc(ptr %arena.cur1159, i64 24)
  %arena.cur1161 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1162 = call ptr @dva_arena_alloc(ptr %arena.cur1161, i64 128)
  %a.len.gep1163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 0
  store i64 0, ptr %a.len.gep1163, align 8
  %a.data.gep1164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 1
  store ptr %a.buf1162, ptr %a.data.gep1164, align 8
  %a.cap.gep1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1165, align 8
  store ptr %a.create1160, ptr %var.locals, align 8
  br label %a.after1158

a.after1158:                                      ; preds = %a.create1157, %a.after1142
  %a.load21166 = load ptr, ptr %var.locals, align 8
  %var.load1167 = load ptr, ptr %var.refs, align 8
  %a.load1168 = load ptr, ptr %var.refs, align 8
  %a.null1169 = icmp eq ptr %a.load1168, null
  br i1 %a.null1169, label %a.create1170, label %a.after1171

a.create1170:                                     ; preds = %a.after1158
  %arena.cur1172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1173 = call ptr @dva_arena_alloc(ptr %arena.cur1172, i64 24)
  %arena.cur1174 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1175 = call ptr @dva_arena_alloc(ptr %arena.cur1174, i64 128)
  %a.len.gep1176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1173, i32 0, i32 0
  store i64 0, ptr %a.len.gep1176, align 8
  %a.data.gep1177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1173, i32 0, i32 1
  store ptr %a.buf1175, ptr %a.data.gep1177, align 8
  %a.cap.gep1178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1173, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1178, align 8
  store ptr %a.create1173, ptr %var.refs, align 8
  br label %a.after1171

a.after1171:                                      ; preds = %a.create1170, %a.after1158
  %a.load21179 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1153, ptr %a.load21166, ptr %a.load21179)
  br label %choice.exit

choice.case1180:                                  ; preds = %choice.next1114
  %pay.gep1185 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1186 = load ptr, ptr %pay.gep1185, align 8
  store ptr %payload.ptr1186, ptr %var._1187, align 8
  store ptr %payload.ptr1186, ptr %var.cy, align 8
  %var.load1188 = load ptr, ptr %var.cy, align 8
  %fld.gep1189 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1188, i32 0, i32 0
  %fld.load1190 = load ptr, ptr %fld.gep1189, align 8
  %var.load1191 = load ptr, ptr %var.locals, align 8
  %a.load1192 = load ptr, ptr %var.locals, align 8
  %a.null1193 = icmp eq ptr %a.load1192, null
  br i1 %a.null1193, label %a.create1194, label %a.after1195

choice.next1181:                                  ; preds = %choice.next1114
  %tag.gep1248 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1249 = load i64, ptr %tag.gep1248, align 8
  %tag.match1250 = icmp eq i64 %tag.id1249, 11
  br i1 %tag.match1250, label %choice.case1246, label %choice.next1247

a.create1194:                                     ; preds = %choice.case1180
  %arena.cur1196 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1197 = call ptr @dva_arena_alloc(ptr %arena.cur1196, i64 24)
  %arena.cur1198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1199 = call ptr @dva_arena_alloc(ptr %arena.cur1198, i64 128)
  %a.len.gep1200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1197, i32 0, i32 0
  store i64 0, ptr %a.len.gep1200, align 8
  %a.data.gep1201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1197, i32 0, i32 1
  store ptr %a.buf1199, ptr %a.data.gep1201, align 8
  %a.cap.gep1202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1197, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1202, align 8
  store ptr %a.create1197, ptr %var.locals, align 8
  br label %a.after1195

a.after1195:                                      ; preds = %a.create1194, %choice.case1180
  %a.load21203 = load ptr, ptr %var.locals, align 8
  %var.load1204 = load ptr, ptr %var.refs, align 8
  %a.load1205 = load ptr, ptr %var.refs, align 8
  %a.null1206 = icmp eq ptr %a.load1205, null
  br i1 %a.null1206, label %a.create1207, label %a.after1208

a.create1207:                                     ; preds = %a.after1195
  %arena.cur1209 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1210 = call ptr @dva_arena_alloc(ptr %arena.cur1209, i64 24)
  %arena.cur1211 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1212 = call ptr @dva_arena_alloc(ptr %arena.cur1211, i64 128)
  %a.len.gep1213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 0
  store i64 0, ptr %a.len.gep1213, align 8
  %a.data.gep1214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 1
  store ptr %a.buf1212, ptr %a.data.gep1214, align 8
  %a.cap.gep1215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1215, align 8
  store ptr %a.create1210, ptr %var.refs, align 8
  br label %a.after1208

a.after1208:                                      ; preds = %a.create1207, %a.after1195
  %a.load21216 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1190, ptr %a.load21203, ptr %a.load21216)
  %var.load1217 = load ptr, ptr %var.cy, align 8
  %fld.gep1218 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1217, i32 0, i32 1
  %fld.load1219 = load ptr, ptr %fld.gep1218, align 8
  %var.load1220 = load ptr, ptr %var.locals, align 8
  %a.load1221 = load ptr, ptr %var.locals, align 8
  %a.null1222 = icmp eq ptr %a.load1221, null
  br i1 %a.null1222, label %a.create1223, label %a.after1224

a.create1223:                                     ; preds = %a.after1208
  %arena.cur1225 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1226 = call ptr @dva_arena_alloc(ptr %arena.cur1225, i64 24)
  %arena.cur1227 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1228 = call ptr @dva_arena_alloc(ptr %arena.cur1227, i64 128)
  %a.len.gep1229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1226, i32 0, i32 0
  store i64 0, ptr %a.len.gep1229, align 8
  %a.data.gep1230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1226, i32 0, i32 1
  store ptr %a.buf1228, ptr %a.data.gep1230, align 8
  %a.cap.gep1231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1226, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1231, align 8
  store ptr %a.create1226, ptr %var.locals, align 8
  br label %a.after1224

a.after1224:                                      ; preds = %a.create1223, %a.after1208
  %a.load21232 = load ptr, ptr %var.locals, align 8
  %var.load1233 = load ptr, ptr %var.refs, align 8
  %a.load1234 = load ptr, ptr %var.refs, align 8
  %a.null1235 = icmp eq ptr %a.load1234, null
  br i1 %a.null1235, label %a.create1236, label %a.after1237

a.create1236:                                     ; preds = %a.after1224
  %arena.cur1238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1239 = call ptr @dva_arena_alloc(ptr %arena.cur1238, i64 24)
  %arena.cur1240 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1241 = call ptr @dva_arena_alloc(ptr %arena.cur1240, i64 128)
  %a.len.gep1242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1239, i32 0, i32 0
  store i64 0, ptr %a.len.gep1242, align 8
  %a.data.gep1243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1239, i32 0, i32 1
  store ptr %a.buf1241, ptr %a.data.gep1243, align 8
  %a.cap.gep1244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1244, align 8
  store ptr %a.create1239, ptr %var.refs, align 8
  br label %a.after1237

a.after1237:                                      ; preds = %a.create1236, %a.after1224
  %a.load21245 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1219, ptr %a.load21232, ptr %a.load21245)
  br label %choice.exit

choice.case1246:                                  ; preds = %choice.next1181
  %pay.gep1251 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1252 = load ptr, ptr %pay.gep1251, align 8
  store ptr %payload.ptr1252, ptr %var._1253, align 8
  store ptr %payload.ptr1252, ptr %var.ce, align 8
  %var.load1254 = load ptr, ptr %var.ce, align 8
  %fld.gep1255 = getelementptr inbounds { ptr, ptr }, ptr %var.load1254, i32 0, i32 0
  %fld.load1256 = load ptr, ptr %fld.gep1255, align 8
  %var.load1257 = load ptr, ptr %var.locals, align 8
  %a.load1258 = load ptr, ptr %var.locals, align 8
  %a.null1259 = icmp eq ptr %a.load1258, null
  br i1 %a.null1259, label %a.create1260, label %a.after1261

choice.next1247:                                  ; preds = %choice.next1181
  %tag.gep1314 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1315 = load i64, ptr %tag.gep1314, align 8
  %tag.match1316 = icmp eq i64 %tag.id1315, 13
  br i1 %tag.match1316, label %choice.case1312, label %choice.next1313

a.create1260:                                     ; preds = %choice.case1246
  %arena.cur1262 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 24)
  %arena.cur1264 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1265 = call ptr @dva_arena_alloc(ptr %arena.cur1264, i64 128)
  %a.len.gep1266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 0
  store i64 0, ptr %a.len.gep1266, align 8
  %a.data.gep1267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 1
  store ptr %a.buf1265, ptr %a.data.gep1267, align 8
  %a.cap.gep1268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1268, align 8
  store ptr %a.create1263, ptr %var.locals, align 8
  br label %a.after1261

a.after1261:                                      ; preds = %a.create1260, %choice.case1246
  %a.load21269 = load ptr, ptr %var.locals, align 8
  %var.load1270 = load ptr, ptr %var.refs, align 8
  %a.load1271 = load ptr, ptr %var.refs, align 8
  %a.null1272 = icmp eq ptr %a.load1271, null
  br i1 %a.null1272, label %a.create1273, label %a.after1274

a.create1273:                                     ; preds = %a.after1261
  %arena.cur1275 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1276 = call ptr @dva_arena_alloc(ptr %arena.cur1275, i64 24)
  %arena.cur1277 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var.load1283 = load ptr, ptr %var.ce, align 8
  %fld.gep1284 = getelementptr inbounds { ptr, ptr }, ptr %var.load1283, i32 0, i32 1
  %fld.load1285 = load ptr, ptr %fld.gep1284, align 8
  %var.load1286 = load ptr, ptr %var.locals, align 8
  %a.load1287 = load ptr, ptr %var.locals, align 8
  %a.null1288 = icmp eq ptr %a.load1287, null
  br i1 %a.null1288, label %a.create1289, label %a.after1290

a.create1289:                                     ; preds = %a.after1274
  %arena.cur1291 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1292 = call ptr @dva_arena_alloc(ptr %arena.cur1291, i64 24)
  %arena.cur1293 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1294 = call ptr @dva_arena_alloc(ptr %arena.cur1293, i64 128)
  %a.len.gep1295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 0
  store i64 0, ptr %a.len.gep1295, align 8
  %a.data.gep1296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 1
  store ptr %a.buf1294, ptr %a.data.gep1296, align 8
  %a.cap.gep1297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1292, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1297, align 8
  store ptr %a.create1292, ptr %var.locals, align 8
  br label %a.after1290

a.after1290:                                      ; preds = %a.create1289, %a.after1274
  %a.load21298 = load ptr, ptr %var.locals, align 8
  %var.load1299 = load ptr, ptr %var.refs, align 8
  %a.load1300 = load ptr, ptr %var.refs, align 8
  %a.null1301 = icmp eq ptr %a.load1300, null
  br i1 %a.null1301, label %a.create1302, label %a.after1303

a.create1302:                                     ; preds = %a.after1290
  %arena.cur1304 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1305 = call ptr @dva_arena_alloc(ptr %arena.cur1304, i64 24)
  %arena.cur1306 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1307 = call ptr @dva_arena_alloc(ptr %arena.cur1306, i64 128)
  %a.len.gep1308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1305, i32 0, i32 0
  store i64 0, ptr %a.len.gep1308, align 8
  %a.data.gep1309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1305, i32 0, i32 1
  store ptr %a.buf1307, ptr %a.data.gep1309, align 8
  %a.cap.gep1310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1305, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1310, align 8
  store ptr %a.create1305, ptr %var.refs, align 8
  br label %a.after1303

a.after1303:                                      ; preds = %a.create1302, %a.after1290
  %a.load21311 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1285, ptr %a.load21298, ptr %a.load21311)
  br label %choice.exit

choice.case1312:                                  ; preds = %choice.next1247
  %pay.gep1317 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1318 = load ptr, ptr %pay.gep1317, align 8
  store ptr %payload.ptr1318, ptr %var._1319, align 8
  store ptr %payload.ptr1318, ptr %var.r, align 8
  %var.load1320 = load ptr, ptr %var.r, align 8
  %fld.gep1321 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1320, i32 0, i32 0
  %fld.load1322 = load i1, ptr %fld.gep1321, align 1
  br i1 %fld.load1322, label %choice.then1323, label %choice.exit1324

choice.next1313:                                  ; preds = %choice.next1247
  %tag.gep1455 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1456 = load i64, ptr %tag.gep1455, align 8
  %tag.match1457 = icmp eq i64 %tag.id1456, 36
  br i1 %tag.match1457, label %choice.case1453, label %choice.next1454

choice.then1323:                                  ; preds = %choice.case1312
  %var.load1325 = load ptr, ptr %var.r, align 8
  %fld.gep1326 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1325, i32 0, i32 2
  %fld.load1327 = load ptr, ptr %fld.gep1326, align 8
  %var.load1328 = load ptr, ptr %var.locals, align 8
  %a.load1329 = load ptr, ptr %var.locals, align 8
  %a.null1330 = icmp eq ptr %a.load1329, null
  br i1 %a.null1330, label %a.create1331, label %a.after1332

choice.exit1324:                                  ; preds = %a.after1345, %choice.case1312
  %var.load1354 = load ptr, ptr %var.r, align 8
  %fld.gep1355 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1354, i32 0, i32 1
  %fld.load1356 = load i1, ptr %fld.gep1355, align 1
  br i1 %fld.load1356, label %choice.then1357, label %choice.exit1358

a.create1331:                                     ; preds = %choice.then1323
  %arena.cur1333 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1334 = call ptr @dva_arena_alloc(ptr %arena.cur1333, i64 24)
  %arena.cur1335 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1336 = call ptr @dva_arena_alloc(ptr %arena.cur1335, i64 128)
  %a.len.gep1337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1334, i32 0, i32 0
  store i64 0, ptr %a.len.gep1337, align 8
  %a.data.gep1338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1334, i32 0, i32 1
  store ptr %a.buf1336, ptr %a.data.gep1338, align 8
  %a.cap.gep1339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1334, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1339, align 8
  store ptr %a.create1334, ptr %var.locals, align 8
  br label %a.after1332

a.after1332:                                      ; preds = %a.create1331, %choice.then1323
  %a.load21340 = load ptr, ptr %var.locals, align 8
  %var.load1341 = load ptr, ptr %var.refs, align 8
  %a.load1342 = load ptr, ptr %var.refs, align 8
  %a.null1343 = icmp eq ptr %a.load1342, null
  br i1 %a.null1343, label %a.create1344, label %a.after1345

a.create1344:                                     ; preds = %a.after1332
  %arena.cur1346 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1347 = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 24)
  %arena.cur1348 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1349 = call ptr @dva_arena_alloc(ptr %arena.cur1348, i64 128)
  %a.len.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 0
  store i64 0, ptr %a.len.gep1350, align 8
  %a.data.gep1351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 1
  store ptr %a.buf1349, ptr %a.data.gep1351, align 8
  %a.cap.gep1352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1352, align 8
  store ptr %a.create1347, ptr %var.refs, align 8
  br label %a.after1345

a.after1345:                                      ; preds = %a.create1344, %a.after1332
  %a.load21353 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1327, ptr %a.load21340, ptr %a.load21353)
  br label %choice.exit1324

choice.then1357:                                  ; preds = %choice.exit1324
  %var.load1359 = load ptr, ptr %var.r, align 8
  %fld.gep1360 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1359, i32 0, i32 3
  %fld.load1361 = load ptr, ptr %fld.gep1360, align 8
  %tag.gep1365 = getelementptr inbounds { i64, ptr }, ptr %fld.load1361, i32 0, i32 0
  %tag.id1366 = load i64, ptr %tag.gep1365, align 8
  %tag.match1367 = icmp eq i64 %tag.id1366, 3
  br i1 %tag.match1367, label %choice.case1363, label %choice.next1364

choice.exit1358:                                  ; preds = %choice.exit1362, %choice.exit1324
  br label %choice.exit

choice.exit1362:                                  ; preds = %a.after1444, %choice.exit1394
  br label %choice.exit1358

choice.case1363:                                  ; preds = %choice.then1357
  %pay.gep1368 = getelementptr inbounds { i64, ptr }, ptr %fld.load1361, i32 0, i32 1
  %payload.ptr1369 = load ptr, ptr %pay.gep1368, align 8
  store ptr %payload.ptr1369, ptr %var._1370, align 8
  store ptr %payload.ptr1369, ptr %var.v1371, align 8
  %var.load1372 = load ptr, ptr %var.v1371, align 8
  %eq.lhs.len1373 = getelementptr inbounds { i64, ptr }, ptr %var.load1372, i32 0, i32 0
  %eq.lhs.len1374 = load i64, ptr %eq.lhs.len1373, align 8
  %eq.lhs.len1375 = and i64 %eq.lhs.len1374, 281474976710655
  %eq.rhs.len1376 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1377 = and i64 %eq.rhs.len1376, 281474976710655
  %eq.len1378 = icmp eq i64 %eq.lhs.len1375, %eq.rhs.len1377
  br i1 %eq.len1378, label %str.eq.then1379, label %str.eq.else1380

choice.next1364:                                  ; preds = %choice.then1357
  %var.load1424 = load ptr, ptr %var.r, align 8
  %fld.gep1425 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1424, i32 0, i32 3
  %fld.load1426 = load ptr, ptr %fld.gep1425, align 8
  %var.load1427 = load ptr, ptr %var.locals, align 8
  %a.load1428 = load ptr, ptr %var.locals, align 8
  %a.null1429 = icmp eq ptr %a.load1428, null
  br i1 %a.null1429, label %a.create1430, label %a.after1431

str.eq.then1379:                                  ; preds = %choice.case1363
  %eq.lhs.data1382 = getelementptr inbounds { i64, ptr }, ptr %var.load1372, i32 0, i32 1
  %eq.lhs.data1383 = load ptr, ptr %eq.lhs.data1382, align 8
  %eq.rhs.data1384 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1385 = call i32 @memcmp(ptr %eq.lhs.data1383, ptr %eq.rhs.data1384, i64 %eq.lhs.len1375)
  %eq.cmp.zero1386 = icmp eq i32 %eq.memcmp1385, 0
  br label %str.eq.merge1381

str.eq.else1380:                                  ; preds = %choice.case1363
  br label %str.eq.merge1381

str.eq.merge1381:                                 ; preds = %str.eq.else1380, %str.eq.then1379
  %str.eq.result1387 = phi i1 [ %eq.cmp.zero1386, %str.eq.then1379 ], [ false, %str.eq.else1380 ]
  br i1 %str.eq.result1387, label %and.46.then, label %and.46.else

and.46.then:                                      ; preds = %str.eq.merge1381
  %var.load1388 = load ptr, ptr %var.r, align 8
  %fld.gep1389 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1388, i32 0, i32 0
  %fld.load1390 = load i1, ptr %fld.gep1389, align 1
  %nottmp1391 = xor i1 %fld.load1390, true
  br label %and.46.exit

and.46.else:                                      ; preds = %str.eq.merge1381
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %nottmp1391, %and.46.then ], [ %str.eq.result1387, %and.46.else ]
  %nottmp1392 = xor i1 %and.46.phi, true
  br i1 %nottmp1392, label %choice.then1393, label %choice.exit1394

choice.then1393:                                  ; preds = %and.46.exit
  %var.load1395 = load ptr, ptr %var.r, align 8
  %fld.gep1396 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1395, i32 0, i32 3
  %fld.load1397 = load ptr, ptr %fld.gep1396, align 8
  %var.load1398 = load ptr, ptr %var.locals, align 8
  %a.load1399 = load ptr, ptr %var.locals, align 8
  %a.null1400 = icmp eq ptr %a.load1399, null
  br i1 %a.null1400, label %a.create1401, label %a.after1402

choice.exit1394:                                  ; preds = %a.after1415, %and.46.exit
  br label %choice.exit1362

a.create1401:                                     ; preds = %choice.then1393
  %arena.cur1403 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1404 = call ptr @dva_arena_alloc(ptr %arena.cur1403, i64 24)
  %arena.cur1405 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1406 = call ptr @dva_arena_alloc(ptr %arena.cur1405, i64 128)
  %a.len.gep1407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 0
  store i64 0, ptr %a.len.gep1407, align 8
  %a.data.gep1408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 1
  store ptr %a.buf1406, ptr %a.data.gep1408, align 8
  %a.cap.gep1409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1409, align 8
  store ptr %a.create1404, ptr %var.locals, align 8
  br label %a.after1402

a.after1402:                                      ; preds = %a.create1401, %choice.then1393
  %a.load21410 = load ptr, ptr %var.locals, align 8
  %var.load1411 = load ptr, ptr %var.refs, align 8
  %a.load1412 = load ptr, ptr %var.refs, align 8
  %a.null1413 = icmp eq ptr %a.load1412, null
  br i1 %a.null1413, label %a.create1414, label %a.after1415

a.create1414:                                     ; preds = %a.after1402
  %arena.cur1416 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1417 = call ptr @dva_arena_alloc(ptr %arena.cur1416, i64 24)
  %arena.cur1418 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1419 = call ptr @dva_arena_alloc(ptr %arena.cur1418, i64 128)
  %a.len.gep1420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 0
  store i64 0, ptr %a.len.gep1420, align 8
  %a.data.gep1421 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 1
  store ptr %a.buf1419, ptr %a.data.gep1421, align 8
  %a.cap.gep1422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1422, align 8
  store ptr %a.create1417, ptr %var.refs, align 8
  br label %a.after1415

a.after1415:                                      ; preds = %a.create1414, %a.after1402
  %a.load21423 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1397, ptr %a.load21410, ptr %a.load21423)
  br label %choice.exit1394

a.create1430:                                     ; preds = %choice.next1364
  %arena.cur1432 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1433 = call ptr @dva_arena_alloc(ptr %arena.cur1432, i64 24)
  %arena.cur1434 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1435 = call ptr @dva_arena_alloc(ptr %arena.cur1434, i64 128)
  %a.len.gep1436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 0
  store i64 0, ptr %a.len.gep1436, align 8
  %a.data.gep1437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 1
  store ptr %a.buf1435, ptr %a.data.gep1437, align 8
  %a.cap.gep1438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1438, align 8
  store ptr %a.create1433, ptr %var.locals, align 8
  br label %a.after1431

a.after1431:                                      ; preds = %a.create1430, %choice.next1364
  %a.load21439 = load ptr, ptr %var.locals, align 8
  %var.load1440 = load ptr, ptr %var.refs, align 8
  %a.load1441 = load ptr, ptr %var.refs, align 8
  %a.null1442 = icmp eq ptr %a.load1441, null
  br i1 %a.null1442, label %a.create1443, label %a.after1444

a.create1443:                                     ; preds = %a.after1431
  %arena.cur1445 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 24)
  %arena.cur1447 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %choice.exit1362

choice.case1453:                                  ; preds = %choice.next1313
  %pay.gep1458 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1459 = load ptr, ptr %pay.gep1458, align 8
  store ptr %payload.ptr1459, ptr %var._1460, align 8
  store ptr %payload.ptr1459, ptr %var.na, align 8
  %var.load1461 = load ptr, ptr %var.na, align 8
  %fld.gep1462 = getelementptr inbounds { ptr, ptr }, ptr %var.load1461, i32 0, i32 1
  %fld.load1463 = load ptr, ptr %fld.gep1462, align 8
  %var.load1464 = load ptr, ptr %var.locals, align 8
  %a.load1465 = load ptr, ptr %var.locals, align 8
  %a.null1466 = icmp eq ptr %a.load1465, null
  br i1 %a.null1466, label %a.create1467, label %a.after1468

choice.next1454:                                  ; preds = %choice.next1313
  %tag.gep1492 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1493 = load i64, ptr %tag.gep1492, align 8
  %tag.match1494 = icmp eq i64 %tag.id1493, 18
  br i1 %tag.match1494, label %choice.case1490, label %choice.next1491

a.create1467:                                     ; preds = %choice.case1453
  %arena.cur1469 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1470 = call ptr @dva_arena_alloc(ptr %arena.cur1469, i64 24)
  %arena.cur1471 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1472 = call ptr @dva_arena_alloc(ptr %arena.cur1471, i64 128)
  %a.len.gep1473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1470, i32 0, i32 0
  store i64 0, ptr %a.len.gep1473, align 8
  %a.data.gep1474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1470, i32 0, i32 1
  store ptr %a.buf1472, ptr %a.data.gep1474, align 8
  %a.cap.gep1475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1475, align 8
  store ptr %a.create1470, ptr %var.locals, align 8
  br label %a.after1468

a.after1468:                                      ; preds = %a.create1467, %choice.case1453
  %a.load21476 = load ptr, ptr %var.locals, align 8
  %var.load1477 = load ptr, ptr %var.refs, align 8
  %a.load1478 = load ptr, ptr %var.refs, align 8
  %a.null1479 = icmp eq ptr %a.load1478, null
  br i1 %a.null1479, label %a.create1480, label %a.after1481

a.create1480:                                     ; preds = %a.after1468
  %arena.cur1482 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1483 = call ptr @dva_arena_alloc(ptr %arena.cur1482, i64 24)
  %arena.cur1484 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1485 = call ptr @dva_arena_alloc(ptr %arena.cur1484, i64 128)
  %a.len.gep1486 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1483, i32 0, i32 0
  store i64 0, ptr %a.len.gep1486, align 8
  %a.data.gep1487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1483, i32 0, i32 1
  store ptr %a.buf1485, ptr %a.data.gep1487, align 8
  %a.cap.gep1488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1483, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1488, align 8
  store ptr %a.create1483, ptr %var.refs, align 8
  br label %a.after1481

a.after1481:                                      ; preds = %a.create1480, %a.after1468
  %a.load21489 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1463, ptr %a.load21476, ptr %a.load21489)
  br label %choice.exit

choice.case1490:                                  ; preds = %choice.next1454
  %pay.gep1495 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1496 = load ptr, ptr %pay.gep1495, align 8
  store ptr %payload.ptr1496, ptr %var._1497, align 8
  store ptr %payload.ptr1496, ptr %var.v1498, align 8
  %var.load1499 = load ptr, ptr %var.v1498, align 8
  %fld.gep1500 = getelementptr inbounds { ptr, ptr }, ptr %var.load1499, i32 0, i32 1
  %fld.load1501 = load ptr, ptr %fld.gep1500, align 8
  %arr.cycle.len1502 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1501, i32 0, i32 0
  %arr.cycle.len1503 = load i64, ptr %arr.cycle.len1502, align 8
  %arr.cycle.data1504 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1501, i32 0, i32 1
  %arr.cycle.data1505 = load ptr, ptr %arr.cycle.data1504, align 8
  store i64 0, ptr %loop.idx.47, align 8
  %cycle.prev.u1506 = load ptr, ptr %var._1497, align 8
  br label %loop.header.47

choice.next1491:                                  ; preds = %choice.next1454
  %tag.gep1546 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1547 = load i64, ptr %tag.gep1546, align 8
  %tag.match1548 = icmp eq i64 %tag.id1547, 25
  br i1 %tag.match1548, label %choice.case1544, label %choice.next1545

loop.header.47:                                   ; preds = %loop.latch.47, %choice.case1490
  %counter.load1507 = load i64, ptr %loop.idx.47, align 8
  %loop.cond1508 = icmp slt i64 %counter.load1507, %arr.cycle.len1503
  br i1 %loop.cond1508, label %loop.body.47, label %loop.exit.nat.47

loop.body.47:                                     ; preds = %loop.header.47
  %loop.rel.i1509 = sub i64 %counter.load1507, 0
  store i64 1, ptr %loop.step.47, align 8
  %arr.elem.gep1510 = getelementptr i64, ptr %arr.cycle.data1505, i64 %counter.load1507
  %arr.elem.raw1511 = load i64, ptr %arr.elem.gep1510, align 8
  %slot.i2p1512 = inttoptr i64 %arr.elem.raw1511 to ptr
  store i64 %loop.rel.i1509, ptr %var._i1513, align 8
  store ptr %slot.i2p1512, ptr %var._1514, align 8
  store ptr %slot.i2p1512, ptr %var.varg, align 8
  %var.load1515 = load ptr, ptr %var.varg, align 8
  %var.load1516 = load ptr, ptr %var.locals, align 8
  %a.load1517 = load ptr, ptr %var.locals, align 8
  %a.null1518 = icmp eq ptr %a.load1517, null
  br i1 %a.null1518, label %a.create1519, label %a.after1520

loop.exit.nat.47:                                 ; preds = %loop.header.47
  br label %loop.exit.47

loop.latch.47:                                    ; preds = %a.after1533
  %step.val1542 = load i64, ptr %loop.step.47, align 8
  %loop.next1543 = add i64 %counter.load1507, %step.val1542
  store i64 %loop.next1543, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.exit.47:                                     ; preds = %loop.exit.nat.47
  store ptr %cycle.prev.u1506, ptr %var._1497, align 8
  br label %choice.exit

a.create1519:                                     ; preds = %loop.body.47
  %arena.cur1521 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1522 = call ptr @dva_arena_alloc(ptr %arena.cur1521, i64 24)
  %arena.cur1523 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1524 = call ptr @dva_arena_alloc(ptr %arena.cur1523, i64 128)
  %a.len.gep1525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 0
  store i64 0, ptr %a.len.gep1525, align 8
  %a.data.gep1526 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 1
  store ptr %a.buf1524, ptr %a.data.gep1526, align 8
  %a.cap.gep1527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1522, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1527, align 8
  store ptr %a.create1522, ptr %var.locals, align 8
  br label %a.after1520

a.after1520:                                      ; preds = %a.create1519, %loop.body.47
  %a.load21528 = load ptr, ptr %var.locals, align 8
  %var.load1529 = load ptr, ptr %var.refs, align 8
  %a.load1530 = load ptr, ptr %var.refs, align 8
  %a.null1531 = icmp eq ptr %a.load1530, null
  br i1 %a.null1531, label %a.create1532, label %a.after1533

a.create1532:                                     ; preds = %a.after1520
  %arena.cur1534 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1535 = call ptr @dva_arena_alloc(ptr %arena.cur1534, i64 24)
  %arena.cur1536 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1537 = call ptr @dva_arena_alloc(ptr %arena.cur1536, i64 128)
  %a.len.gep1538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 0
  store i64 0, ptr %a.len.gep1538, align 8
  %a.data.gep1539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 1
  store ptr %a.buf1537, ptr %a.data.gep1539, align 8
  %a.cap.gep1540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1540, align 8
  store ptr %a.create1535, ptr %var.refs, align 8
  br label %a.after1533

a.after1533:                                      ; preds = %a.create1532, %a.after1520
  %a.load21541 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1515, ptr %a.load21528, ptr %a.load21541)
  br label %loop.latch.47

choice.case1544:                                  ; preds = %choice.next1491
  %pay.gep1549 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1550 = load ptr, ptr %pay.gep1549, align 8
  store ptr %payload.ptr1550, ptr %var._1551, align 8
  store ptr %payload.ptr1550, ptr %var.cp, align 8
  %var.load1552 = load ptr, ptr %var.cp, align 8
  %var.load1553 = load ptr, ptr %var.locals, align 8
  %a.load1554 = load ptr, ptr %var.locals, align 8
  %a.null1555 = icmp eq ptr %a.load1554, null
  br i1 %a.null1555, label %a.create1556, label %a.after1557

choice.next1545:                                  ; preds = %choice.next1491
  %tag.gep1581 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1582 = load i64, ptr %tag.gep1581, align 8
  %tag.match1583 = icmp eq i64 %tag.id1582, 27
  br i1 %tag.match1583, label %choice.case1579, label %choice.next1580

a.create1556:                                     ; preds = %choice.case1544
  %arena.cur1558 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1559 = call ptr @dva_arena_alloc(ptr %arena.cur1558, i64 24)
  %arena.cur1560 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1561 = call ptr @dva_arena_alloc(ptr %arena.cur1560, i64 128)
  %a.len.gep1562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 0
  store i64 0, ptr %a.len.gep1562, align 8
  %a.data.gep1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 1
  store ptr %a.buf1561, ptr %a.data.gep1563, align 8
  %a.cap.gep1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1564, align 8
  store ptr %a.create1559, ptr %var.locals, align 8
  br label %a.after1557

a.after1557:                                      ; preds = %a.create1556, %choice.case1544
  %a.load21565 = load ptr, ptr %var.locals, align 8
  %var.load1566 = load ptr, ptr %var.refs, align 8
  %a.load1567 = load ptr, ptr %var.refs, align 8
  %a.null1568 = icmp eq ptr %a.load1567, null
  br i1 %a.null1568, label %a.create1569, label %a.after1570

a.create1569:                                     ; preds = %a.after1557
  %arena.cur1571 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1572 = call ptr @dva_arena_alloc(ptr %arena.cur1571, i64 24)
  %arena.cur1573 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1574 = call ptr @dva_arena_alloc(ptr %arena.cur1573, i64 128)
  %a.len.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1572, i32 0, i32 0
  store i64 0, ptr %a.len.gep1575, align 8
  %a.data.gep1576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1572, i32 0, i32 1
  store ptr %a.buf1574, ptr %a.data.gep1576, align 8
  %a.cap.gep1577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1572, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1577, align 8
  store ptr %a.create1572, ptr %var.refs, align 8
  br label %a.after1570

a.after1570:                                      ; preds = %a.create1569, %a.after1557
  %a.load21578 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1552, ptr %a.load21565, ptr %a.load21578)
  br label %choice.exit

choice.case1579:                                  ; preds = %choice.next1545
  %pay.gep1584 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1585 = load ptr, ptr %pay.gep1584, align 8
  store ptr %payload.ptr1585, ptr %var._1586, align 8
  store ptr %payload.ptr1585, ptr %var.bc, align 8
  %var.load1587 = load ptr, ptr %var.bc, align 8
  %var.load1588 = load ptr, ptr %var.locals, align 8
  %a.load1589 = load ptr, ptr %var.locals, align 8
  %a.null1590 = icmp eq ptr %a.load1589, null
  br i1 %a.null1590, label %a.create1591, label %a.after1592

choice.next1580:                                  ; preds = %choice.next1545
  %tag.gep1616 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1617 = load i64, ptr %tag.gep1616, align 8
  %tag.match1618 = icmp eq i64 %tag.id1617, 22
  br i1 %tag.match1618, label %choice.case1614, label %choice.next1615

a.create1591:                                     ; preds = %choice.case1579
  %arena.cur1593 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1594 = call ptr @dva_arena_alloc(ptr %arena.cur1593, i64 24)
  %arena.cur1595 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1596 = call ptr @dva_arena_alloc(ptr %arena.cur1595, i64 128)
  %a.len.gep1597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1594, i32 0, i32 0
  store i64 0, ptr %a.len.gep1597, align 8
  %a.data.gep1598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1594, i32 0, i32 1
  store ptr %a.buf1596, ptr %a.data.gep1598, align 8
  %a.cap.gep1599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1594, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1599, align 8
  store ptr %a.create1594, ptr %var.locals, align 8
  br label %a.after1592

a.after1592:                                      ; preds = %a.create1591, %choice.case1579
  %a.load21600 = load ptr, ptr %var.locals, align 8
  %var.load1601 = load ptr, ptr %var.refs, align 8
  %a.load1602 = load ptr, ptr %var.refs, align 8
  %a.null1603 = icmp eq ptr %a.load1602, null
  br i1 %a.null1603, label %a.create1604, label %a.after1605

a.create1604:                                     ; preds = %a.after1592
  %arena.cur1606 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1607 = call ptr @dva_arena_alloc(ptr %arena.cur1606, i64 24)
  %arena.cur1608 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1609 = call ptr @dva_arena_alloc(ptr %arena.cur1608, i64 128)
  %a.len.gep1610 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1607, i32 0, i32 0
  store i64 0, ptr %a.len.gep1610, align 8
  %a.data.gep1611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1607, i32 0, i32 1
  store ptr %a.buf1609, ptr %a.data.gep1611, align 8
  %a.cap.gep1612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1607, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1612, align 8
  store ptr %a.create1607, ptr %var.refs, align 8
  br label %a.after1605

a.after1605:                                      ; preds = %a.create1604, %a.after1592
  %a.load21613 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1587, ptr %a.load21600, ptr %a.load21613)
  br label %choice.exit

choice.case1614:                                  ; preds = %choice.next1580
  %pay.gep1619 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1620 = load ptr, ptr %pay.gep1619, align 8
  store ptr %payload.ptr1620, ptr %var._1621, align 8
  store ptr %payload.ptr1620, ptr %var.tc, align 8
  %var.load1622 = load ptr, ptr %var.tc, align 8
  %fld.gep1623 = getelementptr inbounds { ptr, ptr }, ptr %var.load1622, i32 0, i32 1
  %fld.load1624 = load ptr, ptr %fld.gep1623, align 8
  %var.load1625 = load ptr, ptr %var.locals, align 8
  %a.load1626 = load ptr, ptr %var.locals, align 8
  %a.null1627 = icmp eq ptr %a.load1626, null
  br i1 %a.null1627, label %a.create1628, label %a.after1629

choice.next1615:                                  ; preds = %choice.next1580
  %tag.gep1653 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1654 = load i64, ptr %tag.gep1653, align 8
  %tag.match1655 = icmp eq i64 %tag.id1654, 30
  br i1 %tag.match1655, label %choice.case1651, label %choice.next1652

a.create1628:                                     ; preds = %choice.case1614
  %arena.cur1630 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1631 = call ptr @dva_arena_alloc(ptr %arena.cur1630, i64 24)
  %arena.cur1632 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1633 = call ptr @dva_arena_alloc(ptr %arena.cur1632, i64 128)
  %a.len.gep1634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 0
  store i64 0, ptr %a.len.gep1634, align 8
  %a.data.gep1635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 1
  store ptr %a.buf1633, ptr %a.data.gep1635, align 8
  %a.cap.gep1636 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1636, align 8
  store ptr %a.create1631, ptr %var.locals, align 8
  br label %a.after1629

a.after1629:                                      ; preds = %a.create1628, %choice.case1614
  %a.load21637 = load ptr, ptr %var.locals, align 8
  %var.load1638 = load ptr, ptr %var.refs, align 8
  %a.load1639 = load ptr, ptr %var.refs, align 8
  %a.null1640 = icmp eq ptr %a.load1639, null
  br i1 %a.null1640, label %a.create1641, label %a.after1642

a.create1641:                                     ; preds = %a.after1629
  %arena.cur1643 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1644 = call ptr @dva_arena_alloc(ptr %arena.cur1643, i64 24)
  %arena.cur1645 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1646 = call ptr @dva_arena_alloc(ptr %arena.cur1645, i64 128)
  %a.len.gep1647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1644, i32 0, i32 0
  store i64 0, ptr %a.len.gep1647, align 8
  %a.data.gep1648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1644, i32 0, i32 1
  store ptr %a.buf1646, ptr %a.data.gep1648, align 8
  %a.cap.gep1649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1644, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1649, align 8
  store ptr %a.create1644, ptr %var.refs, align 8
  br label %a.after1642

a.after1642:                                      ; preds = %a.create1641, %a.after1629
  %a.load21650 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1624, ptr %a.load21637, ptr %a.load21650)
  br label %choice.exit

choice.case1651:                                  ; preds = %choice.next1615
  %pay.gep1656 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1657 = load ptr, ptr %pay.gep1656, align 8
  store ptr %payload.ptr1657, ptr %var._1658, align 8
  store ptr %payload.ptr1657, ptr %var.ct, align 8
  %var.load1659 = load ptr, ptr %var.ct, align 8
  %var.load1660 = load ptr, ptr %var.locals, align 8
  %a.load1661 = load ptr, ptr %var.locals, align 8
  %a.null1662 = icmp eq ptr %a.load1661, null
  br i1 %a.null1662, label %a.create1663, label %a.after1664

choice.next1652:                                  ; preds = %choice.next1615
  %tag.gep1688 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1689 = load i64, ptr %tag.gep1688, align 8
  %tag.match1690 = icmp eq i64 %tag.id1689, 31
  br i1 %tag.match1690, label %choice.case1686, label %choice.next1687

a.create1663:                                     ; preds = %choice.case1651
  %arena.cur1665 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1666 = call ptr @dva_arena_alloc(ptr %arena.cur1665, i64 24)
  %arena.cur1667 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1668 = call ptr @dva_arena_alloc(ptr %arena.cur1667, i64 128)
  %a.len.gep1669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 0
  store i64 0, ptr %a.len.gep1669, align 8
  %a.data.gep1670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 1
  store ptr %a.buf1668, ptr %a.data.gep1670, align 8
  %a.cap.gep1671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1671, align 8
  store ptr %a.create1666, ptr %var.locals, align 8
  br label %a.after1664

a.after1664:                                      ; preds = %a.create1663, %choice.case1651
  %a.load21672 = load ptr, ptr %var.locals, align 8
  %var.load1673 = load ptr, ptr %var.refs, align 8
  %a.load1674 = load ptr, ptr %var.refs, align 8
  %a.null1675 = icmp eq ptr %a.load1674, null
  br i1 %a.null1675, label %a.create1676, label %a.after1677

a.create1676:                                     ; preds = %a.after1664
  %arena.cur1678 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1679 = call ptr @dva_arena_alloc(ptr %arena.cur1678, i64 24)
  %arena.cur1680 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1659, ptr %a.load21672, ptr %a.load21685)
  br label %choice.exit

choice.case1686:                                  ; preds = %choice.next1652
  %pay.gep1691 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1692 = load ptr, ptr %pay.gep1691, align 8
  store ptr %payload.ptr1692, ptr %var._1693, align 8
  store ptr %payload.ptr1692, ptr %var.sp, align 8
  %arena.cur1694 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1694, i64 16)
  %tag.gep1695 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1695, align 8
  %pay.gep1696 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1697 = load ptr, ptr %var.sp, align 8
  store ptr %var.load1697, ptr %pay.gep1696, align 8
  %var.load1698 = load ptr, ptr %var.locals, align 8
  %a.load1699 = load ptr, ptr %var.locals, align 8
  %a.null1700 = icmp eq ptr %a.load1699, null
  br i1 %a.null1700, label %a.create1701, label %a.after1702

choice.next1687:                                  ; preds = %choice.next1652
  %tag.gep1726 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1727 = load i64, ptr %tag.gep1726, align 8
  %tag.match1728 = icmp eq i64 %tag.id1727, 32
  br i1 %tag.match1728, label %choice.case1724, label %choice.next1725

a.create1701:                                     ; preds = %choice.case1686
  %arena.cur1703 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1704 = call ptr @dva_arena_alloc(ptr %arena.cur1703, i64 24)
  %arena.cur1705 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1706 = call ptr @dva_arena_alloc(ptr %arena.cur1705, i64 128)
  %a.len.gep1707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 0
  store i64 0, ptr %a.len.gep1707, align 8
  %a.data.gep1708 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 1
  store ptr %a.buf1706, ptr %a.data.gep1708, align 8
  %a.cap.gep1709 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1709, align 8
  store ptr %a.create1704, ptr %var.locals, align 8
  br label %a.after1702

a.after1702:                                      ; preds = %a.create1701, %choice.case1686
  %a.load21710 = load ptr, ptr %var.locals, align 8
  %var.load1711 = load ptr, ptr %var.refs, align 8
  %a.load1712 = load ptr, ptr %var.refs, align 8
  %a.null1713 = icmp eq ptr %a.load1712, null
  br i1 %a.null1713, label %a.create1714, label %a.after1715

a.create1714:                                     ; preds = %a.after1702
  %arena.cur1716 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1717 = call ptr @dva_arena_alloc(ptr %arena.cur1716, i64 24)
  %arena.cur1718 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1719 = call ptr @dva_arena_alloc(ptr %arena.cur1718, i64 128)
  %a.len.gep1720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1717, i32 0, i32 0
  store i64 0, ptr %a.len.gep1720, align 8
  %a.data.gep1721 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1717, i32 0, i32 1
  store ptr %a.buf1719, ptr %a.data.gep1721, align 8
  %a.cap.gep1722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1717, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1722, align 8
  store ptr %a.create1717, ptr %var.refs, align 8
  br label %a.after1715

a.after1715:                                      ; preds = %a.create1714, %a.after1702
  %a.load21723 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21710, ptr %a.load21723)
  br label %choice.exit

choice.case1724:                                  ; preds = %choice.next1687
  %pay.gep1729 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1730 = load ptr, ptr %pay.gep1729, align 8
  store ptr %payload.ptr1730, ptr %var._1731, align 8
  store ptr %payload.ptr1730, ptr %var.jn, align 8
  %var.load1732 = load ptr, ptr %var.jn, align 8
  %var.load1733 = load ptr, ptr %var.locals, align 8
  %a.load1734 = load ptr, ptr %var.locals, align 8
  %a.null1735 = icmp eq ptr %a.load1734, null
  br i1 %a.null1735, label %a.create1736, label %a.after1737

choice.next1725:                                  ; preds = %choice.next1687
  %tag.gep1761 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1762 = load i64, ptr %tag.gep1761, align 8
  %tag.match1763 = icmp eq i64 %tag.id1762, 33
  br i1 %tag.match1763, label %choice.case1759, label %choice.next1760

a.create1736:                                     ; preds = %choice.case1724
  %arena.cur1738 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1739 = call ptr @dva_arena_alloc(ptr %arena.cur1738, i64 24)
  %arena.cur1740 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1741 = call ptr @dva_arena_alloc(ptr %arena.cur1740, i64 128)
  %a.len.gep1742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1739, i32 0, i32 0
  store i64 0, ptr %a.len.gep1742, align 8
  %a.data.gep1743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1739, i32 0, i32 1
  store ptr %a.buf1741, ptr %a.data.gep1743, align 8
  %a.cap.gep1744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1739, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1744, align 8
  store ptr %a.create1739, ptr %var.locals, align 8
  br label %a.after1737

a.after1737:                                      ; preds = %a.create1736, %choice.case1724
  %a.load21745 = load ptr, ptr %var.locals, align 8
  %var.load1746 = load ptr, ptr %var.refs, align 8
  %a.load1747 = load ptr, ptr %var.refs, align 8
  %a.null1748 = icmp eq ptr %a.load1747, null
  br i1 %a.null1748, label %a.create1749, label %a.after1750

a.create1749:                                     ; preds = %a.after1737
  %arena.cur1751 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1752 = call ptr @dva_arena_alloc(ptr %arena.cur1751, i64 24)
  %arena.cur1753 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1754 = call ptr @dva_arena_alloc(ptr %arena.cur1753, i64 128)
  %a.len.gep1755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1752, i32 0, i32 0
  store i64 0, ptr %a.len.gep1755, align 8
  %a.data.gep1756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1752, i32 0, i32 1
  store ptr %a.buf1754, ptr %a.data.gep1756, align 8
  %a.cap.gep1757 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1752, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1757, align 8
  store ptr %a.create1752, ptr %var.refs, align 8
  br label %a.after1750

a.after1750:                                      ; preds = %a.create1749, %a.after1737
  %a.load21758 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1732, ptr %a.load21745, ptr %a.load21758)
  br label %choice.exit

choice.case1759:                                  ; preds = %choice.next1725
  %pay.gep1764 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1765 = load ptr, ptr %pay.gep1764, align 8
  store ptr %payload.ptr1765, ptr %var._1766, align 8
  store ptr %payload.ptr1765, ptr %var.ex, align 8
  %var.load1767 = load ptr, ptr %var.ex, align 8
  %var.load1768 = load ptr, ptr %var.locals, align 8
  %a.load1769 = load ptr, ptr %var.locals, align 8
  %a.null1770 = icmp eq ptr %a.load1769, null
  br i1 %a.null1770, label %a.create1771, label %a.after1772

choice.next1760:                                  ; preds = %choice.next1725
  %tag.gep1796 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1797 = load i64, ptr %tag.gep1796, align 8
  %tag.match1798 = icmp eq i64 %tag.id1797, 38
  br i1 %tag.match1798, label %choice.case1794, label %choice.next1795

a.create1771:                                     ; preds = %choice.case1759
  %arena.cur1773 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1774 = call ptr @dva_arena_alloc(ptr %arena.cur1773, i64 24)
  %arena.cur1775 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1776 = call ptr @dva_arena_alloc(ptr %arena.cur1775, i64 128)
  %a.len.gep1777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1774, i32 0, i32 0
  store i64 0, ptr %a.len.gep1777, align 8
  %a.data.gep1778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1774, i32 0, i32 1
  store ptr %a.buf1776, ptr %a.data.gep1778, align 8
  %a.cap.gep1779 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1774, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1779, align 8
  store ptr %a.create1774, ptr %var.locals, align 8
  br label %a.after1772

a.after1772:                                      ; preds = %a.create1771, %choice.case1759
  %a.load21780 = load ptr, ptr %var.locals, align 8
  %var.load1781 = load ptr, ptr %var.refs, align 8
  %a.load1782 = load ptr, ptr %var.refs, align 8
  %a.null1783 = icmp eq ptr %a.load1782, null
  br i1 %a.null1783, label %a.create1784, label %a.after1785

a.create1784:                                     ; preds = %a.after1772
  %arena.cur1786 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1787 = call ptr @dva_arena_alloc(ptr %arena.cur1786, i64 24)
  %arena.cur1788 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1789 = call ptr @dva_arena_alloc(ptr %arena.cur1788, i64 128)
  %a.len.gep1790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1787, i32 0, i32 0
  store i64 0, ptr %a.len.gep1790, align 8
  %a.data.gep1791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1787, i32 0, i32 1
  store ptr %a.buf1789, ptr %a.data.gep1791, align 8
  %a.cap.gep1792 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1787, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1792, align 8
  store ptr %a.create1787, ptr %var.refs, align 8
  br label %a.after1785

a.after1785:                                      ; preds = %a.create1784, %a.after1772
  %a.load21793 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1767, ptr %a.load21780, ptr %a.load21793)
  br label %choice.exit

choice.case1794:                                  ; preds = %choice.next1760
  %pay.gep1799 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1800 = load ptr, ptr %pay.gep1799, align 8
  store ptr %payload.ptr1800, ptr %var._1801, align 8
  store ptr %payload.ptr1800, ptr %var.ud, align 8
  %var.load1802 = load ptr, ptr %var.ud, align 8
  %fld.gep1803 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1802, i32 0, i32 1
  %fld.load1804 = load ptr, ptr %fld.gep1803, align 8
  %var.load1805 = load ptr, ptr %var.locals, align 8
  %a.load1806 = load ptr, ptr %var.locals, align 8
  %a.null1807 = icmp eq ptr %a.load1806, null
  br i1 %a.null1807, label %a.create1808, label %a.after1809

choice.next1795:                                  ; preds = %choice.next1760
  %tag.gep1833 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1834 = load i64, ptr %tag.gep1833, align 8
  %tag.match1835 = icmp eq i64 %tag.id1834, 37
  br i1 %tag.match1835, label %choice.case1831, label %choice.next1832

a.create1808:                                     ; preds = %choice.case1794
  %arena.cur1810 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1811 = call ptr @dva_arena_alloc(ptr %arena.cur1810, i64 24)
  %arena.cur1812 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1813 = call ptr @dva_arena_alloc(ptr %arena.cur1812, i64 128)
  %a.len.gep1814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1811, i32 0, i32 0
  store i64 0, ptr %a.len.gep1814, align 8
  %a.data.gep1815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1811, i32 0, i32 1
  store ptr %a.buf1813, ptr %a.data.gep1815, align 8
  %a.cap.gep1816 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1811, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1816, align 8
  store ptr %a.create1811, ptr %var.locals, align 8
  br label %a.after1809

a.after1809:                                      ; preds = %a.create1808, %choice.case1794
  %a.load21817 = load ptr, ptr %var.locals, align 8
  %var.load1818 = load ptr, ptr %var.refs, align 8
  %a.load1819 = load ptr, ptr %var.refs, align 8
  %a.null1820 = icmp eq ptr %a.load1819, null
  br i1 %a.null1820, label %a.create1821, label %a.after1822

a.create1821:                                     ; preds = %a.after1809
  %arena.cur1823 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1824 = call ptr @dva_arena_alloc(ptr %arena.cur1823, i64 24)
  %arena.cur1825 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1826 = call ptr @dva_arena_alloc(ptr %arena.cur1825, i64 128)
  %a.len.gep1827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1824, i32 0, i32 0
  store i64 0, ptr %a.len.gep1827, align 8
  %a.data.gep1828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1824, i32 0, i32 1
  store ptr %a.buf1826, ptr %a.data.gep1828, align 8
  %a.cap.gep1829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1824, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1829, align 8
  store ptr %a.create1824, ptr %var.refs, align 8
  br label %a.after1822

a.after1822:                                      ; preds = %a.create1821, %a.after1809
  %a.load21830 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1804, ptr %a.load21817, ptr %a.load21830)
  br label %choice.exit

choice.case1831:                                  ; preds = %choice.next1795
  %pay.gep1836 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1837 = load ptr, ptr %pay.gep1836, align 8
  store ptr %payload.ptr1837, ptr %var._1838, align 8
  store ptr %payload.ptr1837, ptr %var.r1839, align 8
  %var.load1840 = load ptr, ptr %var.r1839, align 8
  %fld.gep1841 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1840, i32 0, i32 0
  %fld.load1842 = load i1, ptr %fld.gep1841, align 1
  br i1 %fld.load1842, label %choice.then1843, label %choice.exit1844

choice.next1832:                                  ; preds = %choice.next1795
  %tag.gep1876 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1877 = load i64, ptr %tag.gep1876, align 8
  %tag.match1878 = icmp eq i64 %tag.id1877, 29
  br i1 %tag.match1878, label %choice.case1874, label %choice.next1875

choice.then1843:                                  ; preds = %choice.case1831
  %var.load1845 = load ptr, ptr %var.r1839, align 8
  %fld.gep1846 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1845, i32 0, i32 1
  %fld.load1847 = load ptr, ptr %fld.gep1846, align 8
  %var.load1848 = load ptr, ptr %var.locals, align 8
  %a.load1849 = load ptr, ptr %var.locals, align 8
  %a.null1850 = icmp eq ptr %a.load1849, null
  br i1 %a.null1850, label %a.create1851, label %a.after1852

choice.exit1844:                                  ; preds = %a.after1865, %choice.case1831
  br label %choice.exit

a.create1851:                                     ; preds = %choice.then1843
  %arena.cur1853 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1854 = call ptr @dva_arena_alloc(ptr %arena.cur1853, i64 24)
  %arena.cur1855 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1856 = call ptr @dva_arena_alloc(ptr %arena.cur1855, i64 128)
  %a.len.gep1857 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1854, i32 0, i32 0
  store i64 0, ptr %a.len.gep1857, align 8
  %a.data.gep1858 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1854, i32 0, i32 1
  store ptr %a.buf1856, ptr %a.data.gep1858, align 8
  %a.cap.gep1859 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1854, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1859, align 8
  store ptr %a.create1854, ptr %var.locals, align 8
  br label %a.after1852

a.after1852:                                      ; preds = %a.create1851, %choice.then1843
  %a.load21860 = load ptr, ptr %var.locals, align 8
  %var.load1861 = load ptr, ptr %var.refs, align 8
  %a.load1862 = load ptr, ptr %var.refs, align 8
  %a.null1863 = icmp eq ptr %a.load1862, null
  br i1 %a.null1863, label %a.create1864, label %a.after1865

a.create1864:                                     ; preds = %a.after1852
  %arena.cur1866 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1867 = call ptr @dva_arena_alloc(ptr %arena.cur1866, i64 24)
  %arena.cur1868 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1869 = call ptr @dva_arena_alloc(ptr %arena.cur1868, i64 128)
  %a.len.gep1870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1867, i32 0, i32 0
  store i64 0, ptr %a.len.gep1870, align 8
  %a.data.gep1871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1867, i32 0, i32 1
  store ptr %a.buf1869, ptr %a.data.gep1871, align 8
  %a.cap.gep1872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1867, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1872, align 8
  store ptr %a.create1867, ptr %var.refs, align 8
  br label %a.after1865

a.after1865:                                      ; preds = %a.create1864, %a.after1852
  %a.load21873 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1847, ptr %a.load21860, ptr %a.load21873)
  br label %choice.exit1844

choice.case1874:                                  ; preds = %choice.next1832
  %pay.gep1879 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1880 = load ptr, ptr %pay.gep1879, align 8
  store ptr %payload.ptr1880, ptr %var._1881, align 8
  store ptr %payload.ptr1880, ptr %var.m1882, align 8
  %var.load1883 = load ptr, ptr %var.m1882, align 8
  %a.load1884 = load ptr, ptr %var.m1882, align 8
  %a.null1885 = icmp eq ptr %a.load1884, null
  br i1 %a.null1885, label %a.create1886, label %a.after1887

choice.next1875:                                  ; preds = %choice.next1832
  %tag.gep1972 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1973 = load i64, ptr %tag.gep1972, align 8
  %tag.match1974 = icmp eq i64 %tag.id1973, 19
  br i1 %tag.match1974, label %choice.case1970, label %choice.next1971

a.create1886:                                     ; preds = %choice.case1874
  %arena.cur1888 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1889 = call ptr @dva_arena_alloc(ptr %arena.cur1888, i64 24)
  %arena.cur1890 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1891 = call ptr @dva_arena_alloc(ptr %arena.cur1890, i64 128)
  %a.len.gep1892 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1889, i32 0, i32 0
  store i64 0, ptr %a.len.gep1892, align 8
  %a.data.gep1893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1889, i32 0, i32 1
  store ptr %a.buf1891, ptr %a.data.gep1893, align 8
  %a.cap.gep1894 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1889, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1894, align 8
  store ptr %a.create1889, ptr %var.m1882, align 8
  br label %a.after1887

a.after1887:                                      ; preds = %a.create1886, %choice.case1874
  %a.load21895 = load ptr, ptr %var.m1882, align 8
  %arr.cycle.len1896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21895, i32 0, i32 0
  %arr.cycle.len1897 = load i64, ptr %arr.cycle.len1896, align 8
  %arr.cycle.data1898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21895, i32 0, i32 1
  %arr.cycle.data1899 = load ptr, ptr %arr.cycle.data1898, align 8
  store i64 0, ptr %loop.idx.48, align 8
  %cycle.prev.u1901 = load ptr, ptr %var._1881, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %a.after1887
  %counter.load1902 = load i64, ptr %loop.idx.48, align 8
  %loop.cond1903 = icmp slt i64 %counter.load1902, %arr.cycle.len1897
  br i1 %loop.cond1903, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i1904 = sub i64 %counter.load1902, 0
  store i64 1, ptr %loop.step.48, align 8
  %arr.elem.gep1905 = getelementptr i64, ptr %arr.cycle.data1899, i64 %counter.load1902
  %arr.elem.raw1906 = load i64, ptr %arr.elem.gep1905, align 8
  %slot.i2p1907 = inttoptr i64 %arr.elem.raw1906 to ptr
  store i64 %loop.rel.i1904, ptr %var._i1908, align 8
  store ptr %slot.i2p1907, ptr %var._1909, align 8
  store ptr %slot.i2p1907, ptr %var.p1900, align 8
  %var.load1910 = load ptr, ptr %var.p1900, align 8
  %fld.gep1911 = getelementptr inbounds { ptr, ptr }, ptr %var.load1910, i32 0, i32 0
  %fld.load1912 = load ptr, ptr %fld.gep1911, align 8
  %var.load1913 = load ptr, ptr %var.locals, align 8
  %a.load1914 = load ptr, ptr %var.locals, align 8
  %a.null1915 = icmp eq ptr %a.load1914, null
  br i1 %a.null1915, label %a.create1916, label %a.after1917

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %a.after1959
  %step.val1968 = load i64, ptr %loop.step.48, align 8
  %loop.next1969 = add i64 %counter.load1902, %step.val1968
  store i64 %loop.next1969, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  store ptr %cycle.prev.u1901, ptr %var._1881, align 8
  br label %choice.exit

a.create1916:                                     ; preds = %loop.body.48
  %arena.cur1918 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1919 = call ptr @dva_arena_alloc(ptr %arena.cur1918, i64 24)
  %arena.cur1920 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1921 = call ptr @dva_arena_alloc(ptr %arena.cur1920, i64 128)
  %a.len.gep1922 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1919, i32 0, i32 0
  store i64 0, ptr %a.len.gep1922, align 8
  %a.data.gep1923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1919, i32 0, i32 1
  store ptr %a.buf1921, ptr %a.data.gep1923, align 8
  %a.cap.gep1924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1919, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1924, align 8
  store ptr %a.create1919, ptr %var.locals, align 8
  br label %a.after1917

a.after1917:                                      ; preds = %a.create1916, %loop.body.48
  %a.load21925 = load ptr, ptr %var.locals, align 8
  %var.load1926 = load ptr, ptr %var.refs, align 8
  %a.load1927 = load ptr, ptr %var.refs, align 8
  %a.null1928 = icmp eq ptr %a.load1927, null
  br i1 %a.null1928, label %a.create1929, label %a.after1930

a.create1929:                                     ; preds = %a.after1917
  %arena.cur1931 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1932 = call ptr @dva_arena_alloc(ptr %arena.cur1931, i64 24)
  %arena.cur1933 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1934 = call ptr @dva_arena_alloc(ptr %arena.cur1933, i64 128)
  %a.len.gep1935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 0
  store i64 0, ptr %a.len.gep1935, align 8
  %a.data.gep1936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 1
  store ptr %a.buf1934, ptr %a.data.gep1936, align 8
  %a.cap.gep1937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1937, align 8
  store ptr %a.create1932, ptr %var.refs, align 8
  br label %a.after1930

a.after1930:                                      ; preds = %a.create1929, %a.after1917
  %a.load21938 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1912, ptr %a.load21925, ptr %a.load21938)
  %var.load1939 = load ptr, ptr %var.p1900, align 8
  %fld.gep1940 = getelementptr inbounds { ptr, ptr }, ptr %var.load1939, i32 0, i32 1
  %fld.load1941 = load ptr, ptr %fld.gep1940, align 8
  %var.load1942 = load ptr, ptr %var.locals, align 8
  %a.load1943 = load ptr, ptr %var.locals, align 8
  %a.null1944 = icmp eq ptr %a.load1943, null
  br i1 %a.null1944, label %a.create1945, label %a.after1946

a.create1945:                                     ; preds = %a.after1930
  %arena.cur1947 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1948 = call ptr @dva_arena_alloc(ptr %arena.cur1947, i64 24)
  %arena.cur1949 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1950 = call ptr @dva_arena_alloc(ptr %arena.cur1949, i64 128)
  %a.len.gep1951 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1948, i32 0, i32 0
  store i64 0, ptr %a.len.gep1951, align 8
  %a.data.gep1952 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1948, i32 0, i32 1
  store ptr %a.buf1950, ptr %a.data.gep1952, align 8
  %a.cap.gep1953 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1948, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1953, align 8
  store ptr %a.create1948, ptr %var.locals, align 8
  br label %a.after1946

a.after1946:                                      ; preds = %a.create1945, %a.after1930
  %a.load21954 = load ptr, ptr %var.locals, align 8
  %var.load1955 = load ptr, ptr %var.refs, align 8
  %a.load1956 = load ptr, ptr %var.refs, align 8
  %a.null1957 = icmp eq ptr %a.load1956, null
  br i1 %a.null1957, label %a.create1958, label %a.after1959

a.create1958:                                     ; preds = %a.after1946
  %arena.cur1960 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1961 = call ptr @dva_arena_alloc(ptr %arena.cur1960, i64 24)
  %arena.cur1962 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1963 = call ptr @dva_arena_alloc(ptr %arena.cur1962, i64 128)
  %a.len.gep1964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1961, i32 0, i32 0
  store i64 0, ptr %a.len.gep1964, align 8
  %a.data.gep1965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1961, i32 0, i32 1
  store ptr %a.buf1963, ptr %a.data.gep1965, align 8
  %a.cap.gep1966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1961, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1966, align 8
  store ptr %a.create1961, ptr %var.refs, align 8
  br label %a.after1959

a.after1959:                                      ; preds = %a.create1958, %a.after1946
  %a.load21967 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1941, ptr %a.load21954, ptr %a.load21967)
  br label %loop.latch.48

choice.case1970:                                  ; preds = %choice.next1875
  %pay.gep1975 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1976 = load ptr, ptr %pay.gep1975, align 8
  store ptr %payload.ptr1976, ptr %var._1977, align 8
  store ptr %payload.ptr1976, ptr %var.rm, align 8
  %var.load1978 = load ptr, ptr %var.rm, align 8
  %fld.gep1979 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load1978, i32 0, i32 0
  %fld.load1980 = load ptr, ptr %fld.gep1979, align 8
  %var.load1981 = load ptr, ptr %var.locals, align 8
  %a.load1982 = load ptr, ptr %var.locals, align 8
  %a.null1983 = icmp eq ptr %a.load1982, null
  br i1 %a.null1983, label %a.create1984, label %a.after1985

choice.next1971:                                  ; preds = %choice.next1875
  br label %choice.exit

a.create1984:                                     ; preds = %choice.case1970
  %arena.cur1986 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1987 = call ptr @dva_arena_alloc(ptr %arena.cur1986, i64 24)
  %arena.cur1988 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1989 = call ptr @dva_arena_alloc(ptr %arena.cur1988, i64 128)
  %a.len.gep1990 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 0
  store i64 0, ptr %a.len.gep1990, align 8
  %a.data.gep1991 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 1
  store ptr %a.buf1989, ptr %a.data.gep1991, align 8
  %a.cap.gep1992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1992, align 8
  store ptr %a.create1987, ptr %var.locals, align 8
  br label %a.after1985

a.after1985:                                      ; preds = %a.create1984, %choice.case1970
  %a.load21993 = load ptr, ptr %var.locals, align 8
  %var.load1994 = load ptr, ptr %var.refs, align 8
  %a.load1995 = load ptr, ptr %var.refs, align 8
  %a.null1996 = icmp eq ptr %a.load1995, null
  br i1 %a.null1996, label %a.create1997, label %a.after1998

a.create1997:                                     ; preds = %a.after1985
  %arena.cur1999 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2000 = call ptr @dva_arena_alloc(ptr %arena.cur1999, i64 24)
  %arena.cur2001 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2002 = call ptr @dva_arena_alloc(ptr %arena.cur2001, i64 128)
  %a.len.gep2003 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2000, i32 0, i32 0
  store i64 0, ptr %a.len.gep2003, align 8
  %a.data.gep2004 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2000, i32 0, i32 1
  store ptr %a.buf2002, ptr %a.data.gep2004, align 8
  %a.cap.gep2005 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2000, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2005, align 8
  store ptr %a.create2000, ptr %var.refs, align 8
  br label %a.after1998

a.after1998:                                      ; preds = %a.create1997, %a.after1985
  %a.load22006 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1980, ptr %a.load21993, ptr %a.load22006)
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i64 @"dep_graph::find_node_idx"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._93 = alloca ptr, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data6, i64 %mk.len8)
  %m.capm1 = sub i64 %m.cap3, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

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

str_ok13:                                         ; preds = %tag.slow_check18, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen19 = load i64, ptr %mk.nlen, align 8
  %mk.nlen20 = and i64 %mk.nlen19, 281474976710655
  %str.tag21 = lshr i64 %mk.nlen19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current25 = icmp eq i64 %str.tag21, %active.gen24
  %tag.fast.ok26 = or i1 %tag.immortal23, %tag.current25
  br i1 %tag.fast.ok26, label %str_ok22, label %tag.slow_check27

tag.slow_check18:                                 ; preds = %m.mem.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str_ok22:                                         ; preds = %tag.slow_check27, %str_ok13
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen20
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.slow_check27:                                 ; preds = %str_ok13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag21)
  br label %str_ok22

mk.eq.then:                                       ; preds = %str_ok22
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata28 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata29 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata28, ptr %mk.ndata29, i64 %mk.nlen20)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok22
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
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit90
  %choice.res122 = phi i64 [ %var.load121, %choice.exit90 ], [ -1, %choice.else ]
  ret i64 %choice.res122

str_ok45:                                         ; preds = %tag.slow_check50, %choice.then
  %hash.str51 = call i64 @dva_hash_string(ptr %mk.data40, i64 %mk.len43)
  %m.capm152 = sub i64 %m.cap33, 1
  %m.idx053 = and i64 %hash.str51, %m.capm152
  br label %m.rd.loop

tag.slow_check50:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

m.rd.loop:                                        ; preds = %m.rd.next, %str_ok45
  %m.rd.idx = phi i64 [ %m.idx053, %str_ok45 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe54 = phi i64 [ 0, %str_ok45 ], [ %m.rd.probe.next, %m.rd.next ]
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
  %m.rd.key.slot = getelementptr i64, ptr %m.keys35, i64 %m.rd.idx
  %mk.stored55 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen56 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 0
  %mk.slen57 = load i64, ptr %mk.slen56, align 8
  %mk.slen58 = and i64 %mk.slen57, 281474976710655
  %str.tag59 = lshr i64 %mk.slen57, 48
  %tag.immortal61 = icmp eq i64 %str.tag59, 0
  %active.gen62 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current63 = icmp eq i64 %str.tag59, %active.gen62
  %tag.fast.ok64 = or i1 %tag.immortal61, %tag.current63
  br i1 %tag.fast.ok64, label %str_ok60, label %tag.slow_check65

m.rd.next:                                        ; preds = %mk.eq.merge79, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm152
  %m.rd.probe.next = add i64 %m.rd.probe54, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %ram.tag87 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag87, label %choice.then88, label %choice.else89

str_ok60:                                         ; preds = %tag.slow_check65, %m.rd.found
  %mk.nlen66 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %mk.nlen67 = load i64, ptr %mk.nlen66, align 8
  %mk.nlen68 = and i64 %mk.nlen67, 281474976710655
  %str.tag69 = lshr i64 %mk.nlen67, 48
  %tag.immortal71 = icmp eq i64 %str.tag69, 0
  %active.gen72 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current73 = icmp eq i64 %str.tag69, %active.gen72
  %tag.fast.ok74 = or i1 %tag.immortal71, %tag.current73
  br i1 %tag.fast.ok74, label %str_ok70, label %tag.slow_check75

tag.slow_check65:                                 ; preds = %m.rd.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag59)
  br label %str_ok60

str_ok70:                                         ; preds = %tag.slow_check75, %str_ok60
  %mk.lenseq76 = icmp eq i64 %mk.slen58, %mk.nlen68
  br i1 %mk.lenseq76, label %mk.eq.then77, label %mk.eq.else78

tag.slow_check75:                                 ; preds = %str_ok60
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag69)
  br label %str_ok70

mk.eq.then77:                                     ; preds = %str_ok70
  %mk.sdata80 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 1
  %mk.sdata81 = load ptr, ptr %mk.sdata80, align 8
  %mk.ndata82 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %mk.ndata83 = load ptr, ptr %mk.ndata82, align 8
  %mk.memcmp84 = call i32 @memcmp(ptr %mk.sdata81, ptr %mk.ndata83, i64 %mk.nlen68)
  %mk.cmpeq85 = icmp eq i32 %mk.memcmp84, 0
  br label %mk.eq.merge79

mk.eq.else78:                                     ; preds = %str_ok70
  br label %mk.eq.merge79

mk.eq.merge79:                                    ; preds = %mk.eq.else78, %mk.eq.then77
  %mk.eq86 = phi i1 [ %mk.cmpeq85, %mk.eq.then77 ], [ false, %mk.eq.else78 ]
  br i1 %mk.eq86, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.merge79
  %m.rd.val.slot = getelementptr i64, ptr %m.vals36, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then88:                                    ; preds = %m.rd.done
  %ram.pay91 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay91, ptr %var._, align 8
  br label %choice.exit90

choice.else89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay92 to ptr
  store ptr %pay.ptr, ptr %var._93, align 8
  store ptr %pay.ptr, ptr %var._94, align 8
  store ptr %pay.ptr, ptr %var._95, align 8
  %err.code.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep96, align 8
  %err.msg.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep97, align 8
  %err.file.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep98, align 8
  %err.line.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep99, align 8
  %err.col.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep100, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len101 = load i64, ptr %err.msg.len, align 8
  %err.msg.len102 = and i64 %err.msg.len101, 281474976710655
  %str.tag103 = lshr i64 %err.msg.len101, 48
  %tag.immortal105 = icmp eq i64 %str.tag103, 0
  %active.gen106 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current107 = icmp eq i64 %str.tag103, %active.gen106
  %tag.fast.ok108 = or i1 %tag.immortal105, %tag.current107
  br i1 %tag.fast.ok108, label %str_ok104, label %tag.slow_check109

choice.exit90:                                    ; preds = %err.abort, %choice.then88
  %choice.res = phi i64 [ %ram.pay91, %choice.then88 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load121 = load i64, ptr %var.idx, align 8
  br label %choice.exit

str_ok104:                                        ; preds = %tag.slow_check109, %choice.else89
  %err.msg.len32 = trunc i64 %err.msg.len102 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data110 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len111 = load i64, ptr %err.file.len, align 8
  %err.file.len112 = and i64 %err.file.len111, 281474976710655
  %str.tag113 = lshr i64 %err.file.len111, 48
  %tag.immortal115 = icmp eq i64 %str.tag113, 0
  %active.gen116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current117 = icmp eq i64 %str.tag113, %active.gen116
  %tag.fast.ok118 = or i1 %tag.immortal115, %tag.current117
  br i1 %tag.fast.ok118, label %str_ok114, label %tag.slow_check119

tag.slow_check109:                                ; preds = %choice.else89
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag103)
  br label %str_ok104

str_ok114:                                        ; preds = %tag.slow_check119, %str_ok104
  %err.file.len32 = trunc i64 %err.file.len112 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data120 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check119:                                ; preds = %str_ok104
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag113)
  br label %str_ok114

err.thread:                                       ; preds = %str_ok114
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok114
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data110, i32 %err.file.len32, ptr %err.file.data120, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit90
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
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.51.then, label %and.51.else

and.51.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.a, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 7
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
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
  %view.data = getelementptr i8, ptr %s.read.data8, i64 %final.start
  %cmp.str = load i64, ptr @str.9.struct, align 8
  %cmp.str9 = and i64 %cmp.str, 281474976710655
  %cmp.str10 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.51.else:                                      ; preds = %entry
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %str.eq.merge
  %and.51.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.51.else ]
  store i1 %and.51.phi, ptr %var.is_ct, align 1
  %var.load11 = load ptr, ptr %var.a, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load11, i32 0, i32 8
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str.eq.then:                                      ; preds = %and.51.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str10, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.51.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.51.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp18, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load19 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load19, label %or.52.then, label %or.52.else

choice.case:                                      ; preds = %and.51.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load14 = load ptr, ptr %var.f, align 8
  %fld.gep15 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load16, i32 0, i32 0
  %a.len.query17 = load i64, ptr %a.len.query, align 8
  %cmptmp18 = icmp sgt i64 %a.len.query17, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.51.exit
  br label %choice.exit

or.52.then:                                       ; preds = %choice.exit
  br label %or.52.exit

or.52.else:                                       ; preds = %choice.exit
  %var.load20 = load i1, ptr %var.is_ti, align 1
  br label %or.52.exit

or.52.exit:                                       ; preds = %or.52.else, %or.52.then
  %or.52.phi = phi i1 [ %var.load19, %or.52.then ], [ %var.load20, %or.52.else ]
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
  store ptr %a.create1, ptr %var.nodes, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.nodes, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 48)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 64)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 64)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %m.new, ptr %rec.fld8, align 8
  store ptr %rec.alloc, ptr %var.graph, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 48)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 64)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 64)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 24)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 48)
  %arena.cur250 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 64)
  %arena.cur252 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 64)
  %arena.cur254 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 %m.gv.bytes)
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 24)
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 %m.gk.bytes455)
  %m.gv.bytes458 = mul i64 %m.new.cap454, 8
  %arena.cur459 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 %m.gv.bytes458)
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur648 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 24)
  %arena.cur650 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur770 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur770, i64 24)
  %arena.cur771 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur779 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 24)
  %arena.cur781 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur791 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create792 = call ptr @dva_arena_alloc(ptr %arena.cur791, i64 24)
  %arena.cur793 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur799 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 24)
  %arena.cur801 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur808 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur808, i64 16)
  store { i64, ptr } %call.res807, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.mod2, align 8
  %var.load809 = load ptr, ptr %var.raw_refs, align 8
  %a.load810 = load ptr, ptr %var.raw_refs, align 8
  %a.null811 = icmp eq ptr %a.load810, null
  br i1 %a.null811, label %a.create812, label %a.after813

a.create812:                                      ; preds = %a.after790
  %arena.cur814 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 24)
  %arena.cur816 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur838 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur862 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create863 = call ptr @dva_arena_alloc(ptr %arena.cur862, i64 24)
  %arena.cur864 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur880 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 24)
  %arena.cur882 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur1047 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk1048 = call ptr @dva_arena_alloc(ptr %arena.cur1047, i64 %m.gk.bytes1046)
  %m.gv.bytes1049 = mul i64 %m.new.cap1045, 8
  %arena.cur1050 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv1051 = call ptr @dva_arena_alloc(ptr %arena.cur1050, i64 %m.gv.bytes1049)
  %arena.cur1052 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur1239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1240 = call ptr @dva_arena_alloc(ptr %arena.cur1239, i64 24)
  %arena.cur1241 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur1248 = load ptr, ptr @dva_active_arena_tls, align 8
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

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
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 24)
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store ptr %a.create134, ptr %var.lowlinks, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.after119
  %a.load2140 = load ptr, ptr %var.lowlinks, align 8
  %var.load141 = load ptr, ptr %var.on_stack, align 8
  %a.load142 = load ptr, ptr %var.on_stack, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

a.create144:                                      ; preds = %a.after132
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 24)
  %arena.cur174 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var._190 = alloca ptr, align 8
  %var._189 = alloca ptr, align 8
  %var._188 = alloca ptr, align 8
  %var._88 = alloca ptr, align 8
  %var._87 = alloca ptr, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var.load29 = load ptr, ptr %var.state, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load29, i32 0, i32 3
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  store ptr %fld.load31, ptr %var.stk, align 8
  %var.load32 = load i64, ptr %var.sp, align 8
  %var.load33 = load ptr, ptr %var.stk, align 8
  %a.load34 = load ptr, ptr %var.stk, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

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
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data25 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len26 = load i64, ptr %err.file.len, align 8
  %err.file.len27 = and i64 %err.file.len26, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len27 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data28 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.71
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.71
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data25, i32 %err.file.len32, ptr %err.file.data28, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create36:                                       ; preds = %unwrap.pos.71
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  %a.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 0
  store i64 0, ptr %a.len.gep42, align 8
  %a.data.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf41, ptr %a.data.gep43, align 8
  %a.cap.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep44, align 8
  store ptr %a.create39, ptr %var.stk, align 8
  br label %a.after37

a.after37:                                        ; preds = %a.create36, %unwrap.pos.71
  %a.load245 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.len.query46 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load32, %a.len.query46
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after37
  %var.load47 = load ptr, ptr %var.stk, align 8
  %a.load48 = load ptr, ptr %var.stk, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

choice.else:                                      ; preds = %a.after37
  %var.load118 = load i64, ptr %var.u, align 8
  %a.load119 = load ptr, ptr %var.stk, align 8
  %a.null120 = icmp eq ptr %a.load119, null
  br i1 %a.null120, label %a.create121, label %a.after122

choice.exit:                                      ; preds = %a.store, %choice.exit86
  %var.load136 = load ptr, ptr %var.s_ptr, align 8
  %a.load137 = load ptr, ptr %var.s_ptr, align 8
  %a.null138 = icmp eq ptr %a.load137, null
  br i1 %a.null138, label %a.create139, label %a.after140

a.create50:                                       ; preds = %choice.then
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.create53, ptr %var.stk, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %choice.then
  %a.load259 = load ptr, ptr %var.stk, align 8
  %var.load60 = load i64, ptr %var.sp, align 8
  %var.load61 = load i64, ptr %var.u, align 8
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
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc65, %a.wr.err.null ], [ %err.alloc75, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then84, label %choice.else85

choice.then84:                                    ; preds = %a.wr.done
  br label %choice.exit86

choice.else85:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._87, align 8
  store ptr %a.wr.niche, ptr %var._88, align 8
  %err.code.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code90 = load i64, ptr %err.code.gep89, align 8
  %err.msg.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct92 = load ptr, ptr %err.msg.gep91, align 8
  %err.file.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct94 = load ptr, ptr %err.file.gep93, align 8
  %err.line.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line96 = load i64, ptr %err.line.gep95, align 8
  %err.col.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col98 = load i64, ptr %err.col.gep97, align 8
  %err.msg.len99 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct92, i32 0, i32 0
  %err.msg.len100 = load i64, ptr %err.msg.len99, align 8
  %err.msg.len101 = and i64 %err.msg.len100, 281474976710655
  %err.msg.len32102 = trunc i64 %err.msg.len101 to i32
  %err.msg.data103 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct92, i32 0, i32 1
  %err.msg.data104 = load ptr, ptr %err.msg.data103, align 8
  %err.file.len105 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct94, i32 0, i32 0
  %err.file.len106 = load i64, ptr %err.file.len105, align 8
  %err.file.len107 = and i64 %err.file.len106, 281474976710655
  %err.file.len32108 = trunc i64 %err.file.len107 to i32
  %err.file.data109 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct94, i32 0, i32 1
  %err.file.data110 = load ptr, ptr %err.file.data109, align 8
  %err.thread.rec111 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread112 = icmp ne ptr %err.thread.rec111, null
  br i1 %err.is.thread112, label %err.thread113, label %err.normal114

choice.exit86:                                    ; preds = %err.abort, %choice.then84
  br label %choice.exit

err.thread113:                                    ; preds = %choice.else85
  %err.haserr.gep115 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec111, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep115, align 8
  %err.err.gep116 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec111, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep116, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal114:                                    ; preds = %choice.else85
  %err.panic.printf117 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code90, i32 %err.msg.len32102, ptr %err.msg.data104, i32 %err.file.len32108, ptr %err.file.data110, i64 %err.line96, i64 %err.col98)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit86

a.create121:                                      ; preds = %choice.else
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
  store ptr %a.create124, ptr %var.stk, align 8
  br label %a.after122

a.after122:                                       ; preds = %a.create121, %choice.else
  %a.load2130 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after122
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  %a.len131 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 2
  %a.cap132 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len131, %a.cap132
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2130)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 1
  %a.cur.data133 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  %a.cur.len134 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep135 = getelementptr i64, ptr %a.cur.data133, i64 %a.cur.len134
  store i64 %var.load118, ptr %a.elem.gep135, align 8
  %a.next.len = add i64 %a.cur.len134, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create139:                                      ; preds = %choice.exit
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 24)
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 128)
  %a.len.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 0
  store i64 0, ptr %a.len.gep145, align 8
  %a.data.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 1
  store ptr %a.buf144, ptr %a.data.gep146, align 8
  %a.cap.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 2
  store i64 16, ptr %a.cap.gep147, align 8
  store ptr %a.create142, ptr %var.s_ptr, align 8
  br label %a.after140

a.after140:                                       ; preds = %a.create139, %choice.exit
  %a.load2148 = load ptr, ptr %var.s_ptr, align 8
  %var.load149 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load149, 1
  %a.wr.nonnull150 = icmp ne ptr %a.load2148, null
  br i1 %a.wr.nonnull150, label %a.wr.check151, label %a.wr.err.null153

a.wr.check151:                                    ; preds = %a.after140
  %a.wr.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2148, i32 0, i32 0
  %a.wr.len157 = load i64, ptr %a.wr.len156, align 8
  %a.wr.lt158 = icmp slt i64 0, %a.wr.len157
  %a.wr.bounds159 = and i1 true, %a.wr.lt158
  br i1 %a.wr.bounds159, label %a.wr.ok152, label %a.wr.err.oob154

a.wr.ok152:                                       ; preds = %a.wr.check151
  %a.wr.data160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2148, i32 0, i32 1
  %a.wr.data161 = load ptr, ptr %a.wr.data160, align 8
  %a.elem.gep162 = getelementptr i64, ptr %a.wr.data161, i64 0
  store i64 %addtmp, ptr %a.elem.gep162, align 8
  br label %a.wr.done155

a.wr.err.null153:                                 ; preds = %a.after140
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 56)
  %err.code.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 0
  store i64 4011, ptr %err.code.gep165, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep166, align 8
  %err.file.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep167, align 8
  %err.line.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 3
  store i64 0, ptr %err.line.gep168, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 4
  store i64 0, ptr %err.col.gep169, align 8
  %err.ctx.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 5
  %err.ctx0.gep171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep171, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep172, align 8
  br label %a.wr.done155

a.wr.err.oob154:                                  ; preds = %a.wr.check151
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 56)
  %err.code.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 0
  store i64 4011, ptr %err.code.gep175, align 8
  %err.msg.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep176, align 8
  %err.file.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep177, align 8
  %err.line.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 3
  store i64 0, ptr %err.line.gep178, align 8
  %err.col.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 4
  store i64 0, ptr %err.col.gep179, align 8
  %err.ctx.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc174, i32 0, i32 5
  %err.ctx0.gep181 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep180, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep181, align 8
  %err.ctx1.gep182 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep180, i32 0, i32 1
  store i64 %a.wr.len157, ptr %err.ctx1.gep182, align 8
  br label %a.wr.done155

a.wr.done155:                                     ; preds = %a.wr.err.oob154, %a.wr.err.null153, %a.wr.ok152
  %a.wr.niche183 = phi ptr [ null, %a.wr.ok152 ], [ %err.alloc164, %a.wr.err.null153 ], [ %err.alloc174, %a.wr.err.oob154 ]
  %niche.eq.null184 = icmp eq ptr %a.wr.niche183, null
  br i1 %niche.eq.null184, label %choice.then185, label %choice.else186

choice.then185:                                   ; preds = %a.wr.done155
  br label %choice.exit187

choice.else186:                                   ; preds = %a.wr.done155
  store ptr %a.wr.niche183, ptr %var._188, align 8
  store ptr %a.wr.niche183, ptr %var._189, align 8
  store ptr %a.wr.niche183, ptr %var._190, align 8
  %err.code.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche183, i32 0, i32 0
  %err.code192 = load i64, ptr %err.code.gep191, align 8
  %err.msg.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche183, i32 0, i32 1
  %err.msg.struct194 = load ptr, ptr %err.msg.gep193, align 8
  %err.file.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche183, i32 0, i32 2
  %err.file.struct196 = load ptr, ptr %err.file.gep195, align 8
  %err.line.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche183, i32 0, i32 3
  %err.line198 = load i64, ptr %err.line.gep197, align 8
  %err.col.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche183, i32 0, i32 4
  %err.col200 = load i64, ptr %err.col.gep199, align 8
  %err.msg.len201 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct194, i32 0, i32 0
  %err.msg.len202 = load i64, ptr %err.msg.len201, align 8
  %err.msg.len203 = and i64 %err.msg.len202, 281474976710655
  %err.msg.len32204 = trunc i64 %err.msg.len203 to i32
  %err.msg.data205 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct194, i32 0, i32 1
  %err.msg.data206 = load ptr, ptr %err.msg.data205, align 8
  %err.file.len207 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct196, i32 0, i32 0
  %err.file.len208 = load i64, ptr %err.file.len207, align 8
  %err.file.len209 = and i64 %err.file.len208, 281474976710655
  %err.file.len32210 = trunc i64 %err.file.len209 to i32
  %err.file.data211 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct196, i32 0, i32 1
  %err.file.data212 = load ptr, ptr %err.file.data211, align 8
  %err.thread.rec213 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread214 = icmp ne ptr %err.thread.rec213, null
  br i1 %err.is.thread214, label %err.thread215, label %err.normal216

choice.exit187:                                   ; preds = %err.abort220, %choice.then185
  ret void

err.thread215:                                    ; preds = %choice.else186
  %err.haserr.gep217 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec213, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep217, align 8
  %err.err.gep218 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec213, i32 0, i32 7
  store ptr %a.wr.niche183, ptr %err.err.gep218, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal216:                                    ; preds = %choice.else186
  %err.panic.printf219 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code192, i32 %err.msg.len32204, ptr %err.msg.data206, i32 %err.file.len32210, ptr %err.file.data212, i64 %err.line198, i64 %err.col200)
  call void @exit(i32 1)
  unreachable

err.abort220:                                     ; No predecessors!
  br label %choice.exit187
}

define i64 @"dep_graph::pop_stack"(ptr %0) #0 {
entry:
  %var.stk = alloca ptr, align 8
  %var._71 = alloca ptr, align 8
  %var._70 = alloca ptr, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var.load29 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load29, 0
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
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data25 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len26 = load i64, ptr %err.file.len, align 8
  %err.file.len27 = and i64 %err.file.len26, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len27 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data28 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.72
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.72
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data25, i32 %err.file.len32, ptr %err.file.data28, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.72
  %var.load30 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load30, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.72
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load31 = load ptr, ptr %var.s_ptr, align 8
  %a.load32 = load ptr, ptr %var.s_ptr, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

a.create34:                                       ; preds = %choice.exit
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
  store ptr %a.create37, ptr %var.s_ptr, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %choice.exit
  %a.load243 = load ptr, ptr %var.s_ptr, align 8
  %var.load44 = load i64, ptr %var.new_sp, align 8
  %a.wr.nonnull = icmp ne ptr %a.load243, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after35
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 0
  %a.wr.len45 = load i64, ptr %a.wr.len, align 8
  %a.wr.lt = icmp slt i64 0, %a.wr.len45
  %a.wr.bounds = and i1 true, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 1
  %a.wr.data46 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data46, i64 0
  store i64 %var.load44, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after35
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 56)
  %err.code.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 0
  store i64 4011, ptr %err.code.gep49, align 8
  %err.msg.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep50, align 8
  %err.file.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep51, align 8
  %err.line.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 3
  store i64 0, ptr %err.line.gep52, align 8
  %err.col.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 4
  store i64 0, ptr %err.col.gep53, align 8
  %err.ctx.gep54 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc48, i32 0, i32 5
  %err.ctx0.gep55 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep54, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep55, align 8
  %err.ctx1.gep56 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep54, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep56, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 56)
  %err.code.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 0
  store i64 4011, ptr %err.code.gep59, align 8
  %err.msg.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep60, align 8
  %err.file.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep61, align 8
  %err.line.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 3
  store i64 0, ptr %err.line.gep62, align 8
  %err.col.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 4
  store i64 0, ptr %err.col.gep63, align 8
  %err.ctx.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 5
  %err.ctx0.gep65 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep64, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep65, align 8
  %err.ctx1.gep66 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep64, i32 0, i32 1
  store i64 %a.wr.len45, ptr %err.ctx1.gep66, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc48, %a.wr.err.null ], [ %err.alloc58, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then67, label %choice.else68

choice.then67:                                    ; preds = %a.wr.done
  br label %choice.exit69

choice.else68:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._70, align 8
  store ptr %a.wr.niche, ptr %var._71, align 8
  %err.code.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code73 = load i64, ptr %err.code.gep72, align 8
  %err.msg.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct75 = load ptr, ptr %err.msg.gep74, align 8
  %err.file.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct77 = load ptr, ptr %err.file.gep76, align 8
  %err.line.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line79 = load i64, ptr %err.line.gep78, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col81 = load i64, ptr %err.col.gep80, align 8
  %err.msg.len82 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct75, i32 0, i32 0
  %err.msg.len83 = load i64, ptr %err.msg.len82, align 8
  %err.msg.len84 = and i64 %err.msg.len83, 281474976710655
  %err.msg.len3285 = trunc i64 %err.msg.len84 to i32
  %err.msg.data86 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct75, i32 0, i32 1
  %err.msg.data87 = load ptr, ptr %err.msg.data86, align 8
  %err.file.len88 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct77, i32 0, i32 0
  %err.file.len89 = load i64, ptr %err.file.len88, align 8
  %err.file.len90 = and i64 %err.file.len89, 281474976710655
  %err.file.len3291 = trunc i64 %err.file.len90 to i32
  %err.file.data92 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct77, i32 0, i32 1
  %err.file.data93 = load ptr, ptr %err.file.data92, align 8
  %err.thread.rec94 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread95 = icmp ne ptr %err.thread.rec94, null
  br i1 %err.is.thread95, label %err.thread96, label %err.normal97

choice.exit69:                                    ; preds = %err.abort, %choice.then67
  %var.load101 = load ptr, ptr %var.state, align 8
  %fld.gep102 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load101, i32 0, i32 3
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  store ptr %fld.load103, ptr %var.stk, align 8
  %var.load104 = load ptr, ptr %var.stk, align 8
  %a.load105 = load ptr, ptr %var.stk, align 8
  %a.null106 = icmp eq ptr %a.load105, null
  br i1 %a.null106, label %a.create107, label %a.after108

err.thread96:                                     ; preds = %choice.else68
  %err.haserr.gep98 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec94, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep98, align 8
  %err.err.gep99 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec94, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep99, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal97:                                     ; preds = %choice.else68
  %err.panic.printf100 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code73, i32 %err.msg.len3285, ptr %err.msg.data87, i32 %err.file.len3291, ptr %err.file.data93, i64 %err.line79, i64 %err.col81)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit69

a.create107:                                      ; preds = %choice.exit69
  %arena.cur109 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 24)
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 128)
  %a.len.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 0
  store i64 0, ptr %a.len.gep113, align 8
  %a.data.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 1
  store ptr %a.buf112, ptr %a.data.gep114, align 8
  %a.cap.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 2
  store i64 16, ptr %a.cap.gep115, align 8
  store ptr %a.create110, ptr %var.stk, align 8
  br label %a.after108

a.after108:                                       ; preds = %a.create107, %choice.exit69
  %a.load2116 = load ptr, ptr %var.stk, align 8
  %var.load117 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull118 = icmp ne ptr %a.load2116, null
  br i1 %a.rd.nonnull118, label %a.rd.check119, label %a.rd.err.null121

a.rd.check119:                                    ; preds = %a.after108
  %a.rd.len124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2116, i32 0, i32 0
  %a.rd.len125 = load i64, ptr %a.rd.len124, align 8
  %a.rd.ge0 = icmp sge i64 %var.load117, 0
  %a.rd.lt126 = icmp slt i64 %var.load117, %a.rd.len125
  %a.rd.bounds127 = and i1 %a.rd.ge0, %a.rd.lt126
  br i1 %a.rd.bounds127, label %a.rd.ok120, label %a.rd.err.oob122

a.rd.ok120:                                       ; preds = %a.rd.check119
  %a.rd.data128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2116, i32 0, i32 1
  %a.rd.data129 = load ptr, ptr %a.rd.data128, align 8
  %a.rd.elem.gep130 = getelementptr i64, ptr %a.rd.data129, i64 %var.load117
  %a.rd.elem131 = load i64, ptr %a.rd.elem.gep130, align 8
  br label %a.rd.done123

a.rd.err.null121:                                 ; preds = %a.after108
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 279, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 15, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  %err.p2i142 = ptrtoint ptr %err.alloc133 to i64
  br label %a.rd.done123

a.rd.err.oob122:                                  ; preds = %a.rd.check119
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 0
  store i64 4011, ptr %err.code.gep145, align 8
  %err.msg.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep146, align 8
  %err.file.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep147, align 8
  %err.line.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 3
  store i64 279, ptr %err.line.gep148, align 8
  %err.col.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 4
  store i64 15, ptr %err.col.gep149, align 8
  %err.ctx.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 5
  %err.ctx0.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 0
  store i64 %var.load117, ptr %err.ctx0.gep151, align 8
  %err.ctx1.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 1
  store i64 %a.rd.len125, ptr %err.ctx1.gep152, align 8
  %err.p2i153 = ptrtoint ptr %err.alloc144 to i64
  br label %a.rd.done123

a.rd.done123:                                     ; preds = %a.rd.err.oob122, %a.rd.err.null121, %a.rd.ok120
  %a.rd.tag154 = phi i1 [ true, %a.rd.ok120 ], [ false, %a.rd.err.null121 ], [ false, %a.rd.err.oob122 ]
  %a.rd.pay155 = phi i64 [ %a.rd.elem131, %a.rd.ok120 ], [ %err.p2i142, %a.rd.err.null121 ], [ %err.p2i153, %a.rd.err.oob122 ]
  %ram.tag156 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag154, 0
  %ram.pay157 = insertvalue { i1, i64 } %ram.tag156, i64 %a.rd.pay155, 1
  %unwrap.is_pos158 = extractvalue { i1, i64 } %ram.pay157, 0
  br i1 %unwrap.is_pos158, label %unwrap.pos.73, label %unwrap.abort.73

unwrap.pos.73:                                    ; preds = %a.rd.done123
  %unwrap.pay.pos190 = extractvalue { i1, i64 } %ram.pay157, 1
  ret i64 %unwrap.pay.pos190

unwrap.abort.73:                                  ; preds = %a.rd.done123
  %unwrap.pay.abort159 = extractvalue { i1, i64 } %ram.pay157, 1
  %err.ptr160 = inttoptr i64 %unwrap.pay.abort159 to ptr
  %err.code.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr160, i32 0, i32 0
  %err.code162 = load i64, ptr %err.code.gep161, align 8
  %err.msg.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr160, i32 0, i32 1
  %err.msg.struct164 = load ptr, ptr %err.msg.gep163, align 8
  %err.file.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr160, i32 0, i32 2
  %err.file.struct166 = load ptr, ptr %err.file.gep165, align 8
  %err.line.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr160, i32 0, i32 3
  %err.line168 = load i64, ptr %err.line.gep167, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr160, i32 0, i32 4
  %err.col170 = load i64, ptr %err.col.gep169, align 8
  %err.msg.len171 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct164, i32 0, i32 0
  %err.msg.len172 = load i64, ptr %err.msg.len171, align 8
  %err.msg.len173 = and i64 %err.msg.len172, 281474976710655
  %err.msg.len32174 = trunc i64 %err.msg.len173 to i32
  %err.msg.data175 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct164, i32 0, i32 1
  %err.msg.data176 = load ptr, ptr %err.msg.data175, align 8
  %err.file.len177 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct166, i32 0, i32 0
  %err.file.len178 = load i64, ptr %err.file.len177, align 8
  %err.file.len179 = and i64 %err.file.len178, 281474976710655
  %err.file.len32180 = trunc i64 %err.file.len179 to i32
  %err.file.data181 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct166, i32 0, i32 1
  %err.file.data182 = load ptr, ptr %err.file.data181, align 8
  %err.thread.rec183 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread184 = icmp ne ptr %err.thread.rec183, null
  br i1 %err.is.thread184, label %err.thread185, label %err.normal186

err.thread185:                                    ; preds = %unwrap.abort.73
  %err.haserr.gep187 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec183, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep187, align 8
  %err.err.gep188 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec183, i32 0, i32 7
  store ptr %err.ptr160, ptr %err.err.gep188, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal186:                                    ; preds = %unwrap.abort.73
  %err.panic.printf189 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code162, i32 %err.msg.len32174, ptr %err.msg.data176, i32 %err.file.len32180, ptr %err.file.data182, i64 %err.line168, i64 %err.col170)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1466 = alloca ptr, align 8
  %var._1465 = alloca ptr, align 8
  %var._1464 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1315 = alloca i64, align 8
  %var._i1314 = alloca i64, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1089 = alloca ptr, align 8
  %var._1088 = alloca ptr, align 8
  %var._1087 = alloca ptr, align 8
  %var.v_on = alloca i1, align 1
  %var._852 = alloca ptr, align 8
  %var._849 = alloca i1, align 1
  %var._758 = alloca ptr, align 8
  %var._757 = alloca ptr, align 8
  %var._756 = alloca ptr, align 8
  %var.v_idx = alloca i64, align 8
  %var._518 = alloca ptr, align 8
  %var._515 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._449 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._336 = alloca ptr, align 8
  %var._335 = alloca ptr, align 8
  %var._334 = alloca ptr, align 8
  %var._248 = alloca ptr, align 8
  %var._247 = alloca ptr, align 8
  %var._246 = alloca ptr, align 8
  %var._163 = alloca ptr, align 8
  %var._162 = alloca ptr, align 8
  %var._161 = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var._76 = alloca ptr, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var.load39 = load ptr, ptr %var.idxs, align 8
  %a.load40 = load ptr, ptr %var.idxs, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

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
  %err.msg.len3234 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data38 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.74
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.74
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data38, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create42:                                       ; preds = %unwrap.pos.74
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.idxs, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %unwrap.pos.74
  %a.load251 = load ptr, ptr %var.idxs, align 8
  %var.load52 = load i64, ptr %var.u, align 8
  %var.load53 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull = icmp ne ptr %a.load251, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after43
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.wr.len54 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load52, 0
  %a.wr.lt = icmp slt i64 %var.load52, %a.wr.len54
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 1
  %a.wr.data55 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data55, i64 %var.load52
  store i64 %var.load53, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after43
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 56)
  %err.code.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 0
  store i64 4011, ptr %err.code.gep58, align 8
  %err.msg.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep59, align 8
  %err.file.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep60, align 8
  %err.line.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 3
  store i64 0, ptr %err.line.gep61, align 8
  %err.col.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 4
  store i64 0, ptr %err.col.gep62, align 8
  %err.ctx.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc57, i32 0, i32 5
  %err.ctx0.gep64 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep63, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep64, align 8
  %err.ctx1.gep65 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep63, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep65, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 56)
  %err.code.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 0
  store i64 4011, ptr %err.code.gep68, align 8
  %err.msg.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep69, align 8
  %err.file.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep70, align 8
  %err.line.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 3
  store i64 0, ptr %err.line.gep71, align 8
  %err.col.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 4
  store i64 0, ptr %err.col.gep72, align 8
  %err.ctx.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc67, i32 0, i32 5
  %err.ctx0.gep74 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep73, i32 0, i32 0
  store i64 %var.load52, ptr %err.ctx0.gep74, align 8
  %err.ctx1.gep75 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep73, i32 0, i32 1
  store i64 %a.wr.len54, ptr %err.ctx1.gep75, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc57, %a.wr.err.null ], [ %err.alloc67, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.wr.done
  br label %choice.exit

choice.else:                                      ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._76, align 8
  store ptr %a.wr.niche, ptr %var._77, align 8
  %err.code.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code79 = load i64, ptr %err.code.gep78, align 8
  %err.msg.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct81 = load ptr, ptr %err.msg.gep80, align 8
  %err.file.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct83 = load ptr, ptr %err.file.gep82, align 8
  %err.line.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line85 = load i64, ptr %err.line.gep84, align 8
  %err.col.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col87 = load i64, ptr %err.col.gep86, align 8
  %err.msg.len88 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct81, i32 0, i32 0
  %err.msg.len89 = load i64, ptr %err.msg.len88, align 8
  %err.msg.len90 = and i64 %err.msg.len89, 281474976710655
  %err.msg.len3291 = trunc i64 %err.msg.len90 to i32
  %err.msg.data92 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct81, i32 0, i32 1
  %err.msg.data93 = load ptr, ptr %err.msg.data92, align 8
  %err.file.len94 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct83, i32 0, i32 0
  %err.file.len95 = load i64, ptr %err.file.len94, align 8
  %err.file.len96 = and i64 %err.file.len95, 281474976710655
  %err.file.len3297 = trunc i64 %err.file.len96 to i32
  %err.file.data98 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct83, i32 0, i32 1
  %err.file.data99 = load ptr, ptr %err.file.data98, align 8
  %err.thread.rec100 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread101 = icmp ne ptr %err.thread.rec100, null
  br i1 %err.is.thread101, label %err.thread102, label %err.normal103

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load107 = load ptr, ptr %var.lows, align 8
  %a.load108 = load ptr, ptr %var.lows, align 8
  %a.null109 = icmp eq ptr %a.load108, null
  br i1 %a.null109, label %a.create110, label %a.after111

err.thread102:                                    ; preds = %choice.else
  %err.haserr.gep104 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec100, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep104, align 8
  %err.err.gep105 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec100, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep105, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal103:                                    ; preds = %choice.else
  %err.panic.printf106 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code79, i32 %err.msg.len3291, ptr %err.msg.data93, i32 %err.file.len3297, ptr %err.file.data99, i64 %err.line85, i64 %err.col87)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create110:                                      ; preds = %choice.exit
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 24)
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 128)
  %a.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create113, i32 0, i32 0
  store i64 0, ptr %a.len.gep116, align 8
  %a.data.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create113, i32 0, i32 1
  store ptr %a.buf115, ptr %a.data.gep117, align 8
  %a.cap.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create113, i32 0, i32 2
  store i64 16, ptr %a.cap.gep118, align 8
  store ptr %a.create113, ptr %var.lows, align 8
  br label %a.after111

a.after111:                                       ; preds = %a.create110, %choice.exit
  %a.load2119 = load ptr, ptr %var.lows, align 8
  %var.load120 = load i64, ptr %var.u, align 8
  %var.load121 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull122 = icmp ne ptr %a.load2119, null
  br i1 %a.wr.nonnull122, label %a.wr.check123, label %a.wr.err.null125

a.wr.check123:                                    ; preds = %a.after111
  %a.wr.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2119, i32 0, i32 0
  %a.wr.len129 = load i64, ptr %a.wr.len128, align 8
  %a.wr.ge0130 = icmp sge i64 %var.load120, 0
  %a.wr.lt131 = icmp slt i64 %var.load120, %a.wr.len129
  %a.wr.bounds132 = and i1 %a.wr.ge0130, %a.wr.lt131
  br i1 %a.wr.bounds132, label %a.wr.ok124, label %a.wr.err.oob126

a.wr.ok124:                                       ; preds = %a.wr.check123
  %a.wr.data133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2119, i32 0, i32 1
  %a.wr.data134 = load ptr, ptr %a.wr.data133, align 8
  %a.elem.gep135 = getelementptr i64, ptr %a.wr.data134, i64 %var.load120
  store i64 %var.load121, ptr %a.elem.gep135, align 8
  br label %a.wr.done127

a.wr.err.null125:                                 ; preds = %a.after111
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 56)
  %err.code.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 0
  store i64 4011, ptr %err.code.gep138, align 8
  %err.msg.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep139, align 8
  %err.file.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep140, align 8
  %err.line.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 3
  store i64 0, ptr %err.line.gep141, align 8
  %err.col.gep142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 4
  store i64 0, ptr %err.col.gep142, align 8
  %err.ctx.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 5
  %err.ctx0.gep144 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep143, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep144, align 8
  %err.ctx1.gep145 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep143, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep145, align 8
  br label %a.wr.done127

a.wr.err.oob126:                                  ; preds = %a.wr.check123
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 56)
  %err.code.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 0
  store i64 4011, ptr %err.code.gep148, align 8
  %err.msg.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep149, align 8
  %err.file.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep150, align 8
  %err.line.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 3
  store i64 0, ptr %err.line.gep151, align 8
  %err.col.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 4
  store i64 0, ptr %err.col.gep152, align 8
  %err.ctx.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 5
  %err.ctx0.gep154 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep153, i32 0, i32 0
  store i64 %var.load120, ptr %err.ctx0.gep154, align 8
  %err.ctx1.gep155 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep153, i32 0, i32 1
  store i64 %a.wr.len129, ptr %err.ctx1.gep155, align 8
  br label %a.wr.done127

a.wr.done127:                                     ; preds = %a.wr.err.oob126, %a.wr.err.null125, %a.wr.ok124
  %a.wr.niche156 = phi ptr [ null, %a.wr.ok124 ], [ %err.alloc137, %a.wr.err.null125 ], [ %err.alloc147, %a.wr.err.oob126 ]
  %niche.eq.null157 = icmp eq ptr %a.wr.niche156, null
  br i1 %niche.eq.null157, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %a.wr.done127
  br label %choice.exit160

choice.else159:                                   ; preds = %a.wr.done127
  store ptr %a.wr.niche156, ptr %var._161, align 8
  store ptr %a.wr.niche156, ptr %var._162, align 8
  store ptr %a.wr.niche156, ptr %var._163, align 8
  %err.code.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche156, i32 0, i32 0
  %err.code165 = load i64, ptr %err.code.gep164, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche156, i32 0, i32 1
  %err.msg.struct167 = load ptr, ptr %err.msg.gep166, align 8
  %err.file.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche156, i32 0, i32 2
  %err.file.struct169 = load ptr, ptr %err.file.gep168, align 8
  %err.line.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche156, i32 0, i32 3
  %err.line171 = load i64, ptr %err.line.gep170, align 8
  %err.col.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche156, i32 0, i32 4
  %err.col173 = load i64, ptr %err.col.gep172, align 8
  %err.msg.len174 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct167, i32 0, i32 0
  %err.msg.len175 = load i64, ptr %err.msg.len174, align 8
  %err.msg.len176 = and i64 %err.msg.len175, 281474976710655
  %err.msg.len32177 = trunc i64 %err.msg.len176 to i32
  %err.msg.data178 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct167, i32 0, i32 1
  %err.msg.data179 = load ptr, ptr %err.msg.data178, align 8
  %err.file.len180 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct169, i32 0, i32 0
  %err.file.len181 = load i64, ptr %err.file.len180, align 8
  %err.file.len182 = and i64 %err.file.len181, 281474976710655
  %err.file.len32183 = trunc i64 %err.file.len182 to i32
  %err.file.data184 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct169, i32 0, i32 1
  %err.file.data185 = load ptr, ptr %err.file.data184, align 8
  %err.thread.rec186 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread187 = icmp ne ptr %err.thread.rec186, null
  br i1 %err.is.thread187, label %err.thread188, label %err.normal189

choice.exit160:                                   ; preds = %err.abort193, %choice.then158
  %var.load194 = load ptr, ptr %var.s_cnt, align 8
  %a.load195 = load ptr, ptr %var.s_cnt, align 8
  %a.null196 = icmp eq ptr %a.load195, null
  br i1 %a.null196, label %a.create197, label %a.after198

err.thread188:                                    ; preds = %choice.else159
  %err.haserr.gep190 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec186, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep190, align 8
  %err.err.gep191 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec186, i32 0, i32 7
  store ptr %a.wr.niche156, ptr %err.err.gep191, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal189:                                    ; preds = %choice.else159
  %err.panic.printf192 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code165, i32 %err.msg.len32177, ptr %err.msg.data179, i32 %err.file.len32183, ptr %err.file.data185, i64 %err.line171, i64 %err.col173)
  call void @exit(i32 1)
  unreachable

err.abort193:                                     ; No predecessors!
  br label %choice.exit160

a.create197:                                      ; preds = %choice.exit160
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 24)
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 128)
  %a.len.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 0
  store i64 0, ptr %a.len.gep203, align 8
  %a.data.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 1
  store ptr %a.buf202, ptr %a.data.gep204, align 8
  %a.cap.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 2
  store i64 16, ptr %a.cap.gep205, align 8
  store ptr %a.create200, ptr %var.s_cnt, align 8
  br label %a.after198

a.after198:                                       ; preds = %a.create197, %choice.exit160
  %a.load2206 = load ptr, ptr %var.s_cnt, align 8
  %var.load207 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load207, 1
  %a.wr.nonnull208 = icmp ne ptr %a.load2206, null
  br i1 %a.wr.nonnull208, label %a.wr.check209, label %a.wr.err.null211

a.wr.check209:                                    ; preds = %a.after198
  %a.wr.len214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 0
  %a.wr.len215 = load i64, ptr %a.wr.len214, align 8
  %a.wr.lt216 = icmp slt i64 0, %a.wr.len215
  %a.wr.bounds217 = and i1 true, %a.wr.lt216
  br i1 %a.wr.bounds217, label %a.wr.ok210, label %a.wr.err.oob212

a.wr.ok210:                                       ; preds = %a.wr.check209
  %a.wr.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 1
  %a.wr.data219 = load ptr, ptr %a.wr.data218, align 8
  %a.elem.gep220 = getelementptr i64, ptr %a.wr.data219, i64 0
  store i64 %addtmp, ptr %a.elem.gep220, align 8
  br label %a.wr.done213

a.wr.err.null211:                                 ; preds = %a.after198
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 56)
  %err.code.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 0
  store i64 4011, ptr %err.code.gep223, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep224, align 8
  %err.file.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep225, align 8
  %err.line.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 3
  store i64 0, ptr %err.line.gep226, align 8
  %err.col.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 4
  store i64 0, ptr %err.col.gep227, align 8
  %err.ctx.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 5
  %err.ctx0.gep229 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep228, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep229, align 8
  %err.ctx1.gep230 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep228, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep230, align 8
  br label %a.wr.done213

a.wr.err.oob212:                                  ; preds = %a.wr.check209
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 56)
  %err.code.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 0
  store i64 4011, ptr %err.code.gep233, align 8
  %err.msg.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep234, align 8
  %err.file.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep235, align 8
  %err.line.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 3
  store i64 0, ptr %err.line.gep236, align 8
  %err.col.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 4
  store i64 0, ptr %err.col.gep237, align 8
  %err.ctx.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 5
  %err.ctx0.gep239 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep238, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep239, align 8
  %err.ctx1.gep240 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep238, i32 0, i32 1
  store i64 %a.wr.len215, ptr %err.ctx1.gep240, align 8
  br label %a.wr.done213

a.wr.done213:                                     ; preds = %a.wr.err.oob212, %a.wr.err.null211, %a.wr.ok210
  %a.wr.niche241 = phi ptr [ null, %a.wr.ok210 ], [ %err.alloc222, %a.wr.err.null211 ], [ %err.alloc232, %a.wr.err.oob212 ]
  %niche.eq.null242 = icmp eq ptr %a.wr.niche241, null
  br i1 %niche.eq.null242, label %choice.then243, label %choice.else244

choice.then243:                                   ; preds = %a.wr.done213
  br label %choice.exit245

choice.else244:                                   ; preds = %a.wr.done213
  store ptr %a.wr.niche241, ptr %var._246, align 8
  store ptr %a.wr.niche241, ptr %var._247, align 8
  store ptr %a.wr.niche241, ptr %var._248, align 8
  %err.code.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche241, i32 0, i32 0
  %err.code250 = load i64, ptr %err.code.gep249, align 8
  %err.msg.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche241, i32 0, i32 1
  %err.msg.struct252 = load ptr, ptr %err.msg.gep251, align 8
  %err.file.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche241, i32 0, i32 2
  %err.file.struct254 = load ptr, ptr %err.file.gep253, align 8
  %err.line.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche241, i32 0, i32 3
  %err.line256 = load i64, ptr %err.line.gep255, align 8
  %err.col.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche241, i32 0, i32 4
  %err.col258 = load i64, ptr %err.col.gep257, align 8
  %err.msg.len259 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct252, i32 0, i32 0
  %err.msg.len260 = load i64, ptr %err.msg.len259, align 8
  %err.msg.len261 = and i64 %err.msg.len260, 281474976710655
  %err.msg.len32262 = trunc i64 %err.msg.len261 to i32
  %err.msg.data263 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct252, i32 0, i32 1
  %err.msg.data264 = load ptr, ptr %err.msg.data263, align 8
  %err.file.len265 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct254, i32 0, i32 0
  %err.file.len266 = load i64, ptr %err.file.len265, align 8
  %err.file.len267 = and i64 %err.file.len266, 281474976710655
  %err.file.len32268 = trunc i64 %err.file.len267 to i32
  %err.file.data269 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct254, i32 0, i32 1
  %err.file.data270 = load ptr, ptr %err.file.data269, align 8
  %err.thread.rec271 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread272 = icmp ne ptr %err.thread.rec271, null
  br i1 %err.is.thread272, label %err.thread273, label %err.normal274

choice.exit245:                                   ; preds = %err.abort278, %choice.then243
  %var.load279 = load ptr, ptr %var.state, align 8
  %var.load280 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load279, i64 %var.load280)
  %var.load281 = load ptr, ptr %var.ons, align 8
  %a.load282 = load ptr, ptr %var.ons, align 8
  %a.null283 = icmp eq ptr %a.load282, null
  br i1 %a.null283, label %a.create284, label %a.after285

err.thread273:                                    ; preds = %choice.else244
  %err.haserr.gep275 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec271, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep275, align 8
  %err.err.gep276 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec271, i32 0, i32 7
  store ptr %a.wr.niche241, ptr %err.err.gep276, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal274:                                    ; preds = %choice.else244
  %err.panic.printf277 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code250, i32 %err.msg.len32262, ptr %err.msg.data264, i32 %err.file.len32268, ptr %err.file.data270, i64 %err.line256, i64 %err.col258)
  call void @exit(i32 1)
  unreachable

err.abort278:                                     ; No predecessors!
  br label %choice.exit245

a.create284:                                      ; preds = %choice.exit245
  %arena.cur286 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 24)
  %arena.cur288 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 128)
  %a.len.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 0
  store i64 0, ptr %a.len.gep290, align 8
  %a.data.gep291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 1
  store ptr %a.buf289, ptr %a.data.gep291, align 8
  %a.cap.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 2
  store i64 16, ptr %a.cap.gep292, align 8
  store ptr %a.create287, ptr %var.ons, align 8
  br label %a.after285

a.after285:                                       ; preds = %a.create284, %choice.exit245
  %a.load2293 = load ptr, ptr %var.ons, align 8
  %var.load294 = load i64, ptr %var.u, align 8
  %a.wr.nonnull295 = icmp ne ptr %a.load2293, null
  br i1 %a.wr.nonnull295, label %a.wr.check296, label %a.wr.err.null298

a.wr.check296:                                    ; preds = %a.after285
  %a.wr.len301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 0
  %a.wr.len302 = load i64, ptr %a.wr.len301, align 8
  %a.wr.ge0303 = icmp sge i64 %var.load294, 0
  %a.wr.lt304 = icmp slt i64 %var.load294, %a.wr.len302
  %a.wr.bounds305 = and i1 %a.wr.ge0303, %a.wr.lt304
  br i1 %a.wr.bounds305, label %a.wr.ok297, label %a.wr.err.oob299

a.wr.ok297:                                       ; preds = %a.wr.check296
  %a.wr.data306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 1
  %a.wr.data307 = load ptr, ptr %a.wr.data306, align 8
  %a.elem.gep308 = getelementptr i64, ptr %a.wr.data307, i64 %var.load294
  store i64 1, ptr %a.elem.gep308, align 8
  br label %a.wr.done300

a.wr.err.null298:                                 ; preds = %a.after285
  %arena.cur309 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 56)
  %err.code.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 0
  store i64 4011, ptr %err.code.gep311, align 8
  %err.msg.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep312, align 8
  %err.file.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep313, align 8
  %err.line.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 3
  store i64 0, ptr %err.line.gep314, align 8
  %err.col.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 4
  store i64 0, ptr %err.col.gep315, align 8
  %err.ctx.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc310, i32 0, i32 5
  %err.ctx0.gep317 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep316, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep317, align 8
  %err.ctx1.gep318 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep316, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep318, align 8
  br label %a.wr.done300

a.wr.err.oob299:                                  ; preds = %a.wr.check296
  %arena.cur319 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 56)
  %err.code.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 0
  store i64 4011, ptr %err.code.gep321, align 8
  %err.msg.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep322, align 8
  %err.file.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep323, align 8
  %err.line.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 3
  store i64 0, ptr %err.line.gep324, align 8
  %err.col.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 4
  store i64 0, ptr %err.col.gep325, align 8
  %err.ctx.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc320, i32 0, i32 5
  %err.ctx0.gep327 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep326, i32 0, i32 0
  store i64 %var.load294, ptr %err.ctx0.gep327, align 8
  %err.ctx1.gep328 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep326, i32 0, i32 1
  store i64 %a.wr.len302, ptr %err.ctx1.gep328, align 8
  br label %a.wr.done300

a.wr.done300:                                     ; preds = %a.wr.err.oob299, %a.wr.err.null298, %a.wr.ok297
  %a.wr.niche329 = phi ptr [ null, %a.wr.ok297 ], [ %err.alloc310, %a.wr.err.null298 ], [ %err.alloc320, %a.wr.err.oob299 ]
  %niche.eq.null330 = icmp eq ptr %a.wr.niche329, null
  br i1 %niche.eq.null330, label %choice.then331, label %choice.else332

choice.then331:                                   ; preds = %a.wr.done300
  br label %choice.exit333

choice.else332:                                   ; preds = %a.wr.done300
  store ptr %a.wr.niche329, ptr %var._334, align 8
  store ptr %a.wr.niche329, ptr %var._335, align 8
  store ptr %a.wr.niche329, ptr %var._336, align 8
  %err.code.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche329, i32 0, i32 0
  %err.code338 = load i64, ptr %err.code.gep337, align 8
  %err.msg.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche329, i32 0, i32 1
  %err.msg.struct340 = load ptr, ptr %err.msg.gep339, align 8
  %err.file.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche329, i32 0, i32 2
  %err.file.struct342 = load ptr, ptr %err.file.gep341, align 8
  %err.line.gep343 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche329, i32 0, i32 3
  %err.line344 = load i64, ptr %err.line.gep343, align 8
  %err.col.gep345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche329, i32 0, i32 4
  %err.col346 = load i64, ptr %err.col.gep345, align 8
  %err.msg.len347 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct340, i32 0, i32 0
  %err.msg.len348 = load i64, ptr %err.msg.len347, align 8
  %err.msg.len349 = and i64 %err.msg.len348, 281474976710655
  %err.msg.len32350 = trunc i64 %err.msg.len349 to i32
  %err.msg.data351 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct340, i32 0, i32 1
  %err.msg.data352 = load ptr, ptr %err.msg.data351, align 8
  %err.file.len353 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct342, i32 0, i32 0
  %err.file.len354 = load i64, ptr %err.file.len353, align 8
  %err.file.len355 = and i64 %err.file.len354, 281474976710655
  %err.file.len32356 = trunc i64 %err.file.len355 to i32
  %err.file.data357 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct342, i32 0, i32 1
  %err.file.data358 = load ptr, ptr %err.file.data357, align 8
  %err.thread.rec359 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread360 = icmp ne ptr %err.thread.rec359, null
  br i1 %err.is.thread360, label %err.thread361, label %err.normal362

choice.exit333:                                   ; preds = %err.abort366, %choice.then331
  %var.load367 = load ptr, ptr %var.graph, align 8
  %fld.gep368 = getelementptr inbounds { ptr, ptr }, ptr %var.load367, i32 0, i32 0
  %fld.load369 = load ptr, ptr %fld.gep368, align 8
  %var.load370 = load i64, ptr %var.u, align 8
  %a.rd.nonnull371 = icmp ne ptr %fld.load369, null
  br i1 %a.rd.nonnull371, label %a.rd.check372, label %a.rd.err.null374

err.thread361:                                    ; preds = %choice.else332
  %err.haserr.gep363 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec359, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep363, align 8
  %err.err.gep364 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec359, i32 0, i32 7
  store ptr %a.wr.niche329, ptr %err.err.gep364, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal362:                                    ; preds = %choice.else332
  %err.panic.printf365 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code338, i32 %err.msg.len32350, ptr %err.msg.data352, i32 %err.file.len32356, ptr %err.file.data358, i64 %err.line344, i64 %err.col346)
  call void @exit(i32 1)
  unreachable

err.abort366:                                     ; No predecessors!
  br label %choice.exit333

a.rd.check372:                                    ; preds = %choice.exit333
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

a.rd.err.null374:                                 ; preds = %choice.exit333
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur396 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br i1 %unwrap.is_pos411, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done376
  %unwrap.pay.pos443 = extractvalue { i1, i64 } %ram.pay410, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos443 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load444 = load ptr, ptr %var.u_node, align 8
  %fld.gep445 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load444, i32 0, i32 1
  %fld.load446 = load ptr, ptr %fld.gep445, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load446, i32 0, i32 0
  %arr.cycle.len447 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load446, i32 0, i32 1
  %arr.cycle.data448 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

unwrap.abort.75:                                  ; preds = %a.rd.done376
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
  %err.msg.len32427 = trunc i64 %err.msg.len426 to i32
  %err.msg.data428 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct417, i32 0, i32 1
  %err.msg.data429 = load ptr, ptr %err.msg.data428, align 8
  %err.file.len430 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct419, i32 0, i32 0
  %err.file.len431 = load i64, ptr %err.file.len430, align 8
  %err.file.len432 = and i64 %err.file.len431, 281474976710655
  %err.file.len32433 = trunc i64 %err.file.len432 to i32
  %err.file.data434 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct419, i32 0, i32 1
  %err.file.data435 = load ptr, ptr %err.file.data434, align 8
  %err.thread.rec436 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread437 = icmp ne ptr %err.thread.rec436, null
  br i1 %err.is.thread437, label %err.thread438, label %err.normal439

err.thread438:                                    ; preds = %unwrap.abort.75
  %err.haserr.gep440 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec436, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep440, align 8
  %err.err.gep441 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec436, i32 0, i32 7
  store ptr %err.ptr413, ptr %err.err.gep441, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal439:                                    ; preds = %unwrap.abort.75
  %err.panic.printf442 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code415, i32 %err.msg.len32427, ptr %err.msg.data429, i32 %err.file.len32433, ptr %err.file.data435, i64 %err.line421, i64 %err.col423)
  call void @exit(i32 1)
  unreachable

loop.header.76:                                   ; preds = %loop.latch.76, %unwrap.pos.75
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len447
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data448, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._449, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  %var.load450 = load ptr, ptr %var.graph, align 8
  %var.load451 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load450, ptr %var.load451)
  store i64 %call.res, ptr %var.v, align 8
  %var.load452 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load452, 0
  br i1 %cmptmp, label %choice.then453, label %choice.exit454

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit454
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  %var.load1120 = load ptr, ptr %var.lows, align 8
  %a.load1121 = load ptr, ptr %var.lows, align 8
  %a.null1122 = icmp eq ptr %a.load1121, null
  br i1 %a.null1122, label %a.create1123, label %a.after1124

choice.then453:                                   ; preds = %loop.body.76
  %var.load455 = load ptr, ptr %var.idxs, align 8
  %a.load456 = load ptr, ptr %var.idxs, align 8
  %a.null457 = icmp eq ptr %a.load456, null
  br i1 %a.null457, label %a.create458, label %a.after459

choice.exit454:                                   ; preds = %choice.exit523, %loop.body.76
  br label %loop.latch.76

a.create458:                                      ; preds = %choice.then453
  %arena.cur460 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 24)
  %arena.cur462 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 128)
  %a.len.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create461, i32 0, i32 0
  store i64 0, ptr %a.len.gep464, align 8
  %a.data.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create461, i32 0, i32 1
  store ptr %a.buf463, ptr %a.data.gep465, align 8
  %a.cap.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create461, i32 0, i32 2
  store i64 16, ptr %a.cap.gep466, align 8
  store ptr %a.create461, ptr %var.idxs, align 8
  br label %a.after459

a.after459:                                       ; preds = %a.create458, %choice.then453
  %a.load2467 = load ptr, ptr %var.idxs, align 8
  %var.load468 = load i64, ptr %var.v, align 8
  %a.rd.nonnull469 = icmp ne ptr %a.load2467, null
  br i1 %a.rd.nonnull469, label %a.rd.check470, label %a.rd.err.null472

a.rd.check470:                                    ; preds = %a.after459
  %a.rd.len475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2467, i32 0, i32 0
  %a.rd.len476 = load i64, ptr %a.rd.len475, align 8
  %a.rd.ge0477 = icmp sge i64 %var.load468, 0
  %a.rd.lt478 = icmp slt i64 %var.load468, %a.rd.len476
  %a.rd.bounds479 = and i1 %a.rd.ge0477, %a.rd.lt478
  br i1 %a.rd.bounds479, label %a.rd.ok471, label %a.rd.err.oob473

a.rd.ok471:                                       ; preds = %a.rd.check470
  %a.rd.data480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2467, i32 0, i32 1
  %a.rd.data481 = load ptr, ptr %a.rd.data480, align 8
  %a.rd.elem.gep482 = getelementptr i64, ptr %a.rd.data481, i64 %var.load468
  %a.rd.elem483 = load i64, ptr %a.rd.elem.gep482, align 8
  br label %a.rd.done474

a.rd.err.null472:                                 ; preds = %a.after459
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 56)
  %err.code.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 0
  store i64 4011, ptr %err.code.gep486, align 8
  %err.msg.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep487, align 8
  %err.file.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep488, align 8
  %err.line.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 3
  store i64 299, ptr %err.line.gep489, align 8
  %err.col.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 4
  store i64 29, ptr %err.col.gep490, align 8
  %err.ctx.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 5
  %err.ctx0.gep492 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep491, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep492, align 8
  %err.ctx1.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep491, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep493, align 8
  %err.p2i494 = ptrtoint ptr %err.alloc485 to i64
  br label %a.rd.done474

a.rd.err.oob473:                                  ; preds = %a.rd.check470
  %arena.cur495 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 56)
  %err.code.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 0
  store i64 4011, ptr %err.code.gep497, align 8
  %err.msg.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep498, align 8
  %err.file.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep499, align 8
  %err.line.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 3
  store i64 299, ptr %err.line.gep500, align 8
  %err.col.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 4
  store i64 29, ptr %err.col.gep501, align 8
  %err.ctx.gep502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 5
  %err.ctx0.gep503 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep502, i32 0, i32 0
  store i64 %var.load468, ptr %err.ctx0.gep503, align 8
  %err.ctx1.gep504 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep502, i32 0, i32 1
  store i64 %a.rd.len476, ptr %err.ctx1.gep504, align 8
  %err.p2i505 = ptrtoint ptr %err.alloc496 to i64
  br label %a.rd.done474

a.rd.done474:                                     ; preds = %a.rd.err.oob473, %a.rd.err.null472, %a.rd.ok471
  %a.rd.tag506 = phi i1 [ true, %a.rd.ok471 ], [ false, %a.rd.err.null472 ], [ false, %a.rd.err.oob473 ]
  %a.rd.pay507 = phi i64 [ %a.rd.elem483, %a.rd.ok471 ], [ %err.p2i494, %a.rd.err.null472 ], [ %err.p2i505, %a.rd.err.oob473 ]
  %ram.tag508 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag506, 0
  %ram.pay509 = insertvalue { i1, i64 } %ram.tag508, i64 %a.rd.pay507, 1
  %ram.tag510 = extractvalue { i1, i64 } %ram.pay509, 0
  br i1 %ram.tag510, label %choice.then511, label %choice.else512

choice.then511:                                   ; preds = %a.rd.done474
  %ram.pay514 = extractvalue { i1, i64 } %ram.pay509, 1
  store i64 %ram.pay514, ptr %var._515, align 8
  br label %choice.exit513

choice.else512:                                   ; preds = %a.rd.done474
  %ram.pay516 = extractvalue { i1, i64 } %ram.pay509, 1
  %pay.ptr517 = inttoptr i64 %ram.pay516 to ptr
  store ptr %pay.ptr517, ptr %var._518, align 8
  br label %choice.exit513

choice.exit513:                                   ; preds = %choice.else512, %choice.then511
  %choice.res = phi i64 [ %ram.pay514, %choice.then511 ], [ -1, %choice.else512 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load519 = load i64, ptr %var.v_idx, align 8
  %cmptmp520 = icmp slt i64 %var.load519, 0
  br i1 %cmptmp520, label %choice.then521, label %choice.else522

choice.then521:                                   ; preds = %choice.exit513
  %var.load524 = load ptr, ptr %var.graph, align 8
  %var.load525 = load ptr, ptr %var.state, align 8
  %var.load526 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load524, ptr %var.load525, i64 %var.load526)
  %var.load527 = load ptr, ptr %var.lows, align 8
  %a.load528 = load ptr, ptr %var.lows, align 8
  %a.null529 = icmp eq ptr %a.load528, null
  br i1 %a.null529, label %a.create530, label %a.after531

choice.else522:                                   ; preds = %choice.exit513
  %var.load789 = load ptr, ptr %var.ons, align 8
  %a.load790 = load ptr, ptr %var.ons, align 8
  %a.null791 = icmp eq ptr %a.load790, null
  br i1 %a.null791, label %a.create792, label %a.after793

choice.exit523:                                   ; preds = %choice.exit856, %choice.exit755
  br label %choice.exit454

a.create530:                                      ; preds = %choice.then521
  %arena.cur532 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 24)
  %arena.cur534 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf535 = call ptr @dva_arena_alloc(ptr %arena.cur534, i64 128)
  %a.len.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 0
  store i64 0, ptr %a.len.gep536, align 8
  %a.data.gep537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 1
  store ptr %a.buf535, ptr %a.data.gep537, align 8
  %a.cap.gep538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 2
  store i64 16, ptr %a.cap.gep538, align 8
  store ptr %a.create533, ptr %var.lows, align 8
  br label %a.after531

a.after531:                                       ; preds = %a.create530, %choice.then521
  %a.load2539 = load ptr, ptr %var.lows, align 8
  %var.load540 = load i64, ptr %var.u, align 8
  %var.load541 = load ptr, ptr %var.lows, align 8
  %a.load542 = load ptr, ptr %var.lows, align 8
  %a.null543 = icmp eq ptr %a.load542, null
  br i1 %a.null543, label %a.create544, label %a.after545

a.create544:                                      ; preds = %a.after531
  %arena.cur546 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create547 = call ptr @dva_arena_alloc(ptr %arena.cur546, i64 24)
  %arena.cur548 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf549 = call ptr @dva_arena_alloc(ptr %arena.cur548, i64 128)
  %a.len.gep550 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create547, i32 0, i32 0
  store i64 0, ptr %a.len.gep550, align 8
  %a.data.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create547, i32 0, i32 1
  store ptr %a.buf549, ptr %a.data.gep551, align 8
  %a.cap.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create547, i32 0, i32 2
  store i64 16, ptr %a.cap.gep552, align 8
  store ptr %a.create547, ptr %var.lows, align 8
  br label %a.after545

a.after545:                                       ; preds = %a.create544, %a.after531
  %a.load2553 = load ptr, ptr %var.lows, align 8
  %var.load554 = load i64, ptr %var.u, align 8
  %a.rd.nonnull555 = icmp ne ptr %a.load2553, null
  br i1 %a.rd.nonnull555, label %a.rd.check556, label %a.rd.err.null558

a.rd.check556:                                    ; preds = %a.after545
  %a.rd.len561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2553, i32 0, i32 0
  %a.rd.len562 = load i64, ptr %a.rd.len561, align 8
  %a.rd.ge0563 = icmp sge i64 %var.load554, 0
  %a.rd.lt564 = icmp slt i64 %var.load554, %a.rd.len562
  %a.rd.bounds565 = and i1 %a.rd.ge0563, %a.rd.lt564
  br i1 %a.rd.bounds565, label %a.rd.ok557, label %a.rd.err.oob559

a.rd.ok557:                                       ; preds = %a.rd.check556
  %a.rd.data566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2553, i32 0, i32 1
  %a.rd.data567 = load ptr, ptr %a.rd.data566, align 8
  %a.rd.elem.gep568 = getelementptr i64, ptr %a.rd.data567, i64 %var.load554
  %a.rd.elem569 = load i64, ptr %a.rd.elem.gep568, align 8
  br label %a.rd.done560

a.rd.err.null558:                                 ; preds = %a.after545
  %arena.cur570 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 56)
  %err.code.gep572 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 0
  store i64 4011, ptr %err.code.gep572, align 8
  %err.msg.gep573 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep573, align 8
  %err.file.gep574 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep574, align 8
  %err.line.gep575 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 3
  store i64 303, ptr %err.line.gep575, align 8
  %err.col.gep576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 4
  store i64 41, ptr %err.col.gep576, align 8
  %err.ctx.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc571, i32 0, i32 5
  %err.ctx0.gep578 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep577, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep578, align 8
  %err.ctx1.gep579 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep577, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep579, align 8
  %err.p2i580 = ptrtoint ptr %err.alloc571 to i64
  br label %a.rd.done560

a.rd.err.oob559:                                  ; preds = %a.rd.check556
  %arena.cur581 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 56)
  %err.code.gep583 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 0
  store i64 4011, ptr %err.code.gep583, align 8
  %err.msg.gep584 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep584, align 8
  %err.file.gep585 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep585, align 8
  %err.line.gep586 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 3
  store i64 303, ptr %err.line.gep586, align 8
  %err.col.gep587 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 4
  store i64 41, ptr %err.col.gep587, align 8
  %err.ctx.gep588 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc582, i32 0, i32 5
  %err.ctx0.gep589 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep588, i32 0, i32 0
  store i64 %var.load554, ptr %err.ctx0.gep589, align 8
  %err.ctx1.gep590 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep588, i32 0, i32 1
  store i64 %a.rd.len562, ptr %err.ctx1.gep590, align 8
  %err.p2i591 = ptrtoint ptr %err.alloc582 to i64
  br label %a.rd.done560

a.rd.done560:                                     ; preds = %a.rd.err.oob559, %a.rd.err.null558, %a.rd.ok557
  %a.rd.tag592 = phi i1 [ true, %a.rd.ok557 ], [ false, %a.rd.err.null558 ], [ false, %a.rd.err.oob559 ]
  %a.rd.pay593 = phi i64 [ %a.rd.elem569, %a.rd.ok557 ], [ %err.p2i580, %a.rd.err.null558 ], [ %err.p2i591, %a.rd.err.oob559 ]
  %ram.tag594 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag592, 0
  %ram.pay595 = insertvalue { i1, i64 } %ram.tag594, i64 %a.rd.pay593, 1
  %unwrap.is_pos596 = extractvalue { i1, i64 } %ram.pay595, 0
  br i1 %unwrap.is_pos596, label %unwrap.pos.77, label %unwrap.abort.77

unwrap.pos.77:                                    ; preds = %a.rd.done560
  %unwrap.pay.pos628 = extractvalue { i1, i64 } %ram.pay595, 1
  %var.load629 = load ptr, ptr %var.lows, align 8
  %a.load630 = load ptr, ptr %var.lows, align 8
  %a.null631 = icmp eq ptr %a.load630, null
  br i1 %a.null631, label %a.create632, label %a.after633

unwrap.abort.77:                                  ; preds = %a.rd.done560
  %unwrap.pay.abort597 = extractvalue { i1, i64 } %ram.pay595, 1
  %err.ptr598 = inttoptr i64 %unwrap.pay.abort597 to ptr
  %err.code.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr598, i32 0, i32 0
  %err.code600 = load i64, ptr %err.code.gep599, align 8
  %err.msg.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr598, i32 0, i32 1
  %err.msg.struct602 = load ptr, ptr %err.msg.gep601, align 8
  %err.file.gep603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr598, i32 0, i32 2
  %err.file.struct604 = load ptr, ptr %err.file.gep603, align 8
  %err.line.gep605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr598, i32 0, i32 3
  %err.line606 = load i64, ptr %err.line.gep605, align 8
  %err.col.gep607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr598, i32 0, i32 4
  %err.col608 = load i64, ptr %err.col.gep607, align 8
  %err.msg.len609 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct602, i32 0, i32 0
  %err.msg.len610 = load i64, ptr %err.msg.len609, align 8
  %err.msg.len611 = and i64 %err.msg.len610, 281474976710655
  %err.msg.len32612 = trunc i64 %err.msg.len611 to i32
  %err.msg.data613 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct602, i32 0, i32 1
  %err.msg.data614 = load ptr, ptr %err.msg.data613, align 8
  %err.file.len615 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct604, i32 0, i32 0
  %err.file.len616 = load i64, ptr %err.file.len615, align 8
  %err.file.len617 = and i64 %err.file.len616, 281474976710655
  %err.file.len32618 = trunc i64 %err.file.len617 to i32
  %err.file.data619 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct604, i32 0, i32 1
  %err.file.data620 = load ptr, ptr %err.file.data619, align 8
  %err.thread.rec621 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread622 = icmp ne ptr %err.thread.rec621, null
  br i1 %err.is.thread622, label %err.thread623, label %err.normal624

err.thread623:                                    ; preds = %unwrap.abort.77
  %err.haserr.gep625 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec621, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep625, align 8
  %err.err.gep626 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec621, i32 0, i32 7
  store ptr %err.ptr598, ptr %err.err.gep626, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal624:                                    ; preds = %unwrap.abort.77
  %err.panic.printf627 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code600, i32 %err.msg.len32612, ptr %err.msg.data614, i32 %err.file.len32618, ptr %err.file.data620, i64 %err.line606, i64 %err.col608)
  call void @exit(i32 1)
  unreachable

a.create632:                                      ; preds = %unwrap.pos.77
  %arena.cur634 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create635 = call ptr @dva_arena_alloc(ptr %arena.cur634, i64 24)
  %arena.cur636 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 128)
  %a.len.gep638 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 0
  store i64 0, ptr %a.len.gep638, align 8
  %a.data.gep639 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 1
  store ptr %a.buf637, ptr %a.data.gep639, align 8
  %a.cap.gep640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 2
  store i64 16, ptr %a.cap.gep640, align 8
  store ptr %a.create635, ptr %var.lows, align 8
  br label %a.after633

a.after633:                                       ; preds = %a.create632, %unwrap.pos.77
  %a.load2641 = load ptr, ptr %var.lows, align 8
  %var.load642 = load i64, ptr %var.v, align 8
  %a.rd.nonnull643 = icmp ne ptr %a.load2641, null
  br i1 %a.rd.nonnull643, label %a.rd.check644, label %a.rd.err.null646

a.rd.check644:                                    ; preds = %a.after633
  %a.rd.len649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2641, i32 0, i32 0
  %a.rd.len650 = load i64, ptr %a.rd.len649, align 8
  %a.rd.ge0651 = icmp sge i64 %var.load642, 0
  %a.rd.lt652 = icmp slt i64 %var.load642, %a.rd.len650
  %a.rd.bounds653 = and i1 %a.rd.ge0651, %a.rd.lt652
  br i1 %a.rd.bounds653, label %a.rd.ok645, label %a.rd.err.oob647

a.rd.ok645:                                       ; preds = %a.rd.check644
  %a.rd.data654 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2641, i32 0, i32 1
  %a.rd.data655 = load ptr, ptr %a.rd.data654, align 8
  %a.rd.elem.gep656 = getelementptr i64, ptr %a.rd.data655, i64 %var.load642
  %a.rd.elem657 = load i64, ptr %a.rd.elem.gep656, align 8
  br label %a.rd.done648

a.rd.err.null646:                                 ; preds = %a.after633
  %arena.cur658 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc659 = call ptr @dva_arena_alloc(ptr %arena.cur658, i64 56)
  %err.code.gep660 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 0
  store i64 4011, ptr %err.code.gep660, align 8
  %err.msg.gep661 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep661, align 8
  %err.file.gep662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep662, align 8
  %err.line.gep663 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 3
  store i64 303, ptr %err.line.gep663, align 8
  %err.col.gep664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 4
  store i64 52, ptr %err.col.gep664, align 8
  %err.ctx.gep665 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 5
  %err.ctx0.gep666 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep666, align 8
  %err.ctx1.gep667 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep667, align 8
  %err.p2i668 = ptrtoint ptr %err.alloc659 to i64
  br label %a.rd.done648

a.rd.err.oob647:                                  ; preds = %a.rd.check644
  %arena.cur669 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc670 = call ptr @dva_arena_alloc(ptr %arena.cur669, i64 56)
  %err.code.gep671 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 0
  store i64 4011, ptr %err.code.gep671, align 8
  %err.msg.gep672 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep672, align 8
  %err.file.gep673 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep673, align 8
  %err.line.gep674 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 3
  store i64 303, ptr %err.line.gep674, align 8
  %err.col.gep675 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 4
  store i64 52, ptr %err.col.gep675, align 8
  %err.ctx.gep676 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 5
  %err.ctx0.gep677 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep676, i32 0, i32 0
  store i64 %var.load642, ptr %err.ctx0.gep677, align 8
  %err.ctx1.gep678 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep676, i32 0, i32 1
  store i64 %a.rd.len650, ptr %err.ctx1.gep678, align 8
  %err.p2i679 = ptrtoint ptr %err.alloc670 to i64
  br label %a.rd.done648

a.rd.done648:                                     ; preds = %a.rd.err.oob647, %a.rd.err.null646, %a.rd.ok645
  %a.rd.tag680 = phi i1 [ true, %a.rd.ok645 ], [ false, %a.rd.err.null646 ], [ false, %a.rd.err.oob647 ]
  %a.rd.pay681 = phi i64 [ %a.rd.elem657, %a.rd.ok645 ], [ %err.p2i668, %a.rd.err.null646 ], [ %err.p2i679, %a.rd.err.oob647 ]
  %ram.tag682 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag680, 0
  %ram.pay683 = insertvalue { i1, i64 } %ram.tag682, i64 %a.rd.pay681, 1
  %unwrap.is_pos684 = extractvalue { i1, i64 } %ram.pay683, 0
  br i1 %unwrap.is_pos684, label %unwrap.pos.78, label %unwrap.abort.78

unwrap.pos.78:                                    ; preds = %a.rd.done648
  %unwrap.pay.pos716 = extractvalue { i1, i64 } %ram.pay683, 1
  %min = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos628, i64 %unwrap.pay.pos716)
  %a.wr.nonnull717 = icmp ne ptr %a.load2539, null
  br i1 %a.wr.nonnull717, label %a.wr.check718, label %a.wr.err.null720

unwrap.abort.78:                                  ; preds = %a.rd.done648
  %unwrap.pay.abort685 = extractvalue { i1, i64 } %ram.pay683, 1
  %err.ptr686 = inttoptr i64 %unwrap.pay.abort685 to ptr
  %err.code.gep687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr686, i32 0, i32 0
  %err.code688 = load i64, ptr %err.code.gep687, align 8
  %err.msg.gep689 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr686, i32 0, i32 1
  %err.msg.struct690 = load ptr, ptr %err.msg.gep689, align 8
  %err.file.gep691 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr686, i32 0, i32 2
  %err.file.struct692 = load ptr, ptr %err.file.gep691, align 8
  %err.line.gep693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr686, i32 0, i32 3
  %err.line694 = load i64, ptr %err.line.gep693, align 8
  %err.col.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr686, i32 0, i32 4
  %err.col696 = load i64, ptr %err.col.gep695, align 8
  %err.msg.len697 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct690, i32 0, i32 0
  %err.msg.len698 = load i64, ptr %err.msg.len697, align 8
  %err.msg.len699 = and i64 %err.msg.len698, 281474976710655
  %err.msg.len32700 = trunc i64 %err.msg.len699 to i32
  %err.msg.data701 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct690, i32 0, i32 1
  %err.msg.data702 = load ptr, ptr %err.msg.data701, align 8
  %err.file.len703 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct692, i32 0, i32 0
  %err.file.len704 = load i64, ptr %err.file.len703, align 8
  %err.file.len705 = and i64 %err.file.len704, 281474976710655
  %err.file.len32706 = trunc i64 %err.file.len705 to i32
  %err.file.data707 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct692, i32 0, i32 1
  %err.file.data708 = load ptr, ptr %err.file.data707, align 8
  %err.thread.rec709 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread710 = icmp ne ptr %err.thread.rec709, null
  br i1 %err.is.thread710, label %err.thread711, label %err.normal712

err.thread711:                                    ; preds = %unwrap.abort.78
  %err.haserr.gep713 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec709, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep713, align 8
  %err.err.gep714 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec709, i32 0, i32 7
  store ptr %err.ptr686, ptr %err.err.gep714, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal712:                                    ; preds = %unwrap.abort.78
  %err.panic.printf715 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code688, i32 %err.msg.len32700, ptr %err.msg.data702, i32 %err.file.len32706, ptr %err.file.data708, i64 %err.line694, i64 %err.col696)
  call void @exit(i32 1)
  unreachable

a.wr.check718:                                    ; preds = %unwrap.pos.78
  %a.wr.len723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 0
  %a.wr.len724 = load i64, ptr %a.wr.len723, align 8
  %a.wr.ge0725 = icmp sge i64 %var.load540, 0
  %a.wr.lt726 = icmp slt i64 %var.load540, %a.wr.len724
  %a.wr.bounds727 = and i1 %a.wr.ge0725, %a.wr.lt726
  br i1 %a.wr.bounds727, label %a.wr.ok719, label %a.wr.err.oob721

a.wr.ok719:                                       ; preds = %a.wr.check718
  %a.wr.data728 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 1
  %a.wr.data729 = load ptr, ptr %a.wr.data728, align 8
  %a.elem.gep730 = getelementptr i64, ptr %a.wr.data729, i64 %var.load540
  store i64 %min, ptr %a.elem.gep730, align 8
  br label %a.wr.done722

a.wr.err.null720:                                 ; preds = %unwrap.pos.78
  %arena.cur731 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 56)
  %err.code.gep733 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 0
  store i64 4011, ptr %err.code.gep733, align 8
  %err.msg.gep734 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep734, align 8
  %err.file.gep735 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep735, align 8
  %err.line.gep736 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 3
  store i64 0, ptr %err.line.gep736, align 8
  %err.col.gep737 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 4
  store i64 0, ptr %err.col.gep737, align 8
  %err.ctx.gep738 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc732, i32 0, i32 5
  %err.ctx0.gep739 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep738, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep739, align 8
  %err.ctx1.gep740 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep738, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep740, align 8
  br label %a.wr.done722

a.wr.err.oob721:                                  ; preds = %a.wr.check718
  %arena.cur741 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc742 = call ptr @dva_arena_alloc(ptr %arena.cur741, i64 56)
  %err.code.gep743 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 0
  store i64 4011, ptr %err.code.gep743, align 8
  %err.msg.gep744 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep744, align 8
  %err.file.gep745 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep745, align 8
  %err.line.gep746 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 3
  store i64 0, ptr %err.line.gep746, align 8
  %err.col.gep747 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 4
  store i64 0, ptr %err.col.gep747, align 8
  %err.ctx.gep748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc742, i32 0, i32 5
  %err.ctx0.gep749 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep748, i32 0, i32 0
  store i64 %var.load540, ptr %err.ctx0.gep749, align 8
  %err.ctx1.gep750 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep748, i32 0, i32 1
  store i64 %a.wr.len724, ptr %err.ctx1.gep750, align 8
  br label %a.wr.done722

a.wr.done722:                                     ; preds = %a.wr.err.oob721, %a.wr.err.null720, %a.wr.ok719
  %a.wr.niche751 = phi ptr [ null, %a.wr.ok719 ], [ %err.alloc732, %a.wr.err.null720 ], [ %err.alloc742, %a.wr.err.oob721 ]
  %niche.eq.null752 = icmp eq ptr %a.wr.niche751, null
  br i1 %niche.eq.null752, label %choice.then753, label %choice.else754

choice.then753:                                   ; preds = %a.wr.done722
  br label %choice.exit755

choice.else754:                                   ; preds = %a.wr.done722
  store ptr %a.wr.niche751, ptr %var._756, align 8
  store ptr %a.wr.niche751, ptr %var._757, align 8
  store ptr %a.wr.niche751, ptr %var._758, align 8
  %err.code.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche751, i32 0, i32 0
  %err.code760 = load i64, ptr %err.code.gep759, align 8
  %err.msg.gep761 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche751, i32 0, i32 1
  %err.msg.struct762 = load ptr, ptr %err.msg.gep761, align 8
  %err.file.gep763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche751, i32 0, i32 2
  %err.file.struct764 = load ptr, ptr %err.file.gep763, align 8
  %err.line.gep765 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche751, i32 0, i32 3
  %err.line766 = load i64, ptr %err.line.gep765, align 8
  %err.col.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche751, i32 0, i32 4
  %err.col768 = load i64, ptr %err.col.gep767, align 8
  %err.msg.len769 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct762, i32 0, i32 0
  %err.msg.len770 = load i64, ptr %err.msg.len769, align 8
  %err.msg.len771 = and i64 %err.msg.len770, 281474976710655
  %err.msg.len32772 = trunc i64 %err.msg.len771 to i32
  %err.msg.data773 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct762, i32 0, i32 1
  %err.msg.data774 = load ptr, ptr %err.msg.data773, align 8
  %err.file.len775 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct764, i32 0, i32 0
  %err.file.len776 = load i64, ptr %err.file.len775, align 8
  %err.file.len777 = and i64 %err.file.len776, 281474976710655
  %err.file.len32778 = trunc i64 %err.file.len777 to i32
  %err.file.data779 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct764, i32 0, i32 1
  %err.file.data780 = load ptr, ptr %err.file.data779, align 8
  %err.thread.rec781 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread782 = icmp ne ptr %err.thread.rec781, null
  br i1 %err.is.thread782, label %err.thread783, label %err.normal784

choice.exit755:                                   ; preds = %err.abort788, %choice.then753
  br label %choice.exit523

err.thread783:                                    ; preds = %choice.else754
  %err.haserr.gep785 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec781, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep785, align 8
  %err.err.gep786 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec781, i32 0, i32 7
  store ptr %a.wr.niche751, ptr %err.err.gep786, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal784:                                    ; preds = %choice.else754
  %err.panic.printf787 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code760, i32 %err.msg.len32772, ptr %err.msg.data774, i32 %err.file.len32778, ptr %err.file.data780, i64 %err.line766, i64 %err.col768)
  call void @exit(i32 1)
  unreachable

err.abort788:                                     ; No predecessors!
  br label %choice.exit755

a.create792:                                      ; preds = %choice.else522
  %arena.cur794 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create795 = call ptr @dva_arena_alloc(ptr %arena.cur794, i64 24)
  %arena.cur796 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 128)
  %a.len.gep798 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 0
  store i64 0, ptr %a.len.gep798, align 8
  %a.data.gep799 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 1
  store ptr %a.buf797, ptr %a.data.gep799, align 8
  %a.cap.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 2
  store i64 16, ptr %a.cap.gep800, align 8
  store ptr %a.create795, ptr %var.ons, align 8
  br label %a.after793

a.after793:                                       ; preds = %a.create792, %choice.else522
  %a.load2801 = load ptr, ptr %var.ons, align 8
  %var.load802 = load i64, ptr %var.v, align 8
  %a.rd.nonnull803 = icmp ne ptr %a.load2801, null
  br i1 %a.rd.nonnull803, label %a.rd.check804, label %a.rd.err.null806

a.rd.check804:                                    ; preds = %a.after793
  %a.rd.len809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2801, i32 0, i32 0
  %a.rd.len810 = load i64, ptr %a.rd.len809, align 8
  %a.rd.ge0811 = icmp sge i64 %var.load802, 0
  %a.rd.lt812 = icmp slt i64 %var.load802, %a.rd.len810
  %a.rd.bounds813 = and i1 %a.rd.ge0811, %a.rd.lt812
  br i1 %a.rd.bounds813, label %a.rd.ok805, label %a.rd.err.oob807

a.rd.ok805:                                       ; preds = %a.rd.check804
  %a.rd.data814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2801, i32 0, i32 1
  %a.rd.data815 = load ptr, ptr %a.rd.data814, align 8
  %a.rd.elem.gep816 = getelementptr i64, ptr %a.rd.data815, i64 %var.load802
  %a.rd.elem817 = load i64, ptr %a.rd.elem.gep816, align 8
  br label %a.rd.done808

a.rd.err.null806:                                 ; preds = %a.after793
  %arena.cur818 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc819 = call ptr @dva_arena_alloc(ptr %arena.cur818, i64 56)
  %err.code.gep820 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 0
  store i64 4011, ptr %err.code.gep820, align 8
  %err.msg.gep821 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep821, align 8
  %err.file.gep822 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep822, align 8
  %err.line.gep823 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 3
  store i64 305, ptr %err.line.gep823, align 8
  %err.col.gep824 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 4
  store i64 33, ptr %err.col.gep824, align 8
  %err.ctx.gep825 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 5
  %err.ctx0.gep826 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep825, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep826, align 8
  %err.ctx1.gep827 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep825, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep827, align 8
  %err.p2i828 = ptrtoint ptr %err.alloc819 to i64
  br label %a.rd.done808

a.rd.err.oob807:                                  ; preds = %a.rd.check804
  %arena.cur829 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc830 = call ptr @dva_arena_alloc(ptr %arena.cur829, i64 56)
  %err.code.gep831 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 0
  store i64 4011, ptr %err.code.gep831, align 8
  %err.msg.gep832 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep832, align 8
  %err.file.gep833 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep833, align 8
  %err.line.gep834 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 3
  store i64 305, ptr %err.line.gep834, align 8
  %err.col.gep835 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 4
  store i64 33, ptr %err.col.gep835, align 8
  %err.ctx.gep836 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc830, i32 0, i32 5
  %err.ctx0.gep837 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep836, i32 0, i32 0
  store i64 %var.load802, ptr %err.ctx0.gep837, align 8
  %err.ctx1.gep838 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep836, i32 0, i32 1
  store i64 %a.rd.len810, ptr %err.ctx1.gep838, align 8
  %err.p2i839 = ptrtoint ptr %err.alloc830 to i64
  br label %a.rd.done808

a.rd.done808:                                     ; preds = %a.rd.err.oob807, %a.rd.err.null806, %a.rd.ok805
  %a.rd.tag840 = phi i1 [ true, %a.rd.ok805 ], [ false, %a.rd.err.null806 ], [ false, %a.rd.err.oob807 ]
  %a.rd.pay841 = phi i64 [ %a.rd.elem817, %a.rd.ok805 ], [ %err.p2i828, %a.rd.err.null806 ], [ %err.p2i839, %a.rd.err.oob807 ]
  %ram.tag842 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag840, 0
  %ram.pay843 = insertvalue { i1, i64 } %ram.tag842, i64 %a.rd.pay841, 1
  %ram.tag844 = extractvalue { i1, i64 } %ram.pay843, 0
  br i1 %ram.tag844, label %choice.then845, label %choice.else846

choice.then845:                                   ; preds = %a.rd.done808
  %ram.pay848 = extractvalue { i1, i64 } %ram.pay843, 1
  %pay.flag = trunc i64 %ram.pay848 to i1
  store i1 %pay.flag, ptr %var._849, align 1
  br label %choice.exit847

choice.else846:                                   ; preds = %a.rd.done808
  %ram.pay850 = extractvalue { i1, i64 } %ram.pay843, 1
  %pay.ptr851 = inttoptr i64 %ram.pay850 to ptr
  store ptr %pay.ptr851, ptr %var._852, align 8
  br label %choice.exit847

choice.exit847:                                   ; preds = %choice.else846, %choice.then845
  %choice.res853 = phi i1 [ %pay.flag, %choice.then845 ], [ false, %choice.else846 ]
  store i1 %choice.res853, ptr %var.v_on, align 1
  %var.load854 = load i1, ptr %var.v_on, align 1
  br i1 %var.load854, label %choice.then855, label %choice.exit856

choice.then855:                                   ; preds = %choice.exit847
  %var.load857 = load ptr, ptr %var.lows, align 8
  %a.load858 = load ptr, ptr %var.lows, align 8
  %a.null859 = icmp eq ptr %a.load858, null
  br i1 %a.null859, label %a.create860, label %a.after861

choice.exit856:                                   ; preds = %choice.exit1086, %choice.exit847
  br label %choice.exit523

a.create860:                                      ; preds = %choice.then855
  %arena.cur862 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create863 = call ptr @dva_arena_alloc(ptr %arena.cur862, i64 24)
  %arena.cur864 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf865 = call ptr @dva_arena_alloc(ptr %arena.cur864, i64 128)
  %a.len.gep866 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 0
  store i64 0, ptr %a.len.gep866, align 8
  %a.data.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 1
  store ptr %a.buf865, ptr %a.data.gep867, align 8
  %a.cap.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 2
  store i64 16, ptr %a.cap.gep868, align 8
  store ptr %a.create863, ptr %var.lows, align 8
  br label %a.after861

a.after861:                                       ; preds = %a.create860, %choice.then855
  %a.load2869 = load ptr, ptr %var.lows, align 8
  %var.load870 = load i64, ptr %var.u, align 8
  %var.load871 = load ptr, ptr %var.lows, align 8
  %a.load872 = load ptr, ptr %var.lows, align 8
  %a.null873 = icmp eq ptr %a.load872, null
  br i1 %a.null873, label %a.create874, label %a.after875

a.create874:                                      ; preds = %a.after861
  %arena.cur876 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create877 = call ptr @dva_arena_alloc(ptr %arena.cur876, i64 24)
  %arena.cur878 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf879 = call ptr @dva_arena_alloc(ptr %arena.cur878, i64 128)
  %a.len.gep880 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 0
  store i64 0, ptr %a.len.gep880, align 8
  %a.data.gep881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 1
  store ptr %a.buf879, ptr %a.data.gep881, align 8
  %a.cap.gep882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 2
  store i64 16, ptr %a.cap.gep882, align 8
  store ptr %a.create877, ptr %var.lows, align 8
  br label %a.after875

a.after875:                                       ; preds = %a.create874, %a.after861
  %a.load2883 = load ptr, ptr %var.lows, align 8
  %var.load884 = load i64, ptr %var.u, align 8
  %a.rd.nonnull885 = icmp ne ptr %a.load2883, null
  br i1 %a.rd.nonnull885, label %a.rd.check886, label %a.rd.err.null888

a.rd.check886:                                    ; preds = %a.after875
  %a.rd.len891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2883, i32 0, i32 0
  %a.rd.len892 = load i64, ptr %a.rd.len891, align 8
  %a.rd.ge0893 = icmp sge i64 %var.load884, 0
  %a.rd.lt894 = icmp slt i64 %var.load884, %a.rd.len892
  %a.rd.bounds895 = and i1 %a.rd.ge0893, %a.rd.lt894
  br i1 %a.rd.bounds895, label %a.rd.ok887, label %a.rd.err.oob889

a.rd.ok887:                                       ; preds = %a.rd.check886
  %a.rd.data896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2883, i32 0, i32 1
  %a.rd.data897 = load ptr, ptr %a.rd.data896, align 8
  %a.rd.elem.gep898 = getelementptr i64, ptr %a.rd.data897, i64 %var.load884
  %a.rd.elem899 = load i64, ptr %a.rd.elem.gep898, align 8
  br label %a.rd.done890

a.rd.err.null888:                                 ; preds = %a.after875
  %arena.cur900 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc901 = call ptr @dva_arena_alloc(ptr %arena.cur900, i64 56)
  %err.code.gep902 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 0
  store i64 4011, ptr %err.code.gep902, align 8
  %err.msg.gep903 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep903, align 8
  %err.file.gep904 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep904, align 8
  %err.line.gep905 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 3
  store i64 308, ptr %err.line.gep905, align 8
  %err.col.gep906 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 4
  store i64 47, ptr %err.col.gep906, align 8
  %err.ctx.gep907 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc901, i32 0, i32 5
  %err.ctx0.gep908 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep907, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep908, align 8
  %err.ctx1.gep909 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep907, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep909, align 8
  %err.p2i910 = ptrtoint ptr %err.alloc901 to i64
  br label %a.rd.done890

a.rd.err.oob889:                                  ; preds = %a.rd.check886
  %arena.cur911 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc912 = call ptr @dva_arena_alloc(ptr %arena.cur911, i64 56)
  %err.code.gep913 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 0
  store i64 4011, ptr %err.code.gep913, align 8
  %err.msg.gep914 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep914, align 8
  %err.file.gep915 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep915, align 8
  %err.line.gep916 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 3
  store i64 308, ptr %err.line.gep916, align 8
  %err.col.gep917 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 4
  store i64 47, ptr %err.col.gep917, align 8
  %err.ctx.gep918 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc912, i32 0, i32 5
  %err.ctx0.gep919 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep918, i32 0, i32 0
  store i64 %var.load884, ptr %err.ctx0.gep919, align 8
  %err.ctx1.gep920 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep918, i32 0, i32 1
  store i64 %a.rd.len892, ptr %err.ctx1.gep920, align 8
  %err.p2i921 = ptrtoint ptr %err.alloc912 to i64
  br label %a.rd.done890

a.rd.done890:                                     ; preds = %a.rd.err.oob889, %a.rd.err.null888, %a.rd.ok887
  %a.rd.tag922 = phi i1 [ true, %a.rd.ok887 ], [ false, %a.rd.err.null888 ], [ false, %a.rd.err.oob889 ]
  %a.rd.pay923 = phi i64 [ %a.rd.elem899, %a.rd.ok887 ], [ %err.p2i910, %a.rd.err.null888 ], [ %err.p2i921, %a.rd.err.oob889 ]
  %ram.tag924 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag922, 0
  %ram.pay925 = insertvalue { i1, i64 } %ram.tag924, i64 %a.rd.pay923, 1
  %unwrap.is_pos926 = extractvalue { i1, i64 } %ram.pay925, 0
  br i1 %unwrap.is_pos926, label %unwrap.pos.79, label %unwrap.abort.79

unwrap.pos.79:                                    ; preds = %a.rd.done890
  %unwrap.pay.pos958 = extractvalue { i1, i64 } %ram.pay925, 1
  %var.load959 = load ptr, ptr %var.idxs, align 8
  %a.load960 = load ptr, ptr %var.idxs, align 8
  %a.null961 = icmp eq ptr %a.load960, null
  br i1 %a.null961, label %a.create962, label %a.after963

unwrap.abort.79:                                  ; preds = %a.rd.done890
  %unwrap.pay.abort927 = extractvalue { i1, i64 } %ram.pay925, 1
  %err.ptr928 = inttoptr i64 %unwrap.pay.abort927 to ptr
  %err.code.gep929 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr928, i32 0, i32 0
  %err.code930 = load i64, ptr %err.code.gep929, align 8
  %err.msg.gep931 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr928, i32 0, i32 1
  %err.msg.struct932 = load ptr, ptr %err.msg.gep931, align 8
  %err.file.gep933 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr928, i32 0, i32 2
  %err.file.struct934 = load ptr, ptr %err.file.gep933, align 8
  %err.line.gep935 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr928, i32 0, i32 3
  %err.line936 = load i64, ptr %err.line.gep935, align 8
  %err.col.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr928, i32 0, i32 4
  %err.col938 = load i64, ptr %err.col.gep937, align 8
  %err.msg.len939 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct932, i32 0, i32 0
  %err.msg.len940 = load i64, ptr %err.msg.len939, align 8
  %err.msg.len941 = and i64 %err.msg.len940, 281474976710655
  %err.msg.len32942 = trunc i64 %err.msg.len941 to i32
  %err.msg.data943 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct932, i32 0, i32 1
  %err.msg.data944 = load ptr, ptr %err.msg.data943, align 8
  %err.file.len945 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct934, i32 0, i32 0
  %err.file.len946 = load i64, ptr %err.file.len945, align 8
  %err.file.len947 = and i64 %err.file.len946, 281474976710655
  %err.file.len32948 = trunc i64 %err.file.len947 to i32
  %err.file.data949 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct934, i32 0, i32 1
  %err.file.data950 = load ptr, ptr %err.file.data949, align 8
  %err.thread.rec951 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread952 = icmp ne ptr %err.thread.rec951, null
  br i1 %err.is.thread952, label %err.thread953, label %err.normal954

err.thread953:                                    ; preds = %unwrap.abort.79
  %err.haserr.gep955 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec951, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep955, align 8
  %err.err.gep956 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec951, i32 0, i32 7
  store ptr %err.ptr928, ptr %err.err.gep956, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal954:                                    ; preds = %unwrap.abort.79
  %err.panic.printf957 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code930, i32 %err.msg.len32942, ptr %err.msg.data944, i32 %err.file.len32948, ptr %err.file.data950, i64 %err.line936, i64 %err.col938)
  call void @exit(i32 1)
  unreachable

a.create962:                                      ; preds = %unwrap.pos.79
  %arena.cur964 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create965 = call ptr @dva_arena_alloc(ptr %arena.cur964, i64 24)
  %arena.cur966 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf967 = call ptr @dva_arena_alloc(ptr %arena.cur966, i64 128)
  %a.len.gep968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create965, i32 0, i32 0
  store i64 0, ptr %a.len.gep968, align 8
  %a.data.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create965, i32 0, i32 1
  store ptr %a.buf967, ptr %a.data.gep969, align 8
  %a.cap.gep970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create965, i32 0, i32 2
  store i64 16, ptr %a.cap.gep970, align 8
  store ptr %a.create965, ptr %var.idxs, align 8
  br label %a.after963

a.after963:                                       ; preds = %a.create962, %unwrap.pos.79
  %a.load2971 = load ptr, ptr %var.idxs, align 8
  %var.load972 = load i64, ptr %var.v, align 8
  %a.rd.nonnull973 = icmp ne ptr %a.load2971, null
  br i1 %a.rd.nonnull973, label %a.rd.check974, label %a.rd.err.null976

a.rd.check974:                                    ; preds = %a.after963
  %a.rd.len979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2971, i32 0, i32 0
  %a.rd.len980 = load i64, ptr %a.rd.len979, align 8
  %a.rd.ge0981 = icmp sge i64 %var.load972, 0
  %a.rd.lt982 = icmp slt i64 %var.load972, %a.rd.len980
  %a.rd.bounds983 = and i1 %a.rd.ge0981, %a.rd.lt982
  br i1 %a.rd.bounds983, label %a.rd.ok975, label %a.rd.err.oob977

a.rd.ok975:                                       ; preds = %a.rd.check974
  %a.rd.data984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2971, i32 0, i32 1
  %a.rd.data985 = load ptr, ptr %a.rd.data984, align 8
  %a.rd.elem.gep986 = getelementptr i64, ptr %a.rd.data985, i64 %var.load972
  %a.rd.elem987 = load i64, ptr %a.rd.elem.gep986, align 8
  br label %a.rd.done978

a.rd.err.null976:                                 ; preds = %a.after963
  %arena.cur988 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc989 = call ptr @dva_arena_alloc(ptr %arena.cur988, i64 56)
  %err.code.gep990 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 0
  store i64 4011, ptr %err.code.gep990, align 8
  %err.msg.gep991 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep991, align 8
  %err.file.gep992 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep992, align 8
  %err.line.gep993 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 3
  store i64 308, ptr %err.line.gep993, align 8
  %err.col.gep994 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 4
  store i64 58, ptr %err.col.gep994, align 8
  %err.ctx.gep995 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 5
  %err.ctx0.gep996 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep995, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep996, align 8
  %err.ctx1.gep997 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep995, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep997, align 8
  %err.p2i998 = ptrtoint ptr %err.alloc989 to i64
  br label %a.rd.done978

a.rd.err.oob977:                                  ; preds = %a.rd.check974
  %arena.cur999 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1000 = call ptr @dva_arena_alloc(ptr %arena.cur999, i64 56)
  %err.code.gep1001 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1001, align 8
  %err.msg.gep1002 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1002, align 8
  %err.file.gep1003 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1003, align 8
  %err.line.gep1004 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 3
  store i64 308, ptr %err.line.gep1004, align 8
  %err.col.gep1005 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 4
  store i64 58, ptr %err.col.gep1005, align 8
  %err.ctx.gep1006 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1000, i32 0, i32 5
  %err.ctx0.gep1007 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1006, i32 0, i32 0
  store i64 %var.load972, ptr %err.ctx0.gep1007, align 8
  %err.ctx1.gep1008 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1006, i32 0, i32 1
  store i64 %a.rd.len980, ptr %err.ctx1.gep1008, align 8
  %err.p2i1009 = ptrtoint ptr %err.alloc1000 to i64
  br label %a.rd.done978

a.rd.done978:                                     ; preds = %a.rd.err.oob977, %a.rd.err.null976, %a.rd.ok975
  %a.rd.tag1010 = phi i1 [ true, %a.rd.ok975 ], [ false, %a.rd.err.null976 ], [ false, %a.rd.err.oob977 ]
  %a.rd.pay1011 = phi i64 [ %a.rd.elem987, %a.rd.ok975 ], [ %err.p2i998, %a.rd.err.null976 ], [ %err.p2i1009, %a.rd.err.oob977 ]
  %ram.tag1012 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1010, 0
  %ram.pay1013 = insertvalue { i1, i64 } %ram.tag1012, i64 %a.rd.pay1011, 1
  %unwrap.is_pos1014 = extractvalue { i1, i64 } %ram.pay1013, 0
  br i1 %unwrap.is_pos1014, label %unwrap.pos.80, label %unwrap.abort.80

unwrap.pos.80:                                    ; preds = %a.rd.done978
  %unwrap.pay.pos1046 = extractvalue { i1, i64 } %ram.pay1013, 1
  %min1047 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos958, i64 %unwrap.pay.pos1046)
  %a.wr.nonnull1048 = icmp ne ptr %a.load2869, null
  br i1 %a.wr.nonnull1048, label %a.wr.check1049, label %a.wr.err.null1051

unwrap.abort.80:                                  ; preds = %a.rd.done978
  %unwrap.pay.abort1015 = extractvalue { i1, i64 } %ram.pay1013, 1
  %err.ptr1016 = inttoptr i64 %unwrap.pay.abort1015 to ptr
  %err.code.gep1017 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1016, i32 0, i32 0
  %err.code1018 = load i64, ptr %err.code.gep1017, align 8
  %err.msg.gep1019 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1016, i32 0, i32 1
  %err.msg.struct1020 = load ptr, ptr %err.msg.gep1019, align 8
  %err.file.gep1021 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1016, i32 0, i32 2
  %err.file.struct1022 = load ptr, ptr %err.file.gep1021, align 8
  %err.line.gep1023 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1016, i32 0, i32 3
  %err.line1024 = load i64, ptr %err.line.gep1023, align 8
  %err.col.gep1025 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1016, i32 0, i32 4
  %err.col1026 = load i64, ptr %err.col.gep1025, align 8
  %err.msg.len1027 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1020, i32 0, i32 0
  %err.msg.len1028 = load i64, ptr %err.msg.len1027, align 8
  %err.msg.len1029 = and i64 %err.msg.len1028, 281474976710655
  %err.msg.len321030 = trunc i64 %err.msg.len1029 to i32
  %err.msg.data1031 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1020, i32 0, i32 1
  %err.msg.data1032 = load ptr, ptr %err.msg.data1031, align 8
  %err.file.len1033 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1022, i32 0, i32 0
  %err.file.len1034 = load i64, ptr %err.file.len1033, align 8
  %err.file.len1035 = and i64 %err.file.len1034, 281474976710655
  %err.file.len321036 = trunc i64 %err.file.len1035 to i32
  %err.file.data1037 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1022, i32 0, i32 1
  %err.file.data1038 = load ptr, ptr %err.file.data1037, align 8
  %err.thread.rec1039 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1040 = icmp ne ptr %err.thread.rec1039, null
  br i1 %err.is.thread1040, label %err.thread1041, label %err.normal1042

err.thread1041:                                   ; preds = %unwrap.abort.80
  %err.haserr.gep1043 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1039, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1043, align 8
  %err.err.gep1044 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1039, i32 0, i32 7
  store ptr %err.ptr1016, ptr %err.err.gep1044, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1042:                                   ; preds = %unwrap.abort.80
  %err.panic.printf1045 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1018, i32 %err.msg.len321030, ptr %err.msg.data1032, i32 %err.file.len321036, ptr %err.file.data1038, i64 %err.line1024, i64 %err.col1026)
  call void @exit(i32 1)
  unreachable

a.wr.check1049:                                   ; preds = %unwrap.pos.80
  %a.wr.len1054 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2869, i32 0, i32 0
  %a.wr.len1055 = load i64, ptr %a.wr.len1054, align 8
  %a.wr.ge01056 = icmp sge i64 %var.load870, 0
  %a.wr.lt1057 = icmp slt i64 %var.load870, %a.wr.len1055
  %a.wr.bounds1058 = and i1 %a.wr.ge01056, %a.wr.lt1057
  br i1 %a.wr.bounds1058, label %a.wr.ok1050, label %a.wr.err.oob1052

a.wr.ok1050:                                      ; preds = %a.wr.check1049
  %a.wr.data1059 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2869, i32 0, i32 1
  %a.wr.data1060 = load ptr, ptr %a.wr.data1059, align 8
  %a.elem.gep1061 = getelementptr i64, ptr %a.wr.data1060, i64 %var.load870
  store i64 %min1047, ptr %a.elem.gep1061, align 8
  br label %a.wr.done1053

a.wr.err.null1051:                                ; preds = %unwrap.pos.80
  %arena.cur1062 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1063 = call ptr @dva_arena_alloc(ptr %arena.cur1062, i64 56)
  %err.code.gep1064 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1064, align 8
  %err.msg.gep1065 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1065, align 8
  %err.file.gep1066 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1066, align 8
  %err.line.gep1067 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 3
  store i64 0, ptr %err.line.gep1067, align 8
  %err.col.gep1068 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 4
  store i64 0, ptr %err.col.gep1068, align 8
  %err.ctx.gep1069 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1063, i32 0, i32 5
  %err.ctx0.gep1070 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1069, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1070, align 8
  %err.ctx1.gep1071 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1069, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1071, align 8
  br label %a.wr.done1053

a.wr.err.oob1052:                                 ; preds = %a.wr.check1049
  %arena.cur1072 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1073 = call ptr @dva_arena_alloc(ptr %arena.cur1072, i64 56)
  %err.code.gep1074 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1074, align 8
  %err.msg.gep1075 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1075, align 8
  %err.file.gep1076 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1076, align 8
  %err.line.gep1077 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 3
  store i64 0, ptr %err.line.gep1077, align 8
  %err.col.gep1078 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 4
  store i64 0, ptr %err.col.gep1078, align 8
  %err.ctx.gep1079 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1073, i32 0, i32 5
  %err.ctx0.gep1080 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1079, i32 0, i32 0
  store i64 %var.load870, ptr %err.ctx0.gep1080, align 8
  %err.ctx1.gep1081 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1079, i32 0, i32 1
  store i64 %a.wr.len1055, ptr %err.ctx1.gep1081, align 8
  br label %a.wr.done1053

a.wr.done1053:                                    ; preds = %a.wr.err.oob1052, %a.wr.err.null1051, %a.wr.ok1050
  %a.wr.niche1082 = phi ptr [ null, %a.wr.ok1050 ], [ %err.alloc1063, %a.wr.err.null1051 ], [ %err.alloc1073, %a.wr.err.oob1052 ]
  %niche.eq.null1083 = icmp eq ptr %a.wr.niche1082, null
  br i1 %niche.eq.null1083, label %choice.then1084, label %choice.else1085

choice.then1084:                                  ; preds = %a.wr.done1053
  br label %choice.exit1086

choice.else1085:                                  ; preds = %a.wr.done1053
  store ptr %a.wr.niche1082, ptr %var._1087, align 8
  store ptr %a.wr.niche1082, ptr %var._1088, align 8
  store ptr %a.wr.niche1082, ptr %var._1089, align 8
  %err.code.gep1090 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1082, i32 0, i32 0
  %err.code1091 = load i64, ptr %err.code.gep1090, align 8
  %err.msg.gep1092 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1082, i32 0, i32 1
  %err.msg.struct1093 = load ptr, ptr %err.msg.gep1092, align 8
  %err.file.gep1094 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1082, i32 0, i32 2
  %err.file.struct1095 = load ptr, ptr %err.file.gep1094, align 8
  %err.line.gep1096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1082, i32 0, i32 3
  %err.line1097 = load i64, ptr %err.line.gep1096, align 8
  %err.col.gep1098 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1082, i32 0, i32 4
  %err.col1099 = load i64, ptr %err.col.gep1098, align 8
  %err.msg.len1100 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1093, i32 0, i32 0
  %err.msg.len1101 = load i64, ptr %err.msg.len1100, align 8
  %err.msg.len1102 = and i64 %err.msg.len1101, 281474976710655
  %err.msg.len321103 = trunc i64 %err.msg.len1102 to i32
  %err.msg.data1104 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1093, i32 0, i32 1
  %err.msg.data1105 = load ptr, ptr %err.msg.data1104, align 8
  %err.file.len1106 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1095, i32 0, i32 0
  %err.file.len1107 = load i64, ptr %err.file.len1106, align 8
  %err.file.len1108 = and i64 %err.file.len1107, 281474976710655
  %err.file.len321109 = trunc i64 %err.file.len1108 to i32
  %err.file.data1110 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1095, i32 0, i32 1
  %err.file.data1111 = load ptr, ptr %err.file.data1110, align 8
  %err.thread.rec1112 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1113 = icmp ne ptr %err.thread.rec1112, null
  br i1 %err.is.thread1113, label %err.thread1114, label %err.normal1115

choice.exit1086:                                  ; preds = %err.abort1119, %choice.then1084
  br label %choice.exit856

err.thread1114:                                   ; preds = %choice.else1085
  %err.haserr.gep1116 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1112, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1116, align 8
  %err.err.gep1117 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1112, i32 0, i32 7
  store ptr %a.wr.niche1082, ptr %err.err.gep1117, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1115:                                   ; preds = %choice.else1085
  %err.panic.printf1118 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1091, i32 %err.msg.len321103, ptr %err.msg.data1105, i32 %err.file.len321109, ptr %err.file.data1111, i64 %err.line1097, i64 %err.col1099)
  call void @exit(i32 1)
  unreachable

err.abort1119:                                    ; No predecessors!
  br label %choice.exit1086

a.create1123:                                     ; preds = %loop.exit.76
  %arena.cur1125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1126 = call ptr @dva_arena_alloc(ptr %arena.cur1125, i64 24)
  %arena.cur1127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1128 = call ptr @dva_arena_alloc(ptr %arena.cur1127, i64 128)
  %a.len.gep1129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 0
  store i64 0, ptr %a.len.gep1129, align 8
  %a.data.gep1130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 1
  store ptr %a.buf1128, ptr %a.data.gep1130, align 8
  %a.cap.gep1131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1131, align 8
  store ptr %a.create1126, ptr %var.lows, align 8
  br label %a.after1124

a.after1124:                                      ; preds = %a.create1123, %loop.exit.76
  %a.load21132 = load ptr, ptr %var.lows, align 8
  %var.load1133 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1134 = icmp ne ptr %a.load21132, null
  br i1 %a.rd.nonnull1134, label %a.rd.check1135, label %a.rd.err.null1137

a.rd.check1135:                                   ; preds = %a.after1124
  %a.rd.len1140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21132, i32 0, i32 0
  %a.rd.len1141 = load i64, ptr %a.rd.len1140, align 8
  %a.rd.ge01142 = icmp sge i64 %var.load1133, 0
  %a.rd.lt1143 = icmp slt i64 %var.load1133, %a.rd.len1141
  %a.rd.bounds1144 = and i1 %a.rd.ge01142, %a.rd.lt1143
  br i1 %a.rd.bounds1144, label %a.rd.ok1136, label %a.rd.err.oob1138

a.rd.ok1136:                                      ; preds = %a.rd.check1135
  %a.rd.data1145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21132, i32 0, i32 1
  %a.rd.data1146 = load ptr, ptr %a.rd.data1145, align 8
  %a.rd.elem.gep1147 = getelementptr i64, ptr %a.rd.data1146, i64 %var.load1133
  %a.rd.elem1148 = load i64, ptr %a.rd.elem.gep1147, align 8
  br label %a.rd.done1139

a.rd.err.null1137:                                ; preds = %a.after1124
  %arena.cur1149 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1150 = call ptr @dva_arena_alloc(ptr %arena.cur1149, i64 56)
  %err.code.gep1151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1151, align 8
  %err.msg.gep1152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1152, align 8
  %err.file.gep1153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1153, align 8
  %err.line.gep1154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 3
  store i64 310, ptr %err.line.gep1154, align 8
  %err.col.gep1155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 4
  store i64 19, ptr %err.col.gep1155, align 8
  %err.ctx.gep1156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 5
  %err.ctx0.gep1157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1156, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1157, align 8
  %err.ctx1.gep1158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1156, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1158, align 8
  %err.p2i1159 = ptrtoint ptr %err.alloc1150 to i64
  br label %a.rd.done1139

a.rd.err.oob1138:                                 ; preds = %a.rd.check1135
  %arena.cur1160 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1161 = call ptr @dva_arena_alloc(ptr %arena.cur1160, i64 56)
  %err.code.gep1162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1162, align 8
  %err.msg.gep1163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1163, align 8
  %err.file.gep1164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1164, align 8
  %err.line.gep1165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 3
  store i64 310, ptr %err.line.gep1165, align 8
  %err.col.gep1166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 4
  store i64 19, ptr %err.col.gep1166, align 8
  %err.ctx.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1161, i32 0, i32 5
  %err.ctx0.gep1168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1167, i32 0, i32 0
  store i64 %var.load1133, ptr %err.ctx0.gep1168, align 8
  %err.ctx1.gep1169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1167, i32 0, i32 1
  store i64 %a.rd.len1141, ptr %err.ctx1.gep1169, align 8
  %err.p2i1170 = ptrtoint ptr %err.alloc1161 to i64
  br label %a.rd.done1139

a.rd.done1139:                                    ; preds = %a.rd.err.oob1138, %a.rd.err.null1137, %a.rd.ok1136
  %a.rd.tag1171 = phi i1 [ true, %a.rd.ok1136 ], [ false, %a.rd.err.null1137 ], [ false, %a.rd.err.oob1138 ]
  %a.rd.pay1172 = phi i64 [ %a.rd.elem1148, %a.rd.ok1136 ], [ %err.p2i1159, %a.rd.err.null1137 ], [ %err.p2i1170, %a.rd.err.oob1138 ]
  %ram.tag1173 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1171, 0
  %ram.pay1174 = insertvalue { i1, i64 } %ram.tag1173, i64 %a.rd.pay1172, 1
  %unwrap.is_pos1175 = extractvalue { i1, i64 } %ram.pay1174, 0
  br i1 %unwrap.is_pos1175, label %unwrap.pos.81, label %unwrap.abort.81

unwrap.pos.81:                                    ; preds = %a.rd.done1139
  %unwrap.pay.pos1207 = extractvalue { i1, i64 } %ram.pay1174, 1
  store i64 %unwrap.pay.pos1207, ptr %var.low_u, align 8
  %var.load1208 = load ptr, ptr %var.idxs, align 8
  %a.load1209 = load ptr, ptr %var.idxs, align 8
  %a.null1210 = icmp eq ptr %a.load1209, null
  br i1 %a.null1210, label %a.create1211, label %a.after1212

unwrap.abort.81:                                  ; preds = %a.rd.done1139
  %unwrap.pay.abort1176 = extractvalue { i1, i64 } %ram.pay1174, 1
  %err.ptr1177 = inttoptr i64 %unwrap.pay.abort1176 to ptr
  %err.code.gep1178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1177, i32 0, i32 0
  %err.code1179 = load i64, ptr %err.code.gep1178, align 8
  %err.msg.gep1180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1177, i32 0, i32 1
  %err.msg.struct1181 = load ptr, ptr %err.msg.gep1180, align 8
  %err.file.gep1182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1177, i32 0, i32 2
  %err.file.struct1183 = load ptr, ptr %err.file.gep1182, align 8
  %err.line.gep1184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1177, i32 0, i32 3
  %err.line1185 = load i64, ptr %err.line.gep1184, align 8
  %err.col.gep1186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1177, i32 0, i32 4
  %err.col1187 = load i64, ptr %err.col.gep1186, align 8
  %err.msg.len1188 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1181, i32 0, i32 0
  %err.msg.len1189 = load i64, ptr %err.msg.len1188, align 8
  %err.msg.len1190 = and i64 %err.msg.len1189, 281474976710655
  %err.msg.len321191 = trunc i64 %err.msg.len1190 to i32
  %err.msg.data1192 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1181, i32 0, i32 1
  %err.msg.data1193 = load ptr, ptr %err.msg.data1192, align 8
  %err.file.len1194 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1183, i32 0, i32 0
  %err.file.len1195 = load i64, ptr %err.file.len1194, align 8
  %err.file.len1196 = and i64 %err.file.len1195, 281474976710655
  %err.file.len321197 = trunc i64 %err.file.len1196 to i32
  %err.file.data1198 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1183, i32 0, i32 1
  %err.file.data1199 = load ptr, ptr %err.file.data1198, align 8
  %err.thread.rec1200 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1201 = icmp ne ptr %err.thread.rec1200, null
  br i1 %err.is.thread1201, label %err.thread1202, label %err.normal1203

err.thread1202:                                   ; preds = %unwrap.abort.81
  %err.haserr.gep1204 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1200, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1204, align 8
  %err.err.gep1205 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1200, i32 0, i32 7
  store ptr %err.ptr1177, ptr %err.err.gep1205, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1203:                                   ; preds = %unwrap.abort.81
  %err.panic.printf1206 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1179, i32 %err.msg.len321191, ptr %err.msg.data1193, i32 %err.file.len321197, ptr %err.file.data1199, i64 %err.line1185, i64 %err.col1187)
  call void @exit(i32 1)
  unreachable

a.create1211:                                     ; preds = %unwrap.pos.81
  %arena.cur1213 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1214 = call ptr @dva_arena_alloc(ptr %arena.cur1213, i64 24)
  %arena.cur1215 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1216 = call ptr @dva_arena_alloc(ptr %arena.cur1215, i64 128)
  %a.len.gep1217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1214, i32 0, i32 0
  store i64 0, ptr %a.len.gep1217, align 8
  %a.data.gep1218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1214, i32 0, i32 1
  store ptr %a.buf1216, ptr %a.data.gep1218, align 8
  %a.cap.gep1219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1214, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1219, align 8
  store ptr %a.create1214, ptr %var.idxs, align 8
  br label %a.after1212

a.after1212:                                      ; preds = %a.create1211, %unwrap.pos.81
  %a.load21220 = load ptr, ptr %var.idxs, align 8
  %var.load1221 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1222 = icmp ne ptr %a.load21220, null
  br i1 %a.rd.nonnull1222, label %a.rd.check1223, label %a.rd.err.null1225

a.rd.check1223:                                   ; preds = %a.after1212
  %a.rd.len1228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21220, i32 0, i32 0
  %a.rd.len1229 = load i64, ptr %a.rd.len1228, align 8
  %a.rd.ge01230 = icmp sge i64 %var.load1221, 0
  %a.rd.lt1231 = icmp slt i64 %var.load1221, %a.rd.len1229
  %a.rd.bounds1232 = and i1 %a.rd.ge01230, %a.rd.lt1231
  br i1 %a.rd.bounds1232, label %a.rd.ok1224, label %a.rd.err.oob1226

a.rd.ok1224:                                      ; preds = %a.rd.check1223
  %a.rd.data1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21220, i32 0, i32 1
  %a.rd.data1234 = load ptr, ptr %a.rd.data1233, align 8
  %a.rd.elem.gep1235 = getelementptr i64, ptr %a.rd.data1234, i64 %var.load1221
  %a.rd.elem1236 = load i64, ptr %a.rd.elem.gep1235, align 8
  br label %a.rd.done1227

a.rd.err.null1225:                                ; preds = %a.after1212
  %arena.cur1237 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1238 = call ptr @dva_arena_alloc(ptr %arena.cur1237, i64 56)
  %err.code.gep1239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1239, align 8
  %err.msg.gep1240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1240, align 8
  %err.file.gep1241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1241, align 8
  %err.line.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 3
  store i64 311, ptr %err.line.gep1242, align 8
  %err.col.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 4
  store i64 19, ptr %err.col.gep1243, align 8
  %err.ctx.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 5
  %err.ctx0.gep1245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1245, align 8
  %err.ctx1.gep1246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1246, align 8
  %err.p2i1247 = ptrtoint ptr %err.alloc1238 to i64
  br label %a.rd.done1227

a.rd.err.oob1226:                                 ; preds = %a.rd.check1223
  %arena.cur1248 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1249 = call ptr @dva_arena_alloc(ptr %arena.cur1248, i64 56)
  %err.code.gep1250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1250, align 8
  %err.msg.gep1251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1251, align 8
  %err.file.gep1252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1252, align 8
  %err.line.gep1253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 3
  store i64 311, ptr %err.line.gep1253, align 8
  %err.col.gep1254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 4
  store i64 19, ptr %err.col.gep1254, align 8
  %err.ctx.gep1255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1249, i32 0, i32 5
  %err.ctx0.gep1256 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1255, i32 0, i32 0
  store i64 %var.load1221, ptr %err.ctx0.gep1256, align 8
  %err.ctx1.gep1257 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1255, i32 0, i32 1
  store i64 %a.rd.len1229, ptr %err.ctx1.gep1257, align 8
  %err.p2i1258 = ptrtoint ptr %err.alloc1249 to i64
  br label %a.rd.done1227

a.rd.done1227:                                    ; preds = %a.rd.err.oob1226, %a.rd.err.null1225, %a.rd.ok1224
  %a.rd.tag1259 = phi i1 [ true, %a.rd.ok1224 ], [ false, %a.rd.err.null1225 ], [ false, %a.rd.err.oob1226 ]
  %a.rd.pay1260 = phi i64 [ %a.rd.elem1236, %a.rd.ok1224 ], [ %err.p2i1247, %a.rd.err.null1225 ], [ %err.p2i1258, %a.rd.err.oob1226 ]
  %ram.tag1261 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1259, 0
  %ram.pay1262 = insertvalue { i1, i64 } %ram.tag1261, i64 %a.rd.pay1260, 1
  %unwrap.is_pos1263 = extractvalue { i1, i64 } %ram.pay1262, 0
  br i1 %unwrap.is_pos1263, label %unwrap.pos.82, label %unwrap.abort.82

unwrap.pos.82:                                    ; preds = %a.rd.done1227
  %unwrap.pay.pos1295 = extractvalue { i1, i64 } %ram.pay1262, 1
  store i64 %unwrap.pay.pos1295, ptr %var.idx_u, align 8
  %var.load1296 = load i64, ptr %var.low_u, align 8
  %var.load1297 = load i64, ptr %var.idx_u, align 8
  %cmptmp1298 = icmp eq i64 %var.load1296, %var.load1297
  br i1 %cmptmp1298, label %choice.then1299, label %choice.exit1300

unwrap.abort.82:                                  ; preds = %a.rd.done1227
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
  %err.msg.len321279 = trunc i64 %err.msg.len1278 to i32
  %err.msg.data1280 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1269, i32 0, i32 1
  %err.msg.data1281 = load ptr, ptr %err.msg.data1280, align 8
  %err.file.len1282 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1271, i32 0, i32 0
  %err.file.len1283 = load i64, ptr %err.file.len1282, align 8
  %err.file.len1284 = and i64 %err.file.len1283, 281474976710655
  %err.file.len321285 = trunc i64 %err.file.len1284 to i32
  %err.file.data1286 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1271, i32 0, i32 1
  %err.file.data1287 = load ptr, ptr %err.file.data1286, align 8
  %err.thread.rec1288 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1289 = icmp ne ptr %err.thread.rec1288, null
  br i1 %err.is.thread1289, label %err.thread1290, label %err.normal1291

err.thread1290:                                   ; preds = %unwrap.abort.82
  %err.haserr.gep1292 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1288, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1292, align 8
  %err.err.gep1293 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1288, i32 0, i32 7
  store ptr %err.ptr1265, ptr %err.err.gep1293, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1291:                                   ; preds = %unwrap.abort.82
  %err.panic.printf1294 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1267, i32 %err.msg.len321279, ptr %err.msg.data1281, i32 %err.file.len321285, ptr %err.file.data1287, i64 %err.line1273, i64 %err.col1275)
  call void @exit(i32 1)
  unreachable

choice.then1299:                                  ; preds = %unwrap.pos.82
  %arena.cur1301 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1301, i64 24)
  %arena.cur1302 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1303 = call ptr @dva_arena_alloc(ptr %arena.cur1302, i64 128)
  %a.len.gep1304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1304, align 8
  %a.data.gep1305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1303, ptr %a.data.gep1305, align 8
  %a.cap.gep1306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1306, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1307 = load ptr, ptr %var.u_node, align 8
  %var.load1308 = load ptr, ptr %var.u_node, align 8
  %fld.gep1309 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1308, i32 0, i32 0
  %fld.load1310 = load ptr, ptr %fld.gep1309, align 8
  %call.res1311 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1307, ptr %fld.load1310)
  store i1 %call.res1311, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

choice.exit1300:                                  ; preds = %a.store1639, %unwrap.pos.82
  ret void

loop.header.83:                                   ; preds = %loop.latch.83, %choice.then1299
  %counter.load1312 = load i64, ptr %loop.idx.83, align 8
  br label %loop.body.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i1313 = sub i64 %counter.load1312, 0
  store i64 1, ptr %loop.step.83, align 8
  store i64 %loop.rel.i1313, ptr %var._i1314, align 8
  store i64 %counter.load1312, ptr %var._1315, align 8
  %var.load1316 = load ptr, ptr %var.state, align 8
  %fld.gep1317 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1316, i32 0, i32 4
  %fld.load1318 = load ptr, ptr %fld.gep1317, align 8
  store ptr %fld.load1318, ptr %var.s_ptr, align 8
  %var.load1319 = load ptr, ptr %var.s_ptr, align 8
  %a.load1320 = load ptr, ptr %var.s_ptr, align 8
  %a.null1321 = icmp eq ptr %a.load1320, null
  br i1 %a.null1321, label %a.create1322, label %a.after1323

loop.exit.nat.83:                                 ; No predecessors!
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %choice.exit1600
  %step.val1601 = load i64, ptr %loop.step.83, align 8
  %loop.next1602 = add i64 %counter.load1312, %step.val1601
  store i64 %loop.next1602, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %choice.then1599, %choice.then1407, %loop.exit.nat.83
  %var.load1603 = load ptr, ptr %var.scc_names, align 8
  %a.load1604 = load ptr, ptr %var.scc_names, align 8
  %a.null1605 = icmp eq ptr %a.load1604, null
  br i1 %a.null1605, label %a.create1606, label %a.after1607

a.create1322:                                     ; preds = %loop.body.83
  %arena.cur1324 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1325 = call ptr @dva_arena_alloc(ptr %arena.cur1324, i64 24)
  %arena.cur1326 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1327 = call ptr @dva_arena_alloc(ptr %arena.cur1326, i64 128)
  %a.len.gep1328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1325, i32 0, i32 0
  store i64 0, ptr %a.len.gep1328, align 8
  %a.data.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1325, i32 0, i32 1
  store ptr %a.buf1327, ptr %a.data.gep1329, align 8
  %a.cap.gep1330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1325, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1330, align 8
  store ptr %a.create1325, ptr %var.s_ptr, align 8
  br label %a.after1323

a.after1323:                                      ; preds = %a.create1322, %loop.body.83
  %a.load21331 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1332 = icmp ne ptr %a.load21331, null
  br i1 %a.rd.nonnull1332, label %a.rd.check1333, label %a.rd.err.null1335

a.rd.check1333:                                   ; preds = %a.after1323
  %a.rd.len1338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21331, i32 0, i32 0
  %a.rd.len1339 = load i64, ptr %a.rd.len1338, align 8
  %a.rd.lt1340 = icmp slt i64 0, %a.rd.len1339
  %a.rd.bounds1341 = and i1 true, %a.rd.lt1340
  br i1 %a.rd.bounds1341, label %a.rd.ok1334, label %a.rd.err.oob1336

a.rd.ok1334:                                      ; preds = %a.rd.check1333
  %a.rd.data1342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21331, i32 0, i32 1
  %a.rd.data1343 = load ptr, ptr %a.rd.data1342, align 8
  %a.rd.elem.gep1344 = getelementptr i64, ptr %a.rd.data1343, i64 0
  %a.rd.elem1345 = load i64, ptr %a.rd.elem.gep1344, align 8
  br label %a.rd.done1337

a.rd.err.null1335:                                ; preds = %a.after1323
  %arena.cur1346 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1347 = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 56)
  %err.code.gep1348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1348, align 8
  %err.msg.gep1349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1349, align 8
  %err.file.gep1350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1350, align 8
  %err.line.gep1351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 3
  store i64 318, ptr %err.line.gep1351, align 8
  %err.col.gep1352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 4
  store i64 26, ptr %err.col.gep1352, align 8
  %err.ctx.gep1353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1347, i32 0, i32 5
  %err.ctx0.gep1354 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1353, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1354, align 8
  %err.ctx1.gep1355 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1353, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1355, align 8
  %err.p2i1356 = ptrtoint ptr %err.alloc1347 to i64
  br label %a.rd.done1337

a.rd.err.oob1336:                                 ; preds = %a.rd.check1333
  %arena.cur1357 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1358 = call ptr @dva_arena_alloc(ptr %arena.cur1357, i64 56)
  %err.code.gep1359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1359, align 8
  %err.msg.gep1360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1360, align 8
  %err.file.gep1361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1361, align 8
  %err.line.gep1362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 3
  store i64 318, ptr %err.line.gep1362, align 8
  %err.col.gep1363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 4
  store i64 26, ptr %err.col.gep1363, align 8
  %err.ctx.gep1364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1358, i32 0, i32 5
  %err.ctx0.gep1365 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1364, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1365, align 8
  %err.ctx1.gep1366 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1364, i32 0, i32 1
  store i64 %a.rd.len1339, ptr %err.ctx1.gep1366, align 8
  %err.p2i1367 = ptrtoint ptr %err.alloc1358 to i64
  br label %a.rd.done1337

a.rd.done1337:                                    ; preds = %a.rd.err.oob1336, %a.rd.err.null1335, %a.rd.ok1334
  %a.rd.tag1368 = phi i1 [ true, %a.rd.ok1334 ], [ false, %a.rd.err.null1335 ], [ false, %a.rd.err.oob1336 ]
  %a.rd.pay1369 = phi i64 [ %a.rd.elem1345, %a.rd.ok1334 ], [ %err.p2i1356, %a.rd.err.null1335 ], [ %err.p2i1367, %a.rd.err.oob1336 ]
  %ram.tag1370 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1368, 0
  %ram.pay1371 = insertvalue { i1, i64 } %ram.tag1370, i64 %a.rd.pay1369, 1
  %unwrap.is_pos1372 = extractvalue { i1, i64 } %ram.pay1371, 0
  br i1 %unwrap.is_pos1372, label %unwrap.pos.84, label %unwrap.abort.84

unwrap.pos.84:                                    ; preds = %a.rd.done1337
  %unwrap.pay.pos1404 = extractvalue { i1, i64 } %ram.pay1371, 1
  store i64 %unwrap.pay.pos1404, ptr %var.sp, align 8
  %var.load1405 = load i64, ptr %var.sp, align 8
  %cmptmp1406 = icmp eq i64 %var.load1405, 0
  br i1 %cmptmp1406, label %choice.then1407, label %choice.exit1408

unwrap.abort.84:                                  ; preds = %a.rd.done1337
  %unwrap.pay.abort1373 = extractvalue { i1, i64 } %ram.pay1371, 1
  %err.ptr1374 = inttoptr i64 %unwrap.pay.abort1373 to ptr
  %err.code.gep1375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1374, i32 0, i32 0
  %err.code1376 = load i64, ptr %err.code.gep1375, align 8
  %err.msg.gep1377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1374, i32 0, i32 1
  %err.msg.struct1378 = load ptr, ptr %err.msg.gep1377, align 8
  %err.file.gep1379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1374, i32 0, i32 2
  %err.file.struct1380 = load ptr, ptr %err.file.gep1379, align 8
  %err.line.gep1381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1374, i32 0, i32 3
  %err.line1382 = load i64, ptr %err.line.gep1381, align 8
  %err.col.gep1383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1374, i32 0, i32 4
  %err.col1384 = load i64, ptr %err.col.gep1383, align 8
  %err.msg.len1385 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1378, i32 0, i32 0
  %err.msg.len1386 = load i64, ptr %err.msg.len1385, align 8
  %err.msg.len1387 = and i64 %err.msg.len1386, 281474976710655
  %err.msg.len321388 = trunc i64 %err.msg.len1387 to i32
  %err.msg.data1389 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1378, i32 0, i32 1
  %err.msg.data1390 = load ptr, ptr %err.msg.data1389, align 8
  %err.file.len1391 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1380, i32 0, i32 0
  %err.file.len1392 = load i64, ptr %err.file.len1391, align 8
  %err.file.len1393 = and i64 %err.file.len1392, 281474976710655
  %err.file.len321394 = trunc i64 %err.file.len1393 to i32
  %err.file.data1395 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1380, i32 0, i32 1
  %err.file.data1396 = load ptr, ptr %err.file.data1395, align 8
  %err.thread.rec1397 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1398 = icmp ne ptr %err.thread.rec1397, null
  br i1 %err.is.thread1398, label %err.thread1399, label %err.normal1400

err.thread1399:                                   ; preds = %unwrap.abort.84
  %err.haserr.gep1401 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1397, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1401, align 8
  %err.err.gep1402 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1397, i32 0, i32 7
  store ptr %err.ptr1374, ptr %err.err.gep1402, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1400:                                   ; preds = %unwrap.abort.84
  %err.panic.printf1403 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1376, i32 %err.msg.len321388, ptr %err.msg.data1390, i32 %err.file.len321394, ptr %err.file.data1396, i64 %err.line1382, i64 %err.col1384)
  call void @exit(i32 1)
  unreachable

choice.then1407:                                  ; preds = %unwrap.pos.84
  br label %loop.exit.83

choice.exit1408:                                  ; preds = %unwrap.pos.84
  %var.load1409 = load ptr, ptr %var.state, align 8
  %call.res1410 = call i64 @"dep_graph::pop_stack"(ptr %var.load1409)
  store i64 %call.res1410, ptr %var.w, align 8
  %var.load1411 = load ptr, ptr %var.ons, align 8
  %a.load1412 = load ptr, ptr %var.ons, align 8
  %a.null1413 = icmp eq ptr %a.load1412, null
  br i1 %a.null1413, label %a.create1414, label %a.after1415

a.create1414:                                     ; preds = %choice.exit1408
  %arena.cur1416 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1417 = call ptr @dva_arena_alloc(ptr %arena.cur1416, i64 24)
  %arena.cur1418 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1419 = call ptr @dva_arena_alloc(ptr %arena.cur1418, i64 128)
  %a.len.gep1420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 0
  store i64 0, ptr %a.len.gep1420, align 8
  %a.data.gep1421 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 1
  store ptr %a.buf1419, ptr %a.data.gep1421, align 8
  %a.cap.gep1422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1417, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1422, align 8
  store ptr %a.create1417, ptr %var.ons, align 8
  br label %a.after1415

a.after1415:                                      ; preds = %a.create1414, %choice.exit1408
  %a.load21423 = load ptr, ptr %var.ons, align 8
  %var.load1424 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1425 = icmp ne ptr %a.load21423, null
  br i1 %a.wr.nonnull1425, label %a.wr.check1426, label %a.wr.err.null1428

a.wr.check1426:                                   ; preds = %a.after1415
  %a.wr.len1431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21423, i32 0, i32 0
  %a.wr.len1432 = load i64, ptr %a.wr.len1431, align 8
  %a.wr.ge01433 = icmp sge i64 %var.load1424, 0
  %a.wr.lt1434 = icmp slt i64 %var.load1424, %a.wr.len1432
  %a.wr.bounds1435 = and i1 %a.wr.ge01433, %a.wr.lt1434
  br i1 %a.wr.bounds1435, label %a.wr.ok1427, label %a.wr.err.oob1429

a.wr.ok1427:                                      ; preds = %a.wr.check1426
  %a.wr.data1436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21423, i32 0, i32 1
  %a.wr.data1437 = load ptr, ptr %a.wr.data1436, align 8
  %a.elem.gep1438 = getelementptr i64, ptr %a.wr.data1437, i64 %var.load1424
  store i64 0, ptr %a.elem.gep1438, align 8
  br label %a.wr.done1430

a.wr.err.null1428:                                ; preds = %a.after1415
  %arena.cur1439 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1440 = call ptr @dva_arena_alloc(ptr %arena.cur1439, i64 56)
  %err.code.gep1441 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1441, align 8
  %err.msg.gep1442 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1442, align 8
  %err.file.gep1443 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1443, align 8
  %err.line.gep1444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 3
  store i64 0, ptr %err.line.gep1444, align 8
  %err.col.gep1445 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 4
  store i64 0, ptr %err.col.gep1445, align 8
  %err.ctx.gep1446 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1440, i32 0, i32 5
  %err.ctx0.gep1447 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1446, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1447, align 8
  %err.ctx1.gep1448 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1446, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1448, align 8
  br label %a.wr.done1430

a.wr.err.oob1429:                                 ; preds = %a.wr.check1426
  %arena.cur1449 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 56)
  %err.code.gep1451 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1451, align 8
  %err.msg.gep1452 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1452, align 8
  %err.file.gep1453 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1453, align 8
  %err.line.gep1454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 3
  store i64 0, ptr %err.line.gep1454, align 8
  %err.col.gep1455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 4
  store i64 0, ptr %err.col.gep1455, align 8
  %err.ctx.gep1456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 5
  %err.ctx0.gep1457 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1456, i32 0, i32 0
  store i64 %var.load1424, ptr %err.ctx0.gep1457, align 8
  %err.ctx1.gep1458 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1456, i32 0, i32 1
  store i64 %a.wr.len1432, ptr %err.ctx1.gep1458, align 8
  br label %a.wr.done1430

a.wr.done1430:                                    ; preds = %a.wr.err.oob1429, %a.wr.err.null1428, %a.wr.ok1427
  %a.wr.niche1459 = phi ptr [ null, %a.wr.ok1427 ], [ %err.alloc1440, %a.wr.err.null1428 ], [ %err.alloc1450, %a.wr.err.oob1429 ]
  %niche.eq.null1460 = icmp eq ptr %a.wr.niche1459, null
  br i1 %niche.eq.null1460, label %choice.then1461, label %choice.else1462

choice.then1461:                                  ; preds = %a.wr.done1430
  br label %choice.exit1463

choice.else1462:                                  ; preds = %a.wr.done1430
  store ptr %a.wr.niche1459, ptr %var._1464, align 8
  store ptr %a.wr.niche1459, ptr %var._1465, align 8
  store ptr %a.wr.niche1459, ptr %var._1466, align 8
  %err.code.gep1467 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1459, i32 0, i32 0
  %err.code1468 = load i64, ptr %err.code.gep1467, align 8
  %err.msg.gep1469 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1459, i32 0, i32 1
  %err.msg.struct1470 = load ptr, ptr %err.msg.gep1469, align 8
  %err.file.gep1471 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1459, i32 0, i32 2
  %err.file.struct1472 = load ptr, ptr %err.file.gep1471, align 8
  %err.line.gep1473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1459, i32 0, i32 3
  %err.line1474 = load i64, ptr %err.line.gep1473, align 8
  %err.col.gep1475 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1459, i32 0, i32 4
  %err.col1476 = load i64, ptr %err.col.gep1475, align 8
  %err.msg.len1477 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1470, i32 0, i32 0
  %err.msg.len1478 = load i64, ptr %err.msg.len1477, align 8
  %err.msg.len1479 = and i64 %err.msg.len1478, 281474976710655
  %err.msg.len321480 = trunc i64 %err.msg.len1479 to i32
  %err.msg.data1481 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1470, i32 0, i32 1
  %err.msg.data1482 = load ptr, ptr %err.msg.data1481, align 8
  %err.file.len1483 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1472, i32 0, i32 0
  %err.file.len1484 = load i64, ptr %err.file.len1483, align 8
  %err.file.len1485 = and i64 %err.file.len1484, 281474976710655
  %err.file.len321486 = trunc i64 %err.file.len1485 to i32
  %err.file.data1487 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1472, i32 0, i32 1
  %err.file.data1488 = load ptr, ptr %err.file.data1487, align 8
  %err.thread.rec1489 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1490 = icmp ne ptr %err.thread.rec1489, null
  br i1 %err.is.thread1490, label %err.thread1491, label %err.normal1492

choice.exit1463:                                  ; preds = %err.abort1496, %choice.then1461
  %var.load1497 = load ptr, ptr %var.graph, align 8
  %fld.gep1498 = getelementptr inbounds { ptr, ptr }, ptr %var.load1497, i32 0, i32 0
  %fld.load1499 = load ptr, ptr %fld.gep1498, align 8
  %var.load1500 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1501 = icmp ne ptr %fld.load1499, null
  br i1 %a.rd.nonnull1501, label %a.rd.check1502, label %a.rd.err.null1504

err.thread1491:                                   ; preds = %choice.else1462
  %err.haserr.gep1493 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1489, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1493, align 8
  %err.err.gep1494 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1489, i32 0, i32 7
  store ptr %a.wr.niche1459, ptr %err.err.gep1494, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1492:                                   ; preds = %choice.else1462
  %err.panic.printf1495 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1468, i32 %err.msg.len321480, ptr %err.msg.data1482, i32 %err.file.len321486, ptr %err.file.data1488, i64 %err.line1474, i64 %err.col1476)
  call void @exit(i32 1)
  unreachable

err.abort1496:                                    ; No predecessors!
  br label %choice.exit1463

a.rd.check1502:                                   ; preds = %choice.exit1463
  %a.rd.len1507 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1499, i32 0, i32 0
  %a.rd.len1508 = load i64, ptr %a.rd.len1507, align 8
  %a.rd.ge01509 = icmp sge i64 %var.load1500, 0
  %a.rd.lt1510 = icmp slt i64 %var.load1500, %a.rd.len1508
  %a.rd.bounds1511 = and i1 %a.rd.ge01509, %a.rd.lt1510
  br i1 %a.rd.bounds1511, label %a.rd.ok1503, label %a.rd.err.oob1505

a.rd.ok1503:                                      ; preds = %a.rd.check1502
  %a.rd.data1512 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1499, i32 0, i32 1
  %a.rd.data1513 = load ptr, ptr %a.rd.data1512, align 8
  %a.rd.elem.gep1514 = getelementptr i64, ptr %a.rd.data1513, i64 %var.load1500
  %a.rd.elem1515 = load i64, ptr %a.rd.elem.gep1514, align 8
  br label %a.rd.done1506

a.rd.err.null1504:                                ; preds = %choice.exit1463
  %arena.cur1516 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1517 = call ptr @dva_arena_alloc(ptr %arena.cur1516, i64 56)
  %err.code.gep1518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1518, align 8
  %err.msg.gep1519 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1519, align 8
  %err.file.gep1520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1520, align 8
  %err.line.gep1521 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 3
  store i64 0, ptr %err.line.gep1521, align 8
  %err.col.gep1522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 4
  store i64 0, ptr %err.col.gep1522, align 8
  %err.ctx.gep1523 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1517, i32 0, i32 5
  %err.ctx0.gep1524 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1523, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1524, align 8
  %err.ctx1.gep1525 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1523, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1525, align 8
  %err.p2i1526 = ptrtoint ptr %err.alloc1517 to i64
  br label %a.rd.done1506

a.rd.err.oob1505:                                 ; preds = %a.rd.check1502
  %arena.cur1527 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1528 = call ptr @dva_arena_alloc(ptr %arena.cur1527, i64 56)
  %err.code.gep1529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1529, align 8
  %err.msg.gep1530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1530, align 8
  %err.file.gep1531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1531, align 8
  %err.line.gep1532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 3
  store i64 0, ptr %err.line.gep1532, align 8
  %err.col.gep1533 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 4
  store i64 0, ptr %err.col.gep1533, align 8
  %err.ctx.gep1534 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1528, i32 0, i32 5
  %err.ctx0.gep1535 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1534, i32 0, i32 0
  store i64 %var.load1500, ptr %err.ctx0.gep1535, align 8
  %err.ctx1.gep1536 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1534, i32 0, i32 1
  store i64 %a.rd.len1508, ptr %err.ctx1.gep1536, align 8
  %err.p2i1537 = ptrtoint ptr %err.alloc1528 to i64
  br label %a.rd.done1506

a.rd.done1506:                                    ; preds = %a.rd.err.oob1505, %a.rd.err.null1504, %a.rd.ok1503
  %a.rd.tag1538 = phi i1 [ true, %a.rd.ok1503 ], [ false, %a.rd.err.null1504 ], [ false, %a.rd.err.oob1505 ]
  %a.rd.pay1539 = phi i64 [ %a.rd.elem1515, %a.rd.ok1503 ], [ %err.p2i1526, %a.rd.err.null1504 ], [ %err.p2i1537, %a.rd.err.oob1505 ]
  %ram.tag1540 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1538, 0
  %ram.pay1541 = insertvalue { i1, i64 } %ram.tag1540, i64 %a.rd.pay1539, 1
  %unwrap.is_pos1542 = extractvalue { i1, i64 } %ram.pay1541, 0
  br i1 %unwrap.is_pos1542, label %unwrap.pos.85, label %unwrap.abort.85

unwrap.pos.85:                                    ; preds = %a.rd.done1506
  %unwrap.pay.pos1574 = extractvalue { i1, i64 } %ram.pay1541, 1
  %pay.ptr1575 = inttoptr i64 %unwrap.pay.pos1574 to ptr
  store ptr %pay.ptr1575, ptr %var.w_node, align 8
  %var.load1576 = load ptr, ptr %var.w_node, align 8
  %fld.gep1577 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1576, i32 0, i32 0
  %fld.load1578 = load ptr, ptr %fld.gep1577, align 8
  %a.load1579 = load ptr, ptr %var.scc_names, align 8
  %a.null1580 = icmp eq ptr %a.load1579, null
  br i1 %a.null1580, label %a.create1581, label %a.after1582

unwrap.abort.85:                                  ; preds = %a.rd.done1506
  %unwrap.pay.abort1543 = extractvalue { i1, i64 } %ram.pay1541, 1
  %err.ptr1544 = inttoptr i64 %unwrap.pay.abort1543 to ptr
  %err.code.gep1545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1544, i32 0, i32 0
  %err.code1546 = load i64, ptr %err.code.gep1545, align 8
  %err.msg.gep1547 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1544, i32 0, i32 1
  %err.msg.struct1548 = load ptr, ptr %err.msg.gep1547, align 8
  %err.file.gep1549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1544, i32 0, i32 2
  %err.file.struct1550 = load ptr, ptr %err.file.gep1549, align 8
  %err.line.gep1551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1544, i32 0, i32 3
  %err.line1552 = load i64, ptr %err.line.gep1551, align 8
  %err.col.gep1553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1544, i32 0, i32 4
  %err.col1554 = load i64, ptr %err.col.gep1553, align 8
  %err.msg.len1555 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1548, i32 0, i32 0
  %err.msg.len1556 = load i64, ptr %err.msg.len1555, align 8
  %err.msg.len1557 = and i64 %err.msg.len1556, 281474976710655
  %err.msg.len321558 = trunc i64 %err.msg.len1557 to i32
  %err.msg.data1559 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1548, i32 0, i32 1
  %err.msg.data1560 = load ptr, ptr %err.msg.data1559, align 8
  %err.file.len1561 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1550, i32 0, i32 0
  %err.file.len1562 = load i64, ptr %err.file.len1561, align 8
  %err.file.len1563 = and i64 %err.file.len1562, 281474976710655
  %err.file.len321564 = trunc i64 %err.file.len1563 to i32
  %err.file.data1565 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1550, i32 0, i32 1
  %err.file.data1566 = load ptr, ptr %err.file.data1565, align 8
  %err.thread.rec1567 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1568 = icmp ne ptr %err.thread.rec1567, null
  br i1 %err.is.thread1568, label %err.thread1569, label %err.normal1570

err.thread1569:                                   ; preds = %unwrap.abort.85
  %err.haserr.gep1571 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1567, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1571, align 8
  %err.err.gep1572 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1567, i32 0, i32 7
  store ptr %err.ptr1544, ptr %err.err.gep1572, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1570:                                   ; preds = %unwrap.abort.85
  %err.panic.printf1573 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1546, i32 %err.msg.len321558, ptr %err.msg.data1560, i32 %err.file.len321564, ptr %err.file.data1566, i64 %err.line1552, i64 %err.col1554)
  call void @exit(i32 1)
  unreachable

a.create1581:                                     ; preds = %unwrap.pos.85
  %arena.cur1583 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1584 = call ptr @dva_arena_alloc(ptr %arena.cur1583, i64 24)
  %arena.cur1585 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1586 = call ptr @dva_arena_alloc(ptr %arena.cur1585, i64 128)
  %a.len.gep1587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1584, i32 0, i32 0
  store i64 0, ptr %a.len.gep1587, align 8
  %a.data.gep1588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1584, i32 0, i32 1
  store ptr %a.buf1586, ptr %a.data.gep1588, align 8
  %a.cap.gep1589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1584, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1589, align 8
  store ptr %a.create1584, ptr %var.scc_names, align 8
  br label %a.after1582

a.after1582:                                      ; preds = %a.create1581, %unwrap.pos.85
  %a.load21590 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1582
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21590, i32 0, i32 0
  %a.len1591 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21590, i32 0, i32 2
  %a.cap1592 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1591, %a.cap1592
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21590)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21590, i32 0, i32 1
  %a.cur.data1593 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21590, i32 0, i32 0
  %a.cur.len1594 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1595 = getelementptr i64, ptr %a.cur.data1593, i64 %a.cur.len1594
  %slot.p2i = ptrtoint ptr %fld.load1578 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1595, align 8
  %a.next.len = add i64 %a.cur.len1594, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21590, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1596 = load i64, ptr %var.w, align 8
  %var.load1597 = load i64, ptr %var.u, align 8
  %cmptmp1598 = icmp eq i64 %var.load1596, %var.load1597
  br i1 %cmptmp1598, label %choice.then1599, label %choice.exit1600

choice.then1599:                                  ; preds = %a.store
  br label %loop.exit.83

choice.exit1600:                                  ; preds = %a.store
  br label %loop.latch.83

a.create1606:                                     ; preds = %loop.exit.83
  %arena.cur1608 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1609 = call ptr @dva_arena_alloc(ptr %arena.cur1608, i64 24)
  %arena.cur1610 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1611 = call ptr @dva_arena_alloc(ptr %arena.cur1610, i64 128)
  %a.len.gep1612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1609, i32 0, i32 0
  store i64 0, ptr %a.len.gep1612, align 8
  %a.data.gep1613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1609, i32 0, i32 1
  store ptr %a.buf1611, ptr %a.data.gep1613, align 8
  %a.cap.gep1614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1609, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1614, align 8
  store ptr %a.create1609, ptr %var.scc_names, align 8
  br label %a.after1607

a.after1607:                                      ; preds = %a.create1606, %loop.exit.83
  %a.load21615 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21615, i32 0, i32 0
  %a.len.query1616 = load i64, ptr %a.len.query, align 8
  %cmptmp1617 = icmp sgt i64 %a.len.query1616, 1
  br i1 %cmptmp1617, label %or.86.then, label %or.86.else

or.86.then:                                       ; preds = %a.after1607
  br label %or.86.exit

or.86.else:                                       ; preds = %a.after1607
  %var.load1618 = load i1, ptr %var.is_self_rec, align 1
  br label %or.86.exit

or.86.exit:                                       ; preds = %or.86.else, %or.86.then
  %or.86.phi = phi i1 [ %cmptmp1617, %or.86.then ], [ %var.load1618, %or.86.else ]
  store i1 %or.86.phi, ptr %var.is_rec, align 1
  %var.load1619 = load ptr, ptr %var.state, align 8
  %var.load1620 = load ptr, ptr %var.scc_names, align 8
  %a.load1621 = load ptr, ptr %var.scc_names, align 8
  %a.null1622 = icmp eq ptr %a.load1621, null
  br i1 %a.null1622, label %a.create1623, label %a.after1624

a.create1623:                                     ; preds = %or.86.exit
  %arena.cur1625 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1626 = call ptr @dva_arena_alloc(ptr %arena.cur1625, i64 24)
  %arena.cur1627 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1628 = call ptr @dva_arena_alloc(ptr %arena.cur1627, i64 128)
  %a.len.gep1629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1626, i32 0, i32 0
  store i64 0, ptr %a.len.gep1629, align 8
  %a.data.gep1630 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1626, i32 0, i32 1
  store ptr %a.buf1628, ptr %a.data.gep1630, align 8
  %a.cap.gep1631 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1626, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1631, align 8
  store ptr %a.create1626, ptr %var.scc_names, align 8
  br label %a.after1624

a.after1624:                                      ; preds = %a.create1623, %or.86.exit
  %a.load21632 = load ptr, ptr %var.scc_names, align 8
  %var.load1633 = load i1, ptr %var.is_rec, align 1
  %arena.cur1634 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1634, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21632, ptr %rec.fld, align 8
  %rec.fld1635 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1633, ptr %rec.fld1635, align 1
  %fld.gep1636 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1619, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1636, align 8
  br label %a.check1637

a.check1637:                                      ; preds = %a.after1624
  %a.len1640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1641 = load i64, ptr %a.len1640, align 8
  %a.cap1642 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1643 = load i64, ptr %a.cap1642, align 8
  %a.needs.grow1644 = icmp eq i64 %a.len1641, %a.cap1643
  br i1 %a.needs.grow1644, label %a.grow1638, label %a.store1639

a.grow1638:                                       ; preds = %a.check1637
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1639

a.store1639:                                      ; preds = %a.grow1638, %a.check1637
  %a.cur.data1645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1646 = load ptr, ptr %a.cur.data1645, align 8
  %a.cur.len1647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1648 = load i64, ptr %a.cur.len1647, align 8
  %a.elem.gep1649 = getelementptr i64, ptr %a.cur.data1646, i64 %a.cur.len1648
  %slot.p2i1650 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1650, ptr %a.elem.gep1649, align 8
  %a.next.len1651 = add i64 %a.cur.len1648, 1
  %b.len.gep1652 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1651, ptr %b.len.gep1652, align 8
  br label %choice.exit1300
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
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
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { cold noinline "nounwind" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
