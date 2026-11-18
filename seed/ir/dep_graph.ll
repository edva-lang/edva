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
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #4 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

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

choice.exit:                                      ; preds = %choice.exit44, %choice.then
  %choice.res62 = phi i1 [ false, %choice.then ], [ %choice.res61, %choice.exit44 ]
  ret i1 %choice.res62

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
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len31 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.rhs.len31, 48
  %tag.immortal35 = icmp eq i64 %str.tag33, 0
  %active.gen36 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current37 = icmp eq i64 %str.tag33, %active.gen36
  %tag.fast.ok38 = or i1 %tag.immortal35, %tag.current37
  br i1 %tag.fast.ok38, label %str_ok34, label %tag.slow_check39

tag.slow_check:                                   ; preds = %choice.exit23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok34:                                         ; preds = %tag.slow_check39, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check39:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag33)
  br label %str_ok34

str.eq.then:                                      ; preds = %str_ok34
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data40 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data41 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data40, ptr %eq.rhs.data41, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok34
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then42, label %choice.else43

choice.then42:                                    ; preds = %str.eq.merge
  br label %choice.exit44

choice.else43:                                    ; preds = %str.eq.merge
  %var.load45 = load ptr, ptr %var.names, align 8
  %a.load46 = load ptr, ptr %var.names, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

choice.exit44:                                    ; preds = %a.after49, %choice.then42
  %choice.res61 = phi i1 [ true, %choice.then42 ], [ %call.res, %a.after49 ]
  br label %choice.exit

a.create48:                                       ; preds = %choice.else43
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var.names, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.else43
  %a.load257 = load ptr, ptr %var.names, align 8
  %var.load58 = load ptr, ptr %var.s, align 8
  %var.load59 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load59, 1
  %var.load60 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load257, ptr %var.load58, i64 %addtmp, i64 %var.load60)
  br label %choice.exit44
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.27.then, label %and.27.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %and.27.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.27.else ]
  br i1 %and.27.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.27.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.27.exit

idx_oob:                                          ; preds = %idx_big_check, %and.27.then
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
  %idx.neg17 = icmp slt i64 %var.load16, 0
  br i1 %idx.neg17, label %idx_oob20, label %idx_big_check18

choice.else:                                      ; preds = %and.27.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit47
  %choice.res51 = phi i1 [ %choice.res, %choice.exit47 ], [ false, %choice.else ]
  ret i1 %choice.res51

idx_big_check18:                                  ; preds = %choice.then
  %idx.big21 = icmp sge i64 %var.load16, %s.read.len13
  br i1 %idx.big21, label %idx_oob20, label %idx_ok19

idx_ok19:                                         ; preds = %abort.dead22, %idx_big_check18
  %s.byte.gep23 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte24 = load i8, ptr %s.byte.gep23, align 1
  %s.byte.val25 = zext i8 %s.byte24 to i64
  %cmptmp26 = icmp eq i64 %s.byte.val25, 58
  br i1 %cmptmp26, label %and.28.then, label %and.28.else

idx_oob20:                                        ; preds = %idx_big_check18, %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %idx_ok19

and.28.then:                                      ; preds = %idx_ok19
  %var.load27 = load ptr, ptr %var.name, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %var.load33 = load i64, ptr %var.i, align 8
  %addtmp34 = add i64 %var.load33, 1
  %idx.neg35 = icmp slt i64 %addtmp34, 0
  br i1 %idx.neg35, label %idx_oob38, label %idx_big_check36

and.28.else:                                      ; preds = %idx_ok19
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %idx_ok37
  %and.28.phi = phi i1 [ %cmptmp44, %idx_ok37 ], [ %cmptmp26, %and.28.else ]
  br i1 %and.28.phi, label %choice.then45, label %choice.else46

idx_big_check36:                                  ; preds = %and.28.then
  %idx.big39 = icmp sge i64 %addtmp34, %s.read.len30
  br i1 %idx.big39, label %idx_oob38, label %idx_ok37

idx_ok37:                                         ; preds = %abort.dead40, %idx_big_check36
  %s.byte.gep41 = getelementptr i8, ptr %s.read.data32, i64 %addtmp34
  %s.byte42 = load i8, ptr %s.byte.gep41, align 1
  %s.byte.val43 = zext i8 %s.byte42 to i64
  %cmptmp44 = icmp eq i64 %s.byte.val43, 58
  br label %and.28.exit

idx_oob38:                                        ; preds = %idx_big_check36, %and.28.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %idx_ok37

choice.then45:                                    ; preds = %and.28.exit
  br label %choice.exit47

choice.else46:                                    ; preds = %and.28.exit
  %var.load48 = load ptr, ptr %var.name, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %addtmp50 = add i64 %var.load49, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load48, i64 %addtmp50)
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res = phi i1 [ true, %choice.then45 ], [ %call.res, %choice.else46 ]
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.29.then, label %and.29.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %and.29.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.29.else ]
  br i1 %and.29.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.29.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.29.exit

idx_oob:                                          ; preds = %idx_big_check, %and.29.then
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
  %idx.neg17 = icmp slt i64 %var.load16, 0
  br i1 %idx.neg17, label %idx_oob20, label %idx_big_check18

choice.else:                                      ; preds = %and.29.exit
  %var.load57 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit47
  %choice.res58 = phi i64 [ %choice.res, %choice.exit47 ], [ %var.load57, %choice.else ]
  ret i64 %choice.res58

idx_big_check18:                                  ; preds = %choice.then
  %idx.big21 = icmp sge i64 %var.load16, %s.read.len13
  br i1 %idx.big21, label %idx_oob20, label %idx_ok19

idx_ok19:                                         ; preds = %abort.dead22, %idx_big_check18
  %s.byte.gep23 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte24 = load i8, ptr %s.byte.gep23, align 1
  %s.byte.val25 = zext i8 %s.byte24 to i64
  %cmptmp26 = icmp eq i64 %s.byte.val25, 58
  br i1 %cmptmp26, label %and.30.then, label %and.30.else

idx_oob20:                                        ; preds = %idx_big_check18, %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %idx_ok19

and.30.then:                                      ; preds = %idx_ok19
  %var.load27 = load ptr, ptr %var.name, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %var.load33 = load i64, ptr %var.i, align 8
  %addtmp34 = add i64 %var.load33, 1
  %idx.neg35 = icmp slt i64 %addtmp34, 0
  br i1 %idx.neg35, label %idx_oob38, label %idx_big_check36

and.30.else:                                      ; preds = %idx_ok19
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %idx_ok37
  %and.30.phi = phi i1 [ %cmptmp44, %idx_ok37 ], [ %cmptmp26, %and.30.else ]
  br i1 %and.30.phi, label %choice.then45, label %choice.else46

idx_big_check36:                                  ; preds = %and.30.then
  %idx.big39 = icmp sge i64 %addtmp34, %s.read.len30
  br i1 %idx.big39, label %idx_oob38, label %idx_ok37

idx_ok37:                                         ; preds = %abort.dead40, %idx_big_check36
  %s.byte.gep41 = getelementptr i8, ptr %s.read.data32, i64 %addtmp34
  %s.byte42 = load i8, ptr %s.byte.gep41, align 1
  %s.byte.val43 = zext i8 %s.byte42 to i64
  %cmptmp44 = icmp eq i64 %s.byte.val43, 58
  br label %and.30.exit

idx_oob38:                                        ; preds = %idx_big_check36, %and.30.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %idx_ok37

choice.then45:                                    ; preds = %and.30.exit
  %var.load48 = load ptr, ptr %var.name, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %addtmp50 = add i64 %var.load49, 2
  %var.load51 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load48, i64 %addtmp50, i64 %var.load51)
  br label %choice.exit47

choice.else46:                                    ; preds = %and.30.exit
  %var.load52 = load ptr, ptr %var.name, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %var.load55 = load i64, ptr %var.last, align 8
  %call.res56 = call i64 @"dep_graph::decl_module_find"(ptr %var.load52, i64 %addtmp54, i64 %var.load55)
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res = phi i64 [ %call.res, %choice.then45 ], [ %call.res56, %choice.else46 ]
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var._1991 = alloca ptr, align 8
  %var._1923 = alloca ptr, align 8
  %var._i1922 = alloca i64, align 8
  %var.p1914 = alloca ptr, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.m1896 = alloca ptr, align 8
  %var._1895 = alloca ptr, align 8
  %var.r1853 = alloca ptr, align 8
  %var._1852 = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1815 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1780 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1745 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1707 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1672 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1635 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1600 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1565 = alloca ptr, align 8
  %var._1528 = alloca ptr, align 8
  %var._i1527 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %loop.step.47 = alloca i64, align 8
  %loop.idx.47 = alloca i64, align 8
  %var.v1512 = alloca ptr, align 8
  %var._1511 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1474 = alloca ptr, align 8
  %var.v1378 = alloca ptr, align 8
  %var._1377 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1326 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1260 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1194 = alloca ptr, align 8
  %var.a1128 = alloca ptr, align 8
  %var._1127 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1061 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._995 = alloca ptr, align 8
  %var._956 = alloca ptr, align 8
  %var._i955 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._940 = alloca ptr, align 8
  %var._848 = alloca ptr, align 8
  %var._i847 = alloca i64, align 8
  %var.vn = alloca ptr, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._802 = alloca ptr, align 8
  %var._i801 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var._677 = alloca ptr, align 8
  %var._i676 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._647 = alloca ptr, align 8
  %var._i646 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._602 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._484 = alloca ptr, align 8
  %var._474 = alloca ptr, align 8
  %var._i473 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._434 = alloca ptr, align 8
  %var._347 = alloca ptr, align 8
  %var._i346 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._317 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._280 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._214 = alloca ptr, align 8
  %var._179 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next1985, %a.after2012, %loop.exit.48, %choice.exit1858, %a.after1836, %a.after1799, %a.after1764, %a.after1729, %a.after1691, %a.after1656, %a.after1619, %a.after1584, %loop.exit.47, %a.after1495, %choice.exit1365, %a.after1310, %a.after1244, %a.after1178, %a.after1111, %a.after1045, %loop.exit.45, %loop.exit.39, %loop.exit.38, %a.after418, %a.after301, %a.after264, %loop.exit.36, %choice.exit26
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.next:                                      ; preds = %entry
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 9
  br i1 %tag.match48, label %choice.case44, label %choice.next45

str_ok:                                           ; preds = %tag.slow_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %str.tag56 = lshr i64 %eq.lhs.len54, 48
  %tag.immortal58 = icmp eq i64 %str.tag56, 0
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current60 = icmp eq i64 %str.tag56, %active.gen59
  %tag.fast.ok61 = or i1 %tag.immortal58, %tag.current60
  br i1 %tag.fast.ok61, label %str_ok57, label %tag.slow_check62

choice.next45:                                    ; preds = %choice.next
  %tag.gep209 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id210 = load i64, ptr %tag.gep209, align 8
  %tag.match211 = icmp eq i64 %tag.id210, 5
  br i1 %tag.match211, label %choice.case207, label %choice.next208

str_ok57:                                         ; preds = %tag.slow_check62, %choice.case44
  %eq.rhs.len63 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len64 = and i64 %eq.rhs.len63, 281474976710655
  %eq.len65 = icmp eq i64 %eq.lhs.len55, %eq.rhs.len64
  br i1 %eq.len65, label %str.eq.then66, label %str.eq.else67

tag.slow_check62:                                 ; preds = %choice.case44
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag56)
  br label %str_ok57

str.eq.then66:                                    ; preds = %str_ok57
  %eq.lhs.data69 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data70 = load ptr, ptr %eq.lhs.data69, align 8
  %eq.rhs.data71 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp72 = call i32 @memcmp(ptr %eq.lhs.data70, ptr %eq.rhs.data71, i64 %eq.lhs.len55)
  %eq.cmp.zero73 = icmp eq i32 %eq.memcmp72, 0
  br label %str.eq.merge68

str.eq.else67:                                    ; preds = %str_ok57
  br label %str.eq.merge68

str.eq.merge68:                                   ; preds = %str.eq.else67, %str.eq.then66
  %str.eq.result74 = phi i1 [ %eq.cmp.zero73, %str.eq.then66 ], [ false, %str.eq.else67 ]
  %str.neq75 = xor i1 %str.eq.result74, true
  br i1 %str.neq75, label %and.34.then, label %and.34.else

and.34.then:                                      ; preds = %str.eq.merge68
  %var.load76 = load ptr, ptr %var.locals, align 8
  %a.load77 = load ptr, ptr %var.locals, align 8
  %a.null78 = icmp eq ptr %a.load77, null
  br i1 %a.null78, label %a.create79, label %a.after80

and.34.else:                                      ; preds = %str.eq.merge68
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %a.after80
  %and.34.phi = phi i1 [ %nottmp93, %a.after80 ], [ %str.neq75, %and.34.else ]
  br i1 %and.34.phi, label %and.35.then, label %and.35.else

a.create79:                                       ; preds = %and.34.then
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 128)
  %a.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 0
  store i64 0, ptr %a.len.gep85, align 8
  %a.data.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 1
  store ptr %a.buf84, ptr %a.data.gep86, align 8
  %a.cap.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 2
  store i64 16, ptr %a.cap.gep87, align 8
  store ptr %a.create82, ptr %var.locals, align 8
  br label %a.after80

a.after80:                                        ; preds = %a.create79, %and.34.then
  %a.load288 = load ptr, ptr %var.locals, align 8
  %var.load89 = load ptr, ptr %var.c, align 8
  %fld.gep90 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load89, i32 0, i32 0
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %call.res92 = call i1 @"dep_graph::has_name"(ptr %a.load288, ptr %fld.load91)
  %nottmp93 = xor i1 %call.res92, true
  br label %and.34.exit

and.35.then:                                      ; preds = %and.34.exit
  %var.load94 = load ptr, ptr %var.refs, align 8
  %a.load95 = load ptr, ptr %var.refs, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

and.35.else:                                      ; preds = %and.34.exit
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %a.after98
  %and.35.phi = phi i1 [ %nottmp111, %a.after98 ], [ %and.34.phi, %and.35.else ]
  br i1 %and.35.phi, label %choice.then112, label %choice.exit113

a.create97:                                       ; preds = %and.35.then
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
  store ptr %a.create100, ptr %var.refs, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %and.35.then
  %a.load2106 = load ptr, ptr %var.refs, align 8
  %var.load107 = load ptr, ptr %var.c, align 8
  %fld.gep108 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load107, i32 0, i32 0
  %fld.load109 = load ptr, ptr %fld.gep108, align 8
  %call.res110 = call i1 @"dep_graph::has_name"(ptr %a.load2106, ptr %fld.load109)
  %nottmp111 = xor i1 %call.res110, true
  br label %and.35.exit

choice.then112:                                   ; preds = %and.35.exit
  %var.load114 = load ptr, ptr %var.c, align 8
  %fld.gep115 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load114, i32 0, i32 0
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %a.load117 = load ptr, ptr %var.refs, align 8
  %a.null118 = icmp eq ptr %a.load117, null
  br i1 %a.null118, label %a.create119, label %a.after120

choice.exit113:                                   ; preds = %a.store131, %and.35.exit
  %var.load145 = load ptr, ptr %var.c, align 8
  %fld.gep146 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load145, i32 0, i32 1
  %fld.load147 = load ptr, ptr %fld.gep146, align 8
  %var.load148 = load ptr, ptr %var.locals, align 8
  %a.load149 = load ptr, ptr %var.locals, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

a.create119:                                      ; preds = %choice.then112
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 24)
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 128)
  %a.len.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 0
  store i64 0, ptr %a.len.gep125, align 8
  %a.data.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 1
  store ptr %a.buf124, ptr %a.data.gep126, align 8
  %a.cap.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 2
  store i64 16, ptr %a.cap.gep127, align 8
  store ptr %a.create122, ptr %var.refs, align 8
  br label %a.after120

a.after120:                                       ; preds = %a.create119, %choice.then112
  %a.load2128 = load ptr, ptr %var.refs, align 8
  br label %a.check129

a.check129:                                       ; preds = %a.after120
  %a.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2128, i32 0, i32 0
  %a.len133 = load i64, ptr %a.len132, align 8
  %a.cap134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2128, i32 0, i32 2
  %a.cap135 = load i64, ptr %a.cap134, align 8
  %a.needs.grow136 = icmp eq i64 %a.len133, %a.cap135
  br i1 %a.needs.grow136, label %a.grow130, label %a.store131

a.grow130:                                        ; preds = %a.check129
  call void @dva_array_grow(ptr %a.load2128)
  br label %a.store131

a.store131:                                       ; preds = %a.grow130, %a.check129
  %a.cur.data137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2128, i32 0, i32 1
  %a.cur.data138 = load ptr, ptr %a.cur.data137, align 8
  %a.cur.len139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2128, i32 0, i32 0
  %a.cur.len140 = load i64, ptr %a.cur.len139, align 8
  %a.elem.gep141 = getelementptr i64, ptr %a.cur.data138, i64 %a.cur.len140
  %slot.p2i142 = ptrtoint ptr %fld.load116 to i64
  store i64 %slot.p2i142, ptr %a.elem.gep141, align 8
  %a.next.len143 = add i64 %a.cur.len140, 1
  %b.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2128, i32 0, i32 0
  store i64 %a.next.len143, ptr %b.len.gep144, align 8
  br label %choice.exit113

a.create151:                                      ; preds = %choice.exit113
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %arena.cur155 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 128)
  %a.len.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 0
  store i64 0, ptr %a.len.gep157, align 8
  %a.data.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 1
  store ptr %a.buf156, ptr %a.data.gep158, align 8
  %a.cap.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 2
  store i64 16, ptr %a.cap.gep159, align 8
  store ptr %a.create154, ptr %var.locals, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %choice.exit113
  %a.load2160 = load ptr, ptr %var.locals, align 8
  %var.load161 = load ptr, ptr %var.refs, align 8
  %a.load162 = load ptr, ptr %var.refs, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

a.create164:                                      ; preds = %a.after152
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
  store ptr %a.create167, ptr %var.refs, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %a.after152
  %a.load2173 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load147, ptr %a.load2160, ptr %a.load2173)
  %var.load174 = load ptr, ptr %var.c, align 8
  %fld.gep175 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load174, i32 0, i32 2
  %fld.load176 = load ptr, ptr %fld.gep175, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load176, i32 0, i32 0
  %arr.cycle.len177 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load176, i32 0, i32 1
  %arr.cycle.data178 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.36, align 8
  %cycle.prev.u = load ptr, ptr %var._51, align 8
  br label %loop.header.36

loop.header.36:                                   ; preds = %loop.latch.36, %a.after165
  %counter.load = load i64, ptr %loop.idx.36, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len177
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.nat.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.36, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data178, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._179, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load180 = load ptr, ptr %var.arg, align 8
  %var.load181 = load ptr, ptr %var.locals, align 8
  %a.load182 = load ptr, ptr %var.locals, align 8
  %a.null183 = icmp eq ptr %a.load182, null
  br i1 %a.null183, label %a.create184, label %a.after185

loop.exit.nat.36:                                 ; preds = %loop.header.36
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %a.after198
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %loop.exit.nat.36
  store ptr %cycle.prev.u, ptr %var._51, align 8
  br label %choice.exit

a.create184:                                      ; preds = %loop.body.36
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
  store ptr %a.create187, ptr %var.locals, align 8
  br label %a.after185

a.after185:                                       ; preds = %a.create184, %loop.body.36
  %a.load2193 = load ptr, ptr %var.locals, align 8
  %var.load194 = load ptr, ptr %var.refs, align 8
  %a.load195 = load ptr, ptr %var.refs, align 8
  %a.null196 = icmp eq ptr %a.load195, null
  br i1 %a.null196, label %a.create197, label %a.after198

a.create197:                                      ; preds = %a.after185
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
  store ptr %a.create200, ptr %var.refs, align 8
  br label %a.after198

a.after198:                                       ; preds = %a.create197, %a.after185
  %a.load2206 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load180, ptr %a.load2193, ptr %a.load2206)
  br label %loop.latch.36

choice.case207:                                   ; preds = %choice.next45
  %pay.gep212 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr213 = load ptr, ptr %pay.gep212, align 8
  store ptr %payload.ptr213, ptr %var._214, align 8
  store ptr %payload.ptr213, ptr %var.b, align 8
  %var.load215 = load ptr, ptr %var.b, align 8
  %fld.gep216 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load215, i32 0, i32 1
  %fld.load217 = load ptr, ptr %fld.gep216, align 8
  %var.load218 = load ptr, ptr %var.locals, align 8
  %a.load219 = load ptr, ptr %var.locals, align 8
  %a.null220 = icmp eq ptr %a.load219, null
  br i1 %a.null220, label %a.create221, label %a.after222

choice.next208:                                   ; preds = %choice.next45
  %tag.gep275 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id276 = load i64, ptr %tag.gep275, align 8
  %tag.match277 = icmp eq i64 %tag.id276, 24
  br i1 %tag.match277, label %choice.case273, label %choice.next274

a.create221:                                      ; preds = %choice.case207
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 24)
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 128)
  %a.len.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 0
  store i64 0, ptr %a.len.gep227, align 8
  %a.data.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 1
  store ptr %a.buf226, ptr %a.data.gep228, align 8
  %a.cap.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 2
  store i64 16, ptr %a.cap.gep229, align 8
  store ptr %a.create224, ptr %var.locals, align 8
  br label %a.after222

a.after222:                                       ; preds = %a.create221, %choice.case207
  %a.load2230 = load ptr, ptr %var.locals, align 8
  %var.load231 = load ptr, ptr %var.refs, align 8
  %a.load232 = load ptr, ptr %var.refs, align 8
  %a.null233 = icmp eq ptr %a.load232, null
  br i1 %a.null233, label %a.create234, label %a.after235

a.create234:                                      ; preds = %a.after222
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 24)
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 128)
  %a.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 0
  store i64 0, ptr %a.len.gep240, align 8
  %a.data.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 1
  store ptr %a.buf239, ptr %a.data.gep241, align 8
  %a.cap.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep242, align 8
  store ptr %a.create237, ptr %var.refs, align 8
  br label %a.after235

a.after235:                                       ; preds = %a.create234, %a.after222
  %a.load2243 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load217, ptr %a.load2230, ptr %a.load2243)
  %var.load244 = load ptr, ptr %var.b, align 8
  %fld.gep245 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load244, i32 0, i32 2
  %fld.load246 = load ptr, ptr %fld.gep245, align 8
  %var.load247 = load ptr, ptr %var.locals, align 8
  %a.load248 = load ptr, ptr %var.locals, align 8
  %a.null249 = icmp eq ptr %a.load248, null
  br i1 %a.null249, label %a.create250, label %a.after251

a.create250:                                      ; preds = %a.after235
  %arena.cur252 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 24)
  %arena.cur254 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 128)
  %a.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 0
  store i64 0, ptr %a.len.gep256, align 8
  %a.data.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 1
  store ptr %a.buf255, ptr %a.data.gep257, align 8
  %a.cap.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 2
  store i64 16, ptr %a.cap.gep258, align 8
  store ptr %a.create253, ptr %var.locals, align 8
  br label %a.after251

a.after251:                                       ; preds = %a.create250, %a.after235
  %a.load2259 = load ptr, ptr %var.locals, align 8
  %var.load260 = load ptr, ptr %var.refs, align 8
  %a.load261 = load ptr, ptr %var.refs, align 8
  %a.null262 = icmp eq ptr %a.load261, null
  br i1 %a.null262, label %a.create263, label %a.after264

a.create263:                                      ; preds = %a.after251
  %arena.cur265 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 24)
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 128)
  %a.len.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 0
  store i64 0, ptr %a.len.gep269, align 8
  %a.data.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 1
  store ptr %a.buf268, ptr %a.data.gep270, align 8
  %a.cap.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 2
  store i64 16, ptr %a.cap.gep271, align 8
  store ptr %a.create266, ptr %var.refs, align 8
  br label %a.after264

a.after264:                                       ; preds = %a.create263, %a.after251
  %a.load2272 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load246, ptr %a.load2259, ptr %a.load2272)
  br label %choice.exit

choice.case273:                                   ; preds = %choice.next208
  %pay.gep278 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr279 = load ptr, ptr %pay.gep278, align 8
  store ptr %payload.ptr279, ptr %var._280, align 8
  store ptr %payload.ptr279, ptr %var.u, align 8
  %var.load281 = load ptr, ptr %var.u, align 8
  %fld.gep282 = getelementptr inbounds { ptr, ptr }, ptr %var.load281, i32 0, i32 1
  %fld.load283 = load ptr, ptr %fld.gep282, align 8
  %var.load284 = load ptr, ptr %var.locals, align 8
  %a.load285 = load ptr, ptr %var.locals, align 8
  %a.null286 = icmp eq ptr %a.load285, null
  br i1 %a.null286, label %a.create287, label %a.after288

choice.next274:                                   ; preds = %choice.next208
  %tag.gep312 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id313 = load i64, ptr %tag.gep312, align 8
  %tag.match314 = icmp eq i64 %tag.id313, 14
  br i1 %tag.match314, label %choice.case310, label %choice.next311

a.create287:                                      ; preds = %choice.case273
  %arena.cur289 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 24)
  %arena.cur291 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 128)
  %a.len.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 0
  store i64 0, ptr %a.len.gep293, align 8
  %a.data.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 1
  store ptr %a.buf292, ptr %a.data.gep294, align 8
  %a.cap.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 2
  store i64 16, ptr %a.cap.gep295, align 8
  store ptr %a.create290, ptr %var.locals, align 8
  br label %a.after288

a.after288:                                       ; preds = %a.create287, %choice.case273
  %a.load2296 = load ptr, ptr %var.locals, align 8
  %var.load297 = load ptr, ptr %var.refs, align 8
  %a.load298 = load ptr, ptr %var.refs, align 8
  %a.null299 = icmp eq ptr %a.load298, null
  br i1 %a.null299, label %a.create300, label %a.after301

a.create300:                                      ; preds = %a.after288
  %arena.cur302 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 24)
  %arena.cur304 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 128)
  %a.len.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create303, i32 0, i32 0
  store i64 0, ptr %a.len.gep306, align 8
  %a.data.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create303, i32 0, i32 1
  store ptr %a.buf305, ptr %a.data.gep307, align 8
  %a.cap.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create303, i32 0, i32 2
  store i64 16, ptr %a.cap.gep308, align 8
  store ptr %a.create303, ptr %var.refs, align 8
  br label %a.after301

a.after301:                                       ; preds = %a.create300, %a.after288
  %a.load2309 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load283, ptr %a.load2296, ptr %a.load2309)
  br label %choice.exit

choice.case310:                                   ; preds = %choice.next274
  %pay.gep315 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr316 = load ptr, ptr %pay.gep315, align 8
  store ptr %payload.ptr316, ptr %var._317, align 8
  store ptr %payload.ptr316, ptr %var.fe, align 8
  %var.load318 = load ptr, ptr %var.locals, align 8
  %a.load319 = load ptr, ptr %var.locals, align 8
  %a.null320 = icmp eq ptr %a.load319, null
  br i1 %a.null320, label %a.create321, label %a.after322

choice.next311:                                   ; preds = %choice.next274
  %tag.gep429 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id430 = load i64, ptr %tag.gep429, align 8
  %tag.match431 = icmp eq i64 %tag.id430, 8
  br i1 %tag.match431, label %choice.case427, label %choice.next428

a.create321:                                      ; preds = %choice.case310
  %arena.cur323 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 24)
  %arena.cur325 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 128)
  %a.len.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create324, i32 0, i32 0
  store i64 0, ptr %a.len.gep327, align 8
  %a.data.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create324, i32 0, i32 1
  store ptr %a.buf326, ptr %a.data.gep328, align 8
  %a.cap.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create324, i32 0, i32 2
  store i64 16, ptr %a.cap.gep329, align 8
  store ptr %a.create324, ptr %var.locals, align 8
  br label %a.after322

a.after322:                                       ; preds = %a.create321, %choice.case310
  %a.load2330 = load ptr, ptr %var.locals, align 8
  %call.res331 = call ptr @"dep_graph::copy_names"(ptr %a.load2330)
  store ptr %call.res331, ptr %var.fn_locals, align 8
  %var.load332 = load ptr, ptr %var.fe, align 8
  %fld.gep333 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load332, i32 0, i32 0
  %fld.load334 = load ptr, ptr %fld.gep333, align 8
  %arr.cycle.len335 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load334, i32 0, i32 0
  %arr.cycle.len336 = load i64, ptr %arr.cycle.len335, align 8
  %arr.cycle.data337 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load334, i32 0, i32 1
  %arr.cycle.data338 = load ptr, ptr %arr.cycle.data337, align 8
  store i64 0, ptr %loop.idx.37, align 8
  %cycle.prev.u339 = load ptr, ptr %var._317, align 8
  br label %loop.header.37

loop.header.37:                                   ; preds = %loop.latch.37, %a.after322
  %counter.load340 = load i64, ptr %loop.idx.37, align 8
  %loop.cond341 = icmp slt i64 %counter.load340, %arr.cycle.len336
  br i1 %loop.cond341, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i342 = sub i64 %counter.load340, 0
  store i64 1, ptr %loop.step.37, align 8
  %arr.elem.gep343 = getelementptr i64, ptr %arr.cycle.data338, i64 %counter.load340
  %arr.elem.raw344 = load i64, ptr %arr.elem.gep343, align 8
  %slot.i2p345 = inttoptr i64 %arr.elem.raw344 to ptr
  store i64 %loop.rel.i342, ptr %var._i346, align 8
  store ptr %slot.i2p345, ptr %var._347, align 8
  store ptr %slot.i2p345, ptr %var.p, align 8
  %var.load348 = load ptr, ptr %var.p, align 8
  %eq.lhs.len349 = getelementptr inbounds { i64, ptr }, ptr %var.load348, i32 0, i32 0
  %eq.lhs.len350 = load i64, ptr %eq.lhs.len349, align 8
  %eq.lhs.len351 = and i64 %eq.lhs.len350, 281474976710655
  %eq.rhs.len352 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len353 = and i64 %eq.rhs.len352, 281474976710655
  %eq.len354 = icmp eq i64 %eq.lhs.len351, %eq.rhs.len353
  br i1 %eq.len354, label %str.eq.then355, label %str.eq.else356

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %choice.exit366
  %step.val396 = load i64, ptr %loop.step.37, align 8
  %loop.next397 = add i64 %counter.load340, %step.val396
  store i64 %loop.next397, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  store ptr %cycle.prev.u339, ptr %var._317, align 8
  %var.load398 = load ptr, ptr %var.fe, align 8
  %fld.gep399 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load398, i32 0, i32 2
  %fld.load400 = load ptr, ptr %fld.gep399, align 8
  %var.load401 = load ptr, ptr %var.fn_locals, align 8
  %a.load402 = load ptr, ptr %var.fn_locals, align 8
  %a.null403 = icmp eq ptr %a.load402, null
  br i1 %a.null403, label %a.create404, label %a.after405

str.eq.then355:                                   ; preds = %loop.body.37
  %eq.lhs.data358 = getelementptr inbounds { i64, ptr }, ptr %var.load348, i32 0, i32 1
  %eq.lhs.data359 = load ptr, ptr %eq.lhs.data358, align 8
  %eq.rhs.data360 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp361 = call i32 @memcmp(ptr %eq.lhs.data359, ptr %eq.rhs.data360, i64 %eq.lhs.len351)
  %eq.cmp.zero362 = icmp eq i32 %eq.memcmp361, 0
  br label %str.eq.merge357

str.eq.else356:                                   ; preds = %loop.body.37
  br label %str.eq.merge357

str.eq.merge357:                                  ; preds = %str.eq.else356, %str.eq.then355
  %str.eq.result363 = phi i1 [ %eq.cmp.zero362, %str.eq.then355 ], [ false, %str.eq.else356 ]
  %str.neq364 = xor i1 %str.eq.result363, true
  br i1 %str.neq364, label %choice.then365, label %choice.exit366

choice.then365:                                   ; preds = %str.eq.merge357
  %var.load367 = load ptr, ptr %var.p, align 8
  %a.load368 = load ptr, ptr %var.fn_locals, align 8
  %a.null369 = icmp eq ptr %a.load368, null
  br i1 %a.null369, label %a.create370, label %a.after371

choice.exit366:                                   ; preds = %a.store382, %str.eq.merge357
  br label %loop.latch.37

a.create370:                                      ; preds = %choice.then365
  %arena.cur372 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 24)
  %arena.cur374 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 128)
  %a.len.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 0
  store i64 0, ptr %a.len.gep376, align 8
  %a.data.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 1
  store ptr %a.buf375, ptr %a.data.gep377, align 8
  %a.cap.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 2
  store i64 16, ptr %a.cap.gep378, align 8
  store ptr %a.create373, ptr %var.fn_locals, align 8
  br label %a.after371

a.after371:                                       ; preds = %a.create370, %choice.then365
  %a.load2379 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check380

a.check380:                                       ; preds = %a.after371
  %a.len383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 0
  %a.len384 = load i64, ptr %a.len383, align 8
  %a.cap385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 2
  %a.cap386 = load i64, ptr %a.cap385, align 8
  %a.needs.grow387 = icmp eq i64 %a.len384, %a.cap386
  br i1 %a.needs.grow387, label %a.grow381, label %a.store382

a.grow381:                                        ; preds = %a.check380
  call void @dva_array_grow(ptr %a.load2379)
  br label %a.store382

a.store382:                                       ; preds = %a.grow381, %a.check380
  %a.cur.data388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 1
  %a.cur.data389 = load ptr, ptr %a.cur.data388, align 8
  %a.cur.len390 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 0
  %a.cur.len391 = load i64, ptr %a.cur.len390, align 8
  %a.elem.gep392 = getelementptr i64, ptr %a.cur.data389, i64 %a.cur.len391
  %slot.p2i393 = ptrtoint ptr %var.load367 to i64
  store i64 %slot.p2i393, ptr %a.elem.gep392, align 8
  %a.next.len394 = add i64 %a.cur.len391, 1
  %b.len.gep395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 0
  store i64 %a.next.len394, ptr %b.len.gep395, align 8
  br label %choice.exit366

a.create404:                                      ; preds = %loop.exit.37
  %arena.cur406 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create407 = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 24)
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 128)
  %a.len.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 0
  store i64 0, ptr %a.len.gep410, align 8
  %a.data.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 1
  store ptr %a.buf409, ptr %a.data.gep411, align 8
  %a.cap.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 2
  store i64 16, ptr %a.cap.gep412, align 8
  store ptr %a.create407, ptr %var.fn_locals, align 8
  br label %a.after405

a.after405:                                       ; preds = %a.create404, %loop.exit.37
  %a.load2413 = load ptr, ptr %var.fn_locals, align 8
  %var.load414 = load ptr, ptr %var.refs, align 8
  %a.load415 = load ptr, ptr %var.refs, align 8
  %a.null416 = icmp eq ptr %a.load415, null
  br i1 %a.null416, label %a.create417, label %a.after418

a.create417:                                      ; preds = %a.after405
  %arena.cur419 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 24)
  %arena.cur421 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 128)
  %a.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 0
  store i64 0, ptr %a.len.gep423, align 8
  %a.data.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 1
  store ptr %a.buf422, ptr %a.data.gep424, align 8
  %a.cap.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 2
  store i64 16, ptr %a.cap.gep425, align 8
  store ptr %a.create420, ptr %var.refs, align 8
  br label %a.after418

a.after418:                                       ; preds = %a.create417, %a.after405
  %a.load2426 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load400, ptr %a.load2413, ptr %a.load2426)
  br label %choice.exit

choice.case427:                                   ; preds = %choice.next311
  %pay.gep432 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr433 = load ptr, ptr %pay.gep432, align 8
  store ptr %payload.ptr433, ptr %var._434, align 8
  store ptr %payload.ptr433, ptr %var.be, align 8
  %var.load435 = load ptr, ptr %var.locals, align 8
  %a.load436 = load ptr, ptr %var.locals, align 8
  %a.null437 = icmp eq ptr %a.load436, null
  br i1 %a.null437, label %a.create438, label %a.after439

choice.next428:                                   ; preds = %choice.next311
  %tag.gep597 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id598 = load i64, ptr %tag.gep597, align 8
  %tag.match599 = icmp eq i64 %tag.id598, 7
  br i1 %tag.match599, label %choice.case595, label %choice.next596

a.create438:                                      ; preds = %choice.case427
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 24)
  %arena.cur442 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 128)
  %a.len.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 0
  store i64 0, ptr %a.len.gep444, align 8
  %a.data.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 1
  store ptr %a.buf443, ptr %a.data.gep445, align 8
  %a.cap.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 2
  store i64 16, ptr %a.cap.gep446, align 8
  store ptr %a.create441, ptr %var.locals, align 8
  br label %a.after439

a.after439:                                       ; preds = %a.create438, %choice.case427
  %a.load2447 = load ptr, ptr %var.locals, align 8
  %call.res448 = call ptr @"dep_graph::copy_names"(ptr %a.load2447)
  store ptr %call.res448, ptr %var.blk_locals, align 8
  %var.load449 = load ptr, ptr %var.be, align 8
  %a.load450 = load ptr, ptr %var.be, align 8
  %a.null451 = icmp eq ptr %a.load450, null
  br i1 %a.null451, label %a.create452, label %a.after453

a.create452:                                      ; preds = %a.after439
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 24)
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 128)
  %a.len.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create455, i32 0, i32 0
  store i64 0, ptr %a.len.gep458, align 8
  %a.data.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create455, i32 0, i32 1
  store ptr %a.buf457, ptr %a.data.gep459, align 8
  %a.cap.gep460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create455, i32 0, i32 2
  store i64 16, ptr %a.cap.gep460, align 8
  store ptr %a.create455, ptr %var.be, align 8
  br label %a.after453

a.after453:                                       ; preds = %a.create452, %a.after439
  %a.load2461 = load ptr, ptr %var.be, align 8
  %arr.cycle.len462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2461, i32 0, i32 0
  %arr.cycle.len463 = load i64, ptr %arr.cycle.len462, align 8
  %arr.cycle.data464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2461, i32 0, i32 1
  %arr.cycle.data465 = load ptr, ptr %arr.cycle.data464, align 8
  store i64 0, ptr %loop.idx.38, align 8
  %cycle.prev.u466 = load ptr, ptr %var._434, align 8
  br label %loop.header.38

loop.header.38:                                   ; preds = %loop.latch.38, %a.after453
  %counter.load467 = load i64, ptr %loop.idx.38, align 8
  %loop.cond468 = icmp slt i64 %counter.load467, %arr.cycle.len463
  br i1 %loop.cond468, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i469 = sub i64 %counter.load467, 0
  store i64 1, ptr %loop.step.38, align 8
  %arr.elem.gep470 = getelementptr i64, ptr %arr.cycle.data465, i64 %counter.load467
  %arr.elem.raw471 = load i64, ptr %arr.elem.gep470, align 8
  %slot.i2p472 = inttoptr i64 %arr.elem.raw471 to ptr
  store i64 %loop.rel.i469, ptr %var._i473, align 8
  store ptr %slot.i2p472, ptr %var._474, align 8
  store ptr %slot.i2p472, ptr %var.st, align 8
  %var.load475 = load ptr, ptr %var.st, align 8
  %tag.gep479 = getelementptr inbounds { i64, ptr }, ptr %var.load475, i32 0, i32 0
  %tag.id480 = load i64, ptr %tag.gep479, align 8
  %tag.match481 = icmp eq i64 %tag.id480, 6
  br i1 %tag.match481, label %choice.case477, label %choice.next478

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit476
  %step.val593 = load i64, ptr %loop.step.38, align 8
  %loop.next594 = add i64 %counter.load467, %step.val593
  store i64 %loop.next594, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %loop.exit.nat.38
  store ptr %cycle.prev.u466, ptr %var._434, align 8
  br label %choice.exit

choice.exit476:                                   ; preds = %a.after584, %choice.exit534
  br label %loop.latch.38

choice.case477:                                   ; preds = %loop.body.38
  %pay.gep482 = getelementptr inbounds { i64, ptr }, ptr %var.load475, i32 0, i32 1
  %payload.ptr483 = load ptr, ptr %pay.gep482, align 8
  store ptr %payload.ptr483, ptr %var._484, align 8
  store ptr %payload.ptr483, ptr %var.a, align 8
  %var.load485 = load ptr, ptr %var.a, align 8
  %fld.gep486 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load485, i32 0, i32 5
  %fld.load487 = load ptr, ptr %fld.gep486, align 8
  %var.load488 = load ptr, ptr %var.blk_locals, align 8
  %a.load489 = load ptr, ptr %var.blk_locals, align 8
  %a.null490 = icmp eq ptr %a.load489, null
  br i1 %a.null490, label %a.create491, label %a.after492

choice.next478:                                   ; preds = %loop.body.38
  %var.load566 = load ptr, ptr %var.st, align 8
  %var.load567 = load ptr, ptr %var.blk_locals, align 8
  %a.load568 = load ptr, ptr %var.blk_locals, align 8
  %a.null569 = icmp eq ptr %a.load568, null
  br i1 %a.null569, label %a.create570, label %a.after571

a.create491:                                      ; preds = %choice.case477
  %arena.cur493 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 24)
  %arena.cur495 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 128)
  %a.len.gep497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 0
  store i64 0, ptr %a.len.gep497, align 8
  %a.data.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 1
  store ptr %a.buf496, ptr %a.data.gep498, align 8
  %a.cap.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 2
  store i64 16, ptr %a.cap.gep499, align 8
  store ptr %a.create494, ptr %var.blk_locals, align 8
  br label %a.after492

a.after492:                                       ; preds = %a.create491, %choice.case477
  %a.load2500 = load ptr, ptr %var.blk_locals, align 8
  %var.load501 = load ptr, ptr %var.refs, align 8
  %a.load502 = load ptr, ptr %var.refs, align 8
  %a.null503 = icmp eq ptr %a.load502, null
  br i1 %a.null503, label %a.create504, label %a.after505

a.create504:                                      ; preds = %a.after492
  %arena.cur506 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 24)
  %arena.cur508 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf509 = call ptr @dva_arena_alloc(ptr %arena.cur508, i64 128)
  %a.len.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create507, i32 0, i32 0
  store i64 0, ptr %a.len.gep510, align 8
  %a.data.gep511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create507, i32 0, i32 1
  store ptr %a.buf509, ptr %a.data.gep511, align 8
  %a.cap.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create507, i32 0, i32 2
  store i64 16, ptr %a.cap.gep512, align 8
  store ptr %a.create507, ptr %var.refs, align 8
  br label %a.after505

a.after505:                                       ; preds = %a.create504, %a.after492
  %a.load2513 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load487, ptr %a.load2500, ptr %a.load2513)
  %var.load514 = load ptr, ptr %var.a, align 8
  %fld.gep515 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load514, i32 0, i32 0
  %fld.load516 = load ptr, ptr %fld.gep515, align 8
  %eq.lhs.len517 = getelementptr inbounds { i64, ptr }, ptr %fld.load516, i32 0, i32 0
  %eq.lhs.len518 = load i64, ptr %eq.lhs.len517, align 8
  %eq.lhs.len519 = and i64 %eq.lhs.len518, 281474976710655
  %eq.rhs.len520 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len521 = and i64 %eq.rhs.len520, 281474976710655
  %eq.len522 = icmp eq i64 %eq.lhs.len519, %eq.rhs.len521
  br i1 %eq.len522, label %str.eq.then523, label %str.eq.else524

str.eq.then523:                                   ; preds = %a.after505
  %eq.lhs.data526 = getelementptr inbounds { i64, ptr }, ptr %fld.load516, i32 0, i32 1
  %eq.lhs.data527 = load ptr, ptr %eq.lhs.data526, align 8
  %eq.rhs.data528 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp529 = call i32 @memcmp(ptr %eq.lhs.data527, ptr %eq.rhs.data528, i64 %eq.lhs.len519)
  %eq.cmp.zero530 = icmp eq i32 %eq.memcmp529, 0
  br label %str.eq.merge525

str.eq.else524:                                   ; preds = %a.after505
  br label %str.eq.merge525

str.eq.merge525:                                  ; preds = %str.eq.else524, %str.eq.then523
  %str.eq.result531 = phi i1 [ %eq.cmp.zero530, %str.eq.then523 ], [ false, %str.eq.else524 ]
  %str.neq532 = xor i1 %str.eq.result531, true
  br i1 %str.neq532, label %choice.then533, label %choice.exit534

choice.then533:                                   ; preds = %str.eq.merge525
  %var.load535 = load ptr, ptr %var.a, align 8
  %fld.gep536 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load535, i32 0, i32 0
  %fld.load537 = load ptr, ptr %fld.gep536, align 8
  %a.load538 = load ptr, ptr %var.blk_locals, align 8
  %a.null539 = icmp eq ptr %a.load538, null
  br i1 %a.null539, label %a.create540, label %a.after541

choice.exit534:                                   ; preds = %a.store552, %str.eq.merge525
  br label %choice.exit476

a.create540:                                      ; preds = %choice.then533
  %arena.cur542 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create543 = call ptr @dva_arena_alloc(ptr %arena.cur542, i64 24)
  %arena.cur544 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf545 = call ptr @dva_arena_alloc(ptr %arena.cur544, i64 128)
  %a.len.gep546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create543, i32 0, i32 0
  store i64 0, ptr %a.len.gep546, align 8
  %a.data.gep547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create543, i32 0, i32 1
  store ptr %a.buf545, ptr %a.data.gep547, align 8
  %a.cap.gep548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create543, i32 0, i32 2
  store i64 16, ptr %a.cap.gep548, align 8
  store ptr %a.create543, ptr %var.blk_locals, align 8
  br label %a.after541

a.after541:                                       ; preds = %a.create540, %choice.then533
  %a.load2549 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check550

a.check550:                                       ; preds = %a.after541
  %a.len553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2549, i32 0, i32 0
  %a.len554 = load i64, ptr %a.len553, align 8
  %a.cap555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2549, i32 0, i32 2
  %a.cap556 = load i64, ptr %a.cap555, align 8
  %a.needs.grow557 = icmp eq i64 %a.len554, %a.cap556
  br i1 %a.needs.grow557, label %a.grow551, label %a.store552

a.grow551:                                        ; preds = %a.check550
  call void @dva_array_grow(ptr %a.load2549)
  br label %a.store552

a.store552:                                       ; preds = %a.grow551, %a.check550
  %a.cur.data558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2549, i32 0, i32 1
  %a.cur.data559 = load ptr, ptr %a.cur.data558, align 8
  %a.cur.len560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2549, i32 0, i32 0
  %a.cur.len561 = load i64, ptr %a.cur.len560, align 8
  %a.elem.gep562 = getelementptr i64, ptr %a.cur.data559, i64 %a.cur.len561
  %slot.p2i563 = ptrtoint ptr %fld.load537 to i64
  store i64 %slot.p2i563, ptr %a.elem.gep562, align 8
  %a.next.len564 = add i64 %a.cur.len561, 1
  %b.len.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2549, i32 0, i32 0
  store i64 %a.next.len564, ptr %b.len.gep565, align 8
  br label %choice.exit534

a.create570:                                      ; preds = %choice.next478
  %arena.cur572 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 24)
  %arena.cur574 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 128)
  %a.len.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 0
  store i64 0, ptr %a.len.gep576, align 8
  %a.data.gep577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 1
  store ptr %a.buf575, ptr %a.data.gep577, align 8
  %a.cap.gep578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 2
  store i64 16, ptr %a.cap.gep578, align 8
  store ptr %a.create573, ptr %var.blk_locals, align 8
  br label %a.after571

a.after571:                                       ; preds = %a.create570, %choice.next478
  %a.load2579 = load ptr, ptr %var.blk_locals, align 8
  %var.load580 = load ptr, ptr %var.refs, align 8
  %a.load581 = load ptr, ptr %var.refs, align 8
  %a.null582 = icmp eq ptr %a.load581, null
  br i1 %a.null582, label %a.create583, label %a.after584

a.create583:                                      ; preds = %a.after571
  %arena.cur585 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 24)
  %arena.cur587 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 128)
  %a.len.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 0
  store i64 0, ptr %a.len.gep589, align 8
  %a.data.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 1
  store ptr %a.buf588, ptr %a.data.gep590, align 8
  %a.cap.gep591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 2
  store i64 16, ptr %a.cap.gep591, align 8
  store ptr %a.create586, ptr %var.refs, align 8
  br label %a.after584

a.after584:                                       ; preds = %a.create583, %a.after571
  %a.load2592 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load566, ptr %a.load2579, ptr %a.load2592)
  br label %choice.exit476

choice.case595:                                   ; preds = %choice.next428
  %pay.gep600 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr601 = load ptr, ptr %pay.gep600, align 8
  store ptr %payload.ptr601, ptr %var._602, align 8
  store ptr %payload.ptr601, ptr %var.ch, align 8
  %var.load603 = load ptr, ptr %var.ch, align 8
  %fld.gep604 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load603, i32 0, i32 0
  %fld.load605 = load ptr, ptr %fld.gep604, align 8
  %var.load606 = load ptr, ptr %var.locals, align 8
  %a.load607 = load ptr, ptr %var.locals, align 8
  %a.null608 = icmp eq ptr %a.load607, null
  br i1 %a.null608, label %a.create609, label %a.after610

choice.next596:                                   ; preds = %choice.next428
  %tag.gep935 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id936 = load i64, ptr %tag.gep935, align 8
  %tag.match937 = icmp eq i64 %tag.id936, 15
  br i1 %tag.match937, label %choice.case933, label %choice.next934

a.create609:                                      ; preds = %choice.case595
  %arena.cur611 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 24)
  %arena.cur613 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 128)
  %a.len.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create612, i32 0, i32 0
  store i64 0, ptr %a.len.gep615, align 8
  %a.data.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create612, i32 0, i32 1
  store ptr %a.buf614, ptr %a.data.gep616, align 8
  %a.cap.gep617 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create612, i32 0, i32 2
  store i64 16, ptr %a.cap.gep617, align 8
  store ptr %a.create612, ptr %var.locals, align 8
  br label %a.after610

a.after610:                                       ; preds = %a.create609, %choice.case595
  %a.load2618 = load ptr, ptr %var.locals, align 8
  %var.load619 = load ptr, ptr %var.refs, align 8
  %a.load620 = load ptr, ptr %var.refs, align 8
  %a.null621 = icmp eq ptr %a.load620, null
  br i1 %a.null621, label %a.create622, label %a.after623

a.create622:                                      ; preds = %a.after610
  %arena.cur624 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 24)
  %arena.cur626 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf627 = call ptr @dva_arena_alloc(ptr %arena.cur626, i64 128)
  %a.len.gep628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 0
  store i64 0, ptr %a.len.gep628, align 8
  %a.data.gep629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 1
  store ptr %a.buf627, ptr %a.data.gep629, align 8
  %a.cap.gep630 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 2
  store i64 16, ptr %a.cap.gep630, align 8
  store ptr %a.create625, ptr %var.refs, align 8
  br label %a.after623

a.after623:                                       ; preds = %a.create622, %a.after610
  %a.load2631 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load605, ptr %a.load2618, ptr %a.load2631)
  %var.load632 = load ptr, ptr %var.ch, align 8
  %fld.gep633 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load632, i32 0, i32 2
  %fld.load634 = load ptr, ptr %fld.gep633, align 8
  %arr.cycle.len635 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load634, i32 0, i32 0
  %arr.cycle.len636 = load i64, ptr %arr.cycle.len635, align 8
  %arr.cycle.data637 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load634, i32 0, i32 1
  %arr.cycle.data638 = load ptr, ptr %arr.cycle.data637, align 8
  store i64 0, ptr %loop.idx.39, align 8
  %cycle.prev.u639 = load ptr, ptr %var._602, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %a.after623
  %counter.load640 = load i64, ptr %loop.idx.39, align 8
  %loop.cond641 = icmp slt i64 %counter.load640, %arr.cycle.len636
  br i1 %loop.cond641, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i642 = sub i64 %counter.load640, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep643 = getelementptr i64, ptr %arr.cycle.data638, i64 %counter.load640
  %arr.elem.raw644 = load i64, ptr %arr.elem.gep643, align 8
  %slot.i2p645 = inttoptr i64 %arr.elem.raw644 to ptr
  store i64 %loop.rel.i642, ptr %var._i646, align 8
  store ptr %slot.i2p645, ptr %var._647, align 8
  store ptr %slot.i2p645, ptr %var.br, align 8
  %var.load648 = load ptr, ptr %var.locals, align 8
  %a.load649 = load ptr, ptr %var.locals, align 8
  %a.null650 = icmp eq ptr %a.load649, null
  br i1 %a.null650, label %a.create651, label %a.after652

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %loop.exit.42
  %step.val931 = load i64, ptr %loop.step.39, align 8
  %loop.next932 = add i64 %counter.load640, %step.val931
  store i64 %loop.next932, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  store ptr %cycle.prev.u639, ptr %var._602, align 8
  br label %choice.exit

a.create651:                                      ; preds = %loop.body.39
  %arena.cur653 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create654 = call ptr @dva_arena_alloc(ptr %arena.cur653, i64 24)
  %arena.cur655 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf656 = call ptr @dva_arena_alloc(ptr %arena.cur655, i64 128)
  %a.len.gep657 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create654, i32 0, i32 0
  store i64 0, ptr %a.len.gep657, align 8
  %a.data.gep658 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create654, i32 0, i32 1
  store ptr %a.buf656, ptr %a.data.gep658, align 8
  %a.cap.gep659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create654, i32 0, i32 2
  store i64 16, ptr %a.cap.gep659, align 8
  store ptr %a.create654, ptr %var.locals, align 8
  br label %a.after652

a.after652:                                       ; preds = %a.create651, %loop.body.39
  %a.load2660 = load ptr, ptr %var.locals, align 8
  %call.res661 = call ptr @"dep_graph::copy_names"(ptr %a.load2660)
  store ptr %call.res661, ptr %var.br_locals, align 8
  %var.load662 = load ptr, ptr %var.br, align 8
  %fld.gep663 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load662, i32 0, i32 4
  %fld.load664 = load ptr, ptr %fld.gep663, align 8
  %arr.cycle.len665 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load664, i32 0, i32 0
  %arr.cycle.len666 = load i64, ptr %arr.cycle.len665, align 8
  %arr.cycle.data667 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load664, i32 0, i32 1
  %arr.cycle.data668 = load ptr, ptr %arr.cycle.data667, align 8
  store i64 0, ptr %loop.idx.40, align 8
  %cycle.prev.u669 = load ptr, ptr %var._647, align 8
  %cycle.prev.i = load i64, ptr %var._i646, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after652
  %counter.load670 = load i64, ptr %loop.idx.40, align 8
  %loop.cond671 = icmp slt i64 %counter.load670, %arr.cycle.len666
  br i1 %loop.cond671, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i672 = sub i64 %counter.load670, 0
  store i64 1, ptr %loop.step.40, align 8
  %arr.elem.gep673 = getelementptr i64, ptr %arr.cycle.data668, i64 %counter.load670
  %arr.elem.raw674 = load i64, ptr %arr.elem.gep673, align 8
  %slot.i2p675 = inttoptr i64 %arr.elem.raw674 to ptr
  store i64 %loop.rel.i672, ptr %var._i676, align 8
  store ptr %slot.i2p675, ptr %var._677, align 8
  store ptr %slot.i2p675, ptr %var.bv, align 8
  %var.load678 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len679 = getelementptr inbounds { i64, ptr }, ptr %var.load678, i32 0, i32 0
  %eq.lhs.len680 = load i64, ptr %eq.lhs.len679, align 8
  %eq.lhs.len681 = and i64 %eq.lhs.len680, 281474976710655
  %eq.rhs.len682 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len683 = and i64 %eq.rhs.len682, 281474976710655
  %eq.len684 = icmp eq i64 %eq.lhs.len681, %eq.rhs.len683
  br i1 %eq.len684, label %str.eq.then685, label %str.eq.else686

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit696
  %step.val726 = load i64, ptr %loop.step.40, align 8
  %loop.next727 = add i64 %counter.load670, %step.val726
  store i64 %loop.next727, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  store ptr %cycle.prev.u669, ptr %var._647, align 8
  store i64 %cycle.prev.i, ptr %var._i646, align 8
  %var.load728 = load ptr, ptr %var.br, align 8
  %fld.gep729 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load728, i32 0, i32 6
  %fld.load730 = load ptr, ptr %fld.gep729, align 8
  %var.load731 = load ptr, ptr %var.br_locals, align 8
  %a.load732 = load ptr, ptr %var.br_locals, align 8
  %a.null733 = icmp eq ptr %a.load732, null
  br i1 %a.null733, label %a.create734, label %a.after735

str.eq.then685:                                   ; preds = %loop.body.40
  %eq.lhs.data688 = getelementptr inbounds { i64, ptr }, ptr %var.load678, i32 0, i32 1
  %eq.lhs.data689 = load ptr, ptr %eq.lhs.data688, align 8
  %eq.rhs.data690 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp691 = call i32 @memcmp(ptr %eq.lhs.data689, ptr %eq.rhs.data690, i64 %eq.lhs.len681)
  %eq.cmp.zero692 = icmp eq i32 %eq.memcmp691, 0
  br label %str.eq.merge687

str.eq.else686:                                   ; preds = %loop.body.40
  br label %str.eq.merge687

str.eq.merge687:                                  ; preds = %str.eq.else686, %str.eq.then685
  %str.eq.result693 = phi i1 [ %eq.cmp.zero692, %str.eq.then685 ], [ false, %str.eq.else686 ]
  %str.neq694 = xor i1 %str.eq.result693, true
  br i1 %str.neq694, label %choice.then695, label %choice.exit696

choice.then695:                                   ; preds = %str.eq.merge687
  %var.load697 = load ptr, ptr %var.bv, align 8
  %a.load698 = load ptr, ptr %var.br_locals, align 8
  %a.null699 = icmp eq ptr %a.load698, null
  br i1 %a.null699, label %a.create700, label %a.after701

choice.exit696:                                   ; preds = %a.store712, %str.eq.merge687
  br label %loop.latch.40

a.create700:                                      ; preds = %choice.then695
  %arena.cur702 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create703 = call ptr @dva_arena_alloc(ptr %arena.cur702, i64 24)
  %arena.cur704 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf705 = call ptr @dva_arena_alloc(ptr %arena.cur704, i64 128)
  %a.len.gep706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create703, i32 0, i32 0
  store i64 0, ptr %a.len.gep706, align 8
  %a.data.gep707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create703, i32 0, i32 1
  store ptr %a.buf705, ptr %a.data.gep707, align 8
  %a.cap.gep708 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create703, i32 0, i32 2
  store i64 16, ptr %a.cap.gep708, align 8
  store ptr %a.create703, ptr %var.br_locals, align 8
  br label %a.after701

a.after701:                                       ; preds = %a.create700, %choice.then695
  %a.load2709 = load ptr, ptr %var.br_locals, align 8
  br label %a.check710

a.check710:                                       ; preds = %a.after701
  %a.len713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2709, i32 0, i32 0
  %a.len714 = load i64, ptr %a.len713, align 8
  %a.cap715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2709, i32 0, i32 2
  %a.cap716 = load i64, ptr %a.cap715, align 8
  %a.needs.grow717 = icmp eq i64 %a.len714, %a.cap716
  br i1 %a.needs.grow717, label %a.grow711, label %a.store712

a.grow711:                                        ; preds = %a.check710
  call void @dva_array_grow(ptr %a.load2709)
  br label %a.store712

a.store712:                                       ; preds = %a.grow711, %a.check710
  %a.cur.data718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2709, i32 0, i32 1
  %a.cur.data719 = load ptr, ptr %a.cur.data718, align 8
  %a.cur.len720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2709, i32 0, i32 0
  %a.cur.len721 = load i64, ptr %a.cur.len720, align 8
  %a.elem.gep722 = getelementptr i64, ptr %a.cur.data719, i64 %a.cur.len721
  %slot.p2i723 = ptrtoint ptr %var.load697 to i64
  store i64 %slot.p2i723, ptr %a.elem.gep722, align 8
  %a.next.len724 = add i64 %a.cur.len721, 1
  %b.len.gep725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2709, i32 0, i32 0
  store i64 %a.next.len724, ptr %b.len.gep725, align 8
  br label %choice.exit696

a.create734:                                      ; preds = %loop.exit.40
  %arena.cur736 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create737 = call ptr @dva_arena_alloc(ptr %arena.cur736, i64 24)
  %arena.cur738 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf739 = call ptr @dva_arena_alloc(ptr %arena.cur738, i64 128)
  %a.len.gep740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 0
  store i64 0, ptr %a.len.gep740, align 8
  %a.data.gep741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 1
  store ptr %a.buf739, ptr %a.data.gep741, align 8
  %a.cap.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 2
  store i64 16, ptr %a.cap.gep742, align 8
  store ptr %a.create737, ptr %var.br_locals, align 8
  br label %a.after735

a.after735:                                       ; preds = %a.create734, %loop.exit.40
  %a.load2743 = load ptr, ptr %var.br_locals, align 8
  %var.load744 = load ptr, ptr %var.refs, align 8
  %a.load745 = load ptr, ptr %var.refs, align 8
  %a.null746 = icmp eq ptr %a.load745, null
  br i1 %a.null746, label %a.create747, label %a.after748

a.create747:                                      ; preds = %a.after735
  %arena.cur749 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create750 = call ptr @dva_arena_alloc(ptr %arena.cur749, i64 24)
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 128)
  %a.len.gep753 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 0
  store i64 0, ptr %a.len.gep753, align 8
  %a.data.gep754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 1
  store ptr %a.buf752, ptr %a.data.gep754, align 8
  %a.cap.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 2
  store i64 16, ptr %a.cap.gep755, align 8
  store ptr %a.create750, ptr %var.refs, align 8
  br label %a.after748

a.after748:                                       ; preds = %a.create747, %a.after735
  %a.load2756 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load730, ptr %a.load2743, ptr %a.load2756)
  %var.load757 = load ptr, ptr %var.br, align 8
  %fld.gep758 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load757, i32 0, i32 2
  %fld.load759 = load ptr, ptr %fld.gep758, align 8
  %var.load760 = load ptr, ptr %var.br_locals, align 8
  %a.load761 = load ptr, ptr %var.br_locals, align 8
  %a.null762 = icmp eq ptr %a.load761, null
  br i1 %a.null762, label %a.create763, label %a.after764

a.create763:                                      ; preds = %a.after748
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 24)
  %arena.cur767 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 128)
  %a.len.gep769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create766, i32 0, i32 0
  store i64 0, ptr %a.len.gep769, align 8
  %a.data.gep770 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create766, i32 0, i32 1
  store ptr %a.buf768, ptr %a.data.gep770, align 8
  %a.cap.gep771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create766, i32 0, i32 2
  store i64 16, ptr %a.cap.gep771, align 8
  store ptr %a.create766, ptr %var.br_locals, align 8
  br label %a.after764

a.after764:                                       ; preds = %a.create763, %a.after748
  %a.load2772 = load ptr, ptr %var.br_locals, align 8
  %var.load773 = load ptr, ptr %var.refs, align 8
  %a.load774 = load ptr, ptr %var.refs, align 8
  %a.null775 = icmp eq ptr %a.load774, null
  br i1 %a.null775, label %a.create776, label %a.after777

a.create776:                                      ; preds = %a.after764
  %arena.cur778 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 24)
  %arena.cur780 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf781 = call ptr @dva_arena_alloc(ptr %arena.cur780, i64 128)
  %a.len.gep782 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create779, i32 0, i32 0
  store i64 0, ptr %a.len.gep782, align 8
  %a.data.gep783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create779, i32 0, i32 1
  store ptr %a.buf781, ptr %a.data.gep783, align 8
  %a.cap.gep784 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create779, i32 0, i32 2
  store i64 16, ptr %a.cap.gep784, align 8
  store ptr %a.create779, ptr %var.refs, align 8
  br label %a.after777

a.after777:                                       ; preds = %a.create776, %a.after764
  %a.load2785 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load759, ptr %a.load2772, ptr %a.load2785)
  %var.load786 = load ptr, ptr %var.br, align 8
  %fld.gep787 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load786, i32 0, i32 1
  %fld.load788 = load ptr, ptr %fld.gep787, align 8
  %arr.cycle.len789 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load788, i32 0, i32 0
  %arr.cycle.len790 = load i64, ptr %arr.cycle.len789, align 8
  %arr.cycle.data791 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load788, i32 0, i32 1
  %arr.cycle.data792 = load ptr, ptr %arr.cycle.data791, align 8
  store i64 0, ptr %loop.idx.41, align 8
  %cycle.prev.u793 = load ptr, ptr %var._647, align 8
  %cycle.prev.i794 = load i64, ptr %var._i646, align 8
  br label %loop.header.41

loop.header.41:                                   ; preds = %loop.latch.41, %a.after777
  %counter.load795 = load i64, ptr %loop.idx.41, align 8
  %loop.cond796 = icmp slt i64 %counter.load795, %arr.cycle.len790
  br i1 %loop.cond796, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i797 = sub i64 %counter.load795, 0
  store i64 1, ptr %loop.step.41, align 8
  %arr.elem.gep798 = getelementptr i64, ptr %arr.cycle.data792, i64 %counter.load795
  %arr.elem.raw799 = load i64, ptr %arr.elem.gep798, align 8
  %slot.i2p800 = inttoptr i64 %arr.elem.raw799 to ptr
  store i64 %loop.rel.i797, ptr %var._i801, align 8
  store ptr %slot.i2p800, ptr %var._802, align 8
  store ptr %slot.i2p800, ptr %var.cv, align 8
  %var.load803 = load ptr, ptr %var.cv, align 8
  %var.load804 = load ptr, ptr %var.br_locals, align 8
  %a.load805 = load ptr, ptr %var.br_locals, align 8
  %a.null806 = icmp eq ptr %a.load805, null
  br i1 %a.null806, label %a.create807, label %a.after808

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %a.after821
  %step.val830 = load i64, ptr %loop.step.41, align 8
  %loop.next831 = add i64 %counter.load795, %step.val830
  store i64 %loop.next831, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  store ptr %cycle.prev.u793, ptr %var._647, align 8
  store i64 %cycle.prev.i794, ptr %var._i646, align 8
  %var.load832 = load ptr, ptr %var.br, align 8
  %fld.gep833 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load832, i32 0, i32 3
  %fld.load834 = load ptr, ptr %fld.gep833, align 8
  %arr.cycle.len835 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load834, i32 0, i32 0
  %arr.cycle.len836 = load i64, ptr %arr.cycle.len835, align 8
  %arr.cycle.data837 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load834, i32 0, i32 1
  %arr.cycle.data838 = load ptr, ptr %arr.cycle.data837, align 8
  store i64 0, ptr %loop.idx.42, align 8
  %cycle.prev.u839 = load ptr, ptr %var._647, align 8
  %cycle.prev.i840 = load i64, ptr %var._i646, align 8
  br label %loop.header.42

a.create807:                                      ; preds = %loop.body.41
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
  store ptr %a.create810, ptr %var.br_locals, align 8
  br label %a.after808

a.after808:                                       ; preds = %a.create807, %loop.body.41
  %a.load2816 = load ptr, ptr %var.br_locals, align 8
  %var.load817 = load ptr, ptr %var.refs, align 8
  %a.load818 = load ptr, ptr %var.refs, align 8
  %a.null819 = icmp eq ptr %a.load818, null
  br i1 %a.null819, label %a.create820, label %a.after821

a.create820:                                      ; preds = %a.after808
  %arena.cur822 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create823 = call ptr @dva_arena_alloc(ptr %arena.cur822, i64 24)
  %arena.cur824 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf825 = call ptr @dva_arena_alloc(ptr %arena.cur824, i64 128)
  %a.len.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create823, i32 0, i32 0
  store i64 0, ptr %a.len.gep826, align 8
  %a.data.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create823, i32 0, i32 1
  store ptr %a.buf825, ptr %a.data.gep827, align 8
  %a.cap.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create823, i32 0, i32 2
  store i64 16, ptr %a.cap.gep828, align 8
  store ptr %a.create823, ptr %var.refs, align 8
  br label %a.after821

a.after821:                                       ; preds = %a.create820, %a.after808
  %a.load2829 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load803, ptr %a.load2816, ptr %a.load2829)
  br label %loop.latch.41

loop.header.42:                                   ; preds = %loop.latch.42, %loop.exit.41
  %counter.load841 = load i64, ptr %loop.idx.42, align 8
  %loop.cond842 = icmp slt i64 %counter.load841, %arr.cycle.len836
  br i1 %loop.cond842, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i843 = sub i64 %counter.load841, 0
  store i64 1, ptr %loop.step.42, align 8
  %arr.elem.gep844 = getelementptr i64, ptr %arr.cycle.data838, i64 %counter.load841
  %arr.elem.raw845 = load i64, ptr %arr.elem.gep844, align 8
  %slot.i2p846 = inttoptr i64 %arr.elem.raw845 to ptr
  store i64 %loop.rel.i843, ptr %var._i847, align 8
  store ptr %slot.i2p846, ptr %var._848, align 8
  store ptr %slot.i2p846, ptr %var.vn, align 8
  %var.load849 = load ptr, ptr %var.vn, align 8
  %eq.lhs.len850 = getelementptr inbounds { i64, ptr }, ptr %var.load849, i32 0, i32 0
  %eq.lhs.len851 = load i64, ptr %eq.lhs.len850, align 8
  %eq.lhs.len852 = and i64 %eq.lhs.len851, 281474976710655
  %eq.rhs.len853 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len854 = and i64 %eq.rhs.len853, 281474976710655
  %eq.len855 = icmp eq i64 %eq.lhs.len852, %eq.rhs.len854
  br i1 %eq.len855, label %str.eq.then856, label %str.eq.else857

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit899
  %step.val929 = load i64, ptr %loop.step.42, align 8
  %loop.next930 = add i64 %counter.load841, %step.val929
  store i64 %loop.next930, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  store ptr %cycle.prev.u839, ptr %var._647, align 8
  store i64 %cycle.prev.i840, ptr %var._i646, align 8
  br label %loop.latch.39

str.eq.then856:                                   ; preds = %loop.body.42
  %eq.lhs.data859 = getelementptr inbounds { i64, ptr }, ptr %var.load849, i32 0, i32 1
  %eq.lhs.data860 = load ptr, ptr %eq.lhs.data859, align 8
  %eq.rhs.data861 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp862 = call i32 @memcmp(ptr %eq.lhs.data860, ptr %eq.rhs.data861, i64 %eq.lhs.len852)
  %eq.cmp.zero863 = icmp eq i32 %eq.memcmp862, 0
  br label %str.eq.merge858

str.eq.else857:                                   ; preds = %loop.body.42
  br label %str.eq.merge858

str.eq.merge858:                                  ; preds = %str.eq.else857, %str.eq.then856
  %str.eq.result864 = phi i1 [ %eq.cmp.zero863, %str.eq.then856 ], [ false, %str.eq.else857 ]
  %str.neq865 = xor i1 %str.eq.result864, true
  br i1 %str.neq865, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %str.eq.merge858
  %var.load866 = load ptr, ptr %var.br_locals, align 8
  %a.load867 = load ptr, ptr %var.br_locals, align 8
  %a.null868 = icmp eq ptr %a.load867, null
  br i1 %a.null868, label %a.create869, label %a.after870

and.43.else:                                      ; preds = %str.eq.merge858
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %a.after870
  %and.43.phi = phi i1 [ %nottmp881, %a.after870 ], [ %str.neq865, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

a.create869:                                      ; preds = %and.43.then
  %arena.cur871 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create872 = call ptr @dva_arena_alloc(ptr %arena.cur871, i64 24)
  %arena.cur873 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf874 = call ptr @dva_arena_alloc(ptr %arena.cur873, i64 128)
  %a.len.gep875 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 0
  store i64 0, ptr %a.len.gep875, align 8
  %a.data.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 1
  store ptr %a.buf874, ptr %a.data.gep876, align 8
  %a.cap.gep877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 2
  store i64 16, ptr %a.cap.gep877, align 8
  store ptr %a.create872, ptr %var.br_locals, align 8
  br label %a.after870

a.after870:                                       ; preds = %a.create869, %and.43.then
  %a.load2878 = load ptr, ptr %var.br_locals, align 8
  %var.load879 = load ptr, ptr %var.vn, align 8
  %call.res880 = call i1 @"dep_graph::has_name"(ptr %a.load2878, ptr %var.load879)
  %nottmp881 = xor i1 %call.res880, true
  br label %and.43.exit

and.44.then:                                      ; preds = %and.43.exit
  %var.load882 = load ptr, ptr %var.refs, align 8
  %a.load883 = load ptr, ptr %var.refs, align 8
  %a.null884 = icmp eq ptr %a.load883, null
  br i1 %a.null884, label %a.create885, label %a.after886

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %a.after886
  %and.44.phi = phi i1 [ %nottmp897, %a.after886 ], [ %and.43.phi, %and.44.else ]
  br i1 %and.44.phi, label %choice.then898, label %choice.exit899

a.create885:                                      ; preds = %and.44.then
  %arena.cur887 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create888 = call ptr @dva_arena_alloc(ptr %arena.cur887, i64 24)
  %arena.cur889 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf890 = call ptr @dva_arena_alloc(ptr %arena.cur889, i64 128)
  %a.len.gep891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 0
  store i64 0, ptr %a.len.gep891, align 8
  %a.data.gep892 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 1
  store ptr %a.buf890, ptr %a.data.gep892, align 8
  %a.cap.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 2
  store i64 16, ptr %a.cap.gep893, align 8
  store ptr %a.create888, ptr %var.refs, align 8
  br label %a.after886

a.after886:                                       ; preds = %a.create885, %and.44.then
  %a.load2894 = load ptr, ptr %var.refs, align 8
  %var.load895 = load ptr, ptr %var.vn, align 8
  %call.res896 = call i1 @"dep_graph::has_name"(ptr %a.load2894, ptr %var.load895)
  %nottmp897 = xor i1 %call.res896, true
  br label %and.44.exit

choice.then898:                                   ; preds = %and.44.exit
  %var.load900 = load ptr, ptr %var.vn, align 8
  %a.load901 = load ptr, ptr %var.refs, align 8
  %a.null902 = icmp eq ptr %a.load901, null
  br i1 %a.null902, label %a.create903, label %a.after904

choice.exit899:                                   ; preds = %a.store915, %and.44.exit
  br label %loop.latch.42

a.create903:                                      ; preds = %choice.then898
  %arena.cur905 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create906 = call ptr @dva_arena_alloc(ptr %arena.cur905, i64 24)
  %arena.cur907 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf908 = call ptr @dva_arena_alloc(ptr %arena.cur907, i64 128)
  %a.len.gep909 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 0
  store i64 0, ptr %a.len.gep909, align 8
  %a.data.gep910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 1
  store ptr %a.buf908, ptr %a.data.gep910, align 8
  %a.cap.gep911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create906, i32 0, i32 2
  store i64 16, ptr %a.cap.gep911, align 8
  store ptr %a.create906, ptr %var.refs, align 8
  br label %a.after904

a.after904:                                       ; preds = %a.create903, %choice.then898
  %a.load2912 = load ptr, ptr %var.refs, align 8
  br label %a.check913

a.check913:                                       ; preds = %a.after904
  %a.len916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 0
  %a.len917 = load i64, ptr %a.len916, align 8
  %a.cap918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 2
  %a.cap919 = load i64, ptr %a.cap918, align 8
  %a.needs.grow920 = icmp eq i64 %a.len917, %a.cap919
  br i1 %a.needs.grow920, label %a.grow914, label %a.store915

a.grow914:                                        ; preds = %a.check913
  call void @dva_array_grow(ptr %a.load2912)
  br label %a.store915

a.store915:                                       ; preds = %a.grow914, %a.check913
  %a.cur.data921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 1
  %a.cur.data922 = load ptr, ptr %a.cur.data921, align 8
  %a.cur.len923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 0
  %a.cur.len924 = load i64, ptr %a.cur.len923, align 8
  %a.elem.gep925 = getelementptr i64, ptr %a.cur.data922, i64 %a.cur.len924
  %slot.p2i926 = ptrtoint ptr %var.load900 to i64
  store i64 %slot.p2i926, ptr %a.elem.gep925, align 8
  %a.next.len927 = add i64 %a.cur.len924, 1
  %b.len.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2912, i32 0, i32 0
  store i64 %a.next.len927, ptr %b.len.gep928, align 8
  br label %choice.exit899

choice.case933:                                   ; preds = %choice.next596
  %pay.gep938 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr939 = load ptr, ptr %pay.gep938, align 8
  store ptr %payload.ptr939, ptr %var._940, align 8
  store ptr %payload.ptr939, ptr %var.re, align 8
  %var.load941 = load ptr, ptr %var.re, align 8
  %fld.gep942 = getelementptr inbounds { ptr, i1 }, ptr %var.load941, i32 0, i32 0
  %fld.load943 = load ptr, ptr %fld.gep942, align 8
  %arr.cycle.len944 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load943, i32 0, i32 0
  %arr.cycle.len945 = load i64, ptr %arr.cycle.len944, align 8
  %arr.cycle.data946 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load943, i32 0, i32 1
  %arr.cycle.data947 = load ptr, ptr %arr.cycle.data946, align 8
  store i64 0, ptr %loop.idx.45, align 8
  %cycle.prev.u948 = load ptr, ptr %var._940, align 8
  br label %loop.header.45

choice.next934:                                   ; preds = %choice.next596
  %tag.gep990 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id991 = load i64, ptr %tag.gep990, align 8
  %tag.match992 = icmp eq i64 %tag.id991, 16
  br i1 %tag.match992, label %choice.case988, label %choice.next989

loop.header.45:                                   ; preds = %loop.latch.45, %choice.case933
  %counter.load949 = load i64, ptr %loop.idx.45, align 8
  %loop.cond950 = icmp slt i64 %counter.load949, %arr.cycle.len945
  br i1 %loop.cond950, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i951 = sub i64 %counter.load949, 0
  store i64 1, ptr %loop.step.45, align 8
  %arr.elem.gep952 = getelementptr i64, ptr %arr.cycle.data947, i64 %counter.load949
  %arr.elem.raw953 = load i64, ptr %arr.elem.gep952, align 8
  %slot.i2p954 = inttoptr i64 %arr.elem.raw953 to ptr
  store i64 %loop.rel.i951, ptr %var._i955, align 8
  store ptr %slot.i2p954, ptr %var._956, align 8
  store ptr %slot.i2p954, ptr %var.fld, align 8
  %var.load957 = load ptr, ptr %var.fld, align 8
  %fld.gep958 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load957, i32 0, i32 2
  %fld.load959 = load ptr, ptr %fld.gep958, align 8
  %var.load960 = load ptr, ptr %var.locals, align 8
  %a.load961 = load ptr, ptr %var.locals, align 8
  %a.null962 = icmp eq ptr %a.load961, null
  br i1 %a.null962, label %a.create963, label %a.after964

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.after977
  %step.val986 = load i64, ptr %loop.step.45, align 8
  %loop.next987 = add i64 %counter.load949, %step.val986
  store i64 %loop.next987, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  store ptr %cycle.prev.u948, ptr %var._940, align 8
  br label %choice.exit

a.create963:                                      ; preds = %loop.body.45
  %arena.cur965 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create966 = call ptr @dva_arena_alloc(ptr %arena.cur965, i64 24)
  %arena.cur967 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf968 = call ptr @dva_arena_alloc(ptr %arena.cur967, i64 128)
  %a.len.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 0
  store i64 0, ptr %a.len.gep969, align 8
  %a.data.gep970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 1
  store ptr %a.buf968, ptr %a.data.gep970, align 8
  %a.cap.gep971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create966, i32 0, i32 2
  store i64 16, ptr %a.cap.gep971, align 8
  store ptr %a.create966, ptr %var.locals, align 8
  br label %a.after964

a.after964:                                       ; preds = %a.create963, %loop.body.45
  %a.load2972 = load ptr, ptr %var.locals, align 8
  %var.load973 = load ptr, ptr %var.refs, align 8
  %a.load974 = load ptr, ptr %var.refs, align 8
  %a.null975 = icmp eq ptr %a.load974, null
  br i1 %a.null975, label %a.create976, label %a.after977

a.create976:                                      ; preds = %a.after964
  %arena.cur978 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 24)
  %arena.cur980 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %loop.latch.45

choice.case988:                                   ; preds = %choice.next934
  %pay.gep993 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr994 = load ptr, ptr %pay.gep993, align 8
  store ptr %payload.ptr994, ptr %var._995, align 8
  store ptr %payload.ptr994, ptr %var.m, align 8
  %var.load996 = load ptr, ptr %var.m, align 8
  %fld.gep997 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load996, i32 0, i32 0
  %fld.load998 = load ptr, ptr %fld.gep997, align 8
  %var.load999 = load ptr, ptr %var.locals, align 8
  %a.load1000 = load ptr, ptr %var.locals, align 8
  %a.null1001 = icmp eq ptr %a.load1000, null
  br i1 %a.null1001, label %a.create1002, label %a.after1003

choice.next989:                                   ; preds = %choice.next934
  %tag.gep1056 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1057 = load i64, ptr %tag.gep1056, align 8
  %tag.match1058 = icmp eq i64 %tag.id1057, 17
  br i1 %tag.match1058, label %choice.case1054, label %choice.next1055

a.create1002:                                     ; preds = %choice.case988
  %arena.cur1004 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1005 = call ptr @dva_arena_alloc(ptr %arena.cur1004, i64 24)
  %arena.cur1006 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1007 = call ptr @dva_arena_alloc(ptr %arena.cur1006, i64 128)
  %a.len.gep1008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1005, i32 0, i32 0
  store i64 0, ptr %a.len.gep1008, align 8
  %a.data.gep1009 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1005, i32 0, i32 1
  store ptr %a.buf1007, ptr %a.data.gep1009, align 8
  %a.cap.gep1010 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1005, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1010, align 8
  store ptr %a.create1005, ptr %var.locals, align 8
  br label %a.after1003

a.after1003:                                      ; preds = %a.create1002, %choice.case988
  %a.load21011 = load ptr, ptr %var.locals, align 8
  %var.load1012 = load ptr, ptr %var.refs, align 8
  %a.load1013 = load ptr, ptr %var.refs, align 8
  %a.null1014 = icmp eq ptr %a.load1013, null
  br i1 %a.null1014, label %a.create1015, label %a.after1016

a.create1015:                                     ; preds = %a.after1003
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
  store ptr %a.create1018, ptr %var.refs, align 8
  br label %a.after1016

a.after1016:                                      ; preds = %a.create1015, %a.after1003
  %a.load21024 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load998, ptr %a.load21011, ptr %a.load21024)
  %var.load1025 = load ptr, ptr %var.m, align 8
  %fld.gep1026 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1025, i32 0, i32 3
  %fld.load1027 = load ptr, ptr %fld.gep1026, align 8
  %var.load1028 = load ptr, ptr %var.locals, align 8
  %a.load1029 = load ptr, ptr %var.locals, align 8
  %a.null1030 = icmp eq ptr %a.load1029, null
  br i1 %a.null1030, label %a.create1031, label %a.after1032

a.create1031:                                     ; preds = %a.after1016
  %arena.cur1033 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1034 = call ptr @dva_arena_alloc(ptr %arena.cur1033, i64 24)
  %arena.cur1035 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1036 = call ptr @dva_arena_alloc(ptr %arena.cur1035, i64 128)
  %a.len.gep1037 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1034, i32 0, i32 0
  store i64 0, ptr %a.len.gep1037, align 8
  %a.data.gep1038 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1034, i32 0, i32 1
  store ptr %a.buf1036, ptr %a.data.gep1038, align 8
  %a.cap.gep1039 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1034, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1039, align 8
  store ptr %a.create1034, ptr %var.locals, align 8
  br label %a.after1032

a.after1032:                                      ; preds = %a.create1031, %a.after1016
  %a.load21040 = load ptr, ptr %var.locals, align 8
  %var.load1041 = load ptr, ptr %var.refs, align 8
  %a.load1042 = load ptr, ptr %var.refs, align 8
  %a.null1043 = icmp eq ptr %a.load1042, null
  br i1 %a.null1043, label %a.create1044, label %a.after1045

a.create1044:                                     ; preds = %a.after1032
  %arena.cur1046 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1047 = call ptr @dva_arena_alloc(ptr %arena.cur1046, i64 24)
  %arena.cur1048 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1049 = call ptr @dva_arena_alloc(ptr %arena.cur1048, i64 128)
  %a.len.gep1050 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1047, i32 0, i32 0
  store i64 0, ptr %a.len.gep1050, align 8
  %a.data.gep1051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1047, i32 0, i32 1
  store ptr %a.buf1049, ptr %a.data.gep1051, align 8
  %a.cap.gep1052 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1047, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1052, align 8
  store ptr %a.create1047, ptr %var.refs, align 8
  br label %a.after1045

a.after1045:                                      ; preds = %a.create1044, %a.after1032
  %a.load21053 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1027, ptr %a.load21040, ptr %a.load21053)
  br label %choice.exit

choice.case1054:                                  ; preds = %choice.next989
  %pay.gep1059 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1060 = load ptr, ptr %pay.gep1059, align 8
  store ptr %payload.ptr1060, ptr %var._1061, align 8
  store ptr %payload.ptr1060, ptr %var.ka, align 8
  %var.load1062 = load ptr, ptr %var.ka, align 8
  %fld.gep1063 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1062, i32 0, i32 0
  %fld.load1064 = load ptr, ptr %fld.gep1063, align 8
  %var.load1065 = load ptr, ptr %var.locals, align 8
  %a.load1066 = load ptr, ptr %var.locals, align 8
  %a.null1067 = icmp eq ptr %a.load1066, null
  br i1 %a.null1067, label %a.create1068, label %a.after1069

choice.next1055:                                  ; preds = %choice.next989
  %tag.gep1122 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1123 = load i64, ptr %tag.gep1122, align 8
  %tag.match1124 = icmp eq i64 %tag.id1123, 6
  br i1 %tag.match1124, label %choice.case1120, label %choice.next1121

a.create1068:                                     ; preds = %choice.case1054
  %arena.cur1070 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1071 = call ptr @dva_arena_alloc(ptr %arena.cur1070, i64 24)
  %arena.cur1072 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1073 = call ptr @dva_arena_alloc(ptr %arena.cur1072, i64 128)
  %a.len.gep1074 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1071, i32 0, i32 0
  store i64 0, ptr %a.len.gep1074, align 8
  %a.data.gep1075 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1071, i32 0, i32 1
  store ptr %a.buf1073, ptr %a.data.gep1075, align 8
  %a.cap.gep1076 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1071, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1076, align 8
  store ptr %a.create1071, ptr %var.locals, align 8
  br label %a.after1069

a.after1069:                                      ; preds = %a.create1068, %choice.case1054
  %a.load21077 = load ptr, ptr %var.locals, align 8
  %var.load1078 = load ptr, ptr %var.refs, align 8
  %a.load1079 = load ptr, ptr %var.refs, align 8
  %a.null1080 = icmp eq ptr %a.load1079, null
  br i1 %a.null1080, label %a.create1081, label %a.after1082

a.create1081:                                     ; preds = %a.after1069
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
  store ptr %a.create1084, ptr %var.refs, align 8
  br label %a.after1082

a.after1082:                                      ; preds = %a.create1081, %a.after1069
  %a.load21090 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1064, ptr %a.load21077, ptr %a.load21090)
  %var.load1091 = load ptr, ptr %var.ka, align 8
  %fld.gep1092 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1091, i32 0, i32 1
  %fld.load1093 = load ptr, ptr %fld.gep1092, align 8
  %var.load1094 = load ptr, ptr %var.locals, align 8
  %a.load1095 = load ptr, ptr %var.locals, align 8
  %a.null1096 = icmp eq ptr %a.load1095, null
  br i1 %a.null1096, label %a.create1097, label %a.after1098

a.create1097:                                     ; preds = %a.after1082
  %arena.cur1099 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1100 = call ptr @dva_arena_alloc(ptr %arena.cur1099, i64 24)
  %arena.cur1101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1102 = call ptr @dva_arena_alloc(ptr %arena.cur1101, i64 128)
  %a.len.gep1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 0
  store i64 0, ptr %a.len.gep1103, align 8
  %a.data.gep1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 1
  store ptr %a.buf1102, ptr %a.data.gep1104, align 8
  %a.cap.gep1105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1105, align 8
  store ptr %a.create1100, ptr %var.locals, align 8
  br label %a.after1098

a.after1098:                                      ; preds = %a.create1097, %a.after1082
  %a.load21106 = load ptr, ptr %var.locals, align 8
  %var.load1107 = load ptr, ptr %var.refs, align 8
  %a.load1108 = load ptr, ptr %var.refs, align 8
  %a.null1109 = icmp eq ptr %a.load1108, null
  br i1 %a.null1109, label %a.create1110, label %a.after1111

a.create1110:                                     ; preds = %a.after1098
  %arena.cur1112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1113 = call ptr @dva_arena_alloc(ptr %arena.cur1112, i64 24)
  %arena.cur1114 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1115 = call ptr @dva_arena_alloc(ptr %arena.cur1114, i64 128)
  %a.len.gep1116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1113, i32 0, i32 0
  store i64 0, ptr %a.len.gep1116, align 8
  %a.data.gep1117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1113, i32 0, i32 1
  store ptr %a.buf1115, ptr %a.data.gep1117, align 8
  %a.cap.gep1118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1113, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1118, align 8
  store ptr %a.create1113, ptr %var.refs, align 8
  br label %a.after1111

a.after1111:                                      ; preds = %a.create1110, %a.after1098
  %a.load21119 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1093, ptr %a.load21106, ptr %a.load21119)
  br label %choice.exit

choice.case1120:                                  ; preds = %choice.next1055
  %pay.gep1125 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1126 = load ptr, ptr %pay.gep1125, align 8
  store ptr %payload.ptr1126, ptr %var._1127, align 8
  store ptr %payload.ptr1126, ptr %var.a1128, align 8
  %var.load1129 = load ptr, ptr %var.a1128, align 8
  %fld.gep1130 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1129, i32 0, i32 5
  %fld.load1131 = load ptr, ptr %fld.gep1130, align 8
  %var.load1132 = load ptr, ptr %var.locals, align 8
  %a.load1133 = load ptr, ptr %var.locals, align 8
  %a.null1134 = icmp eq ptr %a.load1133, null
  br i1 %a.null1134, label %a.create1135, label %a.after1136

choice.next1121:                                  ; preds = %choice.next1055
  %tag.gep1189 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1190 = load i64, ptr %tag.gep1189, align 8
  %tag.match1191 = icmp eq i64 %tag.id1190, 12
  br i1 %tag.match1191, label %choice.case1187, label %choice.next1188

a.create1135:                                     ; preds = %choice.case1120
  %arena.cur1137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1138 = call ptr @dva_arena_alloc(ptr %arena.cur1137, i64 24)
  %arena.cur1139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1140 = call ptr @dva_arena_alloc(ptr %arena.cur1139, i64 128)
  %a.len.gep1141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1138, i32 0, i32 0
  store i64 0, ptr %a.len.gep1141, align 8
  %a.data.gep1142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1138, i32 0, i32 1
  store ptr %a.buf1140, ptr %a.data.gep1142, align 8
  %a.cap.gep1143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1143, align 8
  store ptr %a.create1138, ptr %var.locals, align 8
  br label %a.after1136

a.after1136:                                      ; preds = %a.create1135, %choice.case1120
  %a.load21144 = load ptr, ptr %var.locals, align 8
  %var.load1145 = load ptr, ptr %var.refs, align 8
  %a.load1146 = load ptr, ptr %var.refs, align 8
  %a.null1147 = icmp eq ptr %a.load1146, null
  br i1 %a.null1147, label %a.create1148, label %a.after1149

a.create1148:                                     ; preds = %a.after1136
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
  store ptr %a.create1151, ptr %var.refs, align 8
  br label %a.after1149

a.after1149:                                      ; preds = %a.create1148, %a.after1136
  %a.load21157 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1131, ptr %a.load21144, ptr %a.load21157)
  %var.load1158 = load ptr, ptr %var.a1128, align 8
  %fld.gep1159 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1158, i32 0, i32 6
  %fld.load1160 = load ptr, ptr %fld.gep1159, align 8
  %var.load1161 = load ptr, ptr %var.locals, align 8
  %a.load1162 = load ptr, ptr %var.locals, align 8
  %a.null1163 = icmp eq ptr %a.load1162, null
  br i1 %a.null1163, label %a.create1164, label %a.after1165

a.create1164:                                     ; preds = %a.after1149
  %arena.cur1166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1167 = call ptr @dva_arena_alloc(ptr %arena.cur1166, i64 24)
  %arena.cur1168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1169 = call ptr @dva_arena_alloc(ptr %arena.cur1168, i64 128)
  %a.len.gep1170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1167, i32 0, i32 0
  store i64 0, ptr %a.len.gep1170, align 8
  %a.data.gep1171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1167, i32 0, i32 1
  store ptr %a.buf1169, ptr %a.data.gep1171, align 8
  %a.cap.gep1172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1172, align 8
  store ptr %a.create1167, ptr %var.locals, align 8
  br label %a.after1165

a.after1165:                                      ; preds = %a.create1164, %a.after1149
  %a.load21173 = load ptr, ptr %var.locals, align 8
  %var.load1174 = load ptr, ptr %var.refs, align 8
  %a.load1175 = load ptr, ptr %var.refs, align 8
  %a.null1176 = icmp eq ptr %a.load1175, null
  br i1 %a.null1176, label %a.create1177, label %a.after1178

a.create1177:                                     ; preds = %a.after1165
  %arena.cur1179 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1180 = call ptr @dva_arena_alloc(ptr %arena.cur1179, i64 24)
  %arena.cur1181 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1182 = call ptr @dva_arena_alloc(ptr %arena.cur1181, i64 128)
  %a.len.gep1183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1180, i32 0, i32 0
  store i64 0, ptr %a.len.gep1183, align 8
  %a.data.gep1184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1180, i32 0, i32 1
  store ptr %a.buf1182, ptr %a.data.gep1184, align 8
  %a.cap.gep1185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1180, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1185, align 8
  store ptr %a.create1180, ptr %var.refs, align 8
  br label %a.after1178

a.after1178:                                      ; preds = %a.create1177, %a.after1165
  %a.load21186 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1160, ptr %a.load21173, ptr %a.load21186)
  br label %choice.exit

choice.case1187:                                  ; preds = %choice.next1121
  %pay.gep1192 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1193 = load ptr, ptr %pay.gep1192, align 8
  store ptr %payload.ptr1193, ptr %var._1194, align 8
  store ptr %payload.ptr1193, ptr %var.cy, align 8
  %var.load1195 = load ptr, ptr %var.cy, align 8
  %fld.gep1196 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1195, i32 0, i32 0
  %fld.load1197 = load ptr, ptr %fld.gep1196, align 8
  %var.load1198 = load ptr, ptr %var.locals, align 8
  %a.load1199 = load ptr, ptr %var.locals, align 8
  %a.null1200 = icmp eq ptr %a.load1199, null
  br i1 %a.null1200, label %a.create1201, label %a.after1202

choice.next1188:                                  ; preds = %choice.next1121
  %tag.gep1255 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1256 = load i64, ptr %tag.gep1255, align 8
  %tag.match1257 = icmp eq i64 %tag.id1256, 11
  br i1 %tag.match1257, label %choice.case1253, label %choice.next1254

a.create1201:                                     ; preds = %choice.case1187
  %arena.cur1203 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1204 = call ptr @dva_arena_alloc(ptr %arena.cur1203, i64 24)
  %arena.cur1205 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1206 = call ptr @dva_arena_alloc(ptr %arena.cur1205, i64 128)
  %a.len.gep1207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 0
  store i64 0, ptr %a.len.gep1207, align 8
  %a.data.gep1208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 1
  store ptr %a.buf1206, ptr %a.data.gep1208, align 8
  %a.cap.gep1209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1209, align 8
  store ptr %a.create1204, ptr %var.locals, align 8
  br label %a.after1202

a.after1202:                                      ; preds = %a.create1201, %choice.case1187
  %a.load21210 = load ptr, ptr %var.locals, align 8
  %var.load1211 = load ptr, ptr %var.refs, align 8
  %a.load1212 = load ptr, ptr %var.refs, align 8
  %a.null1213 = icmp eq ptr %a.load1212, null
  br i1 %a.null1213, label %a.create1214, label %a.after1215

a.create1214:                                     ; preds = %a.after1202
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
  store ptr %a.create1217, ptr %var.refs, align 8
  br label %a.after1215

a.after1215:                                      ; preds = %a.create1214, %a.after1202
  %a.load21223 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1197, ptr %a.load21210, ptr %a.load21223)
  %var.load1224 = load ptr, ptr %var.cy, align 8
  %fld.gep1225 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1224, i32 0, i32 1
  %fld.load1226 = load ptr, ptr %fld.gep1225, align 8
  %var.load1227 = load ptr, ptr %var.locals, align 8
  %a.load1228 = load ptr, ptr %var.locals, align 8
  %a.null1229 = icmp eq ptr %a.load1228, null
  br i1 %a.null1229, label %a.create1230, label %a.after1231

a.create1230:                                     ; preds = %a.after1215
  %arena.cur1232 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1233 = call ptr @dva_arena_alloc(ptr %arena.cur1232, i64 24)
  %arena.cur1234 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1235 = call ptr @dva_arena_alloc(ptr %arena.cur1234, i64 128)
  %a.len.gep1236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1233, i32 0, i32 0
  store i64 0, ptr %a.len.gep1236, align 8
  %a.data.gep1237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1233, i32 0, i32 1
  store ptr %a.buf1235, ptr %a.data.gep1237, align 8
  %a.cap.gep1238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1233, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1238, align 8
  store ptr %a.create1233, ptr %var.locals, align 8
  br label %a.after1231

a.after1231:                                      ; preds = %a.create1230, %a.after1215
  %a.load21239 = load ptr, ptr %var.locals, align 8
  %var.load1240 = load ptr, ptr %var.refs, align 8
  %a.load1241 = load ptr, ptr %var.refs, align 8
  %a.null1242 = icmp eq ptr %a.load1241, null
  br i1 %a.null1242, label %a.create1243, label %a.after1244

a.create1243:                                     ; preds = %a.after1231
  %arena.cur1245 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1246 = call ptr @dva_arena_alloc(ptr %arena.cur1245, i64 24)
  %arena.cur1247 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1248 = call ptr @dva_arena_alloc(ptr %arena.cur1247, i64 128)
  %a.len.gep1249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1246, i32 0, i32 0
  store i64 0, ptr %a.len.gep1249, align 8
  %a.data.gep1250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1246, i32 0, i32 1
  store ptr %a.buf1248, ptr %a.data.gep1250, align 8
  %a.cap.gep1251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1246, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1251, align 8
  store ptr %a.create1246, ptr %var.refs, align 8
  br label %a.after1244

a.after1244:                                      ; preds = %a.create1243, %a.after1231
  %a.load21252 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1226, ptr %a.load21239, ptr %a.load21252)
  br label %choice.exit

choice.case1253:                                  ; preds = %choice.next1188
  %pay.gep1258 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1259 = load ptr, ptr %pay.gep1258, align 8
  store ptr %payload.ptr1259, ptr %var._1260, align 8
  store ptr %payload.ptr1259, ptr %var.ce, align 8
  %var.load1261 = load ptr, ptr %var.ce, align 8
  %fld.gep1262 = getelementptr inbounds { ptr, ptr }, ptr %var.load1261, i32 0, i32 0
  %fld.load1263 = load ptr, ptr %fld.gep1262, align 8
  %var.load1264 = load ptr, ptr %var.locals, align 8
  %a.load1265 = load ptr, ptr %var.locals, align 8
  %a.null1266 = icmp eq ptr %a.load1265, null
  br i1 %a.null1266, label %a.create1267, label %a.after1268

choice.next1254:                                  ; preds = %choice.next1188
  %tag.gep1321 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1322 = load i64, ptr %tag.gep1321, align 8
  %tag.match1323 = icmp eq i64 %tag.id1322, 13
  br i1 %tag.match1323, label %choice.case1319, label %choice.next1320

a.create1267:                                     ; preds = %choice.case1253
  %arena.cur1269 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1270 = call ptr @dva_arena_alloc(ptr %arena.cur1269, i64 24)
  %arena.cur1271 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1272 = call ptr @dva_arena_alloc(ptr %arena.cur1271, i64 128)
  %a.len.gep1273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1270, i32 0, i32 0
  store i64 0, ptr %a.len.gep1273, align 8
  %a.data.gep1274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1270, i32 0, i32 1
  store ptr %a.buf1272, ptr %a.data.gep1274, align 8
  %a.cap.gep1275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1270, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1275, align 8
  store ptr %a.create1270, ptr %var.locals, align 8
  br label %a.after1268

a.after1268:                                      ; preds = %a.create1267, %choice.case1253
  %a.load21276 = load ptr, ptr %var.locals, align 8
  %var.load1277 = load ptr, ptr %var.refs, align 8
  %a.load1278 = load ptr, ptr %var.refs, align 8
  %a.null1279 = icmp eq ptr %a.load1278, null
  br i1 %a.null1279, label %a.create1280, label %a.after1281

a.create1280:                                     ; preds = %a.after1268
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
  store ptr %a.create1283, ptr %var.refs, align 8
  br label %a.after1281

a.after1281:                                      ; preds = %a.create1280, %a.after1268
  %a.load21289 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1263, ptr %a.load21276, ptr %a.load21289)
  %var.load1290 = load ptr, ptr %var.ce, align 8
  %fld.gep1291 = getelementptr inbounds { ptr, ptr }, ptr %var.load1290, i32 0, i32 1
  %fld.load1292 = load ptr, ptr %fld.gep1291, align 8
  %var.load1293 = load ptr, ptr %var.locals, align 8
  %a.load1294 = load ptr, ptr %var.locals, align 8
  %a.null1295 = icmp eq ptr %a.load1294, null
  br i1 %a.null1295, label %a.create1296, label %a.after1297

a.create1296:                                     ; preds = %a.after1281
  %arena.cur1298 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1299 = call ptr @dva_arena_alloc(ptr %arena.cur1298, i64 24)
  %arena.cur1300 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1301 = call ptr @dva_arena_alloc(ptr %arena.cur1300, i64 128)
  %a.len.gep1302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1299, i32 0, i32 0
  store i64 0, ptr %a.len.gep1302, align 8
  %a.data.gep1303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1299, i32 0, i32 1
  store ptr %a.buf1301, ptr %a.data.gep1303, align 8
  %a.cap.gep1304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1299, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1304, align 8
  store ptr %a.create1299, ptr %var.locals, align 8
  br label %a.after1297

a.after1297:                                      ; preds = %a.create1296, %a.after1281
  %a.load21305 = load ptr, ptr %var.locals, align 8
  %var.load1306 = load ptr, ptr %var.refs, align 8
  %a.load1307 = load ptr, ptr %var.refs, align 8
  %a.null1308 = icmp eq ptr %a.load1307, null
  br i1 %a.null1308, label %a.create1309, label %a.after1310

a.create1309:                                     ; preds = %a.after1297
  %arena.cur1311 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1312 = call ptr @dva_arena_alloc(ptr %arena.cur1311, i64 24)
  %arena.cur1313 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1314 = call ptr @dva_arena_alloc(ptr %arena.cur1313, i64 128)
  %a.len.gep1315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 0
  store i64 0, ptr %a.len.gep1315, align 8
  %a.data.gep1316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 1
  store ptr %a.buf1314, ptr %a.data.gep1316, align 8
  %a.cap.gep1317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1317, align 8
  store ptr %a.create1312, ptr %var.refs, align 8
  br label %a.after1310

a.after1310:                                      ; preds = %a.create1309, %a.after1297
  %a.load21318 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1292, ptr %a.load21305, ptr %a.load21318)
  br label %choice.exit

choice.case1319:                                  ; preds = %choice.next1254
  %pay.gep1324 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1325 = load ptr, ptr %pay.gep1324, align 8
  store ptr %payload.ptr1325, ptr %var._1326, align 8
  store ptr %payload.ptr1325, ptr %var.r, align 8
  %var.load1327 = load ptr, ptr %var.r, align 8
  %fld.gep1328 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1327, i32 0, i32 0
  %fld.load1329 = load i1, ptr %fld.gep1328, align 1
  br i1 %fld.load1329, label %choice.then1330, label %choice.exit1331

choice.next1320:                                  ; preds = %choice.next1254
  %tag.gep1469 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1470 = load i64, ptr %tag.gep1469, align 8
  %tag.match1471 = icmp eq i64 %tag.id1470, 36
  br i1 %tag.match1471, label %choice.case1467, label %choice.next1468

choice.then1330:                                  ; preds = %choice.case1319
  %var.load1332 = load ptr, ptr %var.r, align 8
  %fld.gep1333 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1332, i32 0, i32 2
  %fld.load1334 = load ptr, ptr %fld.gep1333, align 8
  %var.load1335 = load ptr, ptr %var.locals, align 8
  %a.load1336 = load ptr, ptr %var.locals, align 8
  %a.null1337 = icmp eq ptr %a.load1336, null
  br i1 %a.null1337, label %a.create1338, label %a.after1339

choice.exit1331:                                  ; preds = %a.after1352, %choice.case1319
  %var.load1361 = load ptr, ptr %var.r, align 8
  %fld.gep1362 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1361, i32 0, i32 1
  %fld.load1363 = load i1, ptr %fld.gep1362, align 1
  br i1 %fld.load1363, label %choice.then1364, label %choice.exit1365

a.create1338:                                     ; preds = %choice.then1330
  %arena.cur1340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1341 = call ptr @dva_arena_alloc(ptr %arena.cur1340, i64 24)
  %arena.cur1342 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1343 = call ptr @dva_arena_alloc(ptr %arena.cur1342, i64 128)
  %a.len.gep1344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1341, i32 0, i32 0
  store i64 0, ptr %a.len.gep1344, align 8
  %a.data.gep1345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1341, i32 0, i32 1
  store ptr %a.buf1343, ptr %a.data.gep1345, align 8
  %a.cap.gep1346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1341, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1346, align 8
  store ptr %a.create1341, ptr %var.locals, align 8
  br label %a.after1339

a.after1339:                                      ; preds = %a.create1338, %choice.then1330
  %a.load21347 = load ptr, ptr %var.locals, align 8
  %var.load1348 = load ptr, ptr %var.refs, align 8
  %a.load1349 = load ptr, ptr %var.refs, align 8
  %a.null1350 = icmp eq ptr %a.load1349, null
  br i1 %a.null1350, label %a.create1351, label %a.after1352

a.create1351:                                     ; preds = %a.after1339
  %arena.cur1353 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1354 = call ptr @dva_arena_alloc(ptr %arena.cur1353, i64 24)
  %arena.cur1355 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1356 = call ptr @dva_arena_alloc(ptr %arena.cur1355, i64 128)
  %a.len.gep1357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1354, i32 0, i32 0
  store i64 0, ptr %a.len.gep1357, align 8
  %a.data.gep1358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1354, i32 0, i32 1
  store ptr %a.buf1356, ptr %a.data.gep1358, align 8
  %a.cap.gep1359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1354, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1359, align 8
  store ptr %a.create1354, ptr %var.refs, align 8
  br label %a.after1352

a.after1352:                                      ; preds = %a.create1351, %a.after1339
  %a.load21360 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1334, ptr %a.load21347, ptr %a.load21360)
  br label %choice.exit1331

choice.then1364:                                  ; preds = %choice.exit1331
  %var.load1366 = load ptr, ptr %var.r, align 8
  %fld.gep1367 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1366, i32 0, i32 3
  %fld.load1368 = load ptr, ptr %fld.gep1367, align 8
  %tag.gep1372 = getelementptr inbounds { i64, ptr }, ptr %fld.load1368, i32 0, i32 0
  %tag.id1373 = load i64, ptr %tag.gep1372, align 8
  %tag.match1374 = icmp eq i64 %tag.id1373, 3
  br i1 %tag.match1374, label %choice.case1370, label %choice.next1371

choice.exit1365:                                  ; preds = %choice.exit1369, %choice.exit1331
  br label %choice.exit

choice.exit1369:                                  ; preds = %a.after1458, %choice.exit1408
  br label %choice.exit1365

choice.case1370:                                  ; preds = %choice.then1364
  %pay.gep1375 = getelementptr inbounds { i64, ptr }, ptr %fld.load1368, i32 0, i32 1
  %payload.ptr1376 = load ptr, ptr %pay.gep1375, align 8
  store ptr %payload.ptr1376, ptr %var._1377, align 8
  store ptr %payload.ptr1376, ptr %var.v1378, align 8
  %var.load1379 = load ptr, ptr %var.v1378, align 8
  %eq.lhs.len1380 = getelementptr inbounds { i64, ptr }, ptr %var.load1379, i32 0, i32 0
  %eq.lhs.len1381 = load i64, ptr %eq.lhs.len1380, align 8
  %eq.lhs.len1382 = and i64 %eq.lhs.len1381, 281474976710655
  %str.tag1383 = lshr i64 %eq.lhs.len1381, 48
  %tag.immortal1385 = icmp eq i64 %str.tag1383, 0
  %active.gen1386 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1387 = icmp eq i64 %str.tag1383, %active.gen1386
  %tag.fast.ok1388 = or i1 %tag.immortal1385, %tag.current1387
  br i1 %tag.fast.ok1388, label %str_ok1384, label %tag.slow_check1389

choice.next1371:                                  ; preds = %choice.then1364
  %var.load1438 = load ptr, ptr %var.r, align 8
  %fld.gep1439 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1438, i32 0, i32 3
  %fld.load1440 = load ptr, ptr %fld.gep1439, align 8
  %var.load1441 = load ptr, ptr %var.locals, align 8
  %a.load1442 = load ptr, ptr %var.locals, align 8
  %a.null1443 = icmp eq ptr %a.load1442, null
  br i1 %a.null1443, label %a.create1444, label %a.after1445

str_ok1384:                                       ; preds = %tag.slow_check1389, %choice.case1370
  %eq.rhs.len1390 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1391 = and i64 %eq.rhs.len1390, 281474976710655
  %eq.len1392 = icmp eq i64 %eq.lhs.len1382, %eq.rhs.len1391
  br i1 %eq.len1392, label %str.eq.then1393, label %str.eq.else1394

tag.slow_check1389:                               ; preds = %choice.case1370
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1383)
  br label %str_ok1384

str.eq.then1393:                                  ; preds = %str_ok1384
  %eq.lhs.data1396 = getelementptr inbounds { i64, ptr }, ptr %var.load1379, i32 0, i32 1
  %eq.lhs.data1397 = load ptr, ptr %eq.lhs.data1396, align 8
  %eq.rhs.data1398 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1399 = call i32 @memcmp(ptr %eq.lhs.data1397, ptr %eq.rhs.data1398, i64 %eq.lhs.len1382)
  %eq.cmp.zero1400 = icmp eq i32 %eq.memcmp1399, 0
  br label %str.eq.merge1395

str.eq.else1394:                                  ; preds = %str_ok1384
  br label %str.eq.merge1395

str.eq.merge1395:                                 ; preds = %str.eq.else1394, %str.eq.then1393
  %str.eq.result1401 = phi i1 [ %eq.cmp.zero1400, %str.eq.then1393 ], [ false, %str.eq.else1394 ]
  br i1 %str.eq.result1401, label %and.46.then, label %and.46.else

and.46.then:                                      ; preds = %str.eq.merge1395
  %var.load1402 = load ptr, ptr %var.r, align 8
  %fld.gep1403 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1402, i32 0, i32 0
  %fld.load1404 = load i1, ptr %fld.gep1403, align 1
  %nottmp1405 = xor i1 %fld.load1404, true
  br label %and.46.exit

and.46.else:                                      ; preds = %str.eq.merge1395
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %nottmp1405, %and.46.then ], [ %str.eq.result1401, %and.46.else ]
  %nottmp1406 = xor i1 %and.46.phi, true
  br i1 %nottmp1406, label %choice.then1407, label %choice.exit1408

choice.then1407:                                  ; preds = %and.46.exit
  %var.load1409 = load ptr, ptr %var.r, align 8
  %fld.gep1410 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1409, i32 0, i32 3
  %fld.load1411 = load ptr, ptr %fld.gep1410, align 8
  %var.load1412 = load ptr, ptr %var.locals, align 8
  %a.load1413 = load ptr, ptr %var.locals, align 8
  %a.null1414 = icmp eq ptr %a.load1413, null
  br i1 %a.null1414, label %a.create1415, label %a.after1416

choice.exit1408:                                  ; preds = %a.after1429, %and.46.exit
  br label %choice.exit1369

a.create1415:                                     ; preds = %choice.then1407
  %arena.cur1417 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1418 = call ptr @dva_arena_alloc(ptr %arena.cur1417, i64 24)
  %arena.cur1419 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1420 = call ptr @dva_arena_alloc(ptr %arena.cur1419, i64 128)
  %a.len.gep1421 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1418, i32 0, i32 0
  store i64 0, ptr %a.len.gep1421, align 8
  %a.data.gep1422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1418, i32 0, i32 1
  store ptr %a.buf1420, ptr %a.data.gep1422, align 8
  %a.cap.gep1423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1418, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1423, align 8
  store ptr %a.create1418, ptr %var.locals, align 8
  br label %a.after1416

a.after1416:                                      ; preds = %a.create1415, %choice.then1407
  %a.load21424 = load ptr, ptr %var.locals, align 8
  %var.load1425 = load ptr, ptr %var.refs, align 8
  %a.load1426 = load ptr, ptr %var.refs, align 8
  %a.null1427 = icmp eq ptr %a.load1426, null
  br i1 %a.null1427, label %a.create1428, label %a.after1429

a.create1428:                                     ; preds = %a.after1416
  %arena.cur1430 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1431 = call ptr @dva_arena_alloc(ptr %arena.cur1430, i64 24)
  %arena.cur1432 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1433 = call ptr @dva_arena_alloc(ptr %arena.cur1432, i64 128)
  %a.len.gep1434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 0
  store i64 0, ptr %a.len.gep1434, align 8
  %a.data.gep1435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 1
  store ptr %a.buf1433, ptr %a.data.gep1435, align 8
  %a.cap.gep1436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1436, align 8
  store ptr %a.create1431, ptr %var.refs, align 8
  br label %a.after1429

a.after1429:                                      ; preds = %a.create1428, %a.after1416
  %a.load21437 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1411, ptr %a.load21424, ptr %a.load21437)
  br label %choice.exit1408

a.create1444:                                     ; preds = %choice.next1371
  %arena.cur1446 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1447 = call ptr @dva_arena_alloc(ptr %arena.cur1446, i64 24)
  %arena.cur1448 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1449 = call ptr @dva_arena_alloc(ptr %arena.cur1448, i64 128)
  %a.len.gep1450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 0
  store i64 0, ptr %a.len.gep1450, align 8
  %a.data.gep1451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 1
  store ptr %a.buf1449, ptr %a.data.gep1451, align 8
  %a.cap.gep1452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1452, align 8
  store ptr %a.create1447, ptr %var.locals, align 8
  br label %a.after1445

a.after1445:                                      ; preds = %a.create1444, %choice.next1371
  %a.load21453 = load ptr, ptr %var.locals, align 8
  %var.load1454 = load ptr, ptr %var.refs, align 8
  %a.load1455 = load ptr, ptr %var.refs, align 8
  %a.null1456 = icmp eq ptr %a.load1455, null
  br i1 %a.null1456, label %a.create1457, label %a.after1458

a.create1457:                                     ; preds = %a.after1445
  %arena.cur1459 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1460 = call ptr @dva_arena_alloc(ptr %arena.cur1459, i64 24)
  %arena.cur1461 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1462 = call ptr @dva_arena_alloc(ptr %arena.cur1461, i64 128)
  %a.len.gep1463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1460, i32 0, i32 0
  store i64 0, ptr %a.len.gep1463, align 8
  %a.data.gep1464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1460, i32 0, i32 1
  store ptr %a.buf1462, ptr %a.data.gep1464, align 8
  %a.cap.gep1465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1460, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1465, align 8
  store ptr %a.create1460, ptr %var.refs, align 8
  br label %a.after1458

a.after1458:                                      ; preds = %a.create1457, %a.after1445
  %a.load21466 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1440, ptr %a.load21453, ptr %a.load21466)
  br label %choice.exit1369

choice.case1467:                                  ; preds = %choice.next1320
  %pay.gep1472 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1473 = load ptr, ptr %pay.gep1472, align 8
  store ptr %payload.ptr1473, ptr %var._1474, align 8
  store ptr %payload.ptr1473, ptr %var.na, align 8
  %var.load1475 = load ptr, ptr %var.na, align 8
  %fld.gep1476 = getelementptr inbounds { ptr, ptr }, ptr %var.load1475, i32 0, i32 1
  %fld.load1477 = load ptr, ptr %fld.gep1476, align 8
  %var.load1478 = load ptr, ptr %var.locals, align 8
  %a.load1479 = load ptr, ptr %var.locals, align 8
  %a.null1480 = icmp eq ptr %a.load1479, null
  br i1 %a.null1480, label %a.create1481, label %a.after1482

choice.next1468:                                  ; preds = %choice.next1320
  %tag.gep1506 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1507 = load i64, ptr %tag.gep1506, align 8
  %tag.match1508 = icmp eq i64 %tag.id1507, 18
  br i1 %tag.match1508, label %choice.case1504, label %choice.next1505

a.create1481:                                     ; preds = %choice.case1467
  %arena.cur1483 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1484 = call ptr @dva_arena_alloc(ptr %arena.cur1483, i64 24)
  %arena.cur1485 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1486 = call ptr @dva_arena_alloc(ptr %arena.cur1485, i64 128)
  %a.len.gep1487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1484, i32 0, i32 0
  store i64 0, ptr %a.len.gep1487, align 8
  %a.data.gep1488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1484, i32 0, i32 1
  store ptr %a.buf1486, ptr %a.data.gep1488, align 8
  %a.cap.gep1489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1484, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1489, align 8
  store ptr %a.create1484, ptr %var.locals, align 8
  br label %a.after1482

a.after1482:                                      ; preds = %a.create1481, %choice.case1467
  %a.load21490 = load ptr, ptr %var.locals, align 8
  %var.load1491 = load ptr, ptr %var.refs, align 8
  %a.load1492 = load ptr, ptr %var.refs, align 8
  %a.null1493 = icmp eq ptr %a.load1492, null
  br i1 %a.null1493, label %a.create1494, label %a.after1495

a.create1494:                                     ; preds = %a.after1482
  %arena.cur1496 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1497 = call ptr @dva_arena_alloc(ptr %arena.cur1496, i64 24)
  %arena.cur1498 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1499 = call ptr @dva_arena_alloc(ptr %arena.cur1498, i64 128)
  %a.len.gep1500 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1497, i32 0, i32 0
  store i64 0, ptr %a.len.gep1500, align 8
  %a.data.gep1501 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1497, i32 0, i32 1
  store ptr %a.buf1499, ptr %a.data.gep1501, align 8
  %a.cap.gep1502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1497, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1502, align 8
  store ptr %a.create1497, ptr %var.refs, align 8
  br label %a.after1495

a.after1495:                                      ; preds = %a.create1494, %a.after1482
  %a.load21503 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1477, ptr %a.load21490, ptr %a.load21503)
  br label %choice.exit

choice.case1504:                                  ; preds = %choice.next1468
  %pay.gep1509 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1510 = load ptr, ptr %pay.gep1509, align 8
  store ptr %payload.ptr1510, ptr %var._1511, align 8
  store ptr %payload.ptr1510, ptr %var.v1512, align 8
  %var.load1513 = load ptr, ptr %var.v1512, align 8
  %fld.gep1514 = getelementptr inbounds { ptr, ptr }, ptr %var.load1513, i32 0, i32 1
  %fld.load1515 = load ptr, ptr %fld.gep1514, align 8
  %arr.cycle.len1516 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1515, i32 0, i32 0
  %arr.cycle.len1517 = load i64, ptr %arr.cycle.len1516, align 8
  %arr.cycle.data1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1515, i32 0, i32 1
  %arr.cycle.data1519 = load ptr, ptr %arr.cycle.data1518, align 8
  store i64 0, ptr %loop.idx.47, align 8
  %cycle.prev.u1520 = load ptr, ptr %var._1511, align 8
  br label %loop.header.47

choice.next1505:                                  ; preds = %choice.next1468
  %tag.gep1560 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1561 = load i64, ptr %tag.gep1560, align 8
  %tag.match1562 = icmp eq i64 %tag.id1561, 25
  br i1 %tag.match1562, label %choice.case1558, label %choice.next1559

loop.header.47:                                   ; preds = %loop.latch.47, %choice.case1504
  %counter.load1521 = load i64, ptr %loop.idx.47, align 8
  %loop.cond1522 = icmp slt i64 %counter.load1521, %arr.cycle.len1517
  br i1 %loop.cond1522, label %loop.body.47, label %loop.exit.nat.47

loop.body.47:                                     ; preds = %loop.header.47
  %loop.rel.i1523 = sub i64 %counter.load1521, 0
  store i64 1, ptr %loop.step.47, align 8
  %arr.elem.gep1524 = getelementptr i64, ptr %arr.cycle.data1519, i64 %counter.load1521
  %arr.elem.raw1525 = load i64, ptr %arr.elem.gep1524, align 8
  %slot.i2p1526 = inttoptr i64 %arr.elem.raw1525 to ptr
  store i64 %loop.rel.i1523, ptr %var._i1527, align 8
  store ptr %slot.i2p1526, ptr %var._1528, align 8
  store ptr %slot.i2p1526, ptr %var.varg, align 8
  %var.load1529 = load ptr, ptr %var.varg, align 8
  %var.load1530 = load ptr, ptr %var.locals, align 8
  %a.load1531 = load ptr, ptr %var.locals, align 8
  %a.null1532 = icmp eq ptr %a.load1531, null
  br i1 %a.null1532, label %a.create1533, label %a.after1534

loop.exit.nat.47:                                 ; preds = %loop.header.47
  br label %loop.exit.47

loop.latch.47:                                    ; preds = %a.after1547
  %step.val1556 = load i64, ptr %loop.step.47, align 8
  %loop.next1557 = add i64 %counter.load1521, %step.val1556
  store i64 %loop.next1557, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.exit.47:                                     ; preds = %loop.exit.nat.47
  store ptr %cycle.prev.u1520, ptr %var._1511, align 8
  br label %choice.exit

a.create1533:                                     ; preds = %loop.body.47
  %arena.cur1535 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1536 = call ptr @dva_arena_alloc(ptr %arena.cur1535, i64 24)
  %arena.cur1537 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1538 = call ptr @dva_arena_alloc(ptr %arena.cur1537, i64 128)
  %a.len.gep1539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1536, i32 0, i32 0
  store i64 0, ptr %a.len.gep1539, align 8
  %a.data.gep1540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1536, i32 0, i32 1
  store ptr %a.buf1538, ptr %a.data.gep1540, align 8
  %a.cap.gep1541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1536, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1541, align 8
  store ptr %a.create1536, ptr %var.locals, align 8
  br label %a.after1534

a.after1534:                                      ; preds = %a.create1533, %loop.body.47
  %a.load21542 = load ptr, ptr %var.locals, align 8
  %var.load1543 = load ptr, ptr %var.refs, align 8
  %a.load1544 = load ptr, ptr %var.refs, align 8
  %a.null1545 = icmp eq ptr %a.load1544, null
  br i1 %a.null1545, label %a.create1546, label %a.after1547

a.create1546:                                     ; preds = %a.after1534
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
  store ptr %a.create1549, ptr %var.refs, align 8
  br label %a.after1547

a.after1547:                                      ; preds = %a.create1546, %a.after1534
  %a.load21555 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1529, ptr %a.load21542, ptr %a.load21555)
  br label %loop.latch.47

choice.case1558:                                  ; preds = %choice.next1505
  %pay.gep1563 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1564 = load ptr, ptr %pay.gep1563, align 8
  store ptr %payload.ptr1564, ptr %var._1565, align 8
  store ptr %payload.ptr1564, ptr %var.cp, align 8
  %var.load1566 = load ptr, ptr %var.cp, align 8
  %var.load1567 = load ptr, ptr %var.locals, align 8
  %a.load1568 = load ptr, ptr %var.locals, align 8
  %a.null1569 = icmp eq ptr %a.load1568, null
  br i1 %a.null1569, label %a.create1570, label %a.after1571

choice.next1559:                                  ; preds = %choice.next1505
  %tag.gep1595 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1596 = load i64, ptr %tag.gep1595, align 8
  %tag.match1597 = icmp eq i64 %tag.id1596, 27
  br i1 %tag.match1597, label %choice.case1593, label %choice.next1594

a.create1570:                                     ; preds = %choice.case1558
  %arena.cur1572 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1573 = call ptr @dva_arena_alloc(ptr %arena.cur1572, i64 24)
  %arena.cur1574 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1575 = call ptr @dva_arena_alloc(ptr %arena.cur1574, i64 128)
  %a.len.gep1576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 0
  store i64 0, ptr %a.len.gep1576, align 8
  %a.data.gep1577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 1
  store ptr %a.buf1575, ptr %a.data.gep1577, align 8
  %a.cap.gep1578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1578, align 8
  store ptr %a.create1573, ptr %var.locals, align 8
  br label %a.after1571

a.after1571:                                      ; preds = %a.create1570, %choice.case1558
  %a.load21579 = load ptr, ptr %var.locals, align 8
  %var.load1580 = load ptr, ptr %var.refs, align 8
  %a.load1581 = load ptr, ptr %var.refs, align 8
  %a.null1582 = icmp eq ptr %a.load1581, null
  br i1 %a.null1582, label %a.create1583, label %a.after1584

a.create1583:                                     ; preds = %a.after1571
  %arena.cur1585 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1586 = call ptr @dva_arena_alloc(ptr %arena.cur1585, i64 24)
  %arena.cur1587 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1588 = call ptr @dva_arena_alloc(ptr %arena.cur1587, i64 128)
  %a.len.gep1589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 0
  store i64 0, ptr %a.len.gep1589, align 8
  %a.data.gep1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 1
  store ptr %a.buf1588, ptr %a.data.gep1590, align 8
  %a.cap.gep1591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1586, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1591, align 8
  store ptr %a.create1586, ptr %var.refs, align 8
  br label %a.after1584

a.after1584:                                      ; preds = %a.create1583, %a.after1571
  %a.load21592 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1566, ptr %a.load21579, ptr %a.load21592)
  br label %choice.exit

choice.case1593:                                  ; preds = %choice.next1559
  %pay.gep1598 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1599 = load ptr, ptr %pay.gep1598, align 8
  store ptr %payload.ptr1599, ptr %var._1600, align 8
  store ptr %payload.ptr1599, ptr %var.bc, align 8
  %var.load1601 = load ptr, ptr %var.bc, align 8
  %var.load1602 = load ptr, ptr %var.locals, align 8
  %a.load1603 = load ptr, ptr %var.locals, align 8
  %a.null1604 = icmp eq ptr %a.load1603, null
  br i1 %a.null1604, label %a.create1605, label %a.after1606

choice.next1594:                                  ; preds = %choice.next1559
  %tag.gep1630 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1631 = load i64, ptr %tag.gep1630, align 8
  %tag.match1632 = icmp eq i64 %tag.id1631, 22
  br i1 %tag.match1632, label %choice.case1628, label %choice.next1629

a.create1605:                                     ; preds = %choice.case1593
  %arena.cur1607 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1608 = call ptr @dva_arena_alloc(ptr %arena.cur1607, i64 24)
  %arena.cur1609 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1610 = call ptr @dva_arena_alloc(ptr %arena.cur1609, i64 128)
  %a.len.gep1611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1608, i32 0, i32 0
  store i64 0, ptr %a.len.gep1611, align 8
  %a.data.gep1612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1608, i32 0, i32 1
  store ptr %a.buf1610, ptr %a.data.gep1612, align 8
  %a.cap.gep1613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1608, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1613, align 8
  store ptr %a.create1608, ptr %var.locals, align 8
  br label %a.after1606

a.after1606:                                      ; preds = %a.create1605, %choice.case1593
  %a.load21614 = load ptr, ptr %var.locals, align 8
  %var.load1615 = load ptr, ptr %var.refs, align 8
  %a.load1616 = load ptr, ptr %var.refs, align 8
  %a.null1617 = icmp eq ptr %a.load1616, null
  br i1 %a.null1617, label %a.create1618, label %a.after1619

a.create1618:                                     ; preds = %a.after1606
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
  store ptr %a.create1621, ptr %var.refs, align 8
  br label %a.after1619

a.after1619:                                      ; preds = %a.create1618, %a.after1606
  %a.load21627 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1601, ptr %a.load21614, ptr %a.load21627)
  br label %choice.exit

choice.case1628:                                  ; preds = %choice.next1594
  %pay.gep1633 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1634 = load ptr, ptr %pay.gep1633, align 8
  store ptr %payload.ptr1634, ptr %var._1635, align 8
  store ptr %payload.ptr1634, ptr %var.tc, align 8
  %var.load1636 = load ptr, ptr %var.tc, align 8
  %fld.gep1637 = getelementptr inbounds { ptr, ptr }, ptr %var.load1636, i32 0, i32 1
  %fld.load1638 = load ptr, ptr %fld.gep1637, align 8
  %var.load1639 = load ptr, ptr %var.locals, align 8
  %a.load1640 = load ptr, ptr %var.locals, align 8
  %a.null1641 = icmp eq ptr %a.load1640, null
  br i1 %a.null1641, label %a.create1642, label %a.after1643

choice.next1629:                                  ; preds = %choice.next1594
  %tag.gep1667 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1668 = load i64, ptr %tag.gep1667, align 8
  %tag.match1669 = icmp eq i64 %tag.id1668, 30
  br i1 %tag.match1669, label %choice.case1665, label %choice.next1666

a.create1642:                                     ; preds = %choice.case1628
  %arena.cur1644 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1645 = call ptr @dva_arena_alloc(ptr %arena.cur1644, i64 24)
  %arena.cur1646 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1647 = call ptr @dva_arena_alloc(ptr %arena.cur1646, i64 128)
  %a.len.gep1648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1645, i32 0, i32 0
  store i64 0, ptr %a.len.gep1648, align 8
  %a.data.gep1649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1645, i32 0, i32 1
  store ptr %a.buf1647, ptr %a.data.gep1649, align 8
  %a.cap.gep1650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1645, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1650, align 8
  store ptr %a.create1645, ptr %var.locals, align 8
  br label %a.after1643

a.after1643:                                      ; preds = %a.create1642, %choice.case1628
  %a.load21651 = load ptr, ptr %var.locals, align 8
  %var.load1652 = load ptr, ptr %var.refs, align 8
  %a.load1653 = load ptr, ptr %var.refs, align 8
  %a.null1654 = icmp eq ptr %a.load1653, null
  br i1 %a.null1654, label %a.create1655, label %a.after1656

a.create1655:                                     ; preds = %a.after1643
  %arena.cur1657 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 24)
  %arena.cur1659 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1660 = call ptr @dva_arena_alloc(ptr %arena.cur1659, i64 128)
  %a.len.gep1661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 0
  store i64 0, ptr %a.len.gep1661, align 8
  %a.data.gep1662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 1
  store ptr %a.buf1660, ptr %a.data.gep1662, align 8
  %a.cap.gep1663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1663, align 8
  store ptr %a.create1658, ptr %var.refs, align 8
  br label %a.after1656

a.after1656:                                      ; preds = %a.create1655, %a.after1643
  %a.load21664 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1638, ptr %a.load21651, ptr %a.load21664)
  br label %choice.exit

choice.case1665:                                  ; preds = %choice.next1629
  %pay.gep1670 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1671 = load ptr, ptr %pay.gep1670, align 8
  store ptr %payload.ptr1671, ptr %var._1672, align 8
  store ptr %payload.ptr1671, ptr %var.ct, align 8
  %var.load1673 = load ptr, ptr %var.ct, align 8
  %var.load1674 = load ptr, ptr %var.locals, align 8
  %a.load1675 = load ptr, ptr %var.locals, align 8
  %a.null1676 = icmp eq ptr %a.load1675, null
  br i1 %a.null1676, label %a.create1677, label %a.after1678

choice.next1666:                                  ; preds = %choice.next1629
  %tag.gep1702 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1703 = load i64, ptr %tag.gep1702, align 8
  %tag.match1704 = icmp eq i64 %tag.id1703, 31
  br i1 %tag.match1704, label %choice.case1700, label %choice.next1701

a.create1677:                                     ; preds = %choice.case1665
  %arena.cur1679 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1680 = call ptr @dva_arena_alloc(ptr %arena.cur1679, i64 24)
  %arena.cur1681 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1682 = call ptr @dva_arena_alloc(ptr %arena.cur1681, i64 128)
  %a.len.gep1683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 0
  store i64 0, ptr %a.len.gep1683, align 8
  %a.data.gep1684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 1
  store ptr %a.buf1682, ptr %a.data.gep1684, align 8
  %a.cap.gep1685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1685, align 8
  store ptr %a.create1680, ptr %var.locals, align 8
  br label %a.after1678

a.after1678:                                      ; preds = %a.create1677, %choice.case1665
  %a.load21686 = load ptr, ptr %var.locals, align 8
  %var.load1687 = load ptr, ptr %var.refs, align 8
  %a.load1688 = load ptr, ptr %var.refs, align 8
  %a.null1689 = icmp eq ptr %a.load1688, null
  br i1 %a.null1689, label %a.create1690, label %a.after1691

a.create1690:                                     ; preds = %a.after1678
  %arena.cur1692 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1693 = call ptr @dva_arena_alloc(ptr %arena.cur1692, i64 24)
  %arena.cur1694 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1695 = call ptr @dva_arena_alloc(ptr %arena.cur1694, i64 128)
  %a.len.gep1696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1693, i32 0, i32 0
  store i64 0, ptr %a.len.gep1696, align 8
  %a.data.gep1697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1693, i32 0, i32 1
  store ptr %a.buf1695, ptr %a.data.gep1697, align 8
  %a.cap.gep1698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1693, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1698, align 8
  store ptr %a.create1693, ptr %var.refs, align 8
  br label %a.after1691

a.after1691:                                      ; preds = %a.create1690, %a.after1678
  %a.load21699 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1673, ptr %a.load21686, ptr %a.load21699)
  br label %choice.exit

choice.case1700:                                  ; preds = %choice.next1666
  %pay.gep1705 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1706 = load ptr, ptr %pay.gep1705, align 8
  store ptr %payload.ptr1706, ptr %var._1707, align 8
  store ptr %payload.ptr1706, ptr %var.sp, align 8
  %arena.cur1708 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1708, i64 16)
  %tag.gep1709 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1709, align 8
  %pay.gep1710 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1711 = load ptr, ptr %var.sp, align 8
  store ptr %var.load1711, ptr %pay.gep1710, align 8
  %var.load1712 = load ptr, ptr %var.locals, align 8
  %a.load1713 = load ptr, ptr %var.locals, align 8
  %a.null1714 = icmp eq ptr %a.load1713, null
  br i1 %a.null1714, label %a.create1715, label %a.after1716

choice.next1701:                                  ; preds = %choice.next1666
  %tag.gep1740 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1741 = load i64, ptr %tag.gep1740, align 8
  %tag.match1742 = icmp eq i64 %tag.id1741, 32
  br i1 %tag.match1742, label %choice.case1738, label %choice.next1739

a.create1715:                                     ; preds = %choice.case1700
  %arena.cur1717 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1718 = call ptr @dva_arena_alloc(ptr %arena.cur1717, i64 24)
  %arena.cur1719 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1720 = call ptr @dva_arena_alloc(ptr %arena.cur1719, i64 128)
  %a.len.gep1721 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1718, i32 0, i32 0
  store i64 0, ptr %a.len.gep1721, align 8
  %a.data.gep1722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1718, i32 0, i32 1
  store ptr %a.buf1720, ptr %a.data.gep1722, align 8
  %a.cap.gep1723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1718, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1723, align 8
  store ptr %a.create1718, ptr %var.locals, align 8
  br label %a.after1716

a.after1716:                                      ; preds = %a.create1715, %choice.case1700
  %a.load21724 = load ptr, ptr %var.locals, align 8
  %var.load1725 = load ptr, ptr %var.refs, align 8
  %a.load1726 = load ptr, ptr %var.refs, align 8
  %a.null1727 = icmp eq ptr %a.load1726, null
  br i1 %a.null1727, label %a.create1728, label %a.after1729

a.create1728:                                     ; preds = %a.after1716
  %arena.cur1730 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1731 = call ptr @dva_arena_alloc(ptr %arena.cur1730, i64 24)
  %arena.cur1732 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1733 = call ptr @dva_arena_alloc(ptr %arena.cur1732, i64 128)
  %a.len.gep1734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 0
  store i64 0, ptr %a.len.gep1734, align 8
  %a.data.gep1735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 1
  store ptr %a.buf1733, ptr %a.data.gep1735, align 8
  %a.cap.gep1736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1736, align 8
  store ptr %a.create1731, ptr %var.refs, align 8
  br label %a.after1729

a.after1729:                                      ; preds = %a.create1728, %a.after1716
  %a.load21737 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21724, ptr %a.load21737)
  br label %choice.exit

choice.case1738:                                  ; preds = %choice.next1701
  %pay.gep1743 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1744 = load ptr, ptr %pay.gep1743, align 8
  store ptr %payload.ptr1744, ptr %var._1745, align 8
  store ptr %payload.ptr1744, ptr %var.jn, align 8
  %var.load1746 = load ptr, ptr %var.jn, align 8
  %var.load1747 = load ptr, ptr %var.locals, align 8
  %a.load1748 = load ptr, ptr %var.locals, align 8
  %a.null1749 = icmp eq ptr %a.load1748, null
  br i1 %a.null1749, label %a.create1750, label %a.after1751

choice.next1739:                                  ; preds = %choice.next1701
  %tag.gep1775 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1776 = load i64, ptr %tag.gep1775, align 8
  %tag.match1777 = icmp eq i64 %tag.id1776, 33
  br i1 %tag.match1777, label %choice.case1773, label %choice.next1774

a.create1750:                                     ; preds = %choice.case1738
  %arena.cur1752 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1753 = call ptr @dva_arena_alloc(ptr %arena.cur1752, i64 24)
  %arena.cur1754 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1755 = call ptr @dva_arena_alloc(ptr %arena.cur1754, i64 128)
  %a.len.gep1756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1753, i32 0, i32 0
  store i64 0, ptr %a.len.gep1756, align 8
  %a.data.gep1757 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1753, i32 0, i32 1
  store ptr %a.buf1755, ptr %a.data.gep1757, align 8
  %a.cap.gep1758 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1753, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1758, align 8
  store ptr %a.create1753, ptr %var.locals, align 8
  br label %a.after1751

a.after1751:                                      ; preds = %a.create1750, %choice.case1738
  %a.load21759 = load ptr, ptr %var.locals, align 8
  %var.load1760 = load ptr, ptr %var.refs, align 8
  %a.load1761 = load ptr, ptr %var.refs, align 8
  %a.null1762 = icmp eq ptr %a.load1761, null
  br i1 %a.null1762, label %a.create1763, label %a.after1764

a.create1763:                                     ; preds = %a.after1751
  %arena.cur1765 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1766 = call ptr @dva_arena_alloc(ptr %arena.cur1765, i64 24)
  %arena.cur1767 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1768 = call ptr @dva_arena_alloc(ptr %arena.cur1767, i64 128)
  %a.len.gep1769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1766, i32 0, i32 0
  store i64 0, ptr %a.len.gep1769, align 8
  %a.data.gep1770 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1766, i32 0, i32 1
  store ptr %a.buf1768, ptr %a.data.gep1770, align 8
  %a.cap.gep1771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1766, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1771, align 8
  store ptr %a.create1766, ptr %var.refs, align 8
  br label %a.after1764

a.after1764:                                      ; preds = %a.create1763, %a.after1751
  %a.load21772 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1746, ptr %a.load21759, ptr %a.load21772)
  br label %choice.exit

choice.case1773:                                  ; preds = %choice.next1739
  %pay.gep1778 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1779 = load ptr, ptr %pay.gep1778, align 8
  store ptr %payload.ptr1779, ptr %var._1780, align 8
  store ptr %payload.ptr1779, ptr %var.ex, align 8
  %var.load1781 = load ptr, ptr %var.ex, align 8
  %var.load1782 = load ptr, ptr %var.locals, align 8
  %a.load1783 = load ptr, ptr %var.locals, align 8
  %a.null1784 = icmp eq ptr %a.load1783, null
  br i1 %a.null1784, label %a.create1785, label %a.after1786

choice.next1774:                                  ; preds = %choice.next1739
  %tag.gep1810 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1811 = load i64, ptr %tag.gep1810, align 8
  %tag.match1812 = icmp eq i64 %tag.id1811, 38
  br i1 %tag.match1812, label %choice.case1808, label %choice.next1809

a.create1785:                                     ; preds = %choice.case1773
  %arena.cur1787 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1788 = call ptr @dva_arena_alloc(ptr %arena.cur1787, i64 24)
  %arena.cur1789 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1790 = call ptr @dva_arena_alloc(ptr %arena.cur1789, i64 128)
  %a.len.gep1791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 0
  store i64 0, ptr %a.len.gep1791, align 8
  %a.data.gep1792 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 1
  store ptr %a.buf1790, ptr %a.data.gep1792, align 8
  %a.cap.gep1793 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1793, align 8
  store ptr %a.create1788, ptr %var.locals, align 8
  br label %a.after1786

a.after1786:                                      ; preds = %a.create1785, %choice.case1773
  %a.load21794 = load ptr, ptr %var.locals, align 8
  %var.load1795 = load ptr, ptr %var.refs, align 8
  %a.load1796 = load ptr, ptr %var.refs, align 8
  %a.null1797 = icmp eq ptr %a.load1796, null
  br i1 %a.null1797, label %a.create1798, label %a.after1799

a.create1798:                                     ; preds = %a.after1786
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
  store ptr %a.create1801, ptr %var.refs, align 8
  br label %a.after1799

a.after1799:                                      ; preds = %a.create1798, %a.after1786
  %a.load21807 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1781, ptr %a.load21794, ptr %a.load21807)
  br label %choice.exit

choice.case1808:                                  ; preds = %choice.next1774
  %pay.gep1813 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1814 = load ptr, ptr %pay.gep1813, align 8
  store ptr %payload.ptr1814, ptr %var._1815, align 8
  store ptr %payload.ptr1814, ptr %var.ud, align 8
  %var.load1816 = load ptr, ptr %var.ud, align 8
  %fld.gep1817 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1816, i32 0, i32 1
  %fld.load1818 = load ptr, ptr %fld.gep1817, align 8
  %var.load1819 = load ptr, ptr %var.locals, align 8
  %a.load1820 = load ptr, ptr %var.locals, align 8
  %a.null1821 = icmp eq ptr %a.load1820, null
  br i1 %a.null1821, label %a.create1822, label %a.after1823

choice.next1809:                                  ; preds = %choice.next1774
  %tag.gep1847 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1848 = load i64, ptr %tag.gep1847, align 8
  %tag.match1849 = icmp eq i64 %tag.id1848, 37
  br i1 %tag.match1849, label %choice.case1845, label %choice.next1846

a.create1822:                                     ; preds = %choice.case1808
  %arena.cur1824 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1825 = call ptr @dva_arena_alloc(ptr %arena.cur1824, i64 24)
  %arena.cur1826 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1827 = call ptr @dva_arena_alloc(ptr %arena.cur1826, i64 128)
  %a.len.gep1828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1825, i32 0, i32 0
  store i64 0, ptr %a.len.gep1828, align 8
  %a.data.gep1829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1825, i32 0, i32 1
  store ptr %a.buf1827, ptr %a.data.gep1829, align 8
  %a.cap.gep1830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1825, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1830, align 8
  store ptr %a.create1825, ptr %var.locals, align 8
  br label %a.after1823

a.after1823:                                      ; preds = %a.create1822, %choice.case1808
  %a.load21831 = load ptr, ptr %var.locals, align 8
  %var.load1832 = load ptr, ptr %var.refs, align 8
  %a.load1833 = load ptr, ptr %var.refs, align 8
  %a.null1834 = icmp eq ptr %a.load1833, null
  br i1 %a.null1834, label %a.create1835, label %a.after1836

a.create1835:                                     ; preds = %a.after1823
  %arena.cur1837 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1838 = call ptr @dva_arena_alloc(ptr %arena.cur1837, i64 24)
  %arena.cur1839 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1840 = call ptr @dva_arena_alloc(ptr %arena.cur1839, i64 128)
  %a.len.gep1841 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1838, i32 0, i32 0
  store i64 0, ptr %a.len.gep1841, align 8
  %a.data.gep1842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1838, i32 0, i32 1
  store ptr %a.buf1840, ptr %a.data.gep1842, align 8
  %a.cap.gep1843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1838, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1843, align 8
  store ptr %a.create1838, ptr %var.refs, align 8
  br label %a.after1836

a.after1836:                                      ; preds = %a.create1835, %a.after1823
  %a.load21844 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1818, ptr %a.load21831, ptr %a.load21844)
  br label %choice.exit

choice.case1845:                                  ; preds = %choice.next1809
  %pay.gep1850 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1851 = load ptr, ptr %pay.gep1850, align 8
  store ptr %payload.ptr1851, ptr %var._1852, align 8
  store ptr %payload.ptr1851, ptr %var.r1853, align 8
  %var.load1854 = load ptr, ptr %var.r1853, align 8
  %fld.gep1855 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1854, i32 0, i32 0
  %fld.load1856 = load i1, ptr %fld.gep1855, align 1
  br i1 %fld.load1856, label %choice.then1857, label %choice.exit1858

choice.next1846:                                  ; preds = %choice.next1809
  %tag.gep1890 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1891 = load i64, ptr %tag.gep1890, align 8
  %tag.match1892 = icmp eq i64 %tag.id1891, 29
  br i1 %tag.match1892, label %choice.case1888, label %choice.next1889

choice.then1857:                                  ; preds = %choice.case1845
  %var.load1859 = load ptr, ptr %var.r1853, align 8
  %fld.gep1860 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1859, i32 0, i32 1
  %fld.load1861 = load ptr, ptr %fld.gep1860, align 8
  %var.load1862 = load ptr, ptr %var.locals, align 8
  %a.load1863 = load ptr, ptr %var.locals, align 8
  %a.null1864 = icmp eq ptr %a.load1863, null
  br i1 %a.null1864, label %a.create1865, label %a.after1866

choice.exit1858:                                  ; preds = %a.after1879, %choice.case1845
  br label %choice.exit

a.create1865:                                     ; preds = %choice.then1857
  %arena.cur1867 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1868 = call ptr @dva_arena_alloc(ptr %arena.cur1867, i64 24)
  %arena.cur1869 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1870 = call ptr @dva_arena_alloc(ptr %arena.cur1869, i64 128)
  %a.len.gep1871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1868, i32 0, i32 0
  store i64 0, ptr %a.len.gep1871, align 8
  %a.data.gep1872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1868, i32 0, i32 1
  store ptr %a.buf1870, ptr %a.data.gep1872, align 8
  %a.cap.gep1873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1868, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1873, align 8
  store ptr %a.create1868, ptr %var.locals, align 8
  br label %a.after1866

a.after1866:                                      ; preds = %a.create1865, %choice.then1857
  %a.load21874 = load ptr, ptr %var.locals, align 8
  %var.load1875 = load ptr, ptr %var.refs, align 8
  %a.load1876 = load ptr, ptr %var.refs, align 8
  %a.null1877 = icmp eq ptr %a.load1876, null
  br i1 %a.null1877, label %a.create1878, label %a.after1879

a.create1878:                                     ; preds = %a.after1866
  %arena.cur1880 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1881 = call ptr @dva_arena_alloc(ptr %arena.cur1880, i64 24)
  %arena.cur1882 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1883 = call ptr @dva_arena_alloc(ptr %arena.cur1882, i64 128)
  %a.len.gep1884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1881, i32 0, i32 0
  store i64 0, ptr %a.len.gep1884, align 8
  %a.data.gep1885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1881, i32 0, i32 1
  store ptr %a.buf1883, ptr %a.data.gep1885, align 8
  %a.cap.gep1886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1881, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1886, align 8
  store ptr %a.create1881, ptr %var.refs, align 8
  br label %a.after1879

a.after1879:                                      ; preds = %a.create1878, %a.after1866
  %a.load21887 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1861, ptr %a.load21874, ptr %a.load21887)
  br label %choice.exit1858

choice.case1888:                                  ; preds = %choice.next1846
  %pay.gep1893 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1894 = load ptr, ptr %pay.gep1893, align 8
  store ptr %payload.ptr1894, ptr %var._1895, align 8
  store ptr %payload.ptr1894, ptr %var.m1896, align 8
  %var.load1897 = load ptr, ptr %var.m1896, align 8
  %a.load1898 = load ptr, ptr %var.m1896, align 8
  %a.null1899 = icmp eq ptr %a.load1898, null
  br i1 %a.null1899, label %a.create1900, label %a.after1901

choice.next1889:                                  ; preds = %choice.next1846
  %tag.gep1986 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1987 = load i64, ptr %tag.gep1986, align 8
  %tag.match1988 = icmp eq i64 %tag.id1987, 19
  br i1 %tag.match1988, label %choice.case1984, label %choice.next1985

a.create1900:                                     ; preds = %choice.case1888
  %arena.cur1902 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1903 = call ptr @dva_arena_alloc(ptr %arena.cur1902, i64 24)
  %arena.cur1904 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1905 = call ptr @dva_arena_alloc(ptr %arena.cur1904, i64 128)
  %a.len.gep1906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1903, i32 0, i32 0
  store i64 0, ptr %a.len.gep1906, align 8
  %a.data.gep1907 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1903, i32 0, i32 1
  store ptr %a.buf1905, ptr %a.data.gep1907, align 8
  %a.cap.gep1908 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1903, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1908, align 8
  store ptr %a.create1903, ptr %var.m1896, align 8
  br label %a.after1901

a.after1901:                                      ; preds = %a.create1900, %choice.case1888
  %a.load21909 = load ptr, ptr %var.m1896, align 8
  %arr.cycle.len1910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21909, i32 0, i32 0
  %arr.cycle.len1911 = load i64, ptr %arr.cycle.len1910, align 8
  %arr.cycle.data1912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21909, i32 0, i32 1
  %arr.cycle.data1913 = load ptr, ptr %arr.cycle.data1912, align 8
  store i64 0, ptr %loop.idx.48, align 8
  %cycle.prev.u1915 = load ptr, ptr %var._1895, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %a.after1901
  %counter.load1916 = load i64, ptr %loop.idx.48, align 8
  %loop.cond1917 = icmp slt i64 %counter.load1916, %arr.cycle.len1911
  br i1 %loop.cond1917, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i1918 = sub i64 %counter.load1916, 0
  store i64 1, ptr %loop.step.48, align 8
  %arr.elem.gep1919 = getelementptr i64, ptr %arr.cycle.data1913, i64 %counter.load1916
  %arr.elem.raw1920 = load i64, ptr %arr.elem.gep1919, align 8
  %slot.i2p1921 = inttoptr i64 %arr.elem.raw1920 to ptr
  store i64 %loop.rel.i1918, ptr %var._i1922, align 8
  store ptr %slot.i2p1921, ptr %var._1923, align 8
  store ptr %slot.i2p1921, ptr %var.p1914, align 8
  %var.load1924 = load ptr, ptr %var.p1914, align 8
  %fld.gep1925 = getelementptr inbounds { ptr, ptr }, ptr %var.load1924, i32 0, i32 0
  %fld.load1926 = load ptr, ptr %fld.gep1925, align 8
  %var.load1927 = load ptr, ptr %var.locals, align 8
  %a.load1928 = load ptr, ptr %var.locals, align 8
  %a.null1929 = icmp eq ptr %a.load1928, null
  br i1 %a.null1929, label %a.create1930, label %a.after1931

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %a.after1973
  %step.val1982 = load i64, ptr %loop.step.48, align 8
  %loop.next1983 = add i64 %counter.load1916, %step.val1982
  store i64 %loop.next1983, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  store ptr %cycle.prev.u1915, ptr %var._1895, align 8
  br label %choice.exit

a.create1930:                                     ; preds = %loop.body.48
  %arena.cur1932 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1933 = call ptr @dva_arena_alloc(ptr %arena.cur1932, i64 24)
  %arena.cur1934 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1935 = call ptr @dva_arena_alloc(ptr %arena.cur1934, i64 128)
  %a.len.gep1936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1933, i32 0, i32 0
  store i64 0, ptr %a.len.gep1936, align 8
  %a.data.gep1937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1933, i32 0, i32 1
  store ptr %a.buf1935, ptr %a.data.gep1937, align 8
  %a.cap.gep1938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1933, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1938, align 8
  store ptr %a.create1933, ptr %var.locals, align 8
  br label %a.after1931

a.after1931:                                      ; preds = %a.create1930, %loop.body.48
  %a.load21939 = load ptr, ptr %var.locals, align 8
  %var.load1940 = load ptr, ptr %var.refs, align 8
  %a.load1941 = load ptr, ptr %var.refs, align 8
  %a.null1942 = icmp eq ptr %a.load1941, null
  br i1 %a.null1942, label %a.create1943, label %a.after1944

a.create1943:                                     ; preds = %a.after1931
  %arena.cur1945 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1946 = call ptr @dva_arena_alloc(ptr %arena.cur1945, i64 24)
  %arena.cur1947 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1948 = call ptr @dva_arena_alloc(ptr %arena.cur1947, i64 128)
  %a.len.gep1949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1946, i32 0, i32 0
  store i64 0, ptr %a.len.gep1949, align 8
  %a.data.gep1950 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1946, i32 0, i32 1
  store ptr %a.buf1948, ptr %a.data.gep1950, align 8
  %a.cap.gep1951 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1946, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1951, align 8
  store ptr %a.create1946, ptr %var.refs, align 8
  br label %a.after1944

a.after1944:                                      ; preds = %a.create1943, %a.after1931
  %a.load21952 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1926, ptr %a.load21939, ptr %a.load21952)
  %var.load1953 = load ptr, ptr %var.p1914, align 8
  %fld.gep1954 = getelementptr inbounds { ptr, ptr }, ptr %var.load1953, i32 0, i32 1
  %fld.load1955 = load ptr, ptr %fld.gep1954, align 8
  %var.load1956 = load ptr, ptr %var.locals, align 8
  %a.load1957 = load ptr, ptr %var.locals, align 8
  %a.null1958 = icmp eq ptr %a.load1957, null
  br i1 %a.null1958, label %a.create1959, label %a.after1960

a.create1959:                                     ; preds = %a.after1944
  %arena.cur1961 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1962 = call ptr @dva_arena_alloc(ptr %arena.cur1961, i64 24)
  %arena.cur1963 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1964 = call ptr @dva_arena_alloc(ptr %arena.cur1963, i64 128)
  %a.len.gep1965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1962, i32 0, i32 0
  store i64 0, ptr %a.len.gep1965, align 8
  %a.data.gep1966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1962, i32 0, i32 1
  store ptr %a.buf1964, ptr %a.data.gep1966, align 8
  %a.cap.gep1967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1962, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1967, align 8
  store ptr %a.create1962, ptr %var.locals, align 8
  br label %a.after1960

a.after1960:                                      ; preds = %a.create1959, %a.after1944
  %a.load21968 = load ptr, ptr %var.locals, align 8
  %var.load1969 = load ptr, ptr %var.refs, align 8
  %a.load1970 = load ptr, ptr %var.refs, align 8
  %a.null1971 = icmp eq ptr %a.load1970, null
  br i1 %a.null1971, label %a.create1972, label %a.after1973

a.create1972:                                     ; preds = %a.after1960
  %arena.cur1974 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1975 = call ptr @dva_arena_alloc(ptr %arena.cur1974, i64 24)
  %arena.cur1976 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1977 = call ptr @dva_arena_alloc(ptr %arena.cur1976, i64 128)
  %a.len.gep1978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1975, i32 0, i32 0
  store i64 0, ptr %a.len.gep1978, align 8
  %a.data.gep1979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1975, i32 0, i32 1
  store ptr %a.buf1977, ptr %a.data.gep1979, align 8
  %a.cap.gep1980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1975, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1980, align 8
  store ptr %a.create1975, ptr %var.refs, align 8
  br label %a.after1973

a.after1973:                                      ; preds = %a.create1972, %a.after1960
  %a.load21981 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1955, ptr %a.load21968, ptr %a.load21981)
  br label %loop.latch.48

choice.case1984:                                  ; preds = %choice.next1889
  %pay.gep1989 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1990 = load ptr, ptr %pay.gep1989, align 8
  store ptr %payload.ptr1990, ptr %var._1991, align 8
  store ptr %payload.ptr1990, ptr %var.rm, align 8
  %var.load1992 = load ptr, ptr %var.rm, align 8
  %fld.gep1993 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load1992, i32 0, i32 0
  %fld.load1994 = load ptr, ptr %fld.gep1993, align 8
  %var.load1995 = load ptr, ptr %var.locals, align 8
  %a.load1996 = load ptr, ptr %var.locals, align 8
  %a.null1997 = icmp eq ptr %a.load1996, null
  br i1 %a.null1997, label %a.create1998, label %a.after1999

choice.next1985:                                  ; preds = %choice.next1889
  br label %choice.exit

a.create1998:                                     ; preds = %choice.case1984
  %arena.cur2000 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2001 = call ptr @dva_arena_alloc(ptr %arena.cur2000, i64 24)
  %arena.cur2002 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2003 = call ptr @dva_arena_alloc(ptr %arena.cur2002, i64 128)
  %a.len.gep2004 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2001, i32 0, i32 0
  store i64 0, ptr %a.len.gep2004, align 8
  %a.data.gep2005 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2001, i32 0, i32 1
  store ptr %a.buf2003, ptr %a.data.gep2005, align 8
  %a.cap.gep2006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2001, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2006, align 8
  store ptr %a.create2001, ptr %var.locals, align 8
  br label %a.after1999

a.after1999:                                      ; preds = %a.create1998, %choice.case1984
  %a.load22007 = load ptr, ptr %var.locals, align 8
  %var.load2008 = load ptr, ptr %var.refs, align 8
  %a.load2009 = load ptr, ptr %var.refs, align 8
  %a.null2010 = icmp eq ptr %a.load2009, null
  br i1 %a.null2010, label %a.create2011, label %a.after2012

a.create2011:                                     ; preds = %a.after1999
  %arena.cur2013 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2014 = call ptr @dva_arena_alloc(ptr %arena.cur2013, i64 24)
  %arena.cur2015 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2016 = call ptr @dva_arena_alloc(ptr %arena.cur2015, i64 128)
  %a.len.gep2017 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 0
  store i64 0, ptr %a.len.gep2017, align 8
  %a.data.gep2018 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 1
  store ptr %a.buf2016, ptr %a.data.gep2018, align 8
  %a.cap.gep2019 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2019, align 8
  store ptr %a.create2014, ptr %var.refs, align 8
  br label %a.after2012

a.after2012:                                      ; preds = %a.create2011, %a.after1999
  %a.load22020 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1994, ptr %a.load22007, ptr %a.load22020)
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
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.51.then, label %and.51.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

and.51.else:                                      ; preds = %str_ok
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %str.eq.merge
  %and.51.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.51.else ]
  store i1 %and.51.phi, ptr %var.is_ct, align 1
  %var.load20 = load ptr, ptr %var.a, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load20, i32 0, i32 8
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str_ok9:                                          ; preds = %tag.slow_check14, %and.51.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len16, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len16
  %final.start = select i1 %start.gt.len, i64 %s.read.len16, i64 %c.start.0
  %rel.end = add i64 %s.read.len16, 4
  %norm.end = select i1 false, i64 %rel.end, i64 4
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len16
  %final.end = select i1 %end.gt.len, i64 %s.read.len16, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data17, i64 %final.start
  %cmp.str = load i64, ptr @str.9.struct, align 8
  %cmp.str18 = and i64 %cmp.str, 281474976710655
  %cmp.str19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str18
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check14:                                 ; preds = %and.51.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str19, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.51.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp27, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load28 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load28, label %or.52.then, label %or.52.else

choice.case:                                      ; preds = %and.51.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load23 = load ptr, ptr %var.f, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load23, i32 0, i32 4
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %a.len.query26 = load i64, ptr %a.len.query, align 8
  %cmptmp27 = icmp sgt i64 %a.len.query26, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.51.exit
  br label %choice.exit

or.52.then:                                       ; preds = %choice.exit
  br label %or.52.exit

or.52.else:                                       ; preds = %choice.exit
  %var.load29 = load i1, ptr %var.is_ti, align 1
  br label %or.52.exit

or.52.exit:                                       ; preds = %or.52.else, %or.52.then
  %or.52.phi = phi i1 [ %var.load28, %or.52.then ], [ %var.load29, %or.52.else ]
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
  %var._211 = alloca ptr, align 8
  %var._210 = alloca ptr, align 8
  %var._209 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
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
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 3
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  store ptr %fld.load38, ptr %var.stk, align 8
  %var.load39 = load i64, ptr %var.sp, align 8
  %var.load40 = load ptr, ptr %var.stk, align 8
  %a.load41 = load ptr, ptr %var.stk, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.71
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data25 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len26 = load i64, ptr %err.file.len, align 8
  %err.file.len27 = and i64 %err.file.len26, 281474976710655
  %str.tag28 = lshr i64 %err.file.len26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current32 = icmp eq i64 %str.tag28, %active.gen31
  %tag.fast.ok33 = or i1 %tag.immortal30, %tag.current32
  br i1 %tag.fast.ok33, label %str_ok29, label %tag.slow_check34

tag.slow_check:                                   ; preds = %unwrap.abort.71
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok29:                                         ; preds = %tag.slow_check34, %str_ok
  %err.file.len32 = trunc i64 %err.file.len27 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data35 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check34:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag28)
  br label %str_ok29

err.thread:                                       ; preds = %str_ok29
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok29
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data25, i32 %err.file.len32, ptr %err.file.data35, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create43:                                       ; preds = %unwrap.pos.71
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var.stk, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %unwrap.pos.71
  %a.load252 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.len.query53 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load39, %a.len.query53
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after44
  %var.load54 = load ptr, ptr %var.stk, align 8
  %a.load55 = load ptr, ptr %var.stk, align 8
  %a.null56 = icmp eq ptr %a.load55, null
  br i1 %a.null56, label %a.create57, label %a.after58

choice.else:                                      ; preds = %a.after44
  %var.load139 = load i64, ptr %var.u, align 8
  %a.load140 = load ptr, ptr %var.stk, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

choice.exit:                                      ; preds = %a.store, %choice.exit93
  %var.load157 = load ptr, ptr %var.s_ptr, align 8
  %a.load158 = load ptr, ptr %var.s_ptr, align 8
  %a.null159 = icmp eq ptr %a.load158, null
  br i1 %a.null159, label %a.create160, label %a.after161

a.create57:                                       ; preds = %choice.then
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 24)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 128)
  %a.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 0
  store i64 0, ptr %a.len.gep63, align 8
  %a.data.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 1
  store ptr %a.buf62, ptr %a.data.gep64, align 8
  %a.cap.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 2
  store i64 16, ptr %a.cap.gep65, align 8
  store ptr %a.create60, ptr %var.stk, align 8
  br label %a.after58

a.after58:                                        ; preds = %a.create57, %choice.then
  %a.load266 = load ptr, ptr %var.stk, align 8
  %var.load67 = load i64, ptr %var.sp, align 8
  %var.load68 = load i64, ptr %var.u, align 8
  %a.wr.nonnull = icmp ne ptr %a.load266, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after58
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 0
  %a.wr.len69 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load67, 0
  %a.wr.lt = icmp slt i64 %var.load67, %a.wr.len69
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 1
  %a.wr.data70 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data70, i64 %var.load67
  store i64 %var.load68, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after58
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 56)
  %err.code.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 0
  store i64 4011, ptr %err.code.gep73, align 8
  %err.msg.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep74, align 8
  %err.file.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep75, align 8
  %err.line.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 3
  store i64 0, ptr %err.line.gep76, align 8
  %err.col.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 4
  store i64 0, ptr %err.col.gep77, align 8
  %err.ctx.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 5
  %err.ctx0.gep79 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep79, align 8
  %err.ctx1.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep80, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 56)
  %err.code.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 0
  store i64 4011, ptr %err.code.gep83, align 8
  %err.msg.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep84, align 8
  %err.file.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep85, align 8
  %err.line.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 3
  store i64 0, ptr %err.line.gep86, align 8
  %err.col.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 4
  store i64 0, ptr %err.col.gep87, align 8
  %err.ctx.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 5
  %err.ctx0.gep89 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep88, i32 0, i32 0
  store i64 %var.load67, ptr %err.ctx0.gep89, align 8
  %err.ctx1.gep90 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep88, i32 0, i32 1
  store i64 %a.wr.len69, ptr %err.ctx1.gep90, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc72, %a.wr.err.null ], [ %err.alloc82, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then91, label %choice.else92

choice.then91:                                    ; preds = %a.wr.done
  br label %choice.exit93

choice.else92:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._94, align 8
  store ptr %a.wr.niche, ptr %var._95, align 8
  %err.code.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code97 = load i64, ptr %err.code.gep96, align 8
  %err.msg.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct99 = load ptr, ptr %err.msg.gep98, align 8
  %err.file.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct101 = load ptr, ptr %err.file.gep100, align 8
  %err.line.gep102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line103 = load i64, ptr %err.line.gep102, align 8
  %err.col.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col105 = load i64, ptr %err.col.gep104, align 8
  %err.msg.len106 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct99, i32 0, i32 0
  %err.msg.len107 = load i64, ptr %err.msg.len106, align 8
  %err.msg.len108 = and i64 %err.msg.len107, 281474976710655
  %str.tag109 = lshr i64 %err.msg.len107, 48
  %tag.immortal111 = icmp eq i64 %str.tag109, 0
  %active.gen112 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current113 = icmp eq i64 %str.tag109, %active.gen112
  %tag.fast.ok114 = or i1 %tag.immortal111, %tag.current113
  br i1 %tag.fast.ok114, label %str_ok110, label %tag.slow_check115

choice.exit93:                                    ; preds = %err.abort, %choice.then91
  br label %choice.exit

str_ok110:                                        ; preds = %tag.slow_check115, %choice.else92
  %err.msg.len32116 = trunc i64 %err.msg.len108 to i32
  %err.msg.data117 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct99, i32 0, i32 1
  %err.msg.data118 = load ptr, ptr %err.msg.data117, align 8
  %err.file.len119 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct101, i32 0, i32 0
  %err.file.len120 = load i64, ptr %err.file.len119, align 8
  %err.file.len121 = and i64 %err.file.len120, 281474976710655
  %str.tag122 = lshr i64 %err.file.len120, 48
  %tag.immortal124 = icmp eq i64 %str.tag122, 0
  %active.gen125 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current126 = icmp eq i64 %str.tag122, %active.gen125
  %tag.fast.ok127 = or i1 %tag.immortal124, %tag.current126
  br i1 %tag.fast.ok127, label %str_ok123, label %tag.slow_check128

tag.slow_check115:                                ; preds = %choice.else92
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag109)
  br label %str_ok110

str_ok123:                                        ; preds = %tag.slow_check128, %str_ok110
  %err.file.len32129 = trunc i64 %err.file.len121 to i32
  %err.file.data130 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct101, i32 0, i32 1
  %err.file.data131 = load ptr, ptr %err.file.data130, align 8
  %err.thread.rec132 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread133 = icmp ne ptr %err.thread.rec132, null
  br i1 %err.is.thread133, label %err.thread134, label %err.normal135

tag.slow_check128:                                ; preds = %str_ok110
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag122)
  br label %str_ok123

err.thread134:                                    ; preds = %str_ok123
  %err.haserr.gep136 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec132, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep136, align 8
  %err.err.gep137 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec132, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep137, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal135:                                    ; preds = %str_ok123
  %err.panic.printf138 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code97, i32 %err.msg.len32116, ptr %err.msg.data118, i32 %err.file.len32129, ptr %err.file.data131, i64 %err.line103, i64 %err.col105)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit93

a.create142:                                      ; preds = %choice.else
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 128)
  %a.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 0
  store i64 0, ptr %a.len.gep148, align 8
  %a.data.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 1
  store ptr %a.buf147, ptr %a.data.gep149, align 8
  %a.cap.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 2
  store i64 16, ptr %a.cap.gep150, align 8
  store ptr %a.create145, ptr %var.stk, align 8
  br label %a.after143

a.after143:                                       ; preds = %a.create142, %choice.else
  %a.load2151 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after143
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  %a.len152 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 2
  %a.cap153 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len152, %a.cap153
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2151)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 1
  %a.cur.data154 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  %a.cur.len155 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.cur.data154, i64 %a.cur.len155
  store i64 %var.load139, ptr %a.elem.gep156, align 8
  %a.next.len = add i64 %a.cur.len155, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create160:                                      ; preds = %choice.exit
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 24)
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 128)
  %a.len.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 0
  store i64 0, ptr %a.len.gep166, align 8
  %a.data.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 1
  store ptr %a.buf165, ptr %a.data.gep167, align 8
  %a.cap.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 2
  store i64 16, ptr %a.cap.gep168, align 8
  store ptr %a.create163, ptr %var.s_ptr, align 8
  br label %a.after161

a.after161:                                       ; preds = %a.create160, %choice.exit
  %a.load2169 = load ptr, ptr %var.s_ptr, align 8
  %var.load170 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load170, 1
  %a.wr.nonnull171 = icmp ne ptr %a.load2169, null
  br i1 %a.wr.nonnull171, label %a.wr.check172, label %a.wr.err.null174

a.wr.check172:                                    ; preds = %a.after161
  %a.wr.len177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2169, i32 0, i32 0
  %a.wr.len178 = load i64, ptr %a.wr.len177, align 8
  %a.wr.lt179 = icmp slt i64 0, %a.wr.len178
  %a.wr.bounds180 = and i1 true, %a.wr.lt179
  br i1 %a.wr.bounds180, label %a.wr.ok173, label %a.wr.err.oob175

a.wr.ok173:                                       ; preds = %a.wr.check172
  %a.wr.data181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2169, i32 0, i32 1
  %a.wr.data182 = load ptr, ptr %a.wr.data181, align 8
  %a.elem.gep183 = getelementptr i64, ptr %a.wr.data182, i64 0
  store i64 %addtmp, ptr %a.elem.gep183, align 8
  br label %a.wr.done176

a.wr.err.null174:                                 ; preds = %a.after161
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 56)
  %err.code.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 0
  store i64 4011, ptr %err.code.gep186, align 8
  %err.msg.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep187, align 8
  %err.file.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep188, align 8
  %err.line.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 3
  store i64 0, ptr %err.line.gep189, align 8
  %err.col.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 4
  store i64 0, ptr %err.col.gep190, align 8
  %err.ctx.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc185, i32 0, i32 5
  %err.ctx0.gep192 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep191, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep192, align 8
  %err.ctx1.gep193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep191, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep193, align 8
  br label %a.wr.done176

a.wr.err.oob175:                                  ; preds = %a.wr.check172
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 56)
  %err.code.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 0
  store i64 4011, ptr %err.code.gep196, align 8
  %err.msg.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep197, align 8
  %err.file.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep198, align 8
  %err.line.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 3
  store i64 0, ptr %err.line.gep199, align 8
  %err.col.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 4
  store i64 0, ptr %err.col.gep200, align 8
  %err.ctx.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc195, i32 0, i32 5
  %err.ctx0.gep202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep201, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep202, align 8
  %err.ctx1.gep203 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep201, i32 0, i32 1
  store i64 %a.wr.len178, ptr %err.ctx1.gep203, align 8
  br label %a.wr.done176

a.wr.done176:                                     ; preds = %a.wr.err.oob175, %a.wr.err.null174, %a.wr.ok173
  %a.wr.niche204 = phi ptr [ null, %a.wr.ok173 ], [ %err.alloc185, %a.wr.err.null174 ], [ %err.alloc195, %a.wr.err.oob175 ]
  %niche.eq.null205 = icmp eq ptr %a.wr.niche204, null
  br i1 %niche.eq.null205, label %choice.then206, label %choice.else207

choice.then206:                                   ; preds = %a.wr.done176
  br label %choice.exit208

choice.else207:                                   ; preds = %a.wr.done176
  store ptr %a.wr.niche204, ptr %var._209, align 8
  store ptr %a.wr.niche204, ptr %var._210, align 8
  store ptr %a.wr.niche204, ptr %var._211, align 8
  %err.code.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche204, i32 0, i32 0
  %err.code213 = load i64, ptr %err.code.gep212, align 8
  %err.msg.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche204, i32 0, i32 1
  %err.msg.struct215 = load ptr, ptr %err.msg.gep214, align 8
  %err.file.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche204, i32 0, i32 2
  %err.file.struct217 = load ptr, ptr %err.file.gep216, align 8
  %err.line.gep218 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche204, i32 0, i32 3
  %err.line219 = load i64, ptr %err.line.gep218, align 8
  %err.col.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche204, i32 0, i32 4
  %err.col221 = load i64, ptr %err.col.gep220, align 8
  %err.msg.len222 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct215, i32 0, i32 0
  %err.msg.len223 = load i64, ptr %err.msg.len222, align 8
  %err.msg.len224 = and i64 %err.msg.len223, 281474976710655
  %str.tag225 = lshr i64 %err.msg.len223, 48
  %tag.immortal227 = icmp eq i64 %str.tag225, 0
  %active.gen228 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current229 = icmp eq i64 %str.tag225, %active.gen228
  %tag.fast.ok230 = or i1 %tag.immortal227, %tag.current229
  br i1 %tag.fast.ok230, label %str_ok226, label %tag.slow_check231

choice.exit208:                                   ; preds = %err.abort255, %choice.then206
  ret void

str_ok226:                                        ; preds = %tag.slow_check231, %choice.else207
  %err.msg.len32232 = trunc i64 %err.msg.len224 to i32
  %err.msg.data233 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct215, i32 0, i32 1
  %err.msg.data234 = load ptr, ptr %err.msg.data233, align 8
  %err.file.len235 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct217, i32 0, i32 0
  %err.file.len236 = load i64, ptr %err.file.len235, align 8
  %err.file.len237 = and i64 %err.file.len236, 281474976710655
  %str.tag238 = lshr i64 %err.file.len236, 48
  %tag.immortal240 = icmp eq i64 %str.tag238, 0
  %active.gen241 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current242 = icmp eq i64 %str.tag238, %active.gen241
  %tag.fast.ok243 = or i1 %tag.immortal240, %tag.current242
  br i1 %tag.fast.ok243, label %str_ok239, label %tag.slow_check244

tag.slow_check231:                                ; preds = %choice.else207
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag225)
  br label %str_ok226

str_ok239:                                        ; preds = %tag.slow_check244, %str_ok226
  %err.file.len32245 = trunc i64 %err.file.len237 to i32
  %err.file.data246 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct217, i32 0, i32 1
  %err.file.data247 = load ptr, ptr %err.file.data246, align 8
  %err.thread.rec248 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread249 = icmp ne ptr %err.thread.rec248, null
  br i1 %err.is.thread249, label %err.thread250, label %err.normal251

tag.slow_check244:                                ; preds = %str_ok226
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag238)
  br label %str_ok239

err.thread250:                                    ; preds = %str_ok239
  %err.haserr.gep252 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec248, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep252, align 8
  %err.err.gep253 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec248, i32 0, i32 7
  store ptr %a.wr.niche204, ptr %err.err.gep253, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal251:                                    ; preds = %str_ok239
  %err.panic.printf254 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code213, i32 %err.msg.len32232, ptr %err.msg.data234, i32 %err.file.len32245, ptr %err.file.data247, i64 %err.line219, i64 %err.col221)
  call void @exit(i32 1)
  unreachable

err.abort255:                                     ; No predecessors!
  br label %choice.exit208
}

define i64 @"dep_graph::pop_stack"(ptr %0) #0 {
entry:
  %var.stk = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
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
  %var.load36 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load36, 0
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.72
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data25 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len26 = load i64, ptr %err.file.len, align 8
  %err.file.len27 = and i64 %err.file.len26, 281474976710655
  %str.tag28 = lshr i64 %err.file.len26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current32 = icmp eq i64 %str.tag28, %active.gen31
  %tag.fast.ok33 = or i1 %tag.immortal30, %tag.current32
  br i1 %tag.fast.ok33, label %str_ok29, label %tag.slow_check34

tag.slow_check:                                   ; preds = %unwrap.abort.72
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok29:                                         ; preds = %tag.slow_check34, %str_ok
  %err.file.len32 = trunc i64 %err.file.len27 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data35 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check34:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag28)
  br label %str_ok29

err.thread:                                       ; preds = %str_ok29
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok29
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data25, i32 %err.file.len32, ptr %err.file.data35, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.72
  %var.load37 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load37, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.72
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load38 = load ptr, ptr %var.s_ptr, align 8
  %a.load39 = load ptr, ptr %var.s_ptr, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

a.create41:                                       ; preds = %choice.exit
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
  store ptr %a.create44, ptr %var.s_ptr, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.exit
  %a.load250 = load ptr, ptr %var.s_ptr, align 8
  %var.load51 = load i64, ptr %var.new_sp, align 8
  %a.wr.nonnull = icmp ne ptr %a.load250, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after42
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.wr.len52 = load i64, ptr %a.wr.len, align 8
  %a.wr.lt = icmp slt i64 0, %a.wr.len52
  %a.wr.bounds = and i1 true, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 1
  %a.wr.data53 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data53, i64 0
  store i64 %var.load51, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after42
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 56)
  %err.code.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 0
  store i64 4011, ptr %err.code.gep56, align 8
  %err.msg.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep57, align 8
  %err.file.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep58, align 8
  %err.line.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 3
  store i64 0, ptr %err.line.gep59, align 8
  %err.col.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 4
  store i64 0, ptr %err.col.gep60, align 8
  %err.ctx.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 5
  %err.ctx0.gep62 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep62, align 8
  %err.ctx1.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep63, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 56)
  %err.code.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 0
  store i64 4011, ptr %err.code.gep66, align 8
  %err.msg.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep67, align 8
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
  store i64 %a.wr.len52, ptr %err.ctx1.gep73, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc55, %a.wr.err.null ], [ %err.alloc65, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then74, label %choice.else75

choice.then74:                                    ; preds = %a.wr.done
  br label %choice.exit76

choice.else75:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._77, align 8
  store ptr %a.wr.niche, ptr %var._78, align 8
  %err.code.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code80 = load i64, ptr %err.code.gep79, align 8
  %err.msg.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct82 = load ptr, ptr %err.msg.gep81, align 8
  %err.file.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct84 = load ptr, ptr %err.file.gep83, align 8
  %err.line.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line86 = load i64, ptr %err.line.gep85, align 8
  %err.col.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col88 = load i64, ptr %err.col.gep87, align 8
  %err.msg.len89 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct82, i32 0, i32 0
  %err.msg.len90 = load i64, ptr %err.msg.len89, align 8
  %err.msg.len91 = and i64 %err.msg.len90, 281474976710655
  %str.tag92 = lshr i64 %err.msg.len90, 48
  %tag.immortal94 = icmp eq i64 %str.tag92, 0
  %active.gen95 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current96 = icmp eq i64 %str.tag92, %active.gen95
  %tag.fast.ok97 = or i1 %tag.immortal94, %tag.current96
  br i1 %tag.fast.ok97, label %str_ok93, label %tag.slow_check98

choice.exit76:                                    ; preds = %err.abort, %choice.then74
  %var.load122 = load ptr, ptr %var.state, align 8
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load122, i32 0, i32 3
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  store ptr %fld.load124, ptr %var.stk, align 8
  %var.load125 = load ptr, ptr %var.stk, align 8
  %a.load126 = load ptr, ptr %var.stk, align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

str_ok93:                                         ; preds = %tag.slow_check98, %choice.else75
  %err.msg.len3299 = trunc i64 %err.msg.len91 to i32
  %err.msg.data100 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct82, i32 0, i32 1
  %err.msg.data101 = load ptr, ptr %err.msg.data100, align 8
  %err.file.len102 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct84, i32 0, i32 0
  %err.file.len103 = load i64, ptr %err.file.len102, align 8
  %err.file.len104 = and i64 %err.file.len103, 281474976710655
  %str.tag105 = lshr i64 %err.file.len103, 48
  %tag.immortal107 = icmp eq i64 %str.tag105, 0
  %active.gen108 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current109 = icmp eq i64 %str.tag105, %active.gen108
  %tag.fast.ok110 = or i1 %tag.immortal107, %tag.current109
  br i1 %tag.fast.ok110, label %str_ok106, label %tag.slow_check111

tag.slow_check98:                                 ; preds = %choice.else75
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag92)
  br label %str_ok93

str_ok106:                                        ; preds = %tag.slow_check111, %str_ok93
  %err.file.len32112 = trunc i64 %err.file.len104 to i32
  %err.file.data113 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct84, i32 0, i32 1
  %err.file.data114 = load ptr, ptr %err.file.data113, align 8
  %err.thread.rec115 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread116 = icmp ne ptr %err.thread.rec115, null
  br i1 %err.is.thread116, label %err.thread117, label %err.normal118

tag.slow_check111:                                ; preds = %str_ok93
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag105)
  br label %str_ok106

err.thread117:                                    ; preds = %str_ok106
  %err.haserr.gep119 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec115, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep119, align 8
  %err.err.gep120 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec115, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep120, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal118:                                    ; preds = %str_ok106
  %err.panic.printf121 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code80, i32 %err.msg.len3299, ptr %err.msg.data101, i32 %err.file.len32112, ptr %err.file.data114, i64 %err.line86, i64 %err.col88)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit76

a.create128:                                      ; preds = %choice.exit76
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 128)
  %a.len.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 0
  store i64 0, ptr %a.len.gep134, align 8
  %a.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 1
  store ptr %a.buf133, ptr %a.data.gep135, align 8
  %a.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep136, align 8
  store ptr %a.create131, ptr %var.stk, align 8
  br label %a.after129

a.after129:                                       ; preds = %a.create128, %choice.exit76
  %a.load2137 = load ptr, ptr %var.stk, align 8
  %var.load138 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull139 = icmp ne ptr %a.load2137, null
  br i1 %a.rd.nonnull139, label %a.rd.check140, label %a.rd.err.null142

a.rd.check140:                                    ; preds = %a.after129
  %a.rd.len145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2137, i32 0, i32 0
  %a.rd.len146 = load i64, ptr %a.rd.len145, align 8
  %a.rd.ge0 = icmp sge i64 %var.load138, 0
  %a.rd.lt147 = icmp slt i64 %var.load138, %a.rd.len146
  %a.rd.bounds148 = and i1 %a.rd.ge0, %a.rd.lt147
  br i1 %a.rd.bounds148, label %a.rd.ok141, label %a.rd.err.oob143

a.rd.ok141:                                       ; preds = %a.rd.check140
  %a.rd.data149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2137, i32 0, i32 1
  %a.rd.data150 = load ptr, ptr %a.rd.data149, align 8
  %a.rd.elem.gep151 = getelementptr i64, ptr %a.rd.data150, i64 %var.load138
  %a.rd.elem152 = load i64, ptr %a.rd.elem.gep151, align 8
  br label %a.rd.done144

a.rd.err.null142:                                 ; preds = %a.after129
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 56)
  %err.code.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 0
  store i64 4011, ptr %err.code.gep155, align 8
  %err.msg.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep156, align 8
  %err.file.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep157, align 8
  %err.line.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 3
  store i64 279, ptr %err.line.gep158, align 8
  %err.col.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 4
  store i64 15, ptr %err.col.gep159, align 8
  %err.ctx.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc154, i32 0, i32 5
  %err.ctx0.gep161 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep160, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep161, align 8
  %err.ctx1.gep162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep160, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep162, align 8
  %err.p2i163 = ptrtoint ptr %err.alloc154 to i64
  br label %a.rd.done144

a.rd.err.oob143:                                  ; preds = %a.rd.check140
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 56)
  %err.code.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 0
  store i64 4011, ptr %err.code.gep166, align 8
  %err.msg.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep167, align 8
  %err.file.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep168, align 8
  %err.line.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 3
  store i64 279, ptr %err.line.gep169, align 8
  %err.col.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 4
  store i64 15, ptr %err.col.gep170, align 8
  %err.ctx.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 5
  %err.ctx0.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep171, i32 0, i32 0
  store i64 %var.load138, ptr %err.ctx0.gep172, align 8
  %err.ctx1.gep173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep171, i32 0, i32 1
  store i64 %a.rd.len146, ptr %err.ctx1.gep173, align 8
  %err.p2i174 = ptrtoint ptr %err.alloc165 to i64
  br label %a.rd.done144

a.rd.done144:                                     ; preds = %a.rd.err.oob143, %a.rd.err.null142, %a.rd.ok141
  %a.rd.tag175 = phi i1 [ true, %a.rd.ok141 ], [ false, %a.rd.err.null142 ], [ false, %a.rd.err.oob143 ]
  %a.rd.pay176 = phi i64 [ %a.rd.elem152, %a.rd.ok141 ], [ %err.p2i163, %a.rd.err.null142 ], [ %err.p2i174, %a.rd.err.oob143 ]
  %ram.tag177 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag175, 0
  %ram.pay178 = insertvalue { i1, i64 } %ram.tag177, i64 %a.rd.pay176, 1
  %unwrap.is_pos179 = extractvalue { i1, i64 } %ram.pay178, 0
  br i1 %unwrap.is_pos179, label %unwrap.pos.73, label %unwrap.abort.73

unwrap.pos.73:                                    ; preds = %a.rd.done144
  %unwrap.pay.pos225 = extractvalue { i1, i64 } %ram.pay178, 1
  ret i64 %unwrap.pay.pos225

unwrap.abort.73:                                  ; preds = %a.rd.done144
  %unwrap.pay.abort180 = extractvalue { i1, i64 } %ram.pay178, 1
  %err.ptr181 = inttoptr i64 %unwrap.pay.abort180 to ptr
  %err.code.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr181, i32 0, i32 0
  %err.code183 = load i64, ptr %err.code.gep182, align 8
  %err.msg.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr181, i32 0, i32 1
  %err.msg.struct185 = load ptr, ptr %err.msg.gep184, align 8
  %err.file.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr181, i32 0, i32 2
  %err.file.struct187 = load ptr, ptr %err.file.gep186, align 8
  %err.line.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr181, i32 0, i32 3
  %err.line189 = load i64, ptr %err.line.gep188, align 8
  %err.col.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr181, i32 0, i32 4
  %err.col191 = load i64, ptr %err.col.gep190, align 8
  %err.msg.len192 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct185, i32 0, i32 0
  %err.msg.len193 = load i64, ptr %err.msg.len192, align 8
  %err.msg.len194 = and i64 %err.msg.len193, 281474976710655
  %str.tag195 = lshr i64 %err.msg.len193, 48
  %tag.immortal197 = icmp eq i64 %str.tag195, 0
  %active.gen198 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current199 = icmp eq i64 %str.tag195, %active.gen198
  %tag.fast.ok200 = or i1 %tag.immortal197, %tag.current199
  br i1 %tag.fast.ok200, label %str_ok196, label %tag.slow_check201

str_ok196:                                        ; preds = %tag.slow_check201, %unwrap.abort.73
  %err.msg.len32202 = trunc i64 %err.msg.len194 to i32
  %err.msg.data203 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct185, i32 0, i32 1
  %err.msg.data204 = load ptr, ptr %err.msg.data203, align 8
  %err.file.len205 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct187, i32 0, i32 0
  %err.file.len206 = load i64, ptr %err.file.len205, align 8
  %err.file.len207 = and i64 %err.file.len206, 281474976710655
  %str.tag208 = lshr i64 %err.file.len206, 48
  %tag.immortal210 = icmp eq i64 %str.tag208, 0
  %active.gen211 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current212 = icmp eq i64 %str.tag208, %active.gen211
  %tag.fast.ok213 = or i1 %tag.immortal210, %tag.current212
  br i1 %tag.fast.ok213, label %str_ok209, label %tag.slow_check214

tag.slow_check201:                                ; preds = %unwrap.abort.73
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag195)
  br label %str_ok196

str_ok209:                                        ; preds = %tag.slow_check214, %str_ok196
  %err.file.len32215 = trunc i64 %err.file.len207 to i32
  %err.file.data216 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct187, i32 0, i32 1
  %err.file.data217 = load ptr, ptr %err.file.data216, align 8
  %err.thread.rec218 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread219 = icmp ne ptr %err.thread.rec218, null
  br i1 %err.is.thread219, label %err.thread220, label %err.normal221

tag.slow_check214:                                ; preds = %str_ok196
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag208)
  br label %str_ok209

err.thread220:                                    ; preds = %str_ok209
  %err.haserr.gep222 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec218, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep222, align 8
  %err.err.gep223 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec218, i32 0, i32 7
  store ptr %err.ptr181, ptr %err.err.gep223, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal221:                                    ; preds = %str_ok209
  %err.panic.printf224 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code183, i32 %err.msg.len32202, ptr %err.msg.data204, i32 %err.file.len32215, ptr %err.file.data217, i64 %err.line189, i64 %err.col191)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1571 = alloca ptr, align 8
  %var._1570 = alloca ptr, align 8
  %var._1569 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1420 = alloca i64, align 8
  %var._i1419 = alloca i64, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1166 = alloca ptr, align 8
  %var._1165 = alloca ptr, align 8
  %var._1164 = alloca ptr, align 8
  %var.v_on = alloca i1, align 1
  %var._929 = alloca ptr, align 8
  %var._926 = alloca i1, align 1
  %var._835 = alloca ptr, align 8
  %var._834 = alloca ptr, align 8
  %var._833 = alloca ptr, align 8
  %var.v_idx = alloca i64, align 8
  %var._595 = alloca ptr, align 8
  %var._592 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._526 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._385 = alloca ptr, align 8
  %var._384 = alloca ptr, align 8
  %var._383 = alloca ptr, align 8
  %var._283 = alloca ptr, align 8
  %var._282 = alloca ptr, align 8
  %var._281 = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._183 = alloca ptr, align 8
  %var._182 = alloca ptr, align 8
  %var._84 = alloca ptr, align 8
  %var._83 = alloca ptr, align 8
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
  %var.load46 = load ptr, ptr %var.idxs, align 8
  %a.load47 = load ptr, ptr %var.idxs, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.74
  %err.msg.len3234 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %str.tag38 = lshr i64 %err.file.len36, 48
  %tag.immortal40 = icmp eq i64 %str.tag38, 0
  %active.gen41 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current42 = icmp eq i64 %str.tag38, %active.gen41
  %tag.fast.ok43 = or i1 %tag.immortal40, %tag.current42
  br i1 %tag.fast.ok43, label %str_ok39, label %tag.slow_check44

tag.slow_check:                                   ; preds = %unwrap.abort.74
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok39:                                         ; preds = %tag.slow_check44, %str_ok
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check44:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag38)
  br label %str_ok39

err.thread:                                       ; preds = %str_ok39
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok39
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create49:                                       ; preds = %unwrap.pos.74
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 128)
  %a.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 0
  store i64 0, ptr %a.len.gep55, align 8
  %a.data.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 1
  store ptr %a.buf54, ptr %a.data.gep56, align 8
  %a.cap.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 2
  store i64 16, ptr %a.cap.gep57, align 8
  store ptr %a.create52, ptr %var.idxs, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %unwrap.pos.74
  %a.load258 = load ptr, ptr %var.idxs, align 8
  %var.load59 = load i64, ptr %var.u, align 8
  %var.load60 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull = icmp ne ptr %a.load258, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after50
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.wr.len61 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load59, 0
  %a.wr.lt = icmp slt i64 %var.load59, %a.wr.len61
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 1
  %a.wr.data62 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data62, i64 %var.load59
  store i64 %var.load60, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after50
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 56)
  %err.code.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 0
  store i64 4011, ptr %err.code.gep65, align 8
  %err.msg.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep66, align 8
  %err.file.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep67, align 8
  %err.line.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 3
  store i64 0, ptr %err.line.gep68, align 8
  %err.col.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 4
  store i64 0, ptr %err.col.gep69, align 8
  %err.ctx.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 5
  %err.ctx0.gep71 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep71, align 8
  %err.ctx1.gep72 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep72, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 56)
  %err.code.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 0
  store i64 4011, ptr %err.code.gep75, align 8
  %err.msg.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep76, align 8
  %err.file.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep77, align 8
  %err.line.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 3
  store i64 0, ptr %err.line.gep78, align 8
  %err.col.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 4
  store i64 0, ptr %err.col.gep79, align 8
  %err.ctx.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 5
  %err.ctx0.gep81 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep80, i32 0, i32 0
  store i64 %var.load59, ptr %err.ctx0.gep81, align 8
  %err.ctx1.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep80, i32 0, i32 1
  store i64 %a.wr.len61, ptr %err.ctx1.gep82, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc64, %a.wr.err.null ], [ %err.alloc74, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.wr.done
  br label %choice.exit

choice.else:                                      ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._83, align 8
  store ptr %a.wr.niche, ptr %var._84, align 8
  %err.code.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code86 = load i64, ptr %err.code.gep85, align 8
  %err.msg.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct88 = load ptr, ptr %err.msg.gep87, align 8
  %err.file.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct90 = load ptr, ptr %err.file.gep89, align 8
  %err.line.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line92 = load i64, ptr %err.line.gep91, align 8
  %err.col.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col94 = load i64, ptr %err.col.gep93, align 8
  %err.msg.len95 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct88, i32 0, i32 0
  %err.msg.len96 = load i64, ptr %err.msg.len95, align 8
  %err.msg.len97 = and i64 %err.msg.len96, 281474976710655
  %str.tag98 = lshr i64 %err.msg.len96, 48
  %tag.immortal100 = icmp eq i64 %str.tag98, 0
  %active.gen101 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current102 = icmp eq i64 %str.tag98, %active.gen101
  %tag.fast.ok103 = or i1 %tag.immortal100, %tag.current102
  br i1 %tag.fast.ok103, label %str_ok99, label %tag.slow_check104

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load128 = load ptr, ptr %var.lows, align 8
  %a.load129 = load ptr, ptr %var.lows, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

str_ok99:                                         ; preds = %tag.slow_check104, %choice.else
  %err.msg.len32105 = trunc i64 %err.msg.len97 to i32
  %err.msg.data106 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct88, i32 0, i32 1
  %err.msg.data107 = load ptr, ptr %err.msg.data106, align 8
  %err.file.len108 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct90, i32 0, i32 0
  %err.file.len109 = load i64, ptr %err.file.len108, align 8
  %err.file.len110 = and i64 %err.file.len109, 281474976710655
  %str.tag111 = lshr i64 %err.file.len109, 48
  %tag.immortal113 = icmp eq i64 %str.tag111, 0
  %active.gen114 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current115 = icmp eq i64 %str.tag111, %active.gen114
  %tag.fast.ok116 = or i1 %tag.immortal113, %tag.current115
  br i1 %tag.fast.ok116, label %str_ok112, label %tag.slow_check117

tag.slow_check104:                                ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag98)
  br label %str_ok99

str_ok112:                                        ; preds = %tag.slow_check117, %str_ok99
  %err.file.len32118 = trunc i64 %err.file.len110 to i32
  %err.file.data119 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct90, i32 0, i32 1
  %err.file.data120 = load ptr, ptr %err.file.data119, align 8
  %err.thread.rec121 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread122 = icmp ne ptr %err.thread.rec121, null
  br i1 %err.is.thread122, label %err.thread123, label %err.normal124

tag.slow_check117:                                ; preds = %str_ok99
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag111)
  br label %str_ok112

err.thread123:                                    ; preds = %str_ok112
  %err.haserr.gep125 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec121, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep125, align 8
  %err.err.gep126 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec121, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep126, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal124:                                    ; preds = %str_ok112
  %err.panic.printf127 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code86, i32 %err.msg.len32105, ptr %err.msg.data107, i32 %err.file.len32118, ptr %err.file.data120, i64 %err.line92, i64 %err.col94)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create131:                                      ; preds = %choice.exit
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
  store ptr %a.create134, ptr %var.lows, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %choice.exit
  %a.load2140 = load ptr, ptr %var.lows, align 8
  %var.load141 = load i64, ptr %var.u, align 8
  %var.load142 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull143 = icmp ne ptr %a.load2140, null
  br i1 %a.wr.nonnull143, label %a.wr.check144, label %a.wr.err.null146

a.wr.check144:                                    ; preds = %a.after132
  %a.wr.len149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %a.wr.len150 = load i64, ptr %a.wr.len149, align 8
  %a.wr.ge0151 = icmp sge i64 %var.load141, 0
  %a.wr.lt152 = icmp slt i64 %var.load141, %a.wr.len150
  %a.wr.bounds153 = and i1 %a.wr.ge0151, %a.wr.lt152
  br i1 %a.wr.bounds153, label %a.wr.ok145, label %a.wr.err.oob147

a.wr.ok145:                                       ; preds = %a.wr.check144
  %a.wr.data154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 1
  %a.wr.data155 = load ptr, ptr %a.wr.data154, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.wr.data155, i64 %var.load141
  store i64 %var.load142, ptr %a.elem.gep156, align 8
  br label %a.wr.done148

a.wr.err.null146:                                 ; preds = %a.after132
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 56)
  %err.code.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 0
  store i64 4011, ptr %err.code.gep159, align 8
  %err.msg.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep160, align 8
  %err.file.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep161, align 8
  %err.line.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 3
  store i64 0, ptr %err.line.gep162, align 8
  %err.col.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 4
  store i64 0, ptr %err.col.gep163, align 8
  %err.ctx.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 5
  %err.ctx0.gep165 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep165, align 8
  %err.ctx1.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep166, align 8
  br label %a.wr.done148

a.wr.err.oob147:                                  ; preds = %a.wr.check144
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 56)
  %err.code.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 0
  store i64 4011, ptr %err.code.gep169, align 8
  %err.msg.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep170, align 8
  %err.file.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep171, align 8
  %err.line.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 3
  store i64 0, ptr %err.line.gep172, align 8
  %err.col.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 4
  store i64 0, ptr %err.col.gep173, align 8
  %err.ctx.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc168, i32 0, i32 5
  %err.ctx0.gep175 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep174, i32 0, i32 0
  store i64 %var.load141, ptr %err.ctx0.gep175, align 8
  %err.ctx1.gep176 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep174, i32 0, i32 1
  store i64 %a.wr.len150, ptr %err.ctx1.gep176, align 8
  br label %a.wr.done148

a.wr.done148:                                     ; preds = %a.wr.err.oob147, %a.wr.err.null146, %a.wr.ok145
  %a.wr.niche177 = phi ptr [ null, %a.wr.ok145 ], [ %err.alloc158, %a.wr.err.null146 ], [ %err.alloc168, %a.wr.err.oob147 ]
  %niche.eq.null178 = icmp eq ptr %a.wr.niche177, null
  br i1 %niche.eq.null178, label %choice.then179, label %choice.else180

choice.then179:                                   ; preds = %a.wr.done148
  br label %choice.exit181

choice.else180:                                   ; preds = %a.wr.done148
  store ptr %a.wr.niche177, ptr %var._182, align 8
  store ptr %a.wr.niche177, ptr %var._183, align 8
  store ptr %a.wr.niche177, ptr %var._184, align 8
  %err.code.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche177, i32 0, i32 0
  %err.code186 = load i64, ptr %err.code.gep185, align 8
  %err.msg.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche177, i32 0, i32 1
  %err.msg.struct188 = load ptr, ptr %err.msg.gep187, align 8
  %err.file.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche177, i32 0, i32 2
  %err.file.struct190 = load ptr, ptr %err.file.gep189, align 8
  %err.line.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche177, i32 0, i32 3
  %err.line192 = load i64, ptr %err.line.gep191, align 8
  %err.col.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche177, i32 0, i32 4
  %err.col194 = load i64, ptr %err.col.gep193, align 8
  %err.msg.len195 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct188, i32 0, i32 0
  %err.msg.len196 = load i64, ptr %err.msg.len195, align 8
  %err.msg.len197 = and i64 %err.msg.len196, 281474976710655
  %str.tag198 = lshr i64 %err.msg.len196, 48
  %tag.immortal200 = icmp eq i64 %str.tag198, 0
  %active.gen201 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current202 = icmp eq i64 %str.tag198, %active.gen201
  %tag.fast.ok203 = or i1 %tag.immortal200, %tag.current202
  br i1 %tag.fast.ok203, label %str_ok199, label %tag.slow_check204

choice.exit181:                                   ; preds = %err.abort228, %choice.then179
  %var.load229 = load ptr, ptr %var.s_cnt, align 8
  %a.load230 = load ptr, ptr %var.s_cnt, align 8
  %a.null231 = icmp eq ptr %a.load230, null
  br i1 %a.null231, label %a.create232, label %a.after233

str_ok199:                                        ; preds = %tag.slow_check204, %choice.else180
  %err.msg.len32205 = trunc i64 %err.msg.len197 to i32
  %err.msg.data206 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct188, i32 0, i32 1
  %err.msg.data207 = load ptr, ptr %err.msg.data206, align 8
  %err.file.len208 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct190, i32 0, i32 0
  %err.file.len209 = load i64, ptr %err.file.len208, align 8
  %err.file.len210 = and i64 %err.file.len209, 281474976710655
  %str.tag211 = lshr i64 %err.file.len209, 48
  %tag.immortal213 = icmp eq i64 %str.tag211, 0
  %active.gen214 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current215 = icmp eq i64 %str.tag211, %active.gen214
  %tag.fast.ok216 = or i1 %tag.immortal213, %tag.current215
  br i1 %tag.fast.ok216, label %str_ok212, label %tag.slow_check217

tag.slow_check204:                                ; preds = %choice.else180
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag198)
  br label %str_ok199

str_ok212:                                        ; preds = %tag.slow_check217, %str_ok199
  %err.file.len32218 = trunc i64 %err.file.len210 to i32
  %err.file.data219 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct190, i32 0, i32 1
  %err.file.data220 = load ptr, ptr %err.file.data219, align 8
  %err.thread.rec221 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread222 = icmp ne ptr %err.thread.rec221, null
  br i1 %err.is.thread222, label %err.thread223, label %err.normal224

tag.slow_check217:                                ; preds = %str_ok199
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag211)
  br label %str_ok212

err.thread223:                                    ; preds = %str_ok212
  %err.haserr.gep225 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec221, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep225, align 8
  %err.err.gep226 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec221, i32 0, i32 7
  store ptr %a.wr.niche177, ptr %err.err.gep226, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal224:                                    ; preds = %str_ok212
  %err.panic.printf227 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code186, i32 %err.msg.len32205, ptr %err.msg.data207, i32 %err.file.len32218, ptr %err.file.data220, i64 %err.line192, i64 %err.col194)
  call void @exit(i32 1)
  unreachable

err.abort228:                                     ; No predecessors!
  br label %choice.exit181

a.create232:                                      ; preds = %choice.exit181
  %arena.cur234 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 24)
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 128)
  %a.len.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 0
  store i64 0, ptr %a.len.gep238, align 8
  %a.data.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 1
  store ptr %a.buf237, ptr %a.data.gep239, align 8
  %a.cap.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 2
  store i64 16, ptr %a.cap.gep240, align 8
  store ptr %a.create235, ptr %var.s_cnt, align 8
  br label %a.after233

a.after233:                                       ; preds = %a.create232, %choice.exit181
  %a.load2241 = load ptr, ptr %var.s_cnt, align 8
  %var.load242 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load242, 1
  %a.wr.nonnull243 = icmp ne ptr %a.load2241, null
  br i1 %a.wr.nonnull243, label %a.wr.check244, label %a.wr.err.null246

a.wr.check244:                                    ; preds = %a.after233
  %a.wr.len249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2241, i32 0, i32 0
  %a.wr.len250 = load i64, ptr %a.wr.len249, align 8
  %a.wr.lt251 = icmp slt i64 0, %a.wr.len250
  %a.wr.bounds252 = and i1 true, %a.wr.lt251
  br i1 %a.wr.bounds252, label %a.wr.ok245, label %a.wr.err.oob247

a.wr.ok245:                                       ; preds = %a.wr.check244
  %a.wr.data253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2241, i32 0, i32 1
  %a.wr.data254 = load ptr, ptr %a.wr.data253, align 8
  %a.elem.gep255 = getelementptr i64, ptr %a.wr.data254, i64 0
  store i64 %addtmp, ptr %a.elem.gep255, align 8
  br label %a.wr.done248

a.wr.err.null246:                                 ; preds = %a.after233
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 56)
  %err.code.gep258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 0
  store i64 4011, ptr %err.code.gep258, align 8
  %err.msg.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep259, align 8
  %err.file.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep260, align 8
  %err.line.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 3
  store i64 0, ptr %err.line.gep261, align 8
  %err.col.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 4
  store i64 0, ptr %err.col.gep262, align 8
  %err.ctx.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc257, i32 0, i32 5
  %err.ctx0.gep264 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep263, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep264, align 8
  %err.ctx1.gep265 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep263, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep265, align 8
  br label %a.wr.done248

a.wr.err.oob247:                                  ; preds = %a.wr.check244
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 56)
  %err.code.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 0
  store i64 4011, ptr %err.code.gep268, align 8
  %err.msg.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep269, align 8
  %err.file.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep270, align 8
  %err.line.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 3
  store i64 0, ptr %err.line.gep271, align 8
  %err.col.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 4
  store i64 0, ptr %err.col.gep272, align 8
  %err.ctx.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 5
  %err.ctx0.gep274 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep273, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep274, align 8
  %err.ctx1.gep275 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep273, i32 0, i32 1
  store i64 %a.wr.len250, ptr %err.ctx1.gep275, align 8
  br label %a.wr.done248

a.wr.done248:                                     ; preds = %a.wr.err.oob247, %a.wr.err.null246, %a.wr.ok245
  %a.wr.niche276 = phi ptr [ null, %a.wr.ok245 ], [ %err.alloc257, %a.wr.err.null246 ], [ %err.alloc267, %a.wr.err.oob247 ]
  %niche.eq.null277 = icmp eq ptr %a.wr.niche276, null
  br i1 %niche.eq.null277, label %choice.then278, label %choice.else279

choice.then278:                                   ; preds = %a.wr.done248
  br label %choice.exit280

choice.else279:                                   ; preds = %a.wr.done248
  store ptr %a.wr.niche276, ptr %var._281, align 8
  store ptr %a.wr.niche276, ptr %var._282, align 8
  store ptr %a.wr.niche276, ptr %var._283, align 8
  %err.code.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche276, i32 0, i32 0
  %err.code285 = load i64, ptr %err.code.gep284, align 8
  %err.msg.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche276, i32 0, i32 1
  %err.msg.struct287 = load ptr, ptr %err.msg.gep286, align 8
  %err.file.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche276, i32 0, i32 2
  %err.file.struct289 = load ptr, ptr %err.file.gep288, align 8
  %err.line.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche276, i32 0, i32 3
  %err.line291 = load i64, ptr %err.line.gep290, align 8
  %err.col.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche276, i32 0, i32 4
  %err.col293 = load i64, ptr %err.col.gep292, align 8
  %err.msg.len294 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct287, i32 0, i32 0
  %err.msg.len295 = load i64, ptr %err.msg.len294, align 8
  %err.msg.len296 = and i64 %err.msg.len295, 281474976710655
  %str.tag297 = lshr i64 %err.msg.len295, 48
  %tag.immortal299 = icmp eq i64 %str.tag297, 0
  %active.gen300 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current301 = icmp eq i64 %str.tag297, %active.gen300
  %tag.fast.ok302 = or i1 %tag.immortal299, %tag.current301
  br i1 %tag.fast.ok302, label %str_ok298, label %tag.slow_check303

choice.exit280:                                   ; preds = %err.abort327, %choice.then278
  %var.load328 = load ptr, ptr %var.state, align 8
  %var.load329 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load328, i64 %var.load329)
  %var.load330 = load ptr, ptr %var.ons, align 8
  %a.load331 = load ptr, ptr %var.ons, align 8
  %a.null332 = icmp eq ptr %a.load331, null
  br i1 %a.null332, label %a.create333, label %a.after334

str_ok298:                                        ; preds = %tag.slow_check303, %choice.else279
  %err.msg.len32304 = trunc i64 %err.msg.len296 to i32
  %err.msg.data305 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct287, i32 0, i32 1
  %err.msg.data306 = load ptr, ptr %err.msg.data305, align 8
  %err.file.len307 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct289, i32 0, i32 0
  %err.file.len308 = load i64, ptr %err.file.len307, align 8
  %err.file.len309 = and i64 %err.file.len308, 281474976710655
  %str.tag310 = lshr i64 %err.file.len308, 48
  %tag.immortal312 = icmp eq i64 %str.tag310, 0
  %active.gen313 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current314 = icmp eq i64 %str.tag310, %active.gen313
  %tag.fast.ok315 = or i1 %tag.immortal312, %tag.current314
  br i1 %tag.fast.ok315, label %str_ok311, label %tag.slow_check316

tag.slow_check303:                                ; preds = %choice.else279
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag297)
  br label %str_ok298

str_ok311:                                        ; preds = %tag.slow_check316, %str_ok298
  %err.file.len32317 = trunc i64 %err.file.len309 to i32
  %err.file.data318 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct289, i32 0, i32 1
  %err.file.data319 = load ptr, ptr %err.file.data318, align 8
  %err.thread.rec320 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread321 = icmp ne ptr %err.thread.rec320, null
  br i1 %err.is.thread321, label %err.thread322, label %err.normal323

tag.slow_check316:                                ; preds = %str_ok298
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag310)
  br label %str_ok311

err.thread322:                                    ; preds = %str_ok311
  %err.haserr.gep324 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec320, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep324, align 8
  %err.err.gep325 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec320, i32 0, i32 7
  store ptr %a.wr.niche276, ptr %err.err.gep325, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal323:                                    ; preds = %str_ok311
  %err.panic.printf326 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code285, i32 %err.msg.len32304, ptr %err.msg.data306, i32 %err.file.len32317, ptr %err.file.data319, i64 %err.line291, i64 %err.col293)
  call void @exit(i32 1)
  unreachable

err.abort327:                                     ; No predecessors!
  br label %choice.exit280

a.create333:                                      ; preds = %choice.exit280
  %arena.cur335 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 24)
  %arena.cur337 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 128)
  %a.len.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 0
  store i64 0, ptr %a.len.gep339, align 8
  %a.data.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 1
  store ptr %a.buf338, ptr %a.data.gep340, align 8
  %a.cap.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 2
  store i64 16, ptr %a.cap.gep341, align 8
  store ptr %a.create336, ptr %var.ons, align 8
  br label %a.after334

a.after334:                                       ; preds = %a.create333, %choice.exit280
  %a.load2342 = load ptr, ptr %var.ons, align 8
  %var.load343 = load i64, ptr %var.u, align 8
  %a.wr.nonnull344 = icmp ne ptr %a.load2342, null
  br i1 %a.wr.nonnull344, label %a.wr.check345, label %a.wr.err.null347

a.wr.check345:                                    ; preds = %a.after334
  %a.wr.len350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 0
  %a.wr.len351 = load i64, ptr %a.wr.len350, align 8
  %a.wr.ge0352 = icmp sge i64 %var.load343, 0
  %a.wr.lt353 = icmp slt i64 %var.load343, %a.wr.len351
  %a.wr.bounds354 = and i1 %a.wr.ge0352, %a.wr.lt353
  br i1 %a.wr.bounds354, label %a.wr.ok346, label %a.wr.err.oob348

a.wr.ok346:                                       ; preds = %a.wr.check345
  %a.wr.data355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 1
  %a.wr.data356 = load ptr, ptr %a.wr.data355, align 8
  %a.elem.gep357 = getelementptr i64, ptr %a.wr.data356, i64 %var.load343
  store i64 1, ptr %a.elem.gep357, align 8
  br label %a.wr.done349

a.wr.err.null347:                                 ; preds = %a.after334
  %arena.cur358 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 56)
  %err.code.gep360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 0
  store i64 4011, ptr %err.code.gep360, align 8
  %err.msg.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep361, align 8
  %err.file.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep362, align 8
  %err.line.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 3
  store i64 0, ptr %err.line.gep363, align 8
  %err.col.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 4
  store i64 0, ptr %err.col.gep364, align 8
  %err.ctx.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 5
  %err.ctx0.gep366 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep365, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep366, align 8
  %err.ctx1.gep367 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep365, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep367, align 8
  br label %a.wr.done349

a.wr.err.oob348:                                  ; preds = %a.wr.check345
  %arena.cur368 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 56)
  %err.code.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 0
  store i64 4011, ptr %err.code.gep370, align 8
  %err.msg.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep371, align 8
  %err.file.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep372, align 8
  %err.line.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 3
  store i64 0, ptr %err.line.gep373, align 8
  %err.col.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 4
  store i64 0, ptr %err.col.gep374, align 8
  %err.ctx.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 5
  %err.ctx0.gep376 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 0
  store i64 %var.load343, ptr %err.ctx0.gep376, align 8
  %err.ctx1.gep377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 1
  store i64 %a.wr.len351, ptr %err.ctx1.gep377, align 8
  br label %a.wr.done349

a.wr.done349:                                     ; preds = %a.wr.err.oob348, %a.wr.err.null347, %a.wr.ok346
  %a.wr.niche378 = phi ptr [ null, %a.wr.ok346 ], [ %err.alloc359, %a.wr.err.null347 ], [ %err.alloc369, %a.wr.err.oob348 ]
  %niche.eq.null379 = icmp eq ptr %a.wr.niche378, null
  br i1 %niche.eq.null379, label %choice.then380, label %choice.else381

choice.then380:                                   ; preds = %a.wr.done349
  br label %choice.exit382

choice.else381:                                   ; preds = %a.wr.done349
  store ptr %a.wr.niche378, ptr %var._383, align 8
  store ptr %a.wr.niche378, ptr %var._384, align 8
  store ptr %a.wr.niche378, ptr %var._385, align 8
  %err.code.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche378, i32 0, i32 0
  %err.code387 = load i64, ptr %err.code.gep386, align 8
  %err.msg.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche378, i32 0, i32 1
  %err.msg.struct389 = load ptr, ptr %err.msg.gep388, align 8
  %err.file.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche378, i32 0, i32 2
  %err.file.struct391 = load ptr, ptr %err.file.gep390, align 8
  %err.line.gep392 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche378, i32 0, i32 3
  %err.line393 = load i64, ptr %err.line.gep392, align 8
  %err.col.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche378, i32 0, i32 4
  %err.col395 = load i64, ptr %err.col.gep394, align 8
  %err.msg.len396 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct389, i32 0, i32 0
  %err.msg.len397 = load i64, ptr %err.msg.len396, align 8
  %err.msg.len398 = and i64 %err.msg.len397, 281474976710655
  %str.tag399 = lshr i64 %err.msg.len397, 48
  %tag.immortal401 = icmp eq i64 %str.tag399, 0
  %active.gen402 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current403 = icmp eq i64 %str.tag399, %active.gen402
  %tag.fast.ok404 = or i1 %tag.immortal401, %tag.current403
  br i1 %tag.fast.ok404, label %str_ok400, label %tag.slow_check405

choice.exit382:                                   ; preds = %err.abort429, %choice.then380
  %var.load430 = load ptr, ptr %var.graph, align 8
  %fld.gep431 = getelementptr inbounds { ptr, ptr }, ptr %var.load430, i32 0, i32 0
  %fld.load432 = load ptr, ptr %fld.gep431, align 8
  %var.load433 = load i64, ptr %var.u, align 8
  %a.rd.nonnull434 = icmp ne ptr %fld.load432, null
  br i1 %a.rd.nonnull434, label %a.rd.check435, label %a.rd.err.null437

str_ok400:                                        ; preds = %tag.slow_check405, %choice.else381
  %err.msg.len32406 = trunc i64 %err.msg.len398 to i32
  %err.msg.data407 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct389, i32 0, i32 1
  %err.msg.data408 = load ptr, ptr %err.msg.data407, align 8
  %err.file.len409 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct391, i32 0, i32 0
  %err.file.len410 = load i64, ptr %err.file.len409, align 8
  %err.file.len411 = and i64 %err.file.len410, 281474976710655
  %str.tag412 = lshr i64 %err.file.len410, 48
  %tag.immortal414 = icmp eq i64 %str.tag412, 0
  %active.gen415 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current416 = icmp eq i64 %str.tag412, %active.gen415
  %tag.fast.ok417 = or i1 %tag.immortal414, %tag.current416
  br i1 %tag.fast.ok417, label %str_ok413, label %tag.slow_check418

tag.slow_check405:                                ; preds = %choice.else381
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag399)
  br label %str_ok400

str_ok413:                                        ; preds = %tag.slow_check418, %str_ok400
  %err.file.len32419 = trunc i64 %err.file.len411 to i32
  %err.file.data420 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct391, i32 0, i32 1
  %err.file.data421 = load ptr, ptr %err.file.data420, align 8
  %err.thread.rec422 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread423 = icmp ne ptr %err.thread.rec422, null
  br i1 %err.is.thread423, label %err.thread424, label %err.normal425

tag.slow_check418:                                ; preds = %str_ok400
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag412)
  br label %str_ok413

err.thread424:                                    ; preds = %str_ok413
  %err.haserr.gep426 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec422, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep426, align 8
  %err.err.gep427 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec422, i32 0, i32 7
  store ptr %a.wr.niche378, ptr %err.err.gep427, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal425:                                    ; preds = %str_ok413
  %err.panic.printf428 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code387, i32 %err.msg.len32406, ptr %err.msg.data408, i32 %err.file.len32419, ptr %err.file.data421, i64 %err.line393, i64 %err.col395)
  call void @exit(i32 1)
  unreachable

err.abort429:                                     ; No predecessors!
  br label %choice.exit382

a.rd.check435:                                    ; preds = %choice.exit382
  %a.rd.len440 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load432, i32 0, i32 0
  %a.rd.len441 = load i64, ptr %a.rd.len440, align 8
  %a.rd.ge0 = icmp sge i64 %var.load433, 0
  %a.rd.lt442 = icmp slt i64 %var.load433, %a.rd.len441
  %a.rd.bounds443 = and i1 %a.rd.ge0, %a.rd.lt442
  br i1 %a.rd.bounds443, label %a.rd.ok436, label %a.rd.err.oob438

a.rd.ok436:                                       ; preds = %a.rd.check435
  %a.rd.data444 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load432, i32 0, i32 1
  %a.rd.data445 = load ptr, ptr %a.rd.data444, align 8
  %a.rd.elem.gep446 = getelementptr i64, ptr %a.rd.data445, i64 %var.load433
  %a.rd.elem447 = load i64, ptr %a.rd.elem.gep446, align 8
  br label %a.rd.done439

a.rd.err.null437:                                 ; preds = %choice.exit382
  %arena.cur448 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 56)
  %err.code.gep450 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 0
  store i64 4011, ptr %err.code.gep450, align 8
  %err.msg.gep451 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep451, align 8
  %err.file.gep452 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep452, align 8
  %err.line.gep453 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 3
  store i64 0, ptr %err.line.gep453, align 8
  %err.col.gep454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 4
  store i64 0, ptr %err.col.gep454, align 8
  %err.ctx.gep455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc449, i32 0, i32 5
  %err.ctx0.gep456 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep455, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep456, align 8
  %err.ctx1.gep457 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep455, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep457, align 8
  %err.p2i458 = ptrtoint ptr %err.alloc449 to i64
  br label %a.rd.done439

a.rd.err.oob438:                                  ; preds = %a.rd.check435
  %arena.cur459 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 56)
  %err.code.gep461 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 0
  store i64 4011, ptr %err.code.gep461, align 8
  %err.msg.gep462 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep462, align 8
  %err.file.gep463 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep463, align 8
  %err.line.gep464 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 3
  store i64 0, ptr %err.line.gep464, align 8
  %err.col.gep465 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 4
  store i64 0, ptr %err.col.gep465, align 8
  %err.ctx.gep466 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 5
  %err.ctx0.gep467 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep466, i32 0, i32 0
  store i64 %var.load433, ptr %err.ctx0.gep467, align 8
  %err.ctx1.gep468 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep466, i32 0, i32 1
  store i64 %a.rd.len441, ptr %err.ctx1.gep468, align 8
  %err.p2i469 = ptrtoint ptr %err.alloc460 to i64
  br label %a.rd.done439

a.rd.done439:                                     ; preds = %a.rd.err.oob438, %a.rd.err.null437, %a.rd.ok436
  %a.rd.tag470 = phi i1 [ true, %a.rd.ok436 ], [ false, %a.rd.err.null437 ], [ false, %a.rd.err.oob438 ]
  %a.rd.pay471 = phi i64 [ %a.rd.elem447, %a.rd.ok436 ], [ %err.p2i458, %a.rd.err.null437 ], [ %err.p2i469, %a.rd.err.oob438 ]
  %ram.tag472 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag470, 0
  %ram.pay473 = insertvalue { i1, i64 } %ram.tag472, i64 %a.rd.pay471, 1
  %unwrap.is_pos474 = extractvalue { i1, i64 } %ram.pay473, 0
  br i1 %unwrap.is_pos474, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done439
  %unwrap.pay.pos520 = extractvalue { i1, i64 } %ram.pay473, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos520 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load521 = load ptr, ptr %var.u_node, align 8
  %fld.gep522 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load521, i32 0, i32 1
  %fld.load523 = load ptr, ptr %fld.gep522, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load523, i32 0, i32 0
  %arr.cycle.len524 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load523, i32 0, i32 1
  %arr.cycle.data525 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

unwrap.abort.75:                                  ; preds = %a.rd.done439
  %unwrap.pay.abort475 = extractvalue { i1, i64 } %ram.pay473, 1
  %err.ptr476 = inttoptr i64 %unwrap.pay.abort475 to ptr
  %err.code.gep477 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr476, i32 0, i32 0
  %err.code478 = load i64, ptr %err.code.gep477, align 8
  %err.msg.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr476, i32 0, i32 1
  %err.msg.struct480 = load ptr, ptr %err.msg.gep479, align 8
  %err.file.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr476, i32 0, i32 2
  %err.file.struct482 = load ptr, ptr %err.file.gep481, align 8
  %err.line.gep483 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr476, i32 0, i32 3
  %err.line484 = load i64, ptr %err.line.gep483, align 8
  %err.col.gep485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr476, i32 0, i32 4
  %err.col486 = load i64, ptr %err.col.gep485, align 8
  %err.msg.len487 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct480, i32 0, i32 0
  %err.msg.len488 = load i64, ptr %err.msg.len487, align 8
  %err.msg.len489 = and i64 %err.msg.len488, 281474976710655
  %str.tag490 = lshr i64 %err.msg.len488, 48
  %tag.immortal492 = icmp eq i64 %str.tag490, 0
  %active.gen493 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current494 = icmp eq i64 %str.tag490, %active.gen493
  %tag.fast.ok495 = or i1 %tag.immortal492, %tag.current494
  br i1 %tag.fast.ok495, label %str_ok491, label %tag.slow_check496

str_ok491:                                        ; preds = %tag.slow_check496, %unwrap.abort.75
  %err.msg.len32497 = trunc i64 %err.msg.len489 to i32
  %err.msg.data498 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct480, i32 0, i32 1
  %err.msg.data499 = load ptr, ptr %err.msg.data498, align 8
  %err.file.len500 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct482, i32 0, i32 0
  %err.file.len501 = load i64, ptr %err.file.len500, align 8
  %err.file.len502 = and i64 %err.file.len501, 281474976710655
  %str.tag503 = lshr i64 %err.file.len501, 48
  %tag.immortal505 = icmp eq i64 %str.tag503, 0
  %active.gen506 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current507 = icmp eq i64 %str.tag503, %active.gen506
  %tag.fast.ok508 = or i1 %tag.immortal505, %tag.current507
  br i1 %tag.fast.ok508, label %str_ok504, label %tag.slow_check509

tag.slow_check496:                                ; preds = %unwrap.abort.75
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag490)
  br label %str_ok491

str_ok504:                                        ; preds = %tag.slow_check509, %str_ok491
  %err.file.len32510 = trunc i64 %err.file.len502 to i32
  %err.file.data511 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct482, i32 0, i32 1
  %err.file.data512 = load ptr, ptr %err.file.data511, align 8
  %err.thread.rec513 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread514 = icmp ne ptr %err.thread.rec513, null
  br i1 %err.is.thread514, label %err.thread515, label %err.normal516

tag.slow_check509:                                ; preds = %str_ok491
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag503)
  br label %str_ok504

err.thread515:                                    ; preds = %str_ok504
  %err.haserr.gep517 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec513, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep517, align 8
  %err.err.gep518 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec513, i32 0, i32 7
  store ptr %err.ptr476, ptr %err.err.gep518, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal516:                                    ; preds = %str_ok504
  %err.panic.printf519 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code478, i32 %err.msg.len32497, ptr %err.msg.data499, i32 %err.file.len32510, ptr %err.file.data512, i64 %err.line484, i64 %err.col486)
  call void @exit(i32 1)
  unreachable

loop.header.76:                                   ; preds = %loop.latch.76, %unwrap.pos.75
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len524
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data525, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._526, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  %var.load527 = load ptr, ptr %var.graph, align 8
  %var.load528 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load527, ptr %var.load528)
  store i64 %call.res, ptr %var.v, align 8
  %var.load529 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load529, 0
  br i1 %cmptmp, label %choice.then530, label %choice.exit531

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit531
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  %var.load1197 = load ptr, ptr %var.lows, align 8
  %a.load1198 = load ptr, ptr %var.lows, align 8
  %a.null1199 = icmp eq ptr %a.load1198, null
  br i1 %a.null1199, label %a.create1200, label %a.after1201

choice.then530:                                   ; preds = %loop.body.76
  %var.load532 = load ptr, ptr %var.idxs, align 8
  %a.load533 = load ptr, ptr %var.idxs, align 8
  %a.null534 = icmp eq ptr %a.load533, null
  br i1 %a.null534, label %a.create535, label %a.after536

choice.exit531:                                   ; preds = %choice.exit600, %loop.body.76
  br label %loop.latch.76

a.create535:                                      ; preds = %choice.then530
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 24)
  %arena.cur539 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 128)
  %a.len.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 0
  store i64 0, ptr %a.len.gep541, align 8
  %a.data.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 1
  store ptr %a.buf540, ptr %a.data.gep542, align 8
  %a.cap.gep543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 2
  store i64 16, ptr %a.cap.gep543, align 8
  store ptr %a.create538, ptr %var.idxs, align 8
  br label %a.after536

a.after536:                                       ; preds = %a.create535, %choice.then530
  %a.load2544 = load ptr, ptr %var.idxs, align 8
  %var.load545 = load i64, ptr %var.v, align 8
  %a.rd.nonnull546 = icmp ne ptr %a.load2544, null
  br i1 %a.rd.nonnull546, label %a.rd.check547, label %a.rd.err.null549

a.rd.check547:                                    ; preds = %a.after536
  %a.rd.len552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2544, i32 0, i32 0
  %a.rd.len553 = load i64, ptr %a.rd.len552, align 8
  %a.rd.ge0554 = icmp sge i64 %var.load545, 0
  %a.rd.lt555 = icmp slt i64 %var.load545, %a.rd.len553
  %a.rd.bounds556 = and i1 %a.rd.ge0554, %a.rd.lt555
  br i1 %a.rd.bounds556, label %a.rd.ok548, label %a.rd.err.oob550

a.rd.ok548:                                       ; preds = %a.rd.check547
  %a.rd.data557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2544, i32 0, i32 1
  %a.rd.data558 = load ptr, ptr %a.rd.data557, align 8
  %a.rd.elem.gep559 = getelementptr i64, ptr %a.rd.data558, i64 %var.load545
  %a.rd.elem560 = load i64, ptr %a.rd.elem.gep559, align 8
  br label %a.rd.done551

a.rd.err.null549:                                 ; preds = %a.after536
  %arena.cur561 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc562 = call ptr @dva_arena_alloc(ptr %arena.cur561, i64 56)
  %err.code.gep563 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 0
  store i64 4011, ptr %err.code.gep563, align 8
  %err.msg.gep564 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep564, align 8
  %err.file.gep565 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep565, align 8
  %err.line.gep566 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 3
  store i64 299, ptr %err.line.gep566, align 8
  %err.col.gep567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 4
  store i64 29, ptr %err.col.gep567, align 8
  %err.ctx.gep568 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc562, i32 0, i32 5
  %err.ctx0.gep569 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep568, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep569, align 8
  %err.ctx1.gep570 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep568, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep570, align 8
  %err.p2i571 = ptrtoint ptr %err.alloc562 to i64
  br label %a.rd.done551

a.rd.err.oob550:                                  ; preds = %a.rd.check547
  %arena.cur572 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 56)
  %err.code.gep574 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 0
  store i64 4011, ptr %err.code.gep574, align 8
  %err.msg.gep575 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep575, align 8
  %err.file.gep576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep576, align 8
  %err.line.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 3
  store i64 299, ptr %err.line.gep577, align 8
  %err.col.gep578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 4
  store i64 29, ptr %err.col.gep578, align 8
  %err.ctx.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 5
  %err.ctx0.gep580 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep579, i32 0, i32 0
  store i64 %var.load545, ptr %err.ctx0.gep580, align 8
  %err.ctx1.gep581 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep579, i32 0, i32 1
  store i64 %a.rd.len553, ptr %err.ctx1.gep581, align 8
  %err.p2i582 = ptrtoint ptr %err.alloc573 to i64
  br label %a.rd.done551

a.rd.done551:                                     ; preds = %a.rd.err.oob550, %a.rd.err.null549, %a.rd.ok548
  %a.rd.tag583 = phi i1 [ true, %a.rd.ok548 ], [ false, %a.rd.err.null549 ], [ false, %a.rd.err.oob550 ]
  %a.rd.pay584 = phi i64 [ %a.rd.elem560, %a.rd.ok548 ], [ %err.p2i571, %a.rd.err.null549 ], [ %err.p2i582, %a.rd.err.oob550 ]
  %ram.tag585 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag583, 0
  %ram.pay586 = insertvalue { i1, i64 } %ram.tag585, i64 %a.rd.pay584, 1
  %ram.tag587 = extractvalue { i1, i64 } %ram.pay586, 0
  br i1 %ram.tag587, label %choice.then588, label %choice.else589

choice.then588:                                   ; preds = %a.rd.done551
  %ram.pay591 = extractvalue { i1, i64 } %ram.pay586, 1
  store i64 %ram.pay591, ptr %var._592, align 8
  br label %choice.exit590

choice.else589:                                   ; preds = %a.rd.done551
  %ram.pay593 = extractvalue { i1, i64 } %ram.pay586, 1
  %pay.ptr594 = inttoptr i64 %ram.pay593 to ptr
  store ptr %pay.ptr594, ptr %var._595, align 8
  br label %choice.exit590

choice.exit590:                                   ; preds = %choice.else589, %choice.then588
  %choice.res = phi i64 [ %ram.pay591, %choice.then588 ], [ -1, %choice.else589 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load596 = load i64, ptr %var.v_idx, align 8
  %cmptmp597 = icmp slt i64 %var.load596, 0
  br i1 %cmptmp597, label %choice.then598, label %choice.else599

choice.then598:                                   ; preds = %choice.exit590
  %var.load601 = load ptr, ptr %var.graph, align 8
  %var.load602 = load ptr, ptr %var.state, align 8
  %var.load603 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load601, ptr %var.load602, i64 %var.load603)
  %var.load604 = load ptr, ptr %var.lows, align 8
  %a.load605 = load ptr, ptr %var.lows, align 8
  %a.null606 = icmp eq ptr %a.load605, null
  br i1 %a.null606, label %a.create607, label %a.after608

choice.else599:                                   ; preds = %choice.exit590
  %var.load866 = load ptr, ptr %var.ons, align 8
  %a.load867 = load ptr, ptr %var.ons, align 8
  %a.null868 = icmp eq ptr %a.load867, null
  br i1 %a.null868, label %a.create869, label %a.after870

choice.exit600:                                   ; preds = %choice.exit933, %choice.exit832
  br label %choice.exit531

a.create607:                                      ; preds = %choice.then598
  %arena.cur609 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create610 = call ptr @dva_arena_alloc(ptr %arena.cur609, i64 24)
  %arena.cur611 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 128)
  %a.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 0
  store i64 0, ptr %a.len.gep613, align 8
  %a.data.gep614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 1
  store ptr %a.buf612, ptr %a.data.gep614, align 8
  %a.cap.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create610, i32 0, i32 2
  store i64 16, ptr %a.cap.gep615, align 8
  store ptr %a.create610, ptr %var.lows, align 8
  br label %a.after608

a.after608:                                       ; preds = %a.create607, %choice.then598
  %a.load2616 = load ptr, ptr %var.lows, align 8
  %var.load617 = load i64, ptr %var.u, align 8
  %var.load618 = load ptr, ptr %var.lows, align 8
  %a.load619 = load ptr, ptr %var.lows, align 8
  %a.null620 = icmp eq ptr %a.load619, null
  br i1 %a.null620, label %a.create621, label %a.after622

a.create621:                                      ; preds = %a.after608
  %arena.cur623 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create624 = call ptr @dva_arena_alloc(ptr %arena.cur623, i64 24)
  %arena.cur625 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf626 = call ptr @dva_arena_alloc(ptr %arena.cur625, i64 128)
  %a.len.gep627 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create624, i32 0, i32 0
  store i64 0, ptr %a.len.gep627, align 8
  %a.data.gep628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create624, i32 0, i32 1
  store ptr %a.buf626, ptr %a.data.gep628, align 8
  %a.cap.gep629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create624, i32 0, i32 2
  store i64 16, ptr %a.cap.gep629, align 8
  store ptr %a.create624, ptr %var.lows, align 8
  br label %a.after622

a.after622:                                       ; preds = %a.create621, %a.after608
  %a.load2630 = load ptr, ptr %var.lows, align 8
  %var.load631 = load i64, ptr %var.u, align 8
  %a.rd.nonnull632 = icmp ne ptr %a.load2630, null
  br i1 %a.rd.nonnull632, label %a.rd.check633, label %a.rd.err.null635

a.rd.check633:                                    ; preds = %a.after622
  %a.rd.len638 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2630, i32 0, i32 0
  %a.rd.len639 = load i64, ptr %a.rd.len638, align 8
  %a.rd.ge0640 = icmp sge i64 %var.load631, 0
  %a.rd.lt641 = icmp slt i64 %var.load631, %a.rd.len639
  %a.rd.bounds642 = and i1 %a.rd.ge0640, %a.rd.lt641
  br i1 %a.rd.bounds642, label %a.rd.ok634, label %a.rd.err.oob636

a.rd.ok634:                                       ; preds = %a.rd.check633
  %a.rd.data643 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2630, i32 0, i32 1
  %a.rd.data644 = load ptr, ptr %a.rd.data643, align 8
  %a.rd.elem.gep645 = getelementptr i64, ptr %a.rd.data644, i64 %var.load631
  %a.rd.elem646 = load i64, ptr %a.rd.elem.gep645, align 8
  br label %a.rd.done637

a.rd.err.null635:                                 ; preds = %a.after622
  %arena.cur647 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc648 = call ptr @dva_arena_alloc(ptr %arena.cur647, i64 56)
  %err.code.gep649 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 0
  store i64 4011, ptr %err.code.gep649, align 8
  %err.msg.gep650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep650, align 8
  %err.file.gep651 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep651, align 8
  %err.line.gep652 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 3
  store i64 303, ptr %err.line.gep652, align 8
  %err.col.gep653 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 4
  store i64 41, ptr %err.col.gep653, align 8
  %err.ctx.gep654 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc648, i32 0, i32 5
  %err.ctx0.gep655 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep654, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep655, align 8
  %err.ctx1.gep656 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep654, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep656, align 8
  %err.p2i657 = ptrtoint ptr %err.alloc648 to i64
  br label %a.rd.done637

a.rd.err.oob636:                                  ; preds = %a.rd.check633
  %arena.cur658 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc659 = call ptr @dva_arena_alloc(ptr %arena.cur658, i64 56)
  %err.code.gep660 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 0
  store i64 4011, ptr %err.code.gep660, align 8
  %err.msg.gep661 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep661, align 8
  %err.file.gep662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep662, align 8
  %err.line.gep663 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 3
  store i64 303, ptr %err.line.gep663, align 8
  %err.col.gep664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 4
  store i64 41, ptr %err.col.gep664, align 8
  %err.ctx.gep665 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 5
  %err.ctx0.gep666 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 0
  store i64 %var.load631, ptr %err.ctx0.gep666, align 8
  %err.ctx1.gep667 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 1
  store i64 %a.rd.len639, ptr %err.ctx1.gep667, align 8
  %err.p2i668 = ptrtoint ptr %err.alloc659 to i64
  br label %a.rd.done637

a.rd.done637:                                     ; preds = %a.rd.err.oob636, %a.rd.err.null635, %a.rd.ok634
  %a.rd.tag669 = phi i1 [ true, %a.rd.ok634 ], [ false, %a.rd.err.null635 ], [ false, %a.rd.err.oob636 ]
  %a.rd.pay670 = phi i64 [ %a.rd.elem646, %a.rd.ok634 ], [ %err.p2i657, %a.rd.err.null635 ], [ %err.p2i668, %a.rd.err.oob636 ]
  %ram.tag671 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag669, 0
  %ram.pay672 = insertvalue { i1, i64 } %ram.tag671, i64 %a.rd.pay670, 1
  %unwrap.is_pos673 = extractvalue { i1, i64 } %ram.pay672, 0
  br i1 %unwrap.is_pos673, label %unwrap.pos.77, label %unwrap.abort.77

unwrap.pos.77:                                    ; preds = %a.rd.done637
  %unwrap.pay.pos705 = extractvalue { i1, i64 } %ram.pay672, 1
  %var.load706 = load ptr, ptr %var.lows, align 8
  %a.load707 = load ptr, ptr %var.lows, align 8
  %a.null708 = icmp eq ptr %a.load707, null
  br i1 %a.null708, label %a.create709, label %a.after710

unwrap.abort.77:                                  ; preds = %a.rd.done637
  %unwrap.pay.abort674 = extractvalue { i1, i64 } %ram.pay672, 1
  %err.ptr675 = inttoptr i64 %unwrap.pay.abort674 to ptr
  %err.code.gep676 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr675, i32 0, i32 0
  %err.code677 = load i64, ptr %err.code.gep676, align 8
  %err.msg.gep678 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr675, i32 0, i32 1
  %err.msg.struct679 = load ptr, ptr %err.msg.gep678, align 8
  %err.file.gep680 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr675, i32 0, i32 2
  %err.file.struct681 = load ptr, ptr %err.file.gep680, align 8
  %err.line.gep682 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr675, i32 0, i32 3
  %err.line683 = load i64, ptr %err.line.gep682, align 8
  %err.col.gep684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr675, i32 0, i32 4
  %err.col685 = load i64, ptr %err.col.gep684, align 8
  %err.msg.len686 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct679, i32 0, i32 0
  %err.msg.len687 = load i64, ptr %err.msg.len686, align 8
  %err.msg.len688 = and i64 %err.msg.len687, 281474976710655
  %err.msg.len32689 = trunc i64 %err.msg.len688 to i32
  %err.msg.data690 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct679, i32 0, i32 1
  %err.msg.data691 = load ptr, ptr %err.msg.data690, align 8
  %err.file.len692 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct681, i32 0, i32 0
  %err.file.len693 = load i64, ptr %err.file.len692, align 8
  %err.file.len694 = and i64 %err.file.len693, 281474976710655
  %err.file.len32695 = trunc i64 %err.file.len694 to i32
  %err.file.data696 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct681, i32 0, i32 1
  %err.file.data697 = load ptr, ptr %err.file.data696, align 8
  %err.thread.rec698 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread699 = icmp ne ptr %err.thread.rec698, null
  br i1 %err.is.thread699, label %err.thread700, label %err.normal701

err.thread700:                                    ; preds = %unwrap.abort.77
  %err.haserr.gep702 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec698, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep702, align 8
  %err.err.gep703 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec698, i32 0, i32 7
  store ptr %err.ptr675, ptr %err.err.gep703, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal701:                                    ; preds = %unwrap.abort.77
  %err.panic.printf704 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code677, i32 %err.msg.len32689, ptr %err.msg.data691, i32 %err.file.len32695, ptr %err.file.data697, i64 %err.line683, i64 %err.col685)
  call void @exit(i32 1)
  unreachable

a.create709:                                      ; preds = %unwrap.pos.77
  %arena.cur711 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create712 = call ptr @dva_arena_alloc(ptr %arena.cur711, i64 24)
  %arena.cur713 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 128)
  %a.len.gep715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 0
  store i64 0, ptr %a.len.gep715, align 8
  %a.data.gep716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 1
  store ptr %a.buf714, ptr %a.data.gep716, align 8
  %a.cap.gep717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create712, i32 0, i32 2
  store i64 16, ptr %a.cap.gep717, align 8
  store ptr %a.create712, ptr %var.lows, align 8
  br label %a.after710

a.after710:                                       ; preds = %a.create709, %unwrap.pos.77
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
  %arena.cur735 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc736 = call ptr @dva_arena_alloc(ptr %arena.cur735, i64 56)
  %err.code.gep737 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 0
  store i64 4011, ptr %err.code.gep737, align 8
  %err.msg.gep738 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep738, align 8
  %err.file.gep739 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep739, align 8
  %err.line.gep740 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 3
  store i64 303, ptr %err.line.gep740, align 8
  %err.col.gep741 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 4
  store i64 52, ptr %err.col.gep741, align 8
  %err.ctx.gep742 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc736, i32 0, i32 5
  %err.ctx0.gep743 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep742, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep743, align 8
  %err.ctx1.gep744 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep742, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep744, align 8
  %err.p2i745 = ptrtoint ptr %err.alloc736 to i64
  br label %a.rd.done725

a.rd.err.oob724:                                  ; preds = %a.rd.check721
  %arena.cur746 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc747 = call ptr @dva_arena_alloc(ptr %arena.cur746, i64 56)
  %err.code.gep748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 0
  store i64 4011, ptr %err.code.gep748, align 8
  %err.msg.gep749 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep749, align 8
  %err.file.gep750 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep750, align 8
  %err.line.gep751 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 3
  store i64 303, ptr %err.line.gep751, align 8
  %err.col.gep752 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc747, i32 0, i32 4
  store i64 52, ptr %err.col.gep752, align 8
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
  %unwrap.is_pos761 = extractvalue { i1, i64 } %ram.pay760, 0
  br i1 %unwrap.is_pos761, label %unwrap.pos.78, label %unwrap.abort.78

unwrap.pos.78:                                    ; preds = %a.rd.done725
  %unwrap.pay.pos793 = extractvalue { i1, i64 } %ram.pay760, 1
  %min = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos705, i64 %unwrap.pay.pos793)
  %a.wr.nonnull794 = icmp ne ptr %a.load2616, null
  br i1 %a.wr.nonnull794, label %a.wr.check795, label %a.wr.err.null797

unwrap.abort.78:                                  ; preds = %a.rd.done725
  %unwrap.pay.abort762 = extractvalue { i1, i64 } %ram.pay760, 1
  %err.ptr763 = inttoptr i64 %unwrap.pay.abort762 to ptr
  %err.code.gep764 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr763, i32 0, i32 0
  %err.code765 = load i64, ptr %err.code.gep764, align 8
  %err.msg.gep766 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr763, i32 0, i32 1
  %err.msg.struct767 = load ptr, ptr %err.msg.gep766, align 8
  %err.file.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr763, i32 0, i32 2
  %err.file.struct769 = load ptr, ptr %err.file.gep768, align 8
  %err.line.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr763, i32 0, i32 3
  %err.line771 = load i64, ptr %err.line.gep770, align 8
  %err.col.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr763, i32 0, i32 4
  %err.col773 = load i64, ptr %err.col.gep772, align 8
  %err.msg.len774 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct767, i32 0, i32 0
  %err.msg.len775 = load i64, ptr %err.msg.len774, align 8
  %err.msg.len776 = and i64 %err.msg.len775, 281474976710655
  %err.msg.len32777 = trunc i64 %err.msg.len776 to i32
  %err.msg.data778 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct767, i32 0, i32 1
  %err.msg.data779 = load ptr, ptr %err.msg.data778, align 8
  %err.file.len780 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct769, i32 0, i32 0
  %err.file.len781 = load i64, ptr %err.file.len780, align 8
  %err.file.len782 = and i64 %err.file.len781, 281474976710655
  %err.file.len32783 = trunc i64 %err.file.len782 to i32
  %err.file.data784 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct769, i32 0, i32 1
  %err.file.data785 = load ptr, ptr %err.file.data784, align 8
  %err.thread.rec786 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread787 = icmp ne ptr %err.thread.rec786, null
  br i1 %err.is.thread787, label %err.thread788, label %err.normal789

err.thread788:                                    ; preds = %unwrap.abort.78
  %err.haserr.gep790 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec786, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep790, align 8
  %err.err.gep791 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec786, i32 0, i32 7
  store ptr %err.ptr763, ptr %err.err.gep791, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal789:                                    ; preds = %unwrap.abort.78
  %err.panic.printf792 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code765, i32 %err.msg.len32777, ptr %err.msg.data779, i32 %err.file.len32783, ptr %err.file.data785, i64 %err.line771, i64 %err.col773)
  call void @exit(i32 1)
  unreachable

a.wr.check795:                                    ; preds = %unwrap.pos.78
  %a.wr.len800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2616, i32 0, i32 0
  %a.wr.len801 = load i64, ptr %a.wr.len800, align 8
  %a.wr.ge0802 = icmp sge i64 %var.load617, 0
  %a.wr.lt803 = icmp slt i64 %var.load617, %a.wr.len801
  %a.wr.bounds804 = and i1 %a.wr.ge0802, %a.wr.lt803
  br i1 %a.wr.bounds804, label %a.wr.ok796, label %a.wr.err.oob798

a.wr.ok796:                                       ; preds = %a.wr.check795
  %a.wr.data805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2616, i32 0, i32 1
  %a.wr.data806 = load ptr, ptr %a.wr.data805, align 8
  %a.elem.gep807 = getelementptr i64, ptr %a.wr.data806, i64 %var.load617
  store i64 %min, ptr %a.elem.gep807, align 8
  br label %a.wr.done799

a.wr.err.null797:                                 ; preds = %unwrap.pos.78
  %arena.cur808 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc809 = call ptr @dva_arena_alloc(ptr %arena.cur808, i64 56)
  %err.code.gep810 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 0
  store i64 4011, ptr %err.code.gep810, align 8
  %err.msg.gep811 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep811, align 8
  %err.file.gep812 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep812, align 8
  %err.line.gep813 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 3
  store i64 0, ptr %err.line.gep813, align 8
  %err.col.gep814 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 4
  store i64 0, ptr %err.col.gep814, align 8
  %err.ctx.gep815 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc809, i32 0, i32 5
  %err.ctx0.gep816 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep815, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep816, align 8
  %err.ctx1.gep817 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep815, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep817, align 8
  br label %a.wr.done799

a.wr.err.oob798:                                  ; preds = %a.wr.check795
  %arena.cur818 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc819 = call ptr @dva_arena_alloc(ptr %arena.cur818, i64 56)
  %err.code.gep820 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 0
  store i64 4011, ptr %err.code.gep820, align 8
  %err.msg.gep821 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep821, align 8
  %err.file.gep822 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep822, align 8
  %err.line.gep823 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 3
  store i64 0, ptr %err.line.gep823, align 8
  %err.col.gep824 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 4
  store i64 0, ptr %err.col.gep824, align 8
  %err.ctx.gep825 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc819, i32 0, i32 5
  %err.ctx0.gep826 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep825, i32 0, i32 0
  store i64 %var.load617, ptr %err.ctx0.gep826, align 8
  %err.ctx1.gep827 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep825, i32 0, i32 1
  store i64 %a.wr.len801, ptr %err.ctx1.gep827, align 8
  br label %a.wr.done799

a.wr.done799:                                     ; preds = %a.wr.err.oob798, %a.wr.err.null797, %a.wr.ok796
  %a.wr.niche828 = phi ptr [ null, %a.wr.ok796 ], [ %err.alloc809, %a.wr.err.null797 ], [ %err.alloc819, %a.wr.err.oob798 ]
  %niche.eq.null829 = icmp eq ptr %a.wr.niche828, null
  br i1 %niche.eq.null829, label %choice.then830, label %choice.else831

choice.then830:                                   ; preds = %a.wr.done799
  br label %choice.exit832

choice.else831:                                   ; preds = %a.wr.done799
  store ptr %a.wr.niche828, ptr %var._833, align 8
  store ptr %a.wr.niche828, ptr %var._834, align 8
  store ptr %a.wr.niche828, ptr %var._835, align 8
  %err.code.gep836 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche828, i32 0, i32 0
  %err.code837 = load i64, ptr %err.code.gep836, align 8
  %err.msg.gep838 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche828, i32 0, i32 1
  %err.msg.struct839 = load ptr, ptr %err.msg.gep838, align 8
  %err.file.gep840 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche828, i32 0, i32 2
  %err.file.struct841 = load ptr, ptr %err.file.gep840, align 8
  %err.line.gep842 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche828, i32 0, i32 3
  %err.line843 = load i64, ptr %err.line.gep842, align 8
  %err.col.gep844 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche828, i32 0, i32 4
  %err.col845 = load i64, ptr %err.col.gep844, align 8
  %err.msg.len846 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct839, i32 0, i32 0
  %err.msg.len847 = load i64, ptr %err.msg.len846, align 8
  %err.msg.len848 = and i64 %err.msg.len847, 281474976710655
  %err.msg.len32849 = trunc i64 %err.msg.len848 to i32
  %err.msg.data850 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct839, i32 0, i32 1
  %err.msg.data851 = load ptr, ptr %err.msg.data850, align 8
  %err.file.len852 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct841, i32 0, i32 0
  %err.file.len853 = load i64, ptr %err.file.len852, align 8
  %err.file.len854 = and i64 %err.file.len853, 281474976710655
  %err.file.len32855 = trunc i64 %err.file.len854 to i32
  %err.file.data856 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct841, i32 0, i32 1
  %err.file.data857 = load ptr, ptr %err.file.data856, align 8
  %err.thread.rec858 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread859 = icmp ne ptr %err.thread.rec858, null
  br i1 %err.is.thread859, label %err.thread860, label %err.normal861

choice.exit832:                                   ; preds = %err.abort865, %choice.then830
  br label %choice.exit600

err.thread860:                                    ; preds = %choice.else831
  %err.haserr.gep862 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec858, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep862, align 8
  %err.err.gep863 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec858, i32 0, i32 7
  store ptr %a.wr.niche828, ptr %err.err.gep863, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal861:                                    ; preds = %choice.else831
  %err.panic.printf864 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code837, i32 %err.msg.len32849, ptr %err.msg.data851, i32 %err.file.len32855, ptr %err.file.data857, i64 %err.line843, i64 %err.col845)
  call void @exit(i32 1)
  unreachable

err.abort865:                                     ; No predecessors!
  br label %choice.exit832

a.create869:                                      ; preds = %choice.else599
  %arena.cur871 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create872 = call ptr @dva_arena_alloc(ptr %arena.cur871, i64 24)
  %arena.cur873 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf874 = call ptr @dva_arena_alloc(ptr %arena.cur873, i64 128)
  %a.len.gep875 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 0
  store i64 0, ptr %a.len.gep875, align 8
  %a.data.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 1
  store ptr %a.buf874, ptr %a.data.gep876, align 8
  %a.cap.gep877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create872, i32 0, i32 2
  store i64 16, ptr %a.cap.gep877, align 8
  store ptr %a.create872, ptr %var.ons, align 8
  br label %a.after870

a.after870:                                       ; preds = %a.create869, %choice.else599
  %a.load2878 = load ptr, ptr %var.ons, align 8
  %var.load879 = load i64, ptr %var.v, align 8
  %a.rd.nonnull880 = icmp ne ptr %a.load2878, null
  br i1 %a.rd.nonnull880, label %a.rd.check881, label %a.rd.err.null883

a.rd.check881:                                    ; preds = %a.after870
  %a.rd.len886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2878, i32 0, i32 0
  %a.rd.len887 = load i64, ptr %a.rd.len886, align 8
  %a.rd.ge0888 = icmp sge i64 %var.load879, 0
  %a.rd.lt889 = icmp slt i64 %var.load879, %a.rd.len887
  %a.rd.bounds890 = and i1 %a.rd.ge0888, %a.rd.lt889
  br i1 %a.rd.bounds890, label %a.rd.ok882, label %a.rd.err.oob884

a.rd.ok882:                                       ; preds = %a.rd.check881
  %a.rd.data891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2878, i32 0, i32 1
  %a.rd.data892 = load ptr, ptr %a.rd.data891, align 8
  %a.rd.elem.gep893 = getelementptr i64, ptr %a.rd.data892, i64 %var.load879
  %a.rd.elem894 = load i64, ptr %a.rd.elem.gep893, align 8
  br label %a.rd.done885

a.rd.err.null883:                                 ; preds = %a.after870
  %arena.cur895 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 56)
  %err.code.gep897 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 0
  store i64 4011, ptr %err.code.gep897, align 8
  %err.msg.gep898 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep898, align 8
  %err.file.gep899 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep899, align 8
  %err.line.gep900 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 3
  store i64 305, ptr %err.line.gep900, align 8
  %err.col.gep901 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 4
  store i64 33, ptr %err.col.gep901, align 8
  %err.ctx.gep902 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc896, i32 0, i32 5
  %err.ctx0.gep903 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep902, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep903, align 8
  %err.ctx1.gep904 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep902, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep904, align 8
  %err.p2i905 = ptrtoint ptr %err.alloc896 to i64
  br label %a.rd.done885

a.rd.err.oob884:                                  ; preds = %a.rd.check881
  %arena.cur906 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc907 = call ptr @dva_arena_alloc(ptr %arena.cur906, i64 56)
  %err.code.gep908 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 0
  store i64 4011, ptr %err.code.gep908, align 8
  %err.msg.gep909 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep909, align 8
  %err.file.gep910 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep910, align 8
  %err.line.gep911 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 3
  store i64 305, ptr %err.line.gep911, align 8
  %err.col.gep912 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 4
  store i64 33, ptr %err.col.gep912, align 8
  %err.ctx.gep913 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc907, i32 0, i32 5
  %err.ctx0.gep914 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep913, i32 0, i32 0
  store i64 %var.load879, ptr %err.ctx0.gep914, align 8
  %err.ctx1.gep915 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep913, i32 0, i32 1
  store i64 %a.rd.len887, ptr %err.ctx1.gep915, align 8
  %err.p2i916 = ptrtoint ptr %err.alloc907 to i64
  br label %a.rd.done885

a.rd.done885:                                     ; preds = %a.rd.err.oob884, %a.rd.err.null883, %a.rd.ok882
  %a.rd.tag917 = phi i1 [ true, %a.rd.ok882 ], [ false, %a.rd.err.null883 ], [ false, %a.rd.err.oob884 ]
  %a.rd.pay918 = phi i64 [ %a.rd.elem894, %a.rd.ok882 ], [ %err.p2i905, %a.rd.err.null883 ], [ %err.p2i916, %a.rd.err.oob884 ]
  %ram.tag919 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag917, 0
  %ram.pay920 = insertvalue { i1, i64 } %ram.tag919, i64 %a.rd.pay918, 1
  %ram.tag921 = extractvalue { i1, i64 } %ram.pay920, 0
  br i1 %ram.tag921, label %choice.then922, label %choice.else923

choice.then922:                                   ; preds = %a.rd.done885
  %ram.pay925 = extractvalue { i1, i64 } %ram.pay920, 1
  %pay.flag = trunc i64 %ram.pay925 to i1
  store i1 %pay.flag, ptr %var._926, align 1
  br label %choice.exit924

choice.else923:                                   ; preds = %a.rd.done885
  %ram.pay927 = extractvalue { i1, i64 } %ram.pay920, 1
  %pay.ptr928 = inttoptr i64 %ram.pay927 to ptr
  store ptr %pay.ptr928, ptr %var._929, align 8
  br label %choice.exit924

choice.exit924:                                   ; preds = %choice.else923, %choice.then922
  %choice.res930 = phi i1 [ %pay.flag, %choice.then922 ], [ false, %choice.else923 ]
  store i1 %choice.res930, ptr %var.v_on, align 1
  %var.load931 = load i1, ptr %var.v_on, align 1
  br i1 %var.load931, label %choice.then932, label %choice.exit933

choice.then932:                                   ; preds = %choice.exit924
  %var.load934 = load ptr, ptr %var.lows, align 8
  %a.load935 = load ptr, ptr %var.lows, align 8
  %a.null936 = icmp eq ptr %a.load935, null
  br i1 %a.null936, label %a.create937, label %a.after938

choice.exit933:                                   ; preds = %choice.exit1163, %choice.exit924
  br label %choice.exit600

a.create937:                                      ; preds = %choice.then932
  %arena.cur939 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create940 = call ptr @dva_arena_alloc(ptr %arena.cur939, i64 24)
  %arena.cur941 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf942 = call ptr @dva_arena_alloc(ptr %arena.cur941, i64 128)
  %a.len.gep943 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create940, i32 0, i32 0
  store i64 0, ptr %a.len.gep943, align 8
  %a.data.gep944 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create940, i32 0, i32 1
  store ptr %a.buf942, ptr %a.data.gep944, align 8
  %a.cap.gep945 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create940, i32 0, i32 2
  store i64 16, ptr %a.cap.gep945, align 8
  store ptr %a.create940, ptr %var.lows, align 8
  br label %a.after938

a.after938:                                       ; preds = %a.create937, %choice.then932
  %a.load2946 = load ptr, ptr %var.lows, align 8
  %var.load947 = load i64, ptr %var.u, align 8
  %var.load948 = load ptr, ptr %var.lows, align 8
  %a.load949 = load ptr, ptr %var.lows, align 8
  %a.null950 = icmp eq ptr %a.load949, null
  br i1 %a.null950, label %a.create951, label %a.after952

a.create951:                                      ; preds = %a.after938
  %arena.cur953 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create954 = call ptr @dva_arena_alloc(ptr %arena.cur953, i64 24)
  %arena.cur955 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf956 = call ptr @dva_arena_alloc(ptr %arena.cur955, i64 128)
  %a.len.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 0
  store i64 0, ptr %a.len.gep957, align 8
  %a.data.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 1
  store ptr %a.buf956, ptr %a.data.gep958, align 8
  %a.cap.gep959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 2
  store i64 16, ptr %a.cap.gep959, align 8
  store ptr %a.create954, ptr %var.lows, align 8
  br label %a.after952

a.after952:                                       ; preds = %a.create951, %a.after938
  %a.load2960 = load ptr, ptr %var.lows, align 8
  %var.load961 = load i64, ptr %var.u, align 8
  %a.rd.nonnull962 = icmp ne ptr %a.load2960, null
  br i1 %a.rd.nonnull962, label %a.rd.check963, label %a.rd.err.null965

a.rd.check963:                                    ; preds = %a.after952
  %a.rd.len968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2960, i32 0, i32 0
  %a.rd.len969 = load i64, ptr %a.rd.len968, align 8
  %a.rd.ge0970 = icmp sge i64 %var.load961, 0
  %a.rd.lt971 = icmp slt i64 %var.load961, %a.rd.len969
  %a.rd.bounds972 = and i1 %a.rd.ge0970, %a.rd.lt971
  br i1 %a.rd.bounds972, label %a.rd.ok964, label %a.rd.err.oob966

a.rd.ok964:                                       ; preds = %a.rd.check963
  %a.rd.data973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2960, i32 0, i32 1
  %a.rd.data974 = load ptr, ptr %a.rd.data973, align 8
  %a.rd.elem.gep975 = getelementptr i64, ptr %a.rd.data974, i64 %var.load961
  %a.rd.elem976 = load i64, ptr %a.rd.elem.gep975, align 8
  br label %a.rd.done967

a.rd.err.null965:                                 ; preds = %a.after952
  %arena.cur977 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc978 = call ptr @dva_arena_alloc(ptr %arena.cur977, i64 56)
  %err.code.gep979 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 0
  store i64 4011, ptr %err.code.gep979, align 8
  %err.msg.gep980 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep980, align 8
  %err.file.gep981 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep981, align 8
  %err.line.gep982 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 3
  store i64 308, ptr %err.line.gep982, align 8
  %err.col.gep983 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 4
  store i64 47, ptr %err.col.gep983, align 8
  %err.ctx.gep984 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc978, i32 0, i32 5
  %err.ctx0.gep985 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep984, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep985, align 8
  %err.ctx1.gep986 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep984, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep986, align 8
  %err.p2i987 = ptrtoint ptr %err.alloc978 to i64
  br label %a.rd.done967

a.rd.err.oob966:                                  ; preds = %a.rd.check963
  %arena.cur988 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc989 = call ptr @dva_arena_alloc(ptr %arena.cur988, i64 56)
  %err.code.gep990 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 0
  store i64 4011, ptr %err.code.gep990, align 8
  %err.msg.gep991 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep991, align 8
  %err.file.gep992 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep992, align 8
  %err.line.gep993 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 3
  store i64 308, ptr %err.line.gep993, align 8
  %err.col.gep994 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 4
  store i64 47, ptr %err.col.gep994, align 8
  %err.ctx.gep995 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc989, i32 0, i32 5
  %err.ctx0.gep996 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep995, i32 0, i32 0
  store i64 %var.load961, ptr %err.ctx0.gep996, align 8
  %err.ctx1.gep997 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep995, i32 0, i32 1
  store i64 %a.rd.len969, ptr %err.ctx1.gep997, align 8
  %err.p2i998 = ptrtoint ptr %err.alloc989 to i64
  br label %a.rd.done967

a.rd.done967:                                     ; preds = %a.rd.err.oob966, %a.rd.err.null965, %a.rd.ok964
  %a.rd.tag999 = phi i1 [ true, %a.rd.ok964 ], [ false, %a.rd.err.null965 ], [ false, %a.rd.err.oob966 ]
  %a.rd.pay1000 = phi i64 [ %a.rd.elem976, %a.rd.ok964 ], [ %err.p2i987, %a.rd.err.null965 ], [ %err.p2i998, %a.rd.err.oob966 ]
  %ram.tag1001 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag999, 0
  %ram.pay1002 = insertvalue { i1, i64 } %ram.tag1001, i64 %a.rd.pay1000, 1
  %unwrap.is_pos1003 = extractvalue { i1, i64 } %ram.pay1002, 0
  br i1 %unwrap.is_pos1003, label %unwrap.pos.79, label %unwrap.abort.79

unwrap.pos.79:                                    ; preds = %a.rd.done967
  %unwrap.pay.pos1035 = extractvalue { i1, i64 } %ram.pay1002, 1
  %var.load1036 = load ptr, ptr %var.idxs, align 8
  %a.load1037 = load ptr, ptr %var.idxs, align 8
  %a.null1038 = icmp eq ptr %a.load1037, null
  br i1 %a.null1038, label %a.create1039, label %a.after1040

unwrap.abort.79:                                  ; preds = %a.rd.done967
  %unwrap.pay.abort1004 = extractvalue { i1, i64 } %ram.pay1002, 1
  %err.ptr1005 = inttoptr i64 %unwrap.pay.abort1004 to ptr
  %err.code.gep1006 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1005, i32 0, i32 0
  %err.code1007 = load i64, ptr %err.code.gep1006, align 8
  %err.msg.gep1008 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1005, i32 0, i32 1
  %err.msg.struct1009 = load ptr, ptr %err.msg.gep1008, align 8
  %err.file.gep1010 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1005, i32 0, i32 2
  %err.file.struct1011 = load ptr, ptr %err.file.gep1010, align 8
  %err.line.gep1012 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1005, i32 0, i32 3
  %err.line1013 = load i64, ptr %err.line.gep1012, align 8
  %err.col.gep1014 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1005, i32 0, i32 4
  %err.col1015 = load i64, ptr %err.col.gep1014, align 8
  %err.msg.len1016 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1009, i32 0, i32 0
  %err.msg.len1017 = load i64, ptr %err.msg.len1016, align 8
  %err.msg.len1018 = and i64 %err.msg.len1017, 281474976710655
  %err.msg.len321019 = trunc i64 %err.msg.len1018 to i32
  %err.msg.data1020 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1009, i32 0, i32 1
  %err.msg.data1021 = load ptr, ptr %err.msg.data1020, align 8
  %err.file.len1022 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1011, i32 0, i32 0
  %err.file.len1023 = load i64, ptr %err.file.len1022, align 8
  %err.file.len1024 = and i64 %err.file.len1023, 281474976710655
  %err.file.len321025 = trunc i64 %err.file.len1024 to i32
  %err.file.data1026 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1011, i32 0, i32 1
  %err.file.data1027 = load ptr, ptr %err.file.data1026, align 8
  %err.thread.rec1028 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1029 = icmp ne ptr %err.thread.rec1028, null
  br i1 %err.is.thread1029, label %err.thread1030, label %err.normal1031

err.thread1030:                                   ; preds = %unwrap.abort.79
  %err.haserr.gep1032 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1028, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1032, align 8
  %err.err.gep1033 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1028, i32 0, i32 7
  store ptr %err.ptr1005, ptr %err.err.gep1033, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1031:                                   ; preds = %unwrap.abort.79
  %err.panic.printf1034 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1007, i32 %err.msg.len321019, ptr %err.msg.data1021, i32 %err.file.len321025, ptr %err.file.data1027, i64 %err.line1013, i64 %err.col1015)
  call void @exit(i32 1)
  unreachable

a.create1039:                                     ; preds = %unwrap.pos.79
  %arena.cur1041 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1042 = call ptr @dva_arena_alloc(ptr %arena.cur1041, i64 24)
  %arena.cur1043 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1044 = call ptr @dva_arena_alloc(ptr %arena.cur1043, i64 128)
  %a.len.gep1045 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1042, i32 0, i32 0
  store i64 0, ptr %a.len.gep1045, align 8
  %a.data.gep1046 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1042, i32 0, i32 1
  store ptr %a.buf1044, ptr %a.data.gep1046, align 8
  %a.cap.gep1047 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1042, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1047, align 8
  store ptr %a.create1042, ptr %var.idxs, align 8
  br label %a.after1040

a.after1040:                                      ; preds = %a.create1039, %unwrap.pos.79
  %a.load21048 = load ptr, ptr %var.idxs, align 8
  %var.load1049 = load i64, ptr %var.v, align 8
  %a.rd.nonnull1050 = icmp ne ptr %a.load21048, null
  br i1 %a.rd.nonnull1050, label %a.rd.check1051, label %a.rd.err.null1053

a.rd.check1051:                                   ; preds = %a.after1040
  %a.rd.len1056 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21048, i32 0, i32 0
  %a.rd.len1057 = load i64, ptr %a.rd.len1056, align 8
  %a.rd.ge01058 = icmp sge i64 %var.load1049, 0
  %a.rd.lt1059 = icmp slt i64 %var.load1049, %a.rd.len1057
  %a.rd.bounds1060 = and i1 %a.rd.ge01058, %a.rd.lt1059
  br i1 %a.rd.bounds1060, label %a.rd.ok1052, label %a.rd.err.oob1054

a.rd.ok1052:                                      ; preds = %a.rd.check1051
  %a.rd.data1061 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21048, i32 0, i32 1
  %a.rd.data1062 = load ptr, ptr %a.rd.data1061, align 8
  %a.rd.elem.gep1063 = getelementptr i64, ptr %a.rd.data1062, i64 %var.load1049
  %a.rd.elem1064 = load i64, ptr %a.rd.elem.gep1063, align 8
  br label %a.rd.done1055

a.rd.err.null1053:                                ; preds = %a.after1040
  %arena.cur1065 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 56)
  %err.code.gep1067 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1067, align 8
  %err.msg.gep1068 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1068, align 8
  %err.file.gep1069 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1069, align 8
  %err.line.gep1070 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 3
  store i64 308, ptr %err.line.gep1070, align 8
  %err.col.gep1071 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 4
  store i64 58, ptr %err.col.gep1071, align 8
  %err.ctx.gep1072 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1066, i32 0, i32 5
  %err.ctx0.gep1073 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1072, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1073, align 8
  %err.ctx1.gep1074 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1072, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1074, align 8
  %err.p2i1075 = ptrtoint ptr %err.alloc1066 to i64
  br label %a.rd.done1055

a.rd.err.oob1054:                                 ; preds = %a.rd.check1051
  %arena.cur1076 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1077 = call ptr @dva_arena_alloc(ptr %arena.cur1076, i64 56)
  %err.code.gep1078 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1078, align 8
  %err.msg.gep1079 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1079, align 8
  %err.file.gep1080 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1080, align 8
  %err.line.gep1081 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 3
  store i64 308, ptr %err.line.gep1081, align 8
  %err.col.gep1082 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 4
  store i64 58, ptr %err.col.gep1082, align 8
  %err.ctx.gep1083 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1077, i32 0, i32 5
  %err.ctx0.gep1084 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1083, i32 0, i32 0
  store i64 %var.load1049, ptr %err.ctx0.gep1084, align 8
  %err.ctx1.gep1085 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1083, i32 0, i32 1
  store i64 %a.rd.len1057, ptr %err.ctx1.gep1085, align 8
  %err.p2i1086 = ptrtoint ptr %err.alloc1077 to i64
  br label %a.rd.done1055

a.rd.done1055:                                    ; preds = %a.rd.err.oob1054, %a.rd.err.null1053, %a.rd.ok1052
  %a.rd.tag1087 = phi i1 [ true, %a.rd.ok1052 ], [ false, %a.rd.err.null1053 ], [ false, %a.rd.err.oob1054 ]
  %a.rd.pay1088 = phi i64 [ %a.rd.elem1064, %a.rd.ok1052 ], [ %err.p2i1075, %a.rd.err.null1053 ], [ %err.p2i1086, %a.rd.err.oob1054 ]
  %ram.tag1089 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1087, 0
  %ram.pay1090 = insertvalue { i1, i64 } %ram.tag1089, i64 %a.rd.pay1088, 1
  %unwrap.is_pos1091 = extractvalue { i1, i64 } %ram.pay1090, 0
  br i1 %unwrap.is_pos1091, label %unwrap.pos.80, label %unwrap.abort.80

unwrap.pos.80:                                    ; preds = %a.rd.done1055
  %unwrap.pay.pos1123 = extractvalue { i1, i64 } %ram.pay1090, 1
  %min1124 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos1035, i64 %unwrap.pay.pos1123)
  %a.wr.nonnull1125 = icmp ne ptr %a.load2946, null
  br i1 %a.wr.nonnull1125, label %a.wr.check1126, label %a.wr.err.null1128

unwrap.abort.80:                                  ; preds = %a.rd.done1055
  %unwrap.pay.abort1092 = extractvalue { i1, i64 } %ram.pay1090, 1
  %err.ptr1093 = inttoptr i64 %unwrap.pay.abort1092 to ptr
  %err.code.gep1094 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1093, i32 0, i32 0
  %err.code1095 = load i64, ptr %err.code.gep1094, align 8
  %err.msg.gep1096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1093, i32 0, i32 1
  %err.msg.struct1097 = load ptr, ptr %err.msg.gep1096, align 8
  %err.file.gep1098 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1093, i32 0, i32 2
  %err.file.struct1099 = load ptr, ptr %err.file.gep1098, align 8
  %err.line.gep1100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1093, i32 0, i32 3
  %err.line1101 = load i64, ptr %err.line.gep1100, align 8
  %err.col.gep1102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1093, i32 0, i32 4
  %err.col1103 = load i64, ptr %err.col.gep1102, align 8
  %err.msg.len1104 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1097, i32 0, i32 0
  %err.msg.len1105 = load i64, ptr %err.msg.len1104, align 8
  %err.msg.len1106 = and i64 %err.msg.len1105, 281474976710655
  %err.msg.len321107 = trunc i64 %err.msg.len1106 to i32
  %err.msg.data1108 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1097, i32 0, i32 1
  %err.msg.data1109 = load ptr, ptr %err.msg.data1108, align 8
  %err.file.len1110 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1099, i32 0, i32 0
  %err.file.len1111 = load i64, ptr %err.file.len1110, align 8
  %err.file.len1112 = and i64 %err.file.len1111, 281474976710655
  %err.file.len321113 = trunc i64 %err.file.len1112 to i32
  %err.file.data1114 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1099, i32 0, i32 1
  %err.file.data1115 = load ptr, ptr %err.file.data1114, align 8
  %err.thread.rec1116 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1117 = icmp ne ptr %err.thread.rec1116, null
  br i1 %err.is.thread1117, label %err.thread1118, label %err.normal1119

err.thread1118:                                   ; preds = %unwrap.abort.80
  %err.haserr.gep1120 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1116, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1120, align 8
  %err.err.gep1121 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1116, i32 0, i32 7
  store ptr %err.ptr1093, ptr %err.err.gep1121, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1119:                                   ; preds = %unwrap.abort.80
  %err.panic.printf1122 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1095, i32 %err.msg.len321107, ptr %err.msg.data1109, i32 %err.file.len321113, ptr %err.file.data1115, i64 %err.line1101, i64 %err.col1103)
  call void @exit(i32 1)
  unreachable

a.wr.check1126:                                   ; preds = %unwrap.pos.80
  %a.wr.len1131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2946, i32 0, i32 0
  %a.wr.len1132 = load i64, ptr %a.wr.len1131, align 8
  %a.wr.ge01133 = icmp sge i64 %var.load947, 0
  %a.wr.lt1134 = icmp slt i64 %var.load947, %a.wr.len1132
  %a.wr.bounds1135 = and i1 %a.wr.ge01133, %a.wr.lt1134
  br i1 %a.wr.bounds1135, label %a.wr.ok1127, label %a.wr.err.oob1129

a.wr.ok1127:                                      ; preds = %a.wr.check1126
  %a.wr.data1136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2946, i32 0, i32 1
  %a.wr.data1137 = load ptr, ptr %a.wr.data1136, align 8
  %a.elem.gep1138 = getelementptr i64, ptr %a.wr.data1137, i64 %var.load947
  store i64 %min1124, ptr %a.elem.gep1138, align 8
  br label %a.wr.done1130

a.wr.err.null1128:                                ; preds = %unwrap.pos.80
  %arena.cur1139 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1140 = call ptr @dva_arena_alloc(ptr %arena.cur1139, i64 56)
  %err.code.gep1141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1141, align 8
  %err.msg.gep1142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1142, align 8
  %err.file.gep1143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1143, align 8
  %err.line.gep1144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 3
  store i64 0, ptr %err.line.gep1144, align 8
  %err.col.gep1145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 4
  store i64 0, ptr %err.col.gep1145, align 8
  %err.ctx.gep1146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1140, i32 0, i32 5
  %err.ctx0.gep1147 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1146, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1147, align 8
  %err.ctx1.gep1148 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1146, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1148, align 8
  br label %a.wr.done1130

a.wr.err.oob1129:                                 ; preds = %a.wr.check1126
  %arena.cur1149 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 %var.load947, ptr %err.ctx0.gep1157, align 8
  %err.ctx1.gep1158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1156, i32 0, i32 1
  store i64 %a.wr.len1132, ptr %err.ctx1.gep1158, align 8
  br label %a.wr.done1130

a.wr.done1130:                                    ; preds = %a.wr.err.oob1129, %a.wr.err.null1128, %a.wr.ok1127
  %a.wr.niche1159 = phi ptr [ null, %a.wr.ok1127 ], [ %err.alloc1140, %a.wr.err.null1128 ], [ %err.alloc1150, %a.wr.err.oob1129 ]
  %niche.eq.null1160 = icmp eq ptr %a.wr.niche1159, null
  br i1 %niche.eq.null1160, label %choice.then1161, label %choice.else1162

choice.then1161:                                  ; preds = %a.wr.done1130
  br label %choice.exit1163

choice.else1162:                                  ; preds = %a.wr.done1130
  store ptr %a.wr.niche1159, ptr %var._1164, align 8
  store ptr %a.wr.niche1159, ptr %var._1165, align 8
  store ptr %a.wr.niche1159, ptr %var._1166, align 8
  %err.code.gep1167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1159, i32 0, i32 0
  %err.code1168 = load i64, ptr %err.code.gep1167, align 8
  %err.msg.gep1169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1159, i32 0, i32 1
  %err.msg.struct1170 = load ptr, ptr %err.msg.gep1169, align 8
  %err.file.gep1171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1159, i32 0, i32 2
  %err.file.struct1172 = load ptr, ptr %err.file.gep1171, align 8
  %err.line.gep1173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1159, i32 0, i32 3
  %err.line1174 = load i64, ptr %err.line.gep1173, align 8
  %err.col.gep1175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1159, i32 0, i32 4
  %err.col1176 = load i64, ptr %err.col.gep1175, align 8
  %err.msg.len1177 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1170, i32 0, i32 0
  %err.msg.len1178 = load i64, ptr %err.msg.len1177, align 8
  %err.msg.len1179 = and i64 %err.msg.len1178, 281474976710655
  %err.msg.len321180 = trunc i64 %err.msg.len1179 to i32
  %err.msg.data1181 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1170, i32 0, i32 1
  %err.msg.data1182 = load ptr, ptr %err.msg.data1181, align 8
  %err.file.len1183 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1172, i32 0, i32 0
  %err.file.len1184 = load i64, ptr %err.file.len1183, align 8
  %err.file.len1185 = and i64 %err.file.len1184, 281474976710655
  %err.file.len321186 = trunc i64 %err.file.len1185 to i32
  %err.file.data1187 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1172, i32 0, i32 1
  %err.file.data1188 = load ptr, ptr %err.file.data1187, align 8
  %err.thread.rec1189 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1190 = icmp ne ptr %err.thread.rec1189, null
  br i1 %err.is.thread1190, label %err.thread1191, label %err.normal1192

choice.exit1163:                                  ; preds = %err.abort1196, %choice.then1161
  br label %choice.exit933

err.thread1191:                                   ; preds = %choice.else1162
  %err.haserr.gep1193 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1189, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1193, align 8
  %err.err.gep1194 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1189, i32 0, i32 7
  store ptr %a.wr.niche1159, ptr %err.err.gep1194, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1192:                                   ; preds = %choice.else1162
  %err.panic.printf1195 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1168, i32 %err.msg.len321180, ptr %err.msg.data1182, i32 %err.file.len321186, ptr %err.file.data1188, i64 %err.line1174, i64 %err.col1176)
  call void @exit(i32 1)
  unreachable

err.abort1196:                                    ; No predecessors!
  br label %choice.exit1163

a.create1200:                                     ; preds = %loop.exit.76
  %arena.cur1202 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1203 = call ptr @dva_arena_alloc(ptr %arena.cur1202, i64 24)
  %arena.cur1204 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1205 = call ptr @dva_arena_alloc(ptr %arena.cur1204, i64 128)
  %a.len.gep1206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1203, i32 0, i32 0
  store i64 0, ptr %a.len.gep1206, align 8
  %a.data.gep1207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1203, i32 0, i32 1
  store ptr %a.buf1205, ptr %a.data.gep1207, align 8
  %a.cap.gep1208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1203, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1208, align 8
  store ptr %a.create1203, ptr %var.lows, align 8
  br label %a.after1201

a.after1201:                                      ; preds = %a.create1200, %loop.exit.76
  %a.load21209 = load ptr, ptr %var.lows, align 8
  %var.load1210 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1211 = icmp ne ptr %a.load21209, null
  br i1 %a.rd.nonnull1211, label %a.rd.check1212, label %a.rd.err.null1214

a.rd.check1212:                                   ; preds = %a.after1201
  %a.rd.len1217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21209, i32 0, i32 0
  %a.rd.len1218 = load i64, ptr %a.rd.len1217, align 8
  %a.rd.ge01219 = icmp sge i64 %var.load1210, 0
  %a.rd.lt1220 = icmp slt i64 %var.load1210, %a.rd.len1218
  %a.rd.bounds1221 = and i1 %a.rd.ge01219, %a.rd.lt1220
  br i1 %a.rd.bounds1221, label %a.rd.ok1213, label %a.rd.err.oob1215

a.rd.ok1213:                                      ; preds = %a.rd.check1212
  %a.rd.data1222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21209, i32 0, i32 1
  %a.rd.data1223 = load ptr, ptr %a.rd.data1222, align 8
  %a.rd.elem.gep1224 = getelementptr i64, ptr %a.rd.data1223, i64 %var.load1210
  %a.rd.elem1225 = load i64, ptr %a.rd.elem.gep1224, align 8
  br label %a.rd.done1216

a.rd.err.null1214:                                ; preds = %a.after1201
  %arena.cur1226 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1227 = call ptr @dva_arena_alloc(ptr %arena.cur1226, i64 56)
  %err.code.gep1228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1228, align 8
  %err.msg.gep1229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1229, align 8
  %err.file.gep1230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1230, align 8
  %err.line.gep1231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 3
  store i64 310, ptr %err.line.gep1231, align 8
  %err.col.gep1232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 4
  store i64 19, ptr %err.col.gep1232, align 8
  %err.ctx.gep1233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 5
  %err.ctx0.gep1234 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1233, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1234, align 8
  %err.ctx1.gep1235 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1233, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1235, align 8
  %err.p2i1236 = ptrtoint ptr %err.alloc1227 to i64
  br label %a.rd.done1216

a.rd.err.oob1215:                                 ; preds = %a.rd.check1212
  %arena.cur1237 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1238 = call ptr @dva_arena_alloc(ptr %arena.cur1237, i64 56)
  %err.code.gep1239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1239, align 8
  %err.msg.gep1240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1240, align 8
  %err.file.gep1241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1241, align 8
  %err.line.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 3
  store i64 310, ptr %err.line.gep1242, align 8
  %err.col.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 4
  store i64 19, ptr %err.col.gep1243, align 8
  %err.ctx.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 5
  %err.ctx0.gep1245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 0
  store i64 %var.load1210, ptr %err.ctx0.gep1245, align 8
  %err.ctx1.gep1246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 1
  store i64 %a.rd.len1218, ptr %err.ctx1.gep1246, align 8
  %err.p2i1247 = ptrtoint ptr %err.alloc1238 to i64
  br label %a.rd.done1216

a.rd.done1216:                                    ; preds = %a.rd.err.oob1215, %a.rd.err.null1214, %a.rd.ok1213
  %a.rd.tag1248 = phi i1 [ true, %a.rd.ok1213 ], [ false, %a.rd.err.null1214 ], [ false, %a.rd.err.oob1215 ]
  %a.rd.pay1249 = phi i64 [ %a.rd.elem1225, %a.rd.ok1213 ], [ %err.p2i1236, %a.rd.err.null1214 ], [ %err.p2i1247, %a.rd.err.oob1215 ]
  %ram.tag1250 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1248, 0
  %ram.pay1251 = insertvalue { i1, i64 } %ram.tag1250, i64 %a.rd.pay1249, 1
  %unwrap.is_pos1252 = extractvalue { i1, i64 } %ram.pay1251, 0
  br i1 %unwrap.is_pos1252, label %unwrap.pos.81, label %unwrap.abort.81

unwrap.pos.81:                                    ; preds = %a.rd.done1216
  %unwrap.pay.pos1298 = extractvalue { i1, i64 } %ram.pay1251, 1
  store i64 %unwrap.pay.pos1298, ptr %var.low_u, align 8
  %var.load1299 = load ptr, ptr %var.idxs, align 8
  %a.load1300 = load ptr, ptr %var.idxs, align 8
  %a.null1301 = icmp eq ptr %a.load1300, null
  br i1 %a.null1301, label %a.create1302, label %a.after1303

unwrap.abort.81:                                  ; preds = %a.rd.done1216
  %unwrap.pay.abort1253 = extractvalue { i1, i64 } %ram.pay1251, 1
  %err.ptr1254 = inttoptr i64 %unwrap.pay.abort1253 to ptr
  %err.code.gep1255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1254, i32 0, i32 0
  %err.code1256 = load i64, ptr %err.code.gep1255, align 8
  %err.msg.gep1257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1254, i32 0, i32 1
  %err.msg.struct1258 = load ptr, ptr %err.msg.gep1257, align 8
  %err.file.gep1259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1254, i32 0, i32 2
  %err.file.struct1260 = load ptr, ptr %err.file.gep1259, align 8
  %err.line.gep1261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1254, i32 0, i32 3
  %err.line1262 = load i64, ptr %err.line.gep1261, align 8
  %err.col.gep1263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1254, i32 0, i32 4
  %err.col1264 = load i64, ptr %err.col.gep1263, align 8
  %err.msg.len1265 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1258, i32 0, i32 0
  %err.msg.len1266 = load i64, ptr %err.msg.len1265, align 8
  %err.msg.len1267 = and i64 %err.msg.len1266, 281474976710655
  %str.tag1268 = lshr i64 %err.msg.len1266, 48
  %tag.immortal1270 = icmp eq i64 %str.tag1268, 0
  %active.gen1271 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1272 = icmp eq i64 %str.tag1268, %active.gen1271
  %tag.fast.ok1273 = or i1 %tag.immortal1270, %tag.current1272
  br i1 %tag.fast.ok1273, label %str_ok1269, label %tag.slow_check1274

str_ok1269:                                       ; preds = %tag.slow_check1274, %unwrap.abort.81
  %err.msg.len321275 = trunc i64 %err.msg.len1267 to i32
  %err.msg.data1276 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1258, i32 0, i32 1
  %err.msg.data1277 = load ptr, ptr %err.msg.data1276, align 8
  %err.file.len1278 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1260, i32 0, i32 0
  %err.file.len1279 = load i64, ptr %err.file.len1278, align 8
  %err.file.len1280 = and i64 %err.file.len1279, 281474976710655
  %str.tag1281 = lshr i64 %err.file.len1279, 48
  %tag.immortal1283 = icmp eq i64 %str.tag1281, 0
  %active.gen1284 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1285 = icmp eq i64 %str.tag1281, %active.gen1284
  %tag.fast.ok1286 = or i1 %tag.immortal1283, %tag.current1285
  br i1 %tag.fast.ok1286, label %str_ok1282, label %tag.slow_check1287

tag.slow_check1274:                               ; preds = %unwrap.abort.81
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1268)
  br label %str_ok1269

str_ok1282:                                       ; preds = %tag.slow_check1287, %str_ok1269
  %err.file.len321288 = trunc i64 %err.file.len1280 to i32
  %err.file.data1289 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1260, i32 0, i32 1
  %err.file.data1290 = load ptr, ptr %err.file.data1289, align 8
  %err.thread.rec1291 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1292 = icmp ne ptr %err.thread.rec1291, null
  br i1 %err.is.thread1292, label %err.thread1293, label %err.normal1294

tag.slow_check1287:                               ; preds = %str_ok1269
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1281)
  br label %str_ok1282

err.thread1293:                                   ; preds = %str_ok1282
  %err.haserr.gep1295 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1291, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1295, align 8
  %err.err.gep1296 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1291, i32 0, i32 7
  store ptr %err.ptr1254, ptr %err.err.gep1296, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1294:                                   ; preds = %str_ok1282
  %err.panic.printf1297 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1256, i32 %err.msg.len321275, ptr %err.msg.data1277, i32 %err.file.len321288, ptr %err.file.data1290, i64 %err.line1262, i64 %err.col1264)
  call void @exit(i32 1)
  unreachable

a.create1302:                                     ; preds = %unwrap.pos.81
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
  store ptr %a.create1305, ptr %var.idxs, align 8
  br label %a.after1303

a.after1303:                                      ; preds = %a.create1302, %unwrap.pos.81
  %a.load21311 = load ptr, ptr %var.idxs, align 8
  %var.load1312 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1313 = icmp ne ptr %a.load21311, null
  br i1 %a.rd.nonnull1313, label %a.rd.check1314, label %a.rd.err.null1316

a.rd.check1314:                                   ; preds = %a.after1303
  %a.rd.len1319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21311, i32 0, i32 0
  %a.rd.len1320 = load i64, ptr %a.rd.len1319, align 8
  %a.rd.ge01321 = icmp sge i64 %var.load1312, 0
  %a.rd.lt1322 = icmp slt i64 %var.load1312, %a.rd.len1320
  %a.rd.bounds1323 = and i1 %a.rd.ge01321, %a.rd.lt1322
  br i1 %a.rd.bounds1323, label %a.rd.ok1315, label %a.rd.err.oob1317

a.rd.ok1315:                                      ; preds = %a.rd.check1314
  %a.rd.data1324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21311, i32 0, i32 1
  %a.rd.data1325 = load ptr, ptr %a.rd.data1324, align 8
  %a.rd.elem.gep1326 = getelementptr i64, ptr %a.rd.data1325, i64 %var.load1312
  %a.rd.elem1327 = load i64, ptr %a.rd.elem.gep1326, align 8
  br label %a.rd.done1318

a.rd.err.null1316:                                ; preds = %a.after1303
  %arena.cur1328 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1329 = call ptr @dva_arena_alloc(ptr %arena.cur1328, i64 56)
  %err.code.gep1330 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1330, align 8
  %err.msg.gep1331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1331, align 8
  %err.file.gep1332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1332, align 8
  %err.line.gep1333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 3
  store i64 311, ptr %err.line.gep1333, align 8
  %err.col.gep1334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 4
  store i64 19, ptr %err.col.gep1334, align 8
  %err.ctx.gep1335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1329, i32 0, i32 5
  %err.ctx0.gep1336 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1335, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1336, align 8
  %err.ctx1.gep1337 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1335, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1337, align 8
  %err.p2i1338 = ptrtoint ptr %err.alloc1329 to i64
  br label %a.rd.done1318

a.rd.err.oob1317:                                 ; preds = %a.rd.check1314
  %arena.cur1339 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1340 = call ptr @dva_arena_alloc(ptr %arena.cur1339, i64 56)
  %err.code.gep1341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1341, align 8
  %err.msg.gep1342 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1342, align 8
  %err.file.gep1343 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1343, align 8
  %err.line.gep1344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 3
  store i64 311, ptr %err.line.gep1344, align 8
  %err.col.gep1345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 4
  store i64 19, ptr %err.col.gep1345, align 8
  %err.ctx.gep1346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1340, i32 0, i32 5
  %err.ctx0.gep1347 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1346, i32 0, i32 0
  store i64 %var.load1312, ptr %err.ctx0.gep1347, align 8
  %err.ctx1.gep1348 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1346, i32 0, i32 1
  store i64 %a.rd.len1320, ptr %err.ctx1.gep1348, align 8
  %err.p2i1349 = ptrtoint ptr %err.alloc1340 to i64
  br label %a.rd.done1318

a.rd.done1318:                                    ; preds = %a.rd.err.oob1317, %a.rd.err.null1316, %a.rd.ok1315
  %a.rd.tag1350 = phi i1 [ true, %a.rd.ok1315 ], [ false, %a.rd.err.null1316 ], [ false, %a.rd.err.oob1317 ]
  %a.rd.pay1351 = phi i64 [ %a.rd.elem1327, %a.rd.ok1315 ], [ %err.p2i1338, %a.rd.err.null1316 ], [ %err.p2i1349, %a.rd.err.oob1317 ]
  %ram.tag1352 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1350, 0
  %ram.pay1353 = insertvalue { i1, i64 } %ram.tag1352, i64 %a.rd.pay1351, 1
  %unwrap.is_pos1354 = extractvalue { i1, i64 } %ram.pay1353, 0
  br i1 %unwrap.is_pos1354, label %unwrap.pos.82, label %unwrap.abort.82

unwrap.pos.82:                                    ; preds = %a.rd.done1318
  %unwrap.pay.pos1400 = extractvalue { i1, i64 } %ram.pay1353, 1
  store i64 %unwrap.pay.pos1400, ptr %var.idx_u, align 8
  %var.load1401 = load i64, ptr %var.low_u, align 8
  %var.load1402 = load i64, ptr %var.idx_u, align 8
  %cmptmp1403 = icmp eq i64 %var.load1401, %var.load1402
  br i1 %cmptmp1403, label %choice.then1404, label %choice.exit1405

unwrap.abort.82:                                  ; preds = %a.rd.done1318
  %unwrap.pay.abort1355 = extractvalue { i1, i64 } %ram.pay1353, 1
  %err.ptr1356 = inttoptr i64 %unwrap.pay.abort1355 to ptr
  %err.code.gep1357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1356, i32 0, i32 0
  %err.code1358 = load i64, ptr %err.code.gep1357, align 8
  %err.msg.gep1359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1356, i32 0, i32 1
  %err.msg.struct1360 = load ptr, ptr %err.msg.gep1359, align 8
  %err.file.gep1361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1356, i32 0, i32 2
  %err.file.struct1362 = load ptr, ptr %err.file.gep1361, align 8
  %err.line.gep1363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1356, i32 0, i32 3
  %err.line1364 = load i64, ptr %err.line.gep1363, align 8
  %err.col.gep1365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1356, i32 0, i32 4
  %err.col1366 = load i64, ptr %err.col.gep1365, align 8
  %err.msg.len1367 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1360, i32 0, i32 0
  %err.msg.len1368 = load i64, ptr %err.msg.len1367, align 8
  %err.msg.len1369 = and i64 %err.msg.len1368, 281474976710655
  %str.tag1370 = lshr i64 %err.msg.len1368, 48
  %tag.immortal1372 = icmp eq i64 %str.tag1370, 0
  %active.gen1373 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1374 = icmp eq i64 %str.tag1370, %active.gen1373
  %tag.fast.ok1375 = or i1 %tag.immortal1372, %tag.current1374
  br i1 %tag.fast.ok1375, label %str_ok1371, label %tag.slow_check1376

str_ok1371:                                       ; preds = %tag.slow_check1376, %unwrap.abort.82
  %err.msg.len321377 = trunc i64 %err.msg.len1369 to i32
  %err.msg.data1378 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1360, i32 0, i32 1
  %err.msg.data1379 = load ptr, ptr %err.msg.data1378, align 8
  %err.file.len1380 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1362, i32 0, i32 0
  %err.file.len1381 = load i64, ptr %err.file.len1380, align 8
  %err.file.len1382 = and i64 %err.file.len1381, 281474976710655
  %str.tag1383 = lshr i64 %err.file.len1381, 48
  %tag.immortal1385 = icmp eq i64 %str.tag1383, 0
  %active.gen1386 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1387 = icmp eq i64 %str.tag1383, %active.gen1386
  %tag.fast.ok1388 = or i1 %tag.immortal1385, %tag.current1387
  br i1 %tag.fast.ok1388, label %str_ok1384, label %tag.slow_check1389

tag.slow_check1376:                               ; preds = %unwrap.abort.82
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1370)
  br label %str_ok1371

str_ok1384:                                       ; preds = %tag.slow_check1389, %str_ok1371
  %err.file.len321390 = trunc i64 %err.file.len1382 to i32
  %err.file.data1391 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1362, i32 0, i32 1
  %err.file.data1392 = load ptr, ptr %err.file.data1391, align 8
  %err.thread.rec1393 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1394 = icmp ne ptr %err.thread.rec1393, null
  br i1 %err.is.thread1394, label %err.thread1395, label %err.normal1396

tag.slow_check1389:                               ; preds = %str_ok1371
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1383)
  br label %str_ok1384

err.thread1395:                                   ; preds = %str_ok1384
  %err.haserr.gep1397 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1393, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1397, align 8
  %err.err.gep1398 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1393, i32 0, i32 7
  store ptr %err.ptr1356, ptr %err.err.gep1398, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1396:                                   ; preds = %str_ok1384
  %err.panic.printf1399 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1358, i32 %err.msg.len321377, ptr %err.msg.data1379, i32 %err.file.len321390, ptr %err.file.data1392, i64 %err.line1364, i64 %err.col1366)
  call void @exit(i32 1)
  unreachable

choice.then1404:                                  ; preds = %unwrap.pos.82
  %arena.cur1406 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1406, i64 24)
  %arena.cur1407 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1408 = call ptr @dva_arena_alloc(ptr %arena.cur1407, i64 128)
  %a.len.gep1409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1409, align 8
  %a.data.gep1410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1408, ptr %a.data.gep1410, align 8
  %a.cap.gep1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1411, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1412 = load ptr, ptr %var.u_node, align 8
  %var.load1413 = load ptr, ptr %var.u_node, align 8
  %fld.gep1414 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1413, i32 0, i32 0
  %fld.load1415 = load ptr, ptr %fld.gep1414, align 8
  %call.res1416 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1412, ptr %fld.load1415)
  store i1 %call.res1416, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

choice.exit1405:                                  ; preds = %a.store1744, %unwrap.pos.82
  ret void

loop.header.83:                                   ; preds = %loop.latch.83, %choice.then1404
  %counter.load1417 = load i64, ptr %loop.idx.83, align 8
  br label %loop.body.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i1418 = sub i64 %counter.load1417, 0
  store i64 1, ptr %loop.step.83, align 8
  store i64 %loop.rel.i1418, ptr %var._i1419, align 8
  store i64 %counter.load1417, ptr %var._1420, align 8
  %var.load1421 = load ptr, ptr %var.state, align 8
  %fld.gep1422 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1421, i32 0, i32 4
  %fld.load1423 = load ptr, ptr %fld.gep1422, align 8
  store ptr %fld.load1423, ptr %var.s_ptr, align 8
  %var.load1424 = load ptr, ptr %var.s_ptr, align 8
  %a.load1425 = load ptr, ptr %var.s_ptr, align 8
  %a.null1426 = icmp eq ptr %a.load1425, null
  br i1 %a.null1426, label %a.create1427, label %a.after1428

loop.exit.nat.83:                                 ; No predecessors!
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %choice.exit1705
  %step.val1706 = load i64, ptr %loop.step.83, align 8
  %loop.next1707 = add i64 %counter.load1417, %step.val1706
  store i64 %loop.next1707, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %choice.then1704, %choice.then1512, %loop.exit.nat.83
  %var.load1708 = load ptr, ptr %var.scc_names, align 8
  %a.load1709 = load ptr, ptr %var.scc_names, align 8
  %a.null1710 = icmp eq ptr %a.load1709, null
  br i1 %a.null1710, label %a.create1711, label %a.after1712

a.create1427:                                     ; preds = %loop.body.83
  %arena.cur1429 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1430 = call ptr @dva_arena_alloc(ptr %arena.cur1429, i64 24)
  %arena.cur1431 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1432 = call ptr @dva_arena_alloc(ptr %arena.cur1431, i64 128)
  %a.len.gep1433 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1430, i32 0, i32 0
  store i64 0, ptr %a.len.gep1433, align 8
  %a.data.gep1434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1430, i32 0, i32 1
  store ptr %a.buf1432, ptr %a.data.gep1434, align 8
  %a.cap.gep1435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1430, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1435, align 8
  store ptr %a.create1430, ptr %var.s_ptr, align 8
  br label %a.after1428

a.after1428:                                      ; preds = %a.create1427, %loop.body.83
  %a.load21436 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1437 = icmp ne ptr %a.load21436, null
  br i1 %a.rd.nonnull1437, label %a.rd.check1438, label %a.rd.err.null1440

a.rd.check1438:                                   ; preds = %a.after1428
  %a.rd.len1443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21436, i32 0, i32 0
  %a.rd.len1444 = load i64, ptr %a.rd.len1443, align 8
  %a.rd.lt1445 = icmp slt i64 0, %a.rd.len1444
  %a.rd.bounds1446 = and i1 true, %a.rd.lt1445
  br i1 %a.rd.bounds1446, label %a.rd.ok1439, label %a.rd.err.oob1441

a.rd.ok1439:                                      ; preds = %a.rd.check1438
  %a.rd.data1447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21436, i32 0, i32 1
  %a.rd.data1448 = load ptr, ptr %a.rd.data1447, align 8
  %a.rd.elem.gep1449 = getelementptr i64, ptr %a.rd.data1448, i64 0
  %a.rd.elem1450 = load i64, ptr %a.rd.elem.gep1449, align 8
  br label %a.rd.done1442

a.rd.err.null1440:                                ; preds = %a.after1428
  %arena.cur1451 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1452 = call ptr @dva_arena_alloc(ptr %arena.cur1451, i64 56)
  %err.code.gep1453 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1453, align 8
  %err.msg.gep1454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1454, align 8
  %err.file.gep1455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1455, align 8
  %err.line.gep1456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 3
  store i64 318, ptr %err.line.gep1456, align 8
  %err.col.gep1457 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 4
  store i64 26, ptr %err.col.gep1457, align 8
  %err.ctx.gep1458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1452, i32 0, i32 5
  %err.ctx0.gep1459 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1458, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1459, align 8
  %err.ctx1.gep1460 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1458, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1460, align 8
  %err.p2i1461 = ptrtoint ptr %err.alloc1452 to i64
  br label %a.rd.done1442

a.rd.err.oob1441:                                 ; preds = %a.rd.check1438
  %arena.cur1462 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1463 = call ptr @dva_arena_alloc(ptr %arena.cur1462, i64 56)
  %err.code.gep1464 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1464, align 8
  %err.msg.gep1465 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1465, align 8
  %err.file.gep1466 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1466, align 8
  %err.line.gep1467 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 3
  store i64 318, ptr %err.line.gep1467, align 8
  %err.col.gep1468 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 4
  store i64 26, ptr %err.col.gep1468, align 8
  %err.ctx.gep1469 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1463, i32 0, i32 5
  %err.ctx0.gep1470 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1469, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1470, align 8
  %err.ctx1.gep1471 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1469, i32 0, i32 1
  store i64 %a.rd.len1444, ptr %err.ctx1.gep1471, align 8
  %err.p2i1472 = ptrtoint ptr %err.alloc1463 to i64
  br label %a.rd.done1442

a.rd.done1442:                                    ; preds = %a.rd.err.oob1441, %a.rd.err.null1440, %a.rd.ok1439
  %a.rd.tag1473 = phi i1 [ true, %a.rd.ok1439 ], [ false, %a.rd.err.null1440 ], [ false, %a.rd.err.oob1441 ]
  %a.rd.pay1474 = phi i64 [ %a.rd.elem1450, %a.rd.ok1439 ], [ %err.p2i1461, %a.rd.err.null1440 ], [ %err.p2i1472, %a.rd.err.oob1441 ]
  %ram.tag1475 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1473, 0
  %ram.pay1476 = insertvalue { i1, i64 } %ram.tag1475, i64 %a.rd.pay1474, 1
  %unwrap.is_pos1477 = extractvalue { i1, i64 } %ram.pay1476, 0
  br i1 %unwrap.is_pos1477, label %unwrap.pos.84, label %unwrap.abort.84

unwrap.pos.84:                                    ; preds = %a.rd.done1442
  %unwrap.pay.pos1509 = extractvalue { i1, i64 } %ram.pay1476, 1
  store i64 %unwrap.pay.pos1509, ptr %var.sp, align 8
  %var.load1510 = load i64, ptr %var.sp, align 8
  %cmptmp1511 = icmp eq i64 %var.load1510, 0
  br i1 %cmptmp1511, label %choice.then1512, label %choice.exit1513

unwrap.abort.84:                                  ; preds = %a.rd.done1442
  %unwrap.pay.abort1478 = extractvalue { i1, i64 } %ram.pay1476, 1
  %err.ptr1479 = inttoptr i64 %unwrap.pay.abort1478 to ptr
  %err.code.gep1480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1479, i32 0, i32 0
  %err.code1481 = load i64, ptr %err.code.gep1480, align 8
  %err.msg.gep1482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1479, i32 0, i32 1
  %err.msg.struct1483 = load ptr, ptr %err.msg.gep1482, align 8
  %err.file.gep1484 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1479, i32 0, i32 2
  %err.file.struct1485 = load ptr, ptr %err.file.gep1484, align 8
  %err.line.gep1486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1479, i32 0, i32 3
  %err.line1487 = load i64, ptr %err.line.gep1486, align 8
  %err.col.gep1488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1479, i32 0, i32 4
  %err.col1489 = load i64, ptr %err.col.gep1488, align 8
  %err.msg.len1490 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1483, i32 0, i32 0
  %err.msg.len1491 = load i64, ptr %err.msg.len1490, align 8
  %err.msg.len1492 = and i64 %err.msg.len1491, 281474976710655
  %err.msg.len321493 = trunc i64 %err.msg.len1492 to i32
  %err.msg.data1494 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1483, i32 0, i32 1
  %err.msg.data1495 = load ptr, ptr %err.msg.data1494, align 8
  %err.file.len1496 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1485, i32 0, i32 0
  %err.file.len1497 = load i64, ptr %err.file.len1496, align 8
  %err.file.len1498 = and i64 %err.file.len1497, 281474976710655
  %err.file.len321499 = trunc i64 %err.file.len1498 to i32
  %err.file.data1500 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1485, i32 0, i32 1
  %err.file.data1501 = load ptr, ptr %err.file.data1500, align 8
  %err.thread.rec1502 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1503 = icmp ne ptr %err.thread.rec1502, null
  br i1 %err.is.thread1503, label %err.thread1504, label %err.normal1505

err.thread1504:                                   ; preds = %unwrap.abort.84
  %err.haserr.gep1506 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1502, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1506, align 8
  %err.err.gep1507 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1502, i32 0, i32 7
  store ptr %err.ptr1479, ptr %err.err.gep1507, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1505:                                   ; preds = %unwrap.abort.84
  %err.panic.printf1508 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1481, i32 %err.msg.len321493, ptr %err.msg.data1495, i32 %err.file.len321499, ptr %err.file.data1501, i64 %err.line1487, i64 %err.col1489)
  call void @exit(i32 1)
  unreachable

choice.then1512:                                  ; preds = %unwrap.pos.84
  br label %loop.exit.83

choice.exit1513:                                  ; preds = %unwrap.pos.84
  %var.load1514 = load ptr, ptr %var.state, align 8
  %call.res1515 = call i64 @"dep_graph::pop_stack"(ptr %var.load1514)
  store i64 %call.res1515, ptr %var.w, align 8
  %var.load1516 = load ptr, ptr %var.ons, align 8
  %a.load1517 = load ptr, ptr %var.ons, align 8
  %a.null1518 = icmp eq ptr %a.load1517, null
  br i1 %a.null1518, label %a.create1519, label %a.after1520

a.create1519:                                     ; preds = %choice.exit1513
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
  store ptr %a.create1522, ptr %var.ons, align 8
  br label %a.after1520

a.after1520:                                      ; preds = %a.create1519, %choice.exit1513
  %a.load21528 = load ptr, ptr %var.ons, align 8
  %var.load1529 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1530 = icmp ne ptr %a.load21528, null
  br i1 %a.wr.nonnull1530, label %a.wr.check1531, label %a.wr.err.null1533

a.wr.check1531:                                   ; preds = %a.after1520
  %a.wr.len1536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21528, i32 0, i32 0
  %a.wr.len1537 = load i64, ptr %a.wr.len1536, align 8
  %a.wr.ge01538 = icmp sge i64 %var.load1529, 0
  %a.wr.lt1539 = icmp slt i64 %var.load1529, %a.wr.len1537
  %a.wr.bounds1540 = and i1 %a.wr.ge01538, %a.wr.lt1539
  br i1 %a.wr.bounds1540, label %a.wr.ok1532, label %a.wr.err.oob1534

a.wr.ok1532:                                      ; preds = %a.wr.check1531
  %a.wr.data1541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21528, i32 0, i32 1
  %a.wr.data1542 = load ptr, ptr %a.wr.data1541, align 8
  %a.elem.gep1543 = getelementptr i64, ptr %a.wr.data1542, i64 %var.load1529
  store i64 0, ptr %a.elem.gep1543, align 8
  br label %a.wr.done1535

a.wr.err.null1533:                                ; preds = %a.after1520
  %arena.cur1544 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1545 = call ptr @dva_arena_alloc(ptr %arena.cur1544, i64 56)
  %err.code.gep1546 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1546, align 8
  %err.msg.gep1547 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1547, align 8
  %err.file.gep1548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1548, align 8
  %err.line.gep1549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 3
  store i64 0, ptr %err.line.gep1549, align 8
  %err.col.gep1550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 4
  store i64 0, ptr %err.col.gep1550, align 8
  %err.ctx.gep1551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1545, i32 0, i32 5
  %err.ctx0.gep1552 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1551, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1552, align 8
  %err.ctx1.gep1553 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1551, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1553, align 8
  br label %a.wr.done1535

a.wr.err.oob1534:                                 ; preds = %a.wr.check1531
  %arena.cur1554 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1555 = call ptr @dva_arena_alloc(ptr %arena.cur1554, i64 56)
  %err.code.gep1556 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1556, align 8
  %err.msg.gep1557 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1557, align 8
  %err.file.gep1558 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1558, align 8
  %err.line.gep1559 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 3
  store i64 0, ptr %err.line.gep1559, align 8
  %err.col.gep1560 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 4
  store i64 0, ptr %err.col.gep1560, align 8
  %err.ctx.gep1561 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1555, i32 0, i32 5
  %err.ctx0.gep1562 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1561, i32 0, i32 0
  store i64 %var.load1529, ptr %err.ctx0.gep1562, align 8
  %err.ctx1.gep1563 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1561, i32 0, i32 1
  store i64 %a.wr.len1537, ptr %err.ctx1.gep1563, align 8
  br label %a.wr.done1535

a.wr.done1535:                                    ; preds = %a.wr.err.oob1534, %a.wr.err.null1533, %a.wr.ok1532
  %a.wr.niche1564 = phi ptr [ null, %a.wr.ok1532 ], [ %err.alloc1545, %a.wr.err.null1533 ], [ %err.alloc1555, %a.wr.err.oob1534 ]
  %niche.eq.null1565 = icmp eq ptr %a.wr.niche1564, null
  br i1 %niche.eq.null1565, label %choice.then1566, label %choice.else1567

choice.then1566:                                  ; preds = %a.wr.done1535
  br label %choice.exit1568

choice.else1567:                                  ; preds = %a.wr.done1535
  store ptr %a.wr.niche1564, ptr %var._1569, align 8
  store ptr %a.wr.niche1564, ptr %var._1570, align 8
  store ptr %a.wr.niche1564, ptr %var._1571, align 8
  %err.code.gep1572 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1564, i32 0, i32 0
  %err.code1573 = load i64, ptr %err.code.gep1572, align 8
  %err.msg.gep1574 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1564, i32 0, i32 1
  %err.msg.struct1575 = load ptr, ptr %err.msg.gep1574, align 8
  %err.file.gep1576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1564, i32 0, i32 2
  %err.file.struct1577 = load ptr, ptr %err.file.gep1576, align 8
  %err.line.gep1578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1564, i32 0, i32 3
  %err.line1579 = load i64, ptr %err.line.gep1578, align 8
  %err.col.gep1580 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1564, i32 0, i32 4
  %err.col1581 = load i64, ptr %err.col.gep1580, align 8
  %err.msg.len1582 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1575, i32 0, i32 0
  %err.msg.len1583 = load i64, ptr %err.msg.len1582, align 8
  %err.msg.len1584 = and i64 %err.msg.len1583, 281474976710655
  %err.msg.len321585 = trunc i64 %err.msg.len1584 to i32
  %err.msg.data1586 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1575, i32 0, i32 1
  %err.msg.data1587 = load ptr, ptr %err.msg.data1586, align 8
  %err.file.len1588 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1577, i32 0, i32 0
  %err.file.len1589 = load i64, ptr %err.file.len1588, align 8
  %err.file.len1590 = and i64 %err.file.len1589, 281474976710655
  %err.file.len321591 = trunc i64 %err.file.len1590 to i32
  %err.file.data1592 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1577, i32 0, i32 1
  %err.file.data1593 = load ptr, ptr %err.file.data1592, align 8
  %err.thread.rec1594 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1595 = icmp ne ptr %err.thread.rec1594, null
  br i1 %err.is.thread1595, label %err.thread1596, label %err.normal1597

choice.exit1568:                                  ; preds = %err.abort1601, %choice.then1566
  %var.load1602 = load ptr, ptr %var.graph, align 8
  %fld.gep1603 = getelementptr inbounds { ptr, ptr }, ptr %var.load1602, i32 0, i32 0
  %fld.load1604 = load ptr, ptr %fld.gep1603, align 8
  %var.load1605 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1606 = icmp ne ptr %fld.load1604, null
  br i1 %a.rd.nonnull1606, label %a.rd.check1607, label %a.rd.err.null1609

err.thread1596:                                   ; preds = %choice.else1567
  %err.haserr.gep1598 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1594, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1598, align 8
  %err.err.gep1599 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1594, i32 0, i32 7
  store ptr %a.wr.niche1564, ptr %err.err.gep1599, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1597:                                   ; preds = %choice.else1567
  %err.panic.printf1600 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1573, i32 %err.msg.len321585, ptr %err.msg.data1587, i32 %err.file.len321591, ptr %err.file.data1593, i64 %err.line1579, i64 %err.col1581)
  call void @exit(i32 1)
  unreachable

err.abort1601:                                    ; No predecessors!
  br label %choice.exit1568

a.rd.check1607:                                   ; preds = %choice.exit1568
  %a.rd.len1612 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1604, i32 0, i32 0
  %a.rd.len1613 = load i64, ptr %a.rd.len1612, align 8
  %a.rd.ge01614 = icmp sge i64 %var.load1605, 0
  %a.rd.lt1615 = icmp slt i64 %var.load1605, %a.rd.len1613
  %a.rd.bounds1616 = and i1 %a.rd.ge01614, %a.rd.lt1615
  br i1 %a.rd.bounds1616, label %a.rd.ok1608, label %a.rd.err.oob1610

a.rd.ok1608:                                      ; preds = %a.rd.check1607
  %a.rd.data1617 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1604, i32 0, i32 1
  %a.rd.data1618 = load ptr, ptr %a.rd.data1617, align 8
  %a.rd.elem.gep1619 = getelementptr i64, ptr %a.rd.data1618, i64 %var.load1605
  %a.rd.elem1620 = load i64, ptr %a.rd.elem.gep1619, align 8
  br label %a.rd.done1611

a.rd.err.null1609:                                ; preds = %choice.exit1568
  %arena.cur1621 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1622 = call ptr @dva_arena_alloc(ptr %arena.cur1621, i64 56)
  %err.code.gep1623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1623, align 8
  %err.msg.gep1624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1624, align 8
  %err.file.gep1625 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1625, align 8
  %err.line.gep1626 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 3
  store i64 0, ptr %err.line.gep1626, align 8
  %err.col.gep1627 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 4
  store i64 0, ptr %err.col.gep1627, align 8
  %err.ctx.gep1628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1622, i32 0, i32 5
  %err.ctx0.gep1629 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1628, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1629, align 8
  %err.ctx1.gep1630 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1628, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1630, align 8
  %err.p2i1631 = ptrtoint ptr %err.alloc1622 to i64
  br label %a.rd.done1611

a.rd.err.oob1610:                                 ; preds = %a.rd.check1607
  %arena.cur1632 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1633 = call ptr @dva_arena_alloc(ptr %arena.cur1632, i64 56)
  %err.code.gep1634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1634, align 8
  %err.msg.gep1635 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1635, align 8
  %err.file.gep1636 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1636, align 8
  %err.line.gep1637 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 3
  store i64 0, ptr %err.line.gep1637, align 8
  %err.col.gep1638 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 4
  store i64 0, ptr %err.col.gep1638, align 8
  %err.ctx.gep1639 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1633, i32 0, i32 5
  %err.ctx0.gep1640 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1639, i32 0, i32 0
  store i64 %var.load1605, ptr %err.ctx0.gep1640, align 8
  %err.ctx1.gep1641 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1639, i32 0, i32 1
  store i64 %a.rd.len1613, ptr %err.ctx1.gep1641, align 8
  %err.p2i1642 = ptrtoint ptr %err.alloc1633 to i64
  br label %a.rd.done1611

a.rd.done1611:                                    ; preds = %a.rd.err.oob1610, %a.rd.err.null1609, %a.rd.ok1608
  %a.rd.tag1643 = phi i1 [ true, %a.rd.ok1608 ], [ false, %a.rd.err.null1609 ], [ false, %a.rd.err.oob1610 ]
  %a.rd.pay1644 = phi i64 [ %a.rd.elem1620, %a.rd.ok1608 ], [ %err.p2i1631, %a.rd.err.null1609 ], [ %err.p2i1642, %a.rd.err.oob1610 ]
  %ram.tag1645 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1643, 0
  %ram.pay1646 = insertvalue { i1, i64 } %ram.tag1645, i64 %a.rd.pay1644, 1
  %unwrap.is_pos1647 = extractvalue { i1, i64 } %ram.pay1646, 0
  br i1 %unwrap.is_pos1647, label %unwrap.pos.85, label %unwrap.abort.85

unwrap.pos.85:                                    ; preds = %a.rd.done1611
  %unwrap.pay.pos1679 = extractvalue { i1, i64 } %ram.pay1646, 1
  %pay.ptr1680 = inttoptr i64 %unwrap.pay.pos1679 to ptr
  store ptr %pay.ptr1680, ptr %var.w_node, align 8
  %var.load1681 = load ptr, ptr %var.w_node, align 8
  %fld.gep1682 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1681, i32 0, i32 0
  %fld.load1683 = load ptr, ptr %fld.gep1682, align 8
  %a.load1684 = load ptr, ptr %var.scc_names, align 8
  %a.null1685 = icmp eq ptr %a.load1684, null
  br i1 %a.null1685, label %a.create1686, label %a.after1687

unwrap.abort.85:                                  ; preds = %a.rd.done1611
  %unwrap.pay.abort1648 = extractvalue { i1, i64 } %ram.pay1646, 1
  %err.ptr1649 = inttoptr i64 %unwrap.pay.abort1648 to ptr
  %err.code.gep1650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1649, i32 0, i32 0
  %err.code1651 = load i64, ptr %err.code.gep1650, align 8
  %err.msg.gep1652 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1649, i32 0, i32 1
  %err.msg.struct1653 = load ptr, ptr %err.msg.gep1652, align 8
  %err.file.gep1654 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1649, i32 0, i32 2
  %err.file.struct1655 = load ptr, ptr %err.file.gep1654, align 8
  %err.line.gep1656 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1649, i32 0, i32 3
  %err.line1657 = load i64, ptr %err.line.gep1656, align 8
  %err.col.gep1658 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1649, i32 0, i32 4
  %err.col1659 = load i64, ptr %err.col.gep1658, align 8
  %err.msg.len1660 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1653, i32 0, i32 0
  %err.msg.len1661 = load i64, ptr %err.msg.len1660, align 8
  %err.msg.len1662 = and i64 %err.msg.len1661, 281474976710655
  %err.msg.len321663 = trunc i64 %err.msg.len1662 to i32
  %err.msg.data1664 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1653, i32 0, i32 1
  %err.msg.data1665 = load ptr, ptr %err.msg.data1664, align 8
  %err.file.len1666 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1655, i32 0, i32 0
  %err.file.len1667 = load i64, ptr %err.file.len1666, align 8
  %err.file.len1668 = and i64 %err.file.len1667, 281474976710655
  %err.file.len321669 = trunc i64 %err.file.len1668 to i32
  %err.file.data1670 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1655, i32 0, i32 1
  %err.file.data1671 = load ptr, ptr %err.file.data1670, align 8
  %err.thread.rec1672 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1673 = icmp ne ptr %err.thread.rec1672, null
  br i1 %err.is.thread1673, label %err.thread1674, label %err.normal1675

err.thread1674:                                   ; preds = %unwrap.abort.85
  %err.haserr.gep1676 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1672, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1676, align 8
  %err.err.gep1677 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1672, i32 0, i32 7
  store ptr %err.ptr1649, ptr %err.err.gep1677, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1675:                                   ; preds = %unwrap.abort.85
  %err.panic.printf1678 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1651, i32 %err.msg.len321663, ptr %err.msg.data1665, i32 %err.file.len321669, ptr %err.file.data1671, i64 %err.line1657, i64 %err.col1659)
  call void @exit(i32 1)
  unreachable

a.create1686:                                     ; preds = %unwrap.pos.85
  %arena.cur1688 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1689 = call ptr @dva_arena_alloc(ptr %arena.cur1688, i64 24)
  %arena.cur1690 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1691 = call ptr @dva_arena_alloc(ptr %arena.cur1690, i64 128)
  %a.len.gep1692 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 0
  store i64 0, ptr %a.len.gep1692, align 8
  %a.data.gep1693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 1
  store ptr %a.buf1691, ptr %a.data.gep1693, align 8
  %a.cap.gep1694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1694, align 8
  store ptr %a.create1689, ptr %var.scc_names, align 8
  br label %a.after1687

a.after1687:                                      ; preds = %a.create1686, %unwrap.pos.85
  %a.load21695 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1687
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21695, i32 0, i32 0
  %a.len1696 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21695, i32 0, i32 2
  %a.cap1697 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1696, %a.cap1697
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21695)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21695, i32 0, i32 1
  %a.cur.data1698 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21695, i32 0, i32 0
  %a.cur.len1699 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1700 = getelementptr i64, ptr %a.cur.data1698, i64 %a.cur.len1699
  %slot.p2i = ptrtoint ptr %fld.load1683 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1700, align 8
  %a.next.len = add i64 %a.cur.len1699, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21695, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1701 = load i64, ptr %var.w, align 8
  %var.load1702 = load i64, ptr %var.u, align 8
  %cmptmp1703 = icmp eq i64 %var.load1701, %var.load1702
  br i1 %cmptmp1703, label %choice.then1704, label %choice.exit1705

choice.then1704:                                  ; preds = %a.store
  br label %loop.exit.83

choice.exit1705:                                  ; preds = %a.store
  br label %loop.latch.83

a.create1711:                                     ; preds = %loop.exit.83
  %arena.cur1713 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1714 = call ptr @dva_arena_alloc(ptr %arena.cur1713, i64 24)
  %arena.cur1715 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1716 = call ptr @dva_arena_alloc(ptr %arena.cur1715, i64 128)
  %a.len.gep1717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 0
  store i64 0, ptr %a.len.gep1717, align 8
  %a.data.gep1718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 1
  store ptr %a.buf1716, ptr %a.data.gep1718, align 8
  %a.cap.gep1719 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1719, align 8
  store ptr %a.create1714, ptr %var.scc_names, align 8
  br label %a.after1712

a.after1712:                                      ; preds = %a.create1711, %loop.exit.83
  %a.load21720 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21720, i32 0, i32 0
  %a.len.query1721 = load i64, ptr %a.len.query, align 8
  %cmptmp1722 = icmp sgt i64 %a.len.query1721, 1
  br i1 %cmptmp1722, label %or.86.then, label %or.86.else

or.86.then:                                       ; preds = %a.after1712
  br label %or.86.exit

or.86.else:                                       ; preds = %a.after1712
  %var.load1723 = load i1, ptr %var.is_self_rec, align 1
  br label %or.86.exit

or.86.exit:                                       ; preds = %or.86.else, %or.86.then
  %or.86.phi = phi i1 [ %cmptmp1722, %or.86.then ], [ %var.load1723, %or.86.else ]
  store i1 %or.86.phi, ptr %var.is_rec, align 1
  %var.load1724 = load ptr, ptr %var.state, align 8
  %var.load1725 = load ptr, ptr %var.scc_names, align 8
  %a.load1726 = load ptr, ptr %var.scc_names, align 8
  %a.null1727 = icmp eq ptr %a.load1726, null
  br i1 %a.null1727, label %a.create1728, label %a.after1729

a.create1728:                                     ; preds = %or.86.exit
  %arena.cur1730 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1731 = call ptr @dva_arena_alloc(ptr %arena.cur1730, i64 24)
  %arena.cur1732 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1733 = call ptr @dva_arena_alloc(ptr %arena.cur1732, i64 128)
  %a.len.gep1734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 0
  store i64 0, ptr %a.len.gep1734, align 8
  %a.data.gep1735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 1
  store ptr %a.buf1733, ptr %a.data.gep1735, align 8
  %a.cap.gep1736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1731, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1736, align 8
  store ptr %a.create1731, ptr %var.scc_names, align 8
  br label %a.after1729

a.after1729:                                      ; preds = %a.create1728, %or.86.exit
  %a.load21737 = load ptr, ptr %var.scc_names, align 8
  %var.load1738 = load i1, ptr %var.is_rec, align 1
  %arena.cur1739 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1739, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21737, ptr %rec.fld, align 8
  %rec.fld1740 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1738, ptr %rec.fld1740, align 1
  %fld.gep1741 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1724, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1741, align 8
  br label %a.check1742

a.check1742:                                      ; preds = %a.after1729
  %a.len1745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1746 = load i64, ptr %a.len1745, align 8
  %a.cap1747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1748 = load i64, ptr %a.cap1747, align 8
  %a.needs.grow1749 = icmp eq i64 %a.len1746, %a.cap1748
  br i1 %a.needs.grow1749, label %a.grow1743, label %a.store1744

a.grow1743:                                       ; preds = %a.check1742
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1744

a.store1744:                                      ; preds = %a.grow1743, %a.check1742
  %a.cur.data1750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1751 = load ptr, ptr %a.cur.data1750, align 8
  %a.cur.len1752 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1753 = load i64, ptr %a.cur.len1752, align 8
  %a.elem.gep1754 = getelementptr i64, ptr %a.cur.data1751, i64 %a.cur.len1753
  %slot.p2i1755 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1755, ptr %a.elem.gep1754, align 8
  %a.next.len1756 = add i64 %a.cur.len1753, 1
  %b.len.gep1757 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1756, ptr %b.len.gep1757, align 8
  br label %choice.exit1405
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
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
