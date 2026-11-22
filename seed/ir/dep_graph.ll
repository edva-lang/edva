; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
@expect.reason.72 = internal unnamed_addr constant [23 x i8] c"expect: missing s ptr\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"dep_graph::push_stack", ptr null }
@"var.dep_graph::push_stack" = global ptr null
@expect.reason.74 = internal unnamed_addr constant [23 x i8] c"expect: missing s ptr\0A\00"
@expect.reason.76 = internal unnamed_addr constant [21 x i8] c"expect: missing stk\0A\00"
@clo.const.15 = internal constant { ptr, ptr } { ptr @"dep_graph::pop_stack", ptr null }
@"var.dep_graph::pop_stack" = global ptr null
@expect.reason.78 = internal unnamed_addr constant [23 x i8] c"expect: missing s cnt\0A\00"
@expect.reason.80 = internal unnamed_addr constant [23 x i8] c"expect: missing nodes\0A\00"
@expect.reason.83 = internal unnamed_addr constant [22 x i8] c"expect: missing lows\0A\00"
@expect.reason.85 = internal unnamed_addr constant [22 x i8] c"expect: missing lows\0A\00"
@expect.reason.87 = internal unnamed_addr constant [22 x i8] c"expect: missing lows\0A\00"
@expect.reason.89 = internal unnamed_addr constant [22 x i8] c"expect: missing idxs\0A\00"
@expect.reason.91 = internal unnamed_addr constant [22 x i8] c"expect: missing lows\0A\00"
@expect.reason.93 = internal unnamed_addr constant [22 x i8] c"expect: missing idxs\0A\00"
@expect.reason.96 = internal unnamed_addr constant [23 x i8] c"expect: missing s ptr\0A\00"
@expect.reason.98 = internal unnamed_addr constant [23 x i8] c"expect: missing nodes\0A\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_dfs", ptr null }
@"var.dep_graph::tarjan_dfs" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_scc", ptr null }
@"var.dep_graph::tarjan_scc" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_dep_graph, ptr null }]

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

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_dep_graph() #3 {
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

define i1 @"dep_graph::is_fwd_assign"(ptr %0) #3 {
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

declare i32 @memcmp(ptr, ptr, i64) #3

define ptr @"dep_graph::copy_names"(ptr %0) #3 {
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

define i1 @"dep_graph::has_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
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

define i1 @"dep_graph::has_name"(ptr %0, ptr %1) #3 {
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

define i1 @"dep_graph::name_is_qualified"(ptr %0, i64 %1) #3 {
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

define i64 @"dep_graph::decl_module_find"(ptr %0, i64 %1, i64 %2) #3 {
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

define { i64, ptr } @"dep_graph::decl_module"(ptr %0, i64 %1) #3 {
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

define { i64, ptr } @"dep_graph::resolve_dep_ref"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %concat.str228 = alloca { i64, ptr }, align 8
  %concat.str88 = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
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
  %cat.seg10 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %cat.seg11 = load ptr, ptr %cat.seg10, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load12 = load ptr, ptr %var.ref, align 8
  %cat.seg13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %cat.seg14 = load i64, ptr %cat.seg13, align 8
  %cat.seg15 = and i64 %cat.seg14, 281474976710655
  %cat.seg16 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %cat.seg17 = load ptr, ptr %cat.seg16, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg9, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len18

choice.exit:                                      ; preds = %ret.dead232, %and.31.exit
  %var.load233 = load ptr, ptr %var.defs, align 8
  %var.load234 = load ptr, ptr %var.ref, align 8
  %m.cap235 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load233, i32 0, i32 1
  %m.cap236 = load i64, ptr %m.cap235, align 8
  %m.keys237 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load233, i32 0, i32 2
  %m.keys238 = load ptr, ptr %m.keys237, align 8
  %m.states239 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load233, i32 0, i32 4
  %m.states240 = load ptr, ptr %m.states239, align 8
  %mk.data241 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 1
  %mk.data242 = load ptr, ptr %mk.data241, align 8
  %mk.len243 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 0
  %mk.len244 = load i64, ptr %mk.len243, align 8
  %mk.len245 = and i64 %mk.len244, 281474976710655
  %hash.str246 = call i64 @dva_hash_string(ptr %mk.data242, i64 %mk.len245)
  %m.capm1247 = sub i64 %m.cap236, 1
  %m.idx0248 = and i64 %hash.str246, %m.capm1247
  br label %m.mem.loop249

cat.sum.len18:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg15)
  %sum20 = extractvalue { i64, i1 } %cat.sum.len19, 0
  %ovf21 = extractvalue { i64, i1 } %cat.sum.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %cat.sum.len22

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len18

cat.sum.len22:                                    ; preds = %abort.dead24, %cat.sum.len18
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum20, i64 1)
  %sum25 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf26 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %concat.tot.len27

str_overflow_abort23:                             ; preds = %cat.sum.len18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %cat.sum.len22

concat.tot.len27:                                 ; preds = %abort.dead29, %cat.sum.len22
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum25)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg11, i64 %cat.seg9, i1 false)
  %cat.off = add i64 0, %cat.seg9
  %cat.dst30 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst30, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off31 = add i64 %cat.off, 2
  %cat.dst32 = getelementptr i8, ptr %concat.buf, i64 %cat.off31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 %cat.seg17, i64 %cat.seg15, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum20
  store i8 0, ptr %concat.nul, align 1
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum20, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %m.cap34 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %m.keys35 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 4
  %m.states36 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.data37 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.len38 = load i64, ptr %mk.len, align 8
  %mk.len39 = and i64 %mk.len38, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %mk.data37, i64 %mk.len39)
  %m.capm1 = sub i64 %m.cap34, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

str_overflow_abort28:                             ; preds = %cat.sum.len22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %concat.tot.len27

m.mem.loop:                                       ; preds = %m.mem.next, %concat.tot.len27
  %m.mem.idx = phi i64 [ %m.idx0, %concat.tot.len27 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe40 = phi i64 [ 0, %concat.tot.len27 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe40, %m.cap34
  %m.mem.state.gep = getelementptr i8, ptr %m.states36, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr i64, ptr %m.keys35, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen41 = load i64, ptr %mk.slen, align 8
  %mk.slen42 = and i64 %mk.slen41, 281474976710655
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.nlen43 = load i64, ptr %mk.nlen, align 8
  %mk.nlen44 = and i64 %mk.nlen43, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen42, %mk.nlen44
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe40, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then47, label %choice.exit48

mk.eq.then:                                       ; preds = %m.mem.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata45 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.ndata46 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata45, ptr %mk.ndata46, i64 %mk.nlen44)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.mem.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then47:                                    ; preds = %m.mem.done
  %var.load49 = load ptr, ptr %var.mod, align 8
  %cat.seg50 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %cat.seg51 = load i64, ptr %cat.seg50, align 8
  %cat.seg52 = and i64 %cat.seg51, 281474976710655
  %cat.seg53 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %cat.seg54 = load ptr, ptr %cat.seg53, align 8
  %cat.lit.data55 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load56 = load ptr, ptr %var.ref, align 8
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %cat.seg58 = load i64, ptr %cat.seg57, align 8
  %cat.seg59 = and i64 %cat.seg58, 281474976710655
  %cat.seg60 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %cat.seg61 = load ptr, ptr %cat.seg60, align 8
  %cat.sum.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg52, i64 2)
  %sum63 = extractvalue { i64, i1 } %cat.sum.len62, 0
  %ovf64 = extractvalue { i64, i1 } %cat.sum.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %cat.sum.len65

choice.exit48:                                    ; preds = %ret.dead, %m.mem.done
  %var.load91 = load ptr, ptr %var.defs, align 8
  %var.load92 = load ptr, ptr %var.mod, align 8
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %cat.seg94 = load i64, ptr %cat.seg93, align 8
  %cat.seg95 = and i64 %cat.seg94, 281474976710655
  %cat.seg96 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %cat.seg97 = load ptr, ptr %cat.seg96, align 8
  %cat.lit.data98 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load99 = load ptr, ptr %var.ref, align 8
  %cat.seg100 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 0
  %cat.seg101 = load i64, ptr %cat.seg100, align 8
  %cat.seg102 = and i64 %cat.seg101, 281474976710655
  %cat.seg103 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 1
  %cat.seg104 = load ptr, ptr %cat.seg103, align 8
  %cat.sum.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg95, i64 3)
  %sum106 = extractvalue { i64, i1 } %cat.sum.len105, 0
  %ovf107 = extractvalue { i64, i1 } %cat.sum.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %cat.sum.len108

cat.sum.len65:                                    ; preds = %abort.dead67, %choice.then47
  %cat.sum.len68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum63, i64 %cat.seg59)
  %sum69 = extractvalue { i64, i1 } %cat.sum.len68, 0
  %ovf70 = extractvalue { i64, i1 } %cat.sum.len68, 1
  br i1 %ovf70, label %str_overflow_abort72, label %cat.sum.len71

str_overflow_abort66:                             ; preds = %choice.then47
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %cat.sum.len65

cat.sum.len71:                                    ; preds = %abort.dead73, %cat.sum.len65
  %concat.tot.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum69, i64 1)
  %sum75 = extractvalue { i64, i1 } %concat.tot.len74, 0
  %ovf76 = extractvalue { i64, i1 } %concat.tot.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %concat.tot.len77

str_overflow_abort72:                             ; preds = %cat.sum.len65
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %cat.sum.len71

concat.tot.len77:                                 ; preds = %abort.dead79, %cat.sum.len71
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum75)
  %cat.dst82 = getelementptr i8, ptr %concat.buf81, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %cat.seg54, i64 %cat.seg52, i1 false)
  %cat.off83 = add i64 0, %cat.seg52
  %cat.dst84 = getelementptr i8, ptr %concat.buf81, i64 %cat.off83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst84, ptr align 1 %cat.lit.data55, i64 2, i1 false)
  %cat.off85 = add i64 %cat.off83, 2
  %cat.dst86 = getelementptr i8, ptr %concat.buf81, i64 %cat.off85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst86, ptr align 1 %cat.seg61, i64 %cat.seg59, i1 false)
  %concat.nul87 = getelementptr i8, ptr %concat.buf81, i64 %sum69
  store i8 0, ptr %concat.nul87, align 1
  %str.build.len.gep89 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 0
  store i64 %sum69, ptr %str.build.len.gep89, align 8
  %str.build.data.gep90 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 1
  store ptr %concat.buf81, ptr %str.build.data.gep90, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str88, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort78:                             ; preds = %cat.sum.len71
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %concat.tot.len77

ret.dead:                                         ; No predecessors!
  br label %choice.exit48

cat.sum.len108:                                   ; preds = %abort.dead110, %choice.exit48
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum106, i64 %cat.seg102)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

str_overflow_abort109:                            ; preds = %choice.exit48
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %cat.sum.len108

cat.sum.len114:                                   ; preds = %abort.dead116, %cat.sum.len108
  %concat.tot.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 1)
  %sum118 = extractvalue { i64, i1 } %concat.tot.len117, 0
  %ovf119 = extractvalue { i64, i1 } %concat.tot.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %concat.tot.len120

str_overflow_abort115:                            ; preds = %cat.sum.len108
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %cat.sum.len114

concat.tot.len120:                                ; preds = %abort.dead122, %cat.sum.len114
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 %sum118)
  %cat.dst125 = getelementptr i8, ptr %concat.buf124, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst125, ptr align 1 %cat.seg97, i64 %cat.seg95, i1 false)
  %cat.off126 = add i64 0, %cat.seg95
  %cat.dst127 = getelementptr i8, ptr %concat.buf124, i64 %cat.off126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst127, ptr align 1 %cat.lit.data98, i64 3, i1 false)
  %cat.off128 = add i64 %cat.off126, 3
  %cat.dst129 = getelementptr i8, ptr %concat.buf124, i64 %cat.off128
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst129, ptr align 1 %cat.seg104, i64 %cat.seg102, i1 false)
  %concat.nul130 = getelementptr i8, ptr %concat.buf124, i64 %sum112
  store i8 0, ptr %concat.nul130, align 1
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 16)
  %str.build.len.gep133 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 0
  store i64 %sum112, ptr %str.build.len.gep133, align 8
  %str.build.data.gep134 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 1
  store ptr %concat.buf124, ptr %str.build.data.gep134, align 8
  %m.cap135 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load91, i32 0, i32 1
  %m.cap136 = load i64, ptr %m.cap135, align 8
  %m.keys137 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load91, i32 0, i32 2
  %m.keys138 = load ptr, ptr %m.keys137, align 8
  %m.states139 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load91, i32 0, i32 4
  %m.states140 = load ptr, ptr %m.states139, align 8
  %mk.data141 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 1
  %mk.data142 = load ptr, ptr %mk.data141, align 8
  %mk.len143 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 0
  %mk.len144 = load i64, ptr %mk.len143, align 8
  %mk.len145 = and i64 %mk.len144, 281474976710655
  %hash.str146 = call i64 @dva_hash_string(ptr %mk.data142, i64 %mk.len145)
  %m.capm1147 = sub i64 %m.cap136, 1
  %m.idx0148 = and i64 %hash.str146, %m.capm1147
  br label %m.mem.loop149

str_overflow_abort121:                            ; preds = %cat.sum.len114
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %concat.tot.len120

m.mem.loop149:                                    ; preds = %m.mem.next152, %concat.tot.len120
  %m.mem.idx155 = phi i64 [ %m.idx0148, %concat.tot.len120 ], [ %m.mem.idx.next184, %m.mem.next152 ]
  %m.mem.probe156 = phi i64 [ 0, %concat.tot.len120 ], [ %m.mem.probe.next185, %m.mem.next152 ]
  %m.mem.reached157 = icmp eq i64 %m.mem.probe156, %m.cap136
  %m.mem.state.gep158 = getelementptr i8, ptr %m.states140, i64 %m.mem.idx155
  %m.mem.state159 = load i8, ptr %m.mem.state.gep158, align 1
  %m.mem.is.empty160 = icmp eq i8 %m.mem.state159, 0
  %m.mem.stop161 = or i1 %m.mem.is.empty160, %m.mem.reached157
  br i1 %m.mem.stop161, label %m.mem.miss153, label %m.mem.probe150

m.mem.probe150:                                   ; preds = %m.mem.loop149
  %m.mem.is.tomb162 = icmp eq i8 %m.mem.state159, 2
  br i1 %m.mem.is.tomb162, label %m.mem.next152, label %m.mem.found151

m.mem.found151:                                   ; preds = %m.mem.probe150
  %m.mem.key.slot163 = getelementptr i64, ptr %m.keys138, i64 %m.mem.idx155
  %mk.stored164 = load ptr, ptr %m.mem.key.slot163, align 8
  %mk.slen165 = getelementptr inbounds { i64, ptr }, ptr %mk.stored164, i32 0, i32 0
  %mk.slen166 = load i64, ptr %mk.slen165, align 8
  %mk.slen167 = and i64 %mk.slen166, 281474976710655
  %mk.nlen168 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 0
  %mk.nlen169 = load i64, ptr %mk.nlen168, align 8
  %mk.nlen170 = and i64 %mk.nlen169, 281474976710655
  %mk.lenseq171 = icmp eq i64 %mk.slen167, %mk.nlen170
  br i1 %mk.lenseq171, label %mk.eq.then172, label %mk.eq.else173

m.mem.next152:                                    ; preds = %mk.eq.merge174, %m.mem.probe150
  %m.mem.idx.add183 = add i64 %m.mem.idx155, 1
  %m.mem.idx.next184 = and i64 %m.mem.idx.add183, %m.capm1147
  %m.mem.probe.next185 = add i64 %m.mem.probe156, 1
  br label %m.mem.loop149

m.mem.miss153:                                    ; preds = %m.mem.loop149
  br label %m.mem.done154

m.mem.done154:                                    ; preds = %m.mem.miss153, %m.mem.hit182
  %m.mem.res186 = phi i1 [ true, %m.mem.hit182 ], [ false, %m.mem.miss153 ]
  br i1 %m.mem.res186, label %choice.then187, label %choice.else

mk.eq.then172:                                    ; preds = %m.mem.found151
  %mk.sdata175 = getelementptr inbounds { i64, ptr }, ptr %mk.stored164, i32 0, i32 1
  %mk.sdata176 = load ptr, ptr %mk.sdata175, align 8
  %mk.ndata177 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 1
  %mk.ndata178 = load ptr, ptr %mk.ndata177, align 8
  %mk.memcmp179 = call i32 @memcmp(ptr %mk.sdata176, ptr %mk.ndata178, i64 %mk.nlen170)
  %mk.cmpeq180 = icmp eq i32 %mk.memcmp179, 0
  br label %mk.eq.merge174

mk.eq.else173:                                    ; preds = %m.mem.found151
  br label %mk.eq.merge174

mk.eq.merge174:                                   ; preds = %mk.eq.else173, %mk.eq.then172
  %mk.eq181 = phi i1 [ %mk.cmpeq180, %mk.eq.then172 ], [ false, %mk.eq.else173 ]
  br i1 %mk.eq181, label %m.mem.hit182, label %m.mem.next152

m.mem.hit182:                                     ; preds = %mk.eq.merge174
  br label %m.mem.done154

choice.then187:                                   ; preds = %m.mem.done154
  %var.load189 = load ptr, ptr %var.mod, align 8
  %cat.seg190 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 0
  %cat.seg191 = load i64, ptr %cat.seg190, align 8
  %cat.seg192 = and i64 %cat.seg191, 281474976710655
  %cat.seg193 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 1
  %cat.seg194 = load ptr, ptr %cat.seg193, align 8
  %cat.lit.data195 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load196 = load ptr, ptr %var.ref, align 8
  %cat.seg197 = getelementptr inbounds { i64, ptr }, ptr %var.load196, i32 0, i32 0
  %cat.seg198 = load i64, ptr %cat.seg197, align 8
  %cat.seg199 = and i64 %cat.seg198, 281474976710655
  %cat.seg200 = getelementptr inbounds { i64, ptr }, ptr %var.load196, i32 0, i32 1
  %cat.seg201 = load ptr, ptr %cat.seg200, align 8
  %cat.sum.len202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg192, i64 3)
  %sum203 = extractvalue { i64, i1 } %cat.sum.len202, 0
  %ovf204 = extractvalue { i64, i1 } %cat.sum.len202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %cat.sum.len205

choice.else:                                      ; preds = %m.mem.done154
  br label %choice.exit188

choice.exit188:                                   ; preds = %choice.else, %concat.tot.len217
  %choice.res = phi ptr [ %concat.str228, %concat.tot.len217 ], [ @str.4.struct, %choice.else ]
  %ret.pack231 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack231

cat.sum.len205:                                   ; preds = %abort.dead207, %choice.then187
  %cat.sum.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum203, i64 %cat.seg199)
  %sum209 = extractvalue { i64, i1 } %cat.sum.len208, 0
  %ovf210 = extractvalue { i64, i1 } %cat.sum.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %cat.sum.len211

str_overflow_abort206:                            ; preds = %choice.then187
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %cat.sum.len205

cat.sum.len211:                                   ; preds = %abort.dead213, %cat.sum.len205
  %concat.tot.len214 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum209, i64 1)
  %sum215 = extractvalue { i64, i1 } %concat.tot.len214, 0
  %ovf216 = extractvalue { i64, i1 } %concat.tot.len214, 1
  br i1 %ovf216, label %str_overflow_abort218, label %concat.tot.len217

str_overflow_abort212:                            ; preds = %cat.sum.len205
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead213:                                    ; No predecessors!
  br label %cat.sum.len211

concat.tot.len217:                                ; preds = %abort.dead219, %cat.sum.len211
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 %sum215)
  %cat.dst222 = getelementptr i8, ptr %concat.buf221, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst222, ptr align 1 %cat.seg194, i64 %cat.seg192, i1 false)
  %cat.off223 = add i64 0, %cat.seg192
  %cat.dst224 = getelementptr i8, ptr %concat.buf221, i64 %cat.off223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst224, ptr align 1 %cat.lit.data195, i64 3, i1 false)
  %cat.off225 = add i64 %cat.off223, 3
  %cat.dst226 = getelementptr i8, ptr %concat.buf221, i64 %cat.off225
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst226, ptr align 1 %cat.seg201, i64 %cat.seg199, i1 false)
  %concat.nul227 = getelementptr i8, ptr %concat.buf221, i64 %sum209
  store i8 0, ptr %concat.nul227, align 1
  %str.build.len.gep229 = getelementptr inbounds { i64, ptr }, ptr %concat.str228, i32 0, i32 0
  store i64 %sum209, ptr %str.build.len.gep229, align 8
  %str.build.data.gep230 = getelementptr inbounds { i64, ptr }, ptr %concat.str228, i32 0, i32 1
  store ptr %concat.buf221, ptr %str.build.data.gep230, align 8
  br label %choice.exit188

str_overflow_abort218:                            ; preds = %cat.sum.len211
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead219:                                    ; No predecessors!
  br label %concat.tot.len217

ret.dead232:                                      ; No predecessors!
  br label %choice.exit

m.mem.loop249:                                    ; preds = %m.mem.next252, %choice.exit
  %m.mem.idx255 = phi i64 [ %m.idx0248, %choice.exit ], [ %m.mem.idx.next284, %m.mem.next252 ]
  %m.mem.probe256 = phi i64 [ 0, %choice.exit ], [ %m.mem.probe.next285, %m.mem.next252 ]
  %m.mem.reached257 = icmp eq i64 %m.mem.probe256, %m.cap236
  %m.mem.state.gep258 = getelementptr i8, ptr %m.states240, i64 %m.mem.idx255
  %m.mem.state259 = load i8, ptr %m.mem.state.gep258, align 1
  %m.mem.is.empty260 = icmp eq i8 %m.mem.state259, 0
  %m.mem.stop261 = or i1 %m.mem.is.empty260, %m.mem.reached257
  br i1 %m.mem.stop261, label %m.mem.miss253, label %m.mem.probe250

m.mem.probe250:                                   ; preds = %m.mem.loop249
  %m.mem.is.tomb262 = icmp eq i8 %m.mem.state259, 2
  br i1 %m.mem.is.tomb262, label %m.mem.next252, label %m.mem.found251

m.mem.found251:                                   ; preds = %m.mem.probe250
  %m.mem.key.slot263 = getelementptr i64, ptr %m.keys238, i64 %m.mem.idx255
  %mk.stored264 = load ptr, ptr %m.mem.key.slot263, align 8
  %mk.slen265 = getelementptr inbounds { i64, ptr }, ptr %mk.stored264, i32 0, i32 0
  %mk.slen266 = load i64, ptr %mk.slen265, align 8
  %mk.slen267 = and i64 %mk.slen266, 281474976710655
  %mk.nlen268 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 0
  %mk.nlen269 = load i64, ptr %mk.nlen268, align 8
  %mk.nlen270 = and i64 %mk.nlen269, 281474976710655
  %mk.lenseq271 = icmp eq i64 %mk.slen267, %mk.nlen270
  br i1 %mk.lenseq271, label %mk.eq.then272, label %mk.eq.else273

m.mem.next252:                                    ; preds = %mk.eq.merge274, %m.mem.probe250
  %m.mem.idx.add283 = add i64 %m.mem.idx255, 1
  %m.mem.idx.next284 = and i64 %m.mem.idx.add283, %m.capm1247
  %m.mem.probe.next285 = add i64 %m.mem.probe256, 1
  br label %m.mem.loop249

m.mem.miss253:                                    ; preds = %m.mem.loop249
  br label %m.mem.done254

