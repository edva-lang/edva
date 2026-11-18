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
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
@"var.const::pi" = external global double
@"var.const::tau" = external global double
@"var.const::e" = external global double
@"var.const::phi" = external global double
@"var.const::inv_phi" = external global double
@"var.const::sqrt2" = external global double
@"var.const::sqrt3" = external global double
@"var.const::ln2" = external global double
@"var.const::ln10" = external global double
@"var.const::max_i64" = external global i64
@"var.const::min_i64" = external global i64
@"var.const::max_safe_int" = external global i64
@"var.const::max_i32" = external global i32
@"var.const::min_i32" = external global i32
@"var.const::max_i16" = external global i16
@"var.const::min_i16" = external global i16
@"var.const::max_i8" = external global i8
@"var.const::min_i8" = external global i8
@"var.const::max_u64" = external global i64
@"var.const::max_u32" = external global i32
@"var.const::max_u16" = external global i16
@"var.const::max_u8" = external global i8
@"var.const::inf_f64" = external global double
@"var.const::nan_f64" = external global double
@"var.const::max_f64" = external global double
@"var.const::min_f64" = external global double
@"var.const::sub_f64" = external global double
@"var.const::eps_f64" = external global double
@"var.const::inf_f32" = external global float
@"var.const::nan_f32" = external global float
@"var.const::max_f32" = external global float
@"var.const::min_f32" = external global float
@"var.const::sub_f32" = external global float
@"var.const::eps_f32" = external global float
@clo.const = internal constant { ptr, ptr } { ptr @"type_env::empty_scope", ptr null }
@"var.type_env::empty_scope" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"type_env::new_init", ptr null }
@"var.type_env::new_init" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@str.1 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.1 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"type_env::new_env", ptr null }
@"var.type_env::new_env" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"type_env::cache_fn_body", ptr null }
@"var.type_env::cache_fn_body" = global ptr null
@str.2 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.2 }
@str.3 = internal unnamed_addr constant [13 x i8] c"type_env.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.4 = internal constant { ptr, ptr } { ptr @"type_env::lookup_fn_body", ptr null }
@"var.type_env::lookup_fn_body" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"type_env::mark_generic_binding", ptr null }
@"var.type_env::mark_generic_binding" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"type_env::name_is_qualified", ptr null }
@str.4 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@str.5 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.5 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"type_env::is_generic_binding", ptr null }
@"var.type_env::is_generic_binding" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"type_env::mark_global_var", ptr null }
@"var.type_env::mark_global_var" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"type_env::is_marked_global", ptr null }
@"var.type_env::is_marked_global" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"type_env::enter_scope", ptr null }
@"var.type_env::enter_scope" = global ptr null
@str.6 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.6 }
@str.7 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.7 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"type_env::leave_scope", ptr null }
@"var.type_env::leave_scope" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"type_env::bind_local", ptr null }
@"var.type_env::bind_local" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"type_env::unbind_local", ptr null }
@"var.type_env::unbind_local" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"type_env::bind_global", ptr null }
@"var.type_env::bind_global" = global ptr null
@"var.type_env::name_is_qualified" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"type_env::decl_module_find", ptr null }
@"var.type_env::decl_module_find" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"type_env::decl_module", ptr null }
@"var.type_env::decl_module" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"type_env::set_current_module", ptr null }
@"var.type_env::set_current_module" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"type_env::lookup_scope", ptr null }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local_exact", ptr null }
@"var.type_env::lookup_local_exact" = global ptr null
@"var.type_env::lookup_scope" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local", ptr null }
@"var.type_env::lookup_local" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"type_env::lookup_scope_chain", ptr null }
@"var.type_env::lookup_scope_chain" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"type_env::lookup_nonroot_exact", ptr null }
@"var.type_env::lookup_nonroot_exact" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding_exact", ptr null }
@"var.type_env::lookup_binding_exact" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding", ptr null }
@"var.type_env::lookup_binding" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"type_env::find_last_dot", ptr null }
@"var.type_env::find_last_dot" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.26 = internal constant { ptr, ptr } { ptr @"type_env::drop_last_dot", ptr null }
@"var.type_env::drop_last_dot" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"type_env::init_has_name", ptr null }
@"var.type_env::init_has_name" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_tracked", ptr null }
@"var.type_env::init_mark_tracked" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"type_env::init_is_tracked", ptr null }
@"var.type_env::init_is_tracked" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_whole", ptr null }
@"var.type_env::init_mark_whole" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"type_env::init_is_whole", ptr null }
@"var.type_env::init_is_whole" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_written", ptr null }
@"var.type_env::init_mark_written" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok_walk", ptr null }
@"var.type_env::init_is_ok_walk" = global ptr null
@str.8 = internal unnamed_addr constant [2 x i8] c".\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"type_env::init_has_subpath", ptr null }
@"var.type_env::init_has_subpath" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok", ptr null }
@"var.type_env::init_is_ok" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot", ptr null }
@"var.type_env::init_snapshot" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot_of", ptr null }
@"var.type_env::init_snapshot_of" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"type_env::init_restore", ptr null }
@"var.type_env::init_restore" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"type_env::init_merge_two", ptr null }
@"var.type_env::init_merge_two" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"type_env::init_is_fully_init", ptr null }
@"var.type_env::init_is_fully_init" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"type_env::bind_generic", ptr null }
@"var.type_env::bind_generic" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic_exact", ptr null }
@"var.type_env::lookup_generic_exact" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic", ptr null }
@"var.type_env::lookup_generic" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"type_env::resolve_generic_name", ptr null }
@"var.type_env::resolve_generic_name" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"type_env::bind_user_type", ptr null }
@"var.type_env::bind_user_type" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type_exact", ptr null }
@"var.type_env::lookup_user_type_exact" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type", ptr null }
@"var.type_env::lookup_user_type" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_type_env, ptr null }]

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

define internal void @__dva_global_init_type_env() #0 {
entry:
  store ptr @clo.const, ptr @"var.type_env::empty_scope", align 8
  store ptr @clo.const.1, ptr @"var.type_env::new_init", align 8
  store ptr @clo.const.2, ptr @"var.type_env::new_env", align 8
  store ptr @clo.const.3, ptr @"var.type_env::cache_fn_body", align 8
  store ptr @clo.const.4, ptr @"var.type_env::lookup_fn_body", align 8
  store ptr @clo.const.5, ptr @"var.type_env::mark_generic_binding", align 8
  store ptr @clo.const.7, ptr @"var.type_env::is_generic_binding", align 8
  store ptr @clo.const.8, ptr @"var.type_env::mark_global_var", align 8
  store ptr @clo.const.9, ptr @"var.type_env::is_marked_global", align 8
  store ptr @clo.const.10, ptr @"var.type_env::enter_scope", align 8
  store ptr @clo.const.11, ptr @"var.type_env::leave_scope", align 8
  store ptr @clo.const.12, ptr @"var.type_env::bind_local", align 8
  store ptr @clo.const.13, ptr @"var.type_env::unbind_local", align 8
  store ptr @clo.const.14, ptr @"var.type_env::bind_global", align 8
  store ptr @clo.const.6, ptr @"var.type_env::name_is_qualified", align 8
  store ptr @clo.const.15, ptr @"var.type_env::decl_module_find", align 8
  store ptr @clo.const.16, ptr @"var.type_env::decl_module", align 8
  store ptr @clo.const.17, ptr @"var.type_env::set_current_module", align 8
  store ptr @clo.const.19, ptr @"var.type_env::lookup_local_exact", align 8
  store ptr @clo.const.18, ptr @"var.type_env::lookup_scope", align 8
  store ptr @clo.const.20, ptr @"var.type_env::lookup_local", align 8
  store ptr @clo.const.21, ptr @"var.type_env::lookup_scope_chain", align 8
  store ptr @clo.const.22, ptr @"var.type_env::lookup_nonroot_exact", align 8
  store ptr @clo.const.23, ptr @"var.type_env::lookup_binding_exact", align 8
  store ptr @clo.const.24, ptr @"var.type_env::lookup_binding", align 8
  store ptr @clo.const.25, ptr @"var.type_env::find_last_dot", align 8
  store ptr @clo.const.26, ptr @"var.type_env::drop_last_dot", align 8
  store ptr @clo.const.27, ptr @"var.type_env::init_has_name", align 8
  store ptr @clo.const.28, ptr @"var.type_env::init_mark_tracked", align 8
  store ptr @clo.const.29, ptr @"var.type_env::init_is_tracked", align 8
  store ptr @clo.const.30, ptr @"var.type_env::init_mark_whole", align 8
  store ptr @clo.const.31, ptr @"var.type_env::init_is_whole", align 8
  store ptr @clo.const.32, ptr @"var.type_env::init_mark_written", align 8
  store ptr @clo.const.33, ptr @"var.type_env::init_is_ok_walk", align 8
  store ptr @clo.const.34, ptr @"var.type_env::init_has_subpath", align 8
  store ptr @clo.const.35, ptr @"var.type_env::init_is_ok", align 8
  store ptr @clo.const.36, ptr @"var.type_env::init_snapshot", align 8
  store ptr @clo.const.37, ptr @"var.type_env::init_snapshot_of", align 8
  store ptr @clo.const.38, ptr @"var.type_env::init_restore", align 8
  store ptr @clo.const.39, ptr @"var.type_env::init_merge_two", align 8
  store ptr @clo.const.40, ptr @"var.type_env::init_is_fully_init", align 8
  store ptr @clo.const.41, ptr @"var.type_env::bind_generic", align 8
  store ptr @clo.const.42, ptr @"var.type_env::lookup_generic_exact", align 8
  store ptr @clo.const.43, ptr @"var.type_env::lookup_generic", align 8
  store ptr @clo.const.44, ptr @"var.type_env::resolve_generic_name", align 8
  store ptr @clo.const.45, ptr @"var.type_env::bind_user_type", align 8
  store ptr @clo.const.46, ptr @"var.type_env::lookup_user_type_exact", align 8
  store ptr @clo.const.47, ptr @"var.type_env::lookup_user_type", align 8
  ret void
}

define ptr @"type_env::empty_scope"() #0 {
entry:
  %var.b = alloca ptr, align 8
  store ptr null, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld9, align 8
  ret ptr %rec.alloc
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

define ptr @"type_env::new_init"() #0 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new3, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.new10, ptr %rec.fld18, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::new_env"() #0 {
entry:
  %rec.salloc = alloca { ptr, ptr, ptr }, align 8
  %var.user_types = alloca ptr, align 8
  %var.generics = alloca ptr, align 8
  %var.globals = alloca ptr, align 8
  %var.scopes = alloca ptr, align 8
  %var.root_scope = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr null, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld9, align 8
  store ptr %rec.alloc, ptr %var.root_scope, align 8
  store ptr null, ptr %var.scopes, align 8
  %var.load10 = load ptr, ptr %var.root_scope, align 8
  %a.load11 = load ptr, ptr %var.scopes, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

a.create13:                                       ; preds = %a.after
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
  store ptr %a.create16, ptr %var.scopes, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %a.after
  %a.load222 = load ptr, ptr %var.scopes, align 8
  br label %a.check

a.check:                                          ; preds = %a.after14
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load222)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  %slot.p2i = ptrtoint ptr %var.load10 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  store ptr null, ptr %var.globals, align 8
  store ptr null, ptr %var.generics, align 8
  store ptr null, ptr %var.user_types, align 8
  %var.load27 = load ptr, ptr %var.scopes, align 8
  %a.load28 = load ptr, ptr %var.scopes, align 8
  %a.null29 = icmp eq ptr %a.load28, null
  br i1 %a.null29, label %a.create30, label %a.after31

a.create30:                                       ; preds = %a.store
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
  store ptr %a.create33, ptr %var.scopes, align 8
  br label %a.after31

a.after31:                                        ; preds = %a.create30, %a.store
  %a.load239 = load ptr, ptr %var.scopes, align 8
  %var.load40 = load ptr, ptr %var.globals, align 8
  %a.load41 = load ptr, ptr %var.globals, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

a.create43:                                       ; preds = %a.after31
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
  store ptr %a.create46, ptr %var.globals, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %a.after31
  %a.load252 = load ptr, ptr %var.globals, align 8
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 24)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 128)
  %a.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 0
  store i64 0, ptr %a.len.gep63, align 8
  %a.data.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 1
  store ptr %a.buf62, ptr %a.data.gep64, align 8
  %a.cap.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 2
  store i64 16, ptr %a.cap.gep65, align 8
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 128)
  %a.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new67, i32 0, i32 0
  store i64 0, ptr %a.len.gep70, align 8
  %a.data.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new67, i32 0, i32 1
  store ptr %a.buf69, ptr %a.data.gep71, align 8
  %a.cap.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new67, i32 0, i32 2
  store i64 16, ptr %a.cap.gep72, align 8
  %rec.fld73 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.salloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld73, align 8
  %rec.fld74 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.salloc, i32 0, i32 1
  store ptr %a.new60, ptr %rec.fld74, align 8
  %rec.fld75 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.salloc, i32 0, i32 2
  store ptr %a.new67, ptr %rec.fld75, align 8
  %var.load76 = load ptr, ptr %var.generics, align 8
  %a.load77 = load ptr, ptr %var.generics, align 8
  %a.null78 = icmp eq ptr %a.load77, null
  br i1 %a.null78, label %a.create79, label %a.after80

a.create79:                                       ; preds = %a.after44
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
  store ptr %a.create82, ptr %var.generics, align 8
  br label %a.after80

a.after80:                                        ; preds = %a.create79, %a.after44
  %a.load288 = load ptr, ptr %var.generics, align 8
  %var.load89 = load ptr, ptr %var.user_types, align 8
  %a.load90 = load ptr, ptr %var.user_types, align 8
  %a.null91 = icmp eq ptr %a.load90, null
  br i1 %a.null91, label %a.create92, label %a.after93

a.create92:                                       ; preds = %a.after80
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 24)
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 128)
  %a.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create95, i32 0, i32 0
  store i64 0, ptr %a.len.gep98, align 8
  %a.data.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create95, i32 0, i32 1
  store ptr %a.buf97, ptr %a.data.gep99, align 8
  %a.cap.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create95, i32 0, i32 2
  store i64 16, ptr %a.cap.gep100, align 8
  store ptr %a.create95, ptr %var.user_types, align 8
  br label %a.after93

a.after93:                                        ; preds = %a.create92, %a.after80
  %a.load2101 = load ptr, ptr %var.user_types, align 8
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 48)
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 64)
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 64)
  %arena.cur108 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states109, i8 0, i64 8, i1 false)
  %m.count.gep110 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 0
  store i64 0, ptr %m.count.gep110, align 8
  %m.cap.gep111 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 1
  store i64 8, ptr %m.cap.gep111, align 8
  %m.keys.gep112 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 2
  store ptr %m.keys105, ptr %m.keys.gep112, align 8
  %m.vals.gep113 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 3
  store ptr %m.vals107, ptr %m.vals.gep113, align 8
  %m.states.gep114 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 4
  store ptr %m.states109, ptr %m.states.gep114, align 8
  %m.tombs.gep115 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new103, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep115, align 8
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 24)
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 128)
  %a.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 0
  store i64 0, ptr %a.len.gep120, align 8
  %a.data.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 1
  store ptr %a.buf119, ptr %a.data.gep121, align 8
  %a.cap.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep122, align 8
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 24)
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 128)
  %a.len.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 0
  store i64 0, ptr %a.len.gep127, align 8
  %a.data.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 1
  store ptr %a.buf126, ptr %a.data.gep128, align 8
  %a.cap.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 2
  store i64 16, ptr %a.cap.gep129, align 8
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld132 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 0
  store ptr %a.load239, ptr %rec.fld132, align 8
  %rec.fld133 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 1
  store i64 0, ptr %rec.fld133, align 8
  %rec.fld134 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 2
  store i64 0, ptr %rec.fld134, align 8
  %rec.fld135 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 3
  store ptr %a.load252, ptr %rec.fld135, align 8
  %rec.fld136 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld136, ptr align 1 %rec.salloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld137 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 5
  store ptr %a.load288, ptr %rec.fld137, align 8
  %rec.fld138 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 6
  store ptr %a.load2101, ptr %rec.fld138, align 8
  %rec.fld139 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 7
  store ptr %m.new103, ptr %rec.fld139, align 8
  %rec.fld140 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 8
  store ptr @str.0.struct, ptr %rec.fld140, align 8
  %rec.fld141 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 9
  store i1 false, ptr %rec.fld141, align 1
  %rec.fld142 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 10
  store i1 false, ptr %rec.fld142, align 1
  %rec.fld143 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 11
  store i1 false, ptr %rec.fld143, align 1
  %rec.fld144 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 12
  store i1 false, ptr %rec.fld144, align 1
  %rec.fld145 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 13
  store ptr %a.new117, ptr %rec.fld145, align 8
  %rec.fld146 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 14
  store ptr %a.new124, ptr %rec.fld146, align 8
  %rec.fld147 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 15
  store { i1, i64 } zeroinitializer, ptr %rec.fld147, align 8
  %rec.fld148 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc131, i32 0, i32 16
  store ptr @str.1.struct, ptr %rec.fld148, align 8
  ret ptr %rec.alloc131
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define void @"type_env::cache_fn_body"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.bodies = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %var.load3 = load ptr, ptr %var.body, align 8
  %slot.p2i = ptrtoint ptr %var.load3 to i64
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap4 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys5 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals6 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states7 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data8 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len9 = load i64, ptr %mk.len, align 8
  %mk.len10 = and i64 %mk.len9, 281474976710655
  %str.tag = lshr i64 %mk.len9, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data8, i64 %mk.len10)
  %m.capm1 = sub i64 %m.cap4, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb11 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap4
  %m.state.gep = getelementptr i8, ptr %m.states7, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb11, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb11, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys5, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen12 = load i64, ptr %mk.slen, align 8
  %mk.slen13 = and i64 %mk.slen12, 281474976710655
  %str.tag14 = lshr i64 %mk.slen12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals6, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb11, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap4, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done153, %m.overwrite
  ret void

str_ok15:                                         ; preds = %tag.slow_check20, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen21 = load i64, ptr %mk.nlen, align 8
  %mk.nlen22 = and i64 %mk.nlen21, 281474976710655
  %str.tag23 = lshr i64 %mk.nlen21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

tag.slow_check20:                                 ; preds = %m.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15

str_ok24:                                         ; preds = %tag.slow_check29, %str_ok15
  %mk.lenseq = icmp eq i64 %mk.slen13, %mk.nlen22
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.slow_check29:                                 ; preds = %str_ok15
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

mk.eq.then:                                       ; preds = %str_ok24
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata30 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata31 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata30, ptr %mk.ndata31, i64 %mk.nlen22)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok24
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.old.cap32 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.old.keys33 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.old.vals34 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.old.states35 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap32, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.live.cnt36 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt36, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap32
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap32
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %m.gv.bytes)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb216 = icmp ne i64 %m.tomb11, -1
  %m.ins.idx217 = select i1 %m.use.tomb216, i64 %m.tomb11, i64 %m.idx
  %m.key.slot218 = getelementptr i64, ptr %m.keys5, i64 %m.ins.idx217
  store ptr %var.load2, ptr %m.key.slot218, align 8
  %m.val.slot219 = getelementptr i64, ptr %m.vals6, i64 %m.ins.idx217
  store i64 %slot.p2i, ptr %m.val.slot219, align 8
  %m.ins.state.slot220 = getelementptr i8, ptr %m.states7, i64 %m.ins.idx217
  store i8 1, ptr %m.ins.state.slot220, align 1
  %m.count221 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count222 = load i64, ptr %m.count221, align 8
  %m.count.next223 = add i64 %m.count222, 1
  %m.count.gep224 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next223, ptr %m.count.gep224, align 8
  %m.ins.tombs.p225 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs226 = load i64, ptr %m.ins.tombs.p225, align 8
  %m.tomb.dec227 = select i1 %m.use.tomb216, i64 1, i64 0
  %m.ins.tombs.next228 = sub i64 %m.ins.tombs226, %m.tomb.dec227
  store i64 %m.ins.tombs.next228, ptr %m.ins.tombs.p225, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap32
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states35, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done69, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap124 = load i64, ptr %m.cap123, align 8
  %m.keys125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys126 = load ptr, ptr %m.keys125, align 8
  %m.vals127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals128 = load ptr, ptr %m.vals127, align 8
  %m.states129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states130 = load ptr, ptr %m.states129, align 8
  %mk.data131 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data132 = load ptr, ptr %mk.data131, align 8
  %mk.len133 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len134 = load i64, ptr %mk.len133, align 8
  %mk.len135 = and i64 %mk.len134, 281474976710655
  %str.tag136 = lshr i64 %mk.len134, 48
  %tag.immortal138 = icmp eq i64 %str.tag136, 0
  %active.gen139 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current140 = icmp eq i64 %str.tag136, %active.gen139
  %tag.fast.ok141 = or i1 %tag.immortal138, %tag.current140
  br i1 %tag.fast.ok141, label %str_ok137, label %tag.slow_check142

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys33, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals34, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap39 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap40 = load i64, ptr %m.cap39, align 8
  %m.keys41 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys42 = load ptr, ptr %m.keys41, align 8
  %m.vals43 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals44 = load ptr, ptr %m.vals43, align 8
  %m.states45 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states46 = load ptr, ptr %m.states45, align 8
  %mk.data47 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data48 = load ptr, ptr %mk.data47, align 8
  %mk.len49 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len50 = load i64, ptr %mk.len49, align 8
  %mk.len51 = and i64 %mk.len50, 281474976710655
  %str.tag52 = lshr i64 %mk.len50, 48
  %tag.immortal54 = icmp eq i64 %str.tag52, 0
  %active.gen55 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current56 = icmp eq i64 %str.tag52, %active.gen55
  %tag.fast.ok57 = or i1 %tag.immortal54, %tag.current56
  br i1 %tag.fast.ok57, label %str_ok53, label %tag.slow_check58

str_ok53:                                         ; preds = %tag.slow_check58, %m.re.ins
  %hash.str59 = call i64 @dva_hash_string(ptr %mk.data48, i64 %mk.len51)
  %m.capm160 = sub i64 %m.cap40, 1
  %m.idx061 = and i64 %hash.str59, %m.capm160
  br label %m.loop62

tag.slow_check58:                                 ; preds = %m.re.ins
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag52)
  br label %str_ok53

m.loop62:                                         ; preds = %m.next67, %str_ok53
  %m.idx70 = phi i64 [ %m.idx061, %str_ok53 ], [ %m.idx.next117, %m.next67 ]
  %m.tomb71 = phi i64 [ -1, %str_ok53 ], [ %m.next.tomb115, %m.next67 ]
  %m.probe72 = phi i64 [ 0, %str_ok53 ], [ %m.probe.next118, %m.next67 ]
  %m.reached.cap73 = icmp eq i64 %m.probe72, %m.cap40
  %m.state.gep74 = getelementptr i8, ptr %m.states46, i64 %m.idx70
  %m.state75 = load i8, ptr %m.state.gep74, align 1
  %m.is.empty76 = icmp eq i8 %m.state75, 0
  %m.stop77 = or i1 %m.is.empty76, %m.reached.cap73
  br i1 %m.stop77, label %m.empty68, label %m.check.tomb63

m.check.tomb63:                                   ; preds = %m.loop62
  %m.is.tomb78 = icmp eq i8 %m.state75, 2
  br i1 %m.is.tomb78, label %m.tomb64, label %m.found65

m.tomb64:                                         ; preds = %m.check.tomb63
  %m.has.tomb79 = icmp ne i64 %m.tomb71, -1
  %m.tomb.sel80 = select i1 %m.has.tomb79, i64 %m.tomb71, i64 %m.idx70
  br label %m.next67

m.found65:                                        ; preds = %m.check.tomb63
  %m.key.slot81 = getelementptr i64, ptr %m.keys42, i64 %m.idx70
  %mk.stored82 = load ptr, ptr %m.key.slot81, align 8
  %mk.slen83 = getelementptr inbounds { i64, ptr }, ptr %mk.stored82, i32 0, i32 0
  %mk.slen84 = load i64, ptr %mk.slen83, align 8
  %mk.slen85 = and i64 %mk.slen84, 281474976710655
  %str.tag86 = lshr i64 %mk.slen84, 48
  %tag.immortal88 = icmp eq i64 %str.tag86, 0
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current90 = icmp eq i64 %str.tag86, %active.gen89
  %tag.fast.ok91 = or i1 %tag.immortal88, %tag.current90
  br i1 %tag.fast.ok91, label %str_ok87, label %tag.slow_check92

m.overwrite66:                                    ; preds = %mk.eq.merge106
  %m.val.slot114 = getelementptr i64, ptr %m.vals44, i64 %m.idx70
  store i64 %m.re.val, ptr %m.val.slot114, align 8
  br label %m.done69

m.next67:                                         ; preds = %mk.eq.merge106, %m.tomb64
  %m.next.tomb115 = phi i64 [ %m.tomb.sel80, %m.tomb64 ], [ %m.tomb71, %mk.eq.merge106 ]
  %m.idx.add116 = add i64 %m.idx70, 1
  %m.idx.next117 = and i64 %m.idx.add116, %m.capm160
  %m.probe.next118 = add i64 %m.probe72, 1
  br label %m.loop62

m.empty68:                                        ; preds = %m.loop62
  %m.use.tomb = icmp ne i64 %m.tomb71, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb71, i64 %m.idx70
  %m.key.slot119 = getelementptr i64, ptr %m.keys42, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot119, align 8
  %m.val.slot120 = getelementptr i64, ptr %m.vals44, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot120, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states46, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count121 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count121, 1
  %m.count.gep122 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep122, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done69

m.done69:                                         ; preds = %m.empty68, %m.overwrite66
  br label %m.re.cont

str_ok87:                                         ; preds = %tag.slow_check92, %m.found65
  %mk.nlen93 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen94 = load i64, ptr %mk.nlen93, align 8
  %mk.nlen95 = and i64 %mk.nlen94, 281474976710655
  %str.tag96 = lshr i64 %mk.nlen94, 48
  %tag.immortal98 = icmp eq i64 %str.tag96, 0
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current100 = icmp eq i64 %str.tag96, %active.gen99
  %tag.fast.ok101 = or i1 %tag.immortal98, %tag.current100
  br i1 %tag.fast.ok101, label %str_ok97, label %tag.slow_check102

tag.slow_check92:                                 ; preds = %m.found65
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag86)
  br label %str_ok87

str_ok97:                                         ; preds = %tag.slow_check102, %str_ok87
  %mk.lenseq103 = icmp eq i64 %mk.slen85, %mk.nlen95
  br i1 %mk.lenseq103, label %mk.eq.then104, label %mk.eq.else105

tag.slow_check102:                                ; preds = %str_ok87
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag96)
  br label %str_ok97

mk.eq.then104:                                    ; preds = %str_ok97
  %mk.sdata107 = getelementptr inbounds { i64, ptr }, ptr %mk.stored82, i32 0, i32 1
  %mk.sdata108 = load ptr, ptr %mk.sdata107, align 8
  %mk.ndata109 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata110 = load ptr, ptr %mk.ndata109, align 8
  %mk.memcmp111 = call i32 @memcmp(ptr %mk.sdata108, ptr %mk.ndata110, i64 %mk.nlen95)
  %mk.cmpeq112 = icmp eq i32 %mk.memcmp111, 0
  br label %mk.eq.merge106

mk.eq.else105:                                    ; preds = %str_ok97
  br label %mk.eq.merge106

mk.eq.merge106:                                   ; preds = %mk.eq.else105, %mk.eq.then104
  %mk.eq113 = phi i1 [ %mk.cmpeq112, %mk.eq.then104 ], [ false, %mk.eq.else105 ]
  br i1 %mk.eq113, label %m.overwrite66, label %m.next67

str_ok137:                                        ; preds = %tag.slow_check142, %m.re.done
  %hash.str143 = call i64 @dva_hash_string(ptr %mk.data132, i64 %mk.len135)
  %m.capm1144 = sub i64 %m.cap124, 1
  %m.idx0145 = and i64 %hash.str143, %m.capm1144
  br label %m.loop146

tag.slow_check142:                                ; preds = %m.re.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag136)
  br label %str_ok137

m.loop146:                                        ; preds = %m.next151, %str_ok137
  %m.idx154 = phi i64 [ %m.idx0145, %str_ok137 ], [ %m.idx.next201, %m.next151 ]
  %m.tomb155 = phi i64 [ -1, %str_ok137 ], [ %m.next.tomb199, %m.next151 ]
  %m.probe156 = phi i64 [ 0, %str_ok137 ], [ %m.probe.next202, %m.next151 ]
  %m.reached.cap157 = icmp eq i64 %m.probe156, %m.cap124
  %m.state.gep158 = getelementptr i8, ptr %m.states130, i64 %m.idx154
  %m.state159 = load i8, ptr %m.state.gep158, align 1
  %m.is.empty160 = icmp eq i8 %m.state159, 0
  %m.stop161 = or i1 %m.is.empty160, %m.reached.cap157
  br i1 %m.stop161, label %m.empty152, label %m.check.tomb147

m.check.tomb147:                                  ; preds = %m.loop146
  %m.is.tomb162 = icmp eq i8 %m.state159, 2
  br i1 %m.is.tomb162, label %m.tomb148, label %m.found149

m.tomb148:                                        ; preds = %m.check.tomb147
  %m.has.tomb163 = icmp ne i64 %m.tomb155, -1
  %m.tomb.sel164 = select i1 %m.has.tomb163, i64 %m.tomb155, i64 %m.idx154
  br label %m.next151

m.found149:                                       ; preds = %m.check.tomb147
  %m.key.slot165 = getelementptr i64, ptr %m.keys126, i64 %m.idx154
  %mk.stored166 = load ptr, ptr %m.key.slot165, align 8
  %mk.slen167 = getelementptr inbounds { i64, ptr }, ptr %mk.stored166, i32 0, i32 0
  %mk.slen168 = load i64, ptr %mk.slen167, align 8
  %mk.slen169 = and i64 %mk.slen168, 281474976710655
  %str.tag170 = lshr i64 %mk.slen168, 48
  %tag.immortal172 = icmp eq i64 %str.tag170, 0
  %active.gen173 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current174 = icmp eq i64 %str.tag170, %active.gen173
  %tag.fast.ok175 = or i1 %tag.immortal172, %tag.current174
  br i1 %tag.fast.ok175, label %str_ok171, label %tag.slow_check176

m.overwrite150:                                   ; preds = %mk.eq.merge190
  %m.val.slot198 = getelementptr i64, ptr %m.vals128, i64 %m.idx154
  store i64 %slot.p2i, ptr %m.val.slot198, align 8
  br label %m.done153

m.next151:                                        ; preds = %mk.eq.merge190, %m.tomb148
  %m.next.tomb199 = phi i64 [ %m.tomb.sel164, %m.tomb148 ], [ %m.tomb155, %mk.eq.merge190 ]
  %m.idx.add200 = add i64 %m.idx154, 1
  %m.idx.next201 = and i64 %m.idx.add200, %m.capm1144
  %m.probe.next202 = add i64 %m.probe156, 1
  br label %m.loop146

m.empty152:                                       ; preds = %m.loop146
  %m.use.tomb203 = icmp ne i64 %m.tomb155, -1
  %m.ins.idx204 = select i1 %m.use.tomb203, i64 %m.tomb155, i64 %m.idx154
  %m.key.slot205 = getelementptr i64, ptr %m.keys126, i64 %m.ins.idx204
  store ptr %var.load2, ptr %m.key.slot205, align 8
  %m.val.slot206 = getelementptr i64, ptr %m.vals128, i64 %m.ins.idx204
  store i64 %slot.p2i, ptr %m.val.slot206, align 8
  %m.ins.state.slot207 = getelementptr i8, ptr %m.states130, i64 %m.ins.idx204
  store i8 1, ptr %m.ins.state.slot207, align 1
  %m.count208 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count209 = load i64, ptr %m.count208, align 8
  %m.count.next210 = add i64 %m.count209, 1
  %m.count.gep211 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next210, ptr %m.count.gep211, align 8
  %m.ins.tombs.p212 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs213 = load i64, ptr %m.ins.tombs.p212, align 8
  %m.tomb.dec214 = select i1 %m.use.tomb203, i64 1, i64 0
  %m.ins.tombs.next215 = sub i64 %m.ins.tombs213, %m.tomb.dec214
  store i64 %m.ins.tombs.next215, ptr %m.ins.tombs.p212, align 8
  br label %m.done153

m.done153:                                        ; preds = %m.empty152, %m.overwrite150
  br label %m.done

str_ok171:                                        ; preds = %tag.slow_check176, %m.found149
  %mk.nlen177 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen178 = load i64, ptr %mk.nlen177, align 8
  %mk.nlen179 = and i64 %mk.nlen178, 281474976710655
  %str.tag180 = lshr i64 %mk.nlen178, 48
  %tag.immortal182 = icmp eq i64 %str.tag180, 0
  %active.gen183 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current184 = icmp eq i64 %str.tag180, %active.gen183
  %tag.fast.ok185 = or i1 %tag.immortal182, %tag.current184
  br i1 %tag.fast.ok185, label %str_ok181, label %tag.slow_check186

tag.slow_check176:                                ; preds = %m.found149
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag170)
  br label %str_ok171

str_ok181:                                        ; preds = %tag.slow_check186, %str_ok171
  %mk.lenseq187 = icmp eq i64 %mk.slen169, %mk.nlen179
  br i1 %mk.lenseq187, label %mk.eq.then188, label %mk.eq.else189