m.mem.done254:                                    ; preds = %m.mem.miss253, %m.mem.hit282
  %m.mem.res286 = phi i1 [ true, %m.mem.hit282 ], [ false, %m.mem.miss253 ]
  br i1 %m.mem.res286, label %choice.then287, label %choice.else288

mk.eq.then272:                                    ; preds = %m.mem.found251
  %mk.sdata275 = getelementptr inbounds { i64, ptr }, ptr %mk.stored264, i32 0, i32 1
  %mk.sdata276 = load ptr, ptr %mk.sdata275, align 8
  %mk.ndata277 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 1
  %mk.ndata278 = load ptr, ptr %mk.ndata277, align 8
  %mk.memcmp279 = call i32 @memcmp(ptr %mk.sdata276, ptr %mk.ndata278, i64 %mk.nlen270)
  %mk.cmpeq280 = icmp eq i32 %mk.memcmp279, 0
  br label %mk.eq.merge274

mk.eq.else273:                                    ; preds = %m.mem.found251
  br label %mk.eq.merge274

mk.eq.merge274:                                   ; preds = %mk.eq.else273, %mk.eq.then272
  %mk.eq281 = phi i1 [ %mk.cmpeq280, %mk.eq.then272 ], [ false, %mk.eq.else273 ]
  br i1 %mk.eq281, label %m.mem.hit282, label %m.mem.next252

m.mem.hit282:                                     ; preds = %mk.eq.merge274
  br label %m.mem.done254

choice.then287:                                   ; preds = %m.mem.done254
  %var.load290 = load ptr, ptr %var.ref, align 8
  br label %choice.exit289

choice.else288:                                   ; preds = %m.mem.done254
  br label %choice.exit289

choice.exit289:                                   ; preds = %choice.else288, %choice.then287
  %choice.res291 = phi ptr [ %var.load290, %choice.then287 ], [ @str.4.struct, %choice.else288 ]
  %ret.pack292 = load { i64, ptr }, ptr %choice.res291, align 8
  ret { i64, ptr } %ret.pack292
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

define void @"dep_graph::collect_expr_refs"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %var.rm = alloca ptr, align 8
  %var._1966 = alloca ptr, align 8
  %var._i1898 = alloca i64, align 8
  %var.p1897 = alloca ptr, align 8
  %var._1896 = alloca ptr, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.m1872 = alloca ptr, align 8
  %var._1871 = alloca ptr, align 8
  %var.r1829 = alloca ptr, align 8
  %var._1828 = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1791 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1756 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1721 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1683 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1648 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1611 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1576 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1541 = alloca ptr, align 8
  %var._i1504 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %var._1503 = alloca ptr, align 8
  %loop.step.47 = alloca i64, align 8
  %loop.idx.47 = alloca i64, align 8
  %var.v1489 = alloca ptr, align 8
  %var._1488 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1451 = alloca ptr, align 8
  %var.v1362 = alloca ptr, align 8
  %var._1361 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1310 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1244 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1178 = alloca ptr, align 8
  %var.a1112 = alloca ptr, align 8
  %var._1111 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1045 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._979 = alloca ptr, align 8
  %var._i940 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %var._939 = alloca ptr, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._925 = alloca ptr, align 8
  %var._i833 = alloca i64, align 8
  %var.vn = alloca ptr, align 8
  %var._832 = alloca ptr, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._i789 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %var._788 = alloca ptr, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var._i666 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %var._665 = alloca ptr, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._i637 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %var._636 = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._593 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._475 = alloca ptr, align 8
  %var._i465 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %var._464 = alloca ptr, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._426 = alloca ptr, align 8
  %var._i339 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %var._338 = alloca ptr, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._310 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._273 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._207 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
  %var._172 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next1960, %a.after1987, %loop.exit.48, %choice.exit1834, %a.after1812, %a.after1775, %a.after1740, %a.after1705, %a.after1667, %a.after1632, %a.after1595, %a.after1560, %loop.exit.47, %a.after1472, %choice.exit1349, %a.after1294, %a.after1228, %a.after1162, %a.after1095, %a.after1029, %loop.exit.45, %loop.exit.39, %loop.exit.38, %a.after410, %a.after294, %a.after257, %loop.exit.36, %choice.exit26
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
  store ptr %slot.i2p, ptr %var._172, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %fld.gep209 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load208, i32 0, i32 1
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
  %fld.gep238 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load237, i32 0, i32 2
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
  %fld.gep275 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load274, i32 0, i32 1
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
  %tag.gep421 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id422 = load i64, ptr %tag.gep421, align 8
  %tag.match423 = icmp eq i64 %tag.id422, 8
  br i1 %tag.match423, label %choice.case419, label %choice.next420

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
  br label %loop.header.37

loop.header.37:                                   ; preds = %loop.latch.37, %a.after315
  %counter.load332 = load i64, ptr %loop.idx.37, align 8
  %loop.cond333 = icmp slt i64 %counter.load332, %arr.cycle.len329
  br i1 %loop.cond333, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i334 = sub i64 %counter.load332, 0
  store i64 1, ptr %loop.step.37, align 8
  %arr.elem.gep335 = getelementptr i64, ptr %arr.cycle.data331, i64 %counter.load332
  %arr.elem.raw336 = load i64, ptr %arr.elem.gep335, align 8
  %slot.i2p337 = inttoptr i64 %arr.elem.raw336 to ptr
  store ptr %slot.i2p337, ptr %var._338, align 8
  store ptr %slot.i2p337, ptr %var.p, align 8
  store i64 %loop.rel.i334, ptr %var._i339, align 8
  %var.load340 = load ptr, ptr %var.p, align 8
  %eq.lhs.len341 = getelementptr inbounds { i64, ptr }, ptr %var.load340, i32 0, i32 0
  %eq.lhs.len342 = load i64, ptr %eq.lhs.len341, align 8
  %eq.lhs.len343 = and i64 %eq.lhs.len342, 281474976710655
  %eq.rhs.len344 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len345 = and i64 %eq.rhs.len344, 281474976710655
  %eq.len346 = icmp eq i64 %eq.lhs.len343, %eq.rhs.len345
  br i1 %eq.len346, label %str.eq.then347, label %str.eq.else348

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %choice.exit358
  %step.val388 = load i64, ptr %loop.step.37, align 8
  %loop.next389 = add i64 %counter.load332, %step.val388
  store i64 %loop.next389, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  %var.load390 = load ptr, ptr %var.fe, align 8
  %fld.gep391 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load390, i32 0, i32 2
  %fld.load392 = load ptr, ptr %fld.gep391, align 8
  %var.load393 = load ptr, ptr %var.fn_locals, align 8
  %a.load394 = load ptr, ptr %var.fn_locals, align 8
  %a.null395 = icmp eq ptr %a.load394, null
  br i1 %a.null395, label %a.create396, label %a.after397

str.eq.then347:                                   ; preds = %loop.body.37
  %eq.lhs.data350 = getelementptr inbounds { i64, ptr }, ptr %var.load340, i32 0, i32 1
  %eq.lhs.data351 = load ptr, ptr %eq.lhs.data350, align 8
  %eq.rhs.data352 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp353 = call i32 @memcmp(ptr %eq.lhs.data351, ptr %eq.rhs.data352, i64 %eq.lhs.len343)
  %eq.cmp.zero354 = icmp eq i32 %eq.memcmp353, 0
  br label %str.eq.merge349

str.eq.else348:                                   ; preds = %loop.body.37
  br label %str.eq.merge349

str.eq.merge349:                                  ; preds = %str.eq.else348, %str.eq.then347
  %str.eq.result355 = phi i1 [ %eq.cmp.zero354, %str.eq.then347 ], [ false, %str.eq.else348 ]
  %str.neq356 = xor i1 %str.eq.result355, true
  br i1 %str.neq356, label %choice.then357, label %choice.exit358

choice.then357:                                   ; preds = %str.eq.merge349
  %var.load359 = load ptr, ptr %var.p, align 8
  %a.load360 = load ptr, ptr %var.fn_locals, align 8
  %a.null361 = icmp eq ptr %a.load360, null
  br i1 %a.null361, label %a.create362, label %a.after363

choice.exit358:                                   ; preds = %a.store374, %str.eq.merge349
  br label %loop.latch.37

a.create362:                                      ; preds = %choice.then357
  %arena.cur364 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 24)
  %arena.cur366 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 128)
  %a.len.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 0
  store i64 0, ptr %a.len.gep368, align 8
  %a.data.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 1
  store ptr %a.buf367, ptr %a.data.gep369, align 8
  %a.cap.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 2
  store i64 16, ptr %a.cap.gep370, align 8
  store ptr %a.create365, ptr %var.fn_locals, align 8
  br label %a.after363

a.after363:                                       ; preds = %a.create362, %choice.then357
  %a.load2371 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check372

a.check372:                                       ; preds = %a.after363
  %a.len375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 0
  %a.len376 = load i64, ptr %a.len375, align 8
  %a.cap377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 2
  %a.cap378 = load i64, ptr %a.cap377, align 8
  %a.needs.grow379 = icmp eq i64 %a.len376, %a.cap378
  br i1 %a.needs.grow379, label %a.grow373, label %a.store374

a.grow373:                                        ; preds = %a.check372
  call void @dva_array_grow(ptr %a.load2371)
  br label %a.store374

a.store374:                                       ; preds = %a.grow373, %a.check372
  %a.cur.data380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 1
  %a.cur.data381 = load ptr, ptr %a.cur.data380, align 8
  %a.cur.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 0
  %a.cur.len383 = load i64, ptr %a.cur.len382, align 8
  %a.elem.gep384 = getelementptr i64, ptr %a.cur.data381, i64 %a.cur.len383
  %slot.p2i385 = ptrtoint ptr %var.load359 to i64
  store i64 %slot.p2i385, ptr %a.elem.gep384, align 8
  %a.next.len386 = add i64 %a.cur.len383, 1
  %b.len.gep387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 0
  store i64 %a.next.len386, ptr %b.len.gep387, align 8
  br label %choice.exit358

a.create396:                                      ; preds = %loop.exit.37
  %arena.cur398 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create399 = call ptr @dva_arena_alloc(ptr %arena.cur398, i64 24)
  %arena.cur400 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 128)
  %a.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 0
  store i64 0, ptr %a.len.gep402, align 8
  %a.data.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 1
  store ptr %a.buf401, ptr %a.data.gep403, align 8
  %a.cap.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 2
  store i64 16, ptr %a.cap.gep404, align 8
  store ptr %a.create399, ptr %var.fn_locals, align 8
  br label %a.after397

a.after397:                                       ; preds = %a.create396, %loop.exit.37
  %a.load2405 = load ptr, ptr %var.fn_locals, align 8
  %var.load406 = load ptr, ptr %var.refs, align 8
  %a.load407 = load ptr, ptr %var.refs, align 8
  %a.null408 = icmp eq ptr %a.load407, null
  br i1 %a.null408, label %a.create409, label %a.after410

a.create409:                                      ; preds = %a.after397
  %arena.cur411 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 24)
  %arena.cur413 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 128)
  %a.len.gep415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 0
  store i64 0, ptr %a.len.gep415, align 8
  %a.data.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 1
  store ptr %a.buf414, ptr %a.data.gep416, align 8
  %a.cap.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 2
  store i64 16, ptr %a.cap.gep417, align 8
  store ptr %a.create412, ptr %var.refs, align 8
  br label %a.after410

a.after410:                                       ; preds = %a.create409, %a.after397
  %a.load2418 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load392, ptr %a.load2405, ptr %a.load2418)
  br label %choice.exit

choice.case419:                                   ; preds = %choice.next304
  %pay.gep424 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr425 = load ptr, ptr %pay.gep424, align 8
  store ptr %payload.ptr425, ptr %var._426, align 8
  store ptr %payload.ptr425, ptr %var.be, align 8
  %var.load427 = load ptr, ptr %var.locals, align 8
  %a.load428 = load ptr, ptr %var.locals, align 8
  %a.null429 = icmp eq ptr %a.load428, null
  br i1 %a.null429, label %a.create430, label %a.after431

choice.next420:                                   ; preds = %choice.next304
  %tag.gep588 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id589 = load i64, ptr %tag.gep588, align 8
  %tag.match590 = icmp eq i64 %tag.id589, 7
  br i1 %tag.match590, label %choice.case586, label %choice.next587

a.create430:                                      ; preds = %choice.case419
  %arena.cur432 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 128)
  %a.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 0
  store i64 0, ptr %a.len.gep436, align 8
  %a.data.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 1
  store ptr %a.buf435, ptr %a.data.gep437, align 8
  %a.cap.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep438, align 8
  store ptr %a.create433, ptr %var.locals, align 8
  br label %a.after431

a.after431:                                       ; preds = %a.create430, %choice.case419
  %a.load2439 = load ptr, ptr %var.locals, align 8
  %call.res440 = call ptr @"dep_graph::copy_names"(ptr %a.load2439)
  store ptr %call.res440, ptr %var.blk_locals, align 8
  %var.load441 = load ptr, ptr %var.be, align 8
  %a.load442 = load ptr, ptr %var.be, align 8
  %a.null443 = icmp eq ptr %a.load442, null
  br i1 %a.null443, label %a.create444, label %a.after445

a.create444:                                      ; preds = %a.after431
  %arena.cur446 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create447 = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 24)
  %arena.cur448 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 128)
  %a.len.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 0
  store i64 0, ptr %a.len.gep450, align 8
  %a.data.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 1
  store ptr %a.buf449, ptr %a.data.gep451, align 8
  %a.cap.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 2
  store i64 16, ptr %a.cap.gep452, align 8
  store ptr %a.create447, ptr %var.be, align 8
  br label %a.after445

a.after445:                                       ; preds = %a.create444, %a.after431
  %a.load2453 = load ptr, ptr %var.be, align 8
  %arr.cycle.len454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 0
  %arr.cycle.len455 = load i64, ptr %arr.cycle.len454, align 8
  %arr.cycle.data456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 1
  %arr.cycle.data457 = load ptr, ptr %arr.cycle.data456, align 8
  store i64 0, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.header.38:                                   ; preds = %loop.latch.38, %a.after445
  %counter.load458 = load i64, ptr %loop.idx.38, align 8
  %loop.cond459 = icmp slt i64 %counter.load458, %arr.cycle.len455
  br i1 %loop.cond459, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i460 = sub i64 %counter.load458, 0
  store i64 1, ptr %loop.step.38, align 8
  %arr.elem.gep461 = getelementptr i64, ptr %arr.cycle.data457, i64 %counter.load458
  %arr.elem.raw462 = load i64, ptr %arr.elem.gep461, align 8
  %slot.i2p463 = inttoptr i64 %arr.elem.raw462 to ptr
  store ptr %slot.i2p463, ptr %var._464, align 8
  store ptr %slot.i2p463, ptr %var.st, align 8
  store i64 %loop.rel.i460, ptr %var._i465, align 8
  %var.load466 = load ptr, ptr %var.st, align 8
  %tag.gep470 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 0
  %tag.id471 = load i64, ptr %tag.gep470, align 8
  %tag.match472 = icmp eq i64 %tag.id471, 6
  br i1 %tag.match472, label %choice.case468, label %choice.next469

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit467
  %step.val584 = load i64, ptr %loop.step.38, align 8
  %loop.next585 = add i64 %counter.load458, %step.val584
  store i64 %loop.next585, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %loop.exit.nat.38
  br label %choice.exit

choice.exit467:                                   ; preds = %a.after575, %choice.exit525
  br label %loop.latch.38

choice.case468:                                   ; preds = %loop.body.38
  %pay.gep473 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 1
  %payload.ptr474 = load ptr, ptr %pay.gep473, align 8
  store ptr %payload.ptr474, ptr %var._475, align 8
  store ptr %payload.ptr474, ptr %var.a, align 8
  %var.load476 = load ptr, ptr %var.a, align 8
  %fld.gep477 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load476, i32 0, i32 5
  %fld.load478 = load ptr, ptr %fld.gep477, align 8
  %var.load479 = load ptr, ptr %var.blk_locals, align 8
  %a.load480 = load ptr, ptr %var.blk_locals, align 8
  %a.null481 = icmp eq ptr %a.load480, null
  br i1 %a.null481, label %a.create482, label %a.after483

choice.next469:                                   ; preds = %loop.body.38
  %var.load557 = load ptr, ptr %var.st, align 8
  %var.load558 = load ptr, ptr %var.blk_locals, align 8
  %a.load559 = load ptr, ptr %var.blk_locals, align 8
  %a.null560 = icmp eq ptr %a.load559, null
  br i1 %a.null560, label %a.create561, label %a.after562

a.create482:                                      ; preds = %choice.case468
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 24)
  %arena.cur486 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 128)
  %a.len.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 0
  store i64 0, ptr %a.len.gep488, align 8
  %a.data.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 1
  store ptr %a.buf487, ptr %a.data.gep489, align 8
  %a.cap.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 2
  store i64 16, ptr %a.cap.gep490, align 8
  store ptr %a.create485, ptr %var.blk_locals, align 8
  br label %a.after483

a.after483:                                       ; preds = %a.create482, %choice.case468
  %a.load2491 = load ptr, ptr %var.blk_locals, align 8
  %var.load492 = load ptr, ptr %var.refs, align 8
  %a.load493 = load ptr, ptr %var.refs, align 8
  %a.null494 = icmp eq ptr %a.load493, null
  br i1 %a.null494, label %a.create495, label %a.after496

a.create495:                                      ; preds = %a.after483
  %arena.cur497 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create498 = call ptr @dva_arena_alloc(ptr %arena.cur497, i64 24)
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 128)
  %a.len.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 0
  store i64 0, ptr %a.len.gep501, align 8
  %a.data.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 1
  store ptr %a.buf500, ptr %a.data.gep502, align 8
  %a.cap.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create498, i32 0, i32 2
  store i64 16, ptr %a.cap.gep503, align 8
  store ptr %a.create498, ptr %var.refs, align 8
  br label %a.after496

a.after496:                                       ; preds = %a.create495, %a.after483
  %a.load2504 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load478, ptr %a.load2491, ptr %a.load2504)
  %var.load505 = load ptr, ptr %var.a, align 8
  %fld.gep506 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load505, i32 0, i32 0
  %fld.load507 = load ptr, ptr %fld.gep506, align 8
  %eq.lhs.len508 = getelementptr inbounds { i64, ptr }, ptr %fld.load507, i32 0, i32 0
  %eq.lhs.len509 = load i64, ptr %eq.lhs.len508, align 8
  %eq.lhs.len510 = and i64 %eq.lhs.len509, 281474976710655
  %eq.rhs.len511 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len512 = and i64 %eq.rhs.len511, 281474976710655
  %eq.len513 = icmp eq i64 %eq.lhs.len510, %eq.rhs.len512
  br i1 %eq.len513, label %str.eq.then514, label %str.eq.else515

str.eq.then514:                                   ; preds = %a.after496
  %eq.lhs.data517 = getelementptr inbounds { i64, ptr }, ptr %fld.load507, i32 0, i32 1
  %eq.lhs.data518 = load ptr, ptr %eq.lhs.data517, align 8
  %eq.rhs.data519 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp520 = call i32 @memcmp(ptr %eq.lhs.data518, ptr %eq.rhs.data519, i64 %eq.lhs.len510)
  %eq.cmp.zero521 = icmp eq i32 %eq.memcmp520, 0
  br label %str.eq.merge516

str.eq.else515:                                   ; preds = %a.after496
  br label %str.eq.merge516

str.eq.merge516:                                  ; preds = %str.eq.else515, %str.eq.then514
  %str.eq.result522 = phi i1 [ %eq.cmp.zero521, %str.eq.then514 ], [ false, %str.eq.else515 ]
  %str.neq523 = xor i1 %str.eq.result522, true
  br i1 %str.neq523, label %choice.then524, label %choice.exit525

choice.then524:                                   ; preds = %str.eq.merge516
  %var.load526 = load ptr, ptr %var.a, align 8
  %fld.gep527 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load526, i32 0, i32 0
  %fld.load528 = load ptr, ptr %fld.gep527, align 8
  %a.load529 = load ptr, ptr %var.blk_locals, align 8
  %a.null530 = icmp eq ptr %a.load529, null
  br i1 %a.null530, label %a.create531, label %a.after532

choice.exit525:                                   ; preds = %a.store543, %str.eq.merge516
  br label %choice.exit467

a.create531:                                      ; preds = %choice.then524
  %arena.cur533 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create534 = call ptr @dva_arena_alloc(ptr %arena.cur533, i64 24)
  %arena.cur535 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf536 = call ptr @dva_arena_alloc(ptr %arena.cur535, i64 128)
  %a.len.gep537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create534, i32 0, i32 0
  store i64 0, ptr %a.len.gep537, align 8
  %a.data.gep538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create534, i32 0, i32 1
  store ptr %a.buf536, ptr %a.data.gep538, align 8
  %a.cap.gep539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create534, i32 0, i32 2
  store i64 16, ptr %a.cap.gep539, align 8
  store ptr %a.create534, ptr %var.blk_locals, align 8
  br label %a.after532

a.after532:                                       ; preds = %a.create531, %choice.then524
  %a.load2540 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check541

a.check541:                                       ; preds = %a.after532
  %a.len544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2540, i32 0, i32 0
  %a.len545 = load i64, ptr %a.len544, align 8
  %a.cap546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2540, i32 0, i32 2
  %a.cap547 = load i64, ptr %a.cap546, align 8
  %a.needs.grow548 = icmp eq i64 %a.len545, %a.cap547
  br i1 %a.needs.grow548, label %a.grow542, label %a.store543

a.grow542:                                        ; preds = %a.check541
  call void @dva_array_grow(ptr %a.load2540)
  br label %a.store543

a.store543:                                       ; preds = %a.grow542, %a.check541
  %a.cur.data549 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2540, i32 0, i32 1
  %a.cur.data550 = load ptr, ptr %a.cur.data549, align 8
  %a.cur.len551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2540, i32 0, i32 0
  %a.cur.len552 = load i64, ptr %a.cur.len551, align 8
  %a.elem.gep553 = getelementptr i64, ptr %a.cur.data550, i64 %a.cur.len552
  %slot.p2i554 = ptrtoint ptr %fld.load528 to i64
  store i64 %slot.p2i554, ptr %a.elem.gep553, align 8
  %a.next.len555 = add i64 %a.cur.len552, 1
  %b.len.gep556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2540, i32 0, i32 0
  store i64 %a.next.len555, ptr %b.len.gep556, align 8
  br label %choice.exit525

a.create561:                                      ; preds = %choice.next469
  %arena.cur563 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create564 = call ptr @dva_arena_alloc(ptr %arena.cur563, i64 24)
  %arena.cur565 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 128)
  %a.len.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create564, i32 0, i32 0
  store i64 0, ptr %a.len.gep567, align 8
  %a.data.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create564, i32 0, i32 1
  store ptr %a.buf566, ptr %a.data.gep568, align 8
  %a.cap.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create564, i32 0, i32 2
  store i64 16, ptr %a.cap.gep569, align 8
  store ptr %a.create564, ptr %var.blk_locals, align 8
  br label %a.after562

a.after562:                                       ; preds = %a.create561, %choice.next469
  %a.load2570 = load ptr, ptr %var.blk_locals, align 8
  %var.load571 = load ptr, ptr %var.refs, align 8
  %a.load572 = load ptr, ptr %var.refs, align 8
  %a.null573 = icmp eq ptr %a.load572, null
  br i1 %a.null573, label %a.create574, label %a.after575

a.create574:                                      ; preds = %a.after562
  %arena.cur576 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create577 = call ptr @dva_arena_alloc(ptr %arena.cur576, i64 24)
  %arena.cur578 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf579 = call ptr @dva_arena_alloc(ptr %arena.cur578, i64 128)
  %a.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 0
  store i64 0, ptr %a.len.gep580, align 8
  %a.data.gep581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 1
  store ptr %a.buf579, ptr %a.data.gep581, align 8
  %a.cap.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 2
  store i64 16, ptr %a.cap.gep582, align 8
  store ptr %a.create577, ptr %var.refs, align 8
  br label %a.after575

a.after575:                                       ; preds = %a.create574, %a.after562
  %a.load2583 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load557, ptr %a.load2570, ptr %a.load2583)
  br label %choice.exit467

choice.case586:                                   ; preds = %choice.next420
  %pay.gep591 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr592 = load ptr, ptr %pay.gep591, align 8
  store ptr %payload.ptr592, ptr %var._593, align 8
  store ptr %payload.ptr592, ptr %var.ch, align 8
  %var.load594 = load ptr, ptr %var.ch, align 8
  %fld.gep595 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load594, i32 0, i32 0
  %fld.load596 = load ptr, ptr %fld.gep595, align 8
  %var.load597 = load ptr, ptr %var.locals, align 8
  %a.load598 = load ptr, ptr %var.locals, align 8
  %a.null599 = icmp eq ptr %a.load598, null
  br i1 %a.null599, label %a.create600, label %a.after601

choice.next587:                                   ; preds = %choice.next420
  %tag.gep920 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id921 = load i64, ptr %tag.gep920, align 8
  %tag.match922 = icmp eq i64 %tag.id921, 15
  br i1 %tag.match922, label %choice.case918, label %choice.next919

a.create600:                                      ; preds = %choice.case586
  %arena.cur602 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 24)
  %arena.cur604 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf605 = call ptr @dva_arena_alloc(ptr %arena.cur604, i64 128)
  %a.len.gep606 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 0
  store i64 0, ptr %a.len.gep606, align 8
  %a.data.gep607 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 1
  store ptr %a.buf605, ptr %a.data.gep607, align 8
  %a.cap.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 2
  store i64 16, ptr %a.cap.gep608, align 8
  store ptr %a.create603, ptr %var.locals, align 8
  br label %a.after601

a.after601:                                       ; preds = %a.create600, %choice.case586
  %a.load2609 = load ptr, ptr %var.locals, align 8
  %var.load610 = load ptr, ptr %var.refs, align 8
  %a.load611 = load ptr, ptr %var.refs, align 8
  %a.null612 = icmp eq ptr %a.load611, null
  br i1 %a.null612, label %a.create613, label %a.after614

a.create613:                                      ; preds = %a.after601
  %arena.cur615 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create616 = call ptr @dva_arena_alloc(ptr %arena.cur615, i64 24)
  %arena.cur617 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 128)
  %a.len.gep619 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 0
  store i64 0, ptr %a.len.gep619, align 8
  %a.data.gep620 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 1
  store ptr %a.buf618, ptr %a.data.gep620, align 8
  %a.cap.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create616, i32 0, i32 2
  store i64 16, ptr %a.cap.gep621, align 8
  store ptr %a.create616, ptr %var.refs, align 8
  br label %a.after614

a.after614:                                       ; preds = %a.create613, %a.after601
  %a.load2622 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load596, ptr %a.load2609, ptr %a.load2622)
  %var.load623 = load ptr, ptr %var.ch, align 8
  %fld.gep624 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load623, i32 0, i32 2
  %fld.load625 = load ptr, ptr %fld.gep624, align 8
  %arr.cycle.len626 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load625, i32 0, i32 0
  %arr.cycle.len627 = load i64, ptr %arr.cycle.len626, align 8
  %arr.cycle.data628 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load625, i32 0, i32 1
  %arr.cycle.data629 = load ptr, ptr %arr.cycle.data628, align 8
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %a.after614
  %counter.load630 = load i64, ptr %loop.idx.39, align 8
  %loop.cond631 = icmp slt i64 %counter.load630, %arr.cycle.len627
  br i1 %loop.cond631, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i632 = sub i64 %counter.load630, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep633 = getelementptr i64, ptr %arr.cycle.data629, i64 %counter.load630
  %arr.elem.raw634 = load i64, ptr %arr.elem.gep633, align 8
  %slot.i2p635 = inttoptr i64 %arr.elem.raw634 to ptr
  store ptr %slot.i2p635, ptr %var._636, align 8
  store ptr %slot.i2p635, ptr %var.br, align 8
  store i64 %loop.rel.i632, ptr %var._i637, align 8
  %var.load638 = load ptr, ptr %var.locals, align 8
  %a.load639 = load ptr, ptr %var.locals, align 8
  %a.null640 = icmp eq ptr %a.load639, null
  br i1 %a.null640, label %a.create641, label %a.after642

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %loop.exit.42
  %step.val916 = load i64, ptr %loop.step.39, align 8
  %loop.next917 = add i64 %counter.load630, %step.val916
  store i64 %loop.next917, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  br label %choice.exit

a.create641:                                      ; preds = %loop.body.39
  %arena.cur643 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create644 = call ptr @dva_arena_alloc(ptr %arena.cur643, i64 24)
  %arena.cur645 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 128)
  %a.len.gep647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 0
  store i64 0, ptr %a.len.gep647, align 8
  %a.data.gep648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 1
  store ptr %a.buf646, ptr %a.data.gep648, align 8
  %a.cap.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 2
  store i64 16, ptr %a.cap.gep649, align 8
  store ptr %a.create644, ptr %var.locals, align 8
  br label %a.after642

a.after642:                                       ; preds = %a.create641, %loop.body.39
  %a.load2650 = load ptr, ptr %var.locals, align 8
  %call.res651 = call ptr @"dep_graph::copy_names"(ptr %a.load2650)
  store ptr %call.res651, ptr %var.br_locals, align 8
  %var.load652 = load ptr, ptr %var.br, align 8
  %fld.gep653 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load652, i32 0, i32 4
  %fld.load654 = load ptr, ptr %fld.gep653, align 8
  %arr.cycle.len655 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load654, i32 0, i32 0
  %arr.cycle.len656 = load i64, ptr %arr.cycle.len655, align 8
  %arr.cycle.data657 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load654, i32 0, i32 1
  %arr.cycle.data658 = load ptr, ptr %arr.cycle.data657, align 8
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after642
  %counter.load659 = load i64, ptr %loop.idx.40, align 8
  %loop.cond660 = icmp slt i64 %counter.load659, %arr.cycle.len656
  br i1 %loop.cond660, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i661 = sub i64 %counter.load659, 0
  store i64 1, ptr %loop.step.40, align 8
  %arr.elem.gep662 = getelementptr i64, ptr %arr.cycle.data658, i64 %counter.load659
  %arr.elem.raw663 = load i64, ptr %arr.elem.gep662, align 8
  %slot.i2p664 = inttoptr i64 %arr.elem.raw663 to ptr
  store ptr %slot.i2p664, ptr %var._665, align 8
  store ptr %slot.i2p664, ptr %var.bv, align 8
  store i64 %loop.rel.i661, ptr %var._i666, align 8
  %var.load667 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len668 = getelementptr inbounds { i64, ptr }, ptr %var.load667, i32 0, i32 0
  %eq.lhs.len669 = load i64, ptr %eq.lhs.len668, align 8
  %eq.lhs.len670 = and i64 %eq.lhs.len669, 281474976710655
  %eq.rhs.len671 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len672 = and i64 %eq.rhs.len671, 281474976710655
  %eq.len673 = icmp eq i64 %eq.lhs.len670, %eq.rhs.len672
  br i1 %eq.len673, label %str.eq.then674, label %str.eq.else675

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit685
  %step.val715 = load i64, ptr %loop.step.40, align 8
  %loop.next716 = add i64 %counter.load659, %step.val715
  store i64 %loop.next716, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  %var.load717 = load ptr, ptr %var.br, align 8
  %fld.gep718 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load717, i32 0, i32 6
  %fld.load719 = load ptr, ptr %fld.gep718, align 8
  %var.load720 = load ptr, ptr %var.br_locals, align 8
  %a.load721 = load ptr, ptr %var.br_locals, align 8
  %a.null722 = icmp eq ptr %a.load721, null
  br i1 %a.null722, label %a.create723, label %a.after724

str.eq.then674:                                   ; preds = %loop.body.40
  %eq.lhs.data677 = getelementptr inbounds { i64, ptr }, ptr %var.load667, i32 0, i32 1
  %eq.lhs.data678 = load ptr, ptr %eq.lhs.data677, align 8
  %eq.rhs.data679 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp680 = call i32 @memcmp(ptr %eq.lhs.data678, ptr %eq.rhs.data679, i64 %eq.lhs.len670)
  %eq.cmp.zero681 = icmp eq i32 %eq.memcmp680, 0
  br label %str.eq.merge676

str.eq.else675:                                   ; preds = %loop.body.40
  br label %str.eq.merge676

str.eq.merge676:                                  ; preds = %str.eq.else675, %str.eq.then674
  %str.eq.result682 = phi i1 [ %eq.cmp.zero681, %str.eq.then674 ], [ false, %str.eq.else675 ]
  %str.neq683 = xor i1 %str.eq.result682, true
  br i1 %str.neq683, label %choice.then684, label %choice.exit685

choice.then684:                                   ; preds = %str.eq.merge676
  %var.load686 = load ptr, ptr %var.bv, align 8
  %a.load687 = load ptr, ptr %var.br_locals, align 8
  %a.null688 = icmp eq ptr %a.load687, null
  br i1 %a.null688, label %a.create689, label %a.after690

choice.exit685:                                   ; preds = %a.store701, %str.eq.merge676
  br label %loop.latch.40

a.create689:                                      ; preds = %choice.then684
  %arena.cur691 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create692 = call ptr @dva_arena_alloc(ptr %arena.cur691, i64 24)
  %arena.cur693 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf694 = call ptr @dva_arena_alloc(ptr %arena.cur693, i64 128)
  %a.len.gep695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 0
  store i64 0, ptr %a.len.gep695, align 8
  %a.data.gep696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 1
  store ptr %a.buf694, ptr %a.data.gep696, align 8
  %a.cap.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 2
  store i64 16, ptr %a.cap.gep697, align 8
  store ptr %a.create692, ptr %var.br_locals, align 8
  br label %a.after690

a.after690:                                       ; preds = %a.create689, %choice.then684
  %a.load2698 = load ptr, ptr %var.br_locals, align 8
  br label %a.check699

a.check699:                                       ; preds = %a.after690
  %a.len702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2698, i32 0, i32 0
  %a.len703 = load i64, ptr %a.len702, align 8
  %a.cap704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2698, i32 0, i32 2
  %a.cap705 = load i64, ptr %a.cap704, align 8
  %a.needs.grow706 = icmp eq i64 %a.len703, %a.cap705
  br i1 %a.needs.grow706, label %a.grow700, label %a.store701

a.grow700:                                        ; preds = %a.check699
  call void @dva_array_grow(ptr %a.load2698)
  br label %a.store701

a.store701:                                       ; preds = %a.grow700, %a.check699
  %a.cur.data707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2698, i32 0, i32 1
  %a.cur.data708 = load ptr, ptr %a.cur.data707, align 8
  %a.cur.len709 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2698, i32 0, i32 0
  %a.cur.len710 = load i64, ptr %a.cur.len709, align 8
  %a.elem.gep711 = getelementptr i64, ptr %a.cur.data708, i64 %a.cur.len710
  %slot.p2i712 = ptrtoint ptr %var.load686 to i64
  store i64 %slot.p2i712, ptr %a.elem.gep711, align 8
  %a.next.len713 = add i64 %a.cur.len710, 1
  %b.len.gep714 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2698, i32 0, i32 0
  store i64 %a.next.len713, ptr %b.len.gep714, align 8
  br label %choice.exit685

a.create723:                                      ; preds = %loop.exit.40
  %arena.cur725 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create726 = call ptr @dva_arena_alloc(ptr %arena.cur725, i64 24)
  %arena.cur727 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf728 = call ptr @dva_arena_alloc(ptr %arena.cur727, i64 128)
  %a.len.gep729 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create726, i32 0, i32 0
  store i64 0, ptr %a.len.gep729, align 8
  %a.data.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create726, i32 0, i32 1
  store ptr %a.buf728, ptr %a.data.gep730, align 8
  %a.cap.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create726, i32 0, i32 2
  store i64 16, ptr %a.cap.gep731, align 8
  store ptr %a.create726, ptr %var.br_locals, align 8
  br label %a.after724

a.after724:                                       ; preds = %a.create723, %loop.exit.40
  %a.load2732 = load ptr, ptr %var.br_locals, align 8
  %var.load733 = load ptr, ptr %var.refs, align 8
  %a.load734 = load ptr, ptr %var.refs, align 8
  %a.null735 = icmp eq ptr %a.load734, null
  br i1 %a.null735, label %a.create736, label %a.after737

a.create736:                                      ; preds = %a.after724
  %arena.cur738 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create739 = call ptr @dva_arena_alloc(ptr %arena.cur738, i64 24)
  %arena.cur740 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf741 = call ptr @dva_arena_alloc(ptr %arena.cur740, i64 128)
  %a.len.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 0
  store i64 0, ptr %a.len.gep742, align 8
  %a.data.gep743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 1
  store ptr %a.buf741, ptr %a.data.gep743, align 8
  %a.cap.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 2
  store i64 16, ptr %a.cap.gep744, align 8
  store ptr %a.create739, ptr %var.refs, align 8
  br label %a.after737

a.after737:                                       ; preds = %a.create736, %a.after724
  %a.load2745 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load719, ptr %a.load2732, ptr %a.load2745)
  %var.load746 = load ptr, ptr %var.br, align 8
  %fld.gep747 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load746, i32 0, i32 2
  %fld.load748 = load ptr, ptr %fld.gep747, align 8
  %var.load749 = load ptr, ptr %var.br_locals, align 8
  %a.load750 = load ptr, ptr %var.br_locals, align 8
  %a.null751 = icmp eq ptr %a.load750, null
  br i1 %a.null751, label %a.create752, label %a.after753

a.create752:                                      ; preds = %a.after737
  %arena.cur754 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create755 = call ptr @dva_arena_alloc(ptr %arena.cur754, i64 24)
  %arena.cur756 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf757 = call ptr @dva_arena_alloc(ptr %arena.cur756, i64 128)
  %a.len.gep758 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 0
  store i64 0, ptr %a.len.gep758, align 8
  %a.data.gep759 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 1
  store ptr %a.buf757, ptr %a.data.gep759, align 8
  %a.cap.gep760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 2
  store i64 16, ptr %a.cap.gep760, align 8
  store ptr %a.create755, ptr %var.br_locals, align 8
  br label %a.after753

a.after753:                                       ; preds = %a.create752, %a.after737
  %a.load2761 = load ptr, ptr %var.br_locals, align 8
  %var.load762 = load ptr, ptr %var.refs, align 8
  %a.load763 = load ptr, ptr %var.refs, align 8
  %a.null764 = icmp eq ptr %a.load763, null
  br i1 %a.null764, label %a.create765, label %a.after766

a.create765:                                      ; preds = %a.after753
  %arena.cur767 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 24)
  %arena.cur769 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf770 = call ptr @dva_arena_alloc(ptr %arena.cur769, i64 128)
  %a.len.gep771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create768, i32 0, i32 0
  store i64 0, ptr %a.len.gep771, align 8
  %a.data.gep772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create768, i32 0, i32 1
  store ptr %a.buf770, ptr %a.data.gep772, align 8
  %a.cap.gep773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create768, i32 0, i32 2
  store i64 16, ptr %a.cap.gep773, align 8
  store ptr %a.create768, ptr %var.refs, align 8
  br label %a.after766

a.after766:                                       ; preds = %a.create765, %a.after753
  %a.load2774 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load748, ptr %a.load2761, ptr %a.load2774)
  %var.load775 = load ptr, ptr %var.br, align 8
  %fld.gep776 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load775, i32 0, i32 1
  %fld.load777 = load ptr, ptr %fld.gep776, align 8
  %arr.cycle.len778 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load777, i32 0, i32 0
  %arr.cycle.len779 = load i64, ptr %arr.cycle.len778, align 8
  %arr.cycle.data780 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load777, i32 0, i32 1
  %arr.cycle.data781 = load ptr, ptr %arr.cycle.data780, align 8
  store i64 0, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.header.41:                                   ; preds = %loop.latch.41, %a.after766
  %counter.load782 = load i64, ptr %loop.idx.41, align 8
  %loop.cond783 = icmp slt i64 %counter.load782, %arr.cycle.len779
  br i1 %loop.cond783, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i784 = sub i64 %counter.load782, 0
  store i64 1, ptr %loop.step.41, align 8
  %arr.elem.gep785 = getelementptr i64, ptr %arr.cycle.data781, i64 %counter.load782
  %arr.elem.raw786 = load i64, ptr %arr.elem.gep785, align 8
  %slot.i2p787 = inttoptr i64 %arr.elem.raw786 to ptr
  store ptr %slot.i2p787, ptr %var._788, align 8
  store ptr %slot.i2p787, ptr %var.cv, align 8
  store i64 %loop.rel.i784, ptr %var._i789, align 8
  %var.load790 = load ptr, ptr %var.cv, align 8
  %var.load791 = load ptr, ptr %var.br_locals, align 8
  %a.load792 = load ptr, ptr %var.br_locals, align 8
  %a.null793 = icmp eq ptr %a.load792, null
  br i1 %a.null793, label %a.create794, label %a.after795

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %a.after808
  %step.val817 = load i64, ptr %loop.step.41, align 8
  %loop.next818 = add i64 %counter.load782, %step.val817
  store i64 %loop.next818, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  %var.load819 = load ptr, ptr %var.br, align 8
  %fld.gep820 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load819, i32 0, i32 3
  %fld.load821 = load ptr, ptr %fld.gep820, align 8
  %arr.cycle.len822 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load821, i32 0, i32 0
  %arr.cycle.len823 = load i64, ptr %arr.cycle.len822, align 8
  %arr.cycle.data824 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load821, i32 0, i32 1
  %arr.cycle.data825 = load ptr, ptr %arr.cycle.data824, align 8
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

a.create794:                                      ; preds = %loop.body.41
  %arena.cur796 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 24)
  %arena.cur798 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 128)
  %a.len.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 0
  store i64 0, ptr %a.len.gep800, align 8
  %a.data.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 1
  store ptr %a.buf799, ptr %a.data.gep801, align 8
  %a.cap.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 2
  store i64 16, ptr %a.cap.gep802, align 8
  store ptr %a.create797, ptr %var.br_locals, align 8
  br label %a.after795

a.after795:                                       ; preds = %a.create794, %loop.body.41
  %a.load2803 = load ptr, ptr %var.br_locals, align 8
  %var.load804 = load ptr, ptr %var.refs, align 8
  %a.load805 = load ptr, ptr %var.refs, align 8
  %a.null806 = icmp eq ptr %a.load805, null
  br i1 %a.null806, label %a.create807, label %a.after808

a.create807:                                      ; preds = %a.after795
  %arena.cur809 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 24)
  %arena.cur811 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf812 = call ptr @dva_arena_alloc(ptr %arena.cur811, i64 128)
  %a.len.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create810, i32 0, i32 0
  store i64 0, ptr %a.len.gep813, align 8
  %a.data.gep814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create810, i32 0, i32 1
  store ptr %a.buf812, ptr %a.data.gep814, align 8
  %a.cap.gep815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create810, i32 0, i32 2
  store i64 16, ptr %a.cap.gep815, align 8
  store ptr %a.create810, ptr %var.refs, align 8
  br label %a.after808

a.after808:                                       ; preds = %a.create807, %a.after795
  %a.load2816 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load790, ptr %a.load2803, ptr %a.load2816)
  br label %loop.latch.41

loop.header.42:                                   ; preds = %loop.latch.42, %loop.exit.41
  %counter.load826 = load i64, ptr %loop.idx.42, align 8
  %loop.cond827 = icmp slt i64 %counter.load826, %arr.cycle.len823
  br i1 %loop.cond827, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i828 = sub i64 %counter.load826, 0
  store i64 1, ptr %loop.step.42, align 8
  %arr.elem.gep829 = getelementptr i64, ptr %arr.cycle.data825, i64 %counter.load826
  %arr.elem.raw830 = load i64, ptr %arr.elem.gep829, align 8
  %slot.i2p831 = inttoptr i64 %arr.elem.raw830 to ptr
  store ptr %slot.i2p831, ptr %var._832, align 8
  store ptr %slot.i2p831, ptr %var.vn, align 8
  store i64 %loop.rel.i828, ptr %var._i833, align 8
  %var.load834 = load ptr, ptr %var.vn, align 8
  %eq.lhs.len835 = getelementptr inbounds { i64, ptr }, ptr %var.load834, i32 0, i32 0
  %eq.lhs.len836 = load i64, ptr %eq.lhs.len835, align 8
  %eq.lhs.len837 = and i64 %eq.lhs.len836, 281474976710655
  %eq.rhs.len838 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len839 = and i64 %eq.rhs.len838, 281474976710655
  %eq.len840 = icmp eq i64 %eq.lhs.len837, %eq.rhs.len839
  br i1 %eq.len840, label %str.eq.then841, label %str.eq.else842

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit884
  %step.val914 = load i64, ptr %loop.step.42, align 8
  %loop.next915 = add i64 %counter.load826, %step.val914
  store i64 %loop.next915, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  br label %loop.latch.39

str.eq.then841:                                   ; preds = %loop.body.42
  %eq.lhs.data844 = getelementptr inbounds { i64, ptr }, ptr %var.load834, i32 0, i32 1
  %eq.lhs.data845 = load ptr, ptr %eq.lhs.data844, align 8
  %eq.rhs.data846 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp847 = call i32 @memcmp(ptr %eq.lhs.data845, ptr %eq.rhs.data846, i64 %eq.lhs.len837)
  %eq.cmp.zero848 = icmp eq i32 %eq.memcmp847, 0
  br label %str.eq.merge843

str.eq.else842:                                   ; preds = %loop.body.42
  br label %str.eq.merge843

str.eq.merge843:                                  ; preds = %str.eq.else842, %str.eq.then841
  %str.eq.result849 = phi i1 [ %eq.cmp.zero848, %str.eq.then841 ], [ false, %str.eq.else842 ]
  %str.neq850 = xor i1 %str.eq.result849, true
  br i1 %str.neq850, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %str.eq.merge843
  %var.load851 = load ptr, ptr %var.br_locals, align 8
  %a.load852 = load ptr, ptr %var.br_locals, align 8
  %a.null853 = icmp eq ptr %a.load852, null
  br i1 %a.null853, label %a.create854, label %a.after855