tag.slow_check186:                                ; preds = %str_ok171
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag180)
  br label %str_ok181

mk.eq.then188:                                    ; preds = %str_ok181
  %mk.sdata191 = getelementptr inbounds { i64, ptr }, ptr %mk.stored166, i32 0, i32 1
  %mk.sdata192 = load ptr, ptr %mk.sdata191, align 8
  %mk.ndata193 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata194 = load ptr, ptr %mk.ndata193, align 8
  %mk.memcmp195 = call i32 @memcmp(ptr %mk.sdata192, ptr %mk.ndata194, i64 %mk.nlen179)
  %mk.cmpeq196 = icmp eq i32 %mk.memcmp195, 0
  br label %mk.eq.merge190

mk.eq.else189:                                    ; preds = %str_ok181
  br label %mk.eq.merge190

mk.eq.merge190:                                   ; preds = %mk.eq.else189, %mk.eq.then188
  %mk.eq197 = phi i1 [ %mk.cmpeq196, %mk.eq.then188 ], [ false, %mk.eq.else189 ]
  br i1 %mk.eq197, label %m.overwrite150, label %m.next151
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #8 {
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

declare i32 @memcmp(ptr, ptr, i64) #0

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #0 {
entry:
  %var.body = alloca ptr, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.bodies = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
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
  %var.load30 = load ptr, ptr %var.bodies, align 8
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
  %choice.res123 = phi ptr [ %var.load122, %choice.exit90 ], [ null, %choice.else ]
  ret ptr %choice.res123

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
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
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
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then88:                                    ; preds = %m.rd.done
  %ram.pay91 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay91 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit90

choice.else89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr93 = inttoptr i64 %ram.pay92 to ptr
  store ptr %pay.ptr93, ptr %var._94, align 8
  store ptr %pay.ptr93, ptr %var._95, align 8
  store ptr %pay.ptr93, ptr %var._96, align 8
  %err.code.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr93, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep97, align 8
  %err.msg.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr93, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep98, align 8
  %err.file.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr93, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep99, align 8
  %err.line.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr93, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep100, align 8
  %err.col.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr93, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep101, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len102 = load i64, ptr %err.msg.len, align 8
  %err.msg.len103 = and i64 %err.msg.len102, 281474976710655
  %str.tag104 = lshr i64 %err.msg.len102, 48
  %tag.immortal106 = icmp eq i64 %str.tag104, 0
  %active.gen107 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current108 = icmp eq i64 %str.tag104, %active.gen107
  %tag.fast.ok109 = or i1 %tag.immortal106, %tag.current108
  br i1 %tag.fast.ok109, label %str_ok105, label %tag.slow_check110

choice.exit90:                                    ; preds = %err.abort, %choice.then88
  %choice.res = phi ptr [ %pay.ptr, %choice.then88 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load122 = load ptr, ptr %var.body, align 8
  br label %choice.exit

str_ok105:                                        ; preds = %tag.slow_check110, %choice.else89
  %err.msg.len32 = trunc i64 %err.msg.len103 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data111 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len112 = load i64, ptr %err.file.len, align 8
  %err.file.len113 = and i64 %err.file.len112, 281474976710655
  %str.tag114 = lshr i64 %err.file.len112, 48
  %tag.immortal116 = icmp eq i64 %str.tag114, 0
  %active.gen117 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current118 = icmp eq i64 %str.tag114, %active.gen117
  %tag.fast.ok119 = or i1 %tag.immortal116, %tag.current118
  br i1 %tag.fast.ok119, label %str_ok115, label %tag.slow_check120

tag.slow_check110:                                ; preds = %choice.else89
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag104)
  br label %str_ok105

str_ok115:                                        ; preds = %tag.slow_check120, %str_ok105
  %err.file.len32 = trunc i64 %err.file.len113 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data121 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check120:                                ; preds = %str_ok105
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag114)
  br label %str_ok115

err.thread:                                       ; preds = %str_ok115
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr93, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok115
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data111, i32 %err.file.len32, ptr %err.file.data121, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit90
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define void @"type_env::mark_generic_binding"(ptr %0, ptr %1) #0 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 13
  %a.fld.load = load ptr, ptr %fld.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len2 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap3 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len2, %a.cap3
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data4 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len5 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data4, i64 %a.cur.len5
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len5, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define i1 @"type_env::is_generic_binding"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.174 = alloca i64, align 8
  %loop.idx.174 = alloca i64, align 8
  %var.priv = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.has_mod = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.171.then, label %and.171.else

and.171.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.171.exit

and.171.else:                                     ; preds = %str.eq.merge
  br label %and.171.exit

and.171.exit:                                     ; preds = %and.171.else, %and.171.then
  %and.171.phi = phi i1 [ %nottmp, %and.171.then ], [ %str.neq, %and.171.else ]
  store i1 %and.171.phi, ptr %var.has_mod, align 1
  %var.load6 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load6, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.171.exit
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %str.tag12 = lshr i64 %cat.seg10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

choice.else:                                      ; preds = %and.171.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len43
  %choice.res = phi ptr [ %concat.str, %concat.tot.len43 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.pub, align 8
  %var.load50 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load50, label %choice.then51, label %choice.else52

str_ok13:                                         ; preds = %tag.slow_check18, %choice.then
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg20 = load ptr, ptr %cat.seg19, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load21 = load ptr, ptr %var.name, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check18:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok13
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len34

tag.slow_check31:                                 ; preds = %str_ok13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len34:                                    ; preds = %abort.dead, %str_ok26
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len34

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len34
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum41)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg20, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off47 = add i64 %cat.off, 2
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

choice.then51:                                    ; preds = %choice.exit
  %var.load54 = load ptr, ptr %var.env, align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load54, i32 0, i32 8
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 0
  %cat.seg58 = load i64, ptr %cat.seg57, align 8
  %cat.seg59 = and i64 %cat.seg58, 281474976710655
  %str.tag60 = lshr i64 %cat.seg58, 48
  %tag.immortal62 = icmp eq i64 %str.tag60, 0
  %active.gen63 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current64 = icmp eq i64 %str.tag60, %active.gen63
  %tag.fast.ok65 = or i1 %tag.immortal62, %tag.current64
  br i1 %tag.fast.ok65, label %str_ok61, label %tag.slow_check66

choice.else52:                                    ; preds = %choice.exit
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else52, %concat.tot.len98
  %choice.res113 = phi ptr [ %concat.str110, %concat.tot.len98 ], [ @str.0.struct, %choice.else52 ]
  store ptr %choice.res113, ptr %var.priv, align 8
  %var.load114 = load ptr, ptr %var.env, align 8
  %fld.gep115 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load114, i32 0, i32 13
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load116, i32 0, i32 0
  %arr.cycle.len117 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load116, i32 0, i32 1
  %arr.cycle.data118 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.174, align 8
  br label %loop.header.174

str_ok61:                                         ; preds = %tag.slow_check66, %choice.then51
  %cat.seg67 = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 1
  %cat.seg68 = load ptr, ptr %cat.seg67, align 8
  %cat.lit.data69 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load70 = load ptr, ptr %var.name, align 8
  %cat.seg71 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %cat.seg72 = load i64, ptr %cat.seg71, align 8
  %cat.seg73 = and i64 %cat.seg72, 281474976710655
  %str.tag74 = lshr i64 %cat.seg72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current78 = icmp eq i64 %str.tag74, %active.gen77
  %tag.fast.ok79 = or i1 %tag.immortal76, %tag.current78
  br i1 %tag.fast.ok79, label %str_ok75, label %tag.slow_check80

tag.slow_check66:                                 ; preds = %choice.then51
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag60)
  br label %str_ok61

str_ok75:                                         ; preds = %tag.slow_check80, %str_ok61
  %cat.seg81 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 1
  %cat.seg82 = load ptr, ptr %cat.seg81, align 8
  %cat.sum.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg59, i64 3)
  %sum84 = extractvalue { i64, i1 } %cat.sum.len83, 0
  %ovf85 = extractvalue { i64, i1 } %cat.sum.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %cat.sum.len86

tag.slow_check80:                                 ; preds = %str_ok61
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag74)
  br label %str_ok75

cat.sum.len86:                                    ; preds = %abort.dead88, %str_ok75
  %cat.sum.len89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum84, i64 %cat.seg73)
  %sum90 = extractvalue { i64, i1 } %cat.sum.len89, 0
  %ovf91 = extractvalue { i64, i1 } %cat.sum.len89, 1
  br i1 %ovf91, label %str_overflow_abort93, label %cat.sum.len92

str_overflow_abort87:                             ; preds = %str_ok75
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %cat.sum.len86

cat.sum.len92:                                    ; preds = %abort.dead94, %cat.sum.len86
  %concat.tot.len95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum90, i64 1)
  %sum96 = extractvalue { i64, i1 } %concat.tot.len95, 0
  %ovf97 = extractvalue { i64, i1 } %concat.tot.len95, 1
  br i1 %ovf97, label %str_overflow_abort99, label %concat.tot.len98

str_overflow_abort93:                             ; preds = %cat.sum.len86
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %cat.sum.len92

concat.tot.len98:                                 ; preds = %abort.dead100, %cat.sum.len92
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum96)
  %cat.dst103 = getelementptr i8, ptr %concat.buf102, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst103, ptr align 1 %cat.seg68, i64 %cat.seg59, i1 false)
  %cat.off104 = add i64 0, %cat.seg59
  %cat.dst105 = getelementptr i8, ptr %concat.buf102, i64 %cat.off104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst105, ptr align 1 %cat.lit.data69, i64 3, i1 false)
  %cat.off106 = add i64 %cat.off104, 3
  %cat.dst107 = getelementptr i8, ptr %concat.buf102, i64 %cat.off106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst107, ptr align 1 %cat.seg82, i64 %cat.seg73, i1 false)
  %concat.nul108 = getelementptr i8, ptr %concat.buf102, i64 %sum90
  store i8 0, ptr %concat.nul108, align 1
  %arena.cur109 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 16)
  %str.build.len.gep111 = getelementptr inbounds { i64, ptr }, ptr %concat.str110, i32 0, i32 0
  store i64 %sum90, ptr %str.build.len.gep111, align 8
  %str.build.data.gep112 = getelementptr inbounds { i64, ptr }, ptr %concat.str110, i32 0, i32 1
  store ptr %concat.buf102, ptr %str.build.data.gep112, align 8
  br label %choice.exit53

str_overflow_abort99:                             ; preds = %cat.sum.len92
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead100:                                    ; No predecessors!
  br label %concat.tot.len98

loop.header.174:                                  ; preds = %loop.latch.174, %choice.exit53
  %counter.load = load i64, ptr %loop.idx.174, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len117
  br i1 %loop.cond, label %loop.body.174, label %loop.exit.nat.174

loop.body.174:                                    ; preds = %loop.header.174
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.174, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data118, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load119 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load119, label %choice.then120, label %choice.else121

loop.exit.nat.174:                                ; preds = %loop.header.174
  br label %loop.exit.174

loop.latch.174:                                   ; preds = %choice.exit182
  %step.val = load i64, ptr %loop.step.174, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.174, align 8
  br label %loop.header.174

loop.exit.174:                                    ; preds = %loop.exit.nat.174
  ret i1 false

choice.then120:                                   ; preds = %loop.body.174
  %var.load123 = load ptr, ptr %var.n, align 8
  %var.load124 = load ptr, ptr %var.pub, align 8
  %eq.lhs.len125 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 0
  %eq.lhs.len126 = load i64, ptr %eq.lhs.len125, align 8
  %eq.lhs.len127 = and i64 %eq.lhs.len126, 281474976710655
  %eq.rhs.len128 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %eq.rhs.len129 = load i64, ptr %eq.rhs.len128, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %eq.len131 = icmp eq i64 %eq.lhs.len127, %eq.rhs.len130
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.else133

choice.else121:                                   ; preds = %loop.body.174
  %var.load161 = load ptr, ptr %var.n, align 8
  %var.load162 = load ptr, ptr %var.name, align 8
  %eq.lhs.len163 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 0
  %eq.lhs.len164 = load i64, ptr %eq.lhs.len163, align 8
  %eq.lhs.len165 = and i64 %eq.lhs.len164, 281474976710655
  %eq.rhs.len166 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %eq.rhs.len167 = load i64, ptr %eq.rhs.len166, align 8
  %eq.rhs.len168 = and i64 %eq.rhs.len167, 281474976710655
  %eq.len169 = icmp eq i64 %eq.lhs.len165, %eq.rhs.len168
  br i1 %eq.len169, label %str.eq.then170, label %str.eq.else171

choice.exit122:                                   ; preds = %str.eq.merge172, %or.175.exit
  %choice.res180 = phi i1 [ %or.175.phi, %or.175.exit ], [ %str.eq.result179, %str.eq.merge172 ]
  br i1 %choice.res180, label %choice.then181, label %choice.exit182

str.eq.then132:                                   ; preds = %choice.then120
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.rhs.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %eq.rhs.data138 = load ptr, ptr %eq.rhs.data137, align 8
  %eq.memcmp139 = call i32 @memcmp(ptr %eq.lhs.data136, ptr %eq.rhs.data138, i64 %eq.lhs.len127)
  %eq.cmp.zero140 = icmp eq i32 %eq.memcmp139, 0
  br label %str.eq.merge134

str.eq.else133:                                   ; preds = %choice.then120
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.else133, %str.eq.then132
  %str.eq.result141 = phi i1 [ %eq.cmp.zero140, %str.eq.then132 ], [ false, %str.eq.else133 ]
  br i1 %str.eq.result141, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %str.eq.merge134
  br label %or.175.exit

or.175.else:                                      ; preds = %str.eq.merge134
  %var.load142 = load ptr, ptr %var.n, align 8
  %var.load143 = load ptr, ptr %var.priv, align 8
  %eq.lhs.len144 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 0
  %eq.lhs.len145 = load i64, ptr %eq.lhs.len144, align 8
  %eq.lhs.len146 = and i64 %eq.lhs.len145, 281474976710655
  %eq.rhs.len147 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 0
  %eq.rhs.len148 = load i64, ptr %eq.rhs.len147, align 8
  %eq.rhs.len149 = and i64 %eq.rhs.len148, 281474976710655
  %eq.len150 = icmp eq i64 %eq.lhs.len146, %eq.rhs.len149
  br i1 %eq.len150, label %str.eq.then151, label %str.eq.else152

or.175.exit:                                      ; preds = %str.eq.merge153, %or.175.then
  %or.175.phi = phi i1 [ %str.eq.result141, %or.175.then ], [ %str.eq.result160, %str.eq.merge153 ]
  br label %choice.exit122

str.eq.then151:                                   ; preds = %or.175.else
  %eq.lhs.data154 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 1
  %eq.lhs.data155 = load ptr, ptr %eq.lhs.data154, align 8
  %eq.rhs.data156 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 1
  %eq.rhs.data157 = load ptr, ptr %eq.rhs.data156, align 8
  %eq.memcmp158 = call i32 @memcmp(ptr %eq.lhs.data155, ptr %eq.rhs.data157, i64 %eq.lhs.len146)
  %eq.cmp.zero159 = icmp eq i32 %eq.memcmp158, 0
  br label %str.eq.merge153

str.eq.else152:                                   ; preds = %or.175.else
  br label %str.eq.merge153

str.eq.merge153:                                  ; preds = %str.eq.else152, %str.eq.then151
  %str.eq.result160 = phi i1 [ %eq.cmp.zero159, %str.eq.then151 ], [ false, %str.eq.else152 ]
  br label %or.175.exit

str.eq.then170:                                   ; preds = %choice.else121
  %eq.lhs.data173 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 1
  %eq.lhs.data174 = load ptr, ptr %eq.lhs.data173, align 8
  %eq.rhs.data175 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %eq.rhs.data176 = load ptr, ptr %eq.rhs.data175, align 8
  %eq.memcmp177 = call i32 @memcmp(ptr %eq.lhs.data174, ptr %eq.rhs.data176, i64 %eq.lhs.len165)
  %eq.cmp.zero178 = icmp eq i32 %eq.memcmp177, 0
  br label %str.eq.merge172

str.eq.else171:                                   ; preds = %choice.else121
  br label %str.eq.merge172

str.eq.merge172:                                  ; preds = %str.eq.else171, %str.eq.then170
  %str.eq.result179 = phi i1 [ %eq.cmp.zero178, %str.eq.then170 ], [ false, %str.eq.else171 ]
  br label %choice.exit122

choice.then181:                                   ; preds = %choice.exit122
  ret i1 true

choice.exit182:                                   ; preds = %ret.dead, %choice.exit122
  br label %loop.latch.174

ret.dead:                                         ; No predecessors!
  br label %choice.exit182
}

define i1 @"type_env::name_is_qualified"(ptr %0, i64 %1) #0 {
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
  br i1 %cmptmp, label %and.172.then, label %and.172.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.172.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.172.else:                                     ; preds = %str_ok
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %idx_ok
  %and.172.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.172.else ]
  br i1 %and.172.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.172.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.172.exit

idx_oob:                                          ; preds = %and.172.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.172.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.172.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res47 = phi i1 [ %choice.res, %choice.exit43 ], [ false, %choice.else ]
  ret i1 %choice.res47

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.173.then, label %and.173.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.173.then:                                     ; preds = %idx_ok18
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

and.173.else:                                     ; preds = %idx_ok18
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok34
  %and.173.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.173.else ]
  br i1 %and.173.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.173.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.173.exit

idx_oob35:                                        ; preds = %and.173.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.173.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.173.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load44, i64 %addtmp46)
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"type_env::mark_global_var"(ptr %0, ptr %1) #0 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 14
  %a.fld.load = load ptr, ptr %fld.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len2 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap3 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len2, %a.cap3
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data4 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len5 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data4, i64 %a.cur.len5
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len5, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define i1 @"type_env::is_marked_global"(ptr %0, ptr %1) #0 {
entry:
  %var.match = alloca i1, align 1
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.177 = alloca i64, align 8
  %loop.idx.177 = alloca i64, align 8
  %var.private_name = alloca ptr, align 8
  %var.qname = alloca ptr, align 8
  %var.has_mod = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.176.then, label %and.176.else

and.176.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.176.exit

and.176.else:                                     ; preds = %str.eq.merge
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %and.176.then
  %and.176.phi = phi i1 [ %nottmp, %and.176.then ], [ %str.neq, %and.176.else ]
  store i1 %and.176.phi, ptr %var.has_mod, align 1
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %eq.lhs.len9 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len9, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.lhs.len10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

str_ok13:                                         ; preds = %tag.slow_check18, %and.176.exit
  %eq.rhs.len19 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len20 = and i64 %eq.rhs.len19, 281474976710655
  %eq.len21 = icmp eq i64 %eq.lhs.len11, %eq.rhs.len20
  br i1 %eq.len21, label %str.eq.then22, label %str.eq.else23

tag.slow_check18:                                 ; preds = %and.176.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str.eq.then22:                                    ; preds = %str_ok13
  %eq.lhs.data25 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %eq.lhs.data26 = load ptr, ptr %eq.lhs.data25, align 8
  %eq.rhs.data27 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp28 = call i32 @memcmp(ptr %eq.lhs.data26, ptr %eq.rhs.data27, i64 %eq.lhs.len11)
  %eq.cmp.zero29 = icmp eq i32 %eq.memcmp28, 0
  br label %str.eq.merge24

str.eq.else23:                                    ; preds = %str_ok13
  br label %str.eq.merge24

str.eq.merge24:                                   ; preds = %str.eq.else23, %str.eq.then22
  %str.eq.result30 = phi i1 [ %eq.cmp.zero29, %str.eq.then22 ], [ false, %str.eq.else23 ]
  %str.neq31 = xor i1 %str.eq.result30, true
  br i1 %str.neq31, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge24
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load32, i32 0, i32 8
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 0
  %cat.seg35 = load i64, ptr %cat.seg, align 8
  %cat.seg36 = and i64 %cat.seg35, 281474976710655
  %str.tag37 = lshr i64 %cat.seg35, 48
  %tag.immortal39 = icmp eq i64 %str.tag37, 0
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current41 = icmp eq i64 %str.tag37, %active.gen40
  %tag.fast.ok42 = or i1 %tag.immortal39, %tag.current41
  br i1 %tag.fast.ok42, label %str_ok38, label %tag.slow_check43

choice.else:                                      ; preds = %str.eq.merge24
  %var.load75 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len68
  %choice.res = phi ptr [ %concat.str, %concat.tot.len68 ], [ %var.load75, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load76 = load ptr, ptr %var.env, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load76, i32 0, i32 8
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %eq.lhs.len79 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %eq.lhs.len80 = load i64, ptr %eq.lhs.len79, align 8
  %eq.lhs.len81 = and i64 %eq.lhs.len80, 281474976710655
  %str.tag82 = lshr i64 %eq.lhs.len80, 48
  %tag.immortal84 = icmp eq i64 %str.tag82, 0
  %active.gen85 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current86 = icmp eq i64 %str.tag82, %active.gen85
  %tag.fast.ok87 = or i1 %tag.immortal84, %tag.current86
  br i1 %tag.fast.ok87, label %str_ok83, label %tag.slow_check88

str_ok38:                                         ; preds = %tag.slow_check43, %choice.then
  %cat.seg44 = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 1
  %cat.seg45 = load ptr, ptr %cat.seg44, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load46 = load ptr, ptr %var.name, align 8
  %cat.seg47 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %cat.seg48 = load i64, ptr %cat.seg47, align 8
  %cat.seg49 = and i64 %cat.seg48, 281474976710655
  %str.tag50 = lshr i64 %cat.seg48, 48
  %tag.immortal52 = icmp eq i64 %str.tag50, 0
  %active.gen53 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current54 = icmp eq i64 %str.tag50, %active.gen53
  %tag.fast.ok55 = or i1 %tag.immortal52, %tag.current54
  br i1 %tag.fast.ok55, label %str_ok51, label %tag.slow_check56

tag.slow_check43:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag37)
  br label %str_ok38

str_ok51:                                         ; preds = %tag.slow_check56, %str_ok38
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %cat.seg58 = load ptr, ptr %cat.seg57, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg36, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len59

tag.slow_check56:                                 ; preds = %str_ok38
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag50)
  br label %str_ok51

cat.sum.len59:                                    ; preds = %abort.dead, %str_ok51
  %cat.sum.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg49)
  %sum61 = extractvalue { i64, i1 } %cat.sum.len60, 0
  %ovf62 = extractvalue { i64, i1 } %cat.sum.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %cat.sum.len63

str_overflow_abort:                               ; preds = %str_ok51
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len59

cat.sum.len63:                                    ; preds = %abort.dead65, %cat.sum.len59
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum61, i64 1)
  %sum66 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf67 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.tot.len68

str_overflow_abort64:                             ; preds = %cat.sum.len59
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %cat.sum.len63

concat.tot.len68:                                 ; preds = %abort.dead70, %cat.sum.len63
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum66)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg45, i64 %cat.seg36, i1 false)
  %cat.off = add i64 0, %cat.seg36
  %cat.dst71 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst71, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off72 = add i64 %cat.off, 2
  %cat.dst73 = getelementptr i8, ptr %concat.buf, i64 %cat.off72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst73, ptr align 1 %cat.seg58, i64 %cat.seg49, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum61
  store i8 0, ptr %concat.nul, align 1
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum61, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort69:                             ; preds = %cat.sum.len63
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %concat.tot.len68

str_ok83:                                         ; preds = %tag.slow_check88, %choice.exit
  %eq.rhs.len89 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len90 = and i64 %eq.rhs.len89, 281474976710655
  %eq.len91 = icmp eq i64 %eq.lhs.len81, %eq.rhs.len90
  br i1 %eq.len91, label %str.eq.then92, label %str.eq.else93

tag.slow_check88:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag82)
  br label %str_ok83

str.eq.then92:                                    ; preds = %str_ok83
  %eq.lhs.data95 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %eq.lhs.data96 = load ptr, ptr %eq.lhs.data95, align 8
  %eq.rhs.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp98 = call i32 @memcmp(ptr %eq.lhs.data96, ptr %eq.rhs.data97, i64 %eq.lhs.len81)
  %eq.cmp.zero99 = icmp eq i32 %eq.memcmp98, 0
  br label %str.eq.merge94

str.eq.else93:                                    ; preds = %str_ok83
  br label %str.eq.merge94

str.eq.merge94:                                   ; preds = %str.eq.else93, %str.eq.then92
  %str.eq.result100 = phi i1 [ %eq.cmp.zero99, %str.eq.then92 ], [ false, %str.eq.else93 ]
  %str.neq101 = xor i1 %str.eq.result100, true
  br i1 %str.neq101, label %choice.then102, label %choice.else103

choice.then102:                                   ; preds = %str.eq.merge94
  %var.load105 = load ptr, ptr %var.env, align 8
  %fld.gep106 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load105, i32 0, i32 8
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %cat.seg108 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 0
  %cat.seg109 = load i64, ptr %cat.seg108, align 8
  %cat.seg110 = and i64 %cat.seg109, 281474976710655
  %str.tag111 = lshr i64 %cat.seg109, 48
  %tag.immortal113 = icmp eq i64 %str.tag111, 0
  %active.gen114 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current115 = icmp eq i64 %str.tag111, %active.gen114
  %tag.fast.ok116 = or i1 %tag.immortal113, %tag.current115
  br i1 %tag.fast.ok116, label %str_ok112, label %tag.slow_check117

choice.else103:                                   ; preds = %str.eq.merge94
  %var.load164 = load ptr, ptr %var.name, align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %concat.tot.len149
  %choice.res165 = phi ptr [ %concat.str161, %concat.tot.len149 ], [ %var.load164, %choice.else103 ]
  store ptr %choice.res165, ptr %var.private_name, align 8
  %var.load166 = load ptr, ptr %var.env, align 8
  %fld.gep167 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load166, i32 0, i32 14
  %fld.load168 = load ptr, ptr %fld.gep167, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load168, i32 0, i32 0
  %arr.cycle.len169 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load168, i32 0, i32 1
  %arr.cycle.data170 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.177, align 8
  br label %loop.header.177

str_ok112:                                        ; preds = %tag.slow_check117, %choice.then102
  %cat.seg118 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 1
  %cat.seg119 = load ptr, ptr %cat.seg118, align 8
  %cat.lit.data120 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load121 = load ptr, ptr %var.name, align 8
  %cat.seg122 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 0
  %cat.seg123 = load i64, ptr %cat.seg122, align 8
  %cat.seg124 = and i64 %cat.seg123, 281474976710655
  %str.tag125 = lshr i64 %cat.seg123, 48
  %tag.immortal127 = icmp eq i64 %str.tag125, 0
  %active.gen128 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current129 = icmp eq i64 %str.tag125, %active.gen128
  %tag.fast.ok130 = or i1 %tag.immortal127, %tag.current129
  br i1 %tag.fast.ok130, label %str_ok126, label %tag.slow_check131

tag.slow_check117:                                ; preds = %choice.then102
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag111)
  br label %str_ok112

str_ok126:                                        ; preds = %tag.slow_check131, %str_ok112
  %cat.seg132 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 1
  %cat.seg133 = load ptr, ptr %cat.seg132, align 8
  %cat.sum.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg110, i64 3)
  %sum135 = extractvalue { i64, i1 } %cat.sum.len134, 0
  %ovf136 = extractvalue { i64, i1 } %cat.sum.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %cat.sum.len137

tag.slow_check131:                                ; preds = %str_ok112
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag125)
  br label %str_ok126

cat.sum.len137:                                   ; preds = %abort.dead139, %str_ok126
  %cat.sum.len140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum135, i64 %cat.seg124)
  %sum141 = extractvalue { i64, i1 } %cat.sum.len140, 0
  %ovf142 = extractvalue { i64, i1 } %cat.sum.len140, 1
  br i1 %ovf142, label %str_overflow_abort144, label %cat.sum.len143

str_overflow_abort138:                            ; preds = %str_ok126
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead139:                                    ; No predecessors!
  br label %cat.sum.len137

cat.sum.len143:                                   ; preds = %abort.dead145, %cat.sum.len137
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum141, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort144:                            ; preds = %cat.sum.len137
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead145:                                    ; No predecessors!
  br label %cat.sum.len143

concat.tot.len149:                                ; preds = %abort.dead151, %cat.sum.len143
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum147)
  %cat.dst154 = getelementptr i8, ptr %concat.buf153, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst154, ptr align 1 %cat.seg119, i64 %cat.seg110, i1 false)
  %cat.off155 = add i64 0, %cat.seg110
  %cat.dst156 = getelementptr i8, ptr %concat.buf153, i64 %cat.off155
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst156, ptr align 1 %cat.lit.data120, i64 3, i1 false)
  %cat.off157 = add i64 %cat.off155, 3
  %cat.dst158 = getelementptr i8, ptr %concat.buf153, i64 %cat.off157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst158, ptr align 1 %cat.seg133, i64 %cat.seg124, i1 false)
  %concat.nul159 = getelementptr i8, ptr %concat.buf153, i64 %sum141
  store i8 0, ptr %concat.nul159, align 1
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 16)
  %str.build.len.gep162 = getelementptr inbounds { i64, ptr }, ptr %concat.str161, i32 0, i32 0
  store i64 %sum141, ptr %str.build.len.gep162, align 8
  %str.build.data.gep163 = getelementptr inbounds { i64, ptr }, ptr %concat.str161, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep163, align 8
  br label %choice.exit104

str_overflow_abort150:                            ; preds = %cat.sum.len143
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead151:                                    ; No predecessors!
  br label %concat.tot.len149

loop.header.177:                                  ; preds = %loop.latch.177, %choice.exit104
  %counter.load = load i64, ptr %loop.idx.177, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len169
  br i1 %loop.cond, label %loop.body.177, label %loop.exit.nat.177

loop.body.177:                                    ; preds = %loop.header.177
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.177, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data170, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load171 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load171, label %choice.then172, label %choice.else173

loop.exit.nat.177:                                ; preds = %loop.header.177
  br label %loop.exit.177

loop.latch.177:                                   ; preds = %choice.exit355
  %step.val = load i64, ptr %loop.step.177, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.177, align 8
  br label %loop.header.177

loop.exit.177:                                    ; preds = %loop.exit.nat.177
  ret i1 false

choice.then172:                                   ; preds = %loop.body.177
  %var.load175 = load ptr, ptr %var.n, align 8
  %var.load176 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len177 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %eq.lhs.len178 = load i64, ptr %eq.lhs.len177, align 8
  %eq.lhs.len179 = and i64 %eq.lhs.len178, 281474976710655
  %eq.rhs.len180 = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 0
  %eq.rhs.len181 = load i64, ptr %eq.rhs.len180, align 8
  %eq.rhs.len182 = and i64 %eq.rhs.len181, 281474976710655
  %eq.len183 = icmp eq i64 %eq.lhs.len179, %eq.rhs.len182
  br i1 %eq.len183, label %str.eq.then184, label %str.eq.else185

choice.else173:                                   ; preds = %loop.body.177
  %var.load213 = load ptr, ptr %var.n, align 8
  %var.load214 = load ptr, ptr %var.name, align 8
  %eq.lhs.len215 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 0
  %eq.lhs.len216 = load i64, ptr %eq.lhs.len215, align 8
  %eq.lhs.len217 = and i64 %eq.lhs.len216, 281474976710655
  %eq.rhs.len218 = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 0
  %eq.rhs.len219 = load i64, ptr %eq.rhs.len218, align 8
  %eq.rhs.len220 = and i64 %eq.rhs.len219, 281474976710655
  %eq.len221 = icmp eq i64 %eq.lhs.len217, %eq.rhs.len220
  br i1 %eq.len221, label %str.eq.then222, label %str.eq.else223

choice.exit174:                                   ; preds = %or.181.exit, %or.178.exit
  %choice.res352 = phi i1 [ %or.178.phi, %or.178.exit ], [ %or.181.phi, %or.181.exit ]
  store i1 %choice.res352, ptr %var.match, align 1
  %var.load353 = load i1, ptr %var.match, align 1
  br i1 %var.load353, label %choice.then354, label %choice.exit355

str.eq.then184:                                   ; preds = %choice.then172
  %eq.lhs.data187 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 1
  %eq.lhs.data188 = load ptr, ptr %eq.lhs.data187, align 8
  %eq.rhs.data189 = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 1
  %eq.rhs.data190 = load ptr, ptr %eq.rhs.data189, align 8
  %eq.memcmp191 = call i32 @memcmp(ptr %eq.lhs.data188, ptr %eq.rhs.data190, i64 %eq.lhs.len179)
  %eq.cmp.zero192 = icmp eq i32 %eq.memcmp191, 0
  br label %str.eq.merge186

str.eq.else185:                                   ; preds = %choice.then172
  br label %str.eq.merge186

str.eq.merge186:                                  ; preds = %str.eq.else185, %str.eq.then184
  %str.eq.result193 = phi i1 [ %eq.cmp.zero192, %str.eq.then184 ], [ false, %str.eq.else185 ]
  br i1 %str.eq.result193, label %or.178.then, label %or.178.else

or.178.then:                                      ; preds = %str.eq.merge186
  br label %or.178.exit

or.178.else:                                      ; preds = %str.eq.merge186
  %var.load194 = load ptr, ptr %var.n, align 8
  %var.load195 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len196 = getelementptr inbounds { i64, ptr }, ptr %var.load194, i32 0, i32 0
  %eq.lhs.len197 = load i64, ptr %eq.lhs.len196, align 8
  %eq.lhs.len198 = and i64 %eq.lhs.len197, 281474976710655
  %eq.rhs.len199 = getelementptr inbounds { i64, ptr }, ptr %var.load195, i32 0, i32 0
  %eq.rhs.len200 = load i64, ptr %eq.rhs.len199, align 8
  %eq.rhs.len201 = and i64 %eq.rhs.len200, 281474976710655
  %eq.len202 = icmp eq i64 %eq.lhs.len198, %eq.rhs.len201
  br i1 %eq.len202, label %str.eq.then203, label %str.eq.else204

or.178.exit:                                      ; preds = %str.eq.merge205, %or.178.then
  %or.178.phi = phi i1 [ %str.eq.result193, %or.178.then ], [ %str.eq.result212, %str.eq.merge205 ]
  br label %choice.exit174

str.eq.then203:                                   ; preds = %or.178.else
  %eq.lhs.data206 = getelementptr inbounds { i64, ptr }, ptr %var.load194, i32 0, i32 1
  %eq.lhs.data207 = load ptr, ptr %eq.lhs.data206, align 8
  %eq.rhs.data208 = getelementptr inbounds { i64, ptr }, ptr %var.load195, i32 0, i32 1
  %eq.rhs.data209 = load ptr, ptr %eq.rhs.data208, align 8
  %eq.memcmp210 = call i32 @memcmp(ptr %eq.lhs.data207, ptr %eq.rhs.data209, i64 %eq.lhs.len198)
  %eq.cmp.zero211 = icmp eq i32 %eq.memcmp210, 0
  br label %str.eq.merge205

str.eq.else204:                                   ; preds = %or.178.else
  br label %str.eq.merge205

str.eq.merge205:                                  ; preds = %str.eq.else204, %str.eq.then203
  %str.eq.result212 = phi i1 [ %eq.cmp.zero211, %str.eq.then203 ], [ false, %str.eq.else204 ]
  br label %or.178.exit

str.eq.then222:                                   ; preds = %choice.else173
  %eq.lhs.data225 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 1
  %eq.lhs.data226 = load ptr, ptr %eq.lhs.data225, align 8
  %eq.rhs.data227 = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 1
  %eq.rhs.data228 = load ptr, ptr %eq.rhs.data227, align 8
  %eq.memcmp229 = call i32 @memcmp(ptr %eq.lhs.data226, ptr %eq.rhs.data228, i64 %eq.lhs.len217)
  %eq.cmp.zero230 = icmp eq i32 %eq.memcmp229, 0
  br label %str.eq.merge224

str.eq.else223:                                   ; preds = %choice.else173
  br label %str.eq.merge224

str.eq.merge224:                                  ; preds = %str.eq.else223, %str.eq.then222
  %str.eq.result231 = phi i1 [ %eq.cmp.zero230, %str.eq.then222 ], [ false, %str.eq.else223 ]
  br i1 %str.eq.result231, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %str.eq.merge224
  br label %or.179.exit

or.179.else:                                      ; preds = %str.eq.merge224
  %var.load232 = load ptr, ptr %var.n, align 8
  %var.load233 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len234 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 0
  %eq.lhs.len235 = load i64, ptr %eq.lhs.len234, align 8
  %eq.lhs.len236 = and i64 %eq.lhs.len235, 281474976710655
  %eq.rhs.len237 = getelementptr inbounds { i64, ptr }, ptr %var.load233, i32 0, i32 0
  %eq.rhs.len238 = load i64, ptr %eq.rhs.len237, align 8
  %eq.rhs.len239 = and i64 %eq.rhs.len238, 281474976710655
  %eq.len240 = icmp eq i64 %eq.lhs.len236, %eq.rhs.len239
  br i1 %eq.len240, label %str.eq.then241, label %str.eq.else242

or.179.exit:                                      ; preds = %str.eq.merge243, %or.179.then
  %or.179.phi = phi i1 [ %str.eq.result231, %or.179.then ], [ %str.eq.result250, %str.eq.merge243 ]
  br i1 %or.179.phi, label %or.180.then, label %or.180.else

str.eq.then241:                                   ; preds = %or.179.else
  %eq.lhs.data244 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 1
  %eq.lhs.data245 = load ptr, ptr %eq.lhs.data244, align 8
  %eq.rhs.data246 = getelementptr inbounds { i64, ptr }, ptr %var.load233, i32 0, i32 1
  %eq.rhs.data247 = load ptr, ptr %eq.rhs.data246, align 8
  %eq.memcmp248 = call i32 @memcmp(ptr %eq.lhs.data245, ptr %eq.rhs.data247, i64 %eq.lhs.len236)
  %eq.cmp.zero249 = icmp eq i32 %eq.memcmp248, 0
  br label %str.eq.merge243

str.eq.else242:                                   ; preds = %or.179.else
  br label %str.eq.merge243

str.eq.merge243:                                  ; preds = %str.eq.else242, %str.eq.then241
  %str.eq.result250 = phi i1 [ %eq.cmp.zero249, %str.eq.then241 ], [ false, %str.eq.else242 ]
  br label %or.179.exit

or.180.then:                                      ; preds = %or.179.exit
  br label %or.180.exit

or.180.else:                                      ; preds = %or.179.exit
  %var.load251 = load ptr, ptr %var.n, align 8
  %var.load252 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len253 = getelementptr inbounds { i64, ptr }, ptr %var.load251, i32 0, i32 0
  %eq.lhs.len254 = load i64, ptr %eq.lhs.len253, align 8
  %eq.lhs.len255 = and i64 %eq.lhs.len254, 281474976710655
  %eq.rhs.len256 = getelementptr inbounds { i64, ptr }, ptr %var.load252, i32 0, i32 0
  %eq.rhs.len257 = load i64, ptr %eq.rhs.len256, align 8
  %eq.rhs.len258 = and i64 %eq.rhs.len257, 281474976710655
  %eq.len259 = icmp eq i64 %eq.lhs.len255, %eq.rhs.len258
  br i1 %eq.len259, label %str.eq.then260, label %str.eq.else261

or.180.exit:                                      ; preds = %str.eq.merge262, %or.180.then
  %or.180.phi = phi i1 [ %or.179.phi, %or.180.then ], [ %str.eq.result269, %str.eq.merge262 ]
  br i1 %or.180.phi, label %or.181.then, label %or.181.else

str.eq.then260:                                   ; preds = %or.180.else
  %eq.lhs.data263 = getelementptr inbounds { i64, ptr }, ptr %var.load251, i32 0, i32 1
  %eq.lhs.data264 = load ptr, ptr %eq.lhs.data263, align 8
  %eq.rhs.data265 = getelementptr inbounds { i64, ptr }, ptr %var.load252, i32 0, i32 1
  %eq.rhs.data266 = load ptr, ptr %eq.rhs.data265, align 8
  %eq.memcmp267 = call i32 @memcmp(ptr %eq.lhs.data264, ptr %eq.rhs.data266, i64 %eq.lhs.len255)
  %eq.cmp.zero268 = icmp eq i32 %eq.memcmp267, 0
  br label %str.eq.merge262

str.eq.else261:                                   ; preds = %or.180.else
  br label %str.eq.merge262

str.eq.merge262:                                  ; preds = %str.eq.else261, %str.eq.then260
  %str.eq.result269 = phi i1 [ %eq.cmp.zero268, %str.eq.then260 ], [ false, %str.eq.else261 ]
  br label %or.180.exit

or.181.then:                                      ; preds = %or.180.exit
  br label %or.181.exit

or.181.else:                                      ; preds = %or.180.exit
  %var.load270 = load ptr, ptr %var.env, align 8
  %fld.gep271 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load270, i32 0, i32 8
  %fld.load272 = load ptr, ptr %fld.gep271, align 8
  %eq.lhs.len273 = getelementptr inbounds { i64, ptr }, ptr %fld.load272, i32 0, i32 0
  %eq.lhs.len274 = load i64, ptr %eq.lhs.len273, align 8
  %eq.lhs.len275 = and i64 %eq.lhs.len274, 281474976710655
  %eq.rhs.len276 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len277 = and i64 %eq.rhs.len276, 281474976710655
  %eq.len278 = icmp eq i64 %eq.lhs.len275, %eq.rhs.len277
  br i1 %eq.len278, label %str.eq.then279, label %str.eq.else280

or.181.exit:                                      ; preds = %and.182.exit, %or.181.then
  %or.181.phi = phi i1 [ %or.180.phi, %or.181.then ], [ %and.182.phi, %and.182.exit ]
  br label %choice.exit174

str.eq.then279:                                   ; preds = %or.181.else
  %eq.lhs.data282 = getelementptr inbounds { i64, ptr }, ptr %fld.load272, i32 0, i32 1
  %eq.lhs.data283 = load ptr, ptr %eq.lhs.data282, align 8
  %eq.rhs.data284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp285 = call i32 @memcmp(ptr %eq.lhs.data283, ptr %eq.rhs.data284, i64 %eq.lhs.len275)
  %eq.cmp.zero286 = icmp eq i32 %eq.memcmp285, 0
  br label %str.eq.merge281

str.eq.else280:                                   ; preds = %or.181.else
  br label %str.eq.merge281

str.eq.merge281:                                  ; preds = %str.eq.else280, %str.eq.then279
  %str.eq.result287 = phi i1 [ %eq.cmp.zero286, %str.eq.then279 ], [ false, %str.eq.else280 ]
  %str.neq288 = xor i1 %str.eq.result287, true
  br i1 %str.neq288, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %str.eq.merge281
  %var.load289 = load ptr, ptr %var.name, align 8
  %var.load290 = load ptr, ptr %var.env, align 8
  %fld.gep291 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load290, i32 0, i32 8
  %fld.load292 = load ptr, ptr %fld.gep291, align 8
  %cat.seg293 = getelementptr inbounds { i64, ptr }, ptr %fld.load292, i32 0, i32 0
  %cat.seg294 = load i64, ptr %cat.seg293, align 8
  %cat.seg295 = and i64 %cat.seg294, 281474976710655
  %cat.seg296 = getelementptr inbounds { i64, ptr }, ptr %fld.load292, i32 0, i32 1
  %cat.seg297 = load ptr, ptr %cat.seg296, align 8
  %cat.lit.data298 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load299 = load ptr, ptr %var.n, align 8
  %cat.seg300 = getelementptr inbounds { i64, ptr }, ptr %var.load299, i32 0, i32 0
  %cat.seg301 = load i64, ptr %cat.seg300, align 8
  %cat.seg302 = and i64 %cat.seg301, 281474976710655
  %cat.seg303 = getelementptr inbounds { i64, ptr }, ptr %var.load299, i32 0, i32 1
  %cat.seg304 = load ptr, ptr %cat.seg303, align 8
  %cat.sum.len305 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg295, i64 2)
  %sum306 = extractvalue { i64, i1 } %cat.sum.len305, 0
  %ovf307 = extractvalue { i64, i1 } %cat.sum.len305, 1
  br i1 %ovf307, label %str_overflow_abort309, label %cat.sum.len308

and.182.else:                                     ; preds = %str.eq.merge281
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %str.eq.merge344
  %and.182.phi = phi i1 [ %str.eq.result351, %str.eq.merge344 ], [ %str.neq288, %and.182.else ]
  br label %or.181.exit

cat.sum.len308:                                   ; preds = %abort.dead310, %and.182.then
  %cat.sum.len311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum306, i64 %cat.seg302)
  %sum312 = extractvalue { i64, i1 } %cat.sum.len311, 0
  %ovf313 = extractvalue { i64, i1 } %cat.sum.len311, 1
  br i1 %ovf313, label %str_overflow_abort315, label %cat.sum.len314

str_overflow_abort309:                            ; preds = %and.182.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead310:                                    ; No predecessors!
  br label %cat.sum.len308

cat.sum.len314:                                   ; preds = %abort.dead316, %cat.sum.len308
  %concat.tot.len317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum312, i64 1)
  %sum318 = extractvalue { i64, i1 } %concat.tot.len317, 0
  %ovf319 = extractvalue { i64, i1 } %concat.tot.len317, 1
  br i1 %ovf319, label %str_overflow_abort321, label %concat.tot.len320

str_overflow_abort315:                            ; preds = %cat.sum.len308
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead316:                                    ; No predecessors!
  br label %cat.sum.len314

concat.tot.len320:                                ; preds = %abort.dead322, %cat.sum.len314
  %arena.cur323 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 %sum318)
  %cat.dst325 = getelementptr i8, ptr %concat.buf324, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst325, ptr align 1 %cat.seg297, i64 %cat.seg295, i1 false)
  %cat.off326 = add i64 0, %cat.seg295
  %cat.dst327 = getelementptr i8, ptr %concat.buf324, i64 %cat.off326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst327, ptr align 1 %cat.lit.data298, i64 2, i1 false)
  %cat.off328 = add i64 %cat.off326, 2
  %cat.dst329 = getelementptr i8, ptr %concat.buf324, i64 %cat.off328
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst329, ptr align 1 %cat.seg304, i64 %cat.seg302, i1 false)
  %concat.nul330 = getelementptr i8, ptr %concat.buf324, i64 %sum312
  store i8 0, ptr %concat.nul330, align 1
  %arena.cur331 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 16)
  %str.build.len.gep333 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 0
  store i64 %sum312, ptr %str.build.len.gep333, align 8
  %str.build.data.gep334 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 1
  store ptr %concat.buf324, ptr %str.build.data.gep334, align 8
  %eq.lhs.len335 = getelementptr inbounds { i64, ptr }, ptr %var.load289, i32 0, i32 0
  %eq.lhs.len336 = load i64, ptr %eq.lhs.len335, align 8
  %eq.lhs.len337 = and i64 %eq.lhs.len336, 281474976710655
  %eq.rhs.len338 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 0
  %eq.rhs.len339 = load i64, ptr %eq.rhs.len338, align 8
  %eq.rhs.len340 = and i64 %eq.rhs.len339, 281474976710655
  %eq.len341 = icmp eq i64 %eq.lhs.len337, %eq.rhs.len340
  br i1 %eq.len341, label %str.eq.then342, label %str.eq.else343

str_overflow_abort321:                            ; preds = %cat.sum.len314
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead322:                                    ; No predecessors!
  br label %concat.tot.len320

str.eq.then342:                                   ; preds = %concat.tot.len320
  %eq.lhs.data345 = getelementptr inbounds { i64, ptr }, ptr %var.load289, i32 0, i32 1
  %eq.lhs.data346 = load ptr, ptr %eq.lhs.data345, align 8
  %eq.rhs.data347 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 1
  %eq.rhs.data348 = load ptr, ptr %eq.rhs.data347, align 8
  %eq.memcmp349 = call i32 @memcmp(ptr %eq.lhs.data346, ptr %eq.rhs.data348, i64 %eq.lhs.len337)
  %eq.cmp.zero350 = icmp eq i32 %eq.memcmp349, 0
  br label %str.eq.merge344

str.eq.else343:                                   ; preds = %concat.tot.len320
  br label %str.eq.merge344

str.eq.merge344:                                  ; preds = %str.eq.else343, %str.eq.then342
  %str.eq.result351 = phi i1 [ %eq.cmp.zero350, %str.eq.then342 ], [ false, %str.eq.else343 ]
  br label %and.182.exit

choice.then354:                                   ; preds = %choice.exit174
  ret i1 true

choice.exit355:                                   ; preds = %ret.dead, %choice.exit174
  br label %loop.latch.177

ret.dead:                                         ; No predecessors!
  br label %choice.exit355
}

define void @"type_env::enter_scope"(ptr %0) #0 {
entry:
  %var.new_idx = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %var.new_scope = alloca ptr, align 8
  %var.bnds = alloca ptr, align 8
  %var.parent_idx = alloca i64, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.parent_idx, align 8
  store ptr null, ptr %var.bnds, align 8
  %var.load1 = load ptr, ptr %var.bnds, align 8
  %a.load = load ptr, ptr %var.bnds, align 8
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
  store ptr %a.create2, ptr %var.bnds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.bnds, align 8
  %var.load4 = load i64, ptr %var.parent_idx, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 48)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 64)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 64)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 8)
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
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld11, align 8
  store ptr %rec.alloc, ptr %var.new_scope, align 8
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  store ptr %fld.load14, ptr %var.scs, align 8
  %var.load15 = load ptr, ptr %var.scs, align 8
  %a.load16 = load ptr, ptr %var.scs, align 8
  %a.null17 = icmp eq ptr %a.load16, null
  br i1 %a.null17, label %a.create18, label %a.after19

a.create18:                                       ; preds = %a.after
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  store ptr %a.create21, ptr %var.scs, align 8
  br label %a.after19

a.after19:                                        ; preds = %a.create18, %a.after
  %a.load227 = load ptr, ptr %var.scs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load227, i32 0, i32 0
  %a.len.query28 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query28, ptr %var.new_idx, align 8
  %var.load29 = load ptr, ptr %var.new_scope, align 8
  %a.load30 = load ptr, ptr %var.scs, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

a.create32:                                       ; preds = %a.after19
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %var.scs, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %a.after19
  %a.load241 = load ptr, ptr %var.scs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after33
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %a.len42 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 2
  %a.cap43 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len42, %a.cap43
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load241)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 1
  %a.cur.data44 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %a.cur.len45 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data44, i64 %a.cur.len45
  %slot.p2i = ptrtoint ptr %var.load29 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len45, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load46 = load ptr, ptr %var.env, align 8
  %var.load47 = load ptr, ptr %var.scs, align 8
  %a.load48 = load ptr, ptr %var.scs, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

a.create50:                                       ; preds = %a.store
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
  store ptr %a.create53, ptr %var.scs, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %a.store
  %a.load259 = load ptr, ptr %var.scs, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load46, i32 0, i32 0
  store ptr %a.load259, ptr %fld.gep60, align 8
  %var.load61 = load ptr, ptr %var.env, align 8
  %var.load62 = load i64, ptr %var.new_idx, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load61, i32 0, i32 1
  store i64 %var.load62, ptr %fld.gep63, align 8
  %var.load64 = load ptr, ptr %var.env, align 8
  %var.load65 = load ptr, ptr %var.env, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load65, i32 0, i32 2
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %addtmp = add i64 %fld.load67, 1
  %fld.gep68 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load64, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep68, align 8
  ret void
}

define void @"type_env::leave_scope"(ptr %0) #0 {
entry:
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit41, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 153, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 153, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.env, align 8
  %var.load31 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load31, i32 0, i32 1
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load30, i32 0, i32 1
  store i64 %fld.load33, ptr %fld.gep34, align 8
  %var.load35 = load ptr, ptr %var.env, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load35, i32 0, i32 2
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %cmptmp38 = icmp sgt i64 %fld.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

choice.then39:                                    ; preds = %choice.exit25
  %var.load42 = load ptr, ptr %var.env, align 8
  %var.load43 = load ptr, ptr %var.env, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %subtmp = sub i64 %fld.load45, 1
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load42, i32 0, i32 2
  store i64 %subtmp, ptr %fld.gep46, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %choice.exit25
  %var.load47 = load ptr, ptr %var.env, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load47, i32 0, i32 2
  store i64 0, ptr %fld.gep48, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  br label %choice.exit
}

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #0 {
entry:
  %var._366 = alloca ptr, align 8
  %var._365 = alloca ptr, align 8
  %var._364 = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.bnds = alloca ptr, align 8
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.is_mut = alloca i1, align 1
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  store i1 %4, ptr %var.is_mut, align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after397, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 165, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 165, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load30, i32 0, i32 0
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  store ptr %fld.load32, ptr %var.bnds, align 8
  %var.load33 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  store ptr %fld.load35, ptr %var.indices, align 8
  %var.load36 = load ptr, ptr %var.indices, align 8
  %var.load37 = load ptr, ptr %var.name, align 8
  %var.load38 = load ptr, ptr %var.bnds, align 8
  %a.load39 = load ptr, ptr %var.bnds, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

a.create41:                                       ; preds = %choice.exit25
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
  store ptr %a.create44, ptr %var.bnds, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.exit25
  %a.load250 = load ptr, ptr %var.bnds, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len.query51 = load i64, ptr %a.len.query, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap52 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys53 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals54 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states55 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data56 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len57 = load i64, ptr %mk.len, align 8
  %mk.len58 = and i64 %mk.len57, 281474976710655
  %str.tag = lshr i64 %mk.len57, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %a.after42
  %hash.str = call i64 @dva_hash_string(ptr %mk.data56, i64 %mk.len58)
  %m.capm1 = sub i64 %m.cap52, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

tag.slow_check:                                   ; preds = %a.after42
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb59 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap52
  %m.state.gep = getelementptr i8, ptr %m.states55, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb59, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb59, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys53, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen60 = load i64, ptr %mk.slen, align 8
  %mk.slen61 = and i64 %mk.slen60, 281474976710655
  %str.tag62 = lshr i64 %mk.slen60, 48
  %tag.immortal64 = icmp eq i64 %str.tag62, 0
  %active.gen65 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current66 = icmp eq i64 %str.tag62, %active.gen65
  %tag.fast.ok67 = or i1 %tag.immortal64, %tag.current66
  br i1 %tag.fast.ok67, label %str_ok63, label %tag.slow_check68

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals54, i64 %m.idx
  store i64 %a.len.query51, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb59, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap52, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done202, %m.overwrite
  %var.load278 = load ptr, ptr %var.name, align 8
  %var.load279 = load ptr, ptr %var.ut, align 8
  %var.load280 = load ptr, ptr %var.ti, align 8
  %var.load281 = load i1, ptr %var.is_mut, align 1
  %var.load282 = load ptr, ptr %var.env, align 8
  %fld.gep283 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load282, i32 0, i32 2
  %fld.load284 = load i64, ptr %fld.gep283, align 8
  %arena.cur285 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load278, ptr %rec.fld, align 8
  %rec.fld286 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load279, ptr %rec.fld286, align 8
  %rec.fld287 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load280, ptr %rec.fld287, align 8
  %rec.fld288 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load281, ptr %rec.fld288, align 1
  %rec.fld289 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld289, align 1
  %rec.fld290 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load284, ptr %rec.fld290, align 8
  %a.load291 = load ptr, ptr %var.bnds, align 8
  %a.null292 = icmp eq ptr %a.load291, null
  br i1 %a.null292, label %a.create293, label %a.after294

str_ok63:                                         ; preds = %tag.slow_check68, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen69 = load i64, ptr %mk.nlen, align 8
  %mk.nlen70 = and i64 %mk.nlen69, 281474976710655
  %str.tag71 = lshr i64 %mk.nlen69, 48
  %tag.immortal73 = icmp eq i64 %str.tag71, 0
  %active.gen74 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current75 = icmp eq i64 %str.tag71, %active.gen74
  %tag.fast.ok76 = or i1 %tag.immortal73, %tag.current75
  br i1 %tag.fast.ok76, label %str_ok72, label %tag.slow_check77

tag.slow_check68:                                 ; preds = %m.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag62)
  br label %str_ok63

str_ok72:                                         ; preds = %tag.slow_check77, %str_ok63
  %mk.lenseq = icmp eq i64 %mk.slen61, %mk.nlen70
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.slow_check77:                                 ; preds = %str_ok63
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag71)
  br label %str_ok72

mk.eq.then:                                       ; preds = %str_ok72
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata78 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata79 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata78, ptr %mk.ndata79, i64 %mk.nlen70)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok72
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.old.cap80 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.old.keys81 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.old.vals82 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.old.states83 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap80, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.live.cnt84 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt84, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap80
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap80
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %m.gv.bytes)
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb265 = icmp ne i64 %m.tomb59, -1
  %m.ins.idx266 = select i1 %m.use.tomb265, i64 %m.tomb59, i64 %m.idx
  %m.key.slot267 = getelementptr i64, ptr %m.keys53, i64 %m.ins.idx266
  store ptr %var.load37, ptr %m.key.slot267, align 8
  %m.val.slot268 = getelementptr i64, ptr %m.vals54, i64 %m.ins.idx266
  store i64 %a.len.query51, ptr %m.val.slot268, align 8
  %m.ins.state.slot269 = getelementptr i8, ptr %m.states55, i64 %m.ins.idx266
  store i8 1, ptr %m.ins.state.slot269, align 1
  %m.count270 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count271 = load i64, ptr %m.count270, align 8
  %m.count.next272 = add i64 %m.count271, 1
  %m.count.gep273 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next272, ptr %m.count.gep273, align 8
  %m.ins.tombs.p274 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs275 = load i64, ptr %m.ins.tombs.p274, align 8
  %m.tomb.dec276 = select i1 %m.use.tomb265, i64 1, i64 0
  %m.ins.tombs.next277 = sub i64 %m.ins.tombs275, %m.tomb.dec276
  store i64 %m.ins.tombs.next277, ptr %m.ins.tombs.p274, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap80
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states83, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done118, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap172 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap173 = load i64, ptr %m.cap172, align 8
  %m.keys174 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys175 = load ptr, ptr %m.keys174, align 8
  %m.vals176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals177 = load ptr, ptr %m.vals176, align 8
  %m.states178 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states179 = load ptr, ptr %m.states178, align 8
  %mk.data180 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data181 = load ptr, ptr %mk.data180, align 8
  %mk.len182 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len183 = load i64, ptr %mk.len182, align 8
  %mk.len184 = and i64 %mk.len183, 281474976710655
  %str.tag185 = lshr i64 %mk.len183, 48
  %tag.immortal187 = icmp eq i64 %str.tag185, 0
  %active.gen188 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current189 = icmp eq i64 %str.tag185, %active.gen188
  %tag.fast.ok190 = or i1 %tag.immortal187, %tag.current189
  br i1 %tag.fast.ok190, label %str_ok186, label %tag.slow_check191

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys81, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals82, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap88 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap89 = load i64, ptr %m.cap88, align 8
  %m.keys90 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys91 = load ptr, ptr %m.keys90, align 8
  %m.vals92 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals93 = load ptr, ptr %m.vals92, align 8
  %m.states94 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states95 = load ptr, ptr %m.states94, align 8
  %mk.data96 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data97 = load ptr, ptr %mk.data96, align 8
  %mk.len98 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len99 = load i64, ptr %mk.len98, align 8
  %mk.len100 = and i64 %mk.len99, 281474976710655
  %str.tag101 = lshr i64 %mk.len99, 48
  %tag.immortal103 = icmp eq i64 %str.tag101, 0
  %active.gen104 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current105 = icmp eq i64 %str.tag101, %active.gen104
  %tag.fast.ok106 = or i1 %tag.immortal103, %tag.current105
  br i1 %tag.fast.ok106, label %str_ok102, label %tag.slow_check107

str_ok102:                                        ; preds = %tag.slow_check107, %m.re.ins
  %hash.str108 = call i64 @dva_hash_string(ptr %mk.data97, i64 %mk.len100)
  %m.capm1109 = sub i64 %m.cap89, 1
  %m.idx0110 = and i64 %hash.str108, %m.capm1109
  br label %m.loop111

tag.slow_check107:                                ; preds = %m.re.ins
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag101)
  br label %str_ok102

m.loop111:                                        ; preds = %m.next116, %str_ok102
  %m.idx119 = phi i64 [ %m.idx0110, %str_ok102 ], [ %m.idx.next166, %m.next116 ]
  %m.tomb120 = phi i64 [ -1, %str_ok102 ], [ %m.next.tomb164, %m.next116 ]
  %m.probe121 = phi i64 [ 0, %str_ok102 ], [ %m.probe.next167, %m.next116 ]
  %m.reached.cap122 = icmp eq i64 %m.probe121, %m.cap89
  %m.state.gep123 = getelementptr i8, ptr %m.states95, i64 %m.idx119
  %m.state124 = load i8, ptr %m.state.gep123, align 1
  %m.is.empty125 = icmp eq i8 %m.state124, 0
  %m.stop126 = or i1 %m.is.empty125, %m.reached.cap122
  br i1 %m.stop126, label %m.empty117, label %m.check.tomb112

m.check.tomb112:                                  ; preds = %m.loop111
  %m.is.tomb127 = icmp eq i8 %m.state124, 2
  br i1 %m.is.tomb127, label %m.tomb113, label %m.found114

m.tomb113:                                        ; preds = %m.check.tomb112
  %m.has.tomb128 = icmp ne i64 %m.tomb120, -1
  %m.tomb.sel129 = select i1 %m.has.tomb128, i64 %m.tomb120, i64 %m.idx119
  br label %m.next116

m.found114:                                       ; preds = %m.check.tomb112
  %m.key.slot130 = getelementptr i64, ptr %m.keys91, i64 %m.idx119
  %mk.stored131 = load ptr, ptr %m.key.slot130, align 8
  %mk.slen132 = getelementptr inbounds { i64, ptr }, ptr %mk.stored131, i32 0, i32 0
  %mk.slen133 = load i64, ptr %mk.slen132, align 8
  %mk.slen134 = and i64 %mk.slen133, 281474976710655
  %str.tag135 = lshr i64 %mk.slen133, 48
  %tag.immortal137 = icmp eq i64 %str.tag135, 0
  %active.gen138 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current139 = icmp eq i64 %str.tag135, %active.gen138
  %tag.fast.ok140 = or i1 %tag.immortal137, %tag.current139
  br i1 %tag.fast.ok140, label %str_ok136, label %tag.slow_check141

m.overwrite115:                                   ; preds = %mk.eq.merge155
  %m.val.slot163 = getelementptr i64, ptr %m.vals93, i64 %m.idx119
  store i64 %m.re.val, ptr %m.val.slot163, align 8
  br label %m.done118

m.next116:                                        ; preds = %mk.eq.merge155, %m.tomb113
  %m.next.tomb164 = phi i64 [ %m.tomb.sel129, %m.tomb113 ], [ %m.tomb120, %mk.eq.merge155 ]
  %m.idx.add165 = add i64 %m.idx119, 1
  %m.idx.next166 = and i64 %m.idx.add165, %m.capm1109
  %m.probe.next167 = add i64 %m.probe121, 1
  br label %m.loop111

m.empty117:                                       ; preds = %m.loop111
  %m.use.tomb = icmp ne i64 %m.tomb120, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb120, i64 %m.idx119
  %m.key.slot168 = getelementptr i64, ptr %m.keys91, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot168, align 8
  %m.val.slot169 = getelementptr i64, ptr %m.vals93, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot169, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states95, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count170 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count170, 1
  %m.count.gep171 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep171, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done118

m.done118:                                        ; preds = %m.empty117, %m.overwrite115
  br label %m.re.cont

str_ok136:                                        ; preds = %tag.slow_check141, %m.found114
  %mk.nlen142 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen143 = load i64, ptr %mk.nlen142, align 8
  %mk.nlen144 = and i64 %mk.nlen143, 281474976710655
  %str.tag145 = lshr i64 %mk.nlen143, 48
  %tag.immortal147 = icmp eq i64 %str.tag145, 0
  %active.gen148 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current149 = icmp eq i64 %str.tag145, %active.gen148
  %tag.fast.ok150 = or i1 %tag.immortal147, %tag.current149
  br i1 %tag.fast.ok150, label %str_ok146, label %tag.slow_check151

tag.slow_check141:                                ; preds = %m.found114
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag135)
  br label %str_ok136

str_ok146:                                        ; preds = %tag.slow_check151, %str_ok136
  %mk.lenseq152 = icmp eq i64 %mk.slen134, %mk.nlen144
  br i1 %mk.lenseq152, label %mk.eq.then153, label %mk.eq.else154

tag.slow_check151:                                ; preds = %str_ok136
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag145)
  br label %str_ok146

mk.eq.then153:                                    ; preds = %str_ok146
  %mk.sdata156 = getelementptr inbounds { i64, ptr }, ptr %mk.stored131, i32 0, i32 1
  %mk.sdata157 = load ptr, ptr %mk.sdata156, align 8
  %mk.ndata158 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata159 = load ptr, ptr %mk.ndata158, align 8
  %mk.memcmp160 = call i32 @memcmp(ptr %mk.sdata157, ptr %mk.ndata159, i64 %mk.nlen144)
  %mk.cmpeq161 = icmp eq i32 %mk.memcmp160, 0
  br label %mk.eq.merge155

mk.eq.else154:                                    ; preds = %str_ok146
  br label %mk.eq.merge155

mk.eq.merge155:                                   ; preds = %mk.eq.else154, %mk.eq.then153
  %mk.eq162 = phi i1 [ %mk.cmpeq161, %mk.eq.then153 ], [ false, %mk.eq.else154 ]
  br i1 %mk.eq162, label %m.overwrite115, label %m.next116

str_ok186:                                        ; preds = %tag.slow_check191, %m.re.done
  %hash.str192 = call i64 @dva_hash_string(ptr %mk.data181, i64 %mk.len184)
  %m.capm1193 = sub i64 %m.cap173, 1
  %m.idx0194 = and i64 %hash.str192, %m.capm1193
  br label %m.loop195

tag.slow_check191:                                ; preds = %m.re.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag185)
  br label %str_ok186

m.loop195:                                        ; preds = %m.next200, %str_ok186
  %m.idx203 = phi i64 [ %m.idx0194, %str_ok186 ], [ %m.idx.next250, %m.next200 ]
  %m.tomb204 = phi i64 [ -1, %str_ok186 ], [ %m.next.tomb248, %m.next200 ]
  %m.probe205 = phi i64 [ 0, %str_ok186 ], [ %m.probe.next251, %m.next200 ]
  %m.reached.cap206 = icmp eq i64 %m.probe205, %m.cap173
  %m.state.gep207 = getelementptr i8, ptr %m.states179, i64 %m.idx203
  %m.state208 = load i8, ptr %m.state.gep207, align 1
  %m.is.empty209 = icmp eq i8 %m.state208, 0
  %m.stop210 = or i1 %m.is.empty209, %m.reached.cap206
  br i1 %m.stop210, label %m.empty201, label %m.check.tomb196