and.43.else:                                      ; preds = %str.eq.merge843
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %a.after855
  %and.43.phi = phi i1 [ %nottmp866, %a.after855 ], [ %str.neq850, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

a.create854:                                      ; preds = %and.43.then
  %arena.cur856 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create857 = call ptr @dva_arena_alloc(ptr %arena.cur856, i64 24)
  %arena.cur858 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf859 = call ptr @dva_arena_alloc(ptr %arena.cur858, i64 128)
  %a.len.gep860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 0
  store i64 0, ptr %a.len.gep860, align 8
  %a.data.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 1
  store ptr %a.buf859, ptr %a.data.gep861, align 8
  %a.cap.gep862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 2
  store i64 16, ptr %a.cap.gep862, align 8
  store ptr %a.create857, ptr %var.br_locals, align 8
  br label %a.after855

a.after855:                                       ; preds = %a.create854, %and.43.then
  %a.load2863 = load ptr, ptr %var.br_locals, align 8
  %var.load864 = load ptr, ptr %var.vn, align 8
  %call.res865 = call i1 @"dep_graph::has_name"(ptr %a.load2863, ptr %var.load864)
  %nottmp866 = xor i1 %call.res865, true
  br label %and.43.exit

and.44.then:                                      ; preds = %and.43.exit
  %var.load867 = load ptr, ptr %var.refs, align 8
  %a.load868 = load ptr, ptr %var.refs, align 8
  %a.null869 = icmp eq ptr %a.load868, null
  br i1 %a.null869, label %a.create870, label %a.after871

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %a.after871
  %and.44.phi = phi i1 [ %nottmp882, %a.after871 ], [ %and.43.phi, %and.44.else ]
  br i1 %and.44.phi, label %choice.then883, label %choice.exit884

a.create870:                                      ; preds = %and.44.then
  %arena.cur872 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create873 = call ptr @dva_arena_alloc(ptr %arena.cur872, i64 24)
  %arena.cur874 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf875 = call ptr @dva_arena_alloc(ptr %arena.cur874, i64 128)
  %a.len.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 0
  store i64 0, ptr %a.len.gep876, align 8
  %a.data.gep877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 1
  store ptr %a.buf875, ptr %a.data.gep877, align 8
  %a.cap.gep878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 2
  store i64 16, ptr %a.cap.gep878, align 8
  store ptr %a.create873, ptr %var.refs, align 8
  br label %a.after871

a.after871:                                       ; preds = %a.create870, %and.44.then
  %a.load2879 = load ptr, ptr %var.refs, align 8
  %var.load880 = load ptr, ptr %var.vn, align 8
  %call.res881 = call i1 @"dep_graph::has_name"(ptr %a.load2879, ptr %var.load880)
  %nottmp882 = xor i1 %call.res881, true
  br label %and.44.exit

choice.then883:                                   ; preds = %and.44.exit
  %var.load885 = load ptr, ptr %var.vn, align 8
  %a.load886 = load ptr, ptr %var.refs, align 8
  %a.null887 = icmp eq ptr %a.load886, null
  br i1 %a.null887, label %a.create888, label %a.after889

choice.exit884:                                   ; preds = %a.store900, %and.44.exit
  br label %loop.latch.42

a.create888:                                      ; preds = %choice.then883
  %arena.cur890 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create891 = call ptr @dva_arena_alloc(ptr %arena.cur890, i64 24)
  %arena.cur892 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf893 = call ptr @dva_arena_alloc(ptr %arena.cur892, i64 128)
  %a.len.gep894 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create891, i32 0, i32 0
  store i64 0, ptr %a.len.gep894, align 8
  %a.data.gep895 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create891, i32 0, i32 1
  store ptr %a.buf893, ptr %a.data.gep895, align 8
  %a.cap.gep896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create891, i32 0, i32 2
  store i64 16, ptr %a.cap.gep896, align 8
  store ptr %a.create891, ptr %var.refs, align 8
  br label %a.after889

a.after889:                                       ; preds = %a.create888, %choice.then883
  %a.load2897 = load ptr, ptr %var.refs, align 8
  br label %a.check898

a.check898:                                       ; preds = %a.after889
  %a.len901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2897, i32 0, i32 0
  %a.len902 = load i64, ptr %a.len901, align 8
  %a.cap903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2897, i32 0, i32 2
  %a.cap904 = load i64, ptr %a.cap903, align 8
  %a.needs.grow905 = icmp eq i64 %a.len902, %a.cap904
  br i1 %a.needs.grow905, label %a.grow899, label %a.store900

a.grow899:                                        ; preds = %a.check898
  call void @dva_array_grow(ptr %a.load2897)
  br label %a.store900

a.store900:                                       ; preds = %a.grow899, %a.check898
  %a.cur.data906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2897, i32 0, i32 1
  %a.cur.data907 = load ptr, ptr %a.cur.data906, align 8
  %a.cur.len908 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2897, i32 0, i32 0
  %a.cur.len909 = load i64, ptr %a.cur.len908, align 8
  %a.elem.gep910 = getelementptr i64, ptr %a.cur.data907, i64 %a.cur.len909
  %slot.p2i911 = ptrtoint ptr %var.load885 to i64
  store i64 %slot.p2i911, ptr %a.elem.gep910, align 8
  %a.next.len912 = add i64 %a.cur.len909, 1
  %b.len.gep913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2897, i32 0, i32 0
  store i64 %a.next.len912, ptr %b.len.gep913, align 8
  br label %choice.exit884

choice.case918:                                   ; preds = %choice.next587
  %pay.gep923 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr924 = load ptr, ptr %pay.gep923, align 8
  store ptr %payload.ptr924, ptr %var._925, align 8
  store ptr %payload.ptr924, ptr %var.re, align 8
  %var.load926 = load ptr, ptr %var.re, align 8
  %fld.gep927 = getelementptr inbounds { ptr, i1 }, ptr %var.load926, i32 0, i32 0
  %fld.load928 = load ptr, ptr %fld.gep927, align 8
  %arr.cycle.len929 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load928, i32 0, i32 0
  %arr.cycle.len930 = load i64, ptr %arr.cycle.len929, align 8
  %arr.cycle.data931 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load928, i32 0, i32 1
  %arr.cycle.data932 = load ptr, ptr %arr.cycle.data931, align 8
  store i64 0, ptr %loop.idx.45, align 8
  br label %loop.header.45

choice.next919:                                   ; preds = %choice.next587
  %tag.gep974 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id975 = load i64, ptr %tag.gep974, align 8
  %tag.match976 = icmp eq i64 %tag.id975, 16
  br i1 %tag.match976, label %choice.case972, label %choice.next973

loop.header.45:                                   ; preds = %loop.latch.45, %choice.case918
  %counter.load933 = load i64, ptr %loop.idx.45, align 8
  %loop.cond934 = icmp slt i64 %counter.load933, %arr.cycle.len930
  br i1 %loop.cond934, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i935 = sub i64 %counter.load933, 0
  store i64 1, ptr %loop.step.45, align 8
  %arr.elem.gep936 = getelementptr i64, ptr %arr.cycle.data932, i64 %counter.load933
  %arr.elem.raw937 = load i64, ptr %arr.elem.gep936, align 8
  %slot.i2p938 = inttoptr i64 %arr.elem.raw937 to ptr
  store ptr %slot.i2p938, ptr %var._939, align 8
  store ptr %slot.i2p938, ptr %var.fld, align 8
  store i64 %loop.rel.i935, ptr %var._i940, align 8
  %var.load941 = load ptr, ptr %var.fld, align 8
  %fld.gep942 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load941, i32 0, i32 2
  %fld.load943 = load ptr, ptr %fld.gep942, align 8
  %var.load944 = load ptr, ptr %var.locals, align 8
  %a.load945 = load ptr, ptr %var.locals, align 8
  %a.null946 = icmp eq ptr %a.load945, null
  br i1 %a.null946, label %a.create947, label %a.after948

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.after961
  %step.val970 = load i64, ptr %loop.step.45, align 8
  %loop.next971 = add i64 %counter.load933, %step.val970
  store i64 %loop.next971, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  br label %choice.exit

a.create947:                                      ; preds = %loop.body.45
  %arena.cur949 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create950 = call ptr @dva_arena_alloc(ptr %arena.cur949, i64 24)
  %arena.cur951 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf952 = call ptr @dva_arena_alloc(ptr %arena.cur951, i64 128)
  %a.len.gep953 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create950, i32 0, i32 0
  store i64 0, ptr %a.len.gep953, align 8
  %a.data.gep954 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create950, i32 0, i32 1
  store ptr %a.buf952, ptr %a.data.gep954, align 8
  %a.cap.gep955 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create950, i32 0, i32 2
  store i64 16, ptr %a.cap.gep955, align 8
  store ptr %a.create950, ptr %var.locals, align 8
  br label %a.after948

a.after948:                                       ; preds = %a.create947, %loop.body.45
  %a.load2956 = load ptr, ptr %var.locals, align 8
  %var.load957 = load ptr, ptr %var.refs, align 8
  %a.load958 = load ptr, ptr %var.refs, align 8
  %a.null959 = icmp eq ptr %a.load958, null
  br i1 %a.null959, label %a.create960, label %a.after961

a.create960:                                      ; preds = %a.after948
  %arena.cur962 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create963 = call ptr @dva_arena_alloc(ptr %arena.cur962, i64 24)
  %arena.cur964 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf965 = call ptr @dva_arena_alloc(ptr %arena.cur964, i64 128)
  %a.len.gep966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create963, i32 0, i32 0
  store i64 0, ptr %a.len.gep966, align 8
  %a.data.gep967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create963, i32 0, i32 1
  store ptr %a.buf965, ptr %a.data.gep967, align 8
  %a.cap.gep968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create963, i32 0, i32 2
  store i64 16, ptr %a.cap.gep968, align 8
  store ptr %a.create963, ptr %var.refs, align 8
  br label %a.after961

a.after961:                                       ; preds = %a.create960, %a.after948
  %a.load2969 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load943, ptr %a.load2956, ptr %a.load2969)
  br label %loop.latch.45

choice.case972:                                   ; preds = %choice.next919
  %pay.gep977 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr978 = load ptr, ptr %pay.gep977, align 8
  store ptr %payload.ptr978, ptr %var._979, align 8
  store ptr %payload.ptr978, ptr %var.m, align 8
  %var.load980 = load ptr, ptr %var.m, align 8
  %fld.gep981 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load980, i32 0, i32 0
  %fld.load982 = load ptr, ptr %fld.gep981, align 8
  %var.load983 = load ptr, ptr %var.locals, align 8
  %a.load984 = load ptr, ptr %var.locals, align 8
  %a.null985 = icmp eq ptr %a.load984, null
  br i1 %a.null985, label %a.create986, label %a.after987

choice.next973:                                   ; preds = %choice.next919
  %tag.gep1040 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1041 = load i64, ptr %tag.gep1040, align 8
  %tag.match1042 = icmp eq i64 %tag.id1041, 17
  br i1 %tag.match1042, label %choice.case1038, label %choice.next1039

a.create986:                                      ; preds = %choice.case972
  %arena.cur988 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create989 = call ptr @dva_arena_alloc(ptr %arena.cur988, i64 24)
  %arena.cur990 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf991 = call ptr @dva_arena_alloc(ptr %arena.cur990, i64 128)
  %a.len.gep992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 0
  store i64 0, ptr %a.len.gep992, align 8
  %a.data.gep993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 1
  store ptr %a.buf991, ptr %a.data.gep993, align 8
  %a.cap.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 2
  store i64 16, ptr %a.cap.gep994, align 8
  store ptr %a.create989, ptr %var.locals, align 8
  br label %a.after987

a.after987:                                       ; preds = %a.create986, %choice.case972
  %a.load2995 = load ptr, ptr %var.locals, align 8
  %var.load996 = load ptr, ptr %var.refs, align 8
  %a.load997 = load ptr, ptr %var.refs, align 8
  %a.null998 = icmp eq ptr %a.load997, null
  br i1 %a.null998, label %a.create999, label %a.after1000

a.create999:                                      ; preds = %a.after987
  %arena.cur1001 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 24)
  %arena.cur1003 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1004 = call ptr @dva_arena_alloc(ptr %arena.cur1003, i64 128)
  %a.len.gep1005 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1002, i32 0, i32 0
  store i64 0, ptr %a.len.gep1005, align 8
  %a.data.gep1006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1002, i32 0, i32 1
  store ptr %a.buf1004, ptr %a.data.gep1006, align 8
  %a.cap.gep1007 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1002, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1007, align 8
  store ptr %a.create1002, ptr %var.refs, align 8
  br label %a.after1000

a.after1000:                                      ; preds = %a.create999, %a.after987
  %a.load21008 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load982, ptr %a.load2995, ptr %a.load21008)
  %var.load1009 = load ptr, ptr %var.m, align 8
  %fld.gep1010 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1009, i32 0, i32 3
  %fld.load1011 = load ptr, ptr %fld.gep1010, align 8
  %var.load1012 = load ptr, ptr %var.locals, align 8
  %a.load1013 = load ptr, ptr %var.locals, align 8
  %a.null1014 = icmp eq ptr %a.load1013, null
  br i1 %a.null1014, label %a.create1015, label %a.after1016

a.create1015:                                     ; preds = %a.after1000
  %arena.cur1017 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1018 = call ptr @dva_arena_alloc(ptr %arena.cur1017, i64 24)
  %arena.cur1019 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1020 = call ptr @dva_arena_alloc(ptr %arena.cur1019, i64 128)
  %a.len.gep1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 0
  store i64 0, ptr %a.len.gep1021, align 8
  %a.data.gep1022 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 1
  store ptr %a.buf1020, ptr %a.data.gep1022, align 8
  %a.cap.gep1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1023, align 8
  store ptr %a.create1018, ptr %var.locals, align 8
  br label %a.after1016

a.after1016:                                      ; preds = %a.create1015, %a.after1000
  %a.load21024 = load ptr, ptr %var.locals, align 8
  %var.load1025 = load ptr, ptr %var.refs, align 8
  %a.load1026 = load ptr, ptr %var.refs, align 8
  %a.null1027 = icmp eq ptr %a.load1026, null
  br i1 %a.null1027, label %a.create1028, label %a.after1029

a.create1028:                                     ; preds = %a.after1016
  %arena.cur1030 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1031 = call ptr @dva_arena_alloc(ptr %arena.cur1030, i64 24)
  %arena.cur1032 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1033 = call ptr @dva_arena_alloc(ptr %arena.cur1032, i64 128)
  %a.len.gep1034 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 0
  store i64 0, ptr %a.len.gep1034, align 8
  %a.data.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 1
  store ptr %a.buf1033, ptr %a.data.gep1035, align 8
  %a.cap.gep1036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1031, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1036, align 8
  store ptr %a.create1031, ptr %var.refs, align 8
  br label %a.after1029

a.after1029:                                      ; preds = %a.create1028, %a.after1016
  %a.load21037 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1011, ptr %a.load21024, ptr %a.load21037)
  br label %choice.exit

choice.case1038:                                  ; preds = %choice.next973
  %pay.gep1043 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1044 = load ptr, ptr %pay.gep1043, align 8
  store ptr %payload.ptr1044, ptr %var._1045, align 8
  store ptr %payload.ptr1044, ptr %var.ka, align 8
  %var.load1046 = load ptr, ptr %var.ka, align 8
  %fld.gep1047 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1046, i32 0, i32 0
  %fld.load1048 = load ptr, ptr %fld.gep1047, align 8
  %var.load1049 = load ptr, ptr %var.locals, align 8
  %a.load1050 = load ptr, ptr %var.locals, align 8
  %a.null1051 = icmp eq ptr %a.load1050, null
  br i1 %a.null1051, label %a.create1052, label %a.after1053

choice.next1039:                                  ; preds = %choice.next973
  %tag.gep1106 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1107 = load i64, ptr %tag.gep1106, align 8
  %tag.match1108 = icmp eq i64 %tag.id1107, 6
  br i1 %tag.match1108, label %choice.case1104, label %choice.next1105

a.create1052:                                     ; preds = %choice.case1038
  %arena.cur1054 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1055 = call ptr @dva_arena_alloc(ptr %arena.cur1054, i64 24)
  %arena.cur1056 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1057 = call ptr @dva_arena_alloc(ptr %arena.cur1056, i64 128)
  %a.len.gep1058 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1055, i32 0, i32 0
  store i64 0, ptr %a.len.gep1058, align 8
  %a.data.gep1059 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1055, i32 0, i32 1
  store ptr %a.buf1057, ptr %a.data.gep1059, align 8
  %a.cap.gep1060 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1055, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1060, align 8
  store ptr %a.create1055, ptr %var.locals, align 8
  br label %a.after1053

a.after1053:                                      ; preds = %a.create1052, %choice.case1038
  %a.load21061 = load ptr, ptr %var.locals, align 8
  %var.load1062 = load ptr, ptr %var.refs, align 8
  %a.load1063 = load ptr, ptr %var.refs, align 8
  %a.null1064 = icmp eq ptr %a.load1063, null
  br i1 %a.null1064, label %a.create1065, label %a.after1066

a.create1065:                                     ; preds = %a.after1053
  %arena.cur1067 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1068 = call ptr @dva_arena_alloc(ptr %arena.cur1067, i64 24)
  %arena.cur1069 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1070 = call ptr @dva_arena_alloc(ptr %arena.cur1069, i64 128)
  %a.len.gep1071 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1068, i32 0, i32 0
  store i64 0, ptr %a.len.gep1071, align 8
  %a.data.gep1072 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1068, i32 0, i32 1
  store ptr %a.buf1070, ptr %a.data.gep1072, align 8
  %a.cap.gep1073 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1068, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1073, align 8
  store ptr %a.create1068, ptr %var.refs, align 8
  br label %a.after1066

a.after1066:                                      ; preds = %a.create1065, %a.after1053
  %a.load21074 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1048, ptr %a.load21061, ptr %a.load21074)
  %var.load1075 = load ptr, ptr %var.ka, align 8
  %fld.gep1076 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1075, i32 0, i32 1
  %fld.load1077 = load ptr, ptr %fld.gep1076, align 8
  %var.load1078 = load ptr, ptr %var.locals, align 8
  %a.load1079 = load ptr, ptr %var.locals, align 8
  %a.null1080 = icmp eq ptr %a.load1079, null
  br i1 %a.null1080, label %a.create1081, label %a.after1082

a.create1081:                                     ; preds = %a.after1066
  %arena.cur1083 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1084 = call ptr @dva_arena_alloc(ptr %arena.cur1083, i64 24)
  %arena.cur1085 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1086 = call ptr @dva_arena_alloc(ptr %arena.cur1085, i64 128)
  %a.len.gep1087 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1084, i32 0, i32 0
  store i64 0, ptr %a.len.gep1087, align 8
  %a.data.gep1088 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1084, i32 0, i32 1
  store ptr %a.buf1086, ptr %a.data.gep1088, align 8
  %a.cap.gep1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1084, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1089, align 8
  store ptr %a.create1084, ptr %var.locals, align 8
  br label %a.after1082

a.after1082:                                      ; preds = %a.create1081, %a.after1066
  %a.load21090 = load ptr, ptr %var.locals, align 8
  %var.load1091 = load ptr, ptr %var.refs, align 8
  %a.load1092 = load ptr, ptr %var.refs, align 8
  %a.null1093 = icmp eq ptr %a.load1092, null
  br i1 %a.null1093, label %a.create1094, label %a.after1095

a.create1094:                                     ; preds = %a.after1082
  %arena.cur1096 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1097 = call ptr @dva_arena_alloc(ptr %arena.cur1096, i64 24)
  %arena.cur1098 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 128)
  %a.len.gep1100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 0
  store i64 0, ptr %a.len.gep1100, align 8
  %a.data.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 1
  store ptr %a.buf1099, ptr %a.data.gep1101, align 8
  %a.cap.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1102, align 8
  store ptr %a.create1097, ptr %var.refs, align 8
  br label %a.after1095

a.after1095:                                      ; preds = %a.create1094, %a.after1082
  %a.load21103 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1077, ptr %a.load21090, ptr %a.load21103)
  br label %choice.exit

choice.case1104:                                  ; preds = %choice.next1039
  %pay.gep1109 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1110 = load ptr, ptr %pay.gep1109, align 8
  store ptr %payload.ptr1110, ptr %var._1111, align 8
  store ptr %payload.ptr1110, ptr %var.a1112, align 8
  %var.load1113 = load ptr, ptr %var.a1112, align 8
  %fld.gep1114 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1113, i32 0, i32 5
  %fld.load1115 = load ptr, ptr %fld.gep1114, align 8
  %var.load1116 = load ptr, ptr %var.locals, align 8
  %a.load1117 = load ptr, ptr %var.locals, align 8
  %a.null1118 = icmp eq ptr %a.load1117, null
  br i1 %a.null1118, label %a.create1119, label %a.after1120

choice.next1105:                                  ; preds = %choice.next1039
  %tag.gep1173 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1174 = load i64, ptr %tag.gep1173, align 8
  %tag.match1175 = icmp eq i64 %tag.id1174, 12
  br i1 %tag.match1175, label %choice.case1171, label %choice.next1172

a.create1119:                                     ; preds = %choice.case1104
  %arena.cur1121 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1122 = call ptr @dva_arena_alloc(ptr %arena.cur1121, i64 24)
  %arena.cur1123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1124 = call ptr @dva_arena_alloc(ptr %arena.cur1123, i64 128)
  %a.len.gep1125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 0
  store i64 0, ptr %a.len.gep1125, align 8
  %a.data.gep1126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 1
  store ptr %a.buf1124, ptr %a.data.gep1126, align 8
  %a.cap.gep1127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1127, align 8
  store ptr %a.create1122, ptr %var.locals, align 8
  br label %a.after1120

a.after1120:                                      ; preds = %a.create1119, %choice.case1104
  %a.load21128 = load ptr, ptr %var.locals, align 8
  %var.load1129 = load ptr, ptr %var.refs, align 8
  %a.load1130 = load ptr, ptr %var.refs, align 8
  %a.null1131 = icmp eq ptr %a.load1130, null
  br i1 %a.null1131, label %a.create1132, label %a.after1133

a.create1132:                                     ; preds = %a.after1120
  %arena.cur1134 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1135 = call ptr @dva_arena_alloc(ptr %arena.cur1134, i64 24)
  %arena.cur1136 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1137 = call ptr @dva_arena_alloc(ptr %arena.cur1136, i64 128)
  %a.len.gep1138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1135, i32 0, i32 0
  store i64 0, ptr %a.len.gep1138, align 8
  %a.data.gep1139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1135, i32 0, i32 1
  store ptr %a.buf1137, ptr %a.data.gep1139, align 8
  %a.cap.gep1140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1135, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1140, align 8
  store ptr %a.create1135, ptr %var.refs, align 8
  br label %a.after1133

a.after1133:                                      ; preds = %a.create1132, %a.after1120
  %a.load21141 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1115, ptr %a.load21128, ptr %a.load21141)
  %var.load1142 = load ptr, ptr %var.a1112, align 8
  %fld.gep1143 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1142, i32 0, i32 6
  %fld.load1144 = load ptr, ptr %fld.gep1143, align 8
  %var.load1145 = load ptr, ptr %var.locals, align 8
  %a.load1146 = load ptr, ptr %var.locals, align 8
  %a.null1147 = icmp eq ptr %a.load1146, null
  br i1 %a.null1147, label %a.create1148, label %a.after1149

a.create1148:                                     ; preds = %a.after1133
  %arena.cur1150 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1151 = call ptr @dva_arena_alloc(ptr %arena.cur1150, i64 24)
  %arena.cur1152 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1153 = call ptr @dva_arena_alloc(ptr %arena.cur1152, i64 128)
  %a.len.gep1154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1151, i32 0, i32 0
  store i64 0, ptr %a.len.gep1154, align 8
  %a.data.gep1155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1151, i32 0, i32 1
  store ptr %a.buf1153, ptr %a.data.gep1155, align 8
  %a.cap.gep1156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1151, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1156, align 8
  store ptr %a.create1151, ptr %var.locals, align 8
  br label %a.after1149

a.after1149:                                      ; preds = %a.create1148, %a.after1133
  %a.load21157 = load ptr, ptr %var.locals, align 8
  %var.load1158 = load ptr, ptr %var.refs, align 8
  %a.load1159 = load ptr, ptr %var.refs, align 8
  %a.null1160 = icmp eq ptr %a.load1159, null
  br i1 %a.null1160, label %a.create1161, label %a.after1162

a.create1161:                                     ; preds = %a.after1149
  %arena.cur1163 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1164 = call ptr @dva_arena_alloc(ptr %arena.cur1163, i64 24)
  %arena.cur1165 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1166 = call ptr @dva_arena_alloc(ptr %arena.cur1165, i64 128)
  %a.len.gep1167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1164, i32 0, i32 0
  store i64 0, ptr %a.len.gep1167, align 8
  %a.data.gep1168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1164, i32 0, i32 1
  store ptr %a.buf1166, ptr %a.data.gep1168, align 8
  %a.cap.gep1169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1164, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1169, align 8
  store ptr %a.create1164, ptr %var.refs, align 8
  br label %a.after1162

a.after1162:                                      ; preds = %a.create1161, %a.after1149
  %a.load21170 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1144, ptr %a.load21157, ptr %a.load21170)
  br label %choice.exit

choice.case1171:                                  ; preds = %choice.next1105
  %pay.gep1176 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1177 = load ptr, ptr %pay.gep1176, align 8
  store ptr %payload.ptr1177, ptr %var._1178, align 8
  store ptr %payload.ptr1177, ptr %var.cy, align 8
  %var.load1179 = load ptr, ptr %var.cy, align 8
  %fld.gep1180 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1179, i32 0, i32 0
  %fld.load1181 = load ptr, ptr %fld.gep1180, align 8
  %var.load1182 = load ptr, ptr %var.locals, align 8
  %a.load1183 = load ptr, ptr %var.locals, align 8
  %a.null1184 = icmp eq ptr %a.load1183, null
  br i1 %a.null1184, label %a.create1185, label %a.after1186

choice.next1172:                                  ; preds = %choice.next1105
  %tag.gep1239 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1240 = load i64, ptr %tag.gep1239, align 8
  %tag.match1241 = icmp eq i64 %tag.id1240, 11
  br i1 %tag.match1241, label %choice.case1237, label %choice.next1238

a.create1185:                                     ; preds = %choice.case1171
  %arena.cur1187 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1188 = call ptr @dva_arena_alloc(ptr %arena.cur1187, i64 24)
  %arena.cur1189 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1190 = call ptr @dva_arena_alloc(ptr %arena.cur1189, i64 128)
  %a.len.gep1191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1188, i32 0, i32 0
  store i64 0, ptr %a.len.gep1191, align 8
  %a.data.gep1192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1188, i32 0, i32 1
  store ptr %a.buf1190, ptr %a.data.gep1192, align 8
  %a.cap.gep1193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1188, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1193, align 8
  store ptr %a.create1188, ptr %var.locals, align 8
  br label %a.after1186

a.after1186:                                      ; preds = %a.create1185, %choice.case1171
  %a.load21194 = load ptr, ptr %var.locals, align 8
  %var.load1195 = load ptr, ptr %var.refs, align 8
  %a.load1196 = load ptr, ptr %var.refs, align 8
  %a.null1197 = icmp eq ptr %a.load1196, null
  br i1 %a.null1197, label %a.create1198, label %a.after1199

a.create1198:                                     ; preds = %a.after1186
  %arena.cur1200 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1201 = call ptr @dva_arena_alloc(ptr %arena.cur1200, i64 24)
  %arena.cur1202 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1203 = call ptr @dva_arena_alloc(ptr %arena.cur1202, i64 128)
  %a.len.gep1204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1201, i32 0, i32 0
  store i64 0, ptr %a.len.gep1204, align 8
  %a.data.gep1205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1201, i32 0, i32 1
  store ptr %a.buf1203, ptr %a.data.gep1205, align 8
  %a.cap.gep1206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1201, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1206, align 8
  store ptr %a.create1201, ptr %var.refs, align 8
  br label %a.after1199

a.after1199:                                      ; preds = %a.create1198, %a.after1186
  %a.load21207 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1181, ptr %a.load21194, ptr %a.load21207)
  %var.load1208 = load ptr, ptr %var.cy, align 8
  %fld.gep1209 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1208, i32 0, i32 1
  %fld.load1210 = load ptr, ptr %fld.gep1209, align 8
  %var.load1211 = load ptr, ptr %var.locals, align 8
  %a.load1212 = load ptr, ptr %var.locals, align 8
  %a.null1213 = icmp eq ptr %a.load1212, null
  br i1 %a.null1213, label %a.create1214, label %a.after1215

a.create1214:                                     ; preds = %a.after1199
  %arena.cur1216 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1217 = call ptr @dva_arena_alloc(ptr %arena.cur1216, i64 24)
  %arena.cur1218 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1219 = call ptr @dva_arena_alloc(ptr %arena.cur1218, i64 128)
  %a.len.gep1220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 0
  store i64 0, ptr %a.len.gep1220, align 8
  %a.data.gep1221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 1
  store ptr %a.buf1219, ptr %a.data.gep1221, align 8
  %a.cap.gep1222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1217, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1222, align 8
  store ptr %a.create1217, ptr %var.locals, align 8
  br label %a.after1215

a.after1215:                                      ; preds = %a.create1214, %a.after1199
  %a.load21223 = load ptr, ptr %var.locals, align 8
  %var.load1224 = load ptr, ptr %var.refs, align 8
  %a.load1225 = load ptr, ptr %var.refs, align 8
  %a.null1226 = icmp eq ptr %a.load1225, null
  br i1 %a.null1226, label %a.create1227, label %a.after1228

a.create1227:                                     ; preds = %a.after1215
  %arena.cur1229 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1230 = call ptr @dva_arena_alloc(ptr %arena.cur1229, i64 24)
  %arena.cur1231 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1232 = call ptr @dva_arena_alloc(ptr %arena.cur1231, i64 128)
  %a.len.gep1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1230, i32 0, i32 0
  store i64 0, ptr %a.len.gep1233, align 8
  %a.data.gep1234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1230, i32 0, i32 1
  store ptr %a.buf1232, ptr %a.data.gep1234, align 8
  %a.cap.gep1235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1235, align 8
  store ptr %a.create1230, ptr %var.refs, align 8
  br label %a.after1228

a.after1228:                                      ; preds = %a.create1227, %a.after1215
  %a.load21236 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1210, ptr %a.load21223, ptr %a.load21236)
  br label %choice.exit

choice.case1237:                                  ; preds = %choice.next1172
  %pay.gep1242 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1243 = load ptr, ptr %pay.gep1242, align 8
  store ptr %payload.ptr1243, ptr %var._1244, align 8
  store ptr %payload.ptr1243, ptr %var.ce, align 8
  %var.load1245 = load ptr, ptr %var.ce, align 8
  %fld.gep1246 = getelementptr inbounds { ptr, ptr }, ptr %var.load1245, i32 0, i32 0
  %fld.load1247 = load ptr, ptr %fld.gep1246, align 8
  %var.load1248 = load ptr, ptr %var.locals, align 8
  %a.load1249 = load ptr, ptr %var.locals, align 8
  %a.null1250 = icmp eq ptr %a.load1249, null
  br i1 %a.null1250, label %a.create1251, label %a.after1252

choice.next1238:                                  ; preds = %choice.next1172
  %tag.gep1305 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1306 = load i64, ptr %tag.gep1305, align 8
  %tag.match1307 = icmp eq i64 %tag.id1306, 13
  br i1 %tag.match1307, label %choice.case1303, label %choice.next1304

a.create1251:                                     ; preds = %choice.case1237
  %arena.cur1253 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1254 = call ptr @dva_arena_alloc(ptr %arena.cur1253, i64 24)
  %arena.cur1255 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1256 = call ptr @dva_arena_alloc(ptr %arena.cur1255, i64 128)
  %a.len.gep1257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1254, i32 0, i32 0
  store i64 0, ptr %a.len.gep1257, align 8
  %a.data.gep1258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1254, i32 0, i32 1
  store ptr %a.buf1256, ptr %a.data.gep1258, align 8
  %a.cap.gep1259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1254, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1259, align 8
  store ptr %a.create1254, ptr %var.locals, align 8
  br label %a.after1252

a.after1252:                                      ; preds = %a.create1251, %choice.case1237
  %a.load21260 = load ptr, ptr %var.locals, align 8
  %var.load1261 = load ptr, ptr %var.refs, align 8
  %a.load1262 = load ptr, ptr %var.refs, align 8
  %a.null1263 = icmp eq ptr %a.load1262, null
  br i1 %a.null1263, label %a.create1264, label %a.after1265

a.create1264:                                     ; preds = %a.after1252
  %arena.cur1266 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1267 = call ptr @dva_arena_alloc(ptr %arena.cur1266, i64 24)
  %arena.cur1268 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1269 = call ptr @dva_arena_alloc(ptr %arena.cur1268, i64 128)
  %a.len.gep1270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1267, i32 0, i32 0
  store i64 0, ptr %a.len.gep1270, align 8
  %a.data.gep1271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1267, i32 0, i32 1
  store ptr %a.buf1269, ptr %a.data.gep1271, align 8
  %a.cap.gep1272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1272, align 8
  store ptr %a.create1267, ptr %var.refs, align 8
  br label %a.after1265

a.after1265:                                      ; preds = %a.create1264, %a.after1252
  %a.load21273 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1247, ptr %a.load21260, ptr %a.load21273)
  %var.load1274 = load ptr, ptr %var.ce, align 8
  %fld.gep1275 = getelementptr inbounds { ptr, ptr }, ptr %var.load1274, i32 0, i32 1
  %fld.load1276 = load ptr, ptr %fld.gep1275, align 8
  %var.load1277 = load ptr, ptr %var.locals, align 8
  %a.load1278 = load ptr, ptr %var.locals, align 8
  %a.null1279 = icmp eq ptr %a.load1278, null
  br i1 %a.null1279, label %a.create1280, label %a.after1281

a.create1280:                                     ; preds = %a.after1265
  %arena.cur1282 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1283 = call ptr @dva_arena_alloc(ptr %arena.cur1282, i64 24)
  %arena.cur1284 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1285 = call ptr @dva_arena_alloc(ptr %arena.cur1284, i64 128)
  %a.len.gep1286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1283, i32 0, i32 0
  store i64 0, ptr %a.len.gep1286, align 8
  %a.data.gep1287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1283, i32 0, i32 1
  store ptr %a.buf1285, ptr %a.data.gep1287, align 8
  %a.cap.gep1288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1283, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1288, align 8
  store ptr %a.create1283, ptr %var.locals, align 8
  br label %a.after1281

a.after1281:                                      ; preds = %a.create1280, %a.after1265
  %a.load21289 = load ptr, ptr %var.locals, align 8
  %var.load1290 = load ptr, ptr %var.refs, align 8
  %a.load1291 = load ptr, ptr %var.refs, align 8
  %a.null1292 = icmp eq ptr %a.load1291, null
  br i1 %a.null1292, label %a.create1293, label %a.after1294

a.create1293:                                     ; preds = %a.after1281
  %arena.cur1295 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1296 = call ptr @dva_arena_alloc(ptr %arena.cur1295, i64 24)
  %arena.cur1297 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1298 = call ptr @dva_arena_alloc(ptr %arena.cur1297, i64 128)
  %a.len.gep1299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 0
  store i64 0, ptr %a.len.gep1299, align 8
  %a.data.gep1300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 1
  store ptr %a.buf1298, ptr %a.data.gep1300, align 8
  %a.cap.gep1301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1301, align 8
  store ptr %a.create1296, ptr %var.refs, align 8
  br label %a.after1294

a.after1294:                                      ; preds = %a.create1293, %a.after1281
  %a.load21302 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1276, ptr %a.load21289, ptr %a.load21302)
  br label %choice.exit

choice.case1303:                                  ; preds = %choice.next1238
  %pay.gep1308 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1309 = load ptr, ptr %pay.gep1308, align 8
  store ptr %payload.ptr1309, ptr %var._1310, align 8
  store ptr %payload.ptr1309, ptr %var.r, align 8
  %var.load1311 = load ptr, ptr %var.r, align 8
  %fld.gep1312 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1311, i32 0, i32 0
  %fld.load1313 = load i1, ptr %fld.gep1312, align 1
  br i1 %fld.load1313, label %choice.then1314, label %choice.exit1315

choice.next1304:                                  ; preds = %choice.next1238
  %tag.gep1446 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1447 = load i64, ptr %tag.gep1446, align 8
  %tag.match1448 = icmp eq i64 %tag.id1447, 36
  br i1 %tag.match1448, label %choice.case1444, label %choice.next1445

choice.then1314:                                  ; preds = %choice.case1303
  %var.load1316 = load ptr, ptr %var.r, align 8
  %fld.gep1317 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1316, i32 0, i32 2
  %fld.load1318 = load ptr, ptr %fld.gep1317, align 8
  %var.load1319 = load ptr, ptr %var.locals, align 8
  %a.load1320 = load ptr, ptr %var.locals, align 8
  %a.null1321 = icmp eq ptr %a.load1320, null
  br i1 %a.null1321, label %a.create1322, label %a.after1323

choice.exit1315:                                  ; preds = %a.after1336, %choice.case1303
  %var.load1345 = load ptr, ptr %var.r, align 8
  %fld.gep1346 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1345, i32 0, i32 1
  %fld.load1347 = load i1, ptr %fld.gep1346, align 1
  br i1 %fld.load1347, label %choice.then1348, label %choice.exit1349

a.create1322:                                     ; preds = %choice.then1314
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
  store ptr %a.create1325, ptr %var.locals, align 8
  br label %a.after1323

a.after1323:                                      ; preds = %a.create1322, %choice.then1314
  %a.load21331 = load ptr, ptr %var.locals, align 8
  %var.load1332 = load ptr, ptr %var.refs, align 8
  %a.load1333 = load ptr, ptr %var.refs, align 8
  %a.null1334 = icmp eq ptr %a.load1333, null
  br i1 %a.null1334, label %a.create1335, label %a.after1336

a.create1335:                                     ; preds = %a.after1323
  %arena.cur1337 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1338 = call ptr @dva_arena_alloc(ptr %arena.cur1337, i64 24)
  %arena.cur1339 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1340 = call ptr @dva_arena_alloc(ptr %arena.cur1339, i64 128)
  %a.len.gep1341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1338, i32 0, i32 0
  store i64 0, ptr %a.len.gep1341, align 8
  %a.data.gep1342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1338, i32 0, i32 1
  store ptr %a.buf1340, ptr %a.data.gep1342, align 8
  %a.cap.gep1343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1338, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1343, align 8
  store ptr %a.create1338, ptr %var.refs, align 8
  br label %a.after1336

a.after1336:                                      ; preds = %a.create1335, %a.after1323
  %a.load21344 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1318, ptr %a.load21331, ptr %a.load21344)
  br label %choice.exit1315

choice.then1348:                                  ; preds = %choice.exit1315
  %var.load1350 = load ptr, ptr %var.r, align 8
  %fld.gep1351 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1350, i32 0, i32 3
  %fld.load1352 = load ptr, ptr %fld.gep1351, align 8
  %tag.gep1356 = getelementptr inbounds { i64, ptr }, ptr %fld.load1352, i32 0, i32 0
  %tag.id1357 = load i64, ptr %tag.gep1356, align 8
  %tag.match1358 = icmp eq i64 %tag.id1357, 3
  br i1 %tag.match1358, label %choice.case1354, label %choice.next1355

choice.exit1349:                                  ; preds = %choice.exit1353, %choice.exit1315
  br label %choice.exit

choice.exit1353:                                  ; preds = %a.after1435, %choice.exit1385
  br label %choice.exit1349

choice.case1354:                                  ; preds = %choice.then1348
  %pay.gep1359 = getelementptr inbounds { i64, ptr }, ptr %fld.load1352, i32 0, i32 1
  %payload.ptr1360 = load ptr, ptr %pay.gep1359, align 8
  store ptr %payload.ptr1360, ptr %var._1361, align 8
  store ptr %payload.ptr1360, ptr %var.v1362, align 8
  %var.load1363 = load ptr, ptr %var.v1362, align 8
  %eq.lhs.len1364 = getelementptr inbounds { i64, ptr }, ptr %var.load1363, i32 0, i32 0
  %eq.lhs.len1365 = load i64, ptr %eq.lhs.len1364, align 8
  %eq.lhs.len1366 = and i64 %eq.lhs.len1365, 281474976710655
  %eq.rhs.len1367 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1368 = and i64 %eq.rhs.len1367, 281474976710655
  %eq.len1369 = icmp eq i64 %eq.lhs.len1366, %eq.rhs.len1368
  br i1 %eq.len1369, label %str.eq.then1370, label %str.eq.else1371

choice.next1355:                                  ; preds = %choice.then1348
  %var.load1415 = load ptr, ptr %var.r, align 8
  %fld.gep1416 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1415, i32 0, i32 3
  %fld.load1417 = load ptr, ptr %fld.gep1416, align 8
  %var.load1418 = load ptr, ptr %var.locals, align 8
  %a.load1419 = load ptr, ptr %var.locals, align 8
  %a.null1420 = icmp eq ptr %a.load1419, null
  br i1 %a.null1420, label %a.create1421, label %a.after1422

str.eq.then1370:                                  ; preds = %choice.case1354
  %eq.lhs.data1373 = getelementptr inbounds { i64, ptr }, ptr %var.load1363, i32 0, i32 1
  %eq.lhs.data1374 = load ptr, ptr %eq.lhs.data1373, align 8
  %eq.rhs.data1375 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1376 = call i32 @memcmp(ptr %eq.lhs.data1374, ptr %eq.rhs.data1375, i64 %eq.lhs.len1366)
  %eq.cmp.zero1377 = icmp eq i32 %eq.memcmp1376, 0
  br label %str.eq.merge1372

str.eq.else1371:                                  ; preds = %choice.case1354
  br label %str.eq.merge1372

str.eq.merge1372:                                 ; preds = %str.eq.else1371, %str.eq.then1370
  %str.eq.result1378 = phi i1 [ %eq.cmp.zero1377, %str.eq.then1370 ], [ false, %str.eq.else1371 ]
  br i1 %str.eq.result1378, label %and.46.then, label %and.46.else

and.46.then:                                      ; preds = %str.eq.merge1372
  %var.load1379 = load ptr, ptr %var.r, align 8
  %fld.gep1380 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1379, i32 0, i32 0
  %fld.load1381 = load i1, ptr %fld.gep1380, align 1
  %nottmp1382 = xor i1 %fld.load1381, true
  br label %and.46.exit

and.46.else:                                      ; preds = %str.eq.merge1372
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %nottmp1382, %and.46.then ], [ %str.eq.result1378, %and.46.else ]
  %nottmp1383 = xor i1 %and.46.phi, true
  br i1 %nottmp1383, label %choice.then1384, label %choice.exit1385

choice.then1384:                                  ; preds = %and.46.exit
  %var.load1386 = load ptr, ptr %var.r, align 8
  %fld.gep1387 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1386, i32 0, i32 3
  %fld.load1388 = load ptr, ptr %fld.gep1387, align 8
  %var.load1389 = load ptr, ptr %var.locals, align 8
  %a.load1390 = load ptr, ptr %var.locals, align 8
  %a.null1391 = icmp eq ptr %a.load1390, null
  br i1 %a.null1391, label %a.create1392, label %a.after1393

choice.exit1385:                                  ; preds = %a.after1406, %and.46.exit
  br label %choice.exit1353

a.create1392:                                     ; preds = %choice.then1384
  %arena.cur1394 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1395 = call ptr @dva_arena_alloc(ptr %arena.cur1394, i64 24)
  %arena.cur1396 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1397 = call ptr @dva_arena_alloc(ptr %arena.cur1396, i64 128)
  %a.len.gep1398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1395, i32 0, i32 0
  store i64 0, ptr %a.len.gep1398, align 8
  %a.data.gep1399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1395, i32 0, i32 1
  store ptr %a.buf1397, ptr %a.data.gep1399, align 8
  %a.cap.gep1400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1395, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1400, align 8
  store ptr %a.create1395, ptr %var.locals, align 8
  br label %a.after1393

a.after1393:                                      ; preds = %a.create1392, %choice.then1384
  %a.load21401 = load ptr, ptr %var.locals, align 8
  %var.load1402 = load ptr, ptr %var.refs, align 8
  %a.load1403 = load ptr, ptr %var.refs, align 8
  %a.null1404 = icmp eq ptr %a.load1403, null
  br i1 %a.null1404, label %a.create1405, label %a.after1406

a.create1405:                                     ; preds = %a.after1393
  %arena.cur1407 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1408 = call ptr @dva_arena_alloc(ptr %arena.cur1407, i64 24)
  %arena.cur1409 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1410 = call ptr @dva_arena_alloc(ptr %arena.cur1409, i64 128)
  %a.len.gep1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 0
  store i64 0, ptr %a.len.gep1411, align 8
  %a.data.gep1412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 1
  store ptr %a.buf1410, ptr %a.data.gep1412, align 8
  %a.cap.gep1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1408, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1413, align 8
  store ptr %a.create1408, ptr %var.refs, align 8
  br label %a.after1406

a.after1406:                                      ; preds = %a.create1405, %a.after1393
  %a.load21414 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1388, ptr %a.load21401, ptr %a.load21414)
  br label %choice.exit1385

a.create1421:                                     ; preds = %choice.next1355
  %arena.cur1423 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1424 = call ptr @dva_arena_alloc(ptr %arena.cur1423, i64 24)
  %arena.cur1425 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1426 = call ptr @dva_arena_alloc(ptr %arena.cur1425, i64 128)
  %a.len.gep1427 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1424, i32 0, i32 0
  store i64 0, ptr %a.len.gep1427, align 8
  %a.data.gep1428 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1424, i32 0, i32 1
  store ptr %a.buf1426, ptr %a.data.gep1428, align 8
  %a.cap.gep1429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1424, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1429, align 8
  store ptr %a.create1424, ptr %var.locals, align 8
  br label %a.after1422

a.after1422:                                      ; preds = %a.create1421, %choice.next1355
  %a.load21430 = load ptr, ptr %var.locals, align 8
  %var.load1431 = load ptr, ptr %var.refs, align 8
  %a.load1432 = load ptr, ptr %var.refs, align 8
  %a.null1433 = icmp eq ptr %a.load1432, null
  br i1 %a.null1433, label %a.create1434, label %a.after1435

a.create1434:                                     ; preds = %a.after1422
  %arena.cur1436 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1437 = call ptr @dva_arena_alloc(ptr %arena.cur1436, i64 24)
  %arena.cur1438 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1439 = call ptr @dva_arena_alloc(ptr %arena.cur1438, i64 128)
  %a.len.gep1440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 0
  store i64 0, ptr %a.len.gep1440, align 8
  %a.data.gep1441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 1
  store ptr %a.buf1439, ptr %a.data.gep1441, align 8
  %a.cap.gep1442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1442, align 8
  store ptr %a.create1437, ptr %var.refs, align 8
  br label %a.after1435

a.after1435:                                      ; preds = %a.create1434, %a.after1422
  %a.load21443 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1417, ptr %a.load21430, ptr %a.load21443)
  br label %choice.exit1353

choice.case1444:                                  ; preds = %choice.next1304
  %pay.gep1449 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1450 = load ptr, ptr %pay.gep1449, align 8
  store ptr %payload.ptr1450, ptr %var._1451, align 8
  store ptr %payload.ptr1450, ptr %var.na, align 8
  %var.load1452 = load ptr, ptr %var.na, align 8
  %fld.gep1453 = getelementptr inbounds { ptr, ptr }, ptr %var.load1452, i32 0, i32 1
  %fld.load1454 = load ptr, ptr %fld.gep1453, align 8
  %var.load1455 = load ptr, ptr %var.locals, align 8
  %a.load1456 = load ptr, ptr %var.locals, align 8
  %a.null1457 = icmp eq ptr %a.load1456, null
  br i1 %a.null1457, label %a.create1458, label %a.after1459