m.check.tomb196:                                  ; preds = %m.loop195
  %m.is.tomb211 = icmp eq i8 %m.state208, 2
  br i1 %m.is.tomb211, label %m.tomb197, label %m.found198

m.tomb197:                                        ; preds = %m.check.tomb196
  %m.has.tomb212 = icmp ne i64 %m.tomb204, -1
  %m.tomb.sel213 = select i1 %m.has.tomb212, i64 %m.tomb204, i64 %m.idx203
  br label %m.next200

m.found198:                                       ; preds = %m.check.tomb196
  %m.key.slot214 = getelementptr i64, ptr %m.keys175, i64 %m.idx203
  %mk.stored215 = load ptr, ptr %m.key.slot214, align 8
  %mk.slen216 = getelementptr inbounds { i64, ptr }, ptr %mk.stored215, i32 0, i32 0
  %mk.slen217 = load i64, ptr %mk.slen216, align 8
  %mk.slen218 = and i64 %mk.slen217, 281474976710655
  %str.tag219 = lshr i64 %mk.slen217, 48
  %tag.immortal221 = icmp eq i64 %str.tag219, 0
  %active.gen222 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current223 = icmp eq i64 %str.tag219, %active.gen222
  %tag.fast.ok224 = or i1 %tag.immortal221, %tag.current223
  br i1 %tag.fast.ok224, label %str_ok220, label %tag.slow_check225

m.overwrite199:                                   ; preds = %mk.eq.merge239
  %m.val.slot247 = getelementptr i64, ptr %m.vals177, i64 %m.idx203
  store i64 %a.len.query51, ptr %m.val.slot247, align 8
  br label %m.done202

m.next200:                                        ; preds = %mk.eq.merge239, %m.tomb197
  %m.next.tomb248 = phi i64 [ %m.tomb.sel213, %m.tomb197 ], [ %m.tomb204, %mk.eq.merge239 ]
  %m.idx.add249 = add i64 %m.idx203, 1
  %m.idx.next250 = and i64 %m.idx.add249, %m.capm1193
  %m.probe.next251 = add i64 %m.probe205, 1
  br label %m.loop195

m.empty201:                                       ; preds = %m.loop195
  %m.use.tomb252 = icmp ne i64 %m.tomb204, -1
  %m.ins.idx253 = select i1 %m.use.tomb252, i64 %m.tomb204, i64 %m.idx203
  %m.key.slot254 = getelementptr i64, ptr %m.keys175, i64 %m.ins.idx253
  store ptr %var.load37, ptr %m.key.slot254, align 8
  %m.val.slot255 = getelementptr i64, ptr %m.vals177, i64 %m.ins.idx253
  store i64 %a.len.query51, ptr %m.val.slot255, align 8
  %m.ins.state.slot256 = getelementptr i8, ptr %m.states179, i64 %m.ins.idx253
  store i8 1, ptr %m.ins.state.slot256, align 1
  %m.count257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count258 = load i64, ptr %m.count257, align 8
  %m.count.next259 = add i64 %m.count258, 1
  %m.count.gep260 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next259, ptr %m.count.gep260, align 8
  %m.ins.tombs.p261 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs262 = load i64, ptr %m.ins.tombs.p261, align 8
  %m.tomb.dec263 = select i1 %m.use.tomb252, i64 1, i64 0
  %m.ins.tombs.next264 = sub i64 %m.ins.tombs262, %m.tomb.dec263
  store i64 %m.ins.tombs.next264, ptr %m.ins.tombs.p261, align 8
  br label %m.done202

m.done202:                                        ; preds = %m.empty201, %m.overwrite199
  br label %m.done

str_ok220:                                        ; preds = %tag.slow_check225, %m.found198
  %mk.nlen226 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen227 = load i64, ptr %mk.nlen226, align 8
  %mk.nlen228 = and i64 %mk.nlen227, 281474976710655
  %str.tag229 = lshr i64 %mk.nlen227, 48
  %tag.immortal231 = icmp eq i64 %str.tag229, 0
  %active.gen232 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current233 = icmp eq i64 %str.tag229, %active.gen232
  %tag.fast.ok234 = or i1 %tag.immortal231, %tag.current233
  br i1 %tag.fast.ok234, label %str_ok230, label %tag.slow_check235

tag.slow_check225:                                ; preds = %m.found198
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag219)
  br label %str_ok220

str_ok230:                                        ; preds = %tag.slow_check235, %str_ok220
  %mk.lenseq236 = icmp eq i64 %mk.slen218, %mk.nlen228
  br i1 %mk.lenseq236, label %mk.eq.then237, label %mk.eq.else238

tag.slow_check235:                                ; preds = %str_ok220
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag229)
  br label %str_ok230

mk.eq.then237:                                    ; preds = %str_ok230
  %mk.sdata240 = getelementptr inbounds { i64, ptr }, ptr %mk.stored215, i32 0, i32 1
  %mk.sdata241 = load ptr, ptr %mk.sdata240, align 8
  %mk.ndata242 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata243 = load ptr, ptr %mk.ndata242, align 8
  %mk.memcmp244 = call i32 @memcmp(ptr %mk.sdata241, ptr %mk.ndata243, i64 %mk.nlen228)
  %mk.cmpeq245 = icmp eq i32 %mk.memcmp244, 0
  br label %mk.eq.merge239

mk.eq.else238:                                    ; preds = %str_ok230
  br label %mk.eq.merge239

mk.eq.merge239:                                   ; preds = %mk.eq.else238, %mk.eq.then237
  %mk.eq246 = phi i1 [ %mk.cmpeq245, %mk.eq.then237 ], [ false, %mk.eq.else238 ]
  br i1 %mk.eq246, label %m.overwrite199, label %m.next200

a.create293:                                      ; preds = %m.done
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
  store ptr %a.create296, ptr %var.bnds, align 8
  br label %a.after294

a.after294:                                       ; preds = %a.create293, %m.done
  %a.load2302 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after294
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2302, i32 0, i32 0
  %a.len303 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2302, i32 0, i32 2
  %a.cap304 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len303, %a.cap304
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2302)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2302, i32 0, i32 1
  %a.cur.data305 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2302, i32 0, i32 0
  %a.cur.len306 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data305, i64 %a.cur.len306
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len306, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2302, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load307 = load ptr, ptr %var.cur_sc, align 8
  %var.load308 = load ptr, ptr %var.bnds, align 8
  %a.load309 = load ptr, ptr %var.bnds, align 8
  %a.null310 = icmp eq ptr %a.load309, null
  br i1 %a.null310, label %a.create311, label %a.after312

a.create311:                                      ; preds = %a.store
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 24)
  %arena.cur315 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 128)
  %a.len.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 0
  store i64 0, ptr %a.len.gep317, align 8
  %a.data.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 1
  store ptr %a.buf316, ptr %a.data.gep318, align 8
  %a.cap.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 2
  store i64 16, ptr %a.cap.gep319, align 8
  store ptr %a.create314, ptr %var.bnds, align 8
  br label %a.after312

a.after312:                                       ; preds = %a.create311, %a.store
  %a.load2320 = load ptr, ptr %var.bnds, align 8
  %fld.gep321 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load307, i32 0, i32 0
  store ptr %a.load2320, ptr %fld.gep321, align 8
  %var.load322 = load ptr, ptr %var.scs, align 8
  %a.load323 = load ptr, ptr %var.scs, align 8
  %a.null324 = icmp eq ptr %a.load323, null
  br i1 %a.null324, label %a.create325, label %a.after326

a.create325:                                      ; preds = %a.after312
  %arena.cur327 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 24)
  %arena.cur329 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 128)
  %a.len.gep331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create328, i32 0, i32 0
  store i64 0, ptr %a.len.gep331, align 8
  %a.data.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create328, i32 0, i32 1
  store ptr %a.buf330, ptr %a.data.gep332, align 8
  %a.cap.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create328, i32 0, i32 2
  store i64 16, ptr %a.cap.gep333, align 8
  store ptr %a.create328, ptr %var.scs, align 8
  br label %a.after326

a.after326:                                       ; preds = %a.create325, %a.after312
  %a.load2334 = load ptr, ptr %var.scs, align 8
  %var.load335 = load i64, ptr %var.cur_idx, align 8
  %var.load336 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i337 = ptrtoint ptr %var.load336 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2334, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after326
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 0
  %a.wr.len338 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load335, 0
  %a.wr.lt = icmp slt i64 %var.load335, %a.wr.len338
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 1
  %a.wr.data339 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep340 = getelementptr i64, ptr %a.wr.data339, i64 %var.load335
  store i64 %slot.p2i337, ptr %a.elem.gep340, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after326
  %arena.cur341 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc342 = call ptr @dva_arena_alloc(ptr %arena.cur341, i64 56)
  %err.code.gep343 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 0
  store i64 4011, ptr %err.code.gep343, align 8
  %err.msg.gep344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep344, align 8
  %err.file.gep345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep345, align 8
  %err.line.gep346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 3
  store i64 0, ptr %err.line.gep346, align 8
  %err.col.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 4
  store i64 0, ptr %err.col.gep347, align 8
  %err.ctx.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc342, i32 0, i32 5
  %err.ctx0.gep349 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep348, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep349, align 8
  %err.ctx1.gep350 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep348, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep350, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 56)
  %err.code.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 0
  store i64 4011, ptr %err.code.gep353, align 8
  %err.msg.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep354, align 8
  %err.file.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep355, align 8
  %err.line.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 3
  store i64 0, ptr %err.line.gep356, align 8
  %err.col.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 4
  store i64 0, ptr %err.col.gep357, align 8
  %err.ctx.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 5
  %err.ctx0.gep359 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 0
  store i64 %var.load335, ptr %err.ctx0.gep359, align 8
  %err.ctx1.gep360 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 1
  store i64 %a.wr.len338, ptr %err.ctx1.gep360, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc342, %a.wr.err.null ], [ %err.alloc352, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then361, label %choice.else362

choice.then361:                                   ; preds = %a.wr.done
  br label %choice.exit363

choice.else362:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._364, align 8
  store ptr %a.wr.niche, ptr %var._365, align 8
  store ptr %a.wr.niche, ptr %var._366, align 8
  %err.code.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep367, align 8
  %err.msg.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep368, align 8
  %err.file.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep369, align 8
  %err.line.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep370, align 8
  %err.col.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep371, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len372 = load i64, ptr %err.msg.len, align 8
  %err.msg.len373 = and i64 %err.msg.len372, 281474976710655
  %str.tag374 = lshr i64 %err.msg.len372, 48
  %tag.immortal376 = icmp eq i64 %str.tag374, 0
  %active.gen377 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current378 = icmp eq i64 %str.tag374, %active.gen377
  %tag.fast.ok379 = or i1 %tag.immortal376, %tag.current378
  br i1 %tag.fast.ok379, label %str_ok375, label %tag.slow_check380

choice.exit363:                                   ; preds = %err.abort, %choice.then361
  %var.load392 = load ptr, ptr %var.env, align 8
  %var.load393 = load ptr, ptr %var.scs, align 8
  %a.load394 = load ptr, ptr %var.scs, align 8
  %a.null395 = icmp eq ptr %a.load394, null
  br i1 %a.null395, label %a.create396, label %a.after397

str_ok375:                                        ; preds = %tag.slow_check380, %choice.else362
  %err.msg.len32 = trunc i64 %err.msg.len373 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data381 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len382 = load i64, ptr %err.file.len, align 8
  %err.file.len383 = and i64 %err.file.len382, 281474976710655
  %str.tag384 = lshr i64 %err.file.len382, 48
  %tag.immortal386 = icmp eq i64 %str.tag384, 0
  %active.gen387 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current388 = icmp eq i64 %str.tag384, %active.gen387
  %tag.fast.ok389 = or i1 %tag.immortal386, %tag.current388
  br i1 %tag.fast.ok389, label %str_ok385, label %tag.slow_check390

tag.slow_check380:                                ; preds = %choice.else362
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag374)
  br label %str_ok375

str_ok385:                                        ; preds = %tag.slow_check390, %str_ok375
  %err.file.len32 = trunc i64 %err.file.len383 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data391 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check390:                                ; preds = %str_ok375
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag384)
  br label %str_ok385

err.thread:                                       ; preds = %str_ok385
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok385
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data381, i32 %err.file.len32, ptr %err.file.data391, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit363

a.create396:                                      ; preds = %choice.exit363
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
  store ptr %a.create399, ptr %var.scs, align 8
  br label %a.after397

a.after397:                                       ; preds = %a.create396, %choice.exit363
  %a.load2405 = load ptr, ptr %var.scs, align 8
  %fld.gep406 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load392, i32 0, i32 0
  store ptr %a.load2405, ptr %fld.gep406, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #0 {
entry:
  %var._303 = alloca ptr, align 8
  %var._302 = alloca ptr, align 8
  %var._301 = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after334, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 180, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 180, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load30, i32 0, i32 2
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  store ptr %fld.load32, ptr %var.indices, align 8
  %var.load33 = load ptr, ptr %var.indices, align 8
  %var.load34 = load ptr, ptr %var.name, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap35 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys36 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals37 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states38 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data39 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len40 = load i64, ptr %mk.len, align 8
  %mk.len41 = and i64 %mk.len40, 281474976710655
  %str.tag = lshr i64 %mk.len40, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit25
  %hash.str = call i64 @dva_hash_string(ptr %mk.data39, i64 %mk.len41)
  %m.capm1 = sub i64 %m.cap35, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

tag.slow_check:                                   ; preds = %choice.exit25
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb42 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap35
  %m.state.gep = getelementptr i8, ptr %m.states38, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb42, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb42, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys36, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen43 = load i64, ptr %mk.slen, align 8
  %mk.slen44 = and i64 %mk.slen43, 281474976710655
  %str.tag45 = lshr i64 %mk.slen43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  %active.gen48 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current49 = icmp eq i64 %str.tag45, %active.gen48
  %tag.fast.ok50 = or i1 %tag.immortal47, %tag.current49
  br i1 %tag.fast.ok50, label %str_ok46, label %tag.slow_check51

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals37, i64 %m.idx
  store i64 -1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb42, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap35, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done185, %m.overwrite
  %var.load261 = load ptr, ptr %var.scs, align 8
  %a.load262 = load ptr, ptr %var.scs, align 8
  %a.null263 = icmp eq ptr %a.load262, null
  br i1 %a.null263, label %a.create264, label %a.after265

str_ok46:                                         ; preds = %tag.slow_check51, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen52 = load i64, ptr %mk.nlen, align 8
  %mk.nlen53 = and i64 %mk.nlen52, 281474976710655
  %str.tag54 = lshr i64 %mk.nlen52, 48
  %tag.immortal56 = icmp eq i64 %str.tag54, 0
  %active.gen57 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current58 = icmp eq i64 %str.tag54, %active.gen57
  %tag.fast.ok59 = or i1 %tag.immortal56, %tag.current58
  br i1 %tag.fast.ok59, label %str_ok55, label %tag.slow_check60

tag.slow_check51:                                 ; preds = %m.found
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag45)
  br label %str_ok46

str_ok55:                                         ; preds = %tag.slow_check60, %str_ok46
  %mk.lenseq = icmp eq i64 %mk.slen44, %mk.nlen53
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.slow_check60:                                 ; preds = %str_ok46
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag54)
  br label %str_ok55

mk.eq.then:                                       ; preds = %str_ok55
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata61 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata62 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata61, ptr %mk.ndata62, i64 %mk.nlen53)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok55
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.old.cap63 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.old.keys64 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.old.vals65 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.old.states66 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap63, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.live.cnt67 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt67, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap63
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap63
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %m.gv.bytes)
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb248 = icmp ne i64 %m.tomb42, -1
  %m.ins.idx249 = select i1 %m.use.tomb248, i64 %m.tomb42, i64 %m.idx
  %m.key.slot250 = getelementptr i64, ptr %m.keys36, i64 %m.ins.idx249
  store ptr %var.load34, ptr %m.key.slot250, align 8
  %m.val.slot251 = getelementptr i64, ptr %m.vals37, i64 %m.ins.idx249
  store i64 -1, ptr %m.val.slot251, align 8
  %m.ins.state.slot252 = getelementptr i8, ptr %m.states38, i64 %m.ins.idx249
  store i8 1, ptr %m.ins.state.slot252, align 1
  %m.count253 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count254 = load i64, ptr %m.count253, align 8
  %m.count.next255 = add i64 %m.count254, 1
  %m.count.gep256 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next255, ptr %m.count.gep256, align 8
  %m.ins.tombs.p257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs258 = load i64, ptr %m.ins.tombs.p257, align 8
  %m.tomb.dec259 = select i1 %m.use.tomb248, i64 1, i64 0
  %m.ins.tombs.next260 = sub i64 %m.ins.tombs258, %m.tomb.dec259
  store i64 %m.ins.tombs.next260, ptr %m.ins.tombs.p257, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap63
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states66, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done101, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap156 = load i64, ptr %m.cap155, align 8
  %m.keys157 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys158 = load ptr, ptr %m.keys157, align 8
  %m.vals159 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals160 = load ptr, ptr %m.vals159, align 8
  %m.states161 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states162 = load ptr, ptr %m.states161, align 8
  %mk.data163 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data164 = load ptr, ptr %mk.data163, align 8
  %mk.len165 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len166 = load i64, ptr %mk.len165, align 8
  %mk.len167 = and i64 %mk.len166, 281474976710655
  %str.tag168 = lshr i64 %mk.len166, 48
  %tag.immortal170 = icmp eq i64 %str.tag168, 0
  %active.gen171 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current172 = icmp eq i64 %str.tag168, %active.gen171
  %tag.fast.ok173 = or i1 %tag.immortal170, %tag.current172
  br i1 %tag.fast.ok173, label %str_ok169, label %tag.slow_check174

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys64, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals65, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap71 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap72 = load i64, ptr %m.cap71, align 8
  %m.keys73 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys74 = load ptr, ptr %m.keys73, align 8
  %m.vals75 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals76 = load ptr, ptr %m.vals75, align 8
  %m.states77 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states78 = load ptr, ptr %m.states77, align 8
  %mk.data79 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data80 = load ptr, ptr %mk.data79, align 8
  %mk.len81 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len82 = load i64, ptr %mk.len81, align 8
  %mk.len83 = and i64 %mk.len82, 281474976710655
  %str.tag84 = lshr i64 %mk.len82, 48
  %tag.immortal86 = icmp eq i64 %str.tag84, 0
  %active.gen87 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current88 = icmp eq i64 %str.tag84, %active.gen87
  %tag.fast.ok89 = or i1 %tag.immortal86, %tag.current88
  br i1 %tag.fast.ok89, label %str_ok85, label %tag.slow_check90

str_ok85:                                         ; preds = %tag.slow_check90, %m.re.ins
  %hash.str91 = call i64 @dva_hash_string(ptr %mk.data80, i64 %mk.len83)
  %m.capm192 = sub i64 %m.cap72, 1
  %m.idx093 = and i64 %hash.str91, %m.capm192
  br label %m.loop94

tag.slow_check90:                                 ; preds = %m.re.ins
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag84)
  br label %str_ok85

m.loop94:                                         ; preds = %m.next99, %str_ok85
  %m.idx102 = phi i64 [ %m.idx093, %str_ok85 ], [ %m.idx.next149, %m.next99 ]
  %m.tomb103 = phi i64 [ -1, %str_ok85 ], [ %m.next.tomb147, %m.next99 ]
  %m.probe104 = phi i64 [ 0, %str_ok85 ], [ %m.probe.next150, %m.next99 ]
  %m.reached.cap105 = icmp eq i64 %m.probe104, %m.cap72
  %m.state.gep106 = getelementptr i8, ptr %m.states78, i64 %m.idx102
  %m.state107 = load i8, ptr %m.state.gep106, align 1
  %m.is.empty108 = icmp eq i8 %m.state107, 0
  %m.stop109 = or i1 %m.is.empty108, %m.reached.cap105
  br i1 %m.stop109, label %m.empty100, label %m.check.tomb95

m.check.tomb95:                                   ; preds = %m.loop94
  %m.is.tomb110 = icmp eq i8 %m.state107, 2
  br i1 %m.is.tomb110, label %m.tomb96, label %m.found97

m.tomb96:                                         ; preds = %m.check.tomb95
  %m.has.tomb111 = icmp ne i64 %m.tomb103, -1
  %m.tomb.sel112 = select i1 %m.has.tomb111, i64 %m.tomb103, i64 %m.idx102
  br label %m.next99

m.found97:                                        ; preds = %m.check.tomb95
  %m.key.slot113 = getelementptr i64, ptr %m.keys74, i64 %m.idx102
  %mk.stored114 = load ptr, ptr %m.key.slot113, align 8
  %mk.slen115 = getelementptr inbounds { i64, ptr }, ptr %mk.stored114, i32 0, i32 0
  %mk.slen116 = load i64, ptr %mk.slen115, align 8
  %mk.slen117 = and i64 %mk.slen116, 281474976710655
  %str.tag118 = lshr i64 %mk.slen116, 48
  %tag.immortal120 = icmp eq i64 %str.tag118, 0
  %active.gen121 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current122 = icmp eq i64 %str.tag118, %active.gen121
  %tag.fast.ok123 = or i1 %tag.immortal120, %tag.current122
  br i1 %tag.fast.ok123, label %str_ok119, label %tag.slow_check124

m.overwrite98:                                    ; preds = %mk.eq.merge138
  %m.val.slot146 = getelementptr i64, ptr %m.vals76, i64 %m.idx102
  store i64 %m.re.val, ptr %m.val.slot146, align 8
  br label %m.done101

m.next99:                                         ; preds = %mk.eq.merge138, %m.tomb96
  %m.next.tomb147 = phi i64 [ %m.tomb.sel112, %m.tomb96 ], [ %m.tomb103, %mk.eq.merge138 ]
  %m.idx.add148 = add i64 %m.idx102, 1
  %m.idx.next149 = and i64 %m.idx.add148, %m.capm192
  %m.probe.next150 = add i64 %m.probe104, 1
  br label %m.loop94

m.empty100:                                       ; preds = %m.loop94
  %m.use.tomb = icmp ne i64 %m.tomb103, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb103, i64 %m.idx102
  %m.key.slot151 = getelementptr i64, ptr %m.keys74, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot151, align 8
  %m.val.slot152 = getelementptr i64, ptr %m.vals76, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot152, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states78, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count153 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count153, 1
  %m.count.gep154 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep154, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done101

m.done101:                                        ; preds = %m.empty100, %m.overwrite98
  br label %m.re.cont

str_ok119:                                        ; preds = %tag.slow_check124, %m.found97
  %mk.nlen125 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen126 = load i64, ptr %mk.nlen125, align 8
  %mk.nlen127 = and i64 %mk.nlen126, 281474976710655
  %str.tag128 = lshr i64 %mk.nlen126, 48
  %tag.immortal130 = icmp eq i64 %str.tag128, 0
  %active.gen131 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current132 = icmp eq i64 %str.tag128, %active.gen131
  %tag.fast.ok133 = or i1 %tag.immortal130, %tag.current132
  br i1 %tag.fast.ok133, label %str_ok129, label %tag.slow_check134

tag.slow_check124:                                ; preds = %m.found97
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag118)
  br label %str_ok119

str_ok129:                                        ; preds = %tag.slow_check134, %str_ok119
  %mk.lenseq135 = icmp eq i64 %mk.slen117, %mk.nlen127
  br i1 %mk.lenseq135, label %mk.eq.then136, label %mk.eq.else137

tag.slow_check134:                                ; preds = %str_ok119
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag128)
  br label %str_ok129

mk.eq.then136:                                    ; preds = %str_ok129
  %mk.sdata139 = getelementptr inbounds { i64, ptr }, ptr %mk.stored114, i32 0, i32 1
  %mk.sdata140 = load ptr, ptr %mk.sdata139, align 8
  %mk.ndata141 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata142 = load ptr, ptr %mk.ndata141, align 8
  %mk.memcmp143 = call i32 @memcmp(ptr %mk.sdata140, ptr %mk.ndata142, i64 %mk.nlen127)
  %mk.cmpeq144 = icmp eq i32 %mk.memcmp143, 0
  br label %mk.eq.merge138

mk.eq.else137:                                    ; preds = %str_ok129
  br label %mk.eq.merge138

mk.eq.merge138:                                   ; preds = %mk.eq.else137, %mk.eq.then136
  %mk.eq145 = phi i1 [ %mk.cmpeq144, %mk.eq.then136 ], [ false, %mk.eq.else137 ]
  br i1 %mk.eq145, label %m.overwrite98, label %m.next99

str_ok169:                                        ; preds = %tag.slow_check174, %m.re.done
  %hash.str175 = call i64 @dva_hash_string(ptr %mk.data164, i64 %mk.len167)
  %m.capm1176 = sub i64 %m.cap156, 1
  %m.idx0177 = and i64 %hash.str175, %m.capm1176
  br label %m.loop178

tag.slow_check174:                                ; preds = %m.re.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag168)
  br label %str_ok169

m.loop178:                                        ; preds = %m.next183, %str_ok169
  %m.idx186 = phi i64 [ %m.idx0177, %str_ok169 ], [ %m.idx.next233, %m.next183 ]
  %m.tomb187 = phi i64 [ -1, %str_ok169 ], [ %m.next.tomb231, %m.next183 ]
  %m.probe188 = phi i64 [ 0, %str_ok169 ], [ %m.probe.next234, %m.next183 ]
  %m.reached.cap189 = icmp eq i64 %m.probe188, %m.cap156
  %m.state.gep190 = getelementptr i8, ptr %m.states162, i64 %m.idx186
  %m.state191 = load i8, ptr %m.state.gep190, align 1
  %m.is.empty192 = icmp eq i8 %m.state191, 0
  %m.stop193 = or i1 %m.is.empty192, %m.reached.cap189
  br i1 %m.stop193, label %m.empty184, label %m.check.tomb179

m.check.tomb179:                                  ; preds = %m.loop178
  %m.is.tomb194 = icmp eq i8 %m.state191, 2
  br i1 %m.is.tomb194, label %m.tomb180, label %m.found181

m.tomb180:                                        ; preds = %m.check.tomb179
  %m.has.tomb195 = icmp ne i64 %m.tomb187, -1
  %m.tomb.sel196 = select i1 %m.has.tomb195, i64 %m.tomb187, i64 %m.idx186
  br label %m.next183

m.found181:                                       ; preds = %m.check.tomb179
  %m.key.slot197 = getelementptr i64, ptr %m.keys158, i64 %m.idx186
  %mk.stored198 = load ptr, ptr %m.key.slot197, align 8
  %mk.slen199 = getelementptr inbounds { i64, ptr }, ptr %mk.stored198, i32 0, i32 0
  %mk.slen200 = load i64, ptr %mk.slen199, align 8
  %mk.slen201 = and i64 %mk.slen200, 281474976710655
  %str.tag202 = lshr i64 %mk.slen200, 48
  %tag.immortal204 = icmp eq i64 %str.tag202, 0
  %active.gen205 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current206 = icmp eq i64 %str.tag202, %active.gen205
  %tag.fast.ok207 = or i1 %tag.immortal204, %tag.current206
  br i1 %tag.fast.ok207, label %str_ok203, label %tag.slow_check208

m.overwrite182:                                   ; preds = %mk.eq.merge222
  %m.val.slot230 = getelementptr i64, ptr %m.vals160, i64 %m.idx186
  store i64 -1, ptr %m.val.slot230, align 8
  br label %m.done185

m.next183:                                        ; preds = %mk.eq.merge222, %m.tomb180
  %m.next.tomb231 = phi i64 [ %m.tomb.sel196, %m.tomb180 ], [ %m.tomb187, %mk.eq.merge222 ]
  %m.idx.add232 = add i64 %m.idx186, 1
  %m.idx.next233 = and i64 %m.idx.add232, %m.capm1176
  %m.probe.next234 = add i64 %m.probe188, 1
  br label %m.loop178

m.empty184:                                       ; preds = %m.loop178
  %m.use.tomb235 = icmp ne i64 %m.tomb187, -1
  %m.ins.idx236 = select i1 %m.use.tomb235, i64 %m.tomb187, i64 %m.idx186
  %m.key.slot237 = getelementptr i64, ptr %m.keys158, i64 %m.ins.idx236
  store ptr %var.load34, ptr %m.key.slot237, align 8
  %m.val.slot238 = getelementptr i64, ptr %m.vals160, i64 %m.ins.idx236
  store i64 -1, ptr %m.val.slot238, align 8
  %m.ins.state.slot239 = getelementptr i8, ptr %m.states162, i64 %m.ins.idx236
  store i8 1, ptr %m.ins.state.slot239, align 1
  %m.count240 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count241 = load i64, ptr %m.count240, align 8
  %m.count.next242 = add i64 %m.count241, 1
  %m.count.gep243 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next242, ptr %m.count.gep243, align 8
  %m.ins.tombs.p244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs245 = load i64, ptr %m.ins.tombs.p244, align 8
  %m.tomb.dec246 = select i1 %m.use.tomb235, i64 1, i64 0
  %m.ins.tombs.next247 = sub i64 %m.ins.tombs245, %m.tomb.dec246
  store i64 %m.ins.tombs.next247, ptr %m.ins.tombs.p244, align 8
  br label %m.done185

m.done185:                                        ; preds = %m.empty184, %m.overwrite182
  br label %m.done

str_ok203:                                        ; preds = %tag.slow_check208, %m.found181
  %mk.nlen209 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen210 = load i64, ptr %mk.nlen209, align 8
  %mk.nlen211 = and i64 %mk.nlen210, 281474976710655
  %str.tag212 = lshr i64 %mk.nlen210, 48
  %tag.immortal214 = icmp eq i64 %str.tag212, 0
  %active.gen215 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current216 = icmp eq i64 %str.tag212, %active.gen215
  %tag.fast.ok217 = or i1 %tag.immortal214, %tag.current216
  br i1 %tag.fast.ok217, label %str_ok213, label %tag.slow_check218

tag.slow_check208:                                ; preds = %m.found181
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag202)
  br label %str_ok203

str_ok213:                                        ; preds = %tag.slow_check218, %str_ok203
  %mk.lenseq219 = icmp eq i64 %mk.slen201, %mk.nlen211
  br i1 %mk.lenseq219, label %mk.eq.then220, label %mk.eq.else221

tag.slow_check218:                                ; preds = %str_ok203
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag212)
  br label %str_ok213

mk.eq.then220:                                    ; preds = %str_ok213
  %mk.sdata223 = getelementptr inbounds { i64, ptr }, ptr %mk.stored198, i32 0, i32 1
  %mk.sdata224 = load ptr, ptr %mk.sdata223, align 8
  %mk.ndata225 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata226 = load ptr, ptr %mk.ndata225, align 8
  %mk.memcmp227 = call i32 @memcmp(ptr %mk.sdata224, ptr %mk.ndata226, i64 %mk.nlen211)
  %mk.cmpeq228 = icmp eq i32 %mk.memcmp227, 0
  br label %mk.eq.merge222

mk.eq.else221:                                    ; preds = %str_ok213
  br label %mk.eq.merge222

mk.eq.merge222:                                   ; preds = %mk.eq.else221, %mk.eq.then220
  %mk.eq229 = phi i1 [ %mk.cmpeq228, %mk.eq.then220 ], [ false, %mk.eq.else221 ]
  br i1 %mk.eq229, label %m.overwrite182, label %m.next183

a.create264:                                      ; preds = %m.done
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 24)
  %arena.cur268 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 128)
  %a.len.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 0
  store i64 0, ptr %a.len.gep270, align 8
  %a.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 1
  store ptr %a.buf269, ptr %a.data.gep271, align 8
  %a.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep272, align 8
  store ptr %a.create267, ptr %var.scs, align 8
  br label %a.after265