choice.next1445:                                  ; preds = %choice.next1304
  %tag.gep1483 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1484 = load i64, ptr %tag.gep1483, align 8
  %tag.match1485 = icmp eq i64 %tag.id1484, 18
  br i1 %tag.match1485, label %choice.case1481, label %choice.next1482

a.create1458:                                     ; preds = %choice.case1444
  %arena.cur1460 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1461 = call ptr @dva_arena_alloc(ptr %arena.cur1460, i64 24)
  %arena.cur1462 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1463 = call ptr @dva_arena_alloc(ptr %arena.cur1462, i64 128)
  %a.len.gep1464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1461, i32 0, i32 0
  store i64 0, ptr %a.len.gep1464, align 8
  %a.data.gep1465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1461, i32 0, i32 1
  store ptr %a.buf1463, ptr %a.data.gep1465, align 8
  %a.cap.gep1466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1461, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1466, align 8
  store ptr %a.create1461, ptr %var.locals, align 8
  br label %a.after1459

a.after1459:                                      ; preds = %a.create1458, %choice.case1444
  %a.load21467 = load ptr, ptr %var.locals, align 8
  %var.load1468 = load ptr, ptr %var.refs, align 8
  %a.load1469 = load ptr, ptr %var.refs, align 8
  %a.null1470 = icmp eq ptr %a.load1469, null
  br i1 %a.null1470, label %a.create1471, label %a.after1472

a.create1471:                                     ; preds = %a.after1459
  %arena.cur1473 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1474 = call ptr @dva_arena_alloc(ptr %arena.cur1473, i64 24)
  %arena.cur1475 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1476 = call ptr @dva_arena_alloc(ptr %arena.cur1475, i64 128)
  %a.len.gep1477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 0
  store i64 0, ptr %a.len.gep1477, align 8
  %a.data.gep1478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 1
  store ptr %a.buf1476, ptr %a.data.gep1478, align 8
  %a.cap.gep1479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1479, align 8
  store ptr %a.create1474, ptr %var.refs, align 8
  br label %a.after1472

a.after1472:                                      ; preds = %a.create1471, %a.after1459
  %a.load21480 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1454, ptr %a.load21467, ptr %a.load21480)
  br label %choice.exit

choice.case1481:                                  ; preds = %choice.next1445
  %pay.gep1486 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1487 = load ptr, ptr %pay.gep1486, align 8
  store ptr %payload.ptr1487, ptr %var._1488, align 8
  store ptr %payload.ptr1487, ptr %var.v1489, align 8
  %var.load1490 = load ptr, ptr %var.v1489, align 8
  %fld.gep1491 = getelementptr inbounds { ptr, ptr }, ptr %var.load1490, i32 0, i32 1
  %fld.load1492 = load ptr, ptr %fld.gep1491, align 8
  %arr.cycle.len1493 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1492, i32 0, i32 0
  %arr.cycle.len1494 = load i64, ptr %arr.cycle.len1493, align 8
  %arr.cycle.data1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1492, i32 0, i32 1
  %arr.cycle.data1496 = load ptr, ptr %arr.cycle.data1495, align 8
  store i64 0, ptr %loop.idx.47, align 8
  br label %loop.header.47

choice.next1482:                                  ; preds = %choice.next1445
  %tag.gep1536 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1537 = load i64, ptr %tag.gep1536, align 8
  %tag.match1538 = icmp eq i64 %tag.id1537, 25
  br i1 %tag.match1538, label %choice.case1534, label %choice.next1535

loop.header.47:                                   ; preds = %loop.latch.47, %choice.case1481
  %counter.load1497 = load i64, ptr %loop.idx.47, align 8
  %loop.cond1498 = icmp slt i64 %counter.load1497, %arr.cycle.len1494
  br i1 %loop.cond1498, label %loop.body.47, label %loop.exit.nat.47

loop.body.47:                                     ; preds = %loop.header.47
  %loop.rel.i1499 = sub i64 %counter.load1497, 0
  store i64 1, ptr %loop.step.47, align 8
  %arr.elem.gep1500 = getelementptr i64, ptr %arr.cycle.data1496, i64 %counter.load1497
  %arr.elem.raw1501 = load i64, ptr %arr.elem.gep1500, align 8
  %slot.i2p1502 = inttoptr i64 %arr.elem.raw1501 to ptr
  store ptr %slot.i2p1502, ptr %var._1503, align 8
  store ptr %slot.i2p1502, ptr %var.varg, align 8
  store i64 %loop.rel.i1499, ptr %var._i1504, align 8
  %var.load1505 = load ptr, ptr %var.varg, align 8
  %var.load1506 = load ptr, ptr %var.locals, align 8
  %a.load1507 = load ptr, ptr %var.locals, align 8
  %a.null1508 = icmp eq ptr %a.load1507, null
  br i1 %a.null1508, label %a.create1509, label %a.after1510

loop.exit.nat.47:                                 ; preds = %loop.header.47
  br label %loop.exit.47

loop.latch.47:                                    ; preds = %a.after1523
  %step.val1532 = load i64, ptr %loop.step.47, align 8
  %loop.next1533 = add i64 %counter.load1497, %step.val1532
  store i64 %loop.next1533, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.exit.47:                                     ; preds = %loop.exit.nat.47
  br label %choice.exit

a.create1509:                                     ; preds = %loop.body.47
  %arena.cur1511 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1512 = call ptr @dva_arena_alloc(ptr %arena.cur1511, i64 24)
  %arena.cur1513 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1514 = call ptr @dva_arena_alloc(ptr %arena.cur1513, i64 128)
  %a.len.gep1515 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 0
  store i64 0, ptr %a.len.gep1515, align 8
  %a.data.gep1516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 1
  store ptr %a.buf1514, ptr %a.data.gep1516, align 8
  %a.cap.gep1517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1517, align 8
  store ptr %a.create1512, ptr %var.locals, align 8
  br label %a.after1510

a.after1510:                                      ; preds = %a.create1509, %loop.body.47
  %a.load21518 = load ptr, ptr %var.locals, align 8
  %var.load1519 = load ptr, ptr %var.refs, align 8
  %a.load1520 = load ptr, ptr %var.refs, align 8
  %a.null1521 = icmp eq ptr %a.load1520, null
  br i1 %a.null1521, label %a.create1522, label %a.after1523

a.create1522:                                     ; preds = %a.after1510
  %arena.cur1524 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1525 = call ptr @dva_arena_alloc(ptr %arena.cur1524, i64 24)
  %arena.cur1526 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1527 = call ptr @dva_arena_alloc(ptr %arena.cur1526, i64 128)
  %a.len.gep1528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1525, i32 0, i32 0
  store i64 0, ptr %a.len.gep1528, align 8
  %a.data.gep1529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1525, i32 0, i32 1
  store ptr %a.buf1527, ptr %a.data.gep1529, align 8
  %a.cap.gep1530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1525, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1530, align 8
  store ptr %a.create1525, ptr %var.refs, align 8
  br label %a.after1523

a.after1523:                                      ; preds = %a.create1522, %a.after1510
  %a.load21531 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1505, ptr %a.load21518, ptr %a.load21531)
  br label %loop.latch.47

choice.case1534:                                  ; preds = %choice.next1482
  %pay.gep1539 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1540 = load ptr, ptr %pay.gep1539, align 8
  store ptr %payload.ptr1540, ptr %var._1541, align 8
  store ptr %payload.ptr1540, ptr %var.cp, align 8
  %var.load1542 = load ptr, ptr %var.cp, align 8
  %var.load1543 = load ptr, ptr %var.locals, align 8
  %a.load1544 = load ptr, ptr %var.locals, align 8
  %a.null1545 = icmp eq ptr %a.load1544, null
  br i1 %a.null1545, label %a.create1546, label %a.after1547

choice.next1535:                                  ; preds = %choice.next1482
  %tag.gep1571 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1572 = load i64, ptr %tag.gep1571, align 8
  %tag.match1573 = icmp eq i64 %tag.id1572, 27
  br i1 %tag.match1573, label %choice.case1569, label %choice.next1570

a.create1546:                                     ; preds = %choice.case1534
  %arena.cur1548 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1549 = call ptr @dva_arena_alloc(ptr %arena.cur1548, i64 24)
  %arena.cur1550 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1551 = call ptr @dva_arena_alloc(ptr %arena.cur1550, i64 128)
  %a.len.gep1552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 0
  store i64 0, ptr %a.len.gep1552, align 8
  %a.data.gep1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 1
  store ptr %a.buf1551, ptr %a.data.gep1553, align 8
  %a.cap.gep1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1549, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1554, align 8
  store ptr %a.create1549, ptr %var.locals, align 8
  br label %a.after1547

a.after1547:                                      ; preds = %a.create1546, %choice.case1534
  %a.load21555 = load ptr, ptr %var.locals, align 8
  %var.load1556 = load ptr, ptr %var.refs, align 8
  %a.load1557 = load ptr, ptr %var.refs, align 8
  %a.null1558 = icmp eq ptr %a.load1557, null
  br i1 %a.null1558, label %a.create1559, label %a.after1560

a.create1559:                                     ; preds = %a.after1547
  %arena.cur1561 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1562 = call ptr @dva_arena_alloc(ptr %arena.cur1561, i64 24)
  %arena.cur1563 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1564 = call ptr @dva_arena_alloc(ptr %arena.cur1563, i64 128)
  %a.len.gep1565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1562, i32 0, i32 0
  store i64 0, ptr %a.len.gep1565, align 8
  %a.data.gep1566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1562, i32 0, i32 1
  store ptr %a.buf1564, ptr %a.data.gep1566, align 8
  %a.cap.gep1567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1562, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1567, align 8
  store ptr %a.create1562, ptr %var.refs, align 8
  br label %a.after1560

a.after1560:                                      ; preds = %a.create1559, %a.after1547
  %a.load21568 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1542, ptr %a.load21555, ptr %a.load21568)
  br label %choice.exit

choice.case1569:                                  ; preds = %choice.next1535
  %pay.gep1574 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1575 = load ptr, ptr %pay.gep1574, align 8
  store ptr %payload.ptr1575, ptr %var._1576, align 8
  store ptr %payload.ptr1575, ptr %var.bc, align 8
  %var.load1577 = load ptr, ptr %var.bc, align 8
  %var.load1578 = load ptr, ptr %var.locals, align 8
  %a.load1579 = load ptr, ptr %var.locals, align 8
  %a.null1580 = icmp eq ptr %a.load1579, null
  br i1 %a.null1580, label %a.create1581, label %a.after1582

choice.next1570:                                  ; preds = %choice.next1535
  %tag.gep1606 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1607 = load i64, ptr %tag.gep1606, align 8
  %tag.match1608 = icmp eq i64 %tag.id1607, 22
  br i1 %tag.match1608, label %choice.case1604, label %choice.next1605

a.create1581:                                     ; preds = %choice.case1569
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
  store ptr %a.create1584, ptr %var.locals, align 8
  br label %a.after1582

a.after1582:                                      ; preds = %a.create1581, %choice.case1569
  %a.load21590 = load ptr, ptr %var.locals, align 8
  %var.load1591 = load ptr, ptr %var.refs, align 8
  %a.load1592 = load ptr, ptr %var.refs, align 8
  %a.null1593 = icmp eq ptr %a.load1592, null
  br i1 %a.null1593, label %a.create1594, label %a.after1595

a.create1594:                                     ; preds = %a.after1582
  %arena.cur1596 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1597 = call ptr @dva_arena_alloc(ptr %arena.cur1596, i64 24)
  %arena.cur1598 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1599 = call ptr @dva_arena_alloc(ptr %arena.cur1598, i64 128)
  %a.len.gep1600 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1597, i32 0, i32 0
  store i64 0, ptr %a.len.gep1600, align 8
  %a.data.gep1601 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1597, i32 0, i32 1
  store ptr %a.buf1599, ptr %a.data.gep1601, align 8
  %a.cap.gep1602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1597, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1602, align 8
  store ptr %a.create1597, ptr %var.refs, align 8
  br label %a.after1595

a.after1595:                                      ; preds = %a.create1594, %a.after1582
  %a.load21603 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1577, ptr %a.load21590, ptr %a.load21603)
  br label %choice.exit

choice.case1604:                                  ; preds = %choice.next1570
  %pay.gep1609 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1610 = load ptr, ptr %pay.gep1609, align 8
  store ptr %payload.ptr1610, ptr %var._1611, align 8
  store ptr %payload.ptr1610, ptr %var.tc, align 8
  %var.load1612 = load ptr, ptr %var.tc, align 8
  %fld.gep1613 = getelementptr inbounds { ptr, ptr }, ptr %var.load1612, i32 0, i32 1
  %fld.load1614 = load ptr, ptr %fld.gep1613, align 8
  %var.load1615 = load ptr, ptr %var.locals, align 8
  %a.load1616 = load ptr, ptr %var.locals, align 8
  %a.null1617 = icmp eq ptr %a.load1616, null
  br i1 %a.null1617, label %a.create1618, label %a.after1619

choice.next1605:                                  ; preds = %choice.next1570
  %tag.gep1643 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1644 = load i64, ptr %tag.gep1643, align 8
  %tag.match1645 = icmp eq i64 %tag.id1644, 30
  br i1 %tag.match1645, label %choice.case1641, label %choice.next1642

a.create1618:                                     ; preds = %choice.case1604
  %arena.cur1620 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1621 = call ptr @dva_arena_alloc(ptr %arena.cur1620, i64 24)
  %arena.cur1622 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1623 = call ptr @dva_arena_alloc(ptr %arena.cur1622, i64 128)
  %a.len.gep1624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 0
  store i64 0, ptr %a.len.gep1624, align 8
  %a.data.gep1625 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 1
  store ptr %a.buf1623, ptr %a.data.gep1625, align 8
  %a.cap.gep1626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1626, align 8
  store ptr %a.create1621, ptr %var.locals, align 8
  br label %a.after1619

a.after1619:                                      ; preds = %a.create1618, %choice.case1604
  %a.load21627 = load ptr, ptr %var.locals, align 8
  %var.load1628 = load ptr, ptr %var.refs, align 8
  %a.load1629 = load ptr, ptr %var.refs, align 8
  %a.null1630 = icmp eq ptr %a.load1629, null
  br i1 %a.null1630, label %a.create1631, label %a.after1632

a.create1631:                                     ; preds = %a.after1619
  %arena.cur1633 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1634 = call ptr @dva_arena_alloc(ptr %arena.cur1633, i64 24)
  %arena.cur1635 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1636 = call ptr @dva_arena_alloc(ptr %arena.cur1635, i64 128)
  %a.len.gep1637 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1634, i32 0, i32 0
  store i64 0, ptr %a.len.gep1637, align 8
  %a.data.gep1638 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1634, i32 0, i32 1
  store ptr %a.buf1636, ptr %a.data.gep1638, align 8
  %a.cap.gep1639 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1634, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1639, align 8
  store ptr %a.create1634, ptr %var.refs, align 8
  br label %a.after1632

a.after1632:                                      ; preds = %a.create1631, %a.after1619
  %a.load21640 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1614, ptr %a.load21627, ptr %a.load21640)
  br label %choice.exit

choice.case1641:                                  ; preds = %choice.next1605
  %pay.gep1646 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1647 = load ptr, ptr %pay.gep1646, align 8
  store ptr %payload.ptr1647, ptr %var._1648, align 8
  store ptr %payload.ptr1647, ptr %var.ct, align 8
  %var.load1649 = load ptr, ptr %var.ct, align 8
  %var.load1650 = load ptr, ptr %var.locals, align 8
  %a.load1651 = load ptr, ptr %var.locals, align 8
  %a.null1652 = icmp eq ptr %a.load1651, null
  br i1 %a.null1652, label %a.create1653, label %a.after1654

choice.next1642:                                  ; preds = %choice.next1605
  %tag.gep1678 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1679 = load i64, ptr %tag.gep1678, align 8
  %tag.match1680 = icmp eq i64 %tag.id1679, 31
  br i1 %tag.match1680, label %choice.case1676, label %choice.next1677

a.create1653:                                     ; preds = %choice.case1641
  %arena.cur1655 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1656 = call ptr @dva_arena_alloc(ptr %arena.cur1655, i64 24)
  %arena.cur1657 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 128)
  %a.len.gep1659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 0
  store i64 0, ptr %a.len.gep1659, align 8
  %a.data.gep1660 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 1
  store ptr %a.buf1658, ptr %a.data.gep1660, align 8
  %a.cap.gep1661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1661, align 8
  store ptr %a.create1656, ptr %var.locals, align 8
  br label %a.after1654

a.after1654:                                      ; preds = %a.create1653, %choice.case1641
  %a.load21662 = load ptr, ptr %var.locals, align 8
  %var.load1663 = load ptr, ptr %var.refs, align 8
  %a.load1664 = load ptr, ptr %var.refs, align 8
  %a.null1665 = icmp eq ptr %a.load1664, null
  br i1 %a.null1665, label %a.create1666, label %a.after1667

a.create1666:                                     ; preds = %a.after1654
  %arena.cur1668 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1669 = call ptr @dva_arena_alloc(ptr %arena.cur1668, i64 24)
  %arena.cur1670 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1671 = call ptr @dva_arena_alloc(ptr %arena.cur1670, i64 128)
  %a.len.gep1672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1669, i32 0, i32 0
  store i64 0, ptr %a.len.gep1672, align 8
  %a.data.gep1673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1669, i32 0, i32 1
  store ptr %a.buf1671, ptr %a.data.gep1673, align 8
  %a.cap.gep1674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1669, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1674, align 8
  store ptr %a.create1669, ptr %var.refs, align 8
  br label %a.after1667

a.after1667:                                      ; preds = %a.create1666, %a.after1654
  %a.load21675 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1649, ptr %a.load21662, ptr %a.load21675)
  br label %choice.exit

choice.case1676:                                  ; preds = %choice.next1642
  %pay.gep1681 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1682 = load ptr, ptr %pay.gep1681, align 8
  store ptr %payload.ptr1682, ptr %var._1683, align 8
  store ptr %payload.ptr1682, ptr %var.sp, align 8
  %arena.cur1684 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1684, i64 16)
  %tag.gep1685 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1685, align 8
  %pay.gep1686 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1687 = load ptr, ptr %var.sp, align 8
  store ptr %var.load1687, ptr %pay.gep1686, align 8
  %var.load1688 = load ptr, ptr %var.locals, align 8
  %a.load1689 = load ptr, ptr %var.locals, align 8
  %a.null1690 = icmp eq ptr %a.load1689, null
  br i1 %a.null1690, label %a.create1691, label %a.after1692

choice.next1677:                                  ; preds = %choice.next1642
  %tag.gep1716 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1717 = load i64, ptr %tag.gep1716, align 8
  %tag.match1718 = icmp eq i64 %tag.id1717, 32
  br i1 %tag.match1718, label %choice.case1714, label %choice.next1715

a.create1691:                                     ; preds = %choice.case1676
  %arena.cur1693 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1694 = call ptr @dva_arena_alloc(ptr %arena.cur1693, i64 24)
  %arena.cur1695 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1696 = call ptr @dva_arena_alloc(ptr %arena.cur1695, i64 128)
  %a.len.gep1697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1694, i32 0, i32 0
  store i64 0, ptr %a.len.gep1697, align 8
  %a.data.gep1698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1694, i32 0, i32 1
  store ptr %a.buf1696, ptr %a.data.gep1698, align 8
  %a.cap.gep1699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1694, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1699, align 8
  store ptr %a.create1694, ptr %var.locals, align 8
  br label %a.after1692

a.after1692:                                      ; preds = %a.create1691, %choice.case1676
  %a.load21700 = load ptr, ptr %var.locals, align 8
  %var.load1701 = load ptr, ptr %var.refs, align 8
  %a.load1702 = load ptr, ptr %var.refs, align 8
  %a.null1703 = icmp eq ptr %a.load1702, null
  br i1 %a.null1703, label %a.create1704, label %a.after1705

a.create1704:                                     ; preds = %a.after1692
  %arena.cur1706 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1707 = call ptr @dva_arena_alloc(ptr %arena.cur1706, i64 24)
  %arena.cur1708 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1709 = call ptr @dva_arena_alloc(ptr %arena.cur1708, i64 128)
  %a.len.gep1710 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 0
  store i64 0, ptr %a.len.gep1710, align 8
  %a.data.gep1711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 1
  store ptr %a.buf1709, ptr %a.data.gep1711, align 8
  %a.cap.gep1712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1707, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1712, align 8
  store ptr %a.create1707, ptr %var.refs, align 8
  br label %a.after1705

a.after1705:                                      ; preds = %a.create1704, %a.after1692
  %a.load21713 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21700, ptr %a.load21713)
  br label %choice.exit

choice.case1714:                                  ; preds = %choice.next1677
  %pay.gep1719 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1720 = load ptr, ptr %pay.gep1719, align 8
  store ptr %payload.ptr1720, ptr %var._1721, align 8
  store ptr %payload.ptr1720, ptr %var.jn, align 8
  %var.load1722 = load ptr, ptr %var.jn, align 8
  %var.load1723 = load ptr, ptr %var.locals, align 8
  %a.load1724 = load ptr, ptr %var.locals, align 8
  %a.null1725 = icmp eq ptr %a.load1724, null
  br i1 %a.null1725, label %a.create1726, label %a.after1727

choice.next1715:                                  ; preds = %choice.next1677
  %tag.gep1751 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1752 = load i64, ptr %tag.gep1751, align 8
  %tag.match1753 = icmp eq i64 %tag.id1752, 33
  br i1 %tag.match1753, label %choice.case1749, label %choice.next1750

a.create1726:                                     ; preds = %choice.case1714
  %arena.cur1728 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1729 = call ptr @dva_arena_alloc(ptr %arena.cur1728, i64 24)
  %arena.cur1730 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1731 = call ptr @dva_arena_alloc(ptr %arena.cur1730, i64 128)
  %a.len.gep1732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1729, i32 0, i32 0
  store i64 0, ptr %a.len.gep1732, align 8
  %a.data.gep1733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1729, i32 0, i32 1
  store ptr %a.buf1731, ptr %a.data.gep1733, align 8
  %a.cap.gep1734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1729, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1734, align 8
  store ptr %a.create1729, ptr %var.locals, align 8
  br label %a.after1727

a.after1727:                                      ; preds = %a.create1726, %choice.case1714
  %a.load21735 = load ptr, ptr %var.locals, align 8
  %var.load1736 = load ptr, ptr %var.refs, align 8
  %a.load1737 = load ptr, ptr %var.refs, align 8
  %a.null1738 = icmp eq ptr %a.load1737, null
  br i1 %a.null1738, label %a.create1739, label %a.after1740

a.create1739:                                     ; preds = %a.after1727
  %arena.cur1741 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1742 = call ptr @dva_arena_alloc(ptr %arena.cur1741, i64 24)
  %arena.cur1743 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1744 = call ptr @dva_arena_alloc(ptr %arena.cur1743, i64 128)
  %a.len.gep1745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1742, i32 0, i32 0
  store i64 0, ptr %a.len.gep1745, align 8
  %a.data.gep1746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1742, i32 0, i32 1
  store ptr %a.buf1744, ptr %a.data.gep1746, align 8
  %a.cap.gep1747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1742, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1747, align 8
  store ptr %a.create1742, ptr %var.refs, align 8
  br label %a.after1740