a.after265:                                       ; preds = %a.create264, %m.done
  %a.load2273 = load ptr, ptr %var.scs, align 8
  %var.load274 = load i64, ptr %var.cur_idx, align 8
  %var.load275 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i = ptrtoint ptr %var.load275 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2273, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after265
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 0
  %a.wr.len276 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load274, 0
  %a.wr.lt = icmp slt i64 %var.load274, %a.wr.len276
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 1
  %a.wr.data277 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data277, i64 %var.load274
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after265
  %arena.cur278 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc279 = call ptr @dva_arena_alloc(ptr %arena.cur278, i64 56)
  %err.code.gep280 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 0
  store i64 4011, ptr %err.code.gep280, align 8
  %err.msg.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep281, align 8
  %err.file.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep282, align 8
  %err.line.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 3
  store i64 0, ptr %err.line.gep283, align 8
  %err.col.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 4
  store i64 0, ptr %err.col.gep284, align 8
  %err.ctx.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc279, i32 0, i32 5
  %err.ctx0.gep286 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep285, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep286, align 8
  %err.ctx1.gep287 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep285, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep287, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur288 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 56)
  %err.code.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 0
  store i64 4011, ptr %err.code.gep290, align 8
  %err.msg.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep291, align 8
  %err.file.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep292, align 8
  %err.line.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 3
  store i64 0, ptr %err.line.gep293, align 8
  %err.col.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 4
  store i64 0, ptr %err.col.gep294, align 8
  %err.ctx.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 5
  %err.ctx0.gep296 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep295, i32 0, i32 0
  store i64 %var.load274, ptr %err.ctx0.gep296, align 8
  %err.ctx1.gep297 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep295, i32 0, i32 1
  store i64 %a.wr.len276, ptr %err.ctx1.gep297, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc279, %a.wr.err.null ], [ %err.alloc289, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then298, label %choice.else299

choice.then298:                                   ; preds = %a.wr.done
  br label %choice.exit300

choice.else299:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._301, align 8
  store ptr %a.wr.niche, ptr %var._302, align 8
  store ptr %a.wr.niche, ptr %var._303, align 8
  %err.code.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep304, align 8
  %err.msg.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep305, align 8
  %err.file.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep306, align 8
  %err.line.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep307, align 8
  %err.col.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep308, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len309 = load i64, ptr %err.msg.len, align 8
  %err.msg.len310 = and i64 %err.msg.len309, 281474976710655
  %str.tag311 = lshr i64 %err.msg.len309, 48
  %tag.immortal313 = icmp eq i64 %str.tag311, 0
  %active.gen314 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current315 = icmp eq i64 %str.tag311, %active.gen314
  %tag.fast.ok316 = or i1 %tag.immortal313, %tag.current315
  br i1 %tag.fast.ok316, label %str_ok312, label %tag.slow_check317

choice.exit300:                                   ; preds = %err.abort, %choice.then298
  %var.load329 = load ptr, ptr %var.env, align 8
  %var.load330 = load ptr, ptr %var.scs, align 8
  %a.load331 = load ptr, ptr %var.scs, align 8
  %a.null332 = icmp eq ptr %a.load331, null
  br i1 %a.null332, label %a.create333, label %a.after334

str_ok312:                                        ; preds = %tag.slow_check317, %choice.else299
  %err.msg.len32 = trunc i64 %err.msg.len310 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data318 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len319 = load i64, ptr %err.file.len, align 8
  %err.file.len320 = and i64 %err.file.len319, 281474976710655
  %str.tag321 = lshr i64 %err.file.len319, 48
  %tag.immortal323 = icmp eq i64 %str.tag321, 0
  %active.gen324 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current325 = icmp eq i64 %str.tag321, %active.gen324
  %tag.fast.ok326 = or i1 %tag.immortal323, %tag.current325
  br i1 %tag.fast.ok326, label %str_ok322, label %tag.slow_check327

tag.slow_check317:                                ; preds = %choice.else299
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag311)
  br label %str_ok312

str_ok322:                                        ; preds = %tag.slow_check327, %str_ok312
  %err.file.len32 = trunc i64 %err.file.len320 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data328 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check327:                                ; preds = %str_ok312
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag321)
  br label %str_ok322

err.thread:                                       ; preds = %str_ok322
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok322
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data318, i32 %err.file.len32, ptr %err.file.data328, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit300

a.create333:                                      ; preds = %choice.exit300
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
  store ptr %a.create336, ptr %var.scs, align 8
  br label %a.after334

a.after334:                                       ; preds = %a.create333, %choice.exit300
  %a.load2342 = load ptr, ptr %var.scs, align 8
  %fld.gep343 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load329, i32 0, i32 0
  store ptr %a.load2342, ptr %fld.gep343, align 8
  br label %choice.exit
}

define void @"type_env::bind_global"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.gls = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.gls, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ut, align 8
  %var.load3 = load ptr, ptr %var.ti, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load3, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 true, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld8, align 8
  %a.load = load ptr, ptr %var.gls, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.gls, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.gls, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load16 = load ptr, ptr %var.env, align 8
  %var.load17 = load ptr, ptr %var.gls, align 8
  %a.load18 = load ptr, ptr %var.gls, align 8
  %a.null19 = icmp eq ptr %a.load18, null
  br i1 %a.null19, label %a.create20, label %a.after21

a.create20:                                       ; preds = %a.store
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 128)
  %a.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 0
  store i64 0, ptr %a.len.gep26, align 8
  %a.data.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 1
  store ptr %a.buf25, ptr %a.data.gep27, align 8
  %a.cap.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 2
  store i64 16, ptr %a.cap.gep28, align 8
  store ptr %a.create23, ptr %var.gls, align 8
  br label %a.after21

a.after21:                                        ; preds = %a.create20, %a.store
  %a.load229 = load ptr, ptr %var.gls, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load16, i32 0, i32 3
  store ptr %a.load229, ptr %fld.gep30, align 8
  ret void
}

define i64 @"type_env::decl_module_find"(ptr %0, i64 %1, i64 %2) #0 {
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
  br i1 %cmptmp, label %and.183.then, label %and.183.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.183.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.183.else:                                     ; preds = %str_ok
  br label %and.183.exit

and.183.exit:                                     ; preds = %and.183.else, %idx_ok
  %and.183.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.183.else ]
  br i1 %and.183.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.183.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.183.exit

idx_oob:                                          ; preds = %and.183.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.183.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.183.exit
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
  br i1 %cmptmp24, label %and.184.then, label %and.184.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.184.then:                                     ; preds = %idx_ok18
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

and.184.else:                                     ; preds = %idx_ok18
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %idx_ok34
  %and.184.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.184.else ]
  br i1 %and.184.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.184.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.184.exit

idx_oob35:                                        ; preds = %and.184.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.184.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.184.exit
  %var.load48 = load ptr, ptr %var.name, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %addtmp50 = add i64 %var.load49, 1
  %var.load51 = load i64, ptr %var.last, align 8
  %call.res52 = call i64 @"type_env::decl_module_find"(ptr %var.load48, i64 %addtmp50, i64 %var.load51)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i64 [ %call.res, %choice.then41 ], [ %call.res52, %choice.else42 ]
  br label %choice.exit
}

define { i64, ptr } @"type_env::decl_module"(ptr %0, i64 %1) #0 {
entry:
  %var.last = alloca i64, align 8
  %var.ignored = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.ignored, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load, i64 0, i64 -1)
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
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define void @"type_env::set_current_module"(ptr %0, ptr %1) #0 {
entry:
  %var.mod_name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.mod_name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.mod_name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  store ptr %var.load1, ptr %fld.gep, align 8
  ret void
}

define ptr @"type_env::lookup_local_exact"(ptr %0, ptr %1) #0 {
entry:
  %var.cur_sc = alloca ptr, align 8
  %var._30 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit26, %choice.then
  %choice.res34 = phi ptr [ null, %choice.then ], [ %call.res33, %choice.exit26 ]
  ret ptr %choice.res34

a.create:                                         ; preds = %choice.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 226, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 226, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit26

choice.else25:                                    ; preds = %a.rd.done
  %ram.pay28 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr29 = inttoptr i64 %ram.pay28 to ptr
  store ptr %pay.ptr29, ptr %var._30, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else25 ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load31 = load ptr, ptr %var.cur_sc, align 8
  %var.load32 = load ptr, ptr %var.name, align 8
  %call.res33 = call ptr @"type_env::lookup_scope"(ptr %var.load31, ptr %var.load32)
  br label %choice.exit
}

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #0 {
entry:
  %var._165 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._161 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._93 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.indices = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.scope = alloca ptr, align 8
  store ptr %0, ptr %var.scope, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.scope, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load, i32 0, i32 2
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

choice.exit:                                      ; preds = %choice.else, %choice.exit124
  %choice.res168 = phi ptr [ %choice.res167, %choice.exit124 ], [ null, %choice.else ]
  ret ptr %choice.res168

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
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %cmptmp = icmp slt i64 %var.load121, 0
  br i1 %cmptmp, label %choice.then122, label %choice.else123

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

choice.then122:                                   ; preds = %choice.exit90
  br label %choice.exit124

choice.else123:                                   ; preds = %choice.exit90
  %var.load125 = load ptr, ptr %var.scope, align 8
  %fld.gep126 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load125, i32 0, i32 0
  %fld.load127 = load ptr, ptr %fld.gep126, align 8
  %var.load128 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load127, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit124:                                   ; preds = %choice.exit158, %choice.then122
  %choice.res167 = phi ptr [ null, %choice.then122 ], [ %choice.res166, %choice.exit158 ]
  br label %choice.exit

a.rd.check:                                       ; preds = %choice.else123
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load127, i32 0, i32 0
  %a.rd.len129 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load128, 0
  %a.rd.lt = icmp slt i64 %var.load128, %a.rd.len129
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load127, i32 0, i32 1
  %a.rd.data130 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data130, i64 %var.load128
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.else123
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 56)
  %err.code.gep133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 0
  store i64 4011, ptr %err.code.gep133, align 8
  %err.msg.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep134, align 8
  %err.file.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep135, align 8
  %err.line.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 3
  store i64 0, ptr %err.line.gep136, align 8
  %err.col.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 4
  store i64 0, ptr %err.col.gep137, align 8
  %err.ctx.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 5
  %err.ctx0.gep139 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep139, align 8
  %err.ctx1.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep140, align 8
  %err.p2i141 = ptrtoint ptr %err.alloc132 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 4011, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %err.ctx0.gep150 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %var.load128, ptr %err.ctx0.gep150, align 8
  %err.ctx1.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %a.rd.len129, ptr %err.ctx1.gep151, align 8
  %err.p2i152 = ptrtoint ptr %err.alloc143 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i141, %a.rd.err.null ], [ %err.p2i152, %a.rd.err.oob ]
  %ram.tag153 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay154 = insertvalue { i1, i64 } %ram.tag153, i64 %a.rd.pay, 1
  %ram.tag155 = extractvalue { i1, i64 } %ram.pay154, 0
  br i1 %ram.tag155, label %choice.then156, label %choice.else157

choice.then156:                                   ; preds = %a.rd.done
  %ram.pay159 = extractvalue { i1, i64 } %ram.pay154, 1
  %pay.ptr160 = inttoptr i64 %ram.pay159 to ptr
  store ptr %pay.ptr160, ptr %var._161, align 8
  store ptr %pay.ptr160, ptr %var.binding, align 8
  %var.load162 = load ptr, ptr %var.binding, align 8
  br label %choice.exit158

choice.else157:                                   ; preds = %a.rd.done
  %ram.pay163 = extractvalue { i1, i64 } %ram.pay154, 1
  %pay.ptr164 = inttoptr i64 %ram.pay163 to ptr
  store ptr %pay.ptr164, ptr %var._165, align 8
  br label %choice.exit158

choice.exit158:                                   ; preds = %choice.else157, %choice.then156
  %choice.res166 = phi ptr [ %var.load162, %choice.then156 ], [ null, %choice.else157 ]
  br label %choice.exit124
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #0 {
entry:
  %var.p229 = alloca ptr, align 8
  %var._228 = alloca ptr, align 8
  %var.pub222 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._127 = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp eq i64 %fld.load, 0
  br i1 %cmptmp, label %and.186.then, label %and.186.else

and.186.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load1, i32 0, i32 8
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

and.186.else:                                     ; preds = %entry
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %and.187.then, label %and.187.else

str_ok:                                           ; preds = %tag.slow_check, %and.186.then
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %and.186.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.186.exit

and.187.then:                                     ; preds = %and.186.exit
  %var.load8 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load8, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.187.exit

and.187.else:                                     ; preds = %and.186.exit
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %and.187.then
  %and.187.phi = phi i1 [ %nottmp, %and.187.then ], [ %and.186.phi, %and.187.else ]
  br i1 %and.187.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.187.exit
  %var.load9 = load ptr, ptr %var.env, align 8
  %var.load10 = load ptr, ptr %var.env, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load10, i32 0, i32 8
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 0
  %cat.seg13 = load i64, ptr %cat.seg, align 8
  %cat.seg14 = and i64 %cat.seg13, 281474976710655
  %str.tag15 = lshr i64 %cat.seg13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current19 = icmp eq i64 %str.tag15, %active.gen18
  %tag.fast.ok20 = or i1 %tag.immortal17, %tag.current19
  br i1 %tag.fast.ok20, label %str_ok16, label %tag.slow_check21

choice.exit:                                      ; preds = %ret.dead119, %and.187.exit
  %var.load120 = load ptr, ptr %var.env, align 8
  %var.load121 = load ptr, ptr %var.name, align 8
  %call.res122 = call ptr @"type_env::lookup_local_exact"(ptr %var.load120, ptr %var.load121)
  store ptr %call.res122, ptr %var.exact, align 8
  %var.load123 = load ptr, ptr %var.exact, align 8
  %niche.ne.null124 = icmp ne ptr %var.load123, null
  br i1 %niche.ne.null124, label %choice.then125, label %choice.else

str_ok16:                                         ; preds = %tag.slow_check21, %choice.then
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 1
  %cat.seg23 = load ptr, ptr %cat.seg22, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load24 = load ptr, ptr %var.name, align 8
  %cat.seg25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %cat.seg26 = load i64, ptr %cat.seg25, align 8
  %cat.seg27 = and i64 %cat.seg26, 281474976710655
  %str.tag28 = lshr i64 %cat.seg26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current32 = icmp eq i64 %str.tag28, %active.gen31
  %tag.fast.ok33 = or i1 %tag.immortal30, %tag.current32
  br i1 %tag.fast.ok33, label %str_ok29, label %tag.slow_check34

tag.slow_check21:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag15)
  br label %str_ok16

str_ok29:                                         ; preds = %tag.slow_check34, %str_ok16
  %cat.seg35 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %cat.seg36 = load ptr, ptr %cat.seg35, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg14, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len37

tag.slow_check34:                                 ; preds = %str_ok16
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag28)
  br label %str_ok29

cat.sum.len37:                                    ; preds = %abort.dead, %str_ok29
  %cat.sum.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg27)
  %sum39 = extractvalue { i64, i1 } %cat.sum.len38, 0
  %ovf40 = extractvalue { i64, i1 } %cat.sum.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %cat.sum.len41

str_overflow_abort:                               ; preds = %str_ok29
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len37

cat.sum.len41:                                    ; preds = %abort.dead43, %cat.sum.len37
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum39, i64 1)
  %sum44 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf45 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.tot.len46

str_overflow_abort42:                             ; preds = %cat.sum.len37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %cat.sum.len41

concat.tot.len46:                                 ; preds = %abort.dead48, %cat.sum.len41
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum44)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg23, i64 %cat.seg14, i1 false)
  %cat.off = add i64 0, %cat.seg14
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off50 = add i64 %cat.off, 2
  %cat.dst51 = getelementptr i8, ptr %concat.buf, i64 %cat.off50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst51, ptr align 1 %cat.seg36, i64 %cat.seg27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum39
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum39, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res53 = call ptr @"type_env::lookup_local_exact"(ptr %var.load9, ptr %concat.str)
  store ptr %call.res53, ptr %var.pub, align 8
  %var.load54 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load54, null
  br i1 %niche.ne.null, label %choice.then55, label %choice.exit56

str_overflow_abort47:                             ; preds = %cat.sum.len41
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %concat.tot.len46

choice.then55:                                    ; preds = %concat.tot.len46
  store ptr %var.load54, ptr %var._, align 8
  store ptr %var.load54, ptr %var.p, align 8
  %var.load57 = load ptr, ptr %var.p, align 8
  ret ptr %var.load57

choice.exit56:                                    ; preds = %ret.dead, %concat.tot.len46
  %var.load58 = load ptr, ptr %var.env, align 8
  %var.load59 = load ptr, ptr %var.env, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load59, i32 0, i32 8
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %cat.seg62 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 0
  %cat.seg63 = load i64, ptr %cat.seg62, align 8
  %cat.seg64 = and i64 %cat.seg63, 281474976710655
  %str.tag65 = lshr i64 %cat.seg63, 48
  %tag.immortal67 = icmp eq i64 %str.tag65, 0
  %active.gen68 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current69 = icmp eq i64 %str.tag65, %active.gen68
  %tag.fast.ok70 = or i1 %tag.immortal67, %tag.current69
  br i1 %tag.fast.ok70, label %str_ok66, label %tag.slow_check71

ret.dead:                                         ; No predecessors!
  br label %choice.exit56

str_ok66:                                         ; preds = %tag.slow_check71, %choice.exit56
  %cat.seg72 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 1
  %cat.seg73 = load ptr, ptr %cat.seg72, align 8
  %cat.lit.data74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load75 = load ptr, ptr %var.name, align 8
  %cat.seg76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 0
  %cat.seg77 = load i64, ptr %cat.seg76, align 8
  %cat.seg78 = and i64 %cat.seg77, 281474976710655
  %str.tag79 = lshr i64 %cat.seg77, 48
  %tag.immortal81 = icmp eq i64 %str.tag79, 0
  %active.gen82 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current83 = icmp eq i64 %str.tag79, %active.gen82
  %tag.fast.ok84 = or i1 %tag.immortal81, %tag.current83
  br i1 %tag.fast.ok84, label %str_ok80, label %tag.slow_check85

tag.slow_check71:                                 ; preds = %choice.exit56
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag65)
  br label %str_ok66

str_ok80:                                         ; preds = %tag.slow_check85, %str_ok66
  %cat.seg86 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 1
  %cat.seg87 = load ptr, ptr %cat.seg86, align 8
  %cat.sum.len88 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg64, i64 3)
  %sum89 = extractvalue { i64, i1 } %cat.sum.len88, 0
  %ovf90 = extractvalue { i64, i1 } %cat.sum.len88, 1
  br i1 %ovf90, label %str_overflow_abort92, label %cat.sum.len91

tag.slow_check85:                                 ; preds = %str_ok66
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag79)
  br label %str_ok80

cat.sum.len91:                                    ; preds = %abort.dead93, %str_ok80
  %cat.sum.len94 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum89, i64 %cat.seg78)
  %sum95 = extractvalue { i64, i1 } %cat.sum.len94, 0
  %ovf96 = extractvalue { i64, i1 } %cat.sum.len94, 1
  br i1 %ovf96, label %str_overflow_abort98, label %cat.sum.len97

str_overflow_abort92:                             ; preds = %str_ok80
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %cat.sum.len91

cat.sum.len97:                                    ; preds = %abort.dead99, %cat.sum.len91
  %concat.tot.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum95, i64 1)
  %sum101 = extractvalue { i64, i1 } %concat.tot.len100, 0
  %ovf102 = extractvalue { i64, i1 } %concat.tot.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %concat.tot.len103

str_overflow_abort98:                             ; preds = %cat.sum.len91
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead99:                                     ; No predecessors!
  br label %cat.sum.len97

concat.tot.len103:                                ; preds = %abort.dead105, %cat.sum.len97
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum101)
  %cat.dst108 = getelementptr i8, ptr %concat.buf107, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst108, ptr align 1 %cat.seg73, i64 %cat.seg64, i1 false)
  %cat.off109 = add i64 0, %cat.seg64
  %cat.dst110 = getelementptr i8, ptr %concat.buf107, i64 %cat.off109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst110, ptr align 1 %cat.lit.data74, i64 3, i1 false)
  %cat.off111 = add i64 %cat.off109, 3
  %cat.dst112 = getelementptr i8, ptr %concat.buf107, i64 %cat.off111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst112, ptr align 1 %cat.seg87, i64 %cat.seg78, i1 false)
  %concat.nul113 = getelementptr i8, ptr %concat.buf107, i64 %sum95
  store i8 0, ptr %concat.nul113, align 1
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  %str.build.len.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  store i64 %sum95, ptr %str.build.len.gep116, align 8
  %str.build.data.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  store ptr %concat.buf107, ptr %str.build.data.gep117, align 8
  %call.res118 = call ptr @"type_env::lookup_local_exact"(ptr %var.load58, ptr %concat.str115)
  ret ptr %call.res118

str_overflow_abort104:                            ; preds = %cat.sum.len97
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %concat.tot.len103

ret.dead119:                                      ; No predecessors!
  br label %choice.exit

choice.then125:                                   ; preds = %choice.exit
  store ptr %var.load123, ptr %var._127, align 8
  store ptr %var.load123, ptr %var.b, align 8
  %var.load128 = load ptr, ptr %var.b, align 8
  br label %choice.exit126

choice.else:                                      ; preds = %choice.exit
  %var.load129 = load ptr, ptr %var.env, align 8
  %fld.gep130 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load129, i32 0, i32 8
  %fld.load131 = load ptr, ptr %fld.gep130, align 8
  %eq.lhs.len132 = getelementptr inbounds { i64, ptr }, ptr %fld.load131, i32 0, i32 0
  %eq.lhs.len133 = load i64, ptr %eq.lhs.len132, align 8
  %eq.lhs.len134 = and i64 %eq.lhs.len133, 281474976710655
  %str.tag135 = lshr i64 %eq.lhs.len133, 48
  %tag.immortal137 = icmp eq i64 %str.tag135, 0
  %active.gen138 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current139 = icmp eq i64 %str.tag135, %active.gen138
  %tag.fast.ok140 = or i1 %tag.immortal137, %tag.current139
  br i1 %tag.fast.ok140, label %str_ok136, label %tag.slow_check141

choice.exit126:                                   ; preds = %choice.exit160, %choice.then125
  %choice.res293 = phi ptr [ %var.load128, %choice.then125 ], [ %choice.res292, %choice.exit160 ]
  ret ptr %choice.res293

str_ok136:                                        ; preds = %tag.slow_check141, %choice.else
  %eq.rhs.len142 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len143 = and i64 %eq.rhs.len142, 281474976710655
  %eq.len144 = icmp eq i64 %eq.lhs.len134, %eq.rhs.len143
  br i1 %eq.len144, label %str.eq.then145, label %str.eq.else146

tag.slow_check141:                                ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag135)
  br label %str_ok136

str.eq.then145:                                   ; preds = %str_ok136
  %eq.lhs.data148 = getelementptr inbounds { i64, ptr }, ptr %fld.load131, i32 0, i32 1
  %eq.lhs.data149 = load ptr, ptr %eq.lhs.data148, align 8
  %eq.rhs.data150 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp151 = call i32 @memcmp(ptr %eq.lhs.data149, ptr %eq.rhs.data150, i64 %eq.lhs.len134)
  %eq.cmp.zero152 = icmp eq i32 %eq.memcmp151, 0
  br label %str.eq.merge147

str.eq.else146:                                   ; preds = %str_ok136
  br label %str.eq.merge147

str.eq.merge147:                                  ; preds = %str.eq.else146, %str.eq.then145
  %str.eq.result153 = phi i1 [ %eq.cmp.zero152, %str.eq.then145 ], [ false, %str.eq.else146 ]
  %str.neq154 = xor i1 %str.eq.result153, true
  br i1 %str.neq154, label %and.188.then, label %and.188.else

and.188.then:                                     ; preds = %str.eq.merge147
  %var.load155 = load ptr, ptr %var.name, align 8
  %call.res156 = call i1 @"type_env::name_is_qualified"(ptr %var.load155, i64 0)
  %nottmp157 = xor i1 %call.res156, true
  br label %and.188.exit

and.188.else:                                     ; preds = %str.eq.merge147
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %and.188.then
  %and.188.phi = phi i1 [ %nottmp157, %and.188.then ], [ %str.neq154, %and.188.else ]
  br i1 %and.188.phi, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %and.188.exit
  %var.load161 = load ptr, ptr %var.env, align 8
  %var.load162 = load ptr, ptr %var.env, align 8
  %fld.gep163 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load162, i32 0, i32 8
  %fld.load164 = load ptr, ptr %fld.gep163, align 8
  %cat.seg165 = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 0
  %cat.seg166 = load i64, ptr %cat.seg165, align 8
  %cat.seg167 = and i64 %cat.seg166, 281474976710655
  %str.tag168 = lshr i64 %cat.seg166, 48
  %tag.immortal170 = icmp eq i64 %str.tag168, 0
  %active.gen171 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current172 = icmp eq i64 %str.tag168, %active.gen171
  %tag.fast.ok173 = or i1 %tag.immortal170, %tag.current172
  br i1 %tag.fast.ok173, label %str_ok169, label %tag.slow_check174

choice.else159:                                   ; preds = %and.188.exit
  br label %choice.exit160

choice.exit160:                                   ; preds = %choice.else159, %choice.exit227
  %choice.res292 = phi ptr [ %choice.res, %choice.exit227 ], [ null, %choice.else159 ]
  br label %choice.exit126

str_ok169:                                        ; preds = %tag.slow_check174, %choice.then158
  %cat.seg175 = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 1
  %cat.seg176 = load ptr, ptr %cat.seg175, align 8
  %cat.lit.data177 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load178 = load ptr, ptr %var.name, align 8
  %cat.seg179 = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 0
  %cat.seg180 = load i64, ptr %cat.seg179, align 8
  %cat.seg181 = and i64 %cat.seg180, 281474976710655
  %str.tag182 = lshr i64 %cat.seg180, 48
  %tag.immortal184 = icmp eq i64 %str.tag182, 0
  %active.gen185 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current186 = icmp eq i64 %str.tag182, %active.gen185
  %tag.fast.ok187 = or i1 %tag.immortal184, %tag.current186
  br i1 %tag.fast.ok187, label %str_ok183, label %tag.slow_check188

tag.slow_check174:                                ; preds = %choice.then158
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag168)
  br label %str_ok169

str_ok183:                                        ; preds = %tag.slow_check188, %str_ok169
  %cat.seg189 = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 1
  %cat.seg190 = load ptr, ptr %cat.seg189, align 8
  %cat.sum.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg167, i64 2)
  %sum192 = extractvalue { i64, i1 } %cat.sum.len191, 0
  %ovf193 = extractvalue { i64, i1 } %cat.sum.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %cat.sum.len194

tag.slow_check188:                                ; preds = %str_ok169
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag182)
  br label %str_ok183

cat.sum.len194:                                   ; preds = %abort.dead196, %str_ok183
  %cat.sum.len197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum192, i64 %cat.seg181)
  %sum198 = extractvalue { i64, i1 } %cat.sum.len197, 0
  %ovf199 = extractvalue { i64, i1 } %cat.sum.len197, 1
  br i1 %ovf199, label %str_overflow_abort201, label %cat.sum.len200

str_overflow_abort195:                            ; preds = %str_ok183
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead196:                                    ; No predecessors!
  br label %cat.sum.len194

cat.sum.len200:                                   ; preds = %abort.dead202, %cat.sum.len194
  %concat.tot.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum198, i64 1)
  %sum204 = extractvalue { i64, i1 } %concat.tot.len203, 0
  %ovf205 = extractvalue { i64, i1 } %concat.tot.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %concat.tot.len206

str_overflow_abort201:                            ; preds = %cat.sum.len194
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead202:                                    ; No predecessors!
  br label %cat.sum.len200

concat.tot.len206:                                ; preds = %abort.dead208, %cat.sum.len200
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum204)
  %cat.dst211 = getelementptr i8, ptr %concat.buf210, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst211, ptr align 1 %cat.seg176, i64 %cat.seg167, i1 false)
  %cat.off212 = add i64 0, %cat.seg167
  %cat.dst213 = getelementptr i8, ptr %concat.buf210, i64 %cat.off212
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst213, ptr align 1 %cat.lit.data177, i64 2, i1 false)
  %cat.off214 = add i64 %cat.off212, 2
  %cat.dst215 = getelementptr i8, ptr %concat.buf210, i64 %cat.off214
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst215, ptr align 1 %cat.seg190, i64 %cat.seg181, i1 false)
  %concat.nul216 = getelementptr i8, ptr %concat.buf210, i64 %sum198
  store i8 0, ptr %concat.nul216, align 1
  %arena.cur217 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 16)
  %str.build.len.gep219 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 0
  store i64 %sum198, ptr %str.build.len.gep219, align 8
  %str.build.data.gep220 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 1
  store ptr %concat.buf210, ptr %str.build.data.gep220, align 8
  %call.res221 = call ptr @"type_env::lookup_local_exact"(ptr %var.load161, ptr %concat.str218)
  store ptr %call.res221, ptr %var.pub222, align 8
  %var.load223 = load ptr, ptr %var.pub222, align 8
  %niche.ne.null224 = icmp ne ptr %var.load223, null
  br i1 %niche.ne.null224, label %choice.then225, label %choice.else226

str_overflow_abort207:                            ; preds = %cat.sum.len200
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead208:                                    ; No predecessors!
  br label %concat.tot.len206

choice.then225:                                   ; preds = %concat.tot.len206
  store ptr %var.load223, ptr %var._228, align 8
  store ptr %var.load223, ptr %var.p229, align 8
  %var.load230 = load ptr, ptr %var.p229, align 8
  br label %choice.exit227

choice.else226:                                   ; preds = %concat.tot.len206
  %var.load231 = load ptr, ptr %var.env, align 8
  %var.load232 = load ptr, ptr %var.env, align 8
  %fld.gep233 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load232, i32 0, i32 8
  %fld.load234 = load ptr, ptr %fld.gep233, align 8
  %cat.seg235 = getelementptr inbounds { i64, ptr }, ptr %fld.load234, i32 0, i32 0
  %cat.seg236 = load i64, ptr %cat.seg235, align 8
  %cat.seg237 = and i64 %cat.seg236, 281474976710655
  %str.tag238 = lshr i64 %cat.seg236, 48
  %tag.immortal240 = icmp eq i64 %str.tag238, 0
  %active.gen241 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current242 = icmp eq i64 %str.tag238, %active.gen241
  %tag.fast.ok243 = or i1 %tag.immortal240, %tag.current242
  br i1 %tag.fast.ok243, label %str_ok239, label %tag.slow_check244

choice.exit227:                                   ; preds = %concat.tot.len276, %choice.then225
  %choice.res = phi ptr [ %var.load230, %choice.then225 ], [ %call.res291, %concat.tot.len276 ]
  br label %choice.exit160

str_ok239:                                        ; preds = %tag.slow_check244, %choice.else226
  %cat.seg245 = getelementptr inbounds { i64, ptr }, ptr %fld.load234, i32 0, i32 1
  %cat.seg246 = load ptr, ptr %cat.seg245, align 8
  %cat.lit.data247 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load248 = load ptr, ptr %var.name, align 8
  %cat.seg249 = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 0
  %cat.seg250 = load i64, ptr %cat.seg249, align 8
  %cat.seg251 = and i64 %cat.seg250, 281474976710655
  %str.tag252 = lshr i64 %cat.seg250, 48
  %tag.immortal254 = icmp eq i64 %str.tag252, 0
  %active.gen255 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current256 = icmp eq i64 %str.tag252, %active.gen255
  %tag.fast.ok257 = or i1 %tag.immortal254, %tag.current256
  br i1 %tag.fast.ok257, label %str_ok253, label %tag.slow_check258

tag.slow_check244:                                ; preds = %choice.else226
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag238)
  br label %str_ok239

str_ok253:                                        ; preds = %tag.slow_check258, %str_ok239
  %cat.seg259 = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 1
  %cat.seg260 = load ptr, ptr %cat.seg259, align 8
  %cat.sum.len261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg237, i64 3)
  %sum262 = extractvalue { i64, i1 } %cat.sum.len261, 0
  %ovf263 = extractvalue { i64, i1 } %cat.sum.len261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %cat.sum.len264

tag.slow_check258:                                ; preds = %str_ok239
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag252)
  br label %str_ok253

cat.sum.len264:                                   ; preds = %abort.dead266, %str_ok253
  %cat.sum.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum262, i64 %cat.seg251)
  %sum268 = extractvalue { i64, i1 } %cat.sum.len267, 0
  %ovf269 = extractvalue { i64, i1 } %cat.sum.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %cat.sum.len270

str_overflow_abort265:                            ; preds = %str_ok253
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead266:                                    ; No predecessors!
  br label %cat.sum.len264

cat.sum.len270:                                   ; preds = %abort.dead272, %cat.sum.len264
  %concat.tot.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum268, i64 1)
  %sum274 = extractvalue { i64, i1 } %concat.tot.len273, 0
  %ovf275 = extractvalue { i64, i1 } %concat.tot.len273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %concat.tot.len276

str_overflow_abort271:                            ; preds = %cat.sum.len264
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead272:                                    ; No predecessors!
  br label %cat.sum.len270

concat.tot.len276:                                ; preds = %abort.dead278, %cat.sum.len270
  %arena.cur279 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 %sum274)
  %cat.dst281 = getelementptr i8, ptr %concat.buf280, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst281, ptr align 1 %cat.seg246, i64 %cat.seg237, i1 false)
  %cat.off282 = add i64 0, %cat.seg237
  %cat.dst283 = getelementptr i8, ptr %concat.buf280, i64 %cat.off282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 %cat.lit.data247, i64 3, i1 false)
  %cat.off284 = add i64 %cat.off282, 3
  %cat.dst285 = getelementptr i8, ptr %concat.buf280, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 %cat.seg260, i64 %cat.seg251, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf280, i64 %sum268
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.build.len.gep289 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  store i64 %sum268, ptr %str.build.len.gep289, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf280, ptr %str.build.data.gep290, align 8
  %call.res291 = call ptr @"type_env::lookup_local_exact"(ptr %var.load231, ptr %concat.str288)
  br label %choice.exit227

str_overflow_abort277:                            ; preds = %cat.sum.len270
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %concat.tot.len276
}

define ptr @"type_env::lookup_scope_chain"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.binding = alloca ptr, align 8
  %var._53 = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  %var._47 = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.189 = alloca i64, align 8
  %loop.idx.189 = alloca i64, align 8
  %var.max_iters = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %"var.found'" = alloca ptr, align 8
  %"var.curr'" = alloca i64, align 8
  %var.min_scope = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store i64 %2, ptr %var.min_scope, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %"var.curr'", align 8
  store ptr null, ptr %"var.found'", align 8
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  store ptr %fld.load3, ptr %var.scs, align 8
  %var.load4 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.scs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query7 = load i64, ptr %a.len.query, align 8
  %addtmp = add i64 %a.len.query7, 1
  store i64 %addtmp, ptr %var.max_iters, align 8
  %var.load8 = load i64, ptr %var.max_iters, align 8
  store i64 0, ptr %loop.idx.189, align 8
  br label %loop.header.189

loop.header.189:                                  ; preds = %loop.latch.189, %a.after
  %counter.load = load i64, ptr %loop.idx.189, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.189, label %loop.exit.nat.189

loop.body.189:                                    ; preds = %loop.header.189
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.189, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.curr'", align 8
  %var.load10 = load i64, ptr %var.min_scope, align 8
  %cmptmp = icmp slt i64 %var.load9, %var.load10
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.189:                                ; preds = %loop.header.189
  br label %loop.exit.189

loop.latch.189:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.189, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.189, align 8
  br label %loop.header.189

loop.exit.189:                                    ; preds = %choice.then, %loop.exit.nat.189
  %var.load63 = load ptr, ptr %"var.found'", align 8
  ret ptr %var.load63

choice.then:                                      ; preds = %loop.body.189
  br label %loop.exit.189

choice.else:                                      ; preds = %loop.body.189
  %var.load11 = load ptr, ptr %var.scs, align 8
  %a.load12 = load ptr, ptr %var.scs, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

choice.exit:                                      ; preds = %choice.exit59
  br label %loop.latch.189

a.create14:                                       ; preds = %choice.else
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.scs, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %choice.else
  %a.load223 = load ptr, ptr %var.scs, align 8
  %var.load24 = load i64, ptr %"var.curr'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load223, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after15
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.rd.len25 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load24, 0
  %a.rd.lt = icmp slt i64 %var.load24, %a.rd.len25
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.rd.data26 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data26, i64 %var.load24
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after15
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 273, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 29, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 273, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 29, ptr %err.col.gep34, align 8
  %err.ctx.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 5
  %err.ctx0.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 0
  store i64 %var.load24, ptr %err.ctx0.gep36, align 8
  %err.ctx1.gep37 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 1
  store i64 %a.rd.len25, ptr %err.ctx1.gep37, align 8
  %err.p2i38 = ptrtoint ptr %err.alloc29 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i38, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag39 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag39, label %choice.then40, label %choice.else41

choice.then40:                                    ; preds = %a.rd.done
  %ram.pay43 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay43 to ptr
  store ptr %pay.ptr, ptr %var._44, align 8
  br label %choice.exit42

choice.else41:                                    ; preds = %a.rd.done
  %ram.pay45 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr46 = inttoptr i64 %ram.pay45 to ptr
  store ptr %pay.ptr46, ptr %var._47, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit42

choice.exit42:                                    ; preds = %choice.else41, %choice.then40
  %choice.res = phi ptr [ %pay.ptr, %choice.then40 ], [ %call.res, %choice.else41 ]
  store ptr %choice.res, ptr %var.sc, align 8
  %var.load48 = load ptr, ptr %var.sc, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %call.res50 = call ptr @"type_env::lookup_scope"(ptr %var.load48, ptr %var.load49)
  %niche.ne.null = icmp ne ptr %call.res50, null
  br i1 %niche.ne.null, label %choice.then51, label %choice.exit52

choice.then51:                                    ; preds = %choice.exit42
  store ptr %call.res50, ptr %var._53, align 8
  store ptr %call.res50, ptr %var.binding, align 8
  %var.load54 = load ptr, ptr %var.binding, align 8
  store ptr %var.load54, ptr %"var.found'", align 8
  store i64 -1, ptr %"var.curr'", align 8
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.then51, %choice.exit42
  %var.load55 = load i64, ptr %"var.curr'", align 8
  %var.load56 = load i64, ptr %var.min_scope, align 8
  %cmptmp57 = icmp sge i64 %var.load55, %var.load56
  br i1 %cmptmp57, label %choice.then58, label %choice.exit59

choice.then58:                                    ; preds = %choice.exit52
  %var.load60 = load ptr, ptr %var.sc, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load60, i32 0, i32 1
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  store i64 %fld.load62, ptr %"var.curr'", align 8
  br label %choice.exit59

choice.exit59:                                    ; preds = %choice.then58, %choice.exit52
  br label %choice.exit
}

define ptr @"type_env::lookup_nonroot_exact"(ptr %0, ptr %1) #0 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_scope_chain"(ptr %var.load, ptr %var.load1, i64 1)
  ret ptr %call.res
}

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #0 {
entry:
  %var.b = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._9 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.190 = alloca i64, align 8
  %loop.idx.190 = alloca i64, align 8
  %"var.g_found'" = alloca ptr, align 8
  %var.gls = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %"var.found'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_scope_chain"(ptr %var.load, ptr %var.load1, i64 0)
  store ptr %call.res, ptr %"var.found'", align 8
  %var.load2 = load ptr, ptr %"var.found'", align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  %var.load3 = load ptr, ptr %"var.found'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load4, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.gls, align 8
  store ptr null, ptr %"var.g_found'", align 8
  %var.load5 = load ptr, ptr %var.gls, align 8
  %a.load = load ptr, ptr %var.gls, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %loop.exit.190, %choice.then
  %choice.res = phi ptr [ %var.load3, %choice.then ], [ %var.load79, %loop.exit.190 ]
  ret ptr %choice.res

a.create:                                         ; preds = %choice.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.gls, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.gls, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query8 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.190, align 8
  br label %loop.header.190

loop.header.190:                                  ; preds = %loop.latch.190, %a.after
  %counter.load = load i64, ptr %loop.idx.190, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query8
  br i1 %loop.cond, label %loop.body.190, label %loop.exit.nat.190

loop.body.190:                                    ; preds = %loop.header.190
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.190, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._9, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load10 = load ptr, ptr %var.gls, align 8
  %a.load11 = load ptr, ptr %var.gls, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

loop.exit.nat.190:                                ; preds = %loop.header.190
  br label %loop.exit.190

loop.latch.190:                                   ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.190, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.190, align 8
  br label %loop.header.190

loop.exit.190:                                    ; preds = %choice.then76, %loop.exit.nat.190
  %var.load79 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit

a.create13:                                       ; preds = %loop.body.190
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
  store ptr %a.create16, ptr %var.gls, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %loop.body.190
  %a.load222 = load ptr, ptr %var.gls, align 8
  %a.len.query23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.len.query24 = load i64, ptr %a.len.query23, align 8
  %subtmp = sub i64 %a.len.query24, 1
  %var.load25 = load i64, ptr %var.k, align 8
  %subtmp26 = sub i64 %subtmp, %var.load25
  store i64 %subtmp26, ptr %var.i, align 8
  %var.load27 = load ptr, ptr %var.gls, align 8
  %a.load28 = load ptr, ptr %var.gls, align 8
  %a.null29 = icmp eq ptr %a.load28, null
  br i1 %a.null29, label %a.create30, label %a.after31

a.create30:                                       ; preds = %a.after14
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
  store ptr %a.create33, ptr %var.gls, align 8
  br label %a.after31

a.after31:                                        ; preds = %a.create30, %a.after14
  %a.load239 = load ptr, ptr %var.gls, align 8
  %var.load40 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load239, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after31
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 0
  %a.rd.len41 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load40, 0
  %a.rd.lt = icmp slt i64 %var.load40, %a.rd.len41
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load239, i32 0, i32 1
  %a.rd.data42 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data42, i64 %var.load40
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after31
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 297, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 56)
  %err.code.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 0
  store i64 4011, ptr %err.code.gep46, align 8
  %err.msg.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep47, align 8
  %err.file.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep48, align 8
  %err.line.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 3
  store i64 297, ptr %err.line.gep49, align 8
  %err.col.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 4
  store i64 23, ptr %err.col.gep50, align 8
  %err.ctx.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 5
  %err.ctx0.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep51, i32 0, i32 0
  store i64 %var.load40, ptr %err.ctx0.gep52, align 8
  %err.ctx1.gep53 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep51, i32 0, i32 1
  store i64 %a.rd.len41, ptr %err.ctx1.gep53, align 8
  %err.p2i54 = ptrtoint ptr %err.alloc45 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i54, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.191, label %unwrap.abort.191

unwrap.pos.191:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.b, align 8
  %var.load66 = load ptr, ptr %var.b, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %var.load66, i32 0, i32 0
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %var.load69 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %eq.lhs.len70 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len71 = and i64 %eq.lhs.len70, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %eq.rhs.len72 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len73 = and i64 %eq.rhs.len72, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len71, %eq.rhs.len73
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

unwrap.abort.191:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep55, align 8
  %err.msg.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep56, align 8
  %err.file.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep57, align 8
  %err.line.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep58, align 8
  %err.col.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep59, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len60 = load i64, ptr %err.msg.len, align 8
  %err.msg.len61 = and i64 %err.msg.len60, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len61 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data62 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len63 = load i64, ptr %err.file.len, align 8
  %err.file.len64 = and i64 %err.file.len63, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len64 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data65 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.191
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.191
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data62, i32 %err.file.len32, ptr %err.file.data65, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.191
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %eq.lhs.data74 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %eq.rhs.data75 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data74, ptr %eq.rhs.data75, i64 %eq.lhs.len71)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.191
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %str.eq.merge
  %var.load78 = load ptr, ptr %var.b, align 8
  store ptr %var.load78, ptr %"var.g_found'", align 8
  br label %loop.exit.190

choice.exit77:                                    ; preds = %str.eq.merge
  br label %loop.latch.190
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #0 {
entry:
  %var.p = alloca ptr, align 8
  %var._62 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.local_b = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.192.then, label %and.192.else

and.192.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.192.exit

and.192.else:                                     ; preds = %str.eq.merge
  br label %and.192.exit

and.192.exit:                                     ; preds = %and.192.else, %and.192.then
  %and.192.phi = phi i1 [ %nottmp, %and.192.then ], [ %str.neq, %and.192.else ]
  br i1 %and.192.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.192.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %call.res8 = call ptr @"type_env::lookup_nonroot_exact"(ptr %var.load6, ptr %var.load7)
  store ptr %call.res8, ptr %var.local_b, align 8
  %var.load9 = load ptr, ptr %var.local_b, align 8
  %niche.ne.null = icmp ne ptr %var.load9, null
  br i1 %niche.ne.null, label %choice.then10, label %choice.exit11

choice.exit:                                      ; preds = %ret.dead126, %and.192.exit
  %var.load127 = load ptr, ptr %var.env, align 8
  %var.load128 = load ptr, ptr %var.name, align 8
  %call.res129 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load127, ptr %var.load128)
  ret ptr %call.res129

choice.then10:                                    ; preds = %choice.then
  store ptr %var.load9, ptr %var._, align 8
  store ptr %var.load9, ptr %var.b, align 8
  %var.load12 = load ptr, ptr %var.b, align 8
  ret ptr %var.load12

choice.exit11:                                    ; preds = %ret.dead, %choice.then
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 8
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %cat.seg17 = load i64, ptr %cat.seg, align 8
  %cat.seg18 = and i64 %cat.seg17, 281474976710655
  %str.tag19 = lshr i64 %cat.seg17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current23 = icmp eq i64 %str.tag19, %active.gen22
  %tag.fast.ok24 = or i1 %tag.immortal21, %tag.current23
  br i1 %tag.fast.ok24, label %str_ok20, label %tag.slow_check25

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

str_ok20:                                         ; preds = %tag.slow_check25, %choice.exit11
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %cat.seg27 = load ptr, ptr %cat.seg26, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load28 = load ptr, ptr %var.name, align 8
  %cat.seg29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %cat.seg30 = load i64, ptr %cat.seg29, align 8
  %cat.seg31 = and i64 %cat.seg30, 281474976710655
  %str.tag32 = lshr i64 %cat.seg30, 48
  %tag.immortal34 = icmp eq i64 %str.tag32, 0
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current36 = icmp eq i64 %str.tag32, %active.gen35
  %tag.fast.ok37 = or i1 %tag.immortal34, %tag.current36
  br i1 %tag.fast.ok37, label %str_ok33, label %tag.slow_check38

tag.slow_check25:                                 ; preds = %choice.exit11
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag19)
  br label %str_ok20

str_ok33:                                         ; preds = %tag.slow_check38, %str_ok20
  %cat.seg39 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %cat.seg40 = load ptr, ptr %cat.seg39, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg18, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len41

tag.slow_check38:                                 ; preds = %str_ok20
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag32)
  br label %str_ok33

cat.sum.len41:                                    ; preds = %abort.dead, %str_ok33
  %cat.sum.len42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg31)
  %sum43 = extractvalue { i64, i1 } %cat.sum.len42, 0
  %ovf44 = extractvalue { i64, i1 } %cat.sum.len42, 1
  br i1 %ovf44, label %str_overflow_abort46, label %cat.sum.len45

str_overflow_abort:                               ; preds = %str_ok33
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len41

cat.sum.len45:                                    ; preds = %abort.dead47, %cat.sum.len41
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum43, i64 1)
  %sum48 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf49 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf49, label %str_overflow_abort51, label %concat.tot.len50

str_overflow_abort46:                             ; preds = %cat.sum.len41
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %cat.sum.len45

concat.tot.len50:                                 ; preds = %abort.dead52, %cat.sum.len45
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum48)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg27, i64 %cat.seg18, i1 false)
  %cat.off = add i64 0, %cat.seg18
  %cat.dst53 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst53, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off54 = add i64 %cat.off, 2
  %cat.dst55 = getelementptr i8, ptr %concat.buf, i64 %cat.off54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst55, ptr align 1 %cat.seg40, i64 %cat.seg31, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum43
  store i8 0, ptr %concat.nul, align 1
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum43, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res57 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load13, ptr %concat.str)
  store ptr %call.res57, ptr %var.pub, align 8
  %var.load58 = load ptr, ptr %var.pub, align 8
  %niche.ne.null59 = icmp ne ptr %var.load58, null
  br i1 %niche.ne.null59, label %choice.then60, label %choice.exit61

str_overflow_abort51:                             ; preds = %cat.sum.len45
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %concat.tot.len50

choice.then60:                                    ; preds = %concat.tot.len50
  store ptr %var.load58, ptr %var._62, align 8
  store ptr %var.load58, ptr %var.p, align 8
  %var.load63 = load ptr, ptr %var.p, align 8
  ret ptr %var.load63

choice.exit61:                                    ; preds = %ret.dead64, %concat.tot.len50
  %var.load65 = load ptr, ptr %var.env, align 8
  %var.load66 = load ptr, ptr %var.env, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load66, i32 0, i32 8
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %cat.seg69 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %cat.seg70 = load i64, ptr %cat.seg69, align 8
  %cat.seg71 = and i64 %cat.seg70, 281474976710655
  %str.tag72 = lshr i64 %cat.seg70, 48
  %tag.immortal74 = icmp eq i64 %str.tag72, 0
  %active.gen75 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current76 = icmp eq i64 %str.tag72, %active.gen75
  %tag.fast.ok77 = or i1 %tag.immortal74, %tag.current76
  br i1 %tag.fast.ok77, label %str_ok73, label %tag.slow_check78

ret.dead64:                                       ; No predecessors!
  br label %choice.exit61

str_ok73:                                         ; preds = %tag.slow_check78, %choice.exit61
  %cat.seg79 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %cat.seg80 = load ptr, ptr %cat.seg79, align 8
  %cat.lit.data81 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load82 = load ptr, ptr %var.name, align 8
  %cat.seg83 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %cat.seg84 = load i64, ptr %cat.seg83, align 8
  %cat.seg85 = and i64 %cat.seg84, 281474976710655
  %str.tag86 = lshr i64 %cat.seg84, 48
  %tag.immortal88 = icmp eq i64 %str.tag86, 0
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current90 = icmp eq i64 %str.tag86, %active.gen89
  %tag.fast.ok91 = or i1 %tag.immortal88, %tag.current90
  br i1 %tag.fast.ok91, label %str_ok87, label %tag.slow_check92

tag.slow_check78:                                 ; preds = %choice.exit61
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag72)
  br label %str_ok73

str_ok87:                                         ; preds = %tag.slow_check92, %str_ok73
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %cat.seg94 = load ptr, ptr %cat.seg93, align 8
  %cat.sum.len95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg71, i64 3)
  %sum96 = extractvalue { i64, i1 } %cat.sum.len95, 0
  %ovf97 = extractvalue { i64, i1 } %cat.sum.len95, 1
  br i1 %ovf97, label %str_overflow_abort99, label %cat.sum.len98

tag.slow_check92:                                 ; preds = %str_ok73
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag86)
  br label %str_ok87

cat.sum.len98:                                    ; preds = %abort.dead100, %str_ok87
  %cat.sum.len101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum96, i64 %cat.seg85)
  %sum102 = extractvalue { i64, i1 } %cat.sum.len101, 0
  %ovf103 = extractvalue { i64, i1 } %cat.sum.len101, 1
  br i1 %ovf103, label %str_overflow_abort105, label %cat.sum.len104

str_overflow_abort99:                             ; preds = %str_ok87
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead100:                                    ; No predecessors!
  br label %cat.sum.len98

cat.sum.len104:                                   ; preds = %abort.dead106, %cat.sum.len98
  %concat.tot.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum102, i64 1)
  %sum108 = extractvalue { i64, i1 } %concat.tot.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.tot.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.tot.len110

str_overflow_abort105:                            ; preds = %cat.sum.len98
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %cat.sum.len104

concat.tot.len110:                                ; preds = %abort.dead112, %cat.sum.len104
  %arena.cur113 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 %sum108)
  %cat.dst115 = getelementptr i8, ptr %concat.buf114, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst115, ptr align 1 %cat.seg80, i64 %cat.seg71, i1 false)
  %cat.off116 = add i64 0, %cat.seg71
  %cat.dst117 = getelementptr i8, ptr %concat.buf114, i64 %cat.off116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst117, ptr align 1 %cat.lit.data81, i64 3, i1 false)
  %cat.off118 = add i64 %cat.off116, 3
  %cat.dst119 = getelementptr i8, ptr %concat.buf114, i64 %cat.off118
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst119, ptr align 1 %cat.seg94, i64 %cat.seg85, i1 false)
  %concat.nul120 = getelementptr i8, ptr %concat.buf114, i64 %sum102
  store i8 0, ptr %concat.nul120, align 1
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.build.len.gep123 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  store i64 %sum102, ptr %str.build.len.gep123, align 8
  %str.build.data.gep124 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  store ptr %concat.buf114, ptr %str.build.data.gep124, align 8
  %call.res125 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load65, ptr %concat.str122)
  ret ptr %call.res125

str_overflow_abort111:                            ; preds = %cat.sum.len104
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead112:                                    ; No predecessors!
  br label %concat.tot.len110

ret.dead126:                                      ; No predecessors!
  br label %choice.exit
}

define { i1, i64 } @"type_env::find_last_dot"(ptr %0, i64 %1) #0 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load5, %s.read.len3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %var.load5
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp6 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp6, label %choice.then7, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then7:                                     ; preds = %idx_ok
  %var.load9 = load i64, ptr %var.i, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load9, 1
  br label %choice.exit8

choice.else:                                      ; preds = %idx_ok
  %var.load10 = load ptr, ptr %var.s, align 8
  %var.load11 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load11, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load10, i64 %subtmp)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else, %choice.then7
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then7 ], [ %call.res, %choice.else ]
  ret { i1, i64 } %choice.res
}

define { i64, ptr } @"type_env::drop_last_dot"(ptr %0) #0 {
entry:
  %var._12 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.194 = alloca i64, align 8
  %loop.idx.194 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.cut = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
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
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %choice.then
  %choice.res = phi i64 [ %ram.pay, %choice.then ], [ 0, %ret.dead ]
  store i64 %choice.res, ptr %var.cut, align 8
  %var.load4 = load i64, ptr %var.cut, align 8
  %cmptmp = icmp sle i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  %ret.pack7 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack7

choice.exit6:                                     ; preds = %ret.dead8, %choice.exit
  %var.load9 = load i64, ptr %var.cut, align 8
  %cap.neg = icmp slt i64 %var.load9, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load9
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead8:                                        ; No predecessors!
  br label %choice.exit6

b.buf.len10:                                      ; preds = %abort.dead, %choice.exit6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load11 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.194, align 8
  br label %loop.header.194

str_overflow_abort:                               ; preds = %choice.exit6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len10

loop.header.194:                                  ; preds = %loop.latch.194, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.194, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load11
  br i1 %loop.cond, label %loop.body.194, label %loop.exit.nat.194

loop.body.194:                                    ; preds = %loop.header.194
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.194, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._12, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.194:                                ; preds = %loop.header.194
  br label %loop.exit.194

loop.latch.194:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.194, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.194, align 8
  br label %loop.header.194

loop.exit.194:                                    ; preds = %loop.exit.nat.194
  %var.load32 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 0
  %b.freeze.len33 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 1
  %b.freeze.data34 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

idx_ok:                                           ; preds = %abort.dead18, %loop.body.194
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %loop.body.194
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %idx_ok

b.byte_ok:                                        ; preds = %abort.dead19, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len20 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap21 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data22 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len20, %b.cap21
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap21, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum23 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.new.buf.len25

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len25
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data29 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len30 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data29, i64 %b.cur.len30
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len30, 1
  %b.nul = getelementptr i8, ptr %b.cur.data29, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep31, align 8
  br label %loop.latch.194

b.new.buf.len25:                                  ; preds = %abort.dead27, %b.grow
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data22, i64 %b.len20, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len20
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort26:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.new.buf.len25

b.freeze.check:                                   ; preds = %loop.exit.194
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data34, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data34, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data34, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len33, 1
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data34, i64 %b.freeze.len33, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len33
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.194
  %b.freeze.data36 = phi ptr [ %b.freeze.data34, %loop.exit.194 ], [ %b.freeze.data34, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len33, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data36, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack38 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack38
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

define i1 @"type_env::init_has_name"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.195 = alloca i64, align 8
  %loop.idx.195 = alloca i64, align 8
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
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.195, align 8
  br label %loop.header.195

loop.header.195:                                  ; preds = %loop.latch.195, %a.after
  %counter.load = load i64, ptr %loop.idx.195, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.195, label %loop.exit.nat.195

loop.body.195:                                    ; preds = %loop.header.195
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.195, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load5 = load ptr, ptr %var.n, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.195:                                ; preds = %loop.header.195
  br label %loop.exit.195

loop.latch.195:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.195, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.195, align 8
  br label %loop.header.195

loop.exit.195:                                    ; preds = %loop.exit.nat.195
  ret i1 false

str.eq.then:                                      ; preds = %loop.body.195
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.195
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.195

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #0 {
entry:
  %var.tr = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.tr, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after19, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.tr, align 8
  %a.load16 = load ptr, ptr %var.tr, align 8
  %a.null17 = icmp eq ptr %a.load16, null
  br i1 %a.null17, label %a.create18, label %a.after19

a.create18:                                       ; preds = %a.store
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  store ptr %a.create21, ptr %var.tr, align 8
  br label %a.after19

a.after19:                                        ; preds = %a.create18, %a.store
  %a.load227 = load ptr, ptr %var.tr, align 8
  %var.load28 = load ptr, ptr %var.env, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load28, i32 0, i32 4
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep29, i32 0, i32 1
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load32, i32 0, i32 4
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load227, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load31, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load35, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_tracked"(ptr %0, ptr %1) #0 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  ret i1 %call.res
}

define void @"type_env::init_mark_whole"(ptr %0, ptr %1) #0 {
entry:
  %var.wh = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.wh, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %a.load = load ptr, ptr %var.wh, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after23, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.wh, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.wh, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.wh, align 8
  %a.load20 = load ptr, ptr %var.wh, align 8
  %a.null21 = icmp eq ptr %a.load20, null
  br i1 %a.null21, label %a.create22, label %a.after23

a.create22:                                       ; preds = %a.store
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 0
  store i64 0, ptr %a.len.gep28, align 8
  %a.data.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 1
  store ptr %a.buf27, ptr %a.data.gep29, align 8
  %a.cap.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 2
  store i64 16, ptr %a.cap.gep30, align 8
  store ptr %a.create25, ptr %var.wh, align 8
  br label %a.after23

a.after23:                                        ; preds = %a.create22, %a.store
  %a.load231 = load ptr, ptr %var.wh, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load32, i32 0, i32 4
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load18, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load231, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load35, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_whole"(ptr %0, ptr %1) #0 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  ret i1 %call.res
}

define void @"type_env::init_mark_written"(ptr %0, ptr %1) #0 {
entry:
  %var.wr = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.wr, align 8
  %var.load7 = load ptr, ptr %var.path, align 8
  %a.load = load ptr, ptr %var.wr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after27, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.wr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.wr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load19, i32 0, i32 4
  %fld.gep21 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep20, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %var.load23 = load ptr, ptr %var.wr, align 8
  %a.load24 = load ptr, ptr %var.wr, align 8
  %a.null25 = icmp eq ptr %a.load24, null
  br i1 %a.null25, label %a.create26, label %a.after27

a.create26:                                       ; preds = %a.store
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
  store ptr %a.create29, ptr %var.wr, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %a.store
  %a.load235 = load ptr, ptr %var.wr, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load18, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load22, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load235, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_ok_walk"(ptr %0, ptr %1) #0 {
entry:
  %var.p = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load5, i32 0, i32 4
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep6, align 8
  %var.load7 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load7)
  br i1 %call.res, label %choice.then8, label %choice.else9

choice.exit:                                      ; preds = %choice.exit10, %choice.then
  %choice.res15 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit10 ]
  ret i1 %choice.res15

choice.then8:                                     ; preds = %choice.else
  br label %choice.exit10

choice.else9:                                     ; preds = %choice.else
  %var.load11 = load ptr, ptr %var.env, align 8
  %var.load12 = load ptr, ptr %var.p, align 8
  %call.res13 = call { i64, ptr } @"type_env::drop_last_dot"(ptr %var.load12)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res13, ptr %ret.ub.alloc, align 8
  %call.res14 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load11, ptr %ret.ub.alloc)
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi i1 [ true, %choice.then8 ], [ %call.res14, %choice.else9 ]
  br label %choice.exit
}

define i1 @"type_env::init_has_subpath"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.196 = alloca i64, align 8
  %loop.idx.196 = alloca i64, align 8
  %"var.has'" = alloca i1, align 1
  %var.plen = alloca i64, align 8
  %var.prefix = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  %var.written = alloca ptr, align 8
  store ptr %0, ptr %var.written, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len7:                                  ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len7

concat.tot.len10:                                 ; preds = %abort.dead12, %concat.sum.len7
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load14 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %str.tag17 = lshr i64 %str.len.query15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current21 = icmp eq i64 %str.tag17, %active.gen20
  %tag.fast.ok22 = or i1 %tag.immortal19, %tag.current21
  br i1 %tag.fast.ok22, label %str_ok18, label %tag.slow_check23

str_overflow_abort11:                             ; preds = %concat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %concat.tot.len10

str_ok18:                                         ; preds = %tag.slow_check23, %concat.tot.len10
  store i64 %str.len.query16, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load24 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

tag.slow_check23:                                 ; preds = %concat.tot.len10
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag17)
  br label %str_ok18

a.create:                                         ; preds = %str_ok18
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create26, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok18
  %a.load2 = load ptr, ptr %var.written, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len28 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data29 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.header.196:                                  ; preds = %loop.latch.196, %a.after
  %counter.load = load i64, ptr %loop.idx.196, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len28
  br i1 %loop.cond, label %loop.body.196, label %loop.exit.nat.196

loop.body.196:                                    ; preds = %loop.header.196
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.196, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data29, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.w, align 8
  %var.load30 = load ptr, ptr %var.w, align 8
  %str.len.query31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query31, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %var.load34 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query33, %var.load34
  br i1 %cmptmp, label %and.197.then, label %and.197.else

loop.exit.nat.196:                                ; preds = %loop.header.196
  br label %loop.exit.196

loop.latch.196:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.196, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.exit.196:                                    ; preds = %choice.then, %loop.exit.nat.196
  %var.load47 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load47

and.197.then:                                     ; preds = %loop.body.196
  %var.load35 = load ptr, ptr %var.w, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.chk.len36 = load i64, ptr %s.chk.len, align 8
  %s.chk.len37 = and i64 %s.chk.len36, 281474976710655
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data, align 8
  %var.load41 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len39, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len39
  %final.start = select i1 %start.gt.len, i64 %s.read.len39, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load41, 0
  %rel.end = add i64 %s.read.len39, %var.load41
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load41
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len39
  %final.end = select i1 %end.gt.len, i64 %s.read.len39, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data40, i64 %final.start
  %var.load42 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %cmp.str43 = load i64, ptr %cmp.str, align 8
  %cmp.str44 = and i64 %cmp.str43, 281474976710655
  %cmp.str45 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %cmp.str46 = load ptr, ptr %cmp.str45, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str44
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.197.else:                                     ; preds = %loop.body.196
  br label %and.197.exit

and.197.exit:                                     ; preds = %and.197.else, %str.eq.merge
  %and.197.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.197.else ]
  br i1 %and.197.phi, label %choice.then, label %choice.exit

str.eq.then:                                      ; preds = %and.197.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str46, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.197.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.197.exit

choice.then:                                      ; preds = %and.197.exit
  store i1 true, ptr %"var.has'", align 1
  br label %loop.exit.196

choice.exit:                                      ; preds = %and.197.exit
  br label %loop.latch.196
}

define i1 @"type_env::init_is_ok"(ptr %0, ptr %1) #0 {
entry:
  %var.path = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_is_ok_walk"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %or.198.then, label %or.198.else

or.198.then:                                      ; preds = %entry
  br label %or.198.exit

or.198.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.198.exit

or.198.exit:                                      ; preds = %or.198.else, %or.198.then
  %or.198.phi = phi i1 [ %call.res, %or.198.then ], [ %call.res5, %or.198.else ]
  br i1 %or.198.phi, label %or.199.then, label %or.199.else

or.199.then:                                      ; preds = %or.198.exit
  br label %or.199.exit

or.199.else:                                      ; preds = %or.198.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 4
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep7, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %call.res11 = call i1 @"type_env::init_has_subpath"(ptr %fld.load9, ptr %var.load10)
  br label %or.199.exit

or.199.exit:                                      ; preds = %or.199.else, %or.199.then
  %or.199.phi = phi i1 [ %or.198.phi, %or.199.then ], [ %call.res11, %or.199.else ]
  ret i1 %or.199.phi
}

define ptr @"type_env::init_snapshot"(ptr %0) #0 {
entry:
  %var._93 = alloca ptr, align 8
  %var._i92 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.202 = alloca i64, align 8
  %loop.idx.202 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._i38 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.201 = alloca i64, align 8
  %loop.idx.201 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.200 = alloca i64, align 8
  %loop.idx.200 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep2, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.200, align 8
  br label %loop.header.200

loop.header.200:                                  ; preds = %loop.latch.200, %entry
  %counter.load = load i64, ptr %loop.idx.200, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.200, label %loop.exit.nat.200

loop.body.200:                                    ; preds = %loop.header.200
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.200, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load5 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.200:                                ; preds = %loop.header.200
  br label %loop.exit.200

loop.latch.200:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.200, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.200, align 8
  br label %loop.header.200

loop.exit.200:                                    ; preds = %loop.exit.nat.200
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.new18, ptr %var.wh, align 8
  %var.load24 = load ptr, ptr %var.env, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load24, i32 0, i32 4
  %fld.gep26 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep25, i32 0, i32 1
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %arr.cycle.len28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 0
  %arr.cycle.len29 = load i64, ptr %arr.cycle.len28, align 8
  %arr.cycle.data30 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 1
  %arr.cycle.data31 = load ptr, ptr %arr.cycle.data30, align 8
  store i64 0, ptr %loop.idx.201, align 8
  br label %loop.header.201

a.create:                                         ; preds = %loop.body.200
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep10, align 8
  %a.data.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf9, ptr %a.data.gep11, align 8
  %a.cap.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep12, align 8
  store ptr %a.create7, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.200
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len13 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap14 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len13, %a.cap14
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data15 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len16 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data15, i64 %a.cur.len16
  %slot.p2i = ptrtoint ptr %var.load5 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len16, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.200

loop.header.201:                                  ; preds = %loop.latch.201, %loop.exit.200
  %counter.load32 = load i64, ptr %loop.idx.201, align 8
  %loop.cond33 = icmp slt i64 %counter.load32, %arr.cycle.len29
  br i1 %loop.cond33, label %loop.body.201, label %loop.exit.nat.201

loop.body.201:                                    ; preds = %loop.header.201
  %loop.rel.i34 = sub i64 %counter.load32, 0
  store i64 1, ptr %loop.step.201, align 8
  %arr.elem.gep35 = getelementptr i64, ptr %arr.cycle.data31, i64 %counter.load32
  %arr.elem.raw36 = load i64, ptr %arr.elem.gep35, align 8
  %slot.i2p37 = inttoptr i64 %arr.elem.raw36 to ptr
  store i64 %loop.rel.i34, ptr %var._i38, align 8
  store ptr %slot.i2p37, ptr %var._39, align 8
  store ptr %slot.i2p37, ptr %var.w, align 8
  %var.load40 = load ptr, ptr %var.w, align 8
  %a.load41 = load ptr, ptr %var.wh, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

loop.exit.nat.201:                                ; preds = %loop.header.201
  br label %loop.exit.201

loop.latch.201:                                   ; preds = %a.store55
  %step.val69 = load i64, ptr %loop.step.201, align 8
  %loop.next70 = add i64 %counter.load32, %step.val69
  store i64 %loop.next70, ptr %loop.idx.201, align 8
  br label %loop.header.201