a.after1740:                                      ; preds = %a.create1739, %a.after1727
  %a.load21748 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1722, ptr %a.load21735, ptr %a.load21748)
  br label %choice.exit

choice.case1749:                                  ; preds = %choice.next1715
  %pay.gep1754 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1755 = load ptr, ptr %pay.gep1754, align 8
  store ptr %payload.ptr1755, ptr %var._1756, align 8
  store ptr %payload.ptr1755, ptr %var.ex, align 8
  %var.load1757 = load ptr, ptr %var.ex, align 8
  %var.load1758 = load ptr, ptr %var.locals, align 8
  %a.load1759 = load ptr, ptr %var.locals, align 8
  %a.null1760 = icmp eq ptr %a.load1759, null
  br i1 %a.null1760, label %a.create1761, label %a.after1762

choice.next1750:                                  ; preds = %choice.next1715
  %tag.gep1786 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1787 = load i64, ptr %tag.gep1786, align 8
  %tag.match1788 = icmp eq i64 %tag.id1787, 38
  br i1 %tag.match1788, label %choice.case1784, label %choice.next1785

a.create1761:                                     ; preds = %choice.case1749
  %arena.cur1763 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 24)
  %arena.cur1765 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1766 = call ptr @dva_arena_alloc(ptr %arena.cur1765, i64 128)
  %a.len.gep1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 0
  store i64 0, ptr %a.len.gep1767, align 8
  %a.data.gep1768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 1
  store ptr %a.buf1766, ptr %a.data.gep1768, align 8
  %a.cap.gep1769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1769, align 8
  store ptr %a.create1764, ptr %var.locals, align 8
  br label %a.after1762

a.after1762:                                      ; preds = %a.create1761, %choice.case1749
  %a.load21770 = load ptr, ptr %var.locals, align 8
  %var.load1771 = load ptr, ptr %var.refs, align 8
  %a.load1772 = load ptr, ptr %var.refs, align 8
  %a.null1773 = icmp eq ptr %a.load1772, null
  br i1 %a.null1773, label %a.create1774, label %a.after1775

a.create1774:                                     ; preds = %a.after1762
  %arena.cur1776 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1777 = call ptr @dva_arena_alloc(ptr %arena.cur1776, i64 24)
  %arena.cur1778 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1779 = call ptr @dva_arena_alloc(ptr %arena.cur1778, i64 128)
  %a.len.gep1780 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1777, i32 0, i32 0
  store i64 0, ptr %a.len.gep1780, align 8
  %a.data.gep1781 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1777, i32 0, i32 1
  store ptr %a.buf1779, ptr %a.data.gep1781, align 8
  %a.cap.gep1782 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1777, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1782, align 8
  store ptr %a.create1777, ptr %var.refs, align 8
  br label %a.after1775

a.after1775:                                      ; preds = %a.create1774, %a.after1762
  %a.load21783 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1757, ptr %a.load21770, ptr %a.load21783)
  br label %choice.exit

choice.case1784:                                  ; preds = %choice.next1750
  %pay.gep1789 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1790 = load ptr, ptr %pay.gep1789, align 8
  store ptr %payload.ptr1790, ptr %var._1791, align 8
  store ptr %payload.ptr1790, ptr %var.ud, align 8
  %var.load1792 = load ptr, ptr %var.ud, align 8
  %fld.gep1793 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1792, i32 0, i32 1
  %fld.load1794 = load ptr, ptr %fld.gep1793, align 8
  %var.load1795 = load ptr, ptr %var.locals, align 8
  %a.load1796 = load ptr, ptr %var.locals, align 8
  %a.null1797 = icmp eq ptr %a.load1796, null
  br i1 %a.null1797, label %a.create1798, label %a.after1799

choice.next1785:                                  ; preds = %choice.next1750
  %tag.gep1823 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1824 = load i64, ptr %tag.gep1823, align 8
  %tag.match1825 = icmp eq i64 %tag.id1824, 37
  br i1 %tag.match1825, label %choice.case1821, label %choice.next1822

a.create1798:                                     ; preds = %choice.case1784
  %arena.cur1800 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1801 = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 24)
  %arena.cur1802 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1803 = call ptr @dva_arena_alloc(ptr %arena.cur1802, i64 128)
  %a.len.gep1804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 0
  store i64 0, ptr %a.len.gep1804, align 8
  %a.data.gep1805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 1
  store ptr %a.buf1803, ptr %a.data.gep1805, align 8
  %a.cap.gep1806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1806, align 8
  store ptr %a.create1801, ptr %var.locals, align 8
  br label %a.after1799

a.after1799:                                      ; preds = %a.create1798, %choice.case1784
  %a.load21807 = load ptr, ptr %var.locals, align 8
  %var.load1808 = load ptr, ptr %var.refs, align 8
  %a.load1809 = load ptr, ptr %var.refs, align 8
  %a.null1810 = icmp eq ptr %a.load1809, null
  br i1 %a.null1810, label %a.create1811, label %a.after1812

a.create1811:                                     ; preds = %a.after1799
  %arena.cur1813 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1814 = call ptr @dva_arena_alloc(ptr %arena.cur1813, i64 24)
  %arena.cur1815 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1816 = call ptr @dva_arena_alloc(ptr %arena.cur1815, i64 128)
  %a.len.gep1817 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1814, i32 0, i32 0
  store i64 0, ptr %a.len.gep1817, align 8
  %a.data.gep1818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1814, i32 0, i32 1
  store ptr %a.buf1816, ptr %a.data.gep1818, align 8
  %a.cap.gep1819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1814, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1819, align 8
  store ptr %a.create1814, ptr %var.refs, align 8
  br label %a.after1812

a.after1812:                                      ; preds = %a.create1811, %a.after1799
  %a.load21820 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1794, ptr %a.load21807, ptr %a.load21820)
  br label %choice.exit

choice.case1821:                                  ; preds = %choice.next1785
  %pay.gep1826 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1827 = load ptr, ptr %pay.gep1826, align 8
  store ptr %payload.ptr1827, ptr %var._1828, align 8
  store ptr %payload.ptr1827, ptr %var.r1829, align 8
  %var.load1830 = load ptr, ptr %var.r1829, align 8
  %fld.gep1831 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1830, i32 0, i32 0
  %fld.load1832 = load i1, ptr %fld.gep1831, align 1
  br i1 %fld.load1832, label %choice.then1833, label %choice.exit1834

choice.next1822:                                  ; preds = %choice.next1785
  %tag.gep1866 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1867 = load i64, ptr %tag.gep1866, align 8
  %tag.match1868 = icmp eq i64 %tag.id1867, 29
  br i1 %tag.match1868, label %choice.case1864, label %choice.next1865

choice.then1833:                                  ; preds = %choice.case1821
  %var.load1835 = load ptr, ptr %var.r1829, align 8
  %fld.gep1836 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1835, i32 0, i32 1
  %fld.load1837 = load ptr, ptr %fld.gep1836, align 8
  %var.load1838 = load ptr, ptr %var.locals, align 8
  %a.load1839 = load ptr, ptr %var.locals, align 8
  %a.null1840 = icmp eq ptr %a.load1839, null
  br i1 %a.null1840, label %a.create1841, label %a.after1842

choice.exit1834:                                  ; preds = %a.after1855, %choice.case1821
  br label %choice.exit

a.create1841:                                     ; preds = %choice.then1833
  %arena.cur1843 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1844 = call ptr @dva_arena_alloc(ptr %arena.cur1843, i64 24)
  %arena.cur1845 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1846 = call ptr @dva_arena_alloc(ptr %arena.cur1845, i64 128)
  %a.len.gep1847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1844, i32 0, i32 0
  store i64 0, ptr %a.len.gep1847, align 8
  %a.data.gep1848 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1844, i32 0, i32 1
  store ptr %a.buf1846, ptr %a.data.gep1848, align 8
  %a.cap.gep1849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1844, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1849, align 8
  store ptr %a.create1844, ptr %var.locals, align 8
  br label %a.after1842

a.after1842:                                      ; preds = %a.create1841, %choice.then1833
  %a.load21850 = load ptr, ptr %var.locals, align 8
  %var.load1851 = load ptr, ptr %var.refs, align 8
  %a.load1852 = load ptr, ptr %var.refs, align 8
  %a.null1853 = icmp eq ptr %a.load1852, null
  br i1 %a.null1853, label %a.create1854, label %a.after1855

a.create1854:                                     ; preds = %a.after1842
  %arena.cur1856 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1857 = call ptr @dva_arena_alloc(ptr %arena.cur1856, i64 24)
  %arena.cur1858 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1859 = call ptr @dva_arena_alloc(ptr %arena.cur1858, i64 128)
  %a.len.gep1860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1857, i32 0, i32 0
  store i64 0, ptr %a.len.gep1860, align 8
  %a.data.gep1861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1857, i32 0, i32 1
  store ptr %a.buf1859, ptr %a.data.gep1861, align 8
  %a.cap.gep1862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1857, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1862, align 8
  store ptr %a.create1857, ptr %var.refs, align 8
  br label %a.after1855

a.after1855:                                      ; preds = %a.create1854, %a.after1842
  %a.load21863 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1837, ptr %a.load21850, ptr %a.load21863)
  br label %choice.exit1834

choice.case1864:                                  ; preds = %choice.next1822
  %pay.gep1869 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1870 = load ptr, ptr %pay.gep1869, align 8
  store ptr %payload.ptr1870, ptr %var._1871, align 8
  store ptr %payload.ptr1870, ptr %var.m1872, align 8
  %var.load1873 = load ptr, ptr %var.m1872, align 8
  %a.load1874 = load ptr, ptr %var.m1872, align 8
  %a.null1875 = icmp eq ptr %a.load1874, null
  br i1 %a.null1875, label %a.create1876, label %a.after1877

choice.next1865:                                  ; preds = %choice.next1822
  %tag.gep1961 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1962 = load i64, ptr %tag.gep1961, align 8
  %tag.match1963 = icmp eq i64 %tag.id1962, 19
  br i1 %tag.match1963, label %choice.case1959, label %choice.next1960

a.create1876:                                     ; preds = %choice.case1864
  %arena.cur1878 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1879 = call ptr @dva_arena_alloc(ptr %arena.cur1878, i64 24)
  %arena.cur1880 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1881 = call ptr @dva_arena_alloc(ptr %arena.cur1880, i64 128)
  %a.len.gep1882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1879, i32 0, i32 0
  store i64 0, ptr %a.len.gep1882, align 8
  %a.data.gep1883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1879, i32 0, i32 1
  store ptr %a.buf1881, ptr %a.data.gep1883, align 8
  %a.cap.gep1884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1879, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1884, align 8
  store ptr %a.create1879, ptr %var.m1872, align 8
  br label %a.after1877

a.after1877:                                      ; preds = %a.create1876, %choice.case1864
  %a.load21885 = load ptr, ptr %var.m1872, align 8
  %arr.cycle.len1886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21885, i32 0, i32 0
  %arr.cycle.len1887 = load i64, ptr %arr.cycle.len1886, align 8
  %arr.cycle.data1888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21885, i32 0, i32 1
  %arr.cycle.data1889 = load ptr, ptr %arr.cycle.data1888, align 8
  store i64 0, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %a.after1877
  %counter.load1890 = load i64, ptr %loop.idx.48, align 8
  %loop.cond1891 = icmp slt i64 %counter.load1890, %arr.cycle.len1887
  br i1 %loop.cond1891, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i1892 = sub i64 %counter.load1890, 0
  store i64 1, ptr %loop.step.48, align 8
  %arr.elem.gep1893 = getelementptr i64, ptr %arr.cycle.data1889, i64 %counter.load1890
  %arr.elem.raw1894 = load i64, ptr %arr.elem.gep1893, align 8
  %slot.i2p1895 = inttoptr i64 %arr.elem.raw1894 to ptr
  store ptr %slot.i2p1895, ptr %var._1896, align 8
  store ptr %slot.i2p1895, ptr %var.p1897, align 8
  store i64 %loop.rel.i1892, ptr %var._i1898, align 8
  %var.load1899 = load ptr, ptr %var.p1897, align 8
  %fld.gep1900 = getelementptr inbounds { ptr, ptr }, ptr %var.load1899, i32 0, i32 0
  %fld.load1901 = load ptr, ptr %fld.gep1900, align 8
  %var.load1902 = load ptr, ptr %var.locals, align 8
  %a.load1903 = load ptr, ptr %var.locals, align 8
  %a.null1904 = icmp eq ptr %a.load1903, null
  br i1 %a.null1904, label %a.create1905, label %a.after1906

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %a.after1948
  %step.val1957 = load i64, ptr %loop.step.48, align 8
  %loop.next1958 = add i64 %counter.load1890, %step.val1957
  store i64 %loop.next1958, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  br label %choice.exit

a.create1905:                                     ; preds = %loop.body.48
  %arena.cur1907 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1908 = call ptr @dva_arena_alloc(ptr %arena.cur1907, i64 24)
  %arena.cur1909 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1910 = call ptr @dva_arena_alloc(ptr %arena.cur1909, i64 128)
  %a.len.gep1911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1908, i32 0, i32 0
  store i64 0, ptr %a.len.gep1911, align 8
  %a.data.gep1912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1908, i32 0, i32 1
  store ptr %a.buf1910, ptr %a.data.gep1912, align 8
  %a.cap.gep1913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1908, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1913, align 8
  store ptr %a.create1908, ptr %var.locals, align 8
  br label %a.after1906

a.after1906:                                      ; preds = %a.create1905, %loop.body.48
  %a.load21914 = load ptr, ptr %var.locals, align 8
  %var.load1915 = load ptr, ptr %var.refs, align 8
  %a.load1916 = load ptr, ptr %var.refs, align 8
  %a.null1917 = icmp eq ptr %a.load1916, null
  br i1 %a.null1917, label %a.create1918, label %a.after1919

a.create1918:                                     ; preds = %a.after1906
  %arena.cur1920 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1921 = call ptr @dva_arena_alloc(ptr %arena.cur1920, i64 24)
  %arena.cur1922 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1923 = call ptr @dva_arena_alloc(ptr %arena.cur1922, i64 128)
  %a.len.gep1924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1921, i32 0, i32 0
  store i64 0, ptr %a.len.gep1924, align 8
  %a.data.gep1925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1921, i32 0, i32 1
  store ptr %a.buf1923, ptr %a.data.gep1925, align 8
  %a.cap.gep1926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1921, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1926, align 8
  store ptr %a.create1921, ptr %var.refs, align 8
  br label %a.after1919

a.after1919:                                      ; preds = %a.create1918, %a.after1906
  %a.load21927 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1901, ptr %a.load21914, ptr %a.load21927)
  %var.load1928 = load ptr, ptr %var.p1897, align 8
  %fld.gep1929 = getelementptr inbounds { ptr, ptr }, ptr %var.load1928, i32 0, i32 1
  %fld.load1930 = load ptr, ptr %fld.gep1929, align 8
  %var.load1931 = load ptr, ptr %var.locals, align 8
  %a.load1932 = load ptr, ptr %var.locals, align 8
  %a.null1933 = icmp eq ptr %a.load1932, null
  br i1 %a.null1933, label %a.create1934, label %a.after1935

a.create1934:                                     ; preds = %a.after1919
  %arena.cur1936 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1937 = call ptr @dva_arena_alloc(ptr %arena.cur1936, i64 24)
  %arena.cur1938 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1939 = call ptr @dva_arena_alloc(ptr %arena.cur1938, i64 128)
  %a.len.gep1940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 0
  store i64 0, ptr %a.len.gep1940, align 8
  %a.data.gep1941 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 1
  store ptr %a.buf1939, ptr %a.data.gep1941, align 8
  %a.cap.gep1942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1942, align 8
  store ptr %a.create1937, ptr %var.locals, align 8
  br label %a.after1935

a.after1935:                                      ; preds = %a.create1934, %a.after1919
  %a.load21943 = load ptr, ptr %var.locals, align 8
  %var.load1944 = load ptr, ptr %var.refs, align 8
  %a.load1945 = load ptr, ptr %var.refs, align 8
  %a.null1946 = icmp eq ptr %a.load1945, null
  br i1 %a.null1946, label %a.create1947, label %a.after1948

a.create1947:                                     ; preds = %a.after1935
  %arena.cur1949 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1950 = call ptr @dva_arena_alloc(ptr %arena.cur1949, i64 24)
  %arena.cur1951 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %loop.latch.48

choice.case1959:                                  ; preds = %choice.next1865
  %pay.gep1964 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1965 = load ptr, ptr %pay.gep1964, align 8
  store ptr %payload.ptr1965, ptr %var._1966, align 8
  store ptr %payload.ptr1965, ptr %var.rm, align 8
  %var.load1967 = load ptr, ptr %var.rm, align 8
  %fld.gep1968 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load1967, i32 0, i32 0
  %fld.load1969 = load ptr, ptr %fld.gep1968, align 8
  %var.load1970 = load ptr, ptr %var.locals, align 8
  %a.load1971 = load ptr, ptr %var.locals, align 8
  %a.null1972 = icmp eq ptr %a.load1971, null
  br i1 %a.null1972, label %a.create1973, label %a.after1974

choice.next1960:                                  ; preds = %choice.next1865
  br label %choice.exit

a.create1973:                                     ; preds = %choice.case1959
  %arena.cur1975 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1976 = call ptr @dva_arena_alloc(ptr %arena.cur1975, i64 24)
  %arena.cur1977 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1978 = call ptr @dva_arena_alloc(ptr %arena.cur1977, i64 128)
  %a.len.gep1979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 0
  store i64 0, ptr %a.len.gep1979, align 8
  %a.data.gep1980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 1
  store ptr %a.buf1978, ptr %a.data.gep1980, align 8
  %a.cap.gep1981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1981, align 8
  store ptr %a.create1976, ptr %var.locals, align 8
  br label %a.after1974

a.after1974:                                      ; preds = %a.create1973, %choice.case1959
  %a.load21982 = load ptr, ptr %var.locals, align 8
  %var.load1983 = load ptr, ptr %var.refs, align 8
  %a.load1984 = load ptr, ptr %var.refs, align 8
  %a.null1985 = icmp eq ptr %a.load1984, null
  br i1 %a.null1985, label %a.create1986, label %a.after1987

a.create1986:                                     ; preds = %a.after1974
  %arena.cur1988 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1989 = call ptr @dva_arena_alloc(ptr %arena.cur1988, i64 24)
  %arena.cur1990 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1991 = call ptr @dva_arena_alloc(ptr %arena.cur1990, i64 128)
  %a.len.gep1992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1989, i32 0, i32 0
  store i64 0, ptr %a.len.gep1992, align 8
  %a.data.gep1993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1989, i32 0, i32 1
  store ptr %a.buf1991, ptr %a.data.gep1993, align 8
  %a.cap.gep1994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1989, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1994, align 8
  store ptr %a.create1989, ptr %var.refs, align 8
  br label %a.after1987

a.after1987:                                      ; preds = %a.create1986, %a.after1974
  %a.load21995 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1969, ptr %a.load21982, ptr %a.load21995)
  br label %choice.exit
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
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i64 @"dep_graph::find_node_idx"(ptr %0, ptr %1) #3 {
entry:
  %var.idx = alloca i64, align 8
  %var._60 = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var._58 = alloca ptr, align 8
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
  %hash.str = call i64 @dva_hash_string(ptr %mk.data6, i64 %mk.len8)
  %m.capm1 = sub i64 %m.cap3, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

m.mem.loop:                                       ; preds = %m.mem.next, %entry
  %m.mem.idx = phi i64 [ %m.idx0, %entry ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe9 = phi i64 [ 0, %entry ], [ %m.mem.probe.next, %m.mem.next ]
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
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen12 = load i64, ptr %mk.nlen, align 8
  %mk.nlen13 = and i64 %mk.nlen12, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen13
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

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

mk.eq.then:                                       ; preds = %m.mem.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata14 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata15 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata14, ptr %mk.ndata15, i64 %mk.nlen13)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.mem.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load16 = load ptr, ptr %var.indices, align 8
  %var.load17 = load ptr, ptr %var.name, align 8
  %m.cap18 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load16, i32 0, i32 1
  %m.cap19 = load i64, ptr %m.cap18, align 8
  %m.keys20 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load16, i32 0, i32 2
  %m.keys21 = load ptr, ptr %m.keys20, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load16, i32 0, i32 3
  %m.vals22 = load ptr, ptr %m.vals, align 8
  %m.states23 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load16, i32 0, i32 4
  %m.states24 = load ptr, ptr %m.states23, align 8
  %mk.data25 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %mk.data26 = load ptr, ptr %mk.data25, align 8
  %mk.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %mk.len28 = load i64, ptr %mk.len27, align 8
  %mk.len29 = and i64 %mk.len28, 281474976710655
  %hash.str30 = call i64 @dva_hash_string(ptr %mk.data26, i64 %mk.len29)
  %m.capm131 = sub i64 %m.cap19, 1
  %m.idx032 = and i64 %hash.str30, %m.capm131
  br label %m.rd.loop

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit55
  %choice.res73 = phi i64 [ %var.load72, %choice.exit55 ], [ -1, %choice.else ]
  ret i64 %choice.res73