loop.exit.201:                                    ; preds = %loop.exit.nat.201
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.new72, ptr %var.wr, align 8
  %var.load78 = load ptr, ptr %var.env, align 8
  %fld.gep79 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load78, i32 0, i32 4
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep79, i32 0, i32 2
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %arr.cycle.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load81, i32 0, i32 0
  %arr.cycle.len83 = load i64, ptr %arr.cycle.len82, align 8
  %arr.cycle.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load81, i32 0, i32 1
  %arr.cycle.data85 = load ptr, ptr %arr.cycle.data84, align 8
  store i64 0, ptr %loop.idx.202, align 8
  br label %loop.header.202

a.create43:                                       ; preds = %loop.body.201
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
  store ptr %a.create46, ptr %var.wh, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %loop.body.201
  %a.load252 = load ptr, ptr %var.wh, align 8
  br label %a.check53

a.check53:                                        ; preds = %a.after44
  %a.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.len57 = load i64, ptr %a.len56, align 8
  %a.cap58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 2
  %a.cap59 = load i64, ptr %a.cap58, align 8
  %a.needs.grow60 = icmp eq i64 %a.len57, %a.cap59
  br i1 %a.needs.grow60, label %a.grow54, label %a.store55

a.grow54:                                         ; preds = %a.check53
  call void @dva_array_grow(ptr %a.load252)
  br label %a.store55

a.store55:                                        ; preds = %a.grow54, %a.check53
  %a.cur.data61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 1
  %a.cur.data62 = load ptr, ptr %a.cur.data61, align 8
  %a.cur.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.cur.len64 = load i64, ptr %a.cur.len63, align 8
  %a.elem.gep65 = getelementptr i64, ptr %a.cur.data62, i64 %a.cur.len64
  %slot.p2i66 = ptrtoint ptr %var.load40 to i64
  store i64 %slot.p2i66, ptr %a.elem.gep65, align 8
  %a.next.len67 = add i64 %a.cur.len64, 1
  %b.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  store i64 %a.next.len67, ptr %b.len.gep68, align 8
  br label %loop.latch.201

loop.header.202:                                  ; preds = %loop.latch.202, %loop.exit.201
  %counter.load86 = load i64, ptr %loop.idx.202, align 8
  %loop.cond87 = icmp slt i64 %counter.load86, %arr.cycle.len83
  br i1 %loop.cond87, label %loop.body.202, label %loop.exit.nat.202

loop.body.202:                                    ; preds = %loop.header.202
  %loop.rel.i88 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.202, align 8
  %arr.elem.gep89 = getelementptr i64, ptr %arr.cycle.data85, i64 %counter.load86
  %arr.elem.raw90 = load i64, ptr %arr.elem.gep89, align 8
  %slot.i2p91 = inttoptr i64 %arr.elem.raw90 to ptr
  store i64 %loop.rel.i88, ptr %var._i92, align 8
  store ptr %slot.i2p91, ptr %var._93, align 8
  store ptr %slot.i2p91, ptr %var.p, align 8
  %var.load94 = load ptr, ptr %var.p, align 8
  %a.load95 = load ptr, ptr %var.wr, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

loop.exit.nat.202:                                ; preds = %loop.header.202
  br label %loop.exit.202

loop.latch.202:                                   ; preds = %a.store109
  %step.val123 = load i64, ptr %loop.step.202, align 8
  %loop.next124 = add i64 %counter.load86, %step.val123
  store i64 %loop.next124, ptr %loop.idx.202, align 8
  br label %loop.header.202

loop.exit.202:                                    ; preds = %loop.exit.nat.202
  %var.load125 = load ptr, ptr %var.tr, align 8
  %a.load126 = load ptr, ptr %var.tr, align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

a.create97:                                       ; preds = %loop.body.202
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
  store ptr %a.create100, ptr %var.wr, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %loop.body.202
  %a.load2106 = load ptr, ptr %var.wr, align 8
  br label %a.check107

a.check107:                                       ; preds = %a.after98
  %a.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.len111 = load i64, ptr %a.len110, align 8
  %a.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap112, align 8
  %a.needs.grow114 = icmp eq i64 %a.len111, %a.cap113
  br i1 %a.needs.grow114, label %a.grow108, label %a.store109

a.grow108:                                        ; preds = %a.check107
  call void @dva_array_grow(ptr %a.load2106)
  br label %a.store109

a.store109:                                       ; preds = %a.grow108, %a.check107
  %a.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %a.cur.data116 = load ptr, ptr %a.cur.data115, align 8
  %a.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.cur.len118 = load i64, ptr %a.cur.len117, align 8
  %a.elem.gep119 = getelementptr i64, ptr %a.cur.data116, i64 %a.cur.len118
  %slot.p2i120 = ptrtoint ptr %var.load94 to i64
  store i64 %slot.p2i120, ptr %a.elem.gep119, align 8
  %a.next.len121 = add i64 %a.cur.len118, 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  store i64 %a.next.len121, ptr %b.len.gep122, align 8
  br label %loop.latch.202

a.create128:                                      ; preds = %loop.exit.202
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
  store ptr %a.create131, ptr %var.tr, align 8
  br label %a.after129

a.after129:                                       ; preds = %a.create128, %loop.exit.202
  %a.load2137 = load ptr, ptr %var.tr, align 8
  %var.load138 = load ptr, ptr %var.wh, align 8
  %a.load139 = load ptr, ptr %var.wh, align 8
  %a.null140 = icmp eq ptr %a.load139, null
  br i1 %a.null140, label %a.create141, label %a.after142

a.create141:                                      ; preds = %a.after129
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 24)
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 128)
  %a.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 0
  store i64 0, ptr %a.len.gep147, align 8
  %a.data.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 1
  store ptr %a.buf146, ptr %a.data.gep148, align 8
  %a.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 2
  store i64 16, ptr %a.cap.gep149, align 8
  store ptr %a.create144, ptr %var.wh, align 8
  br label %a.after142

a.after142:                                       ; preds = %a.create141, %a.after129
  %a.load2150 = load ptr, ptr %var.wh, align 8
  %var.load151 = load ptr, ptr %var.wr, align 8
  %a.load152 = load ptr, ptr %var.wr, align 8
  %a.null153 = icmp eq ptr %a.load152, null
  br i1 %a.null153, label %a.create154, label %a.after155

a.create154:                                      ; preds = %a.after142
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 24)
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 128)
  %a.len.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 0
  store i64 0, ptr %a.len.gep160, align 8
  %a.data.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 1
  store ptr %a.buf159, ptr %a.data.gep161, align 8
  %a.cap.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 2
  store i64 16, ptr %a.cap.gep162, align 8
  store ptr %a.create157, ptr %var.wr, align 8
  br label %a.after155

a.after155:                                       ; preds = %a.create154, %a.after142
  %a.load2163 = load ptr, ptr %var.wr, align 8
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2137, ptr %rec.fld, align 8
  %rec.fld165 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2150, ptr %rec.fld165, align 8
  %rec.fld166 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2163, ptr %rec.fld166, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::init_snapshot_of"(ptr %0) #0 {
entry:
  %var._90 = alloca ptr, align 8
  %var._i89 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.205 = alloca i64, align 8
  %loop.idx.205 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._i36 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.204 = alloca i64, align 8
  %loop.idx.204 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.203 = alloca i64, align 8
  %loop.idx.203 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.fi = alloca ptr, align 8
  store ptr %0, ptr %var.fi, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.fi, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len2 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data3 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.203, align 8
  br label %loop.header.203

loop.header.203:                                  ; preds = %loop.latch.203, %entry
  %counter.load = load i64, ptr %loop.idx.203, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.203, label %loop.exit.nat.203

loop.body.203:                                    ; preds = %loop.header.203
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.203, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.203:                                ; preds = %loop.header.203
  br label %loop.exit.203

loop.latch.203:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.203, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.203, align 8
  br label %loop.header.203

loop.exit.203:                                    ; preds = %loop.exit.nat.203
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.new17, ptr %var.wh, align 8
  %var.load23 = load ptr, ptr %var.fi, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %arr.cycle.len26 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %arr.cycle.len27 = load i64, ptr %arr.cycle.len26, align 8
  %arr.cycle.data28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 1
  %arr.cycle.data29 = load ptr, ptr %arr.cycle.data28, align 8
  store i64 0, ptr %loop.idx.204, align 8
  br label %loop.header.204

a.create:                                         ; preds = %loop.body.203
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.203
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load4 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.203

loop.header.204:                                  ; preds = %loop.latch.204, %loop.exit.203
  %counter.load30 = load i64, ptr %loop.idx.204, align 8
  %loop.cond31 = icmp slt i64 %counter.load30, %arr.cycle.len27
  br i1 %loop.cond31, label %loop.body.204, label %loop.exit.nat.204

loop.body.204:                                    ; preds = %loop.header.204
  %loop.rel.i32 = sub i64 %counter.load30, 0
  store i64 1, ptr %loop.step.204, align 8
  %arr.elem.gep33 = getelementptr i64, ptr %arr.cycle.data29, i64 %counter.load30
  %arr.elem.raw34 = load i64, ptr %arr.elem.gep33, align 8
  %slot.i2p35 = inttoptr i64 %arr.elem.raw34 to ptr
  store i64 %loop.rel.i32, ptr %var._i36, align 8
  store ptr %slot.i2p35, ptr %var._37, align 8
  store ptr %slot.i2p35, ptr %var.w, align 8
  %var.load38 = load ptr, ptr %var.w, align 8
  %a.load39 = load ptr, ptr %var.wh, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

loop.exit.nat.204:                                ; preds = %loop.header.204
  br label %loop.exit.204

loop.latch.204:                                   ; preds = %a.store53
  %step.val67 = load i64, ptr %loop.step.204, align 8
  %loop.next68 = add i64 %counter.load30, %step.val67
  store i64 %loop.next68, ptr %loop.idx.204, align 8
  br label %loop.header.204

loop.exit.204:                                    ; preds = %loop.exit.nat.204
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 24)
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 128)
  %a.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 0
  store i64 0, ptr %a.len.gep73, align 8
  %a.data.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 1
  store ptr %a.buf72, ptr %a.data.gep74, align 8
  %a.cap.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 2
  store i64 16, ptr %a.cap.gep75, align 8
  store ptr %a.new70, ptr %var.wr, align 8
  %var.load76 = load ptr, ptr %var.fi, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load76, i32 0, i32 2
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %arr.cycle.len79 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 0
  %arr.cycle.len80 = load i64, ptr %arr.cycle.len79, align 8
  %arr.cycle.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %arr.cycle.data82 = load ptr, ptr %arr.cycle.data81, align 8
  store i64 0, ptr %loop.idx.205, align 8
  br label %loop.header.205

a.create41:                                       ; preds = %loop.body.204
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
  store ptr %a.create44, ptr %var.wh, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %loop.body.204
  %a.load250 = load ptr, ptr %var.wh, align 8
  br label %a.check51

a.check51:                                        ; preds = %a.after42
  %a.len54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len55 = load i64, ptr %a.len54, align 8
  %a.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 2
  %a.cap57 = load i64, ptr %a.cap56, align 8
  %a.needs.grow58 = icmp eq i64 %a.len55, %a.cap57
  br i1 %a.needs.grow58, label %a.grow52, label %a.store53

a.grow52:                                         ; preds = %a.check51
  call void @dva_array_grow(ptr %a.load250)
  br label %a.store53

a.store53:                                        ; preds = %a.grow52, %a.check51
  %a.cur.data59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 1
  %a.cur.data60 = load ptr, ptr %a.cur.data59, align 8
  %a.cur.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.cur.len62 = load i64, ptr %a.cur.len61, align 8
  %a.elem.gep63 = getelementptr i64, ptr %a.cur.data60, i64 %a.cur.len62
  %slot.p2i64 = ptrtoint ptr %var.load38 to i64
  store i64 %slot.p2i64, ptr %a.elem.gep63, align 8
  %a.next.len65 = add i64 %a.cur.len62, 1
  %b.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  store i64 %a.next.len65, ptr %b.len.gep66, align 8
  br label %loop.latch.204

loop.header.205:                                  ; preds = %loop.latch.205, %loop.exit.204
  %counter.load83 = load i64, ptr %loop.idx.205, align 8
  %loop.cond84 = icmp slt i64 %counter.load83, %arr.cycle.len80
  br i1 %loop.cond84, label %loop.body.205, label %loop.exit.nat.205

loop.body.205:                                    ; preds = %loop.header.205
  %loop.rel.i85 = sub i64 %counter.load83, 0
  store i64 1, ptr %loop.step.205, align 8
  %arr.elem.gep86 = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load83
  %arr.elem.raw87 = load i64, ptr %arr.elem.gep86, align 8
  %slot.i2p88 = inttoptr i64 %arr.elem.raw87 to ptr
  store i64 %loop.rel.i85, ptr %var._i89, align 8
  store ptr %slot.i2p88, ptr %var._90, align 8
  store ptr %slot.i2p88, ptr %var.p, align 8
  %var.load91 = load ptr, ptr %var.p, align 8
  %a.load92 = load ptr, ptr %var.wr, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

loop.exit.nat.205:                                ; preds = %loop.header.205
  br label %loop.exit.205

loop.latch.205:                                   ; preds = %a.store106
  %step.val120 = load i64, ptr %loop.step.205, align 8
  %loop.next121 = add i64 %counter.load83, %step.val120
  store i64 %loop.next121, ptr %loop.idx.205, align 8
  br label %loop.header.205

loop.exit.205:                                    ; preds = %loop.exit.nat.205
  %var.load122 = load ptr, ptr %var.tr, align 8
  %a.load123 = load ptr, ptr %var.tr, align 8
  %a.null124 = icmp eq ptr %a.load123, null
  br i1 %a.null124, label %a.create125, label %a.after126

a.create94:                                       ; preds = %loop.body.205
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 24)
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 128)
  %a.len.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 0
  store i64 0, ptr %a.len.gep100, align 8
  %a.data.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 1
  store ptr %a.buf99, ptr %a.data.gep101, align 8
  %a.cap.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 2
  store i64 16, ptr %a.cap.gep102, align 8
  store ptr %a.create97, ptr %var.wr, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %loop.body.205
  %a.load2103 = load ptr, ptr %var.wr, align 8
  br label %a.check104

a.check104:                                       ; preds = %a.after95
  %a.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.len108 = load i64, ptr %a.len107, align 8
  %a.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 2
  %a.cap110 = load i64, ptr %a.cap109, align 8
  %a.needs.grow111 = icmp eq i64 %a.len108, %a.cap110
  br i1 %a.needs.grow111, label %a.grow105, label %a.store106

a.grow105:                                        ; preds = %a.check104
  call void @dva_array_grow(ptr %a.load2103)
  br label %a.store106

a.store106:                                       ; preds = %a.grow105, %a.check104
  %a.cur.data112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 1
  %a.cur.data113 = load ptr, ptr %a.cur.data112, align 8
  %a.cur.len114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.cur.len115 = load i64, ptr %a.cur.len114, align 8
  %a.elem.gep116 = getelementptr i64, ptr %a.cur.data113, i64 %a.cur.len115
  %slot.p2i117 = ptrtoint ptr %var.load91 to i64
  store i64 %slot.p2i117, ptr %a.elem.gep116, align 8
  %a.next.len118 = add i64 %a.cur.len115, 1
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  store i64 %a.next.len118, ptr %b.len.gep119, align 8
  br label %loop.latch.205

a.create125:                                      ; preds = %loop.exit.205
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 24)
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 128)
  %a.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 0
  store i64 0, ptr %a.len.gep131, align 8
  %a.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 1
  store ptr %a.buf130, ptr %a.data.gep132, align 8
  %a.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep133, align 8
  store ptr %a.create128, ptr %var.tr, align 8
  br label %a.after126

a.after126:                                       ; preds = %a.create125, %loop.exit.205
  %a.load2134 = load ptr, ptr %var.tr, align 8
  %var.load135 = load ptr, ptr %var.wh, align 8
  %a.load136 = load ptr, ptr %var.wh, align 8
  %a.null137 = icmp eq ptr %a.load136, null
  br i1 %a.null137, label %a.create138, label %a.after139

a.create138:                                      ; preds = %a.after126
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 128)
  %a.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 0
  store i64 0, ptr %a.len.gep144, align 8
  %a.data.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 1
  store ptr %a.buf143, ptr %a.data.gep145, align 8
  %a.cap.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep146, align 8
  store ptr %a.create141, ptr %var.wh, align 8
  br label %a.after139

a.after139:                                       ; preds = %a.create138, %a.after126
  %a.load2147 = load ptr, ptr %var.wh, align 8
  %var.load148 = load ptr, ptr %var.wr, align 8
  %a.load149 = load ptr, ptr %var.wr, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

a.create151:                                      ; preds = %a.after139
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
  store ptr %a.create154, ptr %var.wr, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %a.after139
  %a.load2160 = load ptr, ptr %var.wr, align 8
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2134, ptr %rec.fld, align 8
  %rec.fld162 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2147, ptr %rec.fld162, align 8
  %rec.fld163 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2160, ptr %rec.fld163, align 8
  ret ptr %rec.alloc
}

define void @"type_env::init_restore"(ptr %0, ptr %1) #0 {
entry:
  %var.snap = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.snap, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.snap, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  ret void
}

define ptr @"type_env::init_merge_two"(ptr %0, ptr %1) #0 {
entry:
  %var._157 = alloca ptr, align 8
  %var._i156 = alloca i64, align 8
  %var.path = alloca ptr, align 8
  %loop.step.209 = alloca i64, align 8
  %loop.idx.209 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._97 = alloca ptr, align 8
  %var._i96 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.208 = alloca i64, align 8
  %loop.idx.208 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._30 = alloca ptr, align 8
  %var._i29 = alloca i64, align 8
  %var.t2 = alloca ptr, align 8
  %loop.step.207 = alloca i64, align 8
  %loop.idx.207 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.206 = alloca i64, align 8
  %loop.idx.206 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len2 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data3 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.206, align 8
  br label %loop.header.206

loop.header.206:                                  ; preds = %loop.latch.206, %entry
  %counter.load = load i64, ptr %loop.idx.206, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.206, label %loop.exit.nat.206

loop.body.206:                                    ; preds = %loop.header.206
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.206, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.206:                                ; preds = %loop.header.206
  br label %loop.exit.206

loop.latch.206:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.206, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.206, align 8
  br label %loop.header.206

loop.exit.206:                                    ; preds = %loop.exit.nat.206
  %var.load16 = load ptr, ptr %var.b, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %arr.cycle.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 0
  %arr.cycle.len20 = load i64, ptr %arr.cycle.len19, align 8
  %arr.cycle.data21 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data21, align 8
  store i64 0, ptr %loop.idx.207, align 8
  br label %loop.header.207

a.create:                                         ; preds = %loop.body.206
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.206
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load4 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.206

loop.header.207:                                  ; preds = %loop.latch.207, %loop.exit.206
  %counter.load23 = load i64, ptr %loop.idx.207, align 8
  %loop.cond24 = icmp slt i64 %counter.load23, %arr.cycle.len20
  br i1 %loop.cond24, label %loop.body.207, label %loop.exit.nat.207

loop.body.207:                                    ; preds = %loop.header.207
  %loop.rel.i25 = sub i64 %counter.load23, 0
  store i64 1, ptr %loop.step.207, align 8
  %arr.elem.gep26 = getelementptr i64, ptr %arr.cycle.data22, i64 %counter.load23
  %arr.elem.raw27 = load i64, ptr %arr.elem.gep26, align 8
  %slot.i2p28 = inttoptr i64 %arr.elem.raw27 to ptr
  store i64 %loop.rel.i25, ptr %var._i29, align 8
  store ptr %slot.i2p28, ptr %var._30, align 8
  store ptr %slot.i2p28, ptr %var.t2, align 8
  %var.load31 = load ptr, ptr %var.tr, align 8
  %a.load32 = load ptr, ptr %var.tr, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

loop.exit.nat.207:                                ; preds = %loop.header.207
  br label %loop.exit.207

loop.latch.207:                                   ; preds = %choice.exit
  %step.val74 = load i64, ptr %loop.step.207, align 8
  %loop.next75 = add i64 %counter.load23, %step.val74
  store i64 %loop.next75, ptr %loop.idx.207, align 8
  br label %loop.header.207

loop.exit.207:                                    ; preds = %loop.exit.nat.207
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.new77, ptr %var.wh, align 8
  %var.load83 = load ptr, ptr %var.a, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %arr.cycle.len86 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 0
  %arr.cycle.len87 = load i64, ptr %arr.cycle.len86, align 8
  %arr.cycle.data88 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 1
  %arr.cycle.data89 = load ptr, ptr %arr.cycle.data88, align 8
  store i64 0, ptr %loop.idx.208, align 8
  br label %loop.header.208

a.create34:                                       ; preds = %loop.body.207
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
  store ptr %a.create37, ptr %var.tr, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %loop.body.207
  %a.load243 = load ptr, ptr %var.tr, align 8
  %var.load44 = load ptr, ptr %var.t2, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %a.load243, ptr %var.load44)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after35
  %var.load45 = load ptr, ptr %var.t2, align 8
  %a.load46 = load ptr, ptr %var.tr, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

choice.exit:                                      ; preds = %a.store60, %a.after35
  br label %loop.latch.207

a.create48:                                       ; preds = %choice.then
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
  store ptr %a.create51, ptr %var.tr, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.then
  %a.load257 = load ptr, ptr %var.tr, align 8
  br label %a.check58

a.check58:                                        ; preds = %a.after49
  %a.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.len62 = load i64, ptr %a.len61, align 8
  %a.cap63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 2
  %a.cap64 = load i64, ptr %a.cap63, align 8
  %a.needs.grow65 = icmp eq i64 %a.len62, %a.cap64
  br i1 %a.needs.grow65, label %a.grow59, label %a.store60

a.grow59:                                         ; preds = %a.check58
  call void @dva_array_grow(ptr %a.load257)
  br label %a.store60

a.store60:                                        ; preds = %a.grow59, %a.check58
  %a.cur.data66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.cur.data67 = load ptr, ptr %a.cur.data66, align 8
  %a.cur.len68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.cur.len69 = load i64, ptr %a.cur.len68, align 8
  %a.elem.gep70 = getelementptr i64, ptr %a.cur.data67, i64 %a.cur.len69
  %slot.p2i71 = ptrtoint ptr %var.load45 to i64
  store i64 %slot.p2i71, ptr %a.elem.gep70, align 8
  %a.next.len72 = add i64 %a.cur.len69, 1
  %b.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  store i64 %a.next.len72, ptr %b.len.gep73, align 8
  br label %choice.exit

loop.header.208:                                  ; preds = %loop.latch.208, %loop.exit.207
  %counter.load90 = load i64, ptr %loop.idx.208, align 8
  %loop.cond91 = icmp slt i64 %counter.load90, %arr.cycle.len87
  br i1 %loop.cond91, label %loop.body.208, label %loop.exit.nat.208

loop.body.208:                                    ; preds = %loop.header.208
  %loop.rel.i92 = sub i64 %counter.load90, 0
  store i64 1, ptr %loop.step.208, align 8
  %arr.elem.gep93 = getelementptr i64, ptr %arr.cycle.data89, i64 %counter.load90
  %arr.elem.raw94 = load i64, ptr %arr.elem.gep93, align 8
  %slot.i2p95 = inttoptr i64 %arr.elem.raw94 to ptr
  store i64 %loop.rel.i92, ptr %var._i96, align 8
  store ptr %slot.i2p95, ptr %var._97, align 8
  store ptr %slot.i2p95, ptr %var.name, align 8
  %var.load98 = load ptr, ptr %var.b, align 8
  %fld.gep99 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load98, i32 0, i32 1
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %var.load101 = load ptr, ptr %var.name, align 8
  %call.res102 = call i1 @"type_env::init_has_name"(ptr %fld.load100, ptr %var.load101)
  br i1 %call.res102, label %choice.then103, label %choice.exit104

loop.exit.nat.208:                                ; preds = %loop.header.208
  br label %loop.exit.208

loop.latch.208:                                   ; preds = %choice.exit104
  %step.val134 = load i64, ptr %loop.step.208, align 8
  %loop.next135 = add i64 %counter.load90, %step.val134
  store i64 %loop.next135, ptr %loop.idx.208, align 8
  br label %loop.header.208

loop.exit.208:                                    ; preds = %loop.exit.nat.208
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 128)
  %a.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 0
  store i64 0, ptr %a.len.gep140, align 8
  %a.data.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 1
  store ptr %a.buf139, ptr %a.data.gep141, align 8
  %a.cap.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 2
  store i64 16, ptr %a.cap.gep142, align 8
  store ptr %a.new137, ptr %var.wr, align 8
  %var.load143 = load ptr, ptr %var.a, align 8
  %fld.gep144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load143, i32 0, i32 2
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %arr.cycle.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 0
  %arr.cycle.len147 = load i64, ptr %arr.cycle.len146, align 8
  %arr.cycle.data148 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 1
  %arr.cycle.data149 = load ptr, ptr %arr.cycle.data148, align 8
  store i64 0, ptr %loop.idx.209, align 8
  br label %loop.header.209

choice.then103:                                   ; preds = %loop.body.208
  %var.load105 = load ptr, ptr %var.name, align 8
  %a.load106 = load ptr, ptr %var.wh, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

choice.exit104:                                   ; preds = %a.store120, %loop.body.208
  br label %loop.latch.208

a.create108:                                      ; preds = %choice.then103
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  %a.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 0
  store i64 0, ptr %a.len.gep114, align 8
  %a.data.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf113, ptr %a.data.gep115, align 8
  %a.cap.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep116, align 8
  store ptr %a.create111, ptr %var.wh, align 8
  br label %a.after109

a.after109:                                       ; preds = %a.create108, %choice.then103
  %a.load2117 = load ptr, ptr %var.wh, align 8
  br label %a.check118

a.check118:                                       ; preds = %a.after109
  %a.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.len122 = load i64, ptr %a.len121, align 8
  %a.cap123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 2
  %a.cap124 = load i64, ptr %a.cap123, align 8
  %a.needs.grow125 = icmp eq i64 %a.len122, %a.cap124
  br i1 %a.needs.grow125, label %a.grow119, label %a.store120

a.grow119:                                        ; preds = %a.check118
  call void @dva_array_grow(ptr %a.load2117)
  br label %a.store120

a.store120:                                       ; preds = %a.grow119, %a.check118
  %a.cur.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 1
  %a.cur.data127 = load ptr, ptr %a.cur.data126, align 8
  %a.cur.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.cur.len129 = load i64, ptr %a.cur.len128, align 8
  %a.elem.gep130 = getelementptr i64, ptr %a.cur.data127, i64 %a.cur.len129
  %slot.p2i131 = ptrtoint ptr %var.load105 to i64
  store i64 %slot.p2i131, ptr %a.elem.gep130, align 8
  %a.next.len132 = add i64 %a.cur.len129, 1
  %b.len.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  store i64 %a.next.len132, ptr %b.len.gep133, align 8
  br label %choice.exit104

loop.header.209:                                  ; preds = %loop.latch.209, %loop.exit.208
  %counter.load150 = load i64, ptr %loop.idx.209, align 8
  %loop.cond151 = icmp slt i64 %counter.load150, %arr.cycle.len147
  br i1 %loop.cond151, label %loop.body.209, label %loop.exit.nat.209

loop.body.209:                                    ; preds = %loop.header.209
  %loop.rel.i152 = sub i64 %counter.load150, 0
  store i64 1, ptr %loop.step.209, align 8
  %arr.elem.gep153 = getelementptr i64, ptr %arr.cycle.data149, i64 %counter.load150
  %arr.elem.raw154 = load i64, ptr %arr.elem.gep153, align 8
  %slot.i2p155 = inttoptr i64 %arr.elem.raw154 to ptr
  store i64 %loop.rel.i152, ptr %var._i156, align 8
  store ptr %slot.i2p155, ptr %var._157, align 8
  store ptr %slot.i2p155, ptr %var.path, align 8
  %var.load158 = load ptr, ptr %var.b, align 8
  %fld.gep159 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load158, i32 0, i32 2
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.path, align 8
  %call.res162 = call i1 @"type_env::init_has_name"(ptr %fld.load160, ptr %var.load161)
  br i1 %call.res162, label %choice.then163, label %choice.exit164

loop.exit.nat.209:                                ; preds = %loop.header.209
  br label %loop.exit.209

loop.latch.209:                                   ; preds = %choice.exit164
  %step.val194 = load i64, ptr %loop.step.209, align 8
  %loop.next195 = add i64 %counter.load150, %step.val194
  store i64 %loop.next195, ptr %loop.idx.209, align 8
  br label %loop.header.209

loop.exit.209:                                    ; preds = %loop.exit.nat.209
  %var.load196 = load ptr, ptr %var.tr, align 8
  %a.load197 = load ptr, ptr %var.tr, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

choice.then163:                                   ; preds = %loop.body.209
  %var.load165 = load ptr, ptr %var.path, align 8
  %a.load166 = load ptr, ptr %var.wr, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

choice.exit164:                                   ; preds = %a.store180, %loop.body.209
  br label %loop.latch.209

a.create168:                                      ; preds = %choice.then163
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 128)
  %a.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 0
  store i64 0, ptr %a.len.gep174, align 8
  %a.data.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 1
  store ptr %a.buf173, ptr %a.data.gep175, align 8
  %a.cap.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep176, align 8
  store ptr %a.create171, ptr %var.wr, align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %choice.then163
  %a.load2177 = load ptr, ptr %var.wr, align 8
  br label %a.check178

a.check178:                                       ; preds = %a.after169
  %a.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.len182 = load i64, ptr %a.len181, align 8
  %a.cap183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 2
  %a.cap184 = load i64, ptr %a.cap183, align 8
  %a.needs.grow185 = icmp eq i64 %a.len182, %a.cap184
  br i1 %a.needs.grow185, label %a.grow179, label %a.store180

a.grow179:                                        ; preds = %a.check178
  call void @dva_array_grow(ptr %a.load2177)
  br label %a.store180

a.store180:                                       ; preds = %a.grow179, %a.check178
  %a.cur.data186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 1
  %a.cur.data187 = load ptr, ptr %a.cur.data186, align 8
  %a.cur.len188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.cur.len189 = load i64, ptr %a.cur.len188, align 8
  %a.elem.gep190 = getelementptr i64, ptr %a.cur.data187, i64 %a.cur.len189
  %slot.p2i191 = ptrtoint ptr %var.load165 to i64
  store i64 %slot.p2i191, ptr %a.elem.gep190, align 8
  %a.next.len192 = add i64 %a.cur.len189, 1
  %b.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  store i64 %a.next.len192, ptr %b.len.gep193, align 8
  br label %choice.exit164

a.create199:                                      ; preds = %loop.exit.209
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 24)
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 128)
  %a.len.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 0
  store i64 0, ptr %a.len.gep205, align 8
  %a.data.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 1
  store ptr %a.buf204, ptr %a.data.gep206, align 8
  %a.cap.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep207, align 8
  store ptr %a.create202, ptr %var.tr, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %loop.exit.209
  %a.load2208 = load ptr, ptr %var.tr, align 8
  %var.load209 = load ptr, ptr %var.wh, align 8
  %a.load210 = load ptr, ptr %var.wh, align 8
  %a.null211 = icmp eq ptr %a.load210, null
  br i1 %a.null211, label %a.create212, label %a.after213

a.create212:                                      ; preds = %a.after200
  %arena.cur214 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 24)
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 128)
  %a.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 0
  store i64 0, ptr %a.len.gep218, align 8
  %a.data.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 1
  store ptr %a.buf217, ptr %a.data.gep219, align 8
  %a.cap.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 2
  store i64 16, ptr %a.cap.gep220, align 8
  store ptr %a.create215, ptr %var.wh, align 8
  br label %a.after213

a.after213:                                       ; preds = %a.create212, %a.after200
  %a.load2221 = load ptr, ptr %var.wh, align 8
  %var.load222 = load ptr, ptr %var.wr, align 8
  %a.load223 = load ptr, ptr %var.wr, align 8
  %a.null224 = icmp eq ptr %a.load223, null
  br i1 %a.null224, label %a.create225, label %a.after226

a.create225:                                      ; preds = %a.after213
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 24)
  %arena.cur229 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 128)
  %a.len.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 0
  store i64 0, ptr %a.len.gep231, align 8
  %a.data.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 1
  store ptr %a.buf230, ptr %a.data.gep232, align 8
  %a.cap.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 2
  store i64 16, ptr %a.cap.gep233, align 8
  store ptr %a.create228, ptr %var.wr, align 8
  br label %a.after226

a.after226:                                       ; preds = %a.create225, %a.after213
  %a.load2234 = load ptr, ptr %var.wr, align 8
  %arena.cur235 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2208, ptr %rec.fld, align 8
  %rec.fld236 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2221, ptr %rec.fld236, align 8
  %rec.fld237 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2234, ptr %rec.fld237, align 8
  ret ptr %rec.alloc
}

define i1 @"type_env::init_is_fully_init"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.path = alloca ptr, align 8
  %var._13 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.211 = alloca i64, align 8
  %loop.idx.211 = alloca i64, align 8
  %"var.all_wr'" = alloca i1, align 1
  %var.flds = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_is_tracked"(ptr %var.load, ptr %var.load1)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %or.210.then, label %or.210.else

or.210.then:                                      ; preds = %entry
  br label %or.210.exit

or.210.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.name, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.210.exit

or.210.exit:                                      ; preds = %or.210.else, %or.210.then
  %or.210.phi = phi i1 [ %nottmp, %or.210.then ], [ %call.res5, %or.210.else ]
  br i1 %or.210.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.210.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.210.exit
  %var.load6 = load ptr, ptr %var.ut, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit7, %choice.then
  %choice.res72 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit7 ]
  ret i1 %choice.res72

choice.exit7:                                     ; preds = %or.212.exit, %loop.exit.211
  %choice.res = phi i1 [ %var.load62, %loop.exit.211 ], [ %or.212.phi, %or.212.exit ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.else
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.flds, align 8
  store i1 true, ptr %"var.all_wr'", align 1
  %var.load8 = load ptr, ptr %var.flds, align 8
  %a.load = load ptr, ptr %var.flds, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next:                                      ; preds = %choice.else
  %var.load63 = load ptr, ptr %var.env, align 8
  %var.load64 = load ptr, ptr %var.name, align 8
  %call.res65 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load63, ptr %var.load64)
  br i1 %call.res65, label %or.212.then, label %or.212.else

a.create:                                         ; preds = %choice.case
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create9, ptr %var.flds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case
  %a.load2 = load ptr, ptr %var.flds, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len11 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data12 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.211, align 8
  %cycle.prev.u = load ptr, ptr %var._, align 8
  br label %loop.header.211

loop.header.211:                                  ; preds = %loop.latch.211, %a.after
  %counter.load = load i64, ptr %loop.idx.211, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len11
  br i1 %loop.cond, label %loop.body.211, label %loop.exit.nat.211

loop.body.211:                                    ; preds = %loop.header.211
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.211, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data12, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._13, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load14 = load ptr, ptr %var.f, align 8
  %fld.gep15 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len19 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len19
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.211:                                ; preds = %loop.header.211
  br label %loop.exit.211

loop.latch.211:                                   ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.211, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.211, align 8
  br label %loop.header.211

loop.exit.211:                                    ; preds = %choice.then60, %loop.exit.nat.211
  store ptr %cycle.prev.u, ptr %var._, align 8
  %var.load62 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

str.eq.then:                                      ; preds = %loop.body.211
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %eq.lhs.data20 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data20, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.211
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then21, label %choice.exit22

choice.then21:                                    ; preds = %str.eq.merge
  %var.load23 = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %cat.seg24 = load i64, ptr %cat.seg, align 8
  %cat.seg25 = and i64 %cat.seg24, 281474976710655
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %cat.seg27 = load ptr, ptr %cat.seg26, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %var.load28 = load ptr, ptr %var.f, align 8
  %fld.gep29 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %cat.seg31 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 0
  %cat.seg32 = load i64, ptr %cat.seg31, align 8
  %cat.seg33 = and i64 %cat.seg32, 281474976710655
  %cat.seg34 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 1
  %cat.seg35 = load ptr, ptr %cat.seg34, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg25, i64 1)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len36

choice.exit22:                                    ; preds = %choice.exit61, %str.eq.merge
  br label %loop.latch.211

cat.sum.len36:                                    ; preds = %abort.dead, %choice.then21
  %cat.sum.len37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg33)
  %sum38 = extractvalue { i64, i1 } %cat.sum.len37, 0
  %ovf39 = extractvalue { i64, i1 } %cat.sum.len37, 1
  br i1 %ovf39, label %str_overflow_abort41, label %cat.sum.len40

str_overflow_abort:                               ; preds = %choice.then21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len36

cat.sum.len40:                                    ; preds = %abort.dead42, %cat.sum.len36
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum38, i64 1)
  %sum43 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.tot.len45

str_overflow_abort41:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %cat.sum.len40

concat.tot.len45:                                 ; preds = %abort.dead47, %cat.sum.len40
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg27, i64 %cat.seg25, i1 false)
  %cat.off = add i64 0, %cat.seg25
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off50 = add i64 %cat.off, 1
  %cat.dst51 = getelementptr i8, ptr %concat.buf, i64 %cat.off50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst51, ptr align 1 %cat.seg35, i64 %cat.seg33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum38
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum38, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.path, align 8
  %var.load53 = load ptr, ptr %var.env, align 8
  %fld.gep54 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load53, i32 0, i32 4
  %fld.gep55 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep54, i32 0, i32 2
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %var.load57 = load ptr, ptr %var.path, align 8
  %call.res58 = call i1 @"type_env::init_has_name"(ptr %fld.load56, ptr %var.load57)
  %nottmp59 = xor i1 %call.res58, true
  br i1 %nottmp59, label %choice.then60, label %choice.exit61

str_overflow_abort46:                             ; preds = %cat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %concat.tot.len45

choice.then60:                                    ; preds = %concat.tot.len45
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.211

choice.exit61:                                    ; preds = %concat.tot.len45
  br label %choice.exit22

or.212.then:                                      ; preds = %choice.next
  br label %or.212.exit

or.212.else:                                      ; preds = %choice.next
  %var.load66 = load ptr, ptr %var.env, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load66, i32 0, i32 4
  %fld.gep68 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep67, i32 0, i32 2
  %fld.load69 = load ptr, ptr %fld.gep68, align 8
  %var.load70 = load ptr, ptr %var.name, align 8
  %call.res71 = call i1 @"type_env::init_has_name"(ptr %fld.load69, ptr %var.load70)
  br label %or.212.exit

or.212.exit:                                      ; preds = %or.212.else, %or.212.then
  %or.212.phi = phi i1 [ %call.res65, %or.212.then ], [ %call.res71, %or.212.else ]
  br label %choice.exit7
}

define void @"type_env::bind_generic"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.gens = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.gens, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.gens, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.gens, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.gens, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len7 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap8 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len7, %a.cap8
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data9 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len10 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data9, i64 %a.cur.len10
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len10, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load11 = load ptr, ptr %var.env, align 8
  %var.load12 = load ptr, ptr %var.gens, align 8
  %a.load13 = load ptr, ptr %var.gens, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

a.create15:                                       ; preds = %a.store
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var.gens, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %a.store
  %a.load224 = load ptr, ptr %var.gens, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load11, i32 0, i32 5
  store ptr %a.load224, ptr %fld.gep25, align 8
  ret void
}

define { i1, i64 } @"type_env::lookup_generic_exact"(ptr %0, ptr %1) #0 {
entry:
  %var.g = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.214 = alloca i64, align 8
  %loop.idx.214 = alloca i64, align 8
  %"var.res'" = alloca { i1, i64 }, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.214, align 8
  br label %loop.header.214

loop.header.214:                                  ; preds = %loop.latch.214, %entry
  %counter.load = load i64, ptr %loop.idx.214, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.214, label %loop.exit.nat.214

loop.body.214:                                    ; preds = %loop.header.214
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.214, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 5
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load9, i32 0, i32 5
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.214:                                ; preds = %loop.header.214
  br label %loop.exit.214

loop.latch.214:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.214, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.214, align 8
  br label %loop.header.214

loop.exit.214:                                    ; preds = %choice.then, %loop.exit.nat.214
  %var.load52 = load { i1, i64 }, ptr %"var.res'", align 8
  ret { i1, i64 } %var.load52

a.rd.check:                                       ; preds = %loop.body.214
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load12, 0
  %a.rd.lt = icmp slt i64 %var.load12, %a.rd.len13
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 %var.load12
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.214
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 0
  store i64 4011, ptr %err.code.gep17, align 8
  %err.msg.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep18, align 8
  %err.file.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep19, align 8
  %err.line.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 3
  store i64 0, ptr %err.line.gep20, align 8
  %err.col.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 4
  store i64 0, ptr %err.col.gep21, align 8
  %err.ctx.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 5
  %err.ctx0.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 0
  store i64 %var.load12, ptr %err.ctx0.gep23, align 8
  %err.ctx1.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep24, align 8
  %err.p2i25 = ptrtoint ptr %err.alloc16 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i25, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.215, label %unwrap.abort.215

unwrap.pos.215:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.g, align 8
  %var.load38 = load ptr, ptr %var.g, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %var.load41 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %eq.rhs.len44 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len45 = and i64 %eq.rhs.len44, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len43, %eq.rhs.len45
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

unwrap.abort.215:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep30, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len31 = load i64, ptr %err.msg.len, align 8
  %err.msg.len32 = and i64 %err.msg.len31, 281474976710655
  %err.msg.len3233 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data34 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len35 = load i64, ptr %err.file.len, align 8
  %err.file.len36 = and i64 %err.file.len35, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len36 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data37 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3233, ptr %err.msg.data34, i32 %err.file.len32, ptr %err.file.data37, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.215
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len43)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.215
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load48 = load ptr, ptr %var.g, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr }, ptr %var.load48, i32 0, i32 1
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %p.to.i64 = ptrtoint ptr %fld.load50 to i64
  %ram.pay51 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  store { i1, i64 } %ram.pay51, ptr %"var.res'", align 8
  br label %loop.exit.214

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.214
}

define { i1, i64 } @"type_env::lookup_generic"(ptr %0, ptr %1) #0 {
entry:
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pub = alloca { i1, i64 }, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.216.then, label %and.216.else

and.216.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.216.exit

and.216.else:                                     ; preds = %str.eq.merge
  br label %and.216.exit

and.216.exit:                                     ; preds = %and.216.else, %and.216.then
  %and.216.phi = phi i1 [ %nottmp, %and.216.then ], [ %str.neq, %and.216.else ]
  br i1 %and.216.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.216.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %str.tag12 = lshr i64 %cat.seg10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

choice.exit:                                      ; preds = %ret.dead117, %and.216.exit
  %var.load118 = load ptr, ptr %var.env, align 8
  %var.load119 = load ptr, ptr %var.name, align 8
  %call.res120 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load118, ptr %var.load119)
  ret { i1, i64 } %call.res120

str_ok13:                                         ; preds = %tag.slow_check18, %choice.then
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg20 = load ptr, ptr %cat.seg19, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load21 = load ptr, ptr %var.name, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check18:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok13
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len34

tag.slow_check31:                                 ; preds = %str_ok13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len34:                                    ; preds = %abort.dead, %str_ok26
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len34

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len34
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum41)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg20, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off47 = add i64 %cat.off, 2
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res50 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load6, ptr %concat.str)
  store { i1, i64 } %call.res50, ptr %var.pub, align 8
  %var.load51 = load { i1, i64 }, ptr %var.pub, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load51, 0
  br i1 %ram.tag, label %choice.then52, label %choice.exit53

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

choice.then52:                                    ; preds = %concat.tot.len43
  %ram.pay = extractvalue { i1, i64 } %var.load51, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.p, align 8
  %var.load54 = load ptr, ptr %var.p, align 8
  %p.to.i64 = ptrtoint ptr %var.load54 to i64
  %ram.pay55 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay55

choice.exit53:                                    ; preds = %ret.dead, %concat.tot.len43
  %var.load56 = load ptr, ptr %var.env, align 8
  %var.load57 = load ptr, ptr %var.env, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load57, i32 0, i32 8
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %cat.seg60 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %cat.seg61 = load i64, ptr %cat.seg60, align 8
  %cat.seg62 = and i64 %cat.seg61, 281474976710655
  %str.tag63 = lshr i64 %cat.seg61, 48
  %tag.immortal65 = icmp eq i64 %str.tag63, 0
  %active.gen66 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current67 = icmp eq i64 %str.tag63, %active.gen66
  %tag.fast.ok68 = or i1 %tag.immortal65, %tag.current67
  br i1 %tag.fast.ok68, label %str_ok64, label %tag.slow_check69

ret.dead:                                         ; No predecessors!
  br label %choice.exit53

str_ok64:                                         ; preds = %tag.slow_check69, %choice.exit53
  %cat.seg70 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %cat.seg71 = load ptr, ptr %cat.seg70, align 8
  %cat.lit.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load73 = load ptr, ptr %var.name, align 8
  %cat.seg74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %cat.seg75 = load i64, ptr %cat.seg74, align 8
  %cat.seg76 = and i64 %cat.seg75, 281474976710655
  %str.tag77 = lshr i64 %cat.seg75, 48
  %tag.immortal79 = icmp eq i64 %str.tag77, 0
  %active.gen80 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current81 = icmp eq i64 %str.tag77, %active.gen80
  %tag.fast.ok82 = or i1 %tag.immortal79, %tag.current81
  br i1 %tag.fast.ok82, label %str_ok78, label %tag.slow_check83

tag.slow_check69:                                 ; preds = %choice.exit53
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag63)
  br label %str_ok64

str_ok78:                                         ; preds = %tag.slow_check83, %str_ok64
  %cat.seg84 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %cat.seg85 = load ptr, ptr %cat.seg84, align 8
  %cat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg62, i64 3)
  %sum87 = extractvalue { i64, i1 } %cat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %cat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %cat.sum.len89

tag.slow_check83:                                 ; preds = %str_ok64
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag77)
  br label %str_ok78

cat.sum.len89:                                    ; preds = %abort.dead91, %str_ok78
  %cat.sum.len92 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 %cat.seg76)
  %sum93 = extractvalue { i64, i1 } %cat.sum.len92, 0
  %ovf94 = extractvalue { i64, i1 } %cat.sum.len92, 1
  br i1 %ovf94, label %str_overflow_abort96, label %cat.sum.len95

str_overflow_abort90:                             ; preds = %str_ok78
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead91:                                     ; No predecessors!
  br label %cat.sum.len89

cat.sum.len95:                                    ; preds = %abort.dead97, %cat.sum.len89
  %concat.tot.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum93, i64 1)
  %sum99 = extractvalue { i64, i1 } %concat.tot.len98, 0
  %ovf100 = extractvalue { i64, i1 } %concat.tot.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %concat.tot.len101

str_overflow_abort96:                             ; preds = %cat.sum.len89
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %cat.sum.len95

concat.tot.len101:                                ; preds = %abort.dead103, %cat.sum.len95
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %sum99)
  %cat.dst106 = getelementptr i8, ptr %concat.buf105, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst106, ptr align 1 %cat.seg71, i64 %cat.seg62, i1 false)
  %cat.off107 = add i64 0, %cat.seg62
  %cat.dst108 = getelementptr i8, ptr %concat.buf105, i64 %cat.off107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst108, ptr align 1 %cat.lit.data72, i64 3, i1 false)
  %cat.off109 = add i64 %cat.off107, 3
  %cat.dst110 = getelementptr i8, ptr %concat.buf105, i64 %cat.off109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst110, ptr align 1 %cat.seg85, i64 %cat.seg76, i1 false)
  %concat.nul111 = getelementptr i8, ptr %concat.buf105, i64 %sum93
  store i8 0, ptr %concat.nul111, align 1
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %str.build.len.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 0
  store i64 %sum93, ptr %str.build.len.gep114, align 8
  %str.build.data.gep115 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 1
  store ptr %concat.buf105, ptr %str.build.data.gep115, align 8
  %call.res116 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load56, ptr %concat.str113)
  ret { i1, i64 } %call.res116

str_overflow_abort102:                            ; preds = %cat.sum.len95
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %concat.tot.len101

ret.dead117:                                      ; No predecessors!
  br label %choice.exit
}

define { i64, ptr } @"type_env::resolve_generic_name"(ptr %0, ptr %1) #0 {
entry:
  %var.priv_name = alloca ptr, align 8
  %var.pub_name = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.217.then, label %and.217.else

and.217.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.217.exit

and.217.else:                                     ; preds = %str.eq.merge
  br label %and.217.exit

and.217.exit:                                     ; preds = %and.217.else, %and.217.then
  %and.217.phi = phi i1 [ %nottmp, %and.217.then ], [ %str.neq, %and.217.else ]
  br i1 %and.217.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.217.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %cat.seg9 = load i64, ptr %cat.seg, align 8
  %cat.seg10 = and i64 %cat.seg9, 281474976710655
  %str.tag11 = lshr i64 %cat.seg9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

choice.else:                                      ; preds = %and.217.exit
  %var.load124 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit119
  %choice.res = phi ptr [ %var.load123, %choice.exit119 ], [ %var.load124, %choice.else ]
  %ret.pack125 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack125

str_ok12:                                         ; preds = %tag.slow_check17, %choice.then
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %cat.seg19 = load ptr, ptr %cat.seg18, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load20 = load ptr, ptr %var.name, align 8
  %cat.seg21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %cat.seg22 = load i64, ptr %cat.seg21, align 8
  %cat.seg23 = and i64 %cat.seg22, 281474976710655
  %str.tag24 = lshr i64 %cat.seg22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current28 = icmp eq i64 %str.tag24, %active.gen27
  %tag.fast.ok29 = or i1 %tag.immortal26, %tag.current28
  br i1 %tag.fast.ok29, label %str_ok25, label %tag.slow_check30

tag.slow_check17:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

str_ok25:                                         ; preds = %tag.slow_check30, %str_ok12
  %cat.seg31 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %cat.seg32 = load ptr, ptr %cat.seg31, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg10, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len33

tag.slow_check30:                                 ; preds = %str_ok12
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag24)
  br label %str_ok25

cat.sum.len33:                                    ; preds = %abort.dead, %str_ok25
  %cat.sum.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg23)
  %sum35 = extractvalue { i64, i1 } %cat.sum.len34, 0
  %ovf36 = extractvalue { i64, i1 } %cat.sum.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %cat.sum.len37

str_overflow_abort:                               ; preds = %str_ok25
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len33

cat.sum.len37:                                    ; preds = %abort.dead39, %cat.sum.len33
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum35, i64 1)
  %sum40 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf41 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf41, label %str_overflow_abort43, label %concat.tot.len42

str_overflow_abort38:                             ; preds = %cat.sum.len33
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %cat.sum.len37

concat.tot.len42:                                 ; preds = %abort.dead44, %cat.sum.len37
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum40)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg19, i64 %cat.seg10, i1 false)
  %cat.off = add i64 0, %cat.seg10
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off46 = add i64 %cat.off, 2
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.seg32, i64 %cat.seg23, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum35
  store i8 0, ptr %concat.nul, align 1
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum35, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub_name, align 8
  %var.load49 = load ptr, ptr %var.env, align 8
  %var.load50 = load ptr, ptr %var.pub_name, align 8
  %call.res51 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load49, ptr %var.load50)
  %ram.tag = extractvalue { i1, i64 } %call.res51, 0
  br i1 %ram.tag, label %choice.then52, label %choice.exit53

str_overflow_abort43:                             ; preds = %cat.sum.len37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %concat.tot.len42

choice.then52:                                    ; preds = %concat.tot.len42
  %var.load54 = load ptr, ptr %var.pub_name, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load54, align 8
  ret { i64, ptr } %ret.pack

choice.exit53:                                    ; preds = %ret.dead, %concat.tot.len42
  %var.load55 = load ptr, ptr %var.env, align 8
  %fld.gep56 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load55, i32 0, i32 8
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %cat.seg58 = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 0
  %cat.seg59 = load i64, ptr %cat.seg58, align 8
  %cat.seg60 = and i64 %cat.seg59, 281474976710655
  %str.tag61 = lshr i64 %cat.seg59, 48
  %tag.immortal63 = icmp eq i64 %str.tag61, 0
  %active.gen64 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current65 = icmp eq i64 %str.tag61, %active.gen64
  %tag.fast.ok66 = or i1 %tag.immortal63, %tag.current65
  br i1 %tag.fast.ok66, label %str_ok62, label %tag.slow_check67

ret.dead:                                         ; No predecessors!
  br label %choice.exit53

str_ok62:                                         ; preds = %tag.slow_check67, %choice.exit53
  %cat.seg68 = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 1
  %cat.seg69 = load ptr, ptr %cat.seg68, align 8
  %cat.lit.data70 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load71 = load ptr, ptr %var.name, align 8
  %cat.seg72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %cat.seg73 = load i64, ptr %cat.seg72, align 8
  %cat.seg74 = and i64 %cat.seg73, 281474976710655
  %str.tag75 = lshr i64 %cat.seg73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %str.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %str_ok76, label %tag.slow_check81

tag.slow_check67:                                 ; preds = %choice.exit53
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag61)
  br label %str_ok62

str_ok76:                                         ; preds = %tag.slow_check81, %str_ok62
  %cat.seg82 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %cat.seg83 = load ptr, ptr %cat.seg82, align 8
  %cat.sum.len84 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg60, i64 3)
  %sum85 = extractvalue { i64, i1 } %cat.sum.len84, 0
  %ovf86 = extractvalue { i64, i1 } %cat.sum.len84, 1
  br i1 %ovf86, label %str_overflow_abort88, label %cat.sum.len87

tag.slow_check81:                                 ; preds = %str_ok62
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag75)
  br label %str_ok76

cat.sum.len87:                                    ; preds = %abort.dead89, %str_ok76
  %cat.sum.len90 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum85, i64 %cat.seg74)
  %sum91 = extractvalue { i64, i1 } %cat.sum.len90, 0
  %ovf92 = extractvalue { i64, i1 } %cat.sum.len90, 1
  br i1 %ovf92, label %str_overflow_abort94, label %cat.sum.len93

str_overflow_abort88:                             ; preds = %str_ok76
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %cat.sum.len87

cat.sum.len93:                                    ; preds = %abort.dead95, %cat.sum.len87
  %concat.tot.len96 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum91, i64 1)
  %sum97 = extractvalue { i64, i1 } %concat.tot.len96, 0
  %ovf98 = extractvalue { i64, i1 } %concat.tot.len96, 1
  br i1 %ovf98, label %str_overflow_abort100, label %concat.tot.len99

str_overflow_abort94:                             ; preds = %cat.sum.len87
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %cat.sum.len93

concat.tot.len99:                                 ; preds = %abort.dead101, %cat.sum.len93
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %sum97)
  %cat.dst104 = getelementptr i8, ptr %concat.buf103, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst104, ptr align 1 %cat.seg69, i64 %cat.seg60, i1 false)
  %cat.off105 = add i64 0, %cat.seg60
  %cat.dst106 = getelementptr i8, ptr %concat.buf103, i64 %cat.off105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst106, ptr align 1 %cat.lit.data70, i64 3, i1 false)
  %cat.off107 = add i64 %cat.off105, 3
  %cat.dst108 = getelementptr i8, ptr %concat.buf103, i64 %cat.off107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst108, ptr align 1 %cat.seg83, i64 %cat.seg74, i1 false)
  %concat.nul109 = getelementptr i8, ptr %concat.buf103, i64 %sum91
  store i8 0, ptr %concat.nul109, align 1
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 16)
  %str.build.len.gep112 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 0
  store i64 %sum91, ptr %str.build.len.gep112, align 8
  %str.build.data.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 1
  store ptr %concat.buf103, ptr %str.build.data.gep113, align 8
  store ptr %concat.str111, ptr %var.priv_name, align 8
  %var.load114 = load ptr, ptr %var.env, align 8
  %var.load115 = load ptr, ptr %var.priv_name, align 8
  %call.res116 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load114, ptr %var.load115)
  %ram.tag117 = extractvalue { i1, i64 } %call.res116, 0
  br i1 %ram.tag117, label %choice.then118, label %choice.exit119

str_overflow_abort100:                            ; preds = %cat.sum.len93
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %concat.tot.len99

choice.then118:                                   ; preds = %concat.tot.len99
  %var.load120 = load ptr, ptr %var.priv_name, align 8
  %ret.pack121 = load { i64, ptr }, ptr %var.load120, align 8
  ret { i64, ptr } %ret.pack121

choice.exit119:                                   ; preds = %ret.dead122, %concat.tot.len99
  %var.load123 = load ptr, ptr %var.name, align 8
  br label %choice.exit

ret.dead122:                                      ; No predecessors!
  br label %choice.exit119
}

define void @"type_env::bind_user_type"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.uts = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.uts, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load3, ptr %rec.fld5, align 8
  %a.load = load ptr, ptr %var.uts, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create7, ptr %var.uts, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.uts, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len9 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap10 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len9, %a.cap10
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data11 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len12 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data11, i64 %a.cur.len12
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len12, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.uts, align 8
  %a.load15 = load ptr, ptr %var.uts, align 8
  %a.null16 = icmp eq ptr %a.load15, null
  br i1 %a.null16, label %a.create17, label %a.after18

a.create17:                                       ; preds = %a.store
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.create20, ptr %var.uts, align 8
  br label %a.after18

a.after18:                                        ; preds = %a.create17, %a.store
  %a.load226 = load ptr, ptr %var.uts, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load13, i32 0, i32 6
  store ptr %a.load226, ptr %fld.gep27, align 8
  ret void
}

define ptr @"type_env::lookup_user_type_exact"(ptr %0, ptr %1) #0 {
entry:
  %var.u = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.219 = alloca i64, align 8
  %loop.idx.219 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.219, align 8
  br label %loop.header.219

loop.header.219:                                  ; preds = %loop.latch.219, %entry
  %counter.load = load i64, ptr %loop.idx.219, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.219, label %loop.exit.nat.219

loop.body.219:                                    ; preds = %loop.header.219
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.219, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load9, i32 0, i32 6
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.219:                                ; preds = %loop.header.219
  br label %loop.exit.219

loop.latch.219:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.219, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.219, align 8
  br label %loop.header.219

loop.exit.219:                                    ; preds = %choice.then, %loop.exit.nat.219
  %var.load49 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load49

a.rd.check:                                       ; preds = %loop.body.219
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load12, 0
  %a.rd.lt = icmp slt i64 %var.load12, %a.rd.len13
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 %var.load12
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.219
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 0
  store i64 4011, ptr %err.code.gep17, align 8
  %err.msg.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep18, align 8
  %err.file.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep19, align 8
  %err.line.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 3
  store i64 0, ptr %err.line.gep20, align 8
  %err.col.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 4
  store i64 0, ptr %err.col.gep21, align 8
  %err.ctx.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 5
  %err.ctx0.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 0
  store i64 %var.load12, ptr %err.ctx0.gep23, align 8
  %err.ctx1.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep24, align 8
  %err.p2i25 = ptrtoint ptr %err.alloc16 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i25, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.220, label %unwrap.abort.220

unwrap.pos.220:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.u, align 8
  %var.load38 = load ptr, ptr %var.u, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %var.load41 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %eq.rhs.len44 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len45 = and i64 %eq.rhs.len44, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len43, %eq.rhs.len45
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

unwrap.abort.220:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep30, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len31 = load i64, ptr %err.msg.len, align 8
  %err.msg.len32 = and i64 %err.msg.len31, 281474976710655
  %err.msg.len3233 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data34 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len35 = load i64, ptr %err.file.len, align 8
  %err.file.len36 = and i64 %err.file.len35, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len36 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data37 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.220
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.220
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3233, ptr %err.msg.data34, i32 %err.file.len32, ptr %err.file.data37, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.220
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len43)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.220
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load48 = load ptr, ptr %var.u, align 8
  store ptr %var.load48, ptr %"var.res'", align 8
  br label %loop.exit.219

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.219
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #0 {
entry:
  %var.pr = alloca ptr, align 8
  %var._120 = alloca ptr, align 8
  %var.priv = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.221.then, label %and.221.else

and.221.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.221.exit

and.221.else:                                     ; preds = %str.eq.merge
  br label %and.221.exit

and.221.exit:                                     ; preds = %and.221.else, %and.221.then
  %and.221.phi = phi i1 [ %nottmp, %and.221.then ], [ %str.neq, %and.221.else ]
  br i1 %and.221.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.221.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %str.tag12 = lshr i64 %cat.seg10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

choice.exit:                                      ; preds = %choice.exit119, %and.221.exit
  %var.load123 = load ptr, ptr %var.env, align 8
  %var.load124 = load ptr, ptr %var.name, align 8
  %call.res125 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load123, ptr %var.load124)
  ret ptr %call.res125

str_ok13:                                         ; preds = %tag.slow_check18, %choice.then
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg20 = load ptr, ptr %cat.seg19, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load21 = load ptr, ptr %var.name, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check18:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok13
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len34

tag.slow_check31:                                 ; preds = %str_ok13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len34:                                    ; preds = %abort.dead, %str_ok26
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len34

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len34
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum41)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg20, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off47 = add i64 %cat.off, 2
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res50 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load6, ptr %concat.str)
  store ptr %call.res50, ptr %var.pub, align 8
  %var.load51 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load51, null
  br i1 %niche.ne.null, label %choice.then52, label %choice.exit53

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

choice.then52:                                    ; preds = %concat.tot.len43
  store ptr %var.load51, ptr %var._, align 8
  store ptr %var.load51, ptr %var.p, align 8
  %var.load54 = load ptr, ptr %var.p, align 8
  ret ptr %var.load54

choice.exit53:                                    ; preds = %ret.dead, %concat.tot.len43
  %var.load55 = load ptr, ptr %var.env, align 8
  %var.load56 = load ptr, ptr %var.env, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load56, i32 0, i32 8
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %cat.seg59 = getelementptr inbounds { i64, ptr }, ptr %fld.load58, i32 0, i32 0
  %cat.seg60 = load i64, ptr %cat.seg59, align 8
  %cat.seg61 = and i64 %cat.seg60, 281474976710655
  %str.tag62 = lshr i64 %cat.seg60, 48
  %tag.immortal64 = icmp eq i64 %str.tag62, 0
  %active.gen65 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current66 = icmp eq i64 %str.tag62, %active.gen65
  %tag.fast.ok67 = or i1 %tag.immortal64, %tag.current66
  br i1 %tag.fast.ok67, label %str_ok63, label %tag.slow_check68

ret.dead:                                         ; No predecessors!
  br label %choice.exit53

str_ok63:                                         ; preds = %tag.slow_check68, %choice.exit53
  %cat.seg69 = getelementptr inbounds { i64, ptr }, ptr %fld.load58, i32 0, i32 1
  %cat.seg70 = load ptr, ptr %cat.seg69, align 8
  %cat.lit.data71 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load72 = load ptr, ptr %var.name, align 8
  %cat.seg73 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %cat.seg74 = load i64, ptr %cat.seg73, align 8
  %cat.seg75 = and i64 %cat.seg74, 281474976710655
  %str.tag76 = lshr i64 %cat.seg74, 48
  %tag.immortal78 = icmp eq i64 %str.tag76, 0
  %active.gen79 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current80 = icmp eq i64 %str.tag76, %active.gen79
  %tag.fast.ok81 = or i1 %tag.immortal78, %tag.current80
  br i1 %tag.fast.ok81, label %str_ok77, label %tag.slow_check82

tag.slow_check68:                                 ; preds = %choice.exit53
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag62)
  br label %str_ok63

str_ok77:                                         ; preds = %tag.slow_check82, %str_ok63
  %cat.seg83 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %cat.seg84 = load ptr, ptr %cat.seg83, align 8
  %cat.sum.len85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg61, i64 3)
  %sum86 = extractvalue { i64, i1 } %cat.sum.len85, 0
  %ovf87 = extractvalue { i64, i1 } %cat.sum.len85, 1
  br i1 %ovf87, label %str_overflow_abort89, label %cat.sum.len88

tag.slow_check82:                                 ; preds = %str_ok63
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag76)
  br label %str_ok77

cat.sum.len88:                                    ; preds = %abort.dead90, %str_ok77
  %cat.sum.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum86, i64 %cat.seg75)
  %sum92 = extractvalue { i64, i1 } %cat.sum.len91, 0
  %ovf93 = extractvalue { i64, i1 } %cat.sum.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %cat.sum.len94

str_overflow_abort89:                             ; preds = %str_ok77
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead90:                                     ; No predecessors!
  br label %cat.sum.len88

cat.sum.len94:                                    ; preds = %abort.dead96, %cat.sum.len88
  %concat.tot.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum92, i64 1)
  %sum98 = extractvalue { i64, i1 } %concat.tot.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.tot.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.tot.len100

str_overflow_abort95:                             ; preds = %cat.sum.len88
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %cat.sum.len94

concat.tot.len100:                                ; preds = %abort.dead102, %cat.sum.len94
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 %sum98)
  %cat.dst105 = getelementptr i8, ptr %concat.buf104, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst105, ptr align 1 %cat.seg70, i64 %cat.seg61, i1 false)
  %cat.off106 = add i64 0, %cat.seg61
  %cat.dst107 = getelementptr i8, ptr %concat.buf104, i64 %cat.off106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst107, ptr align 1 %cat.lit.data71, i64 3, i1 false)
  %cat.off108 = add i64 %cat.off106, 3
  %cat.dst109 = getelementptr i8, ptr %concat.buf104, i64 %cat.off108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst109, ptr align 1 %cat.seg84, i64 %cat.seg75, i1 false)
  %concat.nul110 = getelementptr i8, ptr %concat.buf104, i64 %sum92
  store i8 0, ptr %concat.nul110, align 1
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  store i64 %sum92, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  store ptr %concat.buf104, ptr %str.build.data.gep114, align 8
  %call.res115 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load55, ptr %concat.str112)
  store ptr %call.res115, ptr %var.priv, align 8
  %var.load116 = load ptr, ptr %var.priv, align 8
  %niche.ne.null117 = icmp ne ptr %var.load116, null
  br i1 %niche.ne.null117, label %choice.then118, label %choice.exit119

str_overflow_abort101:                            ; preds = %cat.sum.len94
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %concat.tot.len100

choice.then118:                                   ; preds = %concat.tot.len100
  store ptr %var.load116, ptr %var._120, align 8
  store ptr %var.load116, ptr %var.pr, align 8
  %var.load121 = load ptr, ptr %var.pr, align 8
  ret ptr %var.load121

choice.exit119:                                   ; preds = %ret.dead122, %concat.tot.len100
  br label %choice.exit

ret.dead122:                                      ; No predecessors!
  br label %choice.exit119
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline "nounwind" }