m.rd.loop:                                        ; preds = %m.rd.next, %choice.then
  %m.rd.idx = phi i64 [ %m.idx032, %choice.then ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe33 = phi i64 [ 0, %choice.then ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe33, %m.cap19
  %m.rd.state.gep = getelementptr i8, ptr %m.states24, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys21, i64 %m.rd.idx
  %mk.stored34 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen35 = getelementptr inbounds { i64, ptr }, ptr %mk.stored34, i32 0, i32 0
  %mk.slen36 = load i64, ptr %mk.slen35, align 8
  %mk.slen37 = and i64 %mk.slen36, 281474976710655
  %mk.nlen38 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %mk.nlen39 = load i64, ptr %mk.nlen38, align 8
  %mk.nlen40 = and i64 %mk.nlen39, 281474976710655
  %mk.lenseq41 = icmp eq i64 %mk.slen37, %mk.nlen40
  br i1 %mk.lenseq41, label %mk.eq.then42, label %mk.eq.else43

m.rd.next:                                        ; preds = %mk.eq.merge44, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm131
  %m.rd.probe.next = add i64 %m.rd.probe33, 1
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
  %ram.tag52 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag52, label %choice.then53, label %choice.else54

mk.eq.then42:                                     ; preds = %m.rd.found
  %mk.sdata45 = getelementptr inbounds { i64, ptr }, ptr %mk.stored34, i32 0, i32 1
  %mk.sdata46 = load ptr, ptr %mk.sdata45, align 8
  %mk.ndata47 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %mk.ndata48 = load ptr, ptr %mk.ndata47, align 8
  %mk.memcmp49 = call i32 @memcmp(ptr %mk.sdata46, ptr %mk.ndata48, i64 %mk.nlen40)
  %mk.cmpeq50 = icmp eq i32 %mk.memcmp49, 0
  br label %mk.eq.merge44

mk.eq.else43:                                     ; preds = %m.rd.found
  br label %mk.eq.merge44

mk.eq.merge44:                                    ; preds = %mk.eq.else43, %mk.eq.then42
  %mk.eq51 = phi i1 [ %mk.cmpeq50, %mk.eq.then42 ], [ false, %mk.eq.else43 ]
  br i1 %mk.eq51, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.merge44
  %m.rd.val.slot = getelementptr i64, ptr %m.vals22, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then53:                                    ; preds = %m.rd.done
  %ram.pay56 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay56, ptr %var._, align 8
  br label %choice.exit55

choice.else54:                                    ; preds = %m.rd.done
  %ram.pay57 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay57 to ptr
  store ptr %pay.ptr, ptr %var._58, align 8
  store ptr %pay.ptr, ptr %var._59, align 8
  store ptr %pay.ptr, ptr %var._60, align 8
  %err.code.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep61, align 8
  %err.msg.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep62, align 8
  %err.file.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep63, align 8
  %err.line.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep64, align 8
  %err.col.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep65, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len66 = load i64, ptr %err.msg.len, align 8
  %err.msg.len67 = and i64 %err.msg.len66, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len67 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data68 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len69 = load i64, ptr %err.file.len, align 8
  %err.file.len70 = and i64 %err.file.len69, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len70 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data71 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit55:                                    ; preds = %err.abort, %choice.then53
  %choice.res = phi i64 [ %ram.pay56, %choice.then53 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load72 = load i64, ptr %var.idx, align 8
  br label %choice.exit

err.thread:                                       ; preds = %choice.else54
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else54
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data68, i32 %err.file.len32, ptr %err.file.data71, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit55
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i1 @"dep_graph::node_has_dep"(ptr %0, ptr %1) #3 {
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

define i1 @"dep_graph::is_generic_sig"(ptr %0) #3 {
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

define ptr @"dep_graph::build_dep_graph"(ptr %0) #3 {
entry:
  %var.known = alloca i1, align 1
  %var.node_indices = alloca ptr, align 8
  %var.target_ref = alloca ptr, align 8
  %var._i833 = alloca i64, align 8
  %var.ref_name = alloca ptr, align 8
  %var._832 = alloca ptr, align 8
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
  %var.j = alloca i64, align 8
  %var._i667 = alloca i64, align 8
  %var.st2 = alloca ptr, align 8
  %var._666 = alloca ptr, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._296 = alloca ptr, align 8
  %var._i286 = alloca i64, align 8
  %var.st1 = alloca ptr, align 8
  %var._285 = alloca ptr, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var._49 = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.stk = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.stk, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  store ptr %slot.i2p284, ptr %var._285, align 8
  store ptr %slot.i2p284, ptr %var.st1, align 8
  store i64 %loop.rel.i281, ptr %var._i286, align 8
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
  store ptr %slot.i2p665, ptr %var._666, align 8
  store ptr %slot.i2p665, ptr %var.st2, align 8
  store i64 %loop.rel.i662, ptr %var._i667, align 8
  store i64 %loop.rel.i662, ptr %var.j, align 8
  %var.load668 = load ptr, ptr %var.st2, align 8
  %tag.gep672 = getelementptr inbounds { i64, ptr }, ptr %var.load668, i32 0, i32 0
  %tag.id673 = load i64, ptr %tag.gep672, align 8
  %tag.match674 = icmp eq i64 %tag.id673, 6
  br i1 %tag.match674, label %choice.case670, label %choice.next671

loop.exit.nat.62:                                 ; preds = %loop.header.62
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
  store ptr %slot.i2p831, ptr %var._832, align 8
  store ptr %slot.i2p831, ptr %var.ref_name, align 8
  store i64 %loop.rel.i828, ptr %var._i833, align 8
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

define ptr @"dep_graph::init_tarjan_state"(i64 %0) #3 {
entry:
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
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
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

define void @"dep_graph::push_stack"(ptr %0, i64 %1) #3 {
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
  %2 = call i64 @write(i32 2, ptr @expect.reason.72, i64 22)
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

define i64 @"dep_graph::pop_stack"(ptr %0) #3 {
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
  br i1 %unwrap.is_pos, label %unwrap.pos.73, label %unwrap.abort.73

unwrap.pos.73:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load29 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load29, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

unwrap.abort.73:                                  ; preds = %a.rd.done
  %1 = call i64 @write(i32 2, ptr @expect.reason.74, i64 22)
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

err.thread:                                       ; preds = %unwrap.abort.73
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.73
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data25, i32 %err.file.len32, ptr %err.file.data28, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.73
  %var.load30 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load30, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.73
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
  br i1 %unwrap.is_pos158, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done123
  %unwrap.pay.pos190 = extractvalue { i1, i64 } %ram.pay157, 1
  ret i64 %unwrap.pay.pos190

unwrap.abort.75:                                  ; preds = %a.rd.done123
  %2 = call i64 @write(i32 2, ptr @expect.reason.76, i64 20)
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

err.thread185:                                    ; preds = %unwrap.abort.75
  %err.haserr.gep187 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec183, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep187, align 8
  %err.err.gep188 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec183, i32 0, i32 7
  store ptr %err.ptr160, ptr %err.err.gep188, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal186:                                    ; preds = %unwrap.abort.75
  %err.panic.printf189 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code162, i32 %err.msg.len32174, ptr %err.msg.data176, i32 %err.file.len32180, ptr %err.file.data182, i64 %err.line168, i64 %err.col170)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1466 = alloca ptr, align 8
  %var._1465 = alloca ptr, align 8
  %var._1464 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._i1315 = alloca i64, align 8
  %var._1314 = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
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
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %var._449 = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.77, label %unwrap.abort.77

unwrap.pos.77:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.cnt, align 8
  %var.load39 = load ptr, ptr %var.idxs, align 8
  %a.load40 = load ptr, ptr %var.idxs, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

unwrap.abort.77:                                  ; preds = %a.rd.done
  %3 = call i64 @write(i32 2, ptr @expect.reason.78, i64 22)
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

err.thread:                                       ; preds = %unwrap.abort.77
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.77
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data38, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create42:                                       ; preds = %unwrap.pos.77
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

a.after43:                                        ; preds = %a.create42, %unwrap.pos.77
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
  br i1 %unwrap.is_pos411, label %unwrap.pos.79, label %unwrap.abort.79

unwrap.pos.79:                                    ; preds = %a.rd.done376
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
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

unwrap.abort.79:                                  ; preds = %a.rd.done376
  %4 = call i64 @write(i32 2, ptr @expect.reason.80, i64 22)
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

err.thread438:                                    ; preds = %unwrap.abort.79
  %err.haserr.gep440 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec436, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep440, align 8
  %err.err.gep441 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec436, i32 0, i32 7
  store ptr %err.ptr413, ptr %err.err.gep441, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal439:                                    ; preds = %unwrap.abort.79
  %err.panic.printf442 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code415, i32 %err.msg.len32427, ptr %err.msg.data429, i32 %err.file.len32433, ptr %err.file.data435, i64 %err.line421, i64 %err.col423)
  call void @exit(i32 1)
  unreachable

loop.header.81:                                   ; preds = %loop.latch.81, %unwrap.pos.79
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len447
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data448, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._449, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load450 = load ptr, ptr %var.graph, align 8
  %var.load451 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load450, ptr %var.load451)
  store i64 %call.res, ptr %var.v, align 8
  %var.load452 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load452, 0
  br i1 %cmptmp, label %choice.then453, label %choice.exit454

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit454
  %step.val = load i64, ptr %loop.step.81, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load1120 = load ptr, ptr %var.lows, align 8
  %a.load1121 = load ptr, ptr %var.lows, align 8
  %a.null1122 = icmp eq ptr %a.load1121, null
  br i1 %a.null1122, label %a.create1123, label %a.after1124

choice.then453:                                   ; preds = %loop.body.81
  %var.load455 = load ptr, ptr %var.idxs, align 8
  %a.load456 = load ptr, ptr %var.idxs, align 8
  %a.null457 = icmp eq ptr %a.load456, null
  br i1 %a.null457, label %a.create458, label %a.after459

choice.exit454:                                   ; preds = %choice.exit523, %loop.body.81
  br label %loop.latch.81

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
  br i1 %unwrap.is_pos596, label %unwrap.pos.82, label %unwrap.abort.82

unwrap.pos.82:                                    ; preds = %a.rd.done560
  %unwrap.pay.pos628 = extractvalue { i1, i64 } %ram.pay595, 1
  %var.load629 = load ptr, ptr %var.lows, align 8
  %a.load630 = load ptr, ptr %var.lows, align 8
  %a.null631 = icmp eq ptr %a.load630, null
  br i1 %a.null631, label %a.create632, label %a.after633

unwrap.abort.82:                                  ; preds = %a.rd.done560
  %5 = call i64 @write(i32 2, ptr @expect.reason.83, i64 21)
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

err.thread623:                                    ; preds = %unwrap.abort.82
  %err.haserr.gep625 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec621, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep625, align 8
  %err.err.gep626 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec621, i32 0, i32 7
  store ptr %err.ptr598, ptr %err.err.gep626, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal624:                                    ; preds = %unwrap.abort.82
  %err.panic.printf627 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code600, i32 %err.msg.len32612, ptr %err.msg.data614, i32 %err.file.len32618, ptr %err.file.data620, i64 %err.line606, i64 %err.col608)
  call void @exit(i32 1)
  unreachable

a.create632:                                      ; preds = %unwrap.pos.82
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

a.after633:                                       ; preds = %a.create632, %unwrap.pos.82
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
  store i64 73, ptr %err.col.gep664, align 8
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
  store i64 73, ptr %err.col.gep675, align 8
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
  br i1 %unwrap.is_pos684, label %unwrap.pos.84, label %unwrap.abort.84

unwrap.pos.84:                                    ; preds = %a.rd.done648
  %unwrap.pay.pos716 = extractvalue { i1, i64 } %ram.pay683, 1
  %min = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos628, i64 %unwrap.pay.pos716)
  %a.wr.nonnull717 = icmp ne ptr %a.load2539, null
  br i1 %a.wr.nonnull717, label %a.wr.check718, label %a.wr.err.null720

unwrap.abort.84:                                  ; preds = %a.rd.done648
  %6 = call i64 @write(i32 2, ptr @expect.reason.85, i64 21)
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

err.thread711:                                    ; preds = %unwrap.abort.84
  %err.haserr.gep713 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec709, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep713, align 8
  %err.err.gep714 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec709, i32 0, i32 7
  store ptr %err.ptr686, ptr %err.err.gep714, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal712:                                    ; preds = %unwrap.abort.84
  %err.panic.printf715 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code688, i32 %err.msg.len32700, ptr %err.msg.data702, i32 %err.file.len32706, ptr %err.file.data708, i64 %err.line694, i64 %err.col696)
  call void @exit(i32 1)
  unreachable

a.wr.check718:                                    ; preds = %unwrap.pos.84
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

a.wr.err.null720:                                 ; preds = %unwrap.pos.84
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
  br i1 %unwrap.is_pos926, label %unwrap.pos.86, label %unwrap.abort.86

unwrap.pos.86:                                    ; preds = %a.rd.done890
  %unwrap.pay.pos958 = extractvalue { i1, i64 } %ram.pay925, 1
  %var.load959 = load ptr, ptr %var.idxs, align 8
  %a.load960 = load ptr, ptr %var.idxs, align 8
  %a.null961 = icmp eq ptr %a.load960, null
  br i1 %a.null961, label %a.create962, label %a.after963

unwrap.abort.86:                                  ; preds = %a.rd.done890
  %7 = call i64 @write(i32 2, ptr @expect.reason.87, i64 21)
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

err.thread953:                                    ; preds = %unwrap.abort.86
  %err.haserr.gep955 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec951, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep955, align 8
  %err.err.gep956 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec951, i32 0, i32 7
  store ptr %err.ptr928, ptr %err.err.gep956, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal954:                                    ; preds = %unwrap.abort.86
  %err.panic.printf957 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code930, i32 %err.msg.len32942, ptr %err.msg.data944, i32 %err.file.len32948, ptr %err.file.data950, i64 %err.line936, i64 %err.col938)
  call void @exit(i32 1)
  unreachable

a.create962:                                      ; preds = %unwrap.pos.86
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

a.after963:                                       ; preds = %a.create962, %unwrap.pos.86
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
  store i64 79, ptr %err.col.gep994, align 8
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
  store i64 79, ptr %err.col.gep1005, align 8
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
  br i1 %unwrap.is_pos1014, label %unwrap.pos.88, label %unwrap.abort.88

unwrap.pos.88:                                    ; preds = %a.rd.done978
  %unwrap.pay.pos1046 = extractvalue { i1, i64 } %ram.pay1013, 1
  %min1047 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos958, i64 %unwrap.pay.pos1046)
  %a.wr.nonnull1048 = icmp ne ptr %a.load2869, null
  br i1 %a.wr.nonnull1048, label %a.wr.check1049, label %a.wr.err.null1051

unwrap.abort.88:                                  ; preds = %a.rd.done978
  %8 = call i64 @write(i32 2, ptr @expect.reason.89, i64 21)
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

err.thread1041:                                   ; preds = %unwrap.abort.88
  %err.haserr.gep1043 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1039, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1043, align 8
  %err.err.gep1044 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1039, i32 0, i32 7
  store ptr %err.ptr1016, ptr %err.err.gep1044, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1042:                                   ; preds = %unwrap.abort.88
  %err.panic.printf1045 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1018, i32 %err.msg.len321030, ptr %err.msg.data1032, i32 %err.file.len321036, ptr %err.file.data1038, i64 %err.line1024, i64 %err.col1026)
  call void @exit(i32 1)
  unreachable

a.wr.check1049:                                   ; preds = %unwrap.pos.88
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

a.wr.err.null1051:                                ; preds = %unwrap.pos.88
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

a.create1123:                                     ; preds = %loop.exit.81
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

a.after1124:                                      ; preds = %a.create1123, %loop.exit.81
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
  br i1 %unwrap.is_pos1175, label %unwrap.pos.90, label %unwrap.abort.90

unwrap.pos.90:                                    ; preds = %a.rd.done1139
  %unwrap.pay.pos1207 = extractvalue { i1, i64 } %ram.pay1174, 1
  store i64 %unwrap.pay.pos1207, ptr %var.low_u, align 8
  %var.load1208 = load ptr, ptr %var.idxs, align 8
  %a.load1209 = load ptr, ptr %var.idxs, align 8
  %a.null1210 = icmp eq ptr %a.load1209, null
  br i1 %a.null1210, label %a.create1211, label %a.after1212

unwrap.abort.90:                                  ; preds = %a.rd.done1139
  %9 = call i64 @write(i32 2, ptr @expect.reason.91, i64 21)
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

err.thread1202:                                   ; preds = %unwrap.abort.90
  %err.haserr.gep1204 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1200, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1204, align 8
  %err.err.gep1205 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1200, i32 0, i32 7
  store ptr %err.ptr1177, ptr %err.err.gep1205, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1203:                                   ; preds = %unwrap.abort.90
  %err.panic.printf1206 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1179, i32 %err.msg.len321191, ptr %err.msg.data1193, i32 %err.file.len321197, ptr %err.file.data1199, i64 %err.line1185, i64 %err.col1187)
  call void @exit(i32 1)
  unreachable

a.create1211:                                     ; preds = %unwrap.pos.90
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

a.after1212:                                      ; preds = %a.create1211, %unwrap.pos.90
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
  br i1 %unwrap.is_pos1263, label %unwrap.pos.92, label %unwrap.abort.92

unwrap.pos.92:                                    ; preds = %a.rd.done1227
  %unwrap.pay.pos1295 = extractvalue { i1, i64 } %ram.pay1262, 1
  store i64 %unwrap.pay.pos1295, ptr %var.idx_u, align 8
  %var.load1296 = load i64, ptr %var.low_u, align 8
  %var.load1297 = load i64, ptr %var.idx_u, align 8
  %cmptmp1298 = icmp eq i64 %var.load1296, %var.load1297
  br i1 %cmptmp1298, label %choice.then1299, label %choice.exit1300

unwrap.abort.92:                                  ; preds = %a.rd.done1227
  %10 = call i64 @write(i32 2, ptr @expect.reason.93, i64 21)
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

err.thread1290:                                   ; preds = %unwrap.abort.92
  %err.haserr.gep1292 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1288, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1292, align 8
  %err.err.gep1293 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1288, i32 0, i32 7
  store ptr %err.ptr1265, ptr %err.err.gep1293, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1291:                                   ; preds = %unwrap.abort.92
  %err.panic.printf1294 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1267, i32 %err.msg.len321279, ptr %err.msg.data1281, i32 %err.file.len321285, ptr %err.file.data1287, i64 %err.line1273, i64 %err.col1275)
  call void @exit(i32 1)
  unreachable

choice.then1299:                                  ; preds = %unwrap.pos.92
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
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

choice.exit1300:                                  ; preds = %a.store1639, %unwrap.pos.92
  ret void

loop.header.94:                                   ; preds = %loop.latch.94, %choice.then1299
  %counter.load1312 = load i64, ptr %loop.idx.94, align 8
  br label %loop.body.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i1313 = sub i64 %counter.load1312, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %counter.load1312, ptr %var._1314, align 8
  store i64 %loop.rel.i1313, ptr %var._i1315, align 8
  %var.load1316 = load ptr, ptr %var.state, align 8
  %fld.gep1317 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1316, i32 0, i32 4
  %fld.load1318 = load ptr, ptr %fld.gep1317, align 8
  store ptr %fld.load1318, ptr %var.s_ptr, align 8
  %var.load1319 = load ptr, ptr %var.s_ptr, align 8
  %a.load1320 = load ptr, ptr %var.s_ptr, align 8
  %a.null1321 = icmp eq ptr %a.load1320, null
  br i1 %a.null1321, label %a.create1322, label %a.after1323

loop.exit.nat.94:                                 ; No predecessors!
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit1600
  %step.val1601 = load i64, ptr %loop.step.94, align 8
  %loop.next1602 = add i64 %counter.load1312, %step.val1601
  store i64 %loop.next1602, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %choice.then1599, %choice.then1407, %loop.exit.nat.94
  %var.load1603 = load ptr, ptr %var.scc_names, align 8
  %a.load1604 = load ptr, ptr %var.scc_names, align 8
  %a.null1605 = icmp eq ptr %a.load1604, null
  br i1 %a.null1605, label %a.create1606, label %a.after1607

a.create1322:                                     ; preds = %loop.body.94
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

a.after1323:                                      ; preds = %a.create1322, %loop.body.94
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
  br i1 %unwrap.is_pos1372, label %unwrap.pos.95, label %unwrap.abort.95

unwrap.pos.95:                                    ; preds = %a.rd.done1337
  %unwrap.pay.pos1404 = extractvalue { i1, i64 } %ram.pay1371, 1
  store i64 %unwrap.pay.pos1404, ptr %var.sp, align 8
  %var.load1405 = load i64, ptr %var.sp, align 8
  %cmptmp1406 = icmp eq i64 %var.load1405, 0
  br i1 %cmptmp1406, label %choice.then1407, label %choice.exit1408

unwrap.abort.95:                                  ; preds = %a.rd.done1337
  %11 = call i64 @write(i32 2, ptr @expect.reason.96, i64 22)
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

err.thread1399:                                   ; preds = %unwrap.abort.95
  %err.haserr.gep1401 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1397, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1401, align 8
  %err.err.gep1402 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1397, i32 0, i32 7
  store ptr %err.ptr1374, ptr %err.err.gep1402, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1400:                                   ; preds = %unwrap.abort.95
  %err.panic.printf1403 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1376, i32 %err.msg.len321388, ptr %err.msg.data1390, i32 %err.file.len321394, ptr %err.file.data1396, i64 %err.line1382, i64 %err.col1384)
  call void @exit(i32 1)
  unreachable

choice.then1407:                                  ; preds = %unwrap.pos.95
  br label %loop.exit.94

choice.exit1408:                                  ; preds = %unwrap.pos.95
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
  br i1 %unwrap.is_pos1542, label %unwrap.pos.97, label %unwrap.abort.97

unwrap.pos.97:                                    ; preds = %a.rd.done1506
  %unwrap.pay.pos1574 = extractvalue { i1, i64 } %ram.pay1541, 1
  %pay.ptr1575 = inttoptr i64 %unwrap.pay.pos1574 to ptr
  store ptr %pay.ptr1575, ptr %var.w_node, align 8
  %var.load1576 = load ptr, ptr %var.w_node, align 8
  %fld.gep1577 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1576, i32 0, i32 0
  %fld.load1578 = load ptr, ptr %fld.gep1577, align 8
  %a.load1579 = load ptr, ptr %var.scc_names, align 8
  %a.null1580 = icmp eq ptr %a.load1579, null
  br i1 %a.null1580, label %a.create1581, label %a.after1582

unwrap.abort.97:                                  ; preds = %a.rd.done1506
  %12 = call i64 @write(i32 2, ptr @expect.reason.98, i64 22)
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

err.thread1569:                                   ; preds = %unwrap.abort.97
  %err.haserr.gep1571 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1567, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1571, align 8
  %err.err.gep1572 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1567, i32 0, i32 7
  store ptr %err.ptr1544, ptr %err.err.gep1572, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1570:                                   ; preds = %unwrap.abort.97
  %err.panic.printf1573 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1546, i32 %err.msg.len321558, ptr %err.msg.data1560, i32 %err.file.len321564, ptr %err.file.data1566, i64 %err.line1552, i64 %err.col1554)
  call void @exit(i32 1)
  unreachable

a.create1581:                                     ; preds = %unwrap.pos.97
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

a.after1582:                                      ; preds = %a.create1581, %unwrap.pos.97
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
  br label %loop.exit.94

choice.exit1600:                                  ; preds = %a.store
  br label %loop.latch.94

a.create1606:                                     ; preds = %loop.exit.94
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

a.after1607:                                      ; preds = %a.create1606, %loop.exit.94
  %a.load21615 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21615, i32 0, i32 0
  %a.len.query1616 = load i64, ptr %a.len.query, align 8
  %cmptmp1617 = icmp sgt i64 %a.len.query1616, 1
  br i1 %cmptmp1617, label %or.99.then, label %or.99.else

or.99.then:                                       ; preds = %a.after1607
  br label %or.99.exit

or.99.else:                                       ; preds = %a.after1607
  %var.load1618 = load i1, ptr %var.is_self_rec, align 1
  br label %or.99.exit

or.99.exit:                                       ; preds = %or.99.else, %or.99.then
  %or.99.phi = phi i1 [ %cmptmp1617, %or.99.then ], [ %var.load1618, %or.99.else ]
  store i1 %or.99.phi, ptr %var.is_rec, align 1
  %var.load1619 = load ptr, ptr %var.state, align 8
  %var.load1620 = load ptr, ptr %var.scc_names, align 8
  %a.load1621 = load ptr, ptr %var.scc_names, align 8
  %a.null1622 = icmp eq ptr %a.load1621, null
  br i1 %a.null1622, label %a.create1623, label %a.after1624

a.create1623:                                     ; preds = %or.99.exit
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

a.after1624:                                      ; preds = %a.create1623, %or.99.exit
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
declare i64 @llvm.smin.i64(i64, i64) #0

define ptr @"dep_graph::tarjan_scc"(ptr %0) #3 {
entry:
  %var.idx = alloca i64, align 8
  %var._29 = alloca ptr, align 8
  %var._27 = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.header.100:                                  ; preds = %loop.latch.100, %entry
  %counter.load = load i64, ptr %loop.idx.100, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load ptr, ptr %var.state, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.idxs, align 8
  %var.load7 = load ptr, ptr %var.idxs, align 8
  %a.load = load ptr, ptr %var.idxs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.100, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  ret ptr %fld.load38

a.create:                                         ; preds = %loop.body.100
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

a.after:                                          ; preds = %a.create, %loop.body.100
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
  br label %loop.latch.100
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
