; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
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

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_type_env() #1 {
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

define ptr @"type_env::empty_scope"() #1 {
entry:
  %var.b = alloca ptr, align 8
  store ptr null, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

define ptr @"type_env::new_init"() #1 {
entry:
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
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
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
  %arena.cur16 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new3, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.new10, ptr %rec.fld18, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::new_env"() #1 {
entry:
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
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
  %arena.cur32 = call ptr @dva_arena_current()
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = call ptr @dva_arena_current()
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
  %arena.cur45 = call ptr @dva_arena_current()
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = call ptr @dva_arena_current()
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
  %call.res = call ptr @"type_env::new_init"()
  %var.load53 = load ptr, ptr %var.generics, align 8
  %a.load54 = load ptr, ptr %var.generics, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

a.create56:                                       ; preds = %a.after44
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.generics, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %a.after44
  %a.load265 = load ptr, ptr %var.generics, align 8
  %var.load66 = load ptr, ptr %var.user_types, align 8
  %a.load67 = load ptr, ptr %var.user_types, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

a.create69:                                       ; preds = %a.after57
  %arena.cur71 = call ptr @dva_arena_current()
  %a.create72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.create72, ptr %var.user_types, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %a.after57
  %a.load278 = load ptr, ptr %var.user_types, align 8
  %arena.cur79 = call ptr @dva_arena_current()
  %m.new80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 48)
  %arena.cur81 = call ptr @dva_arena_current()
  %m.keys82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 64)
  %arena.cur83 = call ptr @dva_arena_current()
  %m.vals84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 64)
  %arena.cur85 = call ptr @dva_arena_current()
  %m.states86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states86, i8 0, i64 8, i1 false)
  %m.count.gep87 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 0
  store i64 0, ptr %m.count.gep87, align 8
  %m.cap.gep88 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 1
  store i64 8, ptr %m.cap.gep88, align 8
  %m.keys.gep89 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 2
  store ptr %m.keys82, ptr %m.keys.gep89, align 8
  %m.vals.gep90 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 3
  store ptr %m.vals84, ptr %m.vals.gep90, align 8
  %m.states.gep91 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 4
  store ptr %m.states86, ptr %m.states.gep91, align 8
  %m.tombs.gep92 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep92, align 8
  %arena.cur93 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur94 = call ptr @dva_arena_current()
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  %arena.cur99 = call ptr @dva_arena_current()
  %a.new100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = call ptr @dva_arena_current()
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  %arena.cur106 = call ptr @dva_arena_current()
  %rec.alloc107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld108 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 0
  store ptr %a.load239, ptr %rec.fld108, align 8
  %rec.fld109 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 1
  store i64 0, ptr %rec.fld109, align 8
  %rec.fld110 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 2
  store i64 0, ptr %rec.fld110, align 8
  %rec.fld111 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 3
  store ptr %a.load252, ptr %rec.fld111, align 8
  %rec.fld112 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld112, ptr align 1 %call.res, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld113 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 5
  store ptr %a.load265, ptr %rec.fld113, align 8
  %rec.fld114 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 6
  store ptr %a.load278, ptr %rec.fld114, align 8
  %rec.fld115 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 7
  store ptr %m.new80, ptr %rec.fld115, align 8
  %rec.fld116 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 8
  store ptr @str.0.struct, ptr %rec.fld116, align 8
  %rec.fld117 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 9
  store i1 false, ptr %rec.fld117, align 1
  %rec.fld118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 10
  store i1 false, ptr %rec.fld118, align 1
  %rec.fld119 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 11
  store i1 false, ptr %rec.fld119, align 1
  %rec.fld120 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 12
  store i1 false, ptr %rec.fld120, align 1
  %rec.fld121 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 13
  store ptr %a.new, ptr %rec.fld121, align 8
  %rec.fld122 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 14
  store ptr %a.new100, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 15
  store { i1, i64 } zeroinitializer, ptr %rec.fld123, align 8
  %rec.fld124 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 16
  store ptr @str.1.struct, ptr %rec.fld124, align 8
  ret ptr %rec.alloc107
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

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define void @"type_env::cache_fn_body"(ptr %0, ptr %1, ptr %2) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data8, i64 %mk.len10)
  %m.capm1 = sub i64 %m.cap4, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
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
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

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

m.done:                                           ; preds = %m.ins.slot, %m.done154, %m.overwrite
  ret void

str_gen_check16:                                  ; preds = %m.found
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen21 = load i64, ptr %mk.nlen, align 8
  %mk.nlen22 = and i64 %mk.nlen21, 281474976710655
  %str.tag23 = lshr i64 %mk.nlen21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

str_gen_check25:                                  ; preds = %str_ok17
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok17
  %mk.lenseq = icmp eq i64 %mk.slen13, %mk.nlen22
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

mk.eq.then:                                       ; preds = %str_ok26
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata30 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata31 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata30, ptr %mk.ndata31, i64 %mk.nlen22)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok26
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
  %arena.cur37 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur38 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %m.gv.bytes)
  %arena.cur39 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %m.new.cap)
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
  %m.use.tomb217 = icmp ne i64 %m.tomb11, -1
  %m.ins.idx218 = select i1 %m.use.tomb217, i64 %m.tomb11, i64 %m.idx
  %m.key.slot219 = getelementptr i64, ptr %m.keys5, i64 %m.ins.idx218
  store ptr %var.load2, ptr %m.key.slot219, align 8
  %m.val.slot220 = getelementptr i64, ptr %m.vals6, i64 %m.ins.idx218
  store i64 %slot.p2i, ptr %m.val.slot220, align 8
  %m.ins.state.slot221 = getelementptr i8, ptr %m.states7, i64 %m.ins.idx218
  store i8 1, ptr %m.ins.state.slot221, align 1
  %m.count222 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count223 = load i64, ptr %m.count222, align 8
  %m.count.next224 = add i64 %m.count223, 1
  %m.count.gep225 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next224, ptr %m.count.gep225, align 8
  %m.ins.tombs.p226 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs227 = load i64, ptr %m.ins.tombs.p226, align 8
  %m.tomb.dec228 = select i1 %m.use.tomb217, i64 1, i64 0
  %m.ins.tombs.next229 = sub i64 %m.ins.tombs227, %m.tomb.dec228
  store i64 %m.ins.tombs.next229, ptr %m.ins.tombs.p226, align 8
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

m.re.cont:                                        ; preds = %m.done70, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap125 = load i64, ptr %m.cap124, align 8
  %m.keys126 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys127 = load ptr, ptr %m.keys126, align 8
  %m.vals128 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals129 = load ptr, ptr %m.vals128, align 8
  %m.states130 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states131 = load ptr, ptr %m.states130, align 8
  %mk.data132 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data133 = load ptr, ptr %mk.data132, align 8
  %mk.len134 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len135 = load i64, ptr %mk.len134, align 8
  %mk.len136 = and i64 %mk.len135, 281474976710655
  %str.tag137 = lshr i64 %mk.len135, 48
  %str.immortal138 = icmp eq i64 %str.tag137, 0
  br i1 %str.immortal138, label %str_ok140, label %str_gen_check139

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys33, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals34, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap40 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap41 = load i64, ptr %m.cap40, align 8
  %m.keys42 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys43 = load ptr, ptr %m.keys42, align 8
  %m.vals44 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals45 = load ptr, ptr %m.vals44, align 8
  %m.states46 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states47 = load ptr, ptr %m.states46, align 8
  %mk.data48 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data49 = load ptr, ptr %mk.data48, align 8
  %mk.len50 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len51 = load i64, ptr %mk.len50, align 8
  %mk.len52 = and i64 %mk.len51, 281474976710655
  %str.tag53 = lshr i64 %mk.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_gen_check55:                                  ; preds = %m.re.ins
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %m.re.ins
  %hash.str60 = call i64 @dva_hash_string(ptr %mk.data49, i64 %mk.len52)
  %m.capm161 = sub i64 %m.cap41, 1
  %m.idx062 = and i64 %hash.str60, %m.capm161
  br label %m.loop63

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

m.loop63:                                         ; preds = %m.next68, %str_ok56
  %m.idx71 = phi i64 [ %m.idx062, %str_ok56 ], [ %m.idx.next118, %m.next68 ]
  %m.tomb72 = phi i64 [ -1, %str_ok56 ], [ %m.next.tomb116, %m.next68 ]
  %m.probe73 = phi i64 [ 0, %str_ok56 ], [ %m.probe.next119, %m.next68 ]
  %m.reached.cap74 = icmp eq i64 %m.probe73, %m.cap41
  %m.state.gep75 = getelementptr i8, ptr %m.states47, i64 %m.idx71
  %m.state76 = load i8, ptr %m.state.gep75, align 1
  %m.is.empty77 = icmp eq i8 %m.state76, 0
  %m.stop78 = or i1 %m.is.empty77, %m.reached.cap74
  br i1 %m.stop78, label %m.empty69, label %m.check.tomb64

m.check.tomb64:                                   ; preds = %m.loop63
  %m.is.tomb79 = icmp eq i8 %m.state76, 2
  br i1 %m.is.tomb79, label %m.tomb65, label %m.found66

m.tomb65:                                         ; preds = %m.check.tomb64
  %m.has.tomb80 = icmp ne i64 %m.tomb72, -1
  %m.tomb.sel81 = select i1 %m.has.tomb80, i64 %m.tomb72, i64 %m.idx71
  br label %m.next68

m.found66:                                        ; preds = %m.check.tomb64
  %m.key.slot82 = getelementptr i64, ptr %m.keys43, i64 %m.idx71
  %mk.stored83 = load ptr, ptr %m.key.slot82, align 8
  %mk.slen84 = getelementptr inbounds { i64, ptr }, ptr %mk.stored83, i32 0, i32 0
  %mk.slen85 = load i64, ptr %mk.slen84, align 8
  %mk.slen86 = and i64 %mk.slen85, 281474976710655
  %str.tag87 = lshr i64 %mk.slen85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

m.overwrite67:                                    ; preds = %mk.eq.merge107
  %m.val.slot115 = getelementptr i64, ptr %m.vals45, i64 %m.idx71
  store i64 %m.re.val, ptr %m.val.slot115, align 8
  br label %m.done70

m.next68:                                         ; preds = %mk.eq.merge107, %m.tomb65
  %m.next.tomb116 = phi i64 [ %m.tomb.sel81, %m.tomb65 ], [ %m.tomb72, %mk.eq.merge107 ]
  %m.idx.add117 = add i64 %m.idx71, 1
  %m.idx.next118 = and i64 %m.idx.add117, %m.capm161
  %m.probe.next119 = add i64 %m.probe73, 1
  br label %m.loop63

m.empty69:                                        ; preds = %m.loop63
  %m.use.tomb = icmp ne i64 %m.tomb72, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb72, i64 %m.idx71
  %m.key.slot120 = getelementptr i64, ptr %m.keys43, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot120, align 8
  %m.val.slot121 = getelementptr i64, ptr %m.vals45, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot121, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states47, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count122 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count122, 1
  %m.count.gep123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep123, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done70

m.done70:                                         ; preds = %m.empty69, %m.overwrite67
  br label %m.re.cont

str_gen_check89:                                  ; preds = %m.found66
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %m.found66
  %mk.nlen94 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen95 = load i64, ptr %mk.nlen94, align 8
  %mk.nlen96 = and i64 %mk.nlen95, 281474976710655
  %str.tag97 = lshr i64 %mk.nlen95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

str_stale91:                                      ; preds = %str_gen_check89
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

str_gen_check99:                                  ; preds = %str_ok90
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %str_ok90
  %mk.lenseq104 = icmp eq i64 %mk.slen86, %mk.nlen96
  br i1 %mk.lenseq104, label %mk.eq.then105, label %mk.eq.else106

str_stale101:                                     ; preds = %str_gen_check99
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

mk.eq.then105:                                    ; preds = %str_ok100
  %mk.sdata108 = getelementptr inbounds { i64, ptr }, ptr %mk.stored83, i32 0, i32 1
  %mk.sdata109 = load ptr, ptr %mk.sdata108, align 8
  %mk.ndata110 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata111 = load ptr, ptr %mk.ndata110, align 8
  %mk.memcmp112 = call i32 @memcmp(ptr %mk.sdata109, ptr %mk.ndata111, i64 %mk.nlen96)
  %mk.cmpeq113 = icmp eq i32 %mk.memcmp112, 0
  br label %mk.eq.merge107

mk.eq.else106:                                    ; preds = %str_ok100
  br label %mk.eq.merge107

mk.eq.merge107:                                   ; preds = %mk.eq.else106, %mk.eq.then105
  %mk.eq114 = phi i1 [ %mk.cmpeq113, %mk.eq.then105 ], [ false, %mk.eq.else106 ]
  br i1 %mk.eq114, label %m.overwrite67, label %m.next68

str_gen_check139:                                 ; preds = %m.re.done
  %arena.cur142 = call ptr @dva_arena_current()
  %tag.valid143 = call i1 @dva_arena_validate_tag(ptr %arena.cur142, i64 %str.tag137)
  br i1 %tag.valid143, label %str_ok140, label %str_stale141

str_ok140:                                        ; preds = %str_stale141, %str_gen_check139, %m.re.done
  %hash.str144 = call i64 @dva_hash_string(ptr %mk.data133, i64 %mk.len136)
  %m.capm1145 = sub i64 %m.cap125, 1
  %m.idx0146 = and i64 %hash.str144, %m.capm1145
  br label %m.loop147

str_stale141:                                     ; preds = %str_gen_check139
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok140

m.loop147:                                        ; preds = %m.next152, %str_ok140
  %m.idx155 = phi i64 [ %m.idx0146, %str_ok140 ], [ %m.idx.next202, %m.next152 ]
  %m.tomb156 = phi i64 [ -1, %str_ok140 ], [ %m.next.tomb200, %m.next152 ]
  %m.probe157 = phi i64 [ 0, %str_ok140 ], [ %m.probe.next203, %m.next152 ]
  %m.reached.cap158 = icmp eq i64 %m.probe157, %m.cap125
  %m.state.gep159 = getelementptr i8, ptr %m.states131, i64 %m.idx155
  %m.state160 = load i8, ptr %m.state.gep159, align 1
  %m.is.empty161 = icmp eq i8 %m.state160, 0
  %m.stop162 = or i1 %m.is.empty161, %m.reached.cap158
  br i1 %m.stop162, label %m.empty153, label %m.check.tomb148

m.check.tomb148:                                  ; preds = %m.loop147
  %m.is.tomb163 = icmp eq i8 %m.state160, 2
  br i1 %m.is.tomb163, label %m.tomb149, label %m.found150

m.tomb149:                                        ; preds = %m.check.tomb148
  %m.has.tomb164 = icmp ne i64 %m.tomb156, -1
  %m.tomb.sel165 = select i1 %m.has.tomb164, i64 %m.tomb156, i64 %m.idx155
  br label %m.next152

m.found150:                                       ; preds = %m.check.tomb148
  %m.key.slot166 = getelementptr i64, ptr %m.keys127, i64 %m.idx155
  %mk.stored167 = load ptr, ptr %m.key.slot166, align 8
  %mk.slen168 = getelementptr inbounds { i64, ptr }, ptr %mk.stored167, i32 0, i32 0
  %mk.slen169 = load i64, ptr %mk.slen168, align 8
  %mk.slen170 = and i64 %mk.slen169, 281474976710655
  %str.tag171 = lshr i64 %mk.slen169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

m.overwrite151:                                   ; preds = %mk.eq.merge191
  %m.val.slot199 = getelementptr i64, ptr %m.vals129, i64 %m.idx155
  store i64 %slot.p2i, ptr %m.val.slot199, align 8
  br label %m.done154

m.next152:                                        ; preds = %mk.eq.merge191, %m.tomb149
  %m.next.tomb200 = phi i64 [ %m.tomb.sel165, %m.tomb149 ], [ %m.tomb156, %mk.eq.merge191 ]
  %m.idx.add201 = add i64 %m.idx155, 1
  %m.idx.next202 = and i64 %m.idx.add201, %m.capm1145
  %m.probe.next203 = add i64 %m.probe157, 1
  br label %m.loop147

m.empty153:                                       ; preds = %m.loop147
  %m.use.tomb204 = icmp ne i64 %m.tomb156, -1
  %m.ins.idx205 = select i1 %m.use.tomb204, i64 %m.tomb156, i64 %m.idx155
  %m.key.slot206 = getelementptr i64, ptr %m.keys127, i64 %m.ins.idx205
  store ptr %var.load2, ptr %m.key.slot206, align 8
  %m.val.slot207 = getelementptr i64, ptr %m.vals129, i64 %m.ins.idx205
  store i64 %slot.p2i, ptr %m.val.slot207, align 8
  %m.ins.state.slot208 = getelementptr i8, ptr %m.states131, i64 %m.ins.idx205
  store i8 1, ptr %m.ins.state.slot208, align 1
  %m.count209 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count210 = load i64, ptr %m.count209, align 8
  %m.count.next211 = add i64 %m.count210, 1
  %m.count.gep212 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next211, ptr %m.count.gep212, align 8
  %m.ins.tombs.p213 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs214 = load i64, ptr %m.ins.tombs.p213, align 8
  %m.tomb.dec215 = select i1 %m.use.tomb204, i64 1, i64 0
  %m.ins.tombs.next216 = sub i64 %m.ins.tombs214, %m.tomb.dec215
  store i64 %m.ins.tombs.next216, ptr %m.ins.tombs.p213, align 8
  br label %m.done154

m.done154:                                        ; preds = %m.empty153, %m.overwrite151
  br label %m.done

str_gen_check173:                                 ; preds = %m.found150
  %arena.cur176 = call ptr @dva_arena_current()
  %tag.valid177 = call i1 @dva_arena_validate_tag(ptr %arena.cur176, i64 %str.tag171)
  br i1 %tag.valid177, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %m.found150
  %mk.nlen178 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen179 = load i64, ptr %mk.nlen178, align 8
  %mk.nlen180 = and i64 %mk.nlen179, 281474976710655
  %str.tag181 = lshr i64 %mk.nlen179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_stale175:                                     ; preds = %str_gen_check173
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str_gen_check183:                                 ; preds = %str_ok174
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %str_ok174
  %mk.lenseq188 = icmp eq i64 %mk.slen170, %mk.nlen180
  br i1 %mk.lenseq188, label %mk.eq.then189, label %mk.eq.else190

str_stale185:                                     ; preds = %str_gen_check183
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

mk.eq.then189:                                    ; preds = %str_ok184
  %mk.sdata192 = getelementptr inbounds { i64, ptr }, ptr %mk.stored167, i32 0, i32 1
  %mk.sdata193 = load ptr, ptr %mk.sdata192, align 8
  %mk.ndata194 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata195 = load ptr, ptr %mk.ndata194, align 8
  %mk.memcmp196 = call i32 @memcmp(ptr %mk.sdata193, ptr %mk.ndata195, i64 %mk.nlen180)
  %mk.cmpeq197 = icmp eq i32 %mk.memcmp196, 0
  br label %mk.eq.merge191

mk.eq.else190:                                    ; preds = %str_ok184
  br label %mk.eq.merge191

mk.eq.merge191:                                   ; preds = %mk.eq.else190, %mk.eq.then189
  %mk.eq198 = phi i1 [ %mk.cmpeq197, %mk.eq.then189 ], [ false, %mk.eq.else190 ]
  br i1 %mk.eq198, label %m.overwrite151, label %m.next152
}

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #1 {
entry:
  %var.body = alloca ptr, align 8
  %var._97 = alloca ptr, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
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
  %m.mem.key.slot = getelementptr i64, ptr %m.keys4, i64 %m.mem.idx
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
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit91
  %choice.res124 = phi ptr [ %var.load123, %choice.exit91 ], [ null, %choice.else ]
  ret ptr %choice.res124

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
  %m.rd.key.slot = getelementptr i64, ptr %m.keys35, i64 %m.rd.idx
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
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay92 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %m.rd.done
  %ram.pay93 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr94 = inttoptr i64 %ram.pay93 to ptr
  store ptr %pay.ptr94, ptr %var._95, align 8
  store ptr %pay.ptr94, ptr %var._96, align 8
  store ptr %pay.ptr94, ptr %var._97, align 8
  %err.code.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep98, align 8
  %err.msg.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep99, align 8
  %err.file.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep100, align 8
  %err.line.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep101, align 8
  %err.col.gep102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep102, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len103 = load i64, ptr %err.msg.len, align 8
  %err.msg.len104 = and i64 %err.msg.len103, 281474976710655
  %str.tag105 = lshr i64 %err.msg.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

choice.exit91:                                    ; preds = %err.abort, %choice.then89
  %choice.res = phi ptr [ %pay.ptr, %choice.then89 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load123 = load ptr, ptr %var.body, align 8
  br label %choice.exit

str_gen_check107:                                 ; preds = %choice.else90
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %choice.else90
  %err.msg.len32 = trunc i64 %err.msg.len104 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data112 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len113 = load i64, ptr %err.file.len, align 8
  %err.file.len114 = and i64 %err.file.len113, 281474976710655
  %str.tag115 = lshr i64 %err.file.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_stale109:                                     ; preds = %str_gen_check107
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

str_gen_check117:                                 ; preds = %str_ok108
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %str_ok108
  %err.file.len32 = trunc i64 %err.file.len114 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data122 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale119:                                     ; preds = %str_gen_check117
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

err.thread:                                       ; preds = %str_ok118
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr94, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok118
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data112, i32 %err.file.len32, ptr %err.file.data122, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit91
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define void @"type_env::mark_generic_binding"(ptr %0, ptr %1) #1 {
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

define i1 @"type_env::is_generic_binding"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.171.then, label %and.171.else

and.171.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.171.exit

and.171.else:                                     ; preds = %str.eq.merge
  br label %and.171.exit

and.171.exit:                                     ; preds = %and.171.else, %and.171.then
  %and.171.phi = phi i1 [ %nottmp, %and.171.then ], [ %str.neq, %and.171.else ]
  store i1 %and.171.phi, ptr %var.has_mod, align 1
  %var.load13 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load13, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.171.exit
  %var.load14 = load ptr, ptr %var.env, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 8
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs17 = and i64 %concat.lhs, 281474976710655
  %str.tag18 = lshr i64 %concat.lhs, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

choice.else:                                      ; preds = %and.171.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len117
  %choice.res = phi ptr [ %concat.str124, %concat.tot.len117 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.pub, align 8
  %var.load127 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load127, label %choice.then128, label %choice.else129

str_gen_check20:                                  ; preds = %choice.then
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %choice.then
  %concat.lhs25 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %concat.rhs26 = load i64, ptr %concat.rhs, align 8
  %concat.rhs27 = and i64 %concat.rhs26, 281474976710655
  %str.tag28 = lshr i64 %concat.rhs26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

str_stale22:                                      ; preds = %str_gen_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check30:                                  ; preds = %str_ok21
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %str_ok21
  %concat.rhs35 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %concat.rhs36 = load ptr, ptr %concat.rhs35, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs17, i64 %concat.rhs27)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len37

str_stale32:                                      ; preds = %str_gen_check30
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

concat.sum.len37:                                 ; preds = %str_overflow_abort, %str_ok31
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort:                               ; preds = %str_ok31
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len37

concat.tot.len40:                                 ; preds = %str_overflow_abort41, %concat.sum.len37
  %arena.cur42 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs17, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs36, i64 %concat.rhs27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur43 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs44 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs45 = load i64, ptr %concat.lhs44, align 8
  %concat.lhs46 = and i64 %concat.lhs45, 281474976710655
  %str.tag47 = lshr i64 %concat.lhs45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_overflow_abort41:                             ; preds = %concat.sum.len37
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len40

str_gen_check49:                                  ; preds = %concat.tot.len40
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %concat.tot.len40
  %concat.lhs54 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs55 = load ptr, ptr %concat.lhs54, align 8
  %concat.rhs56 = load i64, ptr @str.4.struct, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

str_stale51:                                      ; preds = %str_gen_check49
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

str_gen_check60:                                  ; preds = %str_ok50
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %str_ok50
  %concat.rhs65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs46, i64 %concat.rhs57)
  %sum67 = extractvalue { i64, i1 } %concat.sum.len66, 0
  %ovf68 = extractvalue { i64, i1 } %concat.sum.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %concat.sum.len69

str_stale62:                                      ; preds = %str_gen_check60
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

concat.sum.len69:                                 ; preds = %str_overflow_abort70, %str_ok61
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum67, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort70:                             ; preds = %str_ok61
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len69

concat.tot.len74:                                 ; preds = %str_overflow_abort75, %concat.sum.len69
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf77, ptr align 1 %concat.lhs55, i64 %concat.lhs46, i1 false)
  %concat.mid78 = getelementptr i8, ptr %concat.buf77, i64 %concat.lhs46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid78, ptr align 1 %concat.rhs65, i64 %concat.rhs57, i1 false)
  %concat.nul79 = getelementptr i8, ptr %concat.buf77, i64 %sum67
  store i8 0, ptr %concat.nul79, align 1
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.str81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  store i64 %sum67, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  store ptr %concat.buf77, ptr %str.build.data.gep83, align 8
  %var.load84 = load ptr, ptr %var.name, align 8
  %concat.lhs85 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  %concat.lhs86 = load i64, ptr %concat.lhs85, align 8
  %concat.lhs87 = and i64 %concat.lhs86, 281474976710655
  %str.tag88 = lshr i64 %concat.lhs86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

str_overflow_abort75:                             ; preds = %concat.sum.len69
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len74

str_gen_check90:                                  ; preds = %concat.tot.len74
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %concat.tot.len74
  %concat.lhs95 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  %concat.lhs96 = load ptr, ptr %concat.lhs95, align 8
  %concat.rhs97 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %concat.rhs98 = load i64, ptr %concat.rhs97, align 8
  %concat.rhs99 = and i64 %concat.rhs98, 281474976710655
  %str.tag100 = lshr i64 %concat.rhs98, 48
  %str.immortal101 = icmp eq i64 %str.tag100, 0
  br i1 %str.immortal101, label %str_ok103, label %str_gen_check102

str_stale92:                                      ; preds = %str_gen_check90
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

str_gen_check102:                                 ; preds = %str_ok91
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag100)
  br i1 %tag.valid106, label %str_ok103, label %str_stale104

str_ok103:                                        ; preds = %str_stale104, %str_gen_check102, %str_ok91
  %concat.rhs107 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %concat.rhs108 = load ptr, ptr %concat.rhs107, align 8
  %concat.sum.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs87, i64 %concat.rhs99)
  %sum110 = extractvalue { i64, i1 } %concat.sum.len109, 0
  %ovf111 = extractvalue { i64, i1 } %concat.sum.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %concat.sum.len112

str_stale104:                                     ; preds = %str_gen_check102
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok103

concat.sum.len112:                                ; preds = %str_overflow_abort113, %str_ok103
  %concat.tot.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum110, i64 1)
  %sum115 = extractvalue { i64, i1 } %concat.tot.len114, 0
  %ovf116 = extractvalue { i64, i1 } %concat.tot.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %concat.tot.len117

str_overflow_abort113:                            ; preds = %str_ok103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len112

concat.tot.len117:                                ; preds = %str_overflow_abort118, %concat.sum.len112
  %arena.cur119 = call ptr @dva_arena_current()
  %concat.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf120, ptr align 1 %concat.lhs96, i64 %concat.lhs87, i1 false)
  %concat.mid121 = getelementptr i8, ptr %concat.buf120, i64 %concat.lhs87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid121, ptr align 1 %concat.rhs108, i64 %concat.rhs99, i1 false)
  %concat.nul122 = getelementptr i8, ptr %concat.buf120, i64 %sum110
  store i8 0, ptr %concat.nul122, align 1
  %arena.cur123 = call ptr @dva_arena_current()
  %concat.str124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 16)
  %str.build.len.gep125 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 0
  store i64 %sum110, ptr %str.build.len.gep125, align 8
  %str.build.data.gep126 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 1
  store ptr %concat.buf120, ptr %str.build.data.gep126, align 8
  br label %choice.exit

str_overflow_abort118:                            ; preds = %concat.sum.len112
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len117

choice.then128:                                   ; preds = %choice.exit
  %var.load131 = load ptr, ptr %var.env, align 8
  %fld.gep132 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load131, i32 0, i32 8
  %fld.load133 = load ptr, ptr %fld.gep132, align 8
  %concat.lhs134 = load i64, ptr @str.0.struct, align 8
  %concat.lhs135 = and i64 %concat.lhs134, 281474976710655
  %str.tag136 = lshr i64 %concat.lhs134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

choice.else129:                                   ; preds = %choice.exit
  br label %choice.exit130

choice.exit130:                                   ; preds = %choice.else129, %concat.tot.len247
  %choice.res257 = phi ptr [ %concat.str254, %concat.tot.len247 ], [ @str.0.struct, %choice.else129 ]
  store ptr %choice.res257, ptr %var.priv, align 8
  %var.load258 = load ptr, ptr %var.env, align 8
  %fld.gep259 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load258, i32 0, i32 13
  %fld.load260 = load ptr, ptr %fld.gep259, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load260, i32 0, i32 0
  %arr.cycle.len261 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load260, i32 0, i32 1
  %arr.cycle.data262 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.174, align 8
  br label %loop.header.174

str_gen_check138:                                 ; preds = %choice.then128
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %choice.then128
  %concat.lhs143 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs144 = getelementptr inbounds { i64, ptr }, ptr %fld.load133, i32 0, i32 0
  %concat.rhs145 = load i64, ptr %concat.rhs144, align 8
  %concat.rhs146 = and i64 %concat.rhs145, 281474976710655
  %str.tag147 = lshr i64 %concat.rhs145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_stale140:                                     ; preds = %str_gen_check138
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

str_gen_check149:                                 ; preds = %str_ok139
  %arena.cur152 = call ptr @dva_arena_current()
  %tag.valid153 = call i1 @dva_arena_validate_tag(ptr %arena.cur152, i64 %str.tag147)
  br i1 %tag.valid153, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %str_ok139
  %concat.rhs154 = getelementptr inbounds { i64, ptr }, ptr %fld.load133, i32 0, i32 1
  %concat.rhs155 = load ptr, ptr %concat.rhs154, align 8
  %concat.sum.len156 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs135, i64 %concat.rhs146)
  %sum157 = extractvalue { i64, i1 } %concat.sum.len156, 0
  %ovf158 = extractvalue { i64, i1 } %concat.sum.len156, 1
  br i1 %ovf158, label %str_overflow_abort160, label %concat.sum.len159

str_stale151:                                     ; preds = %str_gen_check149
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

concat.sum.len159:                                ; preds = %str_overflow_abort160, %str_ok150
  %concat.tot.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum157, i64 1)
  %sum162 = extractvalue { i64, i1 } %concat.tot.len161, 0
  %ovf163 = extractvalue { i64, i1 } %concat.tot.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %concat.tot.len164

str_overflow_abort160:                            ; preds = %str_ok150
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len159

concat.tot.len164:                                ; preds = %str_overflow_abort165, %concat.sum.len159
  %arena.cur166 = call ptr @dva_arena_current()
  %concat.buf167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf167, ptr align 1 %concat.lhs143, i64 %concat.lhs135, i1 false)
  %concat.mid168 = getelementptr i8, ptr %concat.buf167, i64 %concat.lhs135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid168, ptr align 1 %concat.rhs155, i64 %concat.rhs146, i1 false)
  %concat.nul169 = getelementptr i8, ptr %concat.buf167, i64 %sum157
  store i8 0, ptr %concat.nul169, align 1
  %arena.cur170 = call ptr @dva_arena_current()
  %concat.str171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 16)
  %str.build.len.gep172 = getelementptr inbounds { i64, ptr }, ptr %concat.str171, i32 0, i32 0
  store i64 %sum157, ptr %str.build.len.gep172, align 8
  %str.build.data.gep173 = getelementptr inbounds { i64, ptr }, ptr %concat.str171, i32 0, i32 1
  store ptr %concat.buf167, ptr %str.build.data.gep173, align 8
  %concat.lhs174 = getelementptr inbounds { i64, ptr }, ptr %concat.str171, i32 0, i32 0
  %concat.lhs175 = load i64, ptr %concat.lhs174, align 8
  %concat.lhs176 = and i64 %concat.lhs175, 281474976710655
  %str.tag177 = lshr i64 %concat.lhs175, 48
  %str.immortal178 = icmp eq i64 %str.tag177, 0
  br i1 %str.immortal178, label %str_ok180, label %str_gen_check179

str_overflow_abort165:                            ; preds = %concat.sum.len159
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len164

str_gen_check179:                                 ; preds = %concat.tot.len164
  %arena.cur182 = call ptr @dva_arena_current()
  %tag.valid183 = call i1 @dva_arena_validate_tag(ptr %arena.cur182, i64 %str.tag177)
  br i1 %tag.valid183, label %str_ok180, label %str_stale181

str_ok180:                                        ; preds = %str_stale181, %str_gen_check179, %concat.tot.len164
  %concat.lhs184 = getelementptr inbounds { i64, ptr }, ptr %concat.str171, i32 0, i32 1
  %concat.lhs185 = load ptr, ptr %concat.lhs184, align 8
  %concat.rhs186 = load i64, ptr @str.5.struct, align 8
  %concat.rhs187 = and i64 %concat.rhs186, 281474976710655
  %str.tag188 = lshr i64 %concat.rhs186, 48
  %str.immortal189 = icmp eq i64 %str.tag188, 0
  br i1 %str.immortal189, label %str_ok191, label %str_gen_check190

str_stale181:                                     ; preds = %str_gen_check179
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok180

str_gen_check190:                                 ; preds = %str_ok180
  %arena.cur193 = call ptr @dva_arena_current()
  %tag.valid194 = call i1 @dva_arena_validate_tag(ptr %arena.cur193, i64 %str.tag188)
  br i1 %tag.valid194, label %str_ok191, label %str_stale192

str_ok191:                                        ; preds = %str_stale192, %str_gen_check190, %str_ok180
  %concat.rhs195 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs176, i64 %concat.rhs187)
  %sum197 = extractvalue { i64, i1 } %concat.sum.len196, 0
  %ovf198 = extractvalue { i64, i1 } %concat.sum.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %concat.sum.len199

str_stale192:                                     ; preds = %str_gen_check190
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok191

concat.sum.len199:                                ; preds = %str_overflow_abort200, %str_ok191
  %concat.tot.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum197, i64 1)
  %sum202 = extractvalue { i64, i1 } %concat.tot.len201, 0
  %ovf203 = extractvalue { i64, i1 } %concat.tot.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %concat.tot.len204

str_overflow_abort200:                            ; preds = %str_ok191
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len199

concat.tot.len204:                                ; preds = %str_overflow_abort205, %concat.sum.len199
  %arena.cur206 = call ptr @dva_arena_current()
  %concat.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 %sum202)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf207, ptr align 1 %concat.lhs185, i64 %concat.lhs176, i1 false)
  %concat.mid208 = getelementptr i8, ptr %concat.buf207, i64 %concat.lhs176
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid208, ptr align 1 %concat.rhs195, i64 %concat.rhs187, i1 false)
  %concat.nul209 = getelementptr i8, ptr %concat.buf207, i64 %sum197
  store i8 0, ptr %concat.nul209, align 1
  %arena.cur210 = call ptr @dva_arena_current()
  %concat.str211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 16)
  %str.build.len.gep212 = getelementptr inbounds { i64, ptr }, ptr %concat.str211, i32 0, i32 0
  store i64 %sum197, ptr %str.build.len.gep212, align 8
  %str.build.data.gep213 = getelementptr inbounds { i64, ptr }, ptr %concat.str211, i32 0, i32 1
  store ptr %concat.buf207, ptr %str.build.data.gep213, align 8
  %var.load214 = load ptr, ptr %var.name, align 8
  %concat.lhs215 = getelementptr inbounds { i64, ptr }, ptr %concat.str211, i32 0, i32 0
  %concat.lhs216 = load i64, ptr %concat.lhs215, align 8
  %concat.lhs217 = and i64 %concat.lhs216, 281474976710655
  %str.tag218 = lshr i64 %concat.lhs216, 48
  %str.immortal219 = icmp eq i64 %str.tag218, 0
  br i1 %str.immortal219, label %str_ok221, label %str_gen_check220

str_overflow_abort205:                            ; preds = %concat.sum.len199
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len204

str_gen_check220:                                 ; preds = %concat.tot.len204
  %arena.cur223 = call ptr @dva_arena_current()
  %tag.valid224 = call i1 @dva_arena_validate_tag(ptr %arena.cur223, i64 %str.tag218)
  br i1 %tag.valid224, label %str_ok221, label %str_stale222

str_ok221:                                        ; preds = %str_stale222, %str_gen_check220, %concat.tot.len204
  %concat.lhs225 = getelementptr inbounds { i64, ptr }, ptr %concat.str211, i32 0, i32 1
  %concat.lhs226 = load ptr, ptr %concat.lhs225, align 8
  %concat.rhs227 = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 0
  %concat.rhs228 = load i64, ptr %concat.rhs227, align 8
  %concat.rhs229 = and i64 %concat.rhs228, 281474976710655
  %str.tag230 = lshr i64 %concat.rhs228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

str_stale222:                                     ; preds = %str_gen_check220
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok221

str_gen_check232:                                 ; preds = %str_ok221
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %str_ok221
  %concat.rhs237 = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 1
  %concat.rhs238 = load ptr, ptr %concat.rhs237, align 8
  %concat.sum.len239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs217, i64 %concat.rhs229)
  %sum240 = extractvalue { i64, i1 } %concat.sum.len239, 0
  %ovf241 = extractvalue { i64, i1 } %concat.sum.len239, 1
  br i1 %ovf241, label %str_overflow_abort243, label %concat.sum.len242

str_stale234:                                     ; preds = %str_gen_check232
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

concat.sum.len242:                                ; preds = %str_overflow_abort243, %str_ok233
  %concat.tot.len244 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum240, i64 1)
  %sum245 = extractvalue { i64, i1 } %concat.tot.len244, 0
  %ovf246 = extractvalue { i64, i1 } %concat.tot.len244, 1
  br i1 %ovf246, label %str_overflow_abort248, label %concat.tot.len247

str_overflow_abort243:                            ; preds = %str_ok233
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len242

concat.tot.len247:                                ; preds = %str_overflow_abort248, %concat.sum.len242
  %arena.cur249 = call ptr @dva_arena_current()
  %concat.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 %sum245)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf250, ptr align 1 %concat.lhs226, i64 %concat.lhs217, i1 false)
  %concat.mid251 = getelementptr i8, ptr %concat.buf250, i64 %concat.lhs217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid251, ptr align 1 %concat.rhs238, i64 %concat.rhs229, i1 false)
  %concat.nul252 = getelementptr i8, ptr %concat.buf250, i64 %sum240
  store i8 0, ptr %concat.nul252, align 1
  %arena.cur253 = call ptr @dva_arena_current()
  %concat.str254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 16)
  %str.build.len.gep255 = getelementptr inbounds { i64, ptr }, ptr %concat.str254, i32 0, i32 0
  store i64 %sum240, ptr %str.build.len.gep255, align 8
  %str.build.data.gep256 = getelementptr inbounds { i64, ptr }, ptr %concat.str254, i32 0, i32 1
  store ptr %concat.buf250, ptr %str.build.data.gep256, align 8
  br label %choice.exit130

str_overflow_abort248:                            ; preds = %concat.sum.len242
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len247

loop.header.174:                                  ; preds = %loop.latch.174, %choice.exit130
  %counter.load = load i64, ptr %loop.idx.174, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len261
  br i1 %loop.cond, label %loop.body.174, label %loop.exit.nat.174

loop.body.174:                                    ; preds = %loop.header.174
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.174, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data262, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load263 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load263, label %choice.then264, label %choice.else265

loop.exit.nat.174:                                ; preds = %loop.header.174
  br label %loop.exit.174

loop.latch.174:                                   ; preds = %choice.exit368
  %step.val = load i64, ptr %loop.step.174, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.174, align 8
  br label %loop.header.174

loop.exit.174:                                    ; preds = %loop.exit.nat.174
  ret i1 false

choice.then264:                                   ; preds = %loop.body.174
  %var.load267 = load ptr, ptr %var.n, align 8
  %var.load268 = load ptr, ptr %var.pub, align 8
  %eq.lhs.len269 = getelementptr inbounds { i64, ptr }, ptr %var.load267, i32 0, i32 0
  %eq.lhs.len270 = load i64, ptr %eq.lhs.len269, align 8
  %eq.lhs.len271 = and i64 %eq.lhs.len270, 281474976710655
  %str.tag272 = lshr i64 %eq.lhs.len270, 48
  %str.immortal273 = icmp eq i64 %str.tag272, 0
  br i1 %str.immortal273, label %str_ok275, label %str_gen_check274

choice.else265:                                   ; preds = %loop.body.174
  %var.load333 = load ptr, ptr %var.n, align 8
  %var.load334 = load ptr, ptr %var.name, align 8
  %eq.lhs.len335 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 0
  %eq.lhs.len336 = load i64, ptr %eq.lhs.len335, align 8
  %eq.lhs.len337 = and i64 %eq.lhs.len336, 281474976710655
  %str.tag338 = lshr i64 %eq.lhs.len336, 48
  %str.immortal339 = icmp eq i64 %str.tag338, 0
  br i1 %str.immortal339, label %str_ok341, label %str_gen_check340

choice.exit266:                                   ; preds = %str.eq.merge358, %or.175.exit
  %choice.res366 = phi i1 [ %or.175.phi, %or.175.exit ], [ %str.eq.result365, %str.eq.merge358 ]
  br i1 %choice.res366, label %choice.then367, label %choice.exit368

str_gen_check274:                                 ; preds = %choice.then264
  %arena.cur277 = call ptr @dva_arena_current()
  %tag.valid278 = call i1 @dva_arena_validate_tag(ptr %arena.cur277, i64 %str.tag272)
  br i1 %tag.valid278, label %str_ok275, label %str_stale276

str_ok275:                                        ; preds = %str_stale276, %str_gen_check274, %choice.then264
  %eq.rhs.len279 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 0
  %eq.rhs.len280 = load i64, ptr %eq.rhs.len279, align 8
  %eq.rhs.len281 = and i64 %eq.rhs.len280, 281474976710655
  %str.tag282 = lshr i64 %eq.rhs.len280, 48
  %str.immortal283 = icmp eq i64 %str.tag282, 0
  br i1 %str.immortal283, label %str_ok285, label %str_gen_check284

str_stale276:                                     ; preds = %str_gen_check274
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok275

str_gen_check284:                                 ; preds = %str_ok275
  %arena.cur287 = call ptr @dva_arena_current()
  %tag.valid288 = call i1 @dva_arena_validate_tag(ptr %arena.cur287, i64 %str.tag282)
  br i1 %tag.valid288, label %str_ok285, label %str_stale286

str_ok285:                                        ; preds = %str_stale286, %str_gen_check284, %str_ok275
  %eq.len289 = icmp eq i64 %eq.lhs.len271, %eq.rhs.len281
  br i1 %eq.len289, label %str.eq.then290, label %str.eq.else291

str_stale286:                                     ; preds = %str_gen_check284
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok285

str.eq.then290:                                   ; preds = %str_ok285
  %eq.lhs.data293 = getelementptr inbounds { i64, ptr }, ptr %var.load267, i32 0, i32 1
  %eq.lhs.data294 = load ptr, ptr %eq.lhs.data293, align 8
  %eq.rhs.data295 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 1
  %eq.rhs.data296 = load ptr, ptr %eq.rhs.data295, align 8
  %eq.memcmp297 = call i32 @memcmp(ptr %eq.lhs.data294, ptr %eq.rhs.data296, i64 %eq.lhs.len271)
  %eq.cmp.zero298 = icmp eq i32 %eq.memcmp297, 0
  br label %str.eq.merge292

str.eq.else291:                                   ; preds = %str_ok285
  br label %str.eq.merge292

str.eq.merge292:                                  ; preds = %str.eq.else291, %str.eq.then290
  %str.eq.result299 = phi i1 [ %eq.cmp.zero298, %str.eq.then290 ], [ false, %str.eq.else291 ]
  br i1 %str.eq.result299, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %str.eq.merge292
  br label %or.175.exit

or.175.else:                                      ; preds = %str.eq.merge292
  %var.load300 = load ptr, ptr %var.n, align 8
  %var.load301 = load ptr, ptr %var.priv, align 8
  %eq.lhs.len302 = getelementptr inbounds { i64, ptr }, ptr %var.load300, i32 0, i32 0
  %eq.lhs.len303 = load i64, ptr %eq.lhs.len302, align 8
  %eq.lhs.len304 = and i64 %eq.lhs.len303, 281474976710655
  %str.tag305 = lshr i64 %eq.lhs.len303, 48
  %str.immortal306 = icmp eq i64 %str.tag305, 0
  br i1 %str.immortal306, label %str_ok308, label %str_gen_check307

or.175.exit:                                      ; preds = %str.eq.merge325, %or.175.then
  %or.175.phi = phi i1 [ %str.eq.result299, %or.175.then ], [ %str.eq.result332, %str.eq.merge325 ]
  br label %choice.exit266

str_gen_check307:                                 ; preds = %or.175.else
  %arena.cur310 = call ptr @dva_arena_current()
  %tag.valid311 = call i1 @dva_arena_validate_tag(ptr %arena.cur310, i64 %str.tag305)
  br i1 %tag.valid311, label %str_ok308, label %str_stale309

str_ok308:                                        ; preds = %str_stale309, %str_gen_check307, %or.175.else
  %eq.rhs.len312 = getelementptr inbounds { i64, ptr }, ptr %var.load301, i32 0, i32 0
  %eq.rhs.len313 = load i64, ptr %eq.rhs.len312, align 8
  %eq.rhs.len314 = and i64 %eq.rhs.len313, 281474976710655
  %str.tag315 = lshr i64 %eq.rhs.len313, 48
  %str.immortal316 = icmp eq i64 %str.tag315, 0
  br i1 %str.immortal316, label %str_ok318, label %str_gen_check317

str_stale309:                                     ; preds = %str_gen_check307
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok308

str_gen_check317:                                 ; preds = %str_ok308
  %arena.cur320 = call ptr @dva_arena_current()
  %tag.valid321 = call i1 @dva_arena_validate_tag(ptr %arena.cur320, i64 %str.tag315)
  br i1 %tag.valid321, label %str_ok318, label %str_stale319

str_ok318:                                        ; preds = %str_stale319, %str_gen_check317, %str_ok308
  %eq.len322 = icmp eq i64 %eq.lhs.len304, %eq.rhs.len314
  br i1 %eq.len322, label %str.eq.then323, label %str.eq.else324

str_stale319:                                     ; preds = %str_gen_check317
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok318

str.eq.then323:                                   ; preds = %str_ok318
  %eq.lhs.data326 = getelementptr inbounds { i64, ptr }, ptr %var.load300, i32 0, i32 1
  %eq.lhs.data327 = load ptr, ptr %eq.lhs.data326, align 8
  %eq.rhs.data328 = getelementptr inbounds { i64, ptr }, ptr %var.load301, i32 0, i32 1
  %eq.rhs.data329 = load ptr, ptr %eq.rhs.data328, align 8
  %eq.memcmp330 = call i32 @memcmp(ptr %eq.lhs.data327, ptr %eq.rhs.data329, i64 %eq.lhs.len304)
  %eq.cmp.zero331 = icmp eq i32 %eq.memcmp330, 0
  br label %str.eq.merge325

str.eq.else324:                                   ; preds = %str_ok318
  br label %str.eq.merge325

str.eq.merge325:                                  ; preds = %str.eq.else324, %str.eq.then323
  %str.eq.result332 = phi i1 [ %eq.cmp.zero331, %str.eq.then323 ], [ false, %str.eq.else324 ]
  br label %or.175.exit

str_gen_check340:                                 ; preds = %choice.else265
  %arena.cur343 = call ptr @dva_arena_current()
  %tag.valid344 = call i1 @dva_arena_validate_tag(ptr %arena.cur343, i64 %str.tag338)
  br i1 %tag.valid344, label %str_ok341, label %str_stale342

str_ok341:                                        ; preds = %str_stale342, %str_gen_check340, %choice.else265
  %eq.rhs.len345 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 0
  %eq.rhs.len346 = load i64, ptr %eq.rhs.len345, align 8
  %eq.rhs.len347 = and i64 %eq.rhs.len346, 281474976710655
  %str.tag348 = lshr i64 %eq.rhs.len346, 48
  %str.immortal349 = icmp eq i64 %str.tag348, 0
  br i1 %str.immortal349, label %str_ok351, label %str_gen_check350

str_stale342:                                     ; preds = %str_gen_check340
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok341

str_gen_check350:                                 ; preds = %str_ok341
  %arena.cur353 = call ptr @dva_arena_current()
  %tag.valid354 = call i1 @dva_arena_validate_tag(ptr %arena.cur353, i64 %str.tag348)
  br i1 %tag.valid354, label %str_ok351, label %str_stale352

str_ok351:                                        ; preds = %str_stale352, %str_gen_check350, %str_ok341
  %eq.len355 = icmp eq i64 %eq.lhs.len337, %eq.rhs.len347
  br i1 %eq.len355, label %str.eq.then356, label %str.eq.else357

str_stale352:                                     ; preds = %str_gen_check350
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok351

str.eq.then356:                                   ; preds = %str_ok351
  %eq.lhs.data359 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 1
  %eq.lhs.data360 = load ptr, ptr %eq.lhs.data359, align 8
  %eq.rhs.data361 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 1
  %eq.rhs.data362 = load ptr, ptr %eq.rhs.data361, align 8
  %eq.memcmp363 = call i32 @memcmp(ptr %eq.lhs.data360, ptr %eq.rhs.data362, i64 %eq.lhs.len337)
  %eq.cmp.zero364 = icmp eq i32 %eq.memcmp363, 0
  br label %str.eq.merge358

str.eq.else357:                                   ; preds = %str_ok351
  br label %str.eq.merge358

str.eq.merge358:                                  ; preds = %str.eq.else357, %str.eq.then356
  %str.eq.result365 = phi i1 [ %eq.cmp.zero364, %str.eq.then356 ], [ false, %str.eq.else357 ]
  br label %choice.exit266

choice.then367:                                   ; preds = %choice.exit266
  ret i1 true

choice.exit368:                                   ; preds = %ret.dead, %choice.exit266
  br label %loop.latch.174

ret.dead:                                         ; No predecessors!
  br label %choice.exit368
}

define i1 @"type_env::name_is_qualified"(ptr %0, i64 %1) #1 {
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
  br i1 %cmptmp, label %and.172.then, label %and.172.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.172.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.172.else:                                     ; preds = %str_ok
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %idx_ok
  %and.172.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.172.else ]
  br i1 %and.172.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.172.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.172.then
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
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.172.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.172.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.172.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res70 = phi i1 [ %choice.res, %choice.exit66 ], [ false, %choice.else ]
  ret i1 %choice.res70

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.173.then, label %and.173.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.173.then:                                     ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.173.else:                                     ; preds = %idx_ok33
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok57
  %and.173.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.173.else ]
  br i1 %and.173.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.173.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.173.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.173.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.173.exit
  br label %choice.exit66

choice.else65:                                    ; preds = %and.173.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load67, i64 %addtmp69)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i1 [ true, %choice.then64 ], [ %call.res, %choice.else65 ]
  br label %choice.exit
}

define void @"type_env::mark_global_var"(ptr %0, ptr %1) #1 {
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

define i1 @"type_env::is_marked_global"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.176.then, label %and.176.else

and.176.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.176.exit

and.176.else:                                     ; preds = %str.eq.merge
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %and.176.then
  %and.176.phi = phi i1 [ %nottmp, %and.176.then ], [ %str.neq, %and.176.else ]
  store i1 %and.176.phi, ptr %var.has_mod, align 1
  %var.load13 = load ptr, ptr %var.env, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load13, i32 0, i32 8
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %eq.lhs.len16 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len16, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_gen_check21:                                  ; preds = %and.176.exit
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %and.176.exit
  %eq.rhs.len26 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %str.tag28 = lshr i64 %eq.rhs.len26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

str_stale23:                                      ; preds = %str_gen_check21
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

str_gen_check30:                                  ; preds = %str_ok22
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %str_ok22
  %eq.len35 = icmp eq i64 %eq.lhs.len18, %eq.rhs.len27
  br i1 %eq.len35, label %str.eq.then36, label %str.eq.else37

str_stale32:                                      ; preds = %str_gen_check30
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

str.eq.then36:                                    ; preds = %str_ok31
  %eq.lhs.data39 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %eq.lhs.data40 = load ptr, ptr %eq.lhs.data39, align 8
  %eq.rhs.data41 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp42 = call i32 @memcmp(ptr %eq.lhs.data40, ptr %eq.rhs.data41, i64 %eq.lhs.len18)
  %eq.cmp.zero43 = icmp eq i32 %eq.memcmp42, 0
  br label %str.eq.merge38

str.eq.else37:                                    ; preds = %str_ok31
  br label %str.eq.merge38

str.eq.merge38:                                   ; preds = %str.eq.else37, %str.eq.then36
  %str.eq.result44 = phi i1 [ %eq.cmp.zero43, %str.eq.then36 ], [ false, %str.eq.else37 ]
  %str.neq45 = xor i1 %str.eq.result44, true
  br i1 %str.neq45, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge38
  %var.load46 = load ptr, ptr %var.env, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load46, i32 0, i32 8
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs49 = and i64 %concat.lhs, 281474976710655
  %str.tag50 = lshr i64 %concat.lhs, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

choice.else:                                      ; preds = %str.eq.merge38
  %var.load159 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len149
  %choice.res = phi ptr [ %concat.str156, %concat.tot.len149 ], [ %var.load159, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load160 = load ptr, ptr %var.env, align 8
  %fld.gep161 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load160, i32 0, i32 8
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %eq.lhs.len163 = getelementptr inbounds { i64, ptr }, ptr %fld.load162, i32 0, i32 0
  %eq.lhs.len164 = load i64, ptr %eq.lhs.len163, align 8
  %eq.lhs.len165 = and i64 %eq.lhs.len164, 281474976710655
  %str.tag166 = lshr i64 %eq.lhs.len164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

str_gen_check52:                                  ; preds = %choice.then
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %choice.then
  %concat.lhs57 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %concat.rhs58 = load i64, ptr %concat.rhs, align 8
  %concat.rhs59 = and i64 %concat.rhs58, 281474976710655
  %str.tag60 = lshr i64 %concat.rhs58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

str_stale54:                                      ; preds = %str_gen_check52
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str_gen_check62:                                  ; preds = %str_ok53
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %str_ok53
  %concat.rhs67 = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %concat.rhs68 = load ptr, ptr %concat.rhs67, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs49, i64 %concat.rhs59)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len69

str_stale64:                                      ; preds = %str_gen_check62
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

concat.sum.len69:                                 ; preds = %str_overflow_abort, %str_ok63
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum70 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf71 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf71, label %str_overflow_abort73, label %concat.tot.len72

str_overflow_abort:                               ; preds = %str_ok63
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len69

concat.tot.len72:                                 ; preds = %str_overflow_abort73, %concat.sum.len69
  %arena.cur74 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs57, i64 %concat.lhs49, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs68, i64 %concat.rhs59, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur75 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs76 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs77 = load i64, ptr %concat.lhs76, align 8
  %concat.lhs78 = and i64 %concat.lhs77, 281474976710655
  %str.tag79 = lshr i64 %concat.lhs77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

str_overflow_abort73:                             ; preds = %concat.sum.len69
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len72

str_gen_check81:                                  ; preds = %concat.tot.len72
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag79)
  br i1 %tag.valid85, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %concat.tot.len72
  %concat.lhs86 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs87 = load ptr, ptr %concat.lhs86, align 8
  %concat.rhs88 = load i64, ptr @str.4.struct, align 8
  %concat.rhs89 = and i64 %concat.rhs88, 281474976710655
  %str.tag90 = lshr i64 %concat.rhs88, 48
  %str.immortal91 = icmp eq i64 %str.tag90, 0
  br i1 %str.immortal91, label %str_ok93, label %str_gen_check92

str_stale83:                                      ; preds = %str_gen_check81
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

str_gen_check92:                                  ; preds = %str_ok82
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %str.tag90)
  br i1 %tag.valid96, label %str_ok93, label %str_stale94

str_ok93:                                         ; preds = %str_stale94, %str_gen_check92, %str_ok82
  %concat.rhs97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs78, i64 %concat.rhs89)
  %sum99 = extractvalue { i64, i1 } %concat.sum.len98, 0
  %ovf100 = extractvalue { i64, i1 } %concat.sum.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %concat.sum.len101

str_stale94:                                      ; preds = %str_gen_check92
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok93

concat.sum.len101:                                ; preds = %str_overflow_abort102, %str_ok93
  %concat.tot.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum99, i64 1)
  %sum104 = extractvalue { i64, i1 } %concat.tot.len103, 0
  %ovf105 = extractvalue { i64, i1 } %concat.tot.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %concat.tot.len106

str_overflow_abort102:                            ; preds = %str_ok93
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len101

concat.tot.len106:                                ; preds = %str_overflow_abort107, %concat.sum.len101
  %arena.cur108 = call ptr @dva_arena_current()
  %concat.buf109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf109, ptr align 1 %concat.lhs87, i64 %concat.lhs78, i1 false)
  %concat.mid110 = getelementptr i8, ptr %concat.buf109, i64 %concat.lhs78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid110, ptr align 1 %concat.rhs97, i64 %concat.rhs89, i1 false)
  %concat.nul111 = getelementptr i8, ptr %concat.buf109, i64 %sum99
  store i8 0, ptr %concat.nul111, align 1
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.str113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %str.build.len.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 0
  store i64 %sum99, ptr %str.build.len.gep114, align 8
  %str.build.data.gep115 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 1
  store ptr %concat.buf109, ptr %str.build.data.gep115, align 8
  %var.load116 = load ptr, ptr %var.name, align 8
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 0
  %concat.lhs118 = load i64, ptr %concat.lhs117, align 8
  %concat.lhs119 = and i64 %concat.lhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.lhs118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_overflow_abort107:                            ; preds = %concat.sum.len101
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len106

str_gen_check122:                                 ; preds = %concat.tot.len106
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %concat.tot.len106
  %concat.lhs127 = getelementptr inbounds { i64, ptr }, ptr %concat.str113, i32 0, i32 1
  %concat.lhs128 = load ptr, ptr %concat.lhs127, align 8
  %concat.rhs129 = getelementptr inbounds { i64, ptr }, ptr %var.load116, i32 0, i32 0
  %concat.rhs130 = load i64, ptr %concat.rhs129, align 8
  %concat.rhs131 = and i64 %concat.rhs130, 281474976710655
  %str.tag132 = lshr i64 %concat.rhs130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

str_stale124:                                     ; preds = %str_gen_check122
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

str_gen_check134:                                 ; preds = %str_ok123
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %str_ok123
  %concat.rhs139 = getelementptr inbounds { i64, ptr }, ptr %var.load116, i32 0, i32 1
  %concat.rhs140 = load ptr, ptr %concat.rhs139, align 8
  %concat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs119, i64 %concat.rhs131)
  %sum142 = extractvalue { i64, i1 } %concat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.sum.len144

str_stale136:                                     ; preds = %str_gen_check134
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

concat.sum.len144:                                ; preds = %str_overflow_abort145, %str_ok135
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort145:                            ; preds = %str_ok135
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len144

concat.tot.len149:                                ; preds = %str_overflow_abort150, %concat.sum.len144
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf152, ptr align 1 %concat.lhs128, i64 %concat.lhs119, i1 false)
  %concat.mid153 = getelementptr i8, ptr %concat.buf152, i64 %concat.lhs119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid153, ptr align 1 %concat.rhs140, i64 %concat.rhs131, i1 false)
  %concat.nul154 = getelementptr i8, ptr %concat.buf152, i64 %sum142
  store i8 0, ptr %concat.nul154, align 1
  %arena.cur155 = call ptr @dva_arena_current()
  %concat.str156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  store i64 %sum142, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  store ptr %concat.buf152, ptr %str.build.data.gep158, align 8
  br label %choice.exit

str_overflow_abort150:                            ; preds = %concat.sum.len144
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len149

str_gen_check168:                                 ; preds = %choice.exit
  %arena.cur171 = call ptr @dva_arena_current()
  %tag.valid172 = call i1 @dva_arena_validate_tag(ptr %arena.cur171, i64 %str.tag166)
  br i1 %tag.valid172, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %choice.exit
  %eq.rhs.len173 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len174 = and i64 %eq.rhs.len173, 281474976710655
  %str.tag175 = lshr i64 %eq.rhs.len173, 48
  %str.immortal176 = icmp eq i64 %str.tag175, 0
  br i1 %str.immortal176, label %str_ok178, label %str_gen_check177

str_stale170:                                     ; preds = %str_gen_check168
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str_gen_check177:                                 ; preds = %str_ok169
  %arena.cur180 = call ptr @dva_arena_current()
  %tag.valid181 = call i1 @dva_arena_validate_tag(ptr %arena.cur180, i64 %str.tag175)
  br i1 %tag.valid181, label %str_ok178, label %str_stale179

str_ok178:                                        ; preds = %str_stale179, %str_gen_check177, %str_ok169
  %eq.len182 = icmp eq i64 %eq.lhs.len165, %eq.rhs.len174
  br i1 %eq.len182, label %str.eq.then183, label %str.eq.else184

str_stale179:                                     ; preds = %str_gen_check177
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok178

str.eq.then183:                                   ; preds = %str_ok178
  %eq.lhs.data186 = getelementptr inbounds { i64, ptr }, ptr %fld.load162, i32 0, i32 1
  %eq.lhs.data187 = load ptr, ptr %eq.lhs.data186, align 8
  %eq.rhs.data188 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp189 = call i32 @memcmp(ptr %eq.lhs.data187, ptr %eq.rhs.data188, i64 %eq.lhs.len165)
  %eq.cmp.zero190 = icmp eq i32 %eq.memcmp189, 0
  br label %str.eq.merge185

str.eq.else184:                                   ; preds = %str_ok178
  br label %str.eq.merge185

str.eq.merge185:                                  ; preds = %str.eq.else184, %str.eq.then183
  %str.eq.result191 = phi i1 [ %eq.cmp.zero190, %str.eq.then183 ], [ false, %str.eq.else184 ]
  %str.neq192 = xor i1 %str.eq.result191, true
  br i1 %str.neq192, label %choice.then193, label %choice.else194

choice.then193:                                   ; preds = %str.eq.merge185
  %var.load196 = load ptr, ptr %var.env, align 8
  %fld.gep197 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load196, i32 0, i32 8
  %fld.load198 = load ptr, ptr %fld.gep197, align 8
  %concat.lhs199 = load i64, ptr @str.0.struct, align 8
  %concat.lhs200 = and i64 %concat.lhs199, 281474976710655
  %str.tag201 = lshr i64 %concat.lhs199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

choice.else194:                                   ; preds = %str.eq.merge185
  %var.load322 = load ptr, ptr %var.name, align 8
  br label %choice.exit195

choice.exit195:                                   ; preds = %choice.else194, %concat.tot.len312
  %choice.res323 = phi ptr [ %concat.str319, %concat.tot.len312 ], [ %var.load322, %choice.else194 ]
  store ptr %choice.res323, ptr %var.private_name, align 8
  %var.load324 = load ptr, ptr %var.env, align 8
  %fld.gep325 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load324, i32 0, i32 14
  %fld.load326 = load ptr, ptr %fld.gep325, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load326, i32 0, i32 0
  %arr.cycle.len327 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load326, i32 0, i32 1
  %arr.cycle.data328 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.177, align 8
  br label %loop.header.177

str_gen_check203:                                 ; preds = %choice.then193
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %choice.then193
  %concat.lhs208 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs209 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 0
  %concat.rhs210 = load i64, ptr %concat.rhs209, align 8
  %concat.rhs211 = and i64 %concat.rhs210, 281474976710655
  %str.tag212 = lshr i64 %concat.rhs210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_stale205:                                     ; preds = %str_gen_check203
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

str_gen_check214:                                 ; preds = %str_ok204
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %str_ok204
  %concat.rhs219 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 1
  %concat.rhs220 = load ptr, ptr %concat.rhs219, align 8
  %concat.sum.len221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs200, i64 %concat.rhs211)
  %sum222 = extractvalue { i64, i1 } %concat.sum.len221, 0
  %ovf223 = extractvalue { i64, i1 } %concat.sum.len221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %concat.sum.len224

str_stale216:                                     ; preds = %str_gen_check214
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

concat.sum.len224:                                ; preds = %str_overflow_abort225, %str_ok215
  %concat.tot.len226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum222, i64 1)
  %sum227 = extractvalue { i64, i1 } %concat.tot.len226, 0
  %ovf228 = extractvalue { i64, i1 } %concat.tot.len226, 1
  br i1 %ovf228, label %str_overflow_abort230, label %concat.tot.len229

str_overflow_abort225:                            ; preds = %str_ok215
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len224

concat.tot.len229:                                ; preds = %str_overflow_abort230, %concat.sum.len224
  %arena.cur231 = call ptr @dva_arena_current()
  %concat.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 %sum227)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf232, ptr align 1 %concat.lhs208, i64 %concat.lhs200, i1 false)
  %concat.mid233 = getelementptr i8, ptr %concat.buf232, i64 %concat.lhs200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid233, ptr align 1 %concat.rhs220, i64 %concat.rhs211, i1 false)
  %concat.nul234 = getelementptr i8, ptr %concat.buf232, i64 %sum222
  store i8 0, ptr %concat.nul234, align 1
  %arena.cur235 = call ptr @dva_arena_current()
  %concat.str236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 16)
  %str.build.len.gep237 = getelementptr inbounds { i64, ptr }, ptr %concat.str236, i32 0, i32 0
  store i64 %sum222, ptr %str.build.len.gep237, align 8
  %str.build.data.gep238 = getelementptr inbounds { i64, ptr }, ptr %concat.str236, i32 0, i32 1
  store ptr %concat.buf232, ptr %str.build.data.gep238, align 8
  %concat.lhs239 = getelementptr inbounds { i64, ptr }, ptr %concat.str236, i32 0, i32 0
  %concat.lhs240 = load i64, ptr %concat.lhs239, align 8
  %concat.lhs241 = and i64 %concat.lhs240, 281474976710655
  %str.tag242 = lshr i64 %concat.lhs240, 48
  %str.immortal243 = icmp eq i64 %str.tag242, 0
  br i1 %str.immortal243, label %str_ok245, label %str_gen_check244

str_overflow_abort230:                            ; preds = %concat.sum.len224
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len229

str_gen_check244:                                 ; preds = %concat.tot.len229
  %arena.cur247 = call ptr @dva_arena_current()
  %tag.valid248 = call i1 @dva_arena_validate_tag(ptr %arena.cur247, i64 %str.tag242)
  br i1 %tag.valid248, label %str_ok245, label %str_stale246

str_ok245:                                        ; preds = %str_stale246, %str_gen_check244, %concat.tot.len229
  %concat.lhs249 = getelementptr inbounds { i64, ptr }, ptr %concat.str236, i32 0, i32 1
  %concat.lhs250 = load ptr, ptr %concat.lhs249, align 8
  %concat.rhs251 = load i64, ptr @str.5.struct, align 8
  %concat.rhs252 = and i64 %concat.rhs251, 281474976710655
  %str.tag253 = lshr i64 %concat.rhs251, 48
  %str.immortal254 = icmp eq i64 %str.tag253, 0
  br i1 %str.immortal254, label %str_ok256, label %str_gen_check255

str_stale246:                                     ; preds = %str_gen_check244
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok245

str_gen_check255:                                 ; preds = %str_ok245
  %arena.cur258 = call ptr @dva_arena_current()
  %tag.valid259 = call i1 @dva_arena_validate_tag(ptr %arena.cur258, i64 %str.tag253)
  br i1 %tag.valid259, label %str_ok256, label %str_stale257

str_ok256:                                        ; preds = %str_stale257, %str_gen_check255, %str_ok245
  %concat.rhs260 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs241, i64 %concat.rhs252)
  %sum262 = extractvalue { i64, i1 } %concat.sum.len261, 0
  %ovf263 = extractvalue { i64, i1 } %concat.sum.len261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %concat.sum.len264

str_stale257:                                     ; preds = %str_gen_check255
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok256

concat.sum.len264:                                ; preds = %str_overflow_abort265, %str_ok256
  %concat.tot.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum262, i64 1)
  %sum267 = extractvalue { i64, i1 } %concat.tot.len266, 0
  %ovf268 = extractvalue { i64, i1 } %concat.tot.len266, 1
  br i1 %ovf268, label %str_overflow_abort270, label %concat.tot.len269

str_overflow_abort265:                            ; preds = %str_ok256
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len264

concat.tot.len269:                                ; preds = %str_overflow_abort270, %concat.sum.len264
  %arena.cur271 = call ptr @dva_arena_current()
  %concat.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 %sum267)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf272, ptr align 1 %concat.lhs250, i64 %concat.lhs241, i1 false)
  %concat.mid273 = getelementptr i8, ptr %concat.buf272, i64 %concat.lhs241
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid273, ptr align 1 %concat.rhs260, i64 %concat.rhs252, i1 false)
  %concat.nul274 = getelementptr i8, ptr %concat.buf272, i64 %sum262
  store i8 0, ptr %concat.nul274, align 1
  %arena.cur275 = call ptr @dva_arena_current()
  %concat.str276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 16)
  %str.build.len.gep277 = getelementptr inbounds { i64, ptr }, ptr %concat.str276, i32 0, i32 0
  store i64 %sum262, ptr %str.build.len.gep277, align 8
  %str.build.data.gep278 = getelementptr inbounds { i64, ptr }, ptr %concat.str276, i32 0, i32 1
  store ptr %concat.buf272, ptr %str.build.data.gep278, align 8
  %var.load279 = load ptr, ptr %var.name, align 8
  %concat.lhs280 = getelementptr inbounds { i64, ptr }, ptr %concat.str276, i32 0, i32 0
  %concat.lhs281 = load i64, ptr %concat.lhs280, align 8
  %concat.lhs282 = and i64 %concat.lhs281, 281474976710655
  %str.tag283 = lshr i64 %concat.lhs281, 48
  %str.immortal284 = icmp eq i64 %str.tag283, 0
  br i1 %str.immortal284, label %str_ok286, label %str_gen_check285

str_overflow_abort270:                            ; preds = %concat.sum.len264
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len269

str_gen_check285:                                 ; preds = %concat.tot.len269
  %arena.cur288 = call ptr @dva_arena_current()
  %tag.valid289 = call i1 @dva_arena_validate_tag(ptr %arena.cur288, i64 %str.tag283)
  br i1 %tag.valid289, label %str_ok286, label %str_stale287

str_ok286:                                        ; preds = %str_stale287, %str_gen_check285, %concat.tot.len269
  %concat.lhs290 = getelementptr inbounds { i64, ptr }, ptr %concat.str276, i32 0, i32 1
  %concat.lhs291 = load ptr, ptr %concat.lhs290, align 8
  %concat.rhs292 = getelementptr inbounds { i64, ptr }, ptr %var.load279, i32 0, i32 0
  %concat.rhs293 = load i64, ptr %concat.rhs292, align 8
  %concat.rhs294 = and i64 %concat.rhs293, 281474976710655
  %str.tag295 = lshr i64 %concat.rhs293, 48
  %str.immortal296 = icmp eq i64 %str.tag295, 0
  br i1 %str.immortal296, label %str_ok298, label %str_gen_check297

str_stale287:                                     ; preds = %str_gen_check285
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok286

str_gen_check297:                                 ; preds = %str_ok286
  %arena.cur300 = call ptr @dva_arena_current()
  %tag.valid301 = call i1 @dva_arena_validate_tag(ptr %arena.cur300, i64 %str.tag295)
  br i1 %tag.valid301, label %str_ok298, label %str_stale299

str_ok298:                                        ; preds = %str_stale299, %str_gen_check297, %str_ok286
  %concat.rhs302 = getelementptr inbounds { i64, ptr }, ptr %var.load279, i32 0, i32 1
  %concat.rhs303 = load ptr, ptr %concat.rhs302, align 8
  %concat.sum.len304 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs282, i64 %concat.rhs294)
  %sum305 = extractvalue { i64, i1 } %concat.sum.len304, 0
  %ovf306 = extractvalue { i64, i1 } %concat.sum.len304, 1
  br i1 %ovf306, label %str_overflow_abort308, label %concat.sum.len307

str_stale299:                                     ; preds = %str_gen_check297
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok298

concat.sum.len307:                                ; preds = %str_overflow_abort308, %str_ok298
  %concat.tot.len309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum305, i64 1)
  %sum310 = extractvalue { i64, i1 } %concat.tot.len309, 0
  %ovf311 = extractvalue { i64, i1 } %concat.tot.len309, 1
  br i1 %ovf311, label %str_overflow_abort313, label %concat.tot.len312

str_overflow_abort308:                            ; preds = %str_ok298
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len307

concat.tot.len312:                                ; preds = %str_overflow_abort313, %concat.sum.len307
  %arena.cur314 = call ptr @dva_arena_current()
  %concat.buf315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 %sum310)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf315, ptr align 1 %concat.lhs291, i64 %concat.lhs282, i1 false)
  %concat.mid316 = getelementptr i8, ptr %concat.buf315, i64 %concat.lhs282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid316, ptr align 1 %concat.rhs303, i64 %concat.rhs294, i1 false)
  %concat.nul317 = getelementptr i8, ptr %concat.buf315, i64 %sum305
  store i8 0, ptr %concat.nul317, align 1
  %arena.cur318 = call ptr @dva_arena_current()
  %concat.str319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 16)
  %str.build.len.gep320 = getelementptr inbounds { i64, ptr }, ptr %concat.str319, i32 0, i32 0
  store i64 %sum305, ptr %str.build.len.gep320, align 8
  %str.build.data.gep321 = getelementptr inbounds { i64, ptr }, ptr %concat.str319, i32 0, i32 1
  store ptr %concat.buf315, ptr %str.build.data.gep321, align 8
  br label %choice.exit195

str_overflow_abort313:                            ; preds = %concat.sum.len307
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len312

loop.header.177:                                  ; preds = %loop.latch.177, %choice.exit195
  %counter.load = load i64, ptr %loop.idx.177, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len327
  br i1 %loop.cond, label %loop.body.177, label %loop.exit.nat.177

loop.body.177:                                    ; preds = %loop.header.177
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.177, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data328, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load329 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load329, label %choice.then330, label %choice.else331

loop.exit.nat.177:                                ; preds = %loop.header.177
  br label %loop.exit.177

loop.latch.177:                                   ; preds = %choice.exit692
  %step.val = load i64, ptr %loop.step.177, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.177, align 8
  br label %loop.header.177

loop.exit.177:                                    ; preds = %loop.exit.nat.177
  ret i1 false

choice.then330:                                   ; preds = %loop.body.177
  %var.load333 = load ptr, ptr %var.n, align 8
  %var.load334 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len335 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 0
  %eq.lhs.len336 = load i64, ptr %eq.lhs.len335, align 8
  %eq.lhs.len337 = and i64 %eq.lhs.len336, 281474976710655
  %str.tag338 = lshr i64 %eq.lhs.len336, 48
  %str.immortal339 = icmp eq i64 %str.tag338, 0
  br i1 %str.immortal339, label %str_ok341, label %str_gen_check340

choice.else331:                                   ; preds = %loop.body.177
  %var.load399 = load ptr, ptr %var.n, align 8
  %var.load400 = load ptr, ptr %var.name, align 8
  %eq.lhs.len401 = getelementptr inbounds { i64, ptr }, ptr %var.load399, i32 0, i32 0
  %eq.lhs.len402 = load i64, ptr %eq.lhs.len401, align 8
  %eq.lhs.len403 = and i64 %eq.lhs.len402, 281474976710655
  %str.tag404 = lshr i64 %eq.lhs.len402, 48
  %str.immortal405 = icmp eq i64 %str.tag404, 0
  br i1 %str.immortal405, label %str_ok407, label %str_gen_check406

choice.exit332:                                   ; preds = %or.181.exit, %or.178.exit
  %choice.res689 = phi i1 [ %or.178.phi, %or.178.exit ], [ %or.181.phi, %or.181.exit ]
  store i1 %choice.res689, ptr %var.match, align 1
  %var.load690 = load i1, ptr %var.match, align 1
  br i1 %var.load690, label %choice.then691, label %choice.exit692

str_gen_check340:                                 ; preds = %choice.then330
  %arena.cur343 = call ptr @dva_arena_current()
  %tag.valid344 = call i1 @dva_arena_validate_tag(ptr %arena.cur343, i64 %str.tag338)
  br i1 %tag.valid344, label %str_ok341, label %str_stale342

str_ok341:                                        ; preds = %str_stale342, %str_gen_check340, %choice.then330
  %eq.rhs.len345 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 0
  %eq.rhs.len346 = load i64, ptr %eq.rhs.len345, align 8
  %eq.rhs.len347 = and i64 %eq.rhs.len346, 281474976710655
  %str.tag348 = lshr i64 %eq.rhs.len346, 48
  %str.immortal349 = icmp eq i64 %str.tag348, 0
  br i1 %str.immortal349, label %str_ok351, label %str_gen_check350

str_stale342:                                     ; preds = %str_gen_check340
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok341

str_gen_check350:                                 ; preds = %str_ok341
  %arena.cur353 = call ptr @dva_arena_current()
  %tag.valid354 = call i1 @dva_arena_validate_tag(ptr %arena.cur353, i64 %str.tag348)
  br i1 %tag.valid354, label %str_ok351, label %str_stale352

str_ok351:                                        ; preds = %str_stale352, %str_gen_check350, %str_ok341
  %eq.len355 = icmp eq i64 %eq.lhs.len337, %eq.rhs.len347
  br i1 %eq.len355, label %str.eq.then356, label %str.eq.else357

str_stale352:                                     ; preds = %str_gen_check350
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok351

str.eq.then356:                                   ; preds = %str_ok351
  %eq.lhs.data359 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 1
  %eq.lhs.data360 = load ptr, ptr %eq.lhs.data359, align 8
  %eq.rhs.data361 = getelementptr inbounds { i64, ptr }, ptr %var.load334, i32 0, i32 1
  %eq.rhs.data362 = load ptr, ptr %eq.rhs.data361, align 8
  %eq.memcmp363 = call i32 @memcmp(ptr %eq.lhs.data360, ptr %eq.rhs.data362, i64 %eq.lhs.len337)
  %eq.cmp.zero364 = icmp eq i32 %eq.memcmp363, 0
  br label %str.eq.merge358

str.eq.else357:                                   ; preds = %str_ok351
  br label %str.eq.merge358

str.eq.merge358:                                  ; preds = %str.eq.else357, %str.eq.then356
  %str.eq.result365 = phi i1 [ %eq.cmp.zero364, %str.eq.then356 ], [ false, %str.eq.else357 ]
  br i1 %str.eq.result365, label %or.178.then, label %or.178.else

or.178.then:                                      ; preds = %str.eq.merge358
  br label %or.178.exit

or.178.else:                                      ; preds = %str.eq.merge358
  %var.load366 = load ptr, ptr %var.n, align 8
  %var.load367 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len368 = getelementptr inbounds { i64, ptr }, ptr %var.load366, i32 0, i32 0
  %eq.lhs.len369 = load i64, ptr %eq.lhs.len368, align 8
  %eq.lhs.len370 = and i64 %eq.lhs.len369, 281474976710655
  %str.tag371 = lshr i64 %eq.lhs.len369, 48
  %str.immortal372 = icmp eq i64 %str.tag371, 0
  br i1 %str.immortal372, label %str_ok374, label %str_gen_check373

or.178.exit:                                      ; preds = %str.eq.merge391, %or.178.then
  %or.178.phi = phi i1 [ %str.eq.result365, %or.178.then ], [ %str.eq.result398, %str.eq.merge391 ]
  br label %choice.exit332

str_gen_check373:                                 ; preds = %or.178.else
  %arena.cur376 = call ptr @dva_arena_current()
  %tag.valid377 = call i1 @dva_arena_validate_tag(ptr %arena.cur376, i64 %str.tag371)
  br i1 %tag.valid377, label %str_ok374, label %str_stale375

str_ok374:                                        ; preds = %str_stale375, %str_gen_check373, %or.178.else
  %eq.rhs.len378 = getelementptr inbounds { i64, ptr }, ptr %var.load367, i32 0, i32 0
  %eq.rhs.len379 = load i64, ptr %eq.rhs.len378, align 8
  %eq.rhs.len380 = and i64 %eq.rhs.len379, 281474976710655
  %str.tag381 = lshr i64 %eq.rhs.len379, 48
  %str.immortal382 = icmp eq i64 %str.tag381, 0
  br i1 %str.immortal382, label %str_ok384, label %str_gen_check383

str_stale375:                                     ; preds = %str_gen_check373
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok374

str_gen_check383:                                 ; preds = %str_ok374
  %arena.cur386 = call ptr @dva_arena_current()
  %tag.valid387 = call i1 @dva_arena_validate_tag(ptr %arena.cur386, i64 %str.tag381)
  br i1 %tag.valid387, label %str_ok384, label %str_stale385

str_ok384:                                        ; preds = %str_stale385, %str_gen_check383, %str_ok374
  %eq.len388 = icmp eq i64 %eq.lhs.len370, %eq.rhs.len380
  br i1 %eq.len388, label %str.eq.then389, label %str.eq.else390

str_stale385:                                     ; preds = %str_gen_check383
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok384

str.eq.then389:                                   ; preds = %str_ok384
  %eq.lhs.data392 = getelementptr inbounds { i64, ptr }, ptr %var.load366, i32 0, i32 1
  %eq.lhs.data393 = load ptr, ptr %eq.lhs.data392, align 8
  %eq.rhs.data394 = getelementptr inbounds { i64, ptr }, ptr %var.load367, i32 0, i32 1
  %eq.rhs.data395 = load ptr, ptr %eq.rhs.data394, align 8
  %eq.memcmp396 = call i32 @memcmp(ptr %eq.lhs.data393, ptr %eq.rhs.data395, i64 %eq.lhs.len370)
  %eq.cmp.zero397 = icmp eq i32 %eq.memcmp396, 0
  br label %str.eq.merge391

str.eq.else390:                                   ; preds = %str_ok384
  br label %str.eq.merge391

str.eq.merge391:                                  ; preds = %str.eq.else390, %str.eq.then389
  %str.eq.result398 = phi i1 [ %eq.cmp.zero397, %str.eq.then389 ], [ false, %str.eq.else390 ]
  br label %or.178.exit

str_gen_check406:                                 ; preds = %choice.else331
  %arena.cur409 = call ptr @dva_arena_current()
  %tag.valid410 = call i1 @dva_arena_validate_tag(ptr %arena.cur409, i64 %str.tag404)
  br i1 %tag.valid410, label %str_ok407, label %str_stale408

str_ok407:                                        ; preds = %str_stale408, %str_gen_check406, %choice.else331
  %eq.rhs.len411 = getelementptr inbounds { i64, ptr }, ptr %var.load400, i32 0, i32 0
  %eq.rhs.len412 = load i64, ptr %eq.rhs.len411, align 8
  %eq.rhs.len413 = and i64 %eq.rhs.len412, 281474976710655
  %str.tag414 = lshr i64 %eq.rhs.len412, 48
  %str.immortal415 = icmp eq i64 %str.tag414, 0
  br i1 %str.immortal415, label %str_ok417, label %str_gen_check416

str_stale408:                                     ; preds = %str_gen_check406
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok407

str_gen_check416:                                 ; preds = %str_ok407
  %arena.cur419 = call ptr @dva_arena_current()
  %tag.valid420 = call i1 @dva_arena_validate_tag(ptr %arena.cur419, i64 %str.tag414)
  br i1 %tag.valid420, label %str_ok417, label %str_stale418

str_ok417:                                        ; preds = %str_stale418, %str_gen_check416, %str_ok407
  %eq.len421 = icmp eq i64 %eq.lhs.len403, %eq.rhs.len413
  br i1 %eq.len421, label %str.eq.then422, label %str.eq.else423

str_stale418:                                     ; preds = %str_gen_check416
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok417

str.eq.then422:                                   ; preds = %str_ok417
  %eq.lhs.data425 = getelementptr inbounds { i64, ptr }, ptr %var.load399, i32 0, i32 1
  %eq.lhs.data426 = load ptr, ptr %eq.lhs.data425, align 8
  %eq.rhs.data427 = getelementptr inbounds { i64, ptr }, ptr %var.load400, i32 0, i32 1
  %eq.rhs.data428 = load ptr, ptr %eq.rhs.data427, align 8
  %eq.memcmp429 = call i32 @memcmp(ptr %eq.lhs.data426, ptr %eq.rhs.data428, i64 %eq.lhs.len403)
  %eq.cmp.zero430 = icmp eq i32 %eq.memcmp429, 0
  br label %str.eq.merge424

str.eq.else423:                                   ; preds = %str_ok417
  br label %str.eq.merge424

str.eq.merge424:                                  ; preds = %str.eq.else423, %str.eq.then422
  %str.eq.result431 = phi i1 [ %eq.cmp.zero430, %str.eq.then422 ], [ false, %str.eq.else423 ]
  br i1 %str.eq.result431, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %str.eq.merge424
  br label %or.179.exit

or.179.else:                                      ; preds = %str.eq.merge424
  %var.load432 = load ptr, ptr %var.n, align 8
  %var.load433 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len434 = getelementptr inbounds { i64, ptr }, ptr %var.load432, i32 0, i32 0
  %eq.lhs.len435 = load i64, ptr %eq.lhs.len434, align 8
  %eq.lhs.len436 = and i64 %eq.lhs.len435, 281474976710655
  %str.tag437 = lshr i64 %eq.lhs.len435, 48
  %str.immortal438 = icmp eq i64 %str.tag437, 0
  br i1 %str.immortal438, label %str_ok440, label %str_gen_check439

or.179.exit:                                      ; preds = %str.eq.merge457, %or.179.then
  %or.179.phi = phi i1 [ %str.eq.result431, %or.179.then ], [ %str.eq.result464, %str.eq.merge457 ]
  br i1 %or.179.phi, label %or.180.then, label %or.180.else

str_gen_check439:                                 ; preds = %or.179.else
  %arena.cur442 = call ptr @dva_arena_current()
  %tag.valid443 = call i1 @dva_arena_validate_tag(ptr %arena.cur442, i64 %str.tag437)
  br i1 %tag.valid443, label %str_ok440, label %str_stale441

str_ok440:                                        ; preds = %str_stale441, %str_gen_check439, %or.179.else
  %eq.rhs.len444 = getelementptr inbounds { i64, ptr }, ptr %var.load433, i32 0, i32 0
  %eq.rhs.len445 = load i64, ptr %eq.rhs.len444, align 8
  %eq.rhs.len446 = and i64 %eq.rhs.len445, 281474976710655
  %str.tag447 = lshr i64 %eq.rhs.len445, 48
  %str.immortal448 = icmp eq i64 %str.tag447, 0
  br i1 %str.immortal448, label %str_ok450, label %str_gen_check449

str_stale441:                                     ; preds = %str_gen_check439
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok440

str_gen_check449:                                 ; preds = %str_ok440
  %arena.cur452 = call ptr @dva_arena_current()
  %tag.valid453 = call i1 @dva_arena_validate_tag(ptr %arena.cur452, i64 %str.tag447)
  br i1 %tag.valid453, label %str_ok450, label %str_stale451

str_ok450:                                        ; preds = %str_stale451, %str_gen_check449, %str_ok440
  %eq.len454 = icmp eq i64 %eq.lhs.len436, %eq.rhs.len446
  br i1 %eq.len454, label %str.eq.then455, label %str.eq.else456

str_stale451:                                     ; preds = %str_gen_check449
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok450

str.eq.then455:                                   ; preds = %str_ok450
  %eq.lhs.data458 = getelementptr inbounds { i64, ptr }, ptr %var.load432, i32 0, i32 1
  %eq.lhs.data459 = load ptr, ptr %eq.lhs.data458, align 8
  %eq.rhs.data460 = getelementptr inbounds { i64, ptr }, ptr %var.load433, i32 0, i32 1
  %eq.rhs.data461 = load ptr, ptr %eq.rhs.data460, align 8
  %eq.memcmp462 = call i32 @memcmp(ptr %eq.lhs.data459, ptr %eq.rhs.data461, i64 %eq.lhs.len436)
  %eq.cmp.zero463 = icmp eq i32 %eq.memcmp462, 0
  br label %str.eq.merge457

str.eq.else456:                                   ; preds = %str_ok450
  br label %str.eq.merge457

str.eq.merge457:                                  ; preds = %str.eq.else456, %str.eq.then455
  %str.eq.result464 = phi i1 [ %eq.cmp.zero463, %str.eq.then455 ], [ false, %str.eq.else456 ]
  br label %or.179.exit

or.180.then:                                      ; preds = %or.179.exit
  br label %or.180.exit

or.180.else:                                      ; preds = %or.179.exit
  %var.load465 = load ptr, ptr %var.n, align 8
  %var.load466 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len467 = getelementptr inbounds { i64, ptr }, ptr %var.load465, i32 0, i32 0
  %eq.lhs.len468 = load i64, ptr %eq.lhs.len467, align 8
  %eq.lhs.len469 = and i64 %eq.lhs.len468, 281474976710655
  %str.tag470 = lshr i64 %eq.lhs.len468, 48
  %str.immortal471 = icmp eq i64 %str.tag470, 0
  br i1 %str.immortal471, label %str_ok473, label %str_gen_check472

or.180.exit:                                      ; preds = %str.eq.merge490, %or.180.then
  %or.180.phi = phi i1 [ %or.179.phi, %or.180.then ], [ %str.eq.result497, %str.eq.merge490 ]
  br i1 %or.180.phi, label %or.181.then, label %or.181.else

str_gen_check472:                                 ; preds = %or.180.else
  %arena.cur475 = call ptr @dva_arena_current()
  %tag.valid476 = call i1 @dva_arena_validate_tag(ptr %arena.cur475, i64 %str.tag470)
  br i1 %tag.valid476, label %str_ok473, label %str_stale474

str_ok473:                                        ; preds = %str_stale474, %str_gen_check472, %or.180.else
  %eq.rhs.len477 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 0
  %eq.rhs.len478 = load i64, ptr %eq.rhs.len477, align 8
  %eq.rhs.len479 = and i64 %eq.rhs.len478, 281474976710655
  %str.tag480 = lshr i64 %eq.rhs.len478, 48
  %str.immortal481 = icmp eq i64 %str.tag480, 0
  br i1 %str.immortal481, label %str_ok483, label %str_gen_check482

str_stale474:                                     ; preds = %str_gen_check472
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok473

str_gen_check482:                                 ; preds = %str_ok473
  %arena.cur485 = call ptr @dva_arena_current()
  %tag.valid486 = call i1 @dva_arena_validate_tag(ptr %arena.cur485, i64 %str.tag480)
  br i1 %tag.valid486, label %str_ok483, label %str_stale484

str_ok483:                                        ; preds = %str_stale484, %str_gen_check482, %str_ok473
  %eq.len487 = icmp eq i64 %eq.lhs.len469, %eq.rhs.len479
  br i1 %eq.len487, label %str.eq.then488, label %str.eq.else489

str_stale484:                                     ; preds = %str_gen_check482
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok483

str.eq.then488:                                   ; preds = %str_ok483
  %eq.lhs.data491 = getelementptr inbounds { i64, ptr }, ptr %var.load465, i32 0, i32 1
  %eq.lhs.data492 = load ptr, ptr %eq.lhs.data491, align 8
  %eq.rhs.data493 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 1
  %eq.rhs.data494 = load ptr, ptr %eq.rhs.data493, align 8
  %eq.memcmp495 = call i32 @memcmp(ptr %eq.lhs.data492, ptr %eq.rhs.data494, i64 %eq.lhs.len469)
  %eq.cmp.zero496 = icmp eq i32 %eq.memcmp495, 0
  br label %str.eq.merge490

str.eq.else489:                                   ; preds = %str_ok483
  br label %str.eq.merge490

str.eq.merge490:                                  ; preds = %str.eq.else489, %str.eq.then488
  %str.eq.result497 = phi i1 [ %eq.cmp.zero496, %str.eq.then488 ], [ false, %str.eq.else489 ]
  br label %or.180.exit

or.181.then:                                      ; preds = %or.180.exit
  br label %or.181.exit

or.181.else:                                      ; preds = %or.180.exit
  %var.load498 = load ptr, ptr %var.env, align 8
  %fld.gep499 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load498, i32 0, i32 8
  %fld.load500 = load ptr, ptr %fld.gep499, align 8
  %eq.lhs.len501 = getelementptr inbounds { i64, ptr }, ptr %fld.load500, i32 0, i32 0
  %eq.lhs.len502 = load i64, ptr %eq.lhs.len501, align 8
  %eq.lhs.len503 = and i64 %eq.lhs.len502, 281474976710655
  %str.tag504 = lshr i64 %eq.lhs.len502, 48
  %str.immortal505 = icmp eq i64 %str.tag504, 0
  br i1 %str.immortal505, label %str_ok507, label %str_gen_check506

or.181.exit:                                      ; preds = %and.182.exit, %or.181.then
  %or.181.phi = phi i1 [ %or.180.phi, %or.181.then ], [ %and.182.phi, %and.182.exit ]
  br label %choice.exit332

str_gen_check506:                                 ; preds = %or.181.else
  %arena.cur509 = call ptr @dva_arena_current()
  %tag.valid510 = call i1 @dva_arena_validate_tag(ptr %arena.cur509, i64 %str.tag504)
  br i1 %tag.valid510, label %str_ok507, label %str_stale508

str_ok507:                                        ; preds = %str_stale508, %str_gen_check506, %or.181.else
  %eq.rhs.len511 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len512 = and i64 %eq.rhs.len511, 281474976710655
  %str.tag513 = lshr i64 %eq.rhs.len511, 48
  %str.immortal514 = icmp eq i64 %str.tag513, 0
  br i1 %str.immortal514, label %str_ok516, label %str_gen_check515

str_stale508:                                     ; preds = %str_gen_check506
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok507

str_gen_check515:                                 ; preds = %str_ok507
  %arena.cur518 = call ptr @dva_arena_current()
  %tag.valid519 = call i1 @dva_arena_validate_tag(ptr %arena.cur518, i64 %str.tag513)
  br i1 %tag.valid519, label %str_ok516, label %str_stale517

str_ok516:                                        ; preds = %str_stale517, %str_gen_check515, %str_ok507
  %eq.len520 = icmp eq i64 %eq.lhs.len503, %eq.rhs.len512
  br i1 %eq.len520, label %str.eq.then521, label %str.eq.else522

str_stale517:                                     ; preds = %str_gen_check515
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok516

str.eq.then521:                                   ; preds = %str_ok516
  %eq.lhs.data524 = getelementptr inbounds { i64, ptr }, ptr %fld.load500, i32 0, i32 1
  %eq.lhs.data525 = load ptr, ptr %eq.lhs.data524, align 8
  %eq.rhs.data526 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp527 = call i32 @memcmp(ptr %eq.lhs.data525, ptr %eq.rhs.data526, i64 %eq.lhs.len503)
  %eq.cmp.zero528 = icmp eq i32 %eq.memcmp527, 0
  br label %str.eq.merge523

str.eq.else522:                                   ; preds = %str_ok516
  br label %str.eq.merge523

str.eq.merge523:                                  ; preds = %str.eq.else522, %str.eq.then521
  %str.eq.result529 = phi i1 [ %eq.cmp.zero528, %str.eq.then521 ], [ false, %str.eq.else522 ]
  %str.neq530 = xor i1 %str.eq.result529, true
  br i1 %str.neq530, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %str.eq.merge523
  %var.load531 = load ptr, ptr %var.name, align 8
  %var.load532 = load ptr, ptr %var.env, align 8
  %fld.gep533 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load532, i32 0, i32 8
  %fld.load534 = load ptr, ptr %fld.gep533, align 8
  %concat.lhs535 = load i64, ptr @str.0.struct, align 8
  %concat.lhs536 = and i64 %concat.lhs535, 281474976710655
  %str.tag537 = lshr i64 %concat.lhs535, 48
  %str.immortal538 = icmp eq i64 %str.tag537, 0
  br i1 %str.immortal538, label %str_ok540, label %str_gen_check539

and.182.else:                                     ; preds = %str.eq.merge523
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %str.eq.merge681
  %and.182.phi = phi i1 [ %str.eq.result688, %str.eq.merge681 ], [ %str.neq530, %and.182.else ]
  br label %or.181.exit

str_gen_check539:                                 ; preds = %and.182.then
  %arena.cur542 = call ptr @dva_arena_current()
  %tag.valid543 = call i1 @dva_arena_validate_tag(ptr %arena.cur542, i64 %str.tag537)
  br i1 %tag.valid543, label %str_ok540, label %str_stale541

str_ok540:                                        ; preds = %str_stale541, %str_gen_check539, %and.182.then
  %concat.lhs544 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs545 = getelementptr inbounds { i64, ptr }, ptr %fld.load534, i32 0, i32 0
  %concat.rhs546 = load i64, ptr %concat.rhs545, align 8
  %concat.rhs547 = and i64 %concat.rhs546, 281474976710655
  %str.tag548 = lshr i64 %concat.rhs546, 48
  %str.immortal549 = icmp eq i64 %str.tag548, 0
  br i1 %str.immortal549, label %str_ok551, label %str_gen_check550

str_stale541:                                     ; preds = %str_gen_check539
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok540

str_gen_check550:                                 ; preds = %str_ok540
  %arena.cur553 = call ptr @dva_arena_current()
  %tag.valid554 = call i1 @dva_arena_validate_tag(ptr %arena.cur553, i64 %str.tag548)
  br i1 %tag.valid554, label %str_ok551, label %str_stale552

str_ok551:                                        ; preds = %str_stale552, %str_gen_check550, %str_ok540
  %concat.rhs555 = getelementptr inbounds { i64, ptr }, ptr %fld.load534, i32 0, i32 1
  %concat.rhs556 = load ptr, ptr %concat.rhs555, align 8
  %concat.sum.len557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs536, i64 %concat.rhs547)
  %sum558 = extractvalue { i64, i1 } %concat.sum.len557, 0
  %ovf559 = extractvalue { i64, i1 } %concat.sum.len557, 1
  br i1 %ovf559, label %str_overflow_abort561, label %concat.sum.len560

str_stale552:                                     ; preds = %str_gen_check550
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok551

concat.sum.len560:                                ; preds = %str_overflow_abort561, %str_ok551
  %concat.tot.len562 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum558, i64 1)
  %sum563 = extractvalue { i64, i1 } %concat.tot.len562, 0
  %ovf564 = extractvalue { i64, i1 } %concat.tot.len562, 1
  br i1 %ovf564, label %str_overflow_abort566, label %concat.tot.len565

str_overflow_abort561:                            ; preds = %str_ok551
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len560

concat.tot.len565:                                ; preds = %str_overflow_abort566, %concat.sum.len560
  %arena.cur567 = call ptr @dva_arena_current()
  %concat.buf568 = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 %sum563)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf568, ptr align 1 %concat.lhs544, i64 %concat.lhs536, i1 false)
  %concat.mid569 = getelementptr i8, ptr %concat.buf568, i64 %concat.lhs536
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid569, ptr align 1 %concat.rhs556, i64 %concat.rhs547, i1 false)
  %concat.nul570 = getelementptr i8, ptr %concat.buf568, i64 %sum558
  store i8 0, ptr %concat.nul570, align 1
  %arena.cur571 = call ptr @dva_arena_current()
  %concat.str572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 16)
  %str.build.len.gep573 = getelementptr inbounds { i64, ptr }, ptr %concat.str572, i32 0, i32 0
  store i64 %sum558, ptr %str.build.len.gep573, align 8
  %str.build.data.gep574 = getelementptr inbounds { i64, ptr }, ptr %concat.str572, i32 0, i32 1
  store ptr %concat.buf568, ptr %str.build.data.gep574, align 8
  %concat.lhs575 = getelementptr inbounds { i64, ptr }, ptr %concat.str572, i32 0, i32 0
  %concat.lhs576 = load i64, ptr %concat.lhs575, align 8
  %concat.lhs577 = and i64 %concat.lhs576, 281474976710655
  %str.tag578 = lshr i64 %concat.lhs576, 48
  %str.immortal579 = icmp eq i64 %str.tag578, 0
  br i1 %str.immortal579, label %str_ok581, label %str_gen_check580

str_overflow_abort566:                            ; preds = %concat.sum.len560
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len565

str_gen_check580:                                 ; preds = %concat.tot.len565
  %arena.cur583 = call ptr @dva_arena_current()
  %tag.valid584 = call i1 @dva_arena_validate_tag(ptr %arena.cur583, i64 %str.tag578)
  br i1 %tag.valid584, label %str_ok581, label %str_stale582

str_ok581:                                        ; preds = %str_stale582, %str_gen_check580, %concat.tot.len565
  %concat.lhs585 = getelementptr inbounds { i64, ptr }, ptr %concat.str572, i32 0, i32 1
  %concat.lhs586 = load ptr, ptr %concat.lhs585, align 8
  %concat.rhs587 = load i64, ptr @str.4.struct, align 8
  %concat.rhs588 = and i64 %concat.rhs587, 281474976710655
  %str.tag589 = lshr i64 %concat.rhs587, 48
  %str.immortal590 = icmp eq i64 %str.tag589, 0
  br i1 %str.immortal590, label %str_ok592, label %str_gen_check591

str_stale582:                                     ; preds = %str_gen_check580
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok581

str_gen_check591:                                 ; preds = %str_ok581
  %arena.cur594 = call ptr @dva_arena_current()
  %tag.valid595 = call i1 @dva_arena_validate_tag(ptr %arena.cur594, i64 %str.tag589)
  br i1 %tag.valid595, label %str_ok592, label %str_stale593

str_ok592:                                        ; preds = %str_stale593, %str_gen_check591, %str_ok581
  %concat.rhs596 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len597 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs577, i64 %concat.rhs588)
  %sum598 = extractvalue { i64, i1 } %concat.sum.len597, 0
  %ovf599 = extractvalue { i64, i1 } %concat.sum.len597, 1
  br i1 %ovf599, label %str_overflow_abort601, label %concat.sum.len600

str_stale593:                                     ; preds = %str_gen_check591
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok592

concat.sum.len600:                                ; preds = %str_overflow_abort601, %str_ok592
  %concat.tot.len602 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum598, i64 1)
  %sum603 = extractvalue { i64, i1 } %concat.tot.len602, 0
  %ovf604 = extractvalue { i64, i1 } %concat.tot.len602, 1
  br i1 %ovf604, label %str_overflow_abort606, label %concat.tot.len605

str_overflow_abort601:                            ; preds = %str_ok592
  %50 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len600

concat.tot.len605:                                ; preds = %str_overflow_abort606, %concat.sum.len600
  %arena.cur607 = call ptr @dva_arena_current()
  %concat.buf608 = call ptr @dva_arena_alloc(ptr %arena.cur607, i64 %sum603)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf608, ptr align 1 %concat.lhs586, i64 %concat.lhs577, i1 false)
  %concat.mid609 = getelementptr i8, ptr %concat.buf608, i64 %concat.lhs577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid609, ptr align 1 %concat.rhs596, i64 %concat.rhs588, i1 false)
  %concat.nul610 = getelementptr i8, ptr %concat.buf608, i64 %sum598
  store i8 0, ptr %concat.nul610, align 1
  %arena.cur611 = call ptr @dva_arena_current()
  %concat.str612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 16)
  %str.build.len.gep613 = getelementptr inbounds { i64, ptr }, ptr %concat.str612, i32 0, i32 0
  store i64 %sum598, ptr %str.build.len.gep613, align 8
  %str.build.data.gep614 = getelementptr inbounds { i64, ptr }, ptr %concat.str612, i32 0, i32 1
  store ptr %concat.buf608, ptr %str.build.data.gep614, align 8
  %var.load615 = load ptr, ptr %var.n, align 8
  %concat.lhs616 = getelementptr inbounds { i64, ptr }, ptr %concat.str612, i32 0, i32 0
  %concat.lhs617 = load i64, ptr %concat.lhs616, align 8
  %concat.lhs618 = and i64 %concat.lhs617, 281474976710655
  %str.tag619 = lshr i64 %concat.lhs617, 48
  %str.immortal620 = icmp eq i64 %str.tag619, 0
  br i1 %str.immortal620, label %str_ok622, label %str_gen_check621

str_overflow_abort606:                            ; preds = %concat.sum.len600
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len605

str_gen_check621:                                 ; preds = %concat.tot.len605
  %arena.cur624 = call ptr @dva_arena_current()
  %tag.valid625 = call i1 @dva_arena_validate_tag(ptr %arena.cur624, i64 %str.tag619)
  br i1 %tag.valid625, label %str_ok622, label %str_stale623

str_ok622:                                        ; preds = %str_stale623, %str_gen_check621, %concat.tot.len605
  %concat.lhs626 = getelementptr inbounds { i64, ptr }, ptr %concat.str612, i32 0, i32 1
  %concat.lhs627 = load ptr, ptr %concat.lhs626, align 8
  %concat.rhs628 = getelementptr inbounds { i64, ptr }, ptr %var.load615, i32 0, i32 0
  %concat.rhs629 = load i64, ptr %concat.rhs628, align 8
  %concat.rhs630 = and i64 %concat.rhs629, 281474976710655
  %str.tag631 = lshr i64 %concat.rhs629, 48
  %str.immortal632 = icmp eq i64 %str.tag631, 0
  br i1 %str.immortal632, label %str_ok634, label %str_gen_check633

str_stale623:                                     ; preds = %str_gen_check621
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok622

str_gen_check633:                                 ; preds = %str_ok622
  %arena.cur636 = call ptr @dva_arena_current()
  %tag.valid637 = call i1 @dva_arena_validate_tag(ptr %arena.cur636, i64 %str.tag631)
  br i1 %tag.valid637, label %str_ok634, label %str_stale635

str_ok634:                                        ; preds = %str_stale635, %str_gen_check633, %str_ok622
  %concat.rhs638 = getelementptr inbounds { i64, ptr }, ptr %var.load615, i32 0, i32 1
  %concat.rhs639 = load ptr, ptr %concat.rhs638, align 8
  %concat.sum.len640 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs618, i64 %concat.rhs630)
  %sum641 = extractvalue { i64, i1 } %concat.sum.len640, 0
  %ovf642 = extractvalue { i64, i1 } %concat.sum.len640, 1
  br i1 %ovf642, label %str_overflow_abort644, label %concat.sum.len643

str_stale635:                                     ; preds = %str_gen_check633
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok634

concat.sum.len643:                                ; preds = %str_overflow_abort644, %str_ok634
  %concat.tot.len645 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum641, i64 1)
  %sum646 = extractvalue { i64, i1 } %concat.tot.len645, 0
  %ovf647 = extractvalue { i64, i1 } %concat.tot.len645, 1
  br i1 %ovf647, label %str_overflow_abort649, label %concat.tot.len648

str_overflow_abort644:                            ; preds = %str_ok634
  %54 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len643

concat.tot.len648:                                ; preds = %str_overflow_abort649, %concat.sum.len643
  %arena.cur650 = call ptr @dva_arena_current()
  %concat.buf651 = call ptr @dva_arena_alloc(ptr %arena.cur650, i64 %sum646)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf651, ptr align 1 %concat.lhs627, i64 %concat.lhs618, i1 false)
  %concat.mid652 = getelementptr i8, ptr %concat.buf651, i64 %concat.lhs618
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid652, ptr align 1 %concat.rhs639, i64 %concat.rhs630, i1 false)
  %concat.nul653 = getelementptr i8, ptr %concat.buf651, i64 %sum641
  store i8 0, ptr %concat.nul653, align 1
  %arena.cur654 = call ptr @dva_arena_current()
  %concat.str655 = call ptr @dva_arena_alloc(ptr %arena.cur654, i64 16)
  %str.build.len.gep656 = getelementptr inbounds { i64, ptr }, ptr %concat.str655, i32 0, i32 0
  store i64 %sum641, ptr %str.build.len.gep656, align 8
  %str.build.data.gep657 = getelementptr inbounds { i64, ptr }, ptr %concat.str655, i32 0, i32 1
  store ptr %concat.buf651, ptr %str.build.data.gep657, align 8
  %eq.lhs.len658 = getelementptr inbounds { i64, ptr }, ptr %var.load531, i32 0, i32 0
  %eq.lhs.len659 = load i64, ptr %eq.lhs.len658, align 8
  %eq.lhs.len660 = and i64 %eq.lhs.len659, 281474976710655
  %str.tag661 = lshr i64 %eq.lhs.len659, 48
  %str.immortal662 = icmp eq i64 %str.tag661, 0
  br i1 %str.immortal662, label %str_ok664, label %str_gen_check663

str_overflow_abort649:                            ; preds = %concat.sum.len643
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len648

str_gen_check663:                                 ; preds = %concat.tot.len648
  %arena.cur666 = call ptr @dva_arena_current()
  %tag.valid667 = call i1 @dva_arena_validate_tag(ptr %arena.cur666, i64 %str.tag661)
  br i1 %tag.valid667, label %str_ok664, label %str_stale665

str_ok664:                                        ; preds = %str_stale665, %str_gen_check663, %concat.tot.len648
  %eq.rhs.len668 = getelementptr inbounds { i64, ptr }, ptr %concat.str655, i32 0, i32 0
  %eq.rhs.len669 = load i64, ptr %eq.rhs.len668, align 8
  %eq.rhs.len670 = and i64 %eq.rhs.len669, 281474976710655
  %str.tag671 = lshr i64 %eq.rhs.len669, 48
  %str.immortal672 = icmp eq i64 %str.tag671, 0
  br i1 %str.immortal672, label %str_ok674, label %str_gen_check673

str_stale665:                                     ; preds = %str_gen_check663
  %56 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok664

str_gen_check673:                                 ; preds = %str_ok664
  %arena.cur676 = call ptr @dva_arena_current()
  %tag.valid677 = call i1 @dva_arena_validate_tag(ptr %arena.cur676, i64 %str.tag671)
  br i1 %tag.valid677, label %str_ok674, label %str_stale675

str_ok674:                                        ; preds = %str_stale675, %str_gen_check673, %str_ok664
  %eq.len678 = icmp eq i64 %eq.lhs.len660, %eq.rhs.len670
  br i1 %eq.len678, label %str.eq.then679, label %str.eq.else680

str_stale675:                                     ; preds = %str_gen_check673
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok674

str.eq.then679:                                   ; preds = %str_ok674
  %eq.lhs.data682 = getelementptr inbounds { i64, ptr }, ptr %var.load531, i32 0, i32 1
  %eq.lhs.data683 = load ptr, ptr %eq.lhs.data682, align 8
  %eq.rhs.data684 = getelementptr inbounds { i64, ptr }, ptr %concat.str655, i32 0, i32 1
  %eq.rhs.data685 = load ptr, ptr %eq.rhs.data684, align 8
  %eq.memcmp686 = call i32 @memcmp(ptr %eq.lhs.data683, ptr %eq.rhs.data685, i64 %eq.lhs.len660)
  %eq.cmp.zero687 = icmp eq i32 %eq.memcmp686, 0
  br label %str.eq.merge681

str.eq.else680:                                   ; preds = %str_ok674
  br label %str.eq.merge681

str.eq.merge681:                                  ; preds = %str.eq.else680, %str.eq.then679
  %str.eq.result688 = phi i1 [ %eq.cmp.zero687, %str.eq.then679 ], [ false, %str.eq.else680 ]
  br label %and.182.exit

choice.then691:                                   ; preds = %choice.exit332
  ret i1 true

choice.exit692:                                   ; preds = %ret.dead, %choice.exit332
  br label %loop.latch.177

ret.dead:                                         ; No predecessors!
  br label %choice.exit692
}

define void @"type_env::enter_scope"(ptr %0) #1 {
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
  store ptr %a.create2, ptr %var.bnds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.bnds, align 8
  %var.load4 = load i64, ptr %var.parent_idx, align 8
  %arena.cur5 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 48)
  %arena.cur6 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 64)
  %arena.cur7 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 64)
  %arena.cur8 = call ptr @dva_arena_current()
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
  %arena.cur9 = call ptr @dva_arena_current()
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
  %arena.cur20 = call ptr @dva_arena_current()
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
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

define void @"type_env::leave_scope"(ptr %0) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur12 = call ptr @dva_arena_current()
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

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #1 {
entry:
  %var._367 = alloca ptr, align 8
  %var._366 = alloca ptr, align 8
  %var._365 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after398, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur12 = call ptr @dva_arena_current()
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %a.after42
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.after42
  %hash.str = call i64 @dva_hash_string(ptr %mk.data56, i64 %mk.len58)
  %m.capm1 = sub i64 %m.cap52, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb60 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
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
  %m.has.tomb = icmp ne i64 %m.tomb60, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb60, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys53, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen61 = load i64, ptr %mk.slen, align 8
  %mk.slen62 = and i64 %mk.slen61, 281474976710655
  %str.tag63 = lshr i64 %mk.slen61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals54, i64 %m.idx
  store i64 %a.len.query51, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb60, %mk.eq.merge ]
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

m.done:                                           ; preds = %m.ins.slot, %m.done203, %m.overwrite
  %var.load279 = load ptr, ptr %var.name, align 8
  %var.load280 = load ptr, ptr %var.ut, align 8
  %var.load281 = load ptr, ptr %var.ti, align 8
  %var.load282 = load i1, ptr %var.is_mut, align 1
  %var.load283 = load ptr, ptr %var.env, align 8
  %fld.gep284 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load283, i32 0, i32 2
  %fld.load285 = load i64, ptr %fld.gep284, align 8
  %arena.cur286 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load279, ptr %rec.fld, align 8
  %rec.fld287 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load280, ptr %rec.fld287, align 8
  %rec.fld288 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load281, ptr %rec.fld288, align 8
  %rec.fld289 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load282, ptr %rec.fld289, align 1
  %rec.fld290 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld290, align 1
  %rec.fld291 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load285, ptr %rec.fld291, align 8
  %a.load292 = load ptr, ptr %var.bnds, align 8
  %a.null293 = icmp eq ptr %a.load292, null
  br i1 %a.null293, label %a.create294, label %a.after295

str_gen_check65:                                  ; preds = %m.found
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen70 = load i64, ptr %mk.nlen, align 8
  %mk.nlen71 = and i64 %mk.nlen70, 281474976710655
  %str.tag72 = lshr i64 %mk.nlen70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_stale67:                                      ; preds = %str_gen_check65
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str_gen_check74:                                  ; preds = %str_ok66
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str_ok66
  %mk.lenseq = icmp eq i64 %mk.slen62, %mk.nlen71
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale76:                                      ; preds = %str_gen_check74
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

mk.eq.then:                                       ; preds = %str_ok75
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata79 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata80 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata79, ptr %mk.ndata80, i64 %mk.nlen71)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok75
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.old.cap81 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.old.keys82 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.old.vals83 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.old.states84 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap81, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.live.cnt85 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt85, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap81
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap81
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur86 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur87 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %m.gv.bytes)
  %arena.cur88 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %m.new.cap)
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
  %m.use.tomb266 = icmp ne i64 %m.tomb60, -1
  %m.ins.idx267 = select i1 %m.use.tomb266, i64 %m.tomb60, i64 %m.idx
  %m.key.slot268 = getelementptr i64, ptr %m.keys53, i64 %m.ins.idx267
  store ptr %var.load37, ptr %m.key.slot268, align 8
  %m.val.slot269 = getelementptr i64, ptr %m.vals54, i64 %m.ins.idx267
  store i64 %a.len.query51, ptr %m.val.slot269, align 8
  %m.ins.state.slot270 = getelementptr i8, ptr %m.states55, i64 %m.ins.idx267
  store i8 1, ptr %m.ins.state.slot270, align 1
  %m.count271 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count272 = load i64, ptr %m.count271, align 8
  %m.count.next273 = add i64 %m.count272, 1
  %m.count.gep274 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next273, ptr %m.count.gep274, align 8
  %m.ins.tombs.p275 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs276 = load i64, ptr %m.ins.tombs.p275, align 8
  %m.tomb.dec277 = select i1 %m.use.tomb266, i64 1, i64 0
  %m.ins.tombs.next278 = sub i64 %m.ins.tombs276, %m.tomb.dec277
  store i64 %m.ins.tombs.next278, ptr %m.ins.tombs.p275, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap81
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states84, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done119, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap173 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap174 = load i64, ptr %m.cap173, align 8
  %m.keys175 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys176 = load ptr, ptr %m.keys175, align 8
  %m.vals177 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals178 = load ptr, ptr %m.vals177, align 8
  %m.states179 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states180 = load ptr, ptr %m.states179, align 8
  %mk.data181 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data182 = load ptr, ptr %mk.data181, align 8
  %mk.len183 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len184 = load i64, ptr %mk.len183, align 8
  %mk.len185 = and i64 %mk.len184, 281474976710655
  %str.tag186 = lshr i64 %mk.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys82, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals83, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap89 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap90 = load i64, ptr %m.cap89, align 8
  %m.keys91 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys92 = load ptr, ptr %m.keys91, align 8
  %m.vals93 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals94 = load ptr, ptr %m.vals93, align 8
  %m.states95 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states96 = load ptr, ptr %m.states95, align 8
  %mk.data97 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data98 = load ptr, ptr %mk.data97, align 8
  %mk.len99 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len100 = load i64, ptr %mk.len99, align 8
  %mk.len101 = and i64 %mk.len100, 281474976710655
  %str.tag102 = lshr i64 %mk.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

str_gen_check104:                                 ; preds = %m.re.ins
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %m.re.ins
  %hash.str109 = call i64 @dva_hash_string(ptr %mk.data98, i64 %mk.len101)
  %m.capm1110 = sub i64 %m.cap90, 1
  %m.idx0111 = and i64 %hash.str109, %m.capm1110
  br label %m.loop112

str_stale106:                                     ; preds = %str_gen_check104
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

m.loop112:                                        ; preds = %m.next117, %str_ok105
  %m.idx120 = phi i64 [ %m.idx0111, %str_ok105 ], [ %m.idx.next167, %m.next117 ]
  %m.tomb121 = phi i64 [ -1, %str_ok105 ], [ %m.next.tomb165, %m.next117 ]
  %m.probe122 = phi i64 [ 0, %str_ok105 ], [ %m.probe.next168, %m.next117 ]
  %m.reached.cap123 = icmp eq i64 %m.probe122, %m.cap90
  %m.state.gep124 = getelementptr i8, ptr %m.states96, i64 %m.idx120
  %m.state125 = load i8, ptr %m.state.gep124, align 1
  %m.is.empty126 = icmp eq i8 %m.state125, 0
  %m.stop127 = or i1 %m.is.empty126, %m.reached.cap123
  br i1 %m.stop127, label %m.empty118, label %m.check.tomb113

m.check.tomb113:                                  ; preds = %m.loop112
  %m.is.tomb128 = icmp eq i8 %m.state125, 2
  br i1 %m.is.tomb128, label %m.tomb114, label %m.found115

m.tomb114:                                        ; preds = %m.check.tomb113
  %m.has.tomb129 = icmp ne i64 %m.tomb121, -1
  %m.tomb.sel130 = select i1 %m.has.tomb129, i64 %m.tomb121, i64 %m.idx120
  br label %m.next117

m.found115:                                       ; preds = %m.check.tomb113
  %m.key.slot131 = getelementptr i64, ptr %m.keys92, i64 %m.idx120
  %mk.stored132 = load ptr, ptr %m.key.slot131, align 8
  %mk.slen133 = getelementptr inbounds { i64, ptr }, ptr %mk.stored132, i32 0, i32 0
  %mk.slen134 = load i64, ptr %mk.slen133, align 8
  %mk.slen135 = and i64 %mk.slen134, 281474976710655
  %str.tag136 = lshr i64 %mk.slen134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

m.overwrite116:                                   ; preds = %mk.eq.merge156
  %m.val.slot164 = getelementptr i64, ptr %m.vals94, i64 %m.idx120
  store i64 %m.re.val, ptr %m.val.slot164, align 8
  br label %m.done119

m.next117:                                        ; preds = %mk.eq.merge156, %m.tomb114
  %m.next.tomb165 = phi i64 [ %m.tomb.sel130, %m.tomb114 ], [ %m.tomb121, %mk.eq.merge156 ]
  %m.idx.add166 = add i64 %m.idx120, 1
  %m.idx.next167 = and i64 %m.idx.add166, %m.capm1110
  %m.probe.next168 = add i64 %m.probe122, 1
  br label %m.loop112

m.empty118:                                       ; preds = %m.loop112
  %m.use.tomb = icmp ne i64 %m.tomb121, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb121, i64 %m.idx120
  %m.key.slot169 = getelementptr i64, ptr %m.keys92, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot169, align 8
  %m.val.slot170 = getelementptr i64, ptr %m.vals94, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot170, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states96, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count171 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count171, 1
  %m.count.gep172 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep172, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done119

m.done119:                                        ; preds = %m.empty118, %m.overwrite116
  br label %m.re.cont

str_gen_check138:                                 ; preds = %m.found115
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %m.found115
  %mk.nlen143 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen144 = load i64, ptr %mk.nlen143, align 8
  %mk.nlen145 = and i64 %mk.nlen144, 281474976710655
  %str.tag146 = lshr i64 %mk.nlen144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

str_stale140:                                     ; preds = %str_gen_check138
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

str_gen_check148:                                 ; preds = %str_ok139
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %str_ok139
  %mk.lenseq153 = icmp eq i64 %mk.slen135, %mk.nlen145
  br i1 %mk.lenseq153, label %mk.eq.then154, label %mk.eq.else155

str_stale150:                                     ; preds = %str_gen_check148
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

mk.eq.then154:                                    ; preds = %str_ok149
  %mk.sdata157 = getelementptr inbounds { i64, ptr }, ptr %mk.stored132, i32 0, i32 1
  %mk.sdata158 = load ptr, ptr %mk.sdata157, align 8
  %mk.ndata159 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata160 = load ptr, ptr %mk.ndata159, align 8
  %mk.memcmp161 = call i32 @memcmp(ptr %mk.sdata158, ptr %mk.ndata160, i64 %mk.nlen145)
  %mk.cmpeq162 = icmp eq i32 %mk.memcmp161, 0
  br label %mk.eq.merge156

mk.eq.else155:                                    ; preds = %str_ok149
  br label %mk.eq.merge156

mk.eq.merge156:                                   ; preds = %mk.eq.else155, %mk.eq.then154
  %mk.eq163 = phi i1 [ %mk.cmpeq162, %mk.eq.then154 ], [ false, %mk.eq.else155 ]
  br i1 %mk.eq163, label %m.overwrite116, label %m.next117

str_gen_check188:                                 ; preds = %m.re.done
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %m.re.done
  %hash.str193 = call i64 @dva_hash_string(ptr %mk.data182, i64 %mk.len185)
  %m.capm1194 = sub i64 %m.cap174, 1
  %m.idx0195 = and i64 %hash.str193, %m.capm1194
  br label %m.loop196

str_stale190:                                     ; preds = %str_gen_check188
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

m.loop196:                                        ; preds = %m.next201, %str_ok189
  %m.idx204 = phi i64 [ %m.idx0195, %str_ok189 ], [ %m.idx.next251, %m.next201 ]
  %m.tomb205 = phi i64 [ -1, %str_ok189 ], [ %m.next.tomb249, %m.next201 ]
  %m.probe206 = phi i64 [ 0, %str_ok189 ], [ %m.probe.next252, %m.next201 ]
  %m.reached.cap207 = icmp eq i64 %m.probe206, %m.cap174
  %m.state.gep208 = getelementptr i8, ptr %m.states180, i64 %m.idx204
  %m.state209 = load i8, ptr %m.state.gep208, align 1
  %m.is.empty210 = icmp eq i8 %m.state209, 0
  %m.stop211 = or i1 %m.is.empty210, %m.reached.cap207
  br i1 %m.stop211, label %m.empty202, label %m.check.tomb197

m.check.tomb197:                                  ; preds = %m.loop196
  %m.is.tomb212 = icmp eq i8 %m.state209, 2
  br i1 %m.is.tomb212, label %m.tomb198, label %m.found199

m.tomb198:                                        ; preds = %m.check.tomb197
  %m.has.tomb213 = icmp ne i64 %m.tomb205, -1
  %m.tomb.sel214 = select i1 %m.has.tomb213, i64 %m.tomb205, i64 %m.idx204
  br label %m.next201

m.found199:                                       ; preds = %m.check.tomb197
  %m.key.slot215 = getelementptr i64, ptr %m.keys176, i64 %m.idx204
  %mk.stored216 = load ptr, ptr %m.key.slot215, align 8
  %mk.slen217 = getelementptr inbounds { i64, ptr }, ptr %mk.stored216, i32 0, i32 0
  %mk.slen218 = load i64, ptr %mk.slen217, align 8
  %mk.slen219 = and i64 %mk.slen218, 281474976710655
  %str.tag220 = lshr i64 %mk.slen218, 48
  %str.immortal221 = icmp eq i64 %str.tag220, 0
  br i1 %str.immortal221, label %str_ok223, label %str_gen_check222

m.overwrite200:                                   ; preds = %mk.eq.merge240
  %m.val.slot248 = getelementptr i64, ptr %m.vals178, i64 %m.idx204
  store i64 %a.len.query51, ptr %m.val.slot248, align 8
  br label %m.done203

m.next201:                                        ; preds = %mk.eq.merge240, %m.tomb198
  %m.next.tomb249 = phi i64 [ %m.tomb.sel214, %m.tomb198 ], [ %m.tomb205, %mk.eq.merge240 ]
  %m.idx.add250 = add i64 %m.idx204, 1
  %m.idx.next251 = and i64 %m.idx.add250, %m.capm1194
  %m.probe.next252 = add i64 %m.probe206, 1
  br label %m.loop196

m.empty202:                                       ; preds = %m.loop196
  %m.use.tomb253 = icmp ne i64 %m.tomb205, -1
  %m.ins.idx254 = select i1 %m.use.tomb253, i64 %m.tomb205, i64 %m.idx204
  %m.key.slot255 = getelementptr i64, ptr %m.keys176, i64 %m.ins.idx254
  store ptr %var.load37, ptr %m.key.slot255, align 8
  %m.val.slot256 = getelementptr i64, ptr %m.vals178, i64 %m.ins.idx254
  store i64 %a.len.query51, ptr %m.val.slot256, align 8
  %m.ins.state.slot257 = getelementptr i8, ptr %m.states180, i64 %m.ins.idx254
  store i8 1, ptr %m.ins.state.slot257, align 1
  %m.count258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count259 = load i64, ptr %m.count258, align 8
  %m.count.next260 = add i64 %m.count259, 1
  %m.count.gep261 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next260, ptr %m.count.gep261, align 8
  %m.ins.tombs.p262 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs263 = load i64, ptr %m.ins.tombs.p262, align 8
  %m.tomb.dec264 = select i1 %m.use.tomb253, i64 1, i64 0
  %m.ins.tombs.next265 = sub i64 %m.ins.tombs263, %m.tomb.dec264
  store i64 %m.ins.tombs.next265, ptr %m.ins.tombs.p262, align 8
  br label %m.done203

m.done203:                                        ; preds = %m.empty202, %m.overwrite200
  br label %m.done

str_gen_check222:                                 ; preds = %m.found199
  %arena.cur225 = call ptr @dva_arena_current()
  %tag.valid226 = call i1 @dva_arena_validate_tag(ptr %arena.cur225, i64 %str.tag220)
  br i1 %tag.valid226, label %str_ok223, label %str_stale224

str_ok223:                                        ; preds = %str_stale224, %str_gen_check222, %m.found199
  %mk.nlen227 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen228 = load i64, ptr %mk.nlen227, align 8
  %mk.nlen229 = and i64 %mk.nlen228, 281474976710655
  %str.tag230 = lshr i64 %mk.nlen228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

str_stale224:                                     ; preds = %str_gen_check222
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok223

str_gen_check232:                                 ; preds = %str_ok223
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %str_ok223
  %mk.lenseq237 = icmp eq i64 %mk.slen219, %mk.nlen229
  br i1 %mk.lenseq237, label %mk.eq.then238, label %mk.eq.else239

str_stale234:                                     ; preds = %str_gen_check232
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

mk.eq.then238:                                    ; preds = %str_ok233
  %mk.sdata241 = getelementptr inbounds { i64, ptr }, ptr %mk.stored216, i32 0, i32 1
  %mk.sdata242 = load ptr, ptr %mk.sdata241, align 8
  %mk.ndata243 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata244 = load ptr, ptr %mk.ndata243, align 8
  %mk.memcmp245 = call i32 @memcmp(ptr %mk.sdata242, ptr %mk.ndata244, i64 %mk.nlen229)
  %mk.cmpeq246 = icmp eq i32 %mk.memcmp245, 0
  br label %mk.eq.merge240

mk.eq.else239:                                    ; preds = %str_ok233
  br label %mk.eq.merge240

mk.eq.merge240:                                   ; preds = %mk.eq.else239, %mk.eq.then238
  %mk.eq247 = phi i1 [ %mk.cmpeq246, %mk.eq.then238 ], [ false, %mk.eq.else239 ]
  br i1 %mk.eq247, label %m.overwrite200, label %m.next201

a.create294:                                      ; preds = %m.done
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
  store ptr %a.create297, ptr %var.bnds, align 8
  br label %a.after295

a.after295:                                       ; preds = %a.create294, %m.done
  %a.load2303 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after295
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  %a.len304 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 2
  %a.cap305 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len304, %a.cap305
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2303)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 1
  %a.cur.data306 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  %a.cur.len307 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data306, i64 %a.cur.len307
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len307, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load308 = load ptr, ptr %var.cur_sc, align 8
  %var.load309 = load ptr, ptr %var.bnds, align 8
  %a.load310 = load ptr, ptr %var.bnds, align 8
  %a.null311 = icmp eq ptr %a.load310, null
  br i1 %a.null311, label %a.create312, label %a.after313

a.create312:                                      ; preds = %a.store
  %arena.cur314 = call ptr @dva_arena_current()
  %a.create315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 24)
  %arena.cur316 = call ptr @dva_arena_current()
  %a.buf317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 128)
  %a.len.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 0
  store i64 0, ptr %a.len.gep318, align 8
  %a.data.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 1
  store ptr %a.buf317, ptr %a.data.gep319, align 8
  %a.cap.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 2
  store i64 16, ptr %a.cap.gep320, align 8
  store ptr %a.create315, ptr %var.bnds, align 8
  br label %a.after313

a.after313:                                       ; preds = %a.create312, %a.store
  %a.load2321 = load ptr, ptr %var.bnds, align 8
  %fld.gep322 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load308, i32 0, i32 0
  store ptr %a.load2321, ptr %fld.gep322, align 8
  %var.load323 = load ptr, ptr %var.scs, align 8
  %a.load324 = load ptr, ptr %var.scs, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

a.create326:                                      ; preds = %a.after313
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
  store ptr %a.create329, ptr %var.scs, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %a.after313
  %a.load2335 = load ptr, ptr %var.scs, align 8
  %var.load336 = load i64, ptr %var.cur_idx, align 8
  %var.load337 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i338 = ptrtoint ptr %var.load337 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2335, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after327
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.wr.len339 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load336, 0
  %a.wr.lt = icmp slt i64 %var.load336, %a.wr.len339
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 1
  %a.wr.data340 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep341 = getelementptr i64, ptr %a.wr.data340, i64 %var.load336
  store i64 %slot.p2i338, ptr %a.elem.gep341, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after327
  %arena.cur342 = call ptr @dva_arena_current()
  %err.alloc343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 56)
  %err.code.gep344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 0
  store i64 4011, ptr %err.code.gep344, align 8
  %err.msg.gep345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep345, align 8
  %err.file.gep346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep346, align 8
  %err.line.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 3
  store i64 0, ptr %err.line.gep347, align 8
  %err.col.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 4
  store i64 0, ptr %err.col.gep348, align 8
  %err.ctx.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 5
  %err.ctx0.gep350 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep349, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep350, align 8
  %err.ctx1.gep351 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep349, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep351, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur352 = call ptr @dva_arena_current()
  %err.alloc353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 56)
  %err.code.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 0
  store i64 4011, ptr %err.code.gep354, align 8
  %err.msg.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep355, align 8
  %err.file.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep356, align 8
  %err.line.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 3
  store i64 0, ptr %err.line.gep357, align 8
  %err.col.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 4
  store i64 0, ptr %err.col.gep358, align 8
  %err.ctx.gep359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 5
  %err.ctx0.gep360 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep359, i32 0, i32 0
  store i64 %var.load336, ptr %err.ctx0.gep360, align 8
  %err.ctx1.gep361 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep359, i32 0, i32 1
  store i64 %a.wr.len339, ptr %err.ctx1.gep361, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc343, %a.wr.err.null ], [ %err.alloc353, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then362, label %choice.else363

choice.then362:                                   ; preds = %a.wr.done
  br label %choice.exit364

choice.else363:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._365, align 8
  store ptr %a.wr.niche, ptr %var._366, align 8
  store ptr %a.wr.niche, ptr %var._367, align 8
  %err.code.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep368, align 8
  %err.msg.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep369, align 8
  %err.file.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep370, align 8
  %err.line.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep371, align 8
  %err.col.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep372, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len373 = load i64, ptr %err.msg.len, align 8
  %err.msg.len374 = and i64 %err.msg.len373, 281474976710655
  %str.tag375 = lshr i64 %err.msg.len373, 48
  %str.immortal376 = icmp eq i64 %str.tag375, 0
  br i1 %str.immortal376, label %str_ok378, label %str_gen_check377

choice.exit364:                                   ; preds = %err.abort, %choice.then362
  %var.load393 = load ptr, ptr %var.env, align 8
  %var.load394 = load ptr, ptr %var.scs, align 8
  %a.load395 = load ptr, ptr %var.scs, align 8
  %a.null396 = icmp eq ptr %a.load395, null
  br i1 %a.null396, label %a.create397, label %a.after398

str_gen_check377:                                 ; preds = %choice.else363
  %arena.cur380 = call ptr @dva_arena_current()
  %tag.valid381 = call i1 @dva_arena_validate_tag(ptr %arena.cur380, i64 %str.tag375)
  br i1 %tag.valid381, label %str_ok378, label %str_stale379

str_ok378:                                        ; preds = %str_stale379, %str_gen_check377, %choice.else363
  %err.msg.len32 = trunc i64 %err.msg.len374 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data382 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len383 = load i64, ptr %err.file.len, align 8
  %err.file.len384 = and i64 %err.file.len383, 281474976710655
  %str.tag385 = lshr i64 %err.file.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

str_stale379:                                     ; preds = %str_gen_check377
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok378

str_gen_check387:                                 ; preds = %str_ok378
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %str_ok378
  %err.file.len32 = trunc i64 %err.file.len384 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data392 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale389:                                     ; preds = %str_gen_check387
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

err.thread:                                       ; preds = %str_ok388
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok388
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data382, i32 %err.file.len32, ptr %err.file.data392, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit364

a.create397:                                      ; preds = %choice.exit364
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
  store ptr %a.create400, ptr %var.scs, align 8
  br label %a.after398

a.after398:                                       ; preds = %a.create397, %choice.exit364
  %a.load2406 = load ptr, ptr %var.scs, align 8
  %fld.gep407 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load393, i32 0, i32 0
  store ptr %a.load2406, ptr %fld.gep407, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #1 {
entry:
  %var._304 = alloca ptr, align 8
  %var._303 = alloca ptr, align 8
  %var._302 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after335, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur12 = call ptr @dva_arena_current()
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit25
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit25
  %hash.str = call i64 @dva_hash_string(ptr %mk.data39, i64 %mk.len41)
  %m.capm1 = sub i64 %m.cap35, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb43 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
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
  %m.has.tomb = icmp ne i64 %m.tomb43, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb43, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys36, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen44 = load i64, ptr %mk.slen, align 8
  %mk.slen45 = and i64 %mk.slen44, 281474976710655
  %str.tag46 = lshr i64 %mk.slen44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals37, i64 %m.idx
  store i64 -1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb43, %mk.eq.merge ]
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

m.done:                                           ; preds = %m.ins.slot, %m.done186, %m.overwrite
  %var.load262 = load ptr, ptr %var.scs, align 8
  %a.load263 = load ptr, ptr %var.scs, align 8
  %a.null264 = icmp eq ptr %a.load263, null
  br i1 %a.null264, label %a.create265, label %a.after266

str_gen_check48:                                  ; preds = %m.found
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen53 = load i64, ptr %mk.nlen, align 8
  %mk.nlen54 = and i64 %mk.nlen53, 281474976710655
  %str.tag55 = lshr i64 %mk.nlen53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

str_stale50:                                      ; preds = %str_gen_check48
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check57:                                  ; preds = %str_ok49
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %str_ok49
  %mk.lenseq = icmp eq i64 %mk.slen45, %mk.nlen54
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale59:                                      ; preds = %str_gen_check57
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

mk.eq.then:                                       ; preds = %str_ok58
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata62 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata63 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata62, ptr %mk.ndata63, i64 %mk.nlen54)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok58
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.old.cap64 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.old.keys65 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.old.vals66 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.old.states67 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap64, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.live.cnt68 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt68, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap64
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap64
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur69 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur70 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %m.gv.bytes)
  %arena.cur71 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %m.new.cap)
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
  %m.use.tomb249 = icmp ne i64 %m.tomb43, -1
  %m.ins.idx250 = select i1 %m.use.tomb249, i64 %m.tomb43, i64 %m.idx
  %m.key.slot251 = getelementptr i64, ptr %m.keys36, i64 %m.ins.idx250
  store ptr %var.load34, ptr %m.key.slot251, align 8
  %m.val.slot252 = getelementptr i64, ptr %m.vals37, i64 %m.ins.idx250
  store i64 -1, ptr %m.val.slot252, align 8
  %m.ins.state.slot253 = getelementptr i8, ptr %m.states38, i64 %m.ins.idx250
  store i8 1, ptr %m.ins.state.slot253, align 1
  %m.count254 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count255 = load i64, ptr %m.count254, align 8
  %m.count.next256 = add i64 %m.count255, 1
  %m.count.gep257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next256, ptr %m.count.gep257, align 8
  %m.ins.tombs.p258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs259 = load i64, ptr %m.ins.tombs.p258, align 8
  %m.tomb.dec260 = select i1 %m.use.tomb249, i64 1, i64 0
  %m.ins.tombs.next261 = sub i64 %m.ins.tombs259, %m.tomb.dec260
  store i64 %m.ins.tombs.next261, ptr %m.ins.tombs.p258, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap64
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states67, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done102, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap156 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap157 = load i64, ptr %m.cap156, align 8
  %m.keys158 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys159 = load ptr, ptr %m.keys158, align 8
  %m.vals160 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals161 = load ptr, ptr %m.vals160, align 8
  %m.states162 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states163 = load ptr, ptr %m.states162, align 8
  %mk.data164 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data165 = load ptr, ptr %mk.data164, align 8
  %mk.len166 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len167 = load i64, ptr %mk.len166, align 8
  %mk.len168 = and i64 %mk.len167, 281474976710655
  %str.tag169 = lshr i64 %mk.len167, 48
  %str.immortal170 = icmp eq i64 %str.tag169, 0
  br i1 %str.immortal170, label %str_ok172, label %str_gen_check171

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys65, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals66, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap72 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap73 = load i64, ptr %m.cap72, align 8
  %m.keys74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys75 = load ptr, ptr %m.keys74, align 8
  %m.vals76 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals77 = load ptr, ptr %m.vals76, align 8
  %m.states78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states79 = load ptr, ptr %m.states78, align 8
  %mk.data80 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data81 = load ptr, ptr %mk.data80, align 8
  %mk.len82 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len83 = load i64, ptr %mk.len82, align 8
  %mk.len84 = and i64 %mk.len83, 281474976710655
  %str.tag85 = lshr i64 %mk.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_gen_check87:                                  ; preds = %m.re.ins
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %m.re.ins
  %hash.str92 = call i64 @dva_hash_string(ptr %mk.data81, i64 %mk.len84)
  %m.capm193 = sub i64 %m.cap73, 1
  %m.idx094 = and i64 %hash.str92, %m.capm193
  br label %m.loop95

str_stale89:                                      ; preds = %str_gen_check87
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

m.loop95:                                         ; preds = %m.next100, %str_ok88
  %m.idx103 = phi i64 [ %m.idx094, %str_ok88 ], [ %m.idx.next150, %m.next100 ]
  %m.tomb104 = phi i64 [ -1, %str_ok88 ], [ %m.next.tomb148, %m.next100 ]
  %m.probe105 = phi i64 [ 0, %str_ok88 ], [ %m.probe.next151, %m.next100 ]
  %m.reached.cap106 = icmp eq i64 %m.probe105, %m.cap73
  %m.state.gep107 = getelementptr i8, ptr %m.states79, i64 %m.idx103
  %m.state108 = load i8, ptr %m.state.gep107, align 1
  %m.is.empty109 = icmp eq i8 %m.state108, 0
  %m.stop110 = or i1 %m.is.empty109, %m.reached.cap106
  br i1 %m.stop110, label %m.empty101, label %m.check.tomb96

m.check.tomb96:                                   ; preds = %m.loop95
  %m.is.tomb111 = icmp eq i8 %m.state108, 2
  br i1 %m.is.tomb111, label %m.tomb97, label %m.found98

m.tomb97:                                         ; preds = %m.check.tomb96
  %m.has.tomb112 = icmp ne i64 %m.tomb104, -1
  %m.tomb.sel113 = select i1 %m.has.tomb112, i64 %m.tomb104, i64 %m.idx103
  br label %m.next100

m.found98:                                        ; preds = %m.check.tomb96
  %m.key.slot114 = getelementptr i64, ptr %m.keys75, i64 %m.idx103
  %mk.stored115 = load ptr, ptr %m.key.slot114, align 8
  %mk.slen116 = getelementptr inbounds { i64, ptr }, ptr %mk.stored115, i32 0, i32 0
  %mk.slen117 = load i64, ptr %mk.slen116, align 8
  %mk.slen118 = and i64 %mk.slen117, 281474976710655
  %str.tag119 = lshr i64 %mk.slen117, 48
  %str.immortal120 = icmp eq i64 %str.tag119, 0
  br i1 %str.immortal120, label %str_ok122, label %str_gen_check121

m.overwrite99:                                    ; preds = %mk.eq.merge139
  %m.val.slot147 = getelementptr i64, ptr %m.vals77, i64 %m.idx103
  store i64 %m.re.val, ptr %m.val.slot147, align 8
  br label %m.done102

m.next100:                                        ; preds = %mk.eq.merge139, %m.tomb97
  %m.next.tomb148 = phi i64 [ %m.tomb.sel113, %m.tomb97 ], [ %m.tomb104, %mk.eq.merge139 ]
  %m.idx.add149 = add i64 %m.idx103, 1
  %m.idx.next150 = and i64 %m.idx.add149, %m.capm193
  %m.probe.next151 = add i64 %m.probe105, 1
  br label %m.loop95

m.empty101:                                       ; preds = %m.loop95
  %m.use.tomb = icmp ne i64 %m.tomb104, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb104, i64 %m.idx103
  %m.key.slot152 = getelementptr i64, ptr %m.keys75, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot152, align 8
  %m.val.slot153 = getelementptr i64, ptr %m.vals77, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot153, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states79, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count154 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count154, 1
  %m.count.gep155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep155, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done102

m.done102:                                        ; preds = %m.empty101, %m.overwrite99
  br label %m.re.cont

str_gen_check121:                                 ; preds = %m.found98
  %arena.cur124 = call ptr @dva_arena_current()
  %tag.valid125 = call i1 @dva_arena_validate_tag(ptr %arena.cur124, i64 %str.tag119)
  br i1 %tag.valid125, label %str_ok122, label %str_stale123

str_ok122:                                        ; preds = %str_stale123, %str_gen_check121, %m.found98
  %mk.nlen126 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen127 = load i64, ptr %mk.nlen126, align 8
  %mk.nlen128 = and i64 %mk.nlen127, 281474976710655
  %str.tag129 = lshr i64 %mk.nlen127, 48
  %str.immortal130 = icmp eq i64 %str.tag129, 0
  br i1 %str.immortal130, label %str_ok132, label %str_gen_check131

str_stale123:                                     ; preds = %str_gen_check121
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok122

str_gen_check131:                                 ; preds = %str_ok122
  %arena.cur134 = call ptr @dva_arena_current()
  %tag.valid135 = call i1 @dva_arena_validate_tag(ptr %arena.cur134, i64 %str.tag129)
  br i1 %tag.valid135, label %str_ok132, label %str_stale133

str_ok132:                                        ; preds = %str_stale133, %str_gen_check131, %str_ok122
  %mk.lenseq136 = icmp eq i64 %mk.slen118, %mk.nlen128
  br i1 %mk.lenseq136, label %mk.eq.then137, label %mk.eq.else138

str_stale133:                                     ; preds = %str_gen_check131
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok132

mk.eq.then137:                                    ; preds = %str_ok132
  %mk.sdata140 = getelementptr inbounds { i64, ptr }, ptr %mk.stored115, i32 0, i32 1
  %mk.sdata141 = load ptr, ptr %mk.sdata140, align 8
  %mk.ndata142 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata143 = load ptr, ptr %mk.ndata142, align 8
  %mk.memcmp144 = call i32 @memcmp(ptr %mk.sdata141, ptr %mk.ndata143, i64 %mk.nlen128)
  %mk.cmpeq145 = icmp eq i32 %mk.memcmp144, 0
  br label %mk.eq.merge139

mk.eq.else138:                                    ; preds = %str_ok132
  br label %mk.eq.merge139

mk.eq.merge139:                                   ; preds = %mk.eq.else138, %mk.eq.then137
  %mk.eq146 = phi i1 [ %mk.cmpeq145, %mk.eq.then137 ], [ false, %mk.eq.else138 ]
  br i1 %mk.eq146, label %m.overwrite99, label %m.next100

str_gen_check171:                                 ; preds = %m.re.done
  %arena.cur174 = call ptr @dva_arena_current()
  %tag.valid175 = call i1 @dva_arena_validate_tag(ptr %arena.cur174, i64 %str.tag169)
  br i1 %tag.valid175, label %str_ok172, label %str_stale173

str_ok172:                                        ; preds = %str_stale173, %str_gen_check171, %m.re.done
  %hash.str176 = call i64 @dva_hash_string(ptr %mk.data165, i64 %mk.len168)
  %m.capm1177 = sub i64 %m.cap157, 1
  %m.idx0178 = and i64 %hash.str176, %m.capm1177
  br label %m.loop179

str_stale173:                                     ; preds = %str_gen_check171
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok172

m.loop179:                                        ; preds = %m.next184, %str_ok172
  %m.idx187 = phi i64 [ %m.idx0178, %str_ok172 ], [ %m.idx.next234, %m.next184 ]
  %m.tomb188 = phi i64 [ -1, %str_ok172 ], [ %m.next.tomb232, %m.next184 ]
  %m.probe189 = phi i64 [ 0, %str_ok172 ], [ %m.probe.next235, %m.next184 ]
  %m.reached.cap190 = icmp eq i64 %m.probe189, %m.cap157
  %m.state.gep191 = getelementptr i8, ptr %m.states163, i64 %m.idx187
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
  %m.key.slot198 = getelementptr i64, ptr %m.keys159, i64 %m.idx187
  %mk.stored199 = load ptr, ptr %m.key.slot198, align 8
  %mk.slen200 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 0
  %mk.slen201 = load i64, ptr %mk.slen200, align 8
  %mk.slen202 = and i64 %mk.slen201, 281474976710655
  %str.tag203 = lshr i64 %mk.slen201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

m.overwrite183:                                   ; preds = %mk.eq.merge223
  %m.val.slot231 = getelementptr i64, ptr %m.vals161, i64 %m.idx187
  store i64 -1, ptr %m.val.slot231, align 8
  br label %m.done186

m.next184:                                        ; preds = %mk.eq.merge223, %m.tomb181
  %m.next.tomb232 = phi i64 [ %m.tomb.sel197, %m.tomb181 ], [ %m.tomb188, %mk.eq.merge223 ]
  %m.idx.add233 = add i64 %m.idx187, 1
  %m.idx.next234 = and i64 %m.idx.add233, %m.capm1177
  %m.probe.next235 = add i64 %m.probe189, 1
  br label %m.loop179

m.empty185:                                       ; preds = %m.loop179
  %m.use.tomb236 = icmp ne i64 %m.tomb188, -1
  %m.ins.idx237 = select i1 %m.use.tomb236, i64 %m.tomb188, i64 %m.idx187
  %m.key.slot238 = getelementptr i64, ptr %m.keys159, i64 %m.ins.idx237
  store ptr %var.load34, ptr %m.key.slot238, align 8
  %m.val.slot239 = getelementptr i64, ptr %m.vals161, i64 %m.ins.idx237
  store i64 -1, ptr %m.val.slot239, align 8
  %m.ins.state.slot240 = getelementptr i8, ptr %m.states163, i64 %m.ins.idx237
  store i8 1, ptr %m.ins.state.slot240, align 1
  %m.count241 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count242 = load i64, ptr %m.count241, align 8
  %m.count.next243 = add i64 %m.count242, 1
  %m.count.gep244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next243, ptr %m.count.gep244, align 8
  %m.ins.tombs.p245 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs246 = load i64, ptr %m.ins.tombs.p245, align 8
  %m.tomb.dec247 = select i1 %m.use.tomb236, i64 1, i64 0
  %m.ins.tombs.next248 = sub i64 %m.ins.tombs246, %m.tomb.dec247
  store i64 %m.ins.tombs.next248, ptr %m.ins.tombs.p245, align 8
  br label %m.done186

m.done186:                                        ; preds = %m.empty185, %m.overwrite183
  br label %m.done

str_gen_check205:                                 ; preds = %m.found182
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %m.found182
  %mk.nlen210 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen211 = load i64, ptr %mk.nlen210, align 8
  %mk.nlen212 = and i64 %mk.nlen211, 281474976710655
  %str.tag213 = lshr i64 %mk.nlen211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_stale207:                                     ; preds = %str_gen_check205
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str_gen_check215:                                 ; preds = %str_ok206
  %arena.cur218 = call ptr @dva_arena_current()
  %tag.valid219 = call i1 @dva_arena_validate_tag(ptr %arena.cur218, i64 %str.tag213)
  br i1 %tag.valid219, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %str_ok206
  %mk.lenseq220 = icmp eq i64 %mk.slen202, %mk.nlen212
  br i1 %mk.lenseq220, label %mk.eq.then221, label %mk.eq.else222

str_stale217:                                     ; preds = %str_gen_check215
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

mk.eq.then221:                                    ; preds = %str_ok216
  %mk.sdata224 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 1
  %mk.sdata225 = load ptr, ptr %mk.sdata224, align 8
  %mk.ndata226 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata227 = load ptr, ptr %mk.ndata226, align 8
  %mk.memcmp228 = call i32 @memcmp(ptr %mk.sdata225, ptr %mk.ndata227, i64 %mk.nlen212)
  %mk.cmpeq229 = icmp eq i32 %mk.memcmp228, 0
  br label %mk.eq.merge223

mk.eq.else222:                                    ; preds = %str_ok216
  br label %mk.eq.merge223

mk.eq.merge223:                                   ; preds = %mk.eq.else222, %mk.eq.then221
  %mk.eq230 = phi i1 [ %mk.cmpeq229, %mk.eq.then221 ], [ false, %mk.eq.else222 ]
  br i1 %mk.eq230, label %m.overwrite183, label %m.next184

a.create265:                                      ; preds = %m.done
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
  store ptr %a.create268, ptr %var.scs, align 8
  br label %a.after266

a.after266:                                       ; preds = %a.create265, %m.done
  %a.load2274 = load ptr, ptr %var.scs, align 8
  %var.load275 = load i64, ptr %var.cur_idx, align 8
  %var.load276 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i = ptrtoint ptr %var.load276 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2274, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after266
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 0
  %a.wr.len277 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load275, 0
  %a.wr.lt = icmp slt i64 %var.load275, %a.wr.len277
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 1
  %a.wr.data278 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data278, i64 %var.load275
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after266
  %arena.cur279 = call ptr @dva_arena_current()
  %err.alloc280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 56)
  %err.code.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 0
  store i64 4011, ptr %err.code.gep281, align 8
  %err.msg.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep282, align 8
  %err.file.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep283, align 8
  %err.line.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 3
  store i64 0, ptr %err.line.gep284, align 8
  %err.col.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 4
  store i64 0, ptr %err.col.gep285, align 8
  %err.ctx.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 5
  %err.ctx0.gep287 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep287, align 8
  %err.ctx1.gep288 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep288, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur289 = call ptr @dva_arena_current()
  %err.alloc290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 56)
  %err.code.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 0
  store i64 4011, ptr %err.code.gep291, align 8
  %err.msg.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep292, align 8
  %err.file.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep293, align 8
  %err.line.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 3
  store i64 0, ptr %err.line.gep294, align 8
  %err.col.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 4
  store i64 0, ptr %err.col.gep295, align 8
  %err.ctx.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 5
  %err.ctx0.gep297 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 0
  store i64 %var.load275, ptr %err.ctx0.gep297, align 8
  %err.ctx1.gep298 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 1
  store i64 %a.wr.len277, ptr %err.ctx1.gep298, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc280, %a.wr.err.null ], [ %err.alloc290, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then299, label %choice.else300

choice.then299:                                   ; preds = %a.wr.done
  br label %choice.exit301

choice.else300:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._302, align 8
  store ptr %a.wr.niche, ptr %var._303, align 8
  store ptr %a.wr.niche, ptr %var._304, align 8
  %err.code.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep305, align 8
  %err.msg.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep306, align 8
  %err.file.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep307, align 8
  %err.line.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep308, align 8
  %err.col.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep309, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len310 = load i64, ptr %err.msg.len, align 8
  %err.msg.len311 = and i64 %err.msg.len310, 281474976710655
  %str.tag312 = lshr i64 %err.msg.len310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

choice.exit301:                                   ; preds = %err.abort, %choice.then299
  %var.load330 = load ptr, ptr %var.env, align 8
  %var.load331 = load ptr, ptr %var.scs, align 8
  %a.load332 = load ptr, ptr %var.scs, align 8
  %a.null333 = icmp eq ptr %a.load332, null
  br i1 %a.null333, label %a.create334, label %a.after335

str_gen_check314:                                 ; preds = %choice.else300
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %choice.else300
  %err.msg.len32 = trunc i64 %err.msg.len311 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data319 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len320 = load i64, ptr %err.file.len, align 8
  %err.file.len321 = and i64 %err.file.len320, 281474976710655
  %str.tag322 = lshr i64 %err.file.len320, 48
  %str.immortal323 = icmp eq i64 %str.tag322, 0
  br i1 %str.immortal323, label %str_ok325, label %str_gen_check324

str_stale316:                                     ; preds = %str_gen_check314
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

str_gen_check324:                                 ; preds = %str_ok315
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag322)
  br i1 %tag.valid328, label %str_ok325, label %str_stale326

str_ok325:                                        ; preds = %str_stale326, %str_gen_check324, %str_ok315
  %err.file.len32 = trunc i64 %err.file.len321 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data329 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale326:                                     ; preds = %str_gen_check324
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok325

err.thread:                                       ; preds = %str_ok325
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok325
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data319, i32 %err.file.len32, ptr %err.file.data329, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit301

a.create334:                                      ; preds = %choice.exit301
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
  store ptr %a.create337, ptr %var.scs, align 8
  br label %a.after335

a.after335:                                       ; preds = %a.create334, %choice.exit301
  %a.load2343 = load ptr, ptr %var.scs, align 8
  %fld.gep344 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load330, i32 0, i32 0
  store ptr %a.load2343, ptr %fld.gep344, align 8
  br label %choice.exit
}

define void @"type_env::bind_global"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur9 = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur22 = call ptr @dva_arena_current()
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = call ptr @dva_arena_current()
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

define i64 @"type_env::decl_module_find"(ptr %0, i64 %1, i64 %2) #1 {
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
  br i1 %cmptmp, label %and.183.then, label %and.183.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.183.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.183.else:                                     ; preds = %str_ok
  br label %and.183.exit

and.183.exit:                                     ; preds = %and.183.else, %idx_ok
  %and.183.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.183.else ]
  br i1 %and.183.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.183.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.183.then
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
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.183.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.183.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.183.exit
  %var.load76 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res77 = phi i64 [ %choice.res, %choice.exit66 ], [ %var.load76, %choice.else ]
  ret i64 %choice.res77

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.184.then, label %and.184.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.184.then:                                     ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.184.else:                                     ; preds = %idx_ok33
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %idx_ok57
  %and.184.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.184.else ]
  br i1 %and.184.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.184.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.184.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.184.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.184.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 2
  %var.load70 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load67, i64 %addtmp69, i64 %var.load70)
  br label %choice.exit66

choice.else65:                                    ; preds = %and.184.exit
  %var.load71 = load ptr, ptr %var.name, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %addtmp73 = add i64 %var.load72, 1
  %var.load74 = load i64, ptr %var.last, align 8
  %call.res75 = call i64 @"type_env::decl_module_find"(ptr %var.load71, i64 %addtmp73, i64 %var.load74)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i64 [ %call.res, %choice.then64 ], [ %call.res75, %choice.else65 ]
  br label %choice.exit
}

define ptr @"type_env::decl_module"(ptr %0, i64 %1) #1 {
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
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %str_ok, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %str.view, %str_ok ]
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

define void @"type_env::set_current_module"(ptr %0, ptr %1) #1 {
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

define ptr @"type_env::lookup_local_exact"(ptr %0, ptr %1) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur12 = call ptr @dva_arena_current()
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

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #1 {
entry:
  %var._166 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._162 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
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
  %m.mem.key.slot = getelementptr i64, ptr %m.keys4, i64 %m.mem.idx
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

choice.exit:                                      ; preds = %choice.else, %choice.exit125
  %choice.res169 = phi ptr [ %choice.res168, %choice.exit125 ], [ null, %choice.else ]
  ret ptr %choice.res169

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
  %m.rd.key.slot = getelementptr i64, ptr %m.keys35, i64 %m.rd.idx
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
  %cmptmp = icmp slt i64 %var.load122, 0
  br i1 %cmptmp, label %choice.then123, label %choice.else124

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

choice.then123:                                   ; preds = %choice.exit91
  br label %choice.exit125

choice.else124:                                   ; preds = %choice.exit91
  %var.load126 = load ptr, ptr %var.scope, align 8
  %fld.gep127 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load126, i32 0, i32 0
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %var.load129 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load128, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit125:                                   ; preds = %choice.exit159, %choice.then123
  %choice.res168 = phi ptr [ null, %choice.then123 ], [ %choice.res167, %choice.exit159 ]
  br label %choice.exit

a.rd.check:                                       ; preds = %choice.else124
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load128, i32 0, i32 0
  %a.rd.len130 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load129, 0
  %a.rd.lt = icmp slt i64 %var.load129, %a.rd.len130
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load128, i32 0, i32 1
  %a.rd.data131 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data131, i64 %var.load129
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.else124
  %arena.cur132 = call ptr @dva_arena_current()
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 0, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 0, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  %err.p2i142 = ptrtoint ptr %err.alloc133 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur143 = call ptr @dva_arena_current()
  %err.alloc144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 0
  store i64 4011, ptr %err.code.gep145, align 8
  %err.msg.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep146, align 8
  %err.file.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep147, align 8
  %err.line.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 3
  store i64 0, ptr %err.line.gep148, align 8
  %err.col.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 4
  store i64 0, ptr %err.col.gep149, align 8
  %err.ctx.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 5
  %err.ctx0.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 0
  store i64 %var.load129, ptr %err.ctx0.gep151, align 8
  %err.ctx1.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 1
  store i64 %a.rd.len130, ptr %err.ctx1.gep152, align 8
  %err.p2i153 = ptrtoint ptr %err.alloc144 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i142, %a.rd.err.null ], [ %err.p2i153, %a.rd.err.oob ]
  %ram.tag154 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay155 = insertvalue { i1, i64 } %ram.tag154, i64 %a.rd.pay, 1
  %ram.tag156 = extractvalue { i1, i64 } %ram.pay155, 0
  br i1 %ram.tag156, label %choice.then157, label %choice.else158

choice.then157:                                   ; preds = %a.rd.done
  %ram.pay160 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr161 = inttoptr i64 %ram.pay160 to ptr
  store ptr %pay.ptr161, ptr %var._162, align 8
  store ptr %pay.ptr161, ptr %var.binding, align 8
  %var.load163 = load ptr, ptr %var.binding, align 8
  br label %choice.exit159

choice.else158:                                   ; preds = %a.rd.done
  %ram.pay164 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr165 = inttoptr i64 %ram.pay164 to ptr
  store ptr %pay.ptr165, ptr %var._166, align 8
  br label %choice.exit159

choice.exit159:                                   ; preds = %choice.else158, %choice.then157
  %choice.res167 = phi ptr [ %var.load163, %choice.then157 ], [ null, %choice.else158 ]
  br label %choice.exit125
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #1 {
entry:
  %var.p447 = alloca ptr, align 8
  %var._446 = alloca ptr, align 8
  %var.pub440 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._271 = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.186.else:                                     ; preds = %entry
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %and.187.then, label %and.187.else

str_gen_check:                                    ; preds = %and.186.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.186.then
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %str.tag7 = lshr i64 %eq.rhs.len, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %eq.lhs.data14 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data14, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.186.exit

and.187.then:                                     ; preds = %and.186.exit
  %var.load15 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load15, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.187.exit

and.187.else:                                     ; preds = %and.186.exit
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %and.187.then
  %and.187.phi = phi i1 [ %nottmp, %and.187.then ], [ %and.186.phi, %and.187.else ]
  br i1 %and.187.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.187.exit
  %var.load16 = load ptr, ptr %var.env, align 8
  %var.load17 = load ptr, ptr %var.env, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load17, i32 0, i32 8
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs20 = and i64 %concat.lhs, 281474976710655
  %str.tag21 = lshr i64 %concat.lhs, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.exit:                                      ; preds = %ret.dead263, %and.187.exit
  %var.load264 = load ptr, ptr %var.env, align 8
  %var.load265 = load ptr, ptr %var.name, align 8
  %call.res266 = call ptr @"type_env::lookup_local_exact"(ptr %var.load264, ptr %var.load265)
  store ptr %call.res266, ptr %var.exact, align 8
  %var.load267 = load ptr, ptr %var.exact, align 8
  %niche.ne.null268 = icmp ne ptr %var.load267, null
  br i1 %niche.ne.null268, label %choice.then269, label %choice.else

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %concat.lhs28 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load19, i32 0, i32 0
  %concat.rhs29 = load i64, ptr %concat.rhs, align 8
  %concat.rhs30 = and i64 %concat.rhs29, 281474976710655
  %str.tag31 = lshr i64 %concat.rhs29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str_gen_check33:                                  ; preds = %str_ok24
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %str_ok24
  %concat.rhs38 = getelementptr inbounds { i64, ptr }, ptr %fld.load19, i32 0, i32 1
  %concat.rhs39 = load ptr, ptr %concat.rhs38, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs20, i64 %concat.rhs30)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len40

str_stale35:                                      ; preds = %str_gen_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

concat.sum.len40:                                 ; preds = %str_overflow_abort, %str_ok34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort:                               ; preds = %str_ok34
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len40

concat.tot.len43:                                 ; preds = %str_overflow_abort44, %concat.sum.len40
  %arena.cur45 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs28, i64 %concat.lhs20, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs39, i64 %concat.rhs30, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur46 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs47 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs48 = load i64, ptr %concat.lhs47, align 8
  %concat.lhs49 = and i64 %concat.lhs48, 281474976710655
  %str.tag50 = lshr i64 %concat.lhs48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_overflow_abort44:                             ; preds = %concat.sum.len40
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len43

str_gen_check52:                                  ; preds = %concat.tot.len43
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %concat.tot.len43
  %concat.lhs57 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs58 = load ptr, ptr %concat.lhs57, align 8
  %concat.rhs59 = load i64, ptr @str.4.struct, align 8
  %concat.rhs60 = and i64 %concat.rhs59, 281474976710655
  %str.tag61 = lshr i64 %concat.rhs59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale54:                                      ; preds = %str_gen_check52
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str_gen_check63:                                  ; preds = %str_ok53
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok53
  %concat.rhs68 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs49, i64 %concat.rhs60)
  %sum70 = extractvalue { i64, i1 } %concat.sum.len69, 0
  %ovf71 = extractvalue { i64, i1 } %concat.sum.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %concat.sum.len72

str_stale65:                                      ; preds = %str_gen_check63
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

concat.sum.len72:                                 ; preds = %str_overflow_abort73, %str_ok64
  %concat.tot.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum70, i64 1)
  %sum75 = extractvalue { i64, i1 } %concat.tot.len74, 0
  %ovf76 = extractvalue { i64, i1 } %concat.tot.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %concat.tot.len77

str_overflow_abort73:                             ; preds = %str_ok64
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len72

concat.tot.len77:                                 ; preds = %str_overflow_abort78, %concat.sum.len72
  %arena.cur79 = call ptr @dva_arena_current()
  %concat.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum75)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf80, ptr align 1 %concat.lhs58, i64 %concat.lhs49, i1 false)
  %concat.mid81 = getelementptr i8, ptr %concat.buf80, i64 %concat.lhs49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid81, ptr align 1 %concat.rhs68, i64 %concat.rhs60, i1 false)
  %concat.nul82 = getelementptr i8, ptr %concat.buf80, i64 %sum70
  store i8 0, ptr %concat.nul82, align 1
  %arena.cur83 = call ptr @dva_arena_current()
  %concat.str84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 0
  store i64 %sum70, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 1
  store ptr %concat.buf80, ptr %str.build.data.gep86, align 8
  %var.load87 = load ptr, ptr %var.name, align 8
  %concat.lhs88 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 0
  %concat.lhs89 = load i64, ptr %concat.lhs88, align 8
  %concat.lhs90 = and i64 %concat.lhs89, 281474976710655
  %str.tag91 = lshr i64 %concat.lhs89, 48
  %str.immortal92 = icmp eq i64 %str.tag91, 0
  br i1 %str.immortal92, label %str_ok94, label %str_gen_check93

str_overflow_abort78:                             ; preds = %concat.sum.len72
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len77

str_gen_check93:                                  ; preds = %concat.tot.len77
  %arena.cur96 = call ptr @dva_arena_current()
  %tag.valid97 = call i1 @dva_arena_validate_tag(ptr %arena.cur96, i64 %str.tag91)
  br i1 %tag.valid97, label %str_ok94, label %str_stale95

str_ok94:                                         ; preds = %str_stale95, %str_gen_check93, %concat.tot.len77
  %concat.lhs98 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 1
  %concat.lhs99 = load ptr, ptr %concat.lhs98, align 8
  %concat.rhs100 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 0
  %concat.rhs101 = load i64, ptr %concat.rhs100, align 8
  %concat.rhs102 = and i64 %concat.rhs101, 281474976710655
  %str.tag103 = lshr i64 %concat.rhs101, 48
  %str.immortal104 = icmp eq i64 %str.tag103, 0
  br i1 %str.immortal104, label %str_ok106, label %str_gen_check105

str_stale95:                                      ; preds = %str_gen_check93
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok94

str_gen_check105:                                 ; preds = %str_ok94
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %str.tag103)
  br i1 %tag.valid109, label %str_ok106, label %str_stale107

str_ok106:                                        ; preds = %str_stale107, %str_gen_check105, %str_ok94
  %concat.rhs110 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 1
  %concat.rhs111 = load ptr, ptr %concat.rhs110, align 8
  %concat.sum.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs90, i64 %concat.rhs102)
  %sum113 = extractvalue { i64, i1 } %concat.sum.len112, 0
  %ovf114 = extractvalue { i64, i1 } %concat.sum.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %concat.sum.len115

str_stale107:                                     ; preds = %str_gen_check105
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok106

concat.sum.len115:                                ; preds = %str_overflow_abort116, %str_ok106
  %concat.tot.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum113, i64 1)
  %sum118 = extractvalue { i64, i1 } %concat.tot.len117, 0
  %ovf119 = extractvalue { i64, i1 } %concat.tot.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %concat.tot.len120

str_overflow_abort116:                            ; preds = %str_ok106
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len115

concat.tot.len120:                                ; preds = %str_overflow_abort121, %concat.sum.len115
  %arena.cur122 = call ptr @dva_arena_current()
  %concat.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %sum118)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf123, ptr align 1 %concat.lhs99, i64 %concat.lhs90, i1 false)
  %concat.mid124 = getelementptr i8, ptr %concat.buf123, i64 %concat.lhs90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid124, ptr align 1 %concat.rhs111, i64 %concat.rhs102, i1 false)
  %concat.nul125 = getelementptr i8, ptr %concat.buf123, i64 %sum113
  store i8 0, ptr %concat.nul125, align 1
  %arena.cur126 = call ptr @dva_arena_current()
  %concat.str127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 16)
  %str.build.len.gep128 = getelementptr inbounds { i64, ptr }, ptr %concat.str127, i32 0, i32 0
  store i64 %sum113, ptr %str.build.len.gep128, align 8
  %str.build.data.gep129 = getelementptr inbounds { i64, ptr }, ptr %concat.str127, i32 0, i32 1
  store ptr %concat.buf123, ptr %str.build.data.gep129, align 8
  %call.res130 = call ptr @"type_env::lookup_local_exact"(ptr %var.load16, ptr %concat.str127)
  store ptr %call.res130, ptr %var.pub, align 8
  %var.load131 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load131, null
  br i1 %niche.ne.null, label %choice.then132, label %choice.exit133

str_overflow_abort121:                            ; preds = %concat.sum.len115
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len120

choice.then132:                                   ; preds = %concat.tot.len120
  store ptr %var.load131, ptr %var._, align 8
  store ptr %var.load131, ptr %var.p, align 8
  %var.load134 = load ptr, ptr %var.p, align 8
  ret ptr %var.load134

choice.exit133:                                   ; preds = %ret.dead, %concat.tot.len120
  %var.load135 = load ptr, ptr %var.env, align 8
  %var.load136 = load ptr, ptr %var.env, align 8
  %fld.gep137 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load136, i32 0, i32 8
  %fld.load138 = load ptr, ptr %fld.gep137, align 8
  %concat.lhs139 = load i64, ptr @str.0.struct, align 8
  %concat.lhs140 = and i64 %concat.lhs139, 281474976710655
  %str.tag141 = lshr i64 %concat.lhs139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

ret.dead:                                         ; No predecessors!
  br label %choice.exit133

str_gen_check143:                                 ; preds = %choice.exit133
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag141)
  br i1 %tag.valid147, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %choice.exit133
  %concat.lhs148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs149 = getelementptr inbounds { i64, ptr }, ptr %fld.load138, i32 0, i32 0
  %concat.rhs150 = load i64, ptr %concat.rhs149, align 8
  %concat.rhs151 = and i64 %concat.rhs150, 281474976710655
  %str.tag152 = lshr i64 %concat.rhs150, 48
  %str.immortal153 = icmp eq i64 %str.tag152, 0
  br i1 %str.immortal153, label %str_ok155, label %str_gen_check154

str_stale145:                                     ; preds = %str_gen_check143
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144

str_gen_check154:                                 ; preds = %str_ok144
  %arena.cur157 = call ptr @dva_arena_current()
  %tag.valid158 = call i1 @dva_arena_validate_tag(ptr %arena.cur157, i64 %str.tag152)
  br i1 %tag.valid158, label %str_ok155, label %str_stale156

str_ok155:                                        ; preds = %str_stale156, %str_gen_check154, %str_ok144
  %concat.rhs159 = getelementptr inbounds { i64, ptr }, ptr %fld.load138, i32 0, i32 1
  %concat.rhs160 = load ptr, ptr %concat.rhs159, align 8
  %concat.sum.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs140, i64 %concat.rhs151)
  %sum162 = extractvalue { i64, i1 } %concat.sum.len161, 0
  %ovf163 = extractvalue { i64, i1 } %concat.sum.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %concat.sum.len164

str_stale156:                                     ; preds = %str_gen_check154
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok155

concat.sum.len164:                                ; preds = %str_overflow_abort165, %str_ok155
  %concat.tot.len166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum162, i64 1)
  %sum167 = extractvalue { i64, i1 } %concat.tot.len166, 0
  %ovf168 = extractvalue { i64, i1 } %concat.tot.len166, 1
  br i1 %ovf168, label %str_overflow_abort170, label %concat.tot.len169

str_overflow_abort165:                            ; preds = %str_ok155
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len164

concat.tot.len169:                                ; preds = %str_overflow_abort170, %concat.sum.len164
  %arena.cur171 = call ptr @dva_arena_current()
  %concat.buf172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 %sum167)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf172, ptr align 1 %concat.lhs148, i64 %concat.lhs140, i1 false)
  %concat.mid173 = getelementptr i8, ptr %concat.buf172, i64 %concat.lhs140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid173, ptr align 1 %concat.rhs160, i64 %concat.rhs151, i1 false)
  %concat.nul174 = getelementptr i8, ptr %concat.buf172, i64 %sum162
  store i8 0, ptr %concat.nul174, align 1
  %arena.cur175 = call ptr @dva_arena_current()
  %concat.str176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %concat.str176, i32 0, i32 0
  store i64 %sum162, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %concat.str176, i32 0, i32 1
  store ptr %concat.buf172, ptr %str.build.data.gep178, align 8
  %concat.lhs179 = getelementptr inbounds { i64, ptr }, ptr %concat.str176, i32 0, i32 0
  %concat.lhs180 = load i64, ptr %concat.lhs179, align 8
  %concat.lhs181 = and i64 %concat.lhs180, 281474976710655
  %str.tag182 = lshr i64 %concat.lhs180, 48
  %str.immortal183 = icmp eq i64 %str.tag182, 0
  br i1 %str.immortal183, label %str_ok185, label %str_gen_check184

str_overflow_abort170:                            ; preds = %concat.sum.len164
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len169

str_gen_check184:                                 ; preds = %concat.tot.len169
  %arena.cur187 = call ptr @dva_arena_current()
  %tag.valid188 = call i1 @dva_arena_validate_tag(ptr %arena.cur187, i64 %str.tag182)
  br i1 %tag.valid188, label %str_ok185, label %str_stale186

str_ok185:                                        ; preds = %str_stale186, %str_gen_check184, %concat.tot.len169
  %concat.lhs189 = getelementptr inbounds { i64, ptr }, ptr %concat.str176, i32 0, i32 1
  %concat.lhs190 = load ptr, ptr %concat.lhs189, align 8
  %concat.rhs191 = load i64, ptr @str.5.struct, align 8
  %concat.rhs192 = and i64 %concat.rhs191, 281474976710655
  %str.tag193 = lshr i64 %concat.rhs191, 48
  %str.immortal194 = icmp eq i64 %str.tag193, 0
  br i1 %str.immortal194, label %str_ok196, label %str_gen_check195

str_stale186:                                     ; preds = %str_gen_check184
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok185

str_gen_check195:                                 ; preds = %str_ok185
  %arena.cur198 = call ptr @dva_arena_current()
  %tag.valid199 = call i1 @dva_arena_validate_tag(ptr %arena.cur198, i64 %str.tag193)
  br i1 %tag.valid199, label %str_ok196, label %str_stale197

str_ok196:                                        ; preds = %str_stale197, %str_gen_check195, %str_ok185
  %concat.rhs200 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs181, i64 %concat.rhs192)
  %sum202 = extractvalue { i64, i1 } %concat.sum.len201, 0
  %ovf203 = extractvalue { i64, i1 } %concat.sum.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %concat.sum.len204

str_stale197:                                     ; preds = %str_gen_check195
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok196

concat.sum.len204:                                ; preds = %str_overflow_abort205, %str_ok196
  %concat.tot.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 1)
  %sum207 = extractvalue { i64, i1 } %concat.tot.len206, 0
  %ovf208 = extractvalue { i64, i1 } %concat.tot.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %concat.tot.len209

str_overflow_abort205:                            ; preds = %str_ok196
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len204

concat.tot.len209:                                ; preds = %str_overflow_abort210, %concat.sum.len204
  %arena.cur211 = call ptr @dva_arena_current()
  %concat.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 %sum207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf212, ptr align 1 %concat.lhs190, i64 %concat.lhs181, i1 false)
  %concat.mid213 = getelementptr i8, ptr %concat.buf212, i64 %concat.lhs181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid213, ptr align 1 %concat.rhs200, i64 %concat.rhs192, i1 false)
  %concat.nul214 = getelementptr i8, ptr %concat.buf212, i64 %sum202
  store i8 0, ptr %concat.nul214, align 1
  %arena.cur215 = call ptr @dva_arena_current()
  %concat.str216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %str.build.len.gep217 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  store i64 %sum202, ptr %str.build.len.gep217, align 8
  %str.build.data.gep218 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  store ptr %concat.buf212, ptr %str.build.data.gep218, align 8
  %var.load219 = load ptr, ptr %var.name, align 8
  %concat.lhs220 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  %concat.lhs221 = load i64, ptr %concat.lhs220, align 8
  %concat.lhs222 = and i64 %concat.lhs221, 281474976710655
  %str.tag223 = lshr i64 %concat.lhs221, 48
  %str.immortal224 = icmp eq i64 %str.tag223, 0
  br i1 %str.immortal224, label %str_ok226, label %str_gen_check225

str_overflow_abort210:                            ; preds = %concat.sum.len204
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len209

str_gen_check225:                                 ; preds = %concat.tot.len209
  %arena.cur228 = call ptr @dva_arena_current()
  %tag.valid229 = call i1 @dva_arena_validate_tag(ptr %arena.cur228, i64 %str.tag223)
  br i1 %tag.valid229, label %str_ok226, label %str_stale227

str_ok226:                                        ; preds = %str_stale227, %str_gen_check225, %concat.tot.len209
  %concat.lhs230 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  %concat.lhs231 = load ptr, ptr %concat.lhs230, align 8
  %concat.rhs232 = getelementptr inbounds { i64, ptr }, ptr %var.load219, i32 0, i32 0
  %concat.rhs233 = load i64, ptr %concat.rhs232, align 8
  %concat.rhs234 = and i64 %concat.rhs233, 281474976710655
  %str.tag235 = lshr i64 %concat.rhs233, 48
  %str.immortal236 = icmp eq i64 %str.tag235, 0
  br i1 %str.immortal236, label %str_ok238, label %str_gen_check237

str_stale227:                                     ; preds = %str_gen_check225
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok226

str_gen_check237:                                 ; preds = %str_ok226
  %arena.cur240 = call ptr @dva_arena_current()
  %tag.valid241 = call i1 @dva_arena_validate_tag(ptr %arena.cur240, i64 %str.tag235)
  br i1 %tag.valid241, label %str_ok238, label %str_stale239

str_ok238:                                        ; preds = %str_stale239, %str_gen_check237, %str_ok226
  %concat.rhs242 = getelementptr inbounds { i64, ptr }, ptr %var.load219, i32 0, i32 1
  %concat.rhs243 = load ptr, ptr %concat.rhs242, align 8
  %concat.sum.len244 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs222, i64 %concat.rhs234)
  %sum245 = extractvalue { i64, i1 } %concat.sum.len244, 0
  %ovf246 = extractvalue { i64, i1 } %concat.sum.len244, 1
  br i1 %ovf246, label %str_overflow_abort248, label %concat.sum.len247

str_stale239:                                     ; preds = %str_gen_check237
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok238

concat.sum.len247:                                ; preds = %str_overflow_abort248, %str_ok238
  %concat.tot.len249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum245, i64 1)
  %sum250 = extractvalue { i64, i1 } %concat.tot.len249, 0
  %ovf251 = extractvalue { i64, i1 } %concat.tot.len249, 1
  br i1 %ovf251, label %str_overflow_abort253, label %concat.tot.len252

str_overflow_abort248:                            ; preds = %str_ok238
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len247

concat.tot.len252:                                ; preds = %str_overflow_abort253, %concat.sum.len247
  %arena.cur254 = call ptr @dva_arena_current()
  %concat.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 %sum250)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf255, ptr align 1 %concat.lhs231, i64 %concat.lhs222, i1 false)
  %concat.mid256 = getelementptr i8, ptr %concat.buf255, i64 %concat.lhs222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid256, ptr align 1 %concat.rhs243, i64 %concat.rhs234, i1 false)
  %concat.nul257 = getelementptr i8, ptr %concat.buf255, i64 %sum245
  store i8 0, ptr %concat.nul257, align 1
  %arena.cur258 = call ptr @dva_arena_current()
  %concat.str259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 16)
  %str.build.len.gep260 = getelementptr inbounds { i64, ptr }, ptr %concat.str259, i32 0, i32 0
  store i64 %sum245, ptr %str.build.len.gep260, align 8
  %str.build.data.gep261 = getelementptr inbounds { i64, ptr }, ptr %concat.str259, i32 0, i32 1
  store ptr %concat.buf255, ptr %str.build.data.gep261, align 8
  %call.res262 = call ptr @"type_env::lookup_local_exact"(ptr %var.load135, ptr %concat.str259)
  ret ptr %call.res262

str_overflow_abort253:                            ; preds = %concat.sum.len247
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len252

ret.dead263:                                      ; No predecessors!
  br label %choice.exit

choice.then269:                                   ; preds = %choice.exit
  store ptr %var.load267, ptr %var._271, align 8
  store ptr %var.load267, ptr %var.b, align 8
  %var.load272 = load ptr, ptr %var.b, align 8
  br label %choice.exit270

choice.else:                                      ; preds = %choice.exit
  %var.load273 = load ptr, ptr %var.env, align 8
  %fld.gep274 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load273, i32 0, i32 8
  %fld.load275 = load ptr, ptr %fld.gep274, align 8
  %eq.lhs.len276 = getelementptr inbounds { i64, ptr }, ptr %fld.load275, i32 0, i32 0
  %eq.lhs.len277 = load i64, ptr %eq.lhs.len276, align 8
  %eq.lhs.len278 = and i64 %eq.lhs.len277, 281474976710655
  %str.tag279 = lshr i64 %eq.lhs.len277, 48
  %str.immortal280 = icmp eq i64 %str.tag279, 0
  br i1 %str.immortal280, label %str_ok282, label %str_gen_check281

choice.exit270:                                   ; preds = %choice.exit311, %choice.then269
  %choice.res578 = phi ptr [ %var.load272, %choice.then269 ], [ %choice.res577, %choice.exit311 ]
  ret ptr %choice.res578

str_gen_check281:                                 ; preds = %choice.else
  %arena.cur284 = call ptr @dva_arena_current()
  %tag.valid285 = call i1 @dva_arena_validate_tag(ptr %arena.cur284, i64 %str.tag279)
  br i1 %tag.valid285, label %str_ok282, label %str_stale283

str_ok282:                                        ; preds = %str_stale283, %str_gen_check281, %choice.else
  %eq.rhs.len286 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len287 = and i64 %eq.rhs.len286, 281474976710655
  %str.tag288 = lshr i64 %eq.rhs.len286, 48
  %str.immortal289 = icmp eq i64 %str.tag288, 0
  br i1 %str.immortal289, label %str_ok291, label %str_gen_check290

str_stale283:                                     ; preds = %str_gen_check281
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok282

str_gen_check290:                                 ; preds = %str_ok282
  %arena.cur293 = call ptr @dva_arena_current()
  %tag.valid294 = call i1 @dva_arena_validate_tag(ptr %arena.cur293, i64 %str.tag288)
  br i1 %tag.valid294, label %str_ok291, label %str_stale292

str_ok291:                                        ; preds = %str_stale292, %str_gen_check290, %str_ok282
  %eq.len295 = icmp eq i64 %eq.lhs.len278, %eq.rhs.len287
  br i1 %eq.len295, label %str.eq.then296, label %str.eq.else297

str_stale292:                                     ; preds = %str_gen_check290
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok291

str.eq.then296:                                   ; preds = %str_ok291
  %eq.lhs.data299 = getelementptr inbounds { i64, ptr }, ptr %fld.load275, i32 0, i32 1
  %eq.lhs.data300 = load ptr, ptr %eq.lhs.data299, align 8
  %eq.rhs.data301 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp302 = call i32 @memcmp(ptr %eq.lhs.data300, ptr %eq.rhs.data301, i64 %eq.lhs.len278)
  %eq.cmp.zero303 = icmp eq i32 %eq.memcmp302, 0
  br label %str.eq.merge298

str.eq.else297:                                   ; preds = %str_ok291
  br label %str.eq.merge298

str.eq.merge298:                                  ; preds = %str.eq.else297, %str.eq.then296
  %str.eq.result304 = phi i1 [ %eq.cmp.zero303, %str.eq.then296 ], [ false, %str.eq.else297 ]
  %str.neq305 = xor i1 %str.eq.result304, true
  br i1 %str.neq305, label %and.188.then, label %and.188.else

and.188.then:                                     ; preds = %str.eq.merge298
  %var.load306 = load ptr, ptr %var.name, align 8
  %call.res307 = call i1 @"type_env::name_is_qualified"(ptr %var.load306, i64 0)
  %nottmp308 = xor i1 %call.res307, true
  br label %and.188.exit

and.188.else:                                     ; preds = %str.eq.merge298
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %and.188.then
  %and.188.phi = phi i1 [ %nottmp308, %and.188.then ], [ %str.neq305, %and.188.else ]
  br i1 %and.188.phi, label %choice.then309, label %choice.else310

choice.then309:                                   ; preds = %and.188.exit
  %var.load312 = load ptr, ptr %var.env, align 8
  %var.load313 = load ptr, ptr %var.env, align 8
  %fld.gep314 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load313, i32 0, i32 8
  %fld.load315 = load ptr, ptr %fld.gep314, align 8
  %concat.lhs316 = load i64, ptr @str.0.struct, align 8
  %concat.lhs317 = and i64 %concat.lhs316, 281474976710655
  %str.tag318 = lshr i64 %concat.lhs316, 48
  %str.immortal319 = icmp eq i64 %str.tag318, 0
  br i1 %str.immortal319, label %str_ok321, label %str_gen_check320

choice.else310:                                   ; preds = %and.188.exit
  br label %choice.exit311

choice.exit311:                                   ; preds = %choice.else310, %choice.exit445
  %choice.res577 = phi ptr [ %choice.res, %choice.exit445 ], [ null, %choice.else310 ]
  br label %choice.exit270

str_gen_check320:                                 ; preds = %choice.then309
  %arena.cur323 = call ptr @dva_arena_current()
  %tag.valid324 = call i1 @dva_arena_validate_tag(ptr %arena.cur323, i64 %str.tag318)
  br i1 %tag.valid324, label %str_ok321, label %str_stale322

str_ok321:                                        ; preds = %str_stale322, %str_gen_check320, %choice.then309
  %concat.lhs325 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs326 = getelementptr inbounds { i64, ptr }, ptr %fld.load315, i32 0, i32 0
  %concat.rhs327 = load i64, ptr %concat.rhs326, align 8
  %concat.rhs328 = and i64 %concat.rhs327, 281474976710655
  %str.tag329 = lshr i64 %concat.rhs327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

str_stale322:                                     ; preds = %str_gen_check320
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok321

str_gen_check331:                                 ; preds = %str_ok321
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %str_ok321
  %concat.rhs336 = getelementptr inbounds { i64, ptr }, ptr %fld.load315, i32 0, i32 1
  %concat.rhs337 = load ptr, ptr %concat.rhs336, align 8
  %concat.sum.len338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs317, i64 %concat.rhs328)
  %sum339 = extractvalue { i64, i1 } %concat.sum.len338, 0
  %ovf340 = extractvalue { i64, i1 } %concat.sum.len338, 1
  br i1 %ovf340, label %str_overflow_abort342, label %concat.sum.len341

str_stale333:                                     ; preds = %str_gen_check331
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

concat.sum.len341:                                ; preds = %str_overflow_abort342, %str_ok332
  %concat.tot.len343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum339, i64 1)
  %sum344 = extractvalue { i64, i1 } %concat.tot.len343, 0
  %ovf345 = extractvalue { i64, i1 } %concat.tot.len343, 1
  br i1 %ovf345, label %str_overflow_abort347, label %concat.tot.len346

str_overflow_abort342:                            ; preds = %str_ok332
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len341

concat.tot.len346:                                ; preds = %str_overflow_abort347, %concat.sum.len341
  %arena.cur348 = call ptr @dva_arena_current()
  %concat.buf349 = call ptr @dva_arena_alloc(ptr %arena.cur348, i64 %sum344)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf349, ptr align 1 %concat.lhs325, i64 %concat.lhs317, i1 false)
  %concat.mid350 = getelementptr i8, ptr %concat.buf349, i64 %concat.lhs317
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid350, ptr align 1 %concat.rhs337, i64 %concat.rhs328, i1 false)
  %concat.nul351 = getelementptr i8, ptr %concat.buf349, i64 %sum339
  store i8 0, ptr %concat.nul351, align 1
  %arena.cur352 = call ptr @dva_arena_current()
  %concat.str353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 16)
  %str.build.len.gep354 = getelementptr inbounds { i64, ptr }, ptr %concat.str353, i32 0, i32 0
  store i64 %sum339, ptr %str.build.len.gep354, align 8
  %str.build.data.gep355 = getelementptr inbounds { i64, ptr }, ptr %concat.str353, i32 0, i32 1
  store ptr %concat.buf349, ptr %str.build.data.gep355, align 8
  %concat.lhs356 = getelementptr inbounds { i64, ptr }, ptr %concat.str353, i32 0, i32 0
  %concat.lhs357 = load i64, ptr %concat.lhs356, align 8
  %concat.lhs358 = and i64 %concat.lhs357, 281474976710655
  %str.tag359 = lshr i64 %concat.lhs357, 48
  %str.immortal360 = icmp eq i64 %str.tag359, 0
  br i1 %str.immortal360, label %str_ok362, label %str_gen_check361

str_overflow_abort347:                            ; preds = %concat.sum.len341
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len346

str_gen_check361:                                 ; preds = %concat.tot.len346
  %arena.cur364 = call ptr @dva_arena_current()
  %tag.valid365 = call i1 @dva_arena_validate_tag(ptr %arena.cur364, i64 %str.tag359)
  br i1 %tag.valid365, label %str_ok362, label %str_stale363

str_ok362:                                        ; preds = %str_stale363, %str_gen_check361, %concat.tot.len346
  %concat.lhs366 = getelementptr inbounds { i64, ptr }, ptr %concat.str353, i32 0, i32 1
  %concat.lhs367 = load ptr, ptr %concat.lhs366, align 8
  %concat.rhs368 = load i64, ptr @str.4.struct, align 8
  %concat.rhs369 = and i64 %concat.rhs368, 281474976710655
  %str.tag370 = lshr i64 %concat.rhs368, 48
  %str.immortal371 = icmp eq i64 %str.tag370, 0
  br i1 %str.immortal371, label %str_ok373, label %str_gen_check372

str_stale363:                                     ; preds = %str_gen_check361
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok362

str_gen_check372:                                 ; preds = %str_ok362
  %arena.cur375 = call ptr @dva_arena_current()
  %tag.valid376 = call i1 @dva_arena_validate_tag(ptr %arena.cur375, i64 %str.tag370)
  br i1 %tag.valid376, label %str_ok373, label %str_stale374

str_ok373:                                        ; preds = %str_stale374, %str_gen_check372, %str_ok362
  %concat.rhs377 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len378 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs358, i64 %concat.rhs369)
  %sum379 = extractvalue { i64, i1 } %concat.sum.len378, 0
  %ovf380 = extractvalue { i64, i1 } %concat.sum.len378, 1
  br i1 %ovf380, label %str_overflow_abort382, label %concat.sum.len381

str_stale374:                                     ; preds = %str_gen_check372
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok373

concat.sum.len381:                                ; preds = %str_overflow_abort382, %str_ok373
  %concat.tot.len383 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum379, i64 1)
  %sum384 = extractvalue { i64, i1 } %concat.tot.len383, 0
  %ovf385 = extractvalue { i64, i1 } %concat.tot.len383, 1
  br i1 %ovf385, label %str_overflow_abort387, label %concat.tot.len386

str_overflow_abort382:                            ; preds = %str_ok373
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len381

concat.tot.len386:                                ; preds = %str_overflow_abort387, %concat.sum.len381
  %arena.cur388 = call ptr @dva_arena_current()
  %concat.buf389 = call ptr @dva_arena_alloc(ptr %arena.cur388, i64 %sum384)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf389, ptr align 1 %concat.lhs367, i64 %concat.lhs358, i1 false)
  %concat.mid390 = getelementptr i8, ptr %concat.buf389, i64 %concat.lhs358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid390, ptr align 1 %concat.rhs377, i64 %concat.rhs369, i1 false)
  %concat.nul391 = getelementptr i8, ptr %concat.buf389, i64 %sum379
  store i8 0, ptr %concat.nul391, align 1
  %arena.cur392 = call ptr @dva_arena_current()
  %concat.str393 = call ptr @dva_arena_alloc(ptr %arena.cur392, i64 16)
  %str.build.len.gep394 = getelementptr inbounds { i64, ptr }, ptr %concat.str393, i32 0, i32 0
  store i64 %sum379, ptr %str.build.len.gep394, align 8
  %str.build.data.gep395 = getelementptr inbounds { i64, ptr }, ptr %concat.str393, i32 0, i32 1
  store ptr %concat.buf389, ptr %str.build.data.gep395, align 8
  %var.load396 = load ptr, ptr %var.name, align 8
  %concat.lhs397 = getelementptr inbounds { i64, ptr }, ptr %concat.str393, i32 0, i32 0
  %concat.lhs398 = load i64, ptr %concat.lhs397, align 8
  %concat.lhs399 = and i64 %concat.lhs398, 281474976710655
  %str.tag400 = lshr i64 %concat.lhs398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

str_overflow_abort387:                            ; preds = %concat.sum.len381
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len386

str_gen_check402:                                 ; preds = %concat.tot.len386
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %concat.tot.len386
  %concat.lhs407 = getelementptr inbounds { i64, ptr }, ptr %concat.str393, i32 0, i32 1
  %concat.lhs408 = load ptr, ptr %concat.lhs407, align 8
  %concat.rhs409 = getelementptr inbounds { i64, ptr }, ptr %var.load396, i32 0, i32 0
  %concat.rhs410 = load i64, ptr %concat.rhs409, align 8
  %concat.rhs411 = and i64 %concat.rhs410, 281474976710655
  %str.tag412 = lshr i64 %concat.rhs410, 48
  %str.immortal413 = icmp eq i64 %str.tag412, 0
  br i1 %str.immortal413, label %str_ok415, label %str_gen_check414

str_stale404:                                     ; preds = %str_gen_check402
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str_gen_check414:                                 ; preds = %str_ok403
  %arena.cur417 = call ptr @dva_arena_current()
  %tag.valid418 = call i1 @dva_arena_validate_tag(ptr %arena.cur417, i64 %str.tag412)
  br i1 %tag.valid418, label %str_ok415, label %str_stale416

str_ok415:                                        ; preds = %str_stale416, %str_gen_check414, %str_ok403
  %concat.rhs419 = getelementptr inbounds { i64, ptr }, ptr %var.load396, i32 0, i32 1
  %concat.rhs420 = load ptr, ptr %concat.rhs419, align 8
  %concat.sum.len421 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs399, i64 %concat.rhs411)
  %sum422 = extractvalue { i64, i1 } %concat.sum.len421, 0
  %ovf423 = extractvalue { i64, i1 } %concat.sum.len421, 1
  br i1 %ovf423, label %str_overflow_abort425, label %concat.sum.len424

str_stale416:                                     ; preds = %str_gen_check414
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok415

concat.sum.len424:                                ; preds = %str_overflow_abort425, %str_ok415
  %concat.tot.len426 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum422, i64 1)
  %sum427 = extractvalue { i64, i1 } %concat.tot.len426, 0
  %ovf428 = extractvalue { i64, i1 } %concat.tot.len426, 1
  br i1 %ovf428, label %str_overflow_abort430, label %concat.tot.len429

str_overflow_abort425:                            ; preds = %str_ok415
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len424

concat.tot.len429:                                ; preds = %str_overflow_abort430, %concat.sum.len424
  %arena.cur431 = call ptr @dva_arena_current()
  %concat.buf432 = call ptr @dva_arena_alloc(ptr %arena.cur431, i64 %sum427)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf432, ptr align 1 %concat.lhs408, i64 %concat.lhs399, i1 false)
  %concat.mid433 = getelementptr i8, ptr %concat.buf432, i64 %concat.lhs399
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid433, ptr align 1 %concat.rhs420, i64 %concat.rhs411, i1 false)
  %concat.nul434 = getelementptr i8, ptr %concat.buf432, i64 %sum422
  store i8 0, ptr %concat.nul434, align 1
  %arena.cur435 = call ptr @dva_arena_current()
  %concat.str436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 16)
  %str.build.len.gep437 = getelementptr inbounds { i64, ptr }, ptr %concat.str436, i32 0, i32 0
  store i64 %sum422, ptr %str.build.len.gep437, align 8
  %str.build.data.gep438 = getelementptr inbounds { i64, ptr }, ptr %concat.str436, i32 0, i32 1
  store ptr %concat.buf432, ptr %str.build.data.gep438, align 8
  %call.res439 = call ptr @"type_env::lookup_local_exact"(ptr %var.load312, ptr %concat.str436)
  store ptr %call.res439, ptr %var.pub440, align 8
  %var.load441 = load ptr, ptr %var.pub440, align 8
  %niche.ne.null442 = icmp ne ptr %var.load441, null
  br i1 %niche.ne.null442, label %choice.then443, label %choice.else444

str_overflow_abort430:                            ; preds = %concat.sum.len424
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len429

choice.then443:                                   ; preds = %concat.tot.len429
  store ptr %var.load441, ptr %var._446, align 8
  store ptr %var.load441, ptr %var.p447, align 8
  %var.load448 = load ptr, ptr %var.p447, align 8
  br label %choice.exit445

choice.else444:                                   ; preds = %concat.tot.len429
  %var.load449 = load ptr, ptr %var.env, align 8
  %var.load450 = load ptr, ptr %var.env, align 8
  %fld.gep451 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load450, i32 0, i32 8
  %fld.load452 = load ptr, ptr %fld.gep451, align 8
  %concat.lhs453 = load i64, ptr @str.0.struct, align 8
  %concat.lhs454 = and i64 %concat.lhs453, 281474976710655
  %str.tag455 = lshr i64 %concat.lhs453, 48
  %str.immortal456 = icmp eq i64 %str.tag455, 0
  br i1 %str.immortal456, label %str_ok458, label %str_gen_check457

choice.exit445:                                   ; preds = %concat.tot.len566, %choice.then443
  %choice.res = phi ptr [ %var.load448, %choice.then443 ], [ %call.res576, %concat.tot.len566 ]
  br label %choice.exit311

str_gen_check457:                                 ; preds = %choice.else444
  %arena.cur460 = call ptr @dva_arena_current()
  %tag.valid461 = call i1 @dva_arena_validate_tag(ptr %arena.cur460, i64 %str.tag455)
  br i1 %tag.valid461, label %str_ok458, label %str_stale459

str_ok458:                                        ; preds = %str_stale459, %str_gen_check457, %choice.else444
  %concat.lhs462 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs463 = getelementptr inbounds { i64, ptr }, ptr %fld.load452, i32 0, i32 0
  %concat.rhs464 = load i64, ptr %concat.rhs463, align 8
  %concat.rhs465 = and i64 %concat.rhs464, 281474976710655
  %str.tag466 = lshr i64 %concat.rhs464, 48
  %str.immortal467 = icmp eq i64 %str.tag466, 0
  br i1 %str.immortal467, label %str_ok469, label %str_gen_check468

str_stale459:                                     ; preds = %str_gen_check457
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok458

str_gen_check468:                                 ; preds = %str_ok458
  %arena.cur471 = call ptr @dva_arena_current()
  %tag.valid472 = call i1 @dva_arena_validate_tag(ptr %arena.cur471, i64 %str.tag466)
  br i1 %tag.valid472, label %str_ok469, label %str_stale470

str_ok469:                                        ; preds = %str_stale470, %str_gen_check468, %str_ok458
  %concat.rhs473 = getelementptr inbounds { i64, ptr }, ptr %fld.load452, i32 0, i32 1
  %concat.rhs474 = load ptr, ptr %concat.rhs473, align 8
  %concat.sum.len475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs454, i64 %concat.rhs465)
  %sum476 = extractvalue { i64, i1 } %concat.sum.len475, 0
  %ovf477 = extractvalue { i64, i1 } %concat.sum.len475, 1
  br i1 %ovf477, label %str_overflow_abort479, label %concat.sum.len478

str_stale470:                                     ; preds = %str_gen_check468
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok469

concat.sum.len478:                                ; preds = %str_overflow_abort479, %str_ok469
  %concat.tot.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum476, i64 1)
  %sum481 = extractvalue { i64, i1 } %concat.tot.len480, 0
  %ovf482 = extractvalue { i64, i1 } %concat.tot.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %concat.tot.len483

str_overflow_abort479:                            ; preds = %str_ok469
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len478

concat.tot.len483:                                ; preds = %str_overflow_abort484, %concat.sum.len478
  %arena.cur485 = call ptr @dva_arena_current()
  %concat.buf486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 %sum481)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf486, ptr align 1 %concat.lhs462, i64 %concat.lhs454, i1 false)
  %concat.mid487 = getelementptr i8, ptr %concat.buf486, i64 %concat.lhs454
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid487, ptr align 1 %concat.rhs474, i64 %concat.rhs465, i1 false)
  %concat.nul488 = getelementptr i8, ptr %concat.buf486, i64 %sum476
  store i8 0, ptr %concat.nul488, align 1
  %arena.cur489 = call ptr @dva_arena_current()
  %concat.str490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 16)
  %str.build.len.gep491 = getelementptr inbounds { i64, ptr }, ptr %concat.str490, i32 0, i32 0
  store i64 %sum476, ptr %str.build.len.gep491, align 8
  %str.build.data.gep492 = getelementptr inbounds { i64, ptr }, ptr %concat.str490, i32 0, i32 1
  store ptr %concat.buf486, ptr %str.build.data.gep492, align 8
  %concat.lhs493 = getelementptr inbounds { i64, ptr }, ptr %concat.str490, i32 0, i32 0
  %concat.lhs494 = load i64, ptr %concat.lhs493, align 8
  %concat.lhs495 = and i64 %concat.lhs494, 281474976710655
  %str.tag496 = lshr i64 %concat.lhs494, 48
  %str.immortal497 = icmp eq i64 %str.tag496, 0
  br i1 %str.immortal497, label %str_ok499, label %str_gen_check498

str_overflow_abort484:                            ; preds = %concat.sum.len478
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len483

str_gen_check498:                                 ; preds = %concat.tot.len483
  %arena.cur501 = call ptr @dva_arena_current()
  %tag.valid502 = call i1 @dva_arena_validate_tag(ptr %arena.cur501, i64 %str.tag496)
  br i1 %tag.valid502, label %str_ok499, label %str_stale500

str_ok499:                                        ; preds = %str_stale500, %str_gen_check498, %concat.tot.len483
  %concat.lhs503 = getelementptr inbounds { i64, ptr }, ptr %concat.str490, i32 0, i32 1
  %concat.lhs504 = load ptr, ptr %concat.lhs503, align 8
  %concat.rhs505 = load i64, ptr @str.5.struct, align 8
  %concat.rhs506 = and i64 %concat.rhs505, 281474976710655
  %str.tag507 = lshr i64 %concat.rhs505, 48
  %str.immortal508 = icmp eq i64 %str.tag507, 0
  br i1 %str.immortal508, label %str_ok510, label %str_gen_check509

str_stale500:                                     ; preds = %str_gen_check498
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok499

str_gen_check509:                                 ; preds = %str_ok499
  %arena.cur512 = call ptr @dva_arena_current()
  %tag.valid513 = call i1 @dva_arena_validate_tag(ptr %arena.cur512, i64 %str.tag507)
  br i1 %tag.valid513, label %str_ok510, label %str_stale511

str_ok510:                                        ; preds = %str_stale511, %str_gen_check509, %str_ok499
  %concat.rhs514 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len515 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs495, i64 %concat.rhs506)
  %sum516 = extractvalue { i64, i1 } %concat.sum.len515, 0
  %ovf517 = extractvalue { i64, i1 } %concat.sum.len515, 1
  br i1 %ovf517, label %str_overflow_abort519, label %concat.sum.len518

str_stale511:                                     ; preds = %str_gen_check509
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok510

concat.sum.len518:                                ; preds = %str_overflow_abort519, %str_ok510
  %concat.tot.len520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum516, i64 1)
  %sum521 = extractvalue { i64, i1 } %concat.tot.len520, 0
  %ovf522 = extractvalue { i64, i1 } %concat.tot.len520, 1
  br i1 %ovf522, label %str_overflow_abort524, label %concat.tot.len523

str_overflow_abort519:                            ; preds = %str_ok510
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len518

concat.tot.len523:                                ; preds = %str_overflow_abort524, %concat.sum.len518
  %arena.cur525 = call ptr @dva_arena_current()
  %concat.buf526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %sum521)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf526, ptr align 1 %concat.lhs504, i64 %concat.lhs495, i1 false)
  %concat.mid527 = getelementptr i8, ptr %concat.buf526, i64 %concat.lhs495
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid527, ptr align 1 %concat.rhs514, i64 %concat.rhs506, i1 false)
  %concat.nul528 = getelementptr i8, ptr %concat.buf526, i64 %sum516
  store i8 0, ptr %concat.nul528, align 1
  %arena.cur529 = call ptr @dva_arena_current()
  %concat.str530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 16)
  %str.build.len.gep531 = getelementptr inbounds { i64, ptr }, ptr %concat.str530, i32 0, i32 0
  store i64 %sum516, ptr %str.build.len.gep531, align 8
  %str.build.data.gep532 = getelementptr inbounds { i64, ptr }, ptr %concat.str530, i32 0, i32 1
  store ptr %concat.buf526, ptr %str.build.data.gep532, align 8
  %var.load533 = load ptr, ptr %var.name, align 8
  %concat.lhs534 = getelementptr inbounds { i64, ptr }, ptr %concat.str530, i32 0, i32 0
  %concat.lhs535 = load i64, ptr %concat.lhs534, align 8
  %concat.lhs536 = and i64 %concat.lhs535, 281474976710655
  %str.tag537 = lshr i64 %concat.lhs535, 48
  %str.immortal538 = icmp eq i64 %str.tag537, 0
  br i1 %str.immortal538, label %str_ok540, label %str_gen_check539

str_overflow_abort524:                            ; preds = %concat.sum.len518
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len523

str_gen_check539:                                 ; preds = %concat.tot.len523
  %arena.cur542 = call ptr @dva_arena_current()
  %tag.valid543 = call i1 @dva_arena_validate_tag(ptr %arena.cur542, i64 %str.tag537)
  br i1 %tag.valid543, label %str_ok540, label %str_stale541

str_ok540:                                        ; preds = %str_stale541, %str_gen_check539, %concat.tot.len523
  %concat.lhs544 = getelementptr inbounds { i64, ptr }, ptr %concat.str530, i32 0, i32 1
  %concat.lhs545 = load ptr, ptr %concat.lhs544, align 8
  %concat.rhs546 = getelementptr inbounds { i64, ptr }, ptr %var.load533, i32 0, i32 0
  %concat.rhs547 = load i64, ptr %concat.rhs546, align 8
  %concat.rhs548 = and i64 %concat.rhs547, 281474976710655
  %str.tag549 = lshr i64 %concat.rhs547, 48
  %str.immortal550 = icmp eq i64 %str.tag549, 0
  br i1 %str.immortal550, label %str_ok552, label %str_gen_check551

str_stale541:                                     ; preds = %str_gen_check539
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok540

str_gen_check551:                                 ; preds = %str_ok540
  %arena.cur554 = call ptr @dva_arena_current()
  %tag.valid555 = call i1 @dva_arena_validate_tag(ptr %arena.cur554, i64 %str.tag549)
  br i1 %tag.valid555, label %str_ok552, label %str_stale553

str_ok552:                                        ; preds = %str_stale553, %str_gen_check551, %str_ok540
  %concat.rhs556 = getelementptr inbounds { i64, ptr }, ptr %var.load533, i32 0, i32 1
  %concat.rhs557 = load ptr, ptr %concat.rhs556, align 8
  %concat.sum.len558 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs536, i64 %concat.rhs548)
  %sum559 = extractvalue { i64, i1 } %concat.sum.len558, 0
  %ovf560 = extractvalue { i64, i1 } %concat.sum.len558, 1
  br i1 %ovf560, label %str_overflow_abort562, label %concat.sum.len561

str_stale553:                                     ; preds = %str_gen_check551
  %51 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok552

concat.sum.len561:                                ; preds = %str_overflow_abort562, %str_ok552
  %concat.tot.len563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum559, i64 1)
  %sum564 = extractvalue { i64, i1 } %concat.tot.len563, 0
  %ovf565 = extractvalue { i64, i1 } %concat.tot.len563, 1
  br i1 %ovf565, label %str_overflow_abort567, label %concat.tot.len566

str_overflow_abort562:                            ; preds = %str_ok552
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len561

concat.tot.len566:                                ; preds = %str_overflow_abort567, %concat.sum.len561
  %arena.cur568 = call ptr @dva_arena_current()
  %concat.buf569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 %sum564)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf569, ptr align 1 %concat.lhs545, i64 %concat.lhs536, i1 false)
  %concat.mid570 = getelementptr i8, ptr %concat.buf569, i64 %concat.lhs536
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid570, ptr align 1 %concat.rhs557, i64 %concat.rhs548, i1 false)
  %concat.nul571 = getelementptr i8, ptr %concat.buf569, i64 %sum559
  store i8 0, ptr %concat.nul571, align 1
  %arena.cur572 = call ptr @dva_arena_current()
  %concat.str573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 16)
  %str.build.len.gep574 = getelementptr inbounds { i64, ptr }, ptr %concat.str573, i32 0, i32 0
  store i64 %sum559, ptr %str.build.len.gep574, align 8
  %str.build.data.gep575 = getelementptr inbounds { i64, ptr }, ptr %concat.str573, i32 0, i32 1
  store ptr %concat.buf569, ptr %str.build.data.gep575, align 8
  %call.res576 = call ptr @"type_env::lookup_local_exact"(ptr %var.load449, ptr %concat.str573)
  br label %choice.exit445

str_overflow_abort567:                            ; preds = %concat.sum.len561
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len566
}

define ptr @"type_env::lookup_scope_chain"(ptr %0, ptr %1, i64 %2) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
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
  %arena.cur27 = call ptr @dva_arena_current()
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
  %arena.cur28 = call ptr @dva_arena_current()
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

define ptr @"type_env::lookup_nonroot_exact"(ptr %0, ptr %1) #1 {
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

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #1 {
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
  %choice.res = phi ptr [ %var.load3, %choice.then ], [ %var.load101, %loop.exit.190 ]
  ret ptr %choice.res

a.create:                                         ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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

loop.latch.190:                                   ; preds = %choice.exit99
  %step.val = load i64, ptr %loop.step.190, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.190, align 8
  br label %loop.header.190

loop.exit.190:                                    ; preds = %choice.then98, %loop.exit.nat.190
  %var.load101 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit

a.create13:                                       ; preds = %loop.body.190
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
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
  %arena.cur32 = call ptr @dva_arena_current()
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = call ptr @dva_arena_current()
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
  %arena.cur43 = call ptr @dva_arena_current()
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
  %arena.cur44 = call ptr @dva_arena_current()
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
  %var.load74 = load ptr, ptr %var.b, align 8
  %fld.gep75 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %var.load74, i32 0, i32 0
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %var.load77 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %eq.lhs.len78 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len79 = and i64 %eq.lhs.len78, 281474976710655
  %str.tag80 = lshr i64 %eq.lhs.len78, 48
  %str.immortal81 = icmp eq i64 %str.tag80, 0
  br i1 %str.immortal81, label %str_ok83, label %str_gen_check82

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
  %str.tag = lshr i64 %err.msg.len60, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.191
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.191
  %err.msg.len32 = trunc i64 %err.msg.len61 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data63 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len64 = load i64, ptr %err.file.len, align 8
  %err.file.len65 = and i64 %err.file.len64, 281474976710655
  %str.tag66 = lshr i64 %err.file.len64, 48
  %str.immortal67 = icmp eq i64 %str.tag66, 0
  br i1 %str.immortal67, label %str_ok69, label %str_gen_check68

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check68:                                  ; preds = %str_ok
  %arena.cur71 = call ptr @dva_arena_current()
  %tag.valid72 = call i1 @dva_arena_validate_tag(ptr %arena.cur71, i64 %str.tag66)
  br i1 %tag.valid72, label %str_ok69, label %str_stale70

str_ok69:                                         ; preds = %str_stale70, %str_gen_check68, %str_ok
  %err.file.len32 = trunc i64 %err.file.len65 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data73 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale70:                                      ; preds = %str_gen_check68
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok69

err.thread:                                       ; preds = %str_ok69
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok69
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data63, i32 %err.file.len32, ptr %err.file.data73, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check82:                                  ; preds = %unwrap.pos.191
  %arena.cur85 = call ptr @dva_arena_current()
  %tag.valid86 = call i1 @dva_arena_validate_tag(ptr %arena.cur85, i64 %str.tag80)
  br i1 %tag.valid86, label %str_ok83, label %str_stale84

str_ok83:                                         ; preds = %str_stale84, %str_gen_check82, %unwrap.pos.191
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %eq.rhs.len87 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len88 = and i64 %eq.rhs.len87, 281474976710655
  %str.tag89 = lshr i64 %eq.rhs.len87, 48
  %str.immortal90 = icmp eq i64 %str.tag89, 0
  br i1 %str.immortal90, label %str_ok92, label %str_gen_check91

str_stale84:                                      ; preds = %str_gen_check82
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok83

str_gen_check91:                                  ; preds = %str_ok83
  %arena.cur94 = call ptr @dva_arena_current()
  %tag.valid95 = call i1 @dva_arena_validate_tag(ptr %arena.cur94, i64 %str.tag89)
  br i1 %tag.valid95, label %str_ok92, label %str_stale93

str_ok92:                                         ; preds = %str_stale93, %str_gen_check91, %str_ok83
  %eq.len = icmp eq i64 %eq.lhs.len79, %eq.rhs.len88
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale93:                                      ; preds = %str_gen_check91
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok92

str.eq.then:                                      ; preds = %str_ok92
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %eq.lhs.data96 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %eq.rhs.data97 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data96, ptr %eq.rhs.data97, i64 %eq.lhs.len79)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok92
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then98, label %choice.exit99

choice.then98:                                    ; preds = %str.eq.merge
  %var.load100 = load ptr, ptr %var.b, align 8
  store ptr %var.load100, ptr %"var.g_found'", align 8
  br label %loop.exit.190

choice.exit99:                                    ; preds = %str.eq.merge
  br label %loop.latch.190
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._139 = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.192.then, label %and.192.else

and.192.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.192.exit

and.192.else:                                     ; preds = %str.eq.merge
  br label %and.192.exit

and.192.exit:                                     ; preds = %and.192.else, %and.192.then
  %and.192.phi = phi i1 [ %nottmp, %and.192.then ], [ %str.neq, %and.192.else ]
  br i1 %and.192.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.192.exit
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.name, align 8
  %call.res15 = call ptr @"type_env::lookup_nonroot_exact"(ptr %var.load13, ptr %var.load14)
  store ptr %call.res15, ptr %var.local_b, align 8
  %var.load16 = load ptr, ptr %var.local_b, align 8
  %niche.ne.null = icmp ne ptr %var.load16, null
  br i1 %niche.ne.null, label %choice.then17, label %choice.exit18

choice.exit:                                      ; preds = %ret.dead270, %and.192.exit
  %var.load271 = load ptr, ptr %var.env, align 8
  %var.load272 = load ptr, ptr %var.name, align 8
  %call.res273 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load271, ptr %var.load272)
  ret ptr %call.res273

choice.then17:                                    ; preds = %choice.then
  store ptr %var.load16, ptr %var._, align 8
  store ptr %var.load16, ptr %var.b, align 8
  %var.load19 = load ptr, ptr %var.b, align 8
  ret ptr %var.load19

choice.exit18:                                    ; preds = %ret.dead, %choice.then
  %var.load20 = load ptr, ptr %var.env, align 8
  %var.load21 = load ptr, ptr %var.env, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load21, i32 0, i32 8
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs24 = and i64 %concat.lhs, 281474976710655
  %str.tag25 = lshr i64 %concat.lhs, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

ret.dead:                                         ; No predecessors!
  br label %choice.exit18

str_gen_check27:                                  ; preds = %choice.exit18
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %choice.exit18
  %concat.lhs32 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %concat.rhs33 = load i64, ptr %concat.rhs, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check37:                                  ; preds = %str_ok28
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok28
  %concat.rhs42 = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %concat.rhs43 = load ptr, ptr %concat.rhs42, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs24, i64 %concat.rhs34)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len44

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len44:                                 ; preds = %str_overflow_abort, %str_ok38
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum45 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf46 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %concat.tot.len47

str_overflow_abort:                               ; preds = %str_ok38
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len44

concat.tot.len47:                                 ; preds = %str_overflow_abort48, %concat.sum.len44
  %arena.cur49 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum45)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs32, i64 %concat.lhs24, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs43, i64 %concat.rhs34, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur50 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs51 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs52 = load i64, ptr %concat.lhs51, align 8
  %concat.lhs53 = and i64 %concat.lhs52, 281474976710655
  %str.tag54 = lshr i64 %concat.lhs52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

str_overflow_abort48:                             ; preds = %concat.sum.len44
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len47

str_gen_check56:                                  ; preds = %concat.tot.len47
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %concat.tot.len47
  %concat.lhs61 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs62 = load ptr, ptr %concat.lhs61, align 8
  %concat.rhs63 = load i64, ptr @str.4.struct, align 8
  %concat.rhs64 = and i64 %concat.rhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.rhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_stale58:                                      ; preds = %str_gen_check56
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

str_gen_check67:                                  ; preds = %str_ok57
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %str_ok57
  %concat.rhs72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs53, i64 %concat.rhs64)
  %sum74 = extractvalue { i64, i1 } %concat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %concat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %concat.sum.len76

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

concat.sum.len76:                                 ; preds = %str_overflow_abort77, %str_ok68
  %concat.tot.len78 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 1)
  %sum79 = extractvalue { i64, i1 } %concat.tot.len78, 0
  %ovf80 = extractvalue { i64, i1 } %concat.tot.len78, 1
  br i1 %ovf80, label %str_overflow_abort82, label %concat.tot.len81

str_overflow_abort77:                             ; preds = %str_ok68
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len76

concat.tot.len81:                                 ; preds = %str_overflow_abort82, %concat.sum.len76
  %arena.cur83 = call ptr @dva_arena_current()
  %concat.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum79)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf84, ptr align 1 %concat.lhs62, i64 %concat.lhs53, i1 false)
  %concat.mid85 = getelementptr i8, ptr %concat.buf84, i64 %concat.lhs53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid85, ptr align 1 %concat.rhs72, i64 %concat.rhs64, i1 false)
  %concat.nul86 = getelementptr i8, ptr %concat.buf84, i64 %sum74
  store i8 0, ptr %concat.nul86, align 1
  %arena.cur87 = call ptr @dva_arena_current()
  %concat.str88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 16)
  %str.build.len.gep89 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 0
  store i64 %sum74, ptr %str.build.len.gep89, align 8
  %str.build.data.gep90 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 1
  store ptr %concat.buf84, ptr %str.build.data.gep90, align 8
  %var.load91 = load ptr, ptr %var.name, align 8
  %concat.lhs92 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 0
  %concat.lhs93 = load i64, ptr %concat.lhs92, align 8
  %concat.lhs94 = and i64 %concat.lhs93, 281474976710655
  %str.tag95 = lshr i64 %concat.lhs93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

str_overflow_abort82:                             ; preds = %concat.sum.len76
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len81

str_gen_check97:                                  ; preds = %concat.tot.len81
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %concat.tot.len81
  %concat.lhs102 = getelementptr inbounds { i64, ptr }, ptr %concat.str88, i32 0, i32 1
  %concat.lhs103 = load ptr, ptr %concat.lhs102, align 8
  %concat.rhs104 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %concat.rhs105 = load i64, ptr %concat.rhs104, align 8
  %concat.rhs106 = and i64 %concat.rhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.rhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_stale99:                                      ; preds = %str_gen_check97
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

str_gen_check109:                                 ; preds = %str_ok98
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %str_ok98
  %concat.rhs114 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 1
  %concat.rhs115 = load ptr, ptr %concat.rhs114, align 8
  %concat.sum.len116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs94, i64 %concat.rhs106)
  %sum117 = extractvalue { i64, i1 } %concat.sum.len116, 0
  %ovf118 = extractvalue { i64, i1 } %concat.sum.len116, 1
  br i1 %ovf118, label %str_overflow_abort120, label %concat.sum.len119

str_stale111:                                     ; preds = %str_gen_check109
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

concat.sum.len119:                                ; preds = %str_overflow_abort120, %str_ok110
  %concat.tot.len121 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum117, i64 1)
  %sum122 = extractvalue { i64, i1 } %concat.tot.len121, 0
  %ovf123 = extractvalue { i64, i1 } %concat.tot.len121, 1
  br i1 %ovf123, label %str_overflow_abort125, label %concat.tot.len124

str_overflow_abort120:                            ; preds = %str_ok110
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len119

concat.tot.len124:                                ; preds = %str_overflow_abort125, %concat.sum.len119
  %arena.cur126 = call ptr @dva_arena_current()
  %concat.buf127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 %sum122)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf127, ptr align 1 %concat.lhs103, i64 %concat.lhs94, i1 false)
  %concat.mid128 = getelementptr i8, ptr %concat.buf127, i64 %concat.lhs94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid128, ptr align 1 %concat.rhs115, i64 %concat.rhs106, i1 false)
  %concat.nul129 = getelementptr i8, ptr %concat.buf127, i64 %sum117
  store i8 0, ptr %concat.nul129, align 1
  %arena.cur130 = call ptr @dva_arena_current()
  %concat.str131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 16)
  %str.build.len.gep132 = getelementptr inbounds { i64, ptr }, ptr %concat.str131, i32 0, i32 0
  store i64 %sum117, ptr %str.build.len.gep132, align 8
  %str.build.data.gep133 = getelementptr inbounds { i64, ptr }, ptr %concat.str131, i32 0, i32 1
  store ptr %concat.buf127, ptr %str.build.data.gep133, align 8
  %call.res134 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load20, ptr %concat.str131)
  store ptr %call.res134, ptr %var.pub, align 8
  %var.load135 = load ptr, ptr %var.pub, align 8
  %niche.ne.null136 = icmp ne ptr %var.load135, null
  br i1 %niche.ne.null136, label %choice.then137, label %choice.exit138

str_overflow_abort125:                            ; preds = %concat.sum.len119
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len124

choice.then137:                                   ; preds = %concat.tot.len124
  store ptr %var.load135, ptr %var._139, align 8
  store ptr %var.load135, ptr %var.p, align 8
  %var.load140 = load ptr, ptr %var.p, align 8
  ret ptr %var.load140

choice.exit138:                                   ; preds = %ret.dead141, %concat.tot.len124
  %var.load142 = load ptr, ptr %var.env, align 8
  %var.load143 = load ptr, ptr %var.env, align 8
  %fld.gep144 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load143, i32 0, i32 8
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %concat.lhs146 = load i64, ptr @str.0.struct, align 8
  %concat.lhs147 = and i64 %concat.lhs146, 281474976710655
  %str.tag148 = lshr i64 %concat.lhs146, 48
  %str.immortal149 = icmp eq i64 %str.tag148, 0
  br i1 %str.immortal149, label %str_ok151, label %str_gen_check150

ret.dead141:                                      ; No predecessors!
  br label %choice.exit138

str_gen_check150:                                 ; preds = %choice.exit138
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag148)
  br i1 %tag.valid154, label %str_ok151, label %str_stale152

str_ok151:                                        ; preds = %str_stale152, %str_gen_check150, %choice.exit138
  %concat.lhs155 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs156 = getelementptr inbounds { i64, ptr }, ptr %fld.load145, i32 0, i32 0
  %concat.rhs157 = load i64, ptr %concat.rhs156, align 8
  %concat.rhs158 = and i64 %concat.rhs157, 281474976710655
  %str.tag159 = lshr i64 %concat.rhs157, 48
  %str.immortal160 = icmp eq i64 %str.tag159, 0
  br i1 %str.immortal160, label %str_ok162, label %str_gen_check161

str_stale152:                                     ; preds = %str_gen_check150
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok151

str_gen_check161:                                 ; preds = %str_ok151
  %arena.cur164 = call ptr @dva_arena_current()
  %tag.valid165 = call i1 @dva_arena_validate_tag(ptr %arena.cur164, i64 %str.tag159)
  br i1 %tag.valid165, label %str_ok162, label %str_stale163

str_ok162:                                        ; preds = %str_stale163, %str_gen_check161, %str_ok151
  %concat.rhs166 = getelementptr inbounds { i64, ptr }, ptr %fld.load145, i32 0, i32 1
  %concat.rhs167 = load ptr, ptr %concat.rhs166, align 8
  %concat.sum.len168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs147, i64 %concat.rhs158)
  %sum169 = extractvalue { i64, i1 } %concat.sum.len168, 0
  %ovf170 = extractvalue { i64, i1 } %concat.sum.len168, 1
  br i1 %ovf170, label %str_overflow_abort172, label %concat.sum.len171

str_stale163:                                     ; preds = %str_gen_check161
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok162

concat.sum.len171:                                ; preds = %str_overflow_abort172, %str_ok162
  %concat.tot.len173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum169, i64 1)
  %sum174 = extractvalue { i64, i1 } %concat.tot.len173, 0
  %ovf175 = extractvalue { i64, i1 } %concat.tot.len173, 1
  br i1 %ovf175, label %str_overflow_abort177, label %concat.tot.len176

str_overflow_abort172:                            ; preds = %str_ok162
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len171

concat.tot.len176:                                ; preds = %str_overflow_abort177, %concat.sum.len171
  %arena.cur178 = call ptr @dva_arena_current()
  %concat.buf179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 %sum174)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf179, ptr align 1 %concat.lhs155, i64 %concat.lhs147, i1 false)
  %concat.mid180 = getelementptr i8, ptr %concat.buf179, i64 %concat.lhs147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid180, ptr align 1 %concat.rhs167, i64 %concat.rhs158, i1 false)
  %concat.nul181 = getelementptr i8, ptr %concat.buf179, i64 %sum169
  store i8 0, ptr %concat.nul181, align 1
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.str183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 16)
  %str.build.len.gep184 = getelementptr inbounds { i64, ptr }, ptr %concat.str183, i32 0, i32 0
  store i64 %sum169, ptr %str.build.len.gep184, align 8
  %str.build.data.gep185 = getelementptr inbounds { i64, ptr }, ptr %concat.str183, i32 0, i32 1
  store ptr %concat.buf179, ptr %str.build.data.gep185, align 8
  %concat.lhs186 = getelementptr inbounds { i64, ptr }, ptr %concat.str183, i32 0, i32 0
  %concat.lhs187 = load i64, ptr %concat.lhs186, align 8
  %concat.lhs188 = and i64 %concat.lhs187, 281474976710655
  %str.tag189 = lshr i64 %concat.lhs187, 48
  %str.immortal190 = icmp eq i64 %str.tag189, 0
  br i1 %str.immortal190, label %str_ok192, label %str_gen_check191

str_overflow_abort177:                            ; preds = %concat.sum.len171
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len176

str_gen_check191:                                 ; preds = %concat.tot.len176
  %arena.cur194 = call ptr @dva_arena_current()
  %tag.valid195 = call i1 @dva_arena_validate_tag(ptr %arena.cur194, i64 %str.tag189)
  br i1 %tag.valid195, label %str_ok192, label %str_stale193

str_ok192:                                        ; preds = %str_stale193, %str_gen_check191, %concat.tot.len176
  %concat.lhs196 = getelementptr inbounds { i64, ptr }, ptr %concat.str183, i32 0, i32 1
  %concat.lhs197 = load ptr, ptr %concat.lhs196, align 8
  %concat.rhs198 = load i64, ptr @str.5.struct, align 8
  %concat.rhs199 = and i64 %concat.rhs198, 281474976710655
  %str.tag200 = lshr i64 %concat.rhs198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

str_stale193:                                     ; preds = %str_gen_check191
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok192

str_gen_check202:                                 ; preds = %str_ok192
  %arena.cur205 = call ptr @dva_arena_current()
  %tag.valid206 = call i1 @dva_arena_validate_tag(ptr %arena.cur205, i64 %str.tag200)
  br i1 %tag.valid206, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %str_ok192
  %concat.rhs207 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs188, i64 %concat.rhs199)
  %sum209 = extractvalue { i64, i1 } %concat.sum.len208, 0
  %ovf210 = extractvalue { i64, i1 } %concat.sum.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %concat.sum.len211

str_stale204:                                     ; preds = %str_gen_check202
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

concat.sum.len211:                                ; preds = %str_overflow_abort212, %str_ok203
  %concat.tot.len213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum209, i64 1)
  %sum214 = extractvalue { i64, i1 } %concat.tot.len213, 0
  %ovf215 = extractvalue { i64, i1 } %concat.tot.len213, 1
  br i1 %ovf215, label %str_overflow_abort217, label %concat.tot.len216

str_overflow_abort212:                            ; preds = %str_ok203
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len211

concat.tot.len216:                                ; preds = %str_overflow_abort217, %concat.sum.len211
  %arena.cur218 = call ptr @dva_arena_current()
  %concat.buf219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 %sum214)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf219, ptr align 1 %concat.lhs197, i64 %concat.lhs188, i1 false)
  %concat.mid220 = getelementptr i8, ptr %concat.buf219, i64 %concat.lhs188
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid220, ptr align 1 %concat.rhs207, i64 %concat.rhs199, i1 false)
  %concat.nul221 = getelementptr i8, ptr %concat.buf219, i64 %sum209
  store i8 0, ptr %concat.nul221, align 1
  %arena.cur222 = call ptr @dva_arena_current()
  %concat.str223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 16)
  %str.build.len.gep224 = getelementptr inbounds { i64, ptr }, ptr %concat.str223, i32 0, i32 0
  store i64 %sum209, ptr %str.build.len.gep224, align 8
  %str.build.data.gep225 = getelementptr inbounds { i64, ptr }, ptr %concat.str223, i32 0, i32 1
  store ptr %concat.buf219, ptr %str.build.data.gep225, align 8
  %var.load226 = load ptr, ptr %var.name, align 8
  %concat.lhs227 = getelementptr inbounds { i64, ptr }, ptr %concat.str223, i32 0, i32 0
  %concat.lhs228 = load i64, ptr %concat.lhs227, align 8
  %concat.lhs229 = and i64 %concat.lhs228, 281474976710655
  %str.tag230 = lshr i64 %concat.lhs228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

str_overflow_abort217:                            ; preds = %concat.sum.len211
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len216

str_gen_check232:                                 ; preds = %concat.tot.len216
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %concat.tot.len216
  %concat.lhs237 = getelementptr inbounds { i64, ptr }, ptr %concat.str223, i32 0, i32 1
  %concat.lhs238 = load ptr, ptr %concat.lhs237, align 8
  %concat.rhs239 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %concat.rhs240 = load i64, ptr %concat.rhs239, align 8
  %concat.rhs241 = and i64 %concat.rhs240, 281474976710655
  %str.tag242 = lshr i64 %concat.rhs240, 48
  %str.immortal243 = icmp eq i64 %str.tag242, 0
  br i1 %str.immortal243, label %str_ok245, label %str_gen_check244

str_stale234:                                     ; preds = %str_gen_check232
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

str_gen_check244:                                 ; preds = %str_ok233
  %arena.cur247 = call ptr @dva_arena_current()
  %tag.valid248 = call i1 @dva_arena_validate_tag(ptr %arena.cur247, i64 %str.tag242)
  br i1 %tag.valid248, label %str_ok245, label %str_stale246

str_ok245:                                        ; preds = %str_stale246, %str_gen_check244, %str_ok233
  %concat.rhs249 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 1
  %concat.rhs250 = load ptr, ptr %concat.rhs249, align 8
  %concat.sum.len251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs229, i64 %concat.rhs241)
  %sum252 = extractvalue { i64, i1 } %concat.sum.len251, 0
  %ovf253 = extractvalue { i64, i1 } %concat.sum.len251, 1
  br i1 %ovf253, label %str_overflow_abort255, label %concat.sum.len254

str_stale246:                                     ; preds = %str_gen_check244
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok245

concat.sum.len254:                                ; preds = %str_overflow_abort255, %str_ok245
  %concat.tot.len256 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum252, i64 1)
  %sum257 = extractvalue { i64, i1 } %concat.tot.len256, 0
  %ovf258 = extractvalue { i64, i1 } %concat.tot.len256, 1
  br i1 %ovf258, label %str_overflow_abort260, label %concat.tot.len259

str_overflow_abort255:                            ; preds = %str_ok245
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len254

concat.tot.len259:                                ; preds = %str_overflow_abort260, %concat.sum.len254
  %arena.cur261 = call ptr @dva_arena_current()
  %concat.buf262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %sum257)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf262, ptr align 1 %concat.lhs238, i64 %concat.lhs229, i1 false)
  %concat.mid263 = getelementptr i8, ptr %concat.buf262, i64 %concat.lhs229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid263, ptr align 1 %concat.rhs250, i64 %concat.rhs241, i1 false)
  %concat.nul264 = getelementptr i8, ptr %concat.buf262, i64 %sum252
  store i8 0, ptr %concat.nul264, align 1
  %arena.cur265 = call ptr @dva_arena_current()
  %concat.str266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 16)
  %str.build.len.gep267 = getelementptr inbounds { i64, ptr }, ptr %concat.str266, i32 0, i32 0
  store i64 %sum252, ptr %str.build.len.gep267, align 8
  %str.build.data.gep268 = getelementptr inbounds { i64, ptr }, ptr %concat.str266, i32 0, i32 1
  store ptr %concat.buf262, ptr %str.build.data.gep268, align 8
  %call.res269 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load142, ptr %concat.str266)
  ret ptr %call.res269

str_overflow_abort260:                            ; preds = %concat.sum.len254
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len259

ret.dead270:                                      ; No predecessors!
  br label %choice.exit
}

define { i1, i64 } @"type_env::find_last_dot"(ptr %0, i64 %1) #1 {
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
  %str.tag = lshr i64 %s.read.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load5, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load5, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %var.load5
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp6 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp6, label %choice.then7, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
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

define ptr @"type_env::drop_last_dot"(ptr %0) #1 {
entry:
  %var._13 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.194 = alloca i64, align 8
  %loop.idx.194 = alloca i64, align 8
  %var.b = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  ret ptr @str.0.struct

choice.exit:                                      ; preds = %ret.dead, %choice.then
  %choice.res = phi i64 [ %ram.pay, %choice.then ], [ 0, %ret.dead ]
  store i64 %choice.res, ptr %var.cut, align 8
  %var.load4 = load i64, ptr %var.cut, align 8
  %cmptmp = icmp sle i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  ret ptr @str.0.struct

choice.exit6:                                     ; preds = %ret.dead7, %choice.exit
  %var.load8 = load i64, ptr %var.cut, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead7:                                        ; No predecessors!
  br label %choice.exit6

b.buf.len10:                                      ; preds = %str_overflow_abort, %choice.exit6
  %arena.cur11 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.194, align 8
  br label %loop.header.194

str_overflow_abort:                               ; preds = %choice.exit6
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len10

loop.header.194:                                  ; preds = %loop.latch.194, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.194, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load12
  br i1 %loop.cond, label %loop.body.194, label %loop.exit.nat.194

loop.body.194:                                    ; preds = %loop.header.194
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.194, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._13, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

loop.exit.nat.194:                                ; preds = %loop.header.194
  br label %loop.exit.194

loop.latch.194:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.194, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.194, align 8
  br label %loop.header.194

loop.exit.194:                                    ; preds = %loop.exit.nat.194
  %var.load37 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 0
  %b.freeze.len38 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 1
  %b.freeze.data39 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check19:                                  ; preds = %loop.body.194
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %loop.body.194
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load25, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale21:                                      ; preds = %str_gen_check19
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

idx_big_check:                                    ; preds = %str_ok20
  %idx.big = icmp sge i64 %var.load25, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len26, %b.cap27
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum29 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.new.buf.len31

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len31
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data34 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len35 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data34, i64 %b.cur.len35
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len35, 1
  %b.nul = getelementptr i8, ptr %b.cur.data34, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep36, align 8
  br label %loop.latch.194

b.new.buf.len31:                                  ; preds = %str_overflow_abort32, %b.grow
  %arena.cur33 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data28, i64 %b.len26, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len26
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort32:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len31

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data39, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data39, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data39, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len38, 1
  %arena.cur40 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data39, i64 %b.freeze.len38, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len38
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.194
  %b.freeze.data41 = phi ptr [ %b.freeze.data39, %loop.exit.194 ], [ %b.freeze.data39, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur42 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len38, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data41, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

define i1 @"type_env::init_has_name"(ptr %0, ptr %1) #1 {
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
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.195:                                ; preds = %loop.header.195
  br label %loop.exit.195

loop.latch.195:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.195, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.195, align 8
  br label %loop.header.195

loop.exit.195:                                    ; preds = %loop.exit.nat.195
  ret i1 false

str_gen_check:                                    ; preds = %loop.body.195
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.195
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
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

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #1 {
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
  %arena.cur20 = call ptr @dva_arena_current()
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
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
  %arena.cur36 = call ptr @dva_arena_current()
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

define i1 @"type_env::init_is_tracked"(ptr %0, ptr %1) #1 {
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

define void @"type_env::init_mark_whole"(ptr %0, ptr %1) #1 {
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
  %arena.cur24 = call ptr @dva_arena_current()
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
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
  %arena.cur36 = call ptr @dva_arena_current()
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

define i1 @"type_env::init_is_whole"(ptr %0, ptr %1) #1 {
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

define void @"type_env::init_mark_written"(ptr %0, ptr %1) #1 {
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
  store ptr %a.create29, ptr %var.wr, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %a.store
  %a.load235 = load ptr, ptr %var.wr, align 8
  %arena.cur36 = call ptr @dva_arena_current()
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

define i1 @"type_env::init_is_ok_walk"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load12, i32 0, i32 4
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep13, align 8
  %var.load14 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load14)
  br i1 %call.res, label %choice.then15, label %choice.else16

choice.exit:                                      ; preds = %choice.exit17, %choice.then
  %choice.res22 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit17 ]
  ret i1 %choice.res22

choice.then15:                                    ; preds = %choice.else
  br label %choice.exit17

choice.else16:                                    ; preds = %choice.else
  %var.load18 = load ptr, ptr %var.env, align 8
  %var.load19 = load ptr, ptr %var.p, align 8
  %call.res20 = call ptr @"type_env::drop_last_dot"(ptr %var.load19)
  %call.res21 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load18, ptr %call.res20)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res = phi i1 [ true, %choice.then15 ], [ %call.res21, %choice.else16 ]
  br label %choice.exit
}

define i1 @"type_env::init_has_subpath"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok9
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load21 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query22 = load i64, ptr %str.len.query, align 8
  %str.len.query23 = and i64 %str.len.query22, 281474976710655
  %str.tag24 = lshr i64 %str.len.query22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  store i64 %str.len.query23, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load31 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_stale28:                                      ; preds = %str_gen_check26
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

a.create:                                         ; preds = %str_ok27
  %arena.cur32 = call ptr @dva_arena_current()
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create33, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok27
  %a.load2 = load ptr, ptr %var.written, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len35 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data36 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.header.196:                                  ; preds = %loop.latch.196, %a.after
  %counter.load = load i64, ptr %loop.idx.196, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len35
  br i1 %loop.cond, label %loop.body.196, label %loop.exit.nat.196

loop.body.196:                                    ; preds = %loop.header.196
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.196, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data36, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.w, align 8
  %var.load37 = load ptr, ptr %var.w, align 8
  %str.len.query38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %str.len.query39 = load i64, ptr %str.len.query38, align 8
  %str.len.query40 = and i64 %str.len.query39, 281474976710655
  %str.tag41 = lshr i64 %str.len.query39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

loop.exit.nat.196:                                ; preds = %loop.header.196
  br label %loop.exit.196

loop.latch.196:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.196, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.exit.196:                                    ; preds = %choice.then, %loop.exit.nat.196
  %var.load85 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load85

str_gen_check43:                                  ; preds = %loop.body.196
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %loop.body.196
  %var.load48 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query40, %var.load48
  br i1 %cmptmp, label %and.197.then, label %and.197.else

str_stale45:                                      ; preds = %str_gen_check43
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

and.197.then:                                     ; preds = %str_ok44
  %var.load49 = load ptr, ptr %var.w, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %str.tag52 = lshr i64 %s.read.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

and.197.else:                                     ; preds = %str_ok44
  br label %and.197.exit

and.197.exit:                                     ; preds = %and.197.else, %str.eq.merge
  %and.197.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.197.else ]
  br i1 %and.197.phi, label %choice.then, label %choice.exit

str_gen_check54:                                  ; preds = %and.197.then
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %and.197.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data, align 8
  %var.load60 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len51, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len51
  %final.start = select i1 %start.gt.len, i64 %s.read.len51, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load60, 0
  %rel.end = add i64 %s.read.len51, %var.load60
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load60
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len51
  %final.end = select i1 %end.gt.len, i64 %s.read.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data59, i64 %final.start
  %arena.cur61 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %str.build.len.gep62 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep62, align 8
  %str.build.data.gep63 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep63, align 8
  %var.load64 = load ptr, ptr %var.prefix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len65 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len66 = and i64 %eq.lhs.len65, 281474976710655
  %str.tag67 = lshr i64 %eq.lhs.len65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale56:                                      ; preds = %str_gen_check54
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check69:                                  ; preds = %str_ok55
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok55
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %eq.rhs.len74 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len74, 281474976710655
  %str.tag76 = lshr i64 %eq.rhs.len74, 48
  %str.immortal77 = icmp eq i64 %str.tag76, 0
  br i1 %str.immortal77, label %str_ok79, label %str_gen_check78

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

str_gen_check78:                                  ; preds = %str_ok70
  %arena.cur81 = call ptr @dva_arena_current()
  %tag.valid82 = call i1 @dva_arena_validate_tag(ptr %arena.cur81, i64 %str.tag76)
  br i1 %tag.valid82, label %str_ok79, label %str_stale80

str_ok79:                                         ; preds = %str_stale80, %str_gen_check78, %str_ok70
  %eq.len = icmp eq i64 %eq.lhs.len66, %eq.rhs.len75
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale80:                                      ; preds = %str_gen_check78
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok79

str.eq.then:                                      ; preds = %str_ok79
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data83 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %eq.rhs.data84 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data83, ptr %eq.rhs.data84, i64 %eq.lhs.len66)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok79
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

define i1 @"type_env::init_is_ok"(ptr %0, ptr %1) #1 {
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

define ptr @"type_env::init_snapshot"(ptr %0) #1 {
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
  %arena.cur17 = call ptr @dva_arena_current()
  %a.new18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
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
  %arena.cur6 = call ptr @dva_arena_current()
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = call ptr @dva_arena_current()
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
  %arena.cur71 = call ptr @dva_arena_current()
  %a.new72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
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
  %arena.cur45 = call ptr @dva_arena_current()
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = call ptr @dva_arena_current()
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
  %arena.cur99 = call ptr @dva_arena_current()
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = call ptr @dva_arena_current()
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
  %arena.cur130 = call ptr @dva_arena_current()
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = call ptr @dva_arena_current()
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
  store ptr %a.create144, ptr %var.wh, align 8
  br label %a.after142

a.after142:                                       ; preds = %a.create141, %a.after129
  %a.load2150 = load ptr, ptr %var.wh, align 8
  %var.load151 = load ptr, ptr %var.wr, align 8
  %a.load152 = load ptr, ptr %var.wr, align 8
  %a.null153 = icmp eq ptr %a.load152, null
  br i1 %a.null153, label %a.create154, label %a.after155

a.create154:                                      ; preds = %a.after142
  %arena.cur156 = call ptr @dva_arena_current()
  %a.create157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 24)
  %arena.cur158 = call ptr @dva_arena_current()
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
  %arena.cur164 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2137, ptr %rec.fld, align 8
  %rec.fld165 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2150, ptr %rec.fld165, align 8
  %rec.fld166 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2163, ptr %rec.fld166, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::init_snapshot_of"(ptr %0) #1 {
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
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur69 = call ptr @dva_arena_current()
  %a.new70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 24)
  %arena.cur71 = call ptr @dva_arena_current()
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
  store ptr %a.create128, ptr %var.tr, align 8
  br label %a.after126

a.after126:                                       ; preds = %a.create125, %loop.exit.205
  %a.load2134 = load ptr, ptr %var.tr, align 8
  %var.load135 = load ptr, ptr %var.wh, align 8
  %a.load136 = load ptr, ptr %var.wh, align 8
  %a.null137 = icmp eq ptr %a.load136, null
  br i1 %a.null137, label %a.create138, label %a.after139

a.create138:                                      ; preds = %a.after126
  %arena.cur140 = call ptr @dva_arena_current()
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = call ptr @dva_arena_current()
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
  %arena.cur153 = call ptr @dva_arena_current()
  %a.create154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %arena.cur155 = call ptr @dva_arena_current()
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
  %arena.cur161 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2134, ptr %rec.fld, align 8
  %rec.fld162 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2147, ptr %rec.fld162, align 8
  %rec.fld163 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2160, ptr %rec.fld163, align 8
  ret ptr %rec.alloc
}

define void @"type_env::init_restore"(ptr %0, ptr %1) #1 {
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

define ptr @"type_env::init_merge_two"(ptr %0, ptr %1) #1 {
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
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur76 = call ptr @dva_arena_current()
  %a.new77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
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
  %arena.cur36 = call ptr @dva_arena_current()
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = call ptr @dva_arena_current()
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
  %arena.cur136 = call ptr @dva_arena_current()
  %a.new137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = call ptr @dva_arena_current()
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
  %arena.cur110 = call ptr @dva_arena_current()
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = call ptr @dva_arena_current()
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
  %arena.cur170 = call ptr @dva_arena_current()
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = call ptr @dva_arena_current()
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
  store ptr %a.create202, ptr %var.tr, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %loop.exit.209
  %a.load2208 = load ptr, ptr %var.tr, align 8
  %var.load209 = load ptr, ptr %var.wh, align 8
  %a.load210 = load ptr, ptr %var.wh, align 8
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
  store ptr %a.create215, ptr %var.wh, align 8
  br label %a.after213

a.after213:                                       ; preds = %a.create212, %a.after200
  %a.load2221 = load ptr, ptr %var.wh, align 8
  %var.load222 = load ptr, ptr %var.wr, align 8
  %a.load223 = load ptr, ptr %var.wr, align 8
  %a.null224 = icmp eq ptr %a.load223, null
  br i1 %a.null224, label %a.create225, label %a.after226

a.create225:                                      ; preds = %a.after213
  %arena.cur227 = call ptr @dva_arena_current()
  %a.create228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 24)
  %arena.cur229 = call ptr @dva_arena_current()
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
  %arena.cur235 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2208, ptr %rec.fld, align 8
  %rec.fld236 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2221, ptr %rec.fld236, align 8
  %rec.fld237 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2234, ptr %rec.fld237, align 8
  ret ptr %rec.alloc
}

define i1 @"type_env::init_is_fully_init"(ptr %0, ptr %1, ptr %2) #1 {
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
  %choice.res123 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit7 ]
  ret i1 %choice.res123

choice.exit7:                                     ; preds = %or.212.exit, %loop.exit.211
  %choice.res = phi i1 [ %var.load113, %loop.exit.211 ], [ %or.212.phi, %or.212.exit ]
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
  %var.load114 = load ptr, ptr %var.env, align 8
  %var.load115 = load ptr, ptr %var.name, align 8
  %call.res116 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load114, ptr %var.load115)
  br i1 %call.res116, label %or.212.then, label %or.212.else

a.create:                                         ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur10 = call ptr @dva_arena_current()
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
  %str.tag = lshr i64 %eq.lhs.len17, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.211:                                ; preds = %loop.header.211
  br label %loop.exit.211

loop.latch.211:                                   ; preds = %choice.exit30
  %step.val = load i64, ptr %loop.step.211, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.211, align 8
  br label %loop.header.211

loop.exit.211:                                    ; preds = %choice.then111, %loop.exit.nat.211
  store ptr %cycle.prev.u, ptr %var._, align 8
  %var.load113 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

str_gen_check:                                    ; preds = %loop.body.211
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.211
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len20 = and i64 %eq.rhs.len, 281474976710655
  %str.tag21 = lshr i64 %eq.rhs.len, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check23:                                  ; preds = %str_ok
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str.eq.then:                                      ; preds = %str_ok24
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %eq.lhs.data28 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data28, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok24
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then29, label %choice.exit30

choice.then29:                                    ; preds = %str.eq.merge
  %var.load31 = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %concat.lhs32 = load i64, ptr %concat.lhs, align 8
  %concat.lhs33 = and i64 %concat.lhs32, 281474976710655
  %str.tag34 = lshr i64 %concat.lhs32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

choice.exit30:                                    ; preds = %choice.exit112, %str.eq.merge
  br label %loop.latch.211

str_gen_check36:                                  ; preds = %choice.then29
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %choice.then29
  %concat.lhs41 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %concat.lhs42 = load ptr, ptr %concat.lhs41, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs43 = and i64 %concat.rhs, 281474976710655
  %str.tag44 = lshr i64 %concat.rhs, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

str_gen_check46:                                  ; preds = %str_ok37
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok37
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs33, i64 %concat.rhs43)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len52

str_stale48:                                      ; preds = %str_gen_check46
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

concat.sum.len52:                                 ; preds = %str_overflow_abort, %str_ok47
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum53 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf54 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.tot.len55

str_overflow_abort:                               ; preds = %str_ok47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len52

concat.tot.len55:                                 ; preds = %str_overflow_abort56, %concat.sum.len52
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs42, i64 %concat.lhs33, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs51, i64 %concat.rhs43, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load59 = load ptr, ptr %var.f, align 8
  %fld.gep60 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort56:                             ; preds = %concat.sum.len52
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len55

str_gen_check67:                                  ; preds = %concat.tot.len55
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len55
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  store ptr %concat.str101, ptr %var.path, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load104, i32 0, i32 4
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep105, i32 0, i32 2
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.path, align 8
  %call.res109 = call i1 @"type_env::init_has_name"(ptr %fld.load107, ptr %var.load108)
  %nottmp110 = xor i1 %call.res109, true
  br i1 %nottmp110, label %choice.then111, label %choice.exit112

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

choice.then111:                                   ; preds = %concat.tot.len94
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.211

choice.exit112:                                   ; preds = %concat.tot.len94
  br label %choice.exit30

or.212.then:                                      ; preds = %choice.next
  br label %or.212.exit

or.212.else:                                      ; preds = %choice.next
  %var.load117 = load ptr, ptr %var.env, align 8
  %fld.gep118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load117, i32 0, i32 4
  %fld.gep119 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep118, i32 0, i32 2
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %var.load121 = load ptr, ptr %var.name, align 8
  %call.res122 = call i1 @"type_env::init_has_name"(ptr %fld.load120, ptr %var.load121)
  br label %or.212.exit

or.212.exit:                                      ; preds = %or.212.else, %or.212.then
  %or.212.phi = phi i1 [ %call.res116, %or.212.then ], [ %call.res122, %or.212.else ]
  br label %choice.exit7
}

define void @"type_env::bind_generic"(ptr %0, ptr %1, ptr %2) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.gens, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
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
  %arena.cur17 = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
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

define { i1, i64 } @"type_env::lookup_generic_exact"(ptr %0, ptr %1) #1 {
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
  %var.load74 = load { i1, i64 }, ptr %"var.res'", align 8
  ret { i1, i64 } %var.load74

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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur15 = call ptr @dva_arena_current()
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
  %var.load46 = load ptr, ptr %var.g, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr }, ptr %var.load46, i32 0, i32 0
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

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
  %str.tag = lshr i64 %err.msg.len31, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.215
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.215
  %err.msg.len3234 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %str.tag38 = lshr i64 %err.file.len36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check40:                                  ; preds = %str_ok
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale42:                                      ; preds = %str_gen_check40
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

err.thread:                                       ; preds = %str_ok41
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok41
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check54:                                  ; preds = %unwrap.pos.215
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %unwrap.pos.215
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %eq.rhs.len59 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len59, 281474976710655
  %str.tag61 = lshr i64 %eq.rhs.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check63:                                  ; preds = %str_ok55
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok55
  %eq.len = icmp eq i64 %eq.lhs.len51, %eq.rhs.len60
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale65:                                      ; preds = %str_gen_check63
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %eq.rhs.data69 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data68, ptr %eq.rhs.data69, i64 %eq.lhs.len51)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load70 = load ptr, ptr %var.g, align 8
  %fld.gep71 = getelementptr inbounds { ptr, ptr }, ptr %var.load70, i32 0, i32 1
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %p.to.i64 = ptrtoint ptr %fld.load72 to i64
  %ram.pay73 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  store { i1, i64 } %ram.pay73, ptr %"var.res'", align 8
  br label %loop.exit.214

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.214
}

define { i1, i64 } @"type_env::lookup_generic"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.216.then, label %and.216.else

and.216.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.216.exit

and.216.else:                                     ; preds = %str.eq.merge
  br label %and.216.exit

and.216.exit:                                     ; preds = %and.216.else, %and.216.then
  %and.216.phi = phi i1 [ %nottmp, %and.216.then ], [ %str.neq, %and.216.else ]
  br i1 %and.216.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.216.exit
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 8
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs17 = and i64 %concat.lhs, 281474976710655
  %str.tag18 = lshr i64 %concat.lhs, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

choice.exit:                                      ; preds = %ret.dead261, %and.216.exit
  %var.load262 = load ptr, ptr %var.env, align 8
  %var.load263 = load ptr, ptr %var.name, align 8
  %call.res264 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load262, ptr %var.load263)
  ret { i1, i64 } %call.res264

str_gen_check20:                                  ; preds = %choice.then
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %choice.then
  %concat.lhs25 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %concat.rhs26 = load i64, ptr %concat.rhs, align 8
  %concat.rhs27 = and i64 %concat.rhs26, 281474976710655
  %str.tag28 = lshr i64 %concat.rhs26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

str_stale22:                                      ; preds = %str_gen_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check30:                                  ; preds = %str_ok21
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %str_ok21
  %concat.rhs35 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %concat.rhs36 = load ptr, ptr %concat.rhs35, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs17, i64 %concat.rhs27)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len37

str_stale32:                                      ; preds = %str_gen_check30
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

concat.sum.len37:                                 ; preds = %str_overflow_abort, %str_ok31
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort:                               ; preds = %str_ok31
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len37

concat.tot.len40:                                 ; preds = %str_overflow_abort41, %concat.sum.len37
  %arena.cur42 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs17, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs36, i64 %concat.rhs27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur43 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs44 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs45 = load i64, ptr %concat.lhs44, align 8
  %concat.lhs46 = and i64 %concat.lhs45, 281474976710655
  %str.tag47 = lshr i64 %concat.lhs45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_overflow_abort41:                             ; preds = %concat.sum.len37
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len40

str_gen_check49:                                  ; preds = %concat.tot.len40
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %concat.tot.len40
  %concat.lhs54 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs55 = load ptr, ptr %concat.lhs54, align 8
  %concat.rhs56 = load i64, ptr @str.4.struct, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

str_stale51:                                      ; preds = %str_gen_check49
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

str_gen_check60:                                  ; preds = %str_ok50
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %str_ok50
  %concat.rhs65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs46, i64 %concat.rhs57)
  %sum67 = extractvalue { i64, i1 } %concat.sum.len66, 0
  %ovf68 = extractvalue { i64, i1 } %concat.sum.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %concat.sum.len69

str_stale62:                                      ; preds = %str_gen_check60
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

concat.sum.len69:                                 ; preds = %str_overflow_abort70, %str_ok61
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum67, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort70:                             ; preds = %str_ok61
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len69

concat.tot.len74:                                 ; preds = %str_overflow_abort75, %concat.sum.len69
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf77, ptr align 1 %concat.lhs55, i64 %concat.lhs46, i1 false)
  %concat.mid78 = getelementptr i8, ptr %concat.buf77, i64 %concat.lhs46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid78, ptr align 1 %concat.rhs65, i64 %concat.rhs57, i1 false)
  %concat.nul79 = getelementptr i8, ptr %concat.buf77, i64 %sum67
  store i8 0, ptr %concat.nul79, align 1
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.str81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  store i64 %sum67, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  store ptr %concat.buf77, ptr %str.build.data.gep83, align 8
  %var.load84 = load ptr, ptr %var.name, align 8
  %concat.lhs85 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  %concat.lhs86 = load i64, ptr %concat.lhs85, align 8
  %concat.lhs87 = and i64 %concat.lhs86, 281474976710655
  %str.tag88 = lshr i64 %concat.lhs86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

str_overflow_abort75:                             ; preds = %concat.sum.len69
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len74

str_gen_check90:                                  ; preds = %concat.tot.len74
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %concat.tot.len74
  %concat.lhs95 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  %concat.lhs96 = load ptr, ptr %concat.lhs95, align 8
  %concat.rhs97 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %concat.rhs98 = load i64, ptr %concat.rhs97, align 8
  %concat.rhs99 = and i64 %concat.rhs98, 281474976710655
  %str.tag100 = lshr i64 %concat.rhs98, 48
  %str.immortal101 = icmp eq i64 %str.tag100, 0
  br i1 %str.immortal101, label %str_ok103, label %str_gen_check102

str_stale92:                                      ; preds = %str_gen_check90
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

str_gen_check102:                                 ; preds = %str_ok91
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag100)
  br i1 %tag.valid106, label %str_ok103, label %str_stale104

str_ok103:                                        ; preds = %str_stale104, %str_gen_check102, %str_ok91
  %concat.rhs107 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %concat.rhs108 = load ptr, ptr %concat.rhs107, align 8
  %concat.sum.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs87, i64 %concat.rhs99)
  %sum110 = extractvalue { i64, i1 } %concat.sum.len109, 0
  %ovf111 = extractvalue { i64, i1 } %concat.sum.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %concat.sum.len112

str_stale104:                                     ; preds = %str_gen_check102
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok103

concat.sum.len112:                                ; preds = %str_overflow_abort113, %str_ok103
  %concat.tot.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum110, i64 1)
  %sum115 = extractvalue { i64, i1 } %concat.tot.len114, 0
  %ovf116 = extractvalue { i64, i1 } %concat.tot.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %concat.tot.len117

str_overflow_abort113:                            ; preds = %str_ok103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len112

concat.tot.len117:                                ; preds = %str_overflow_abort118, %concat.sum.len112
  %arena.cur119 = call ptr @dva_arena_current()
  %concat.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf120, ptr align 1 %concat.lhs96, i64 %concat.lhs87, i1 false)
  %concat.mid121 = getelementptr i8, ptr %concat.buf120, i64 %concat.lhs87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid121, ptr align 1 %concat.rhs108, i64 %concat.rhs99, i1 false)
  %concat.nul122 = getelementptr i8, ptr %concat.buf120, i64 %sum110
  store i8 0, ptr %concat.nul122, align 1
  %arena.cur123 = call ptr @dva_arena_current()
  %concat.str124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 16)
  %str.build.len.gep125 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 0
  store i64 %sum110, ptr %str.build.len.gep125, align 8
  %str.build.data.gep126 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 1
  store ptr %concat.buf120, ptr %str.build.data.gep126, align 8
  %call.res127 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load13, ptr %concat.str124)
  store { i1, i64 } %call.res127, ptr %var.pub, align 8
  %var.load128 = load { i1, i64 }, ptr %var.pub, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load128, 0
  br i1 %ram.tag, label %choice.then129, label %choice.exit130

str_overflow_abort118:                            ; preds = %concat.sum.len112
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len117

choice.then129:                                   ; preds = %concat.tot.len117
  %ram.pay = extractvalue { i1, i64 } %var.load128, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.p, align 8
  %var.load131 = load ptr, ptr %var.p, align 8
  %p.to.i64 = ptrtoint ptr %var.load131 to i64
  %ram.pay132 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay132

choice.exit130:                                   ; preds = %ret.dead, %concat.tot.len117
  %var.load133 = load ptr, ptr %var.env, align 8
  %var.load134 = load ptr, ptr %var.env, align 8
  %fld.gep135 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load134, i32 0, i32 8
  %fld.load136 = load ptr, ptr %fld.gep135, align 8
  %concat.lhs137 = load i64, ptr @str.0.struct, align 8
  %concat.lhs138 = and i64 %concat.lhs137, 281474976710655
  %str.tag139 = lshr i64 %concat.lhs137, 48
  %str.immortal140 = icmp eq i64 %str.tag139, 0
  br i1 %str.immortal140, label %str_ok142, label %str_gen_check141

ret.dead:                                         ; No predecessors!
  br label %choice.exit130

str_gen_check141:                                 ; preds = %choice.exit130
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid145 = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag139)
  br i1 %tag.valid145, label %str_ok142, label %str_stale143

str_ok142:                                        ; preds = %str_stale143, %str_gen_check141, %choice.exit130
  %concat.lhs146 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs147 = getelementptr inbounds { i64, ptr }, ptr %fld.load136, i32 0, i32 0
  %concat.rhs148 = load i64, ptr %concat.rhs147, align 8
  %concat.rhs149 = and i64 %concat.rhs148, 281474976710655
  %str.tag150 = lshr i64 %concat.rhs148, 48
  %str.immortal151 = icmp eq i64 %str.tag150, 0
  br i1 %str.immortal151, label %str_ok153, label %str_gen_check152

str_stale143:                                     ; preds = %str_gen_check141
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok142

str_gen_check152:                                 ; preds = %str_ok142
  %arena.cur155 = call ptr @dva_arena_current()
  %tag.valid156 = call i1 @dva_arena_validate_tag(ptr %arena.cur155, i64 %str.tag150)
  br i1 %tag.valid156, label %str_ok153, label %str_stale154

str_ok153:                                        ; preds = %str_stale154, %str_gen_check152, %str_ok142
  %concat.rhs157 = getelementptr inbounds { i64, ptr }, ptr %fld.load136, i32 0, i32 1
  %concat.rhs158 = load ptr, ptr %concat.rhs157, align 8
  %concat.sum.len159 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs138, i64 %concat.rhs149)
  %sum160 = extractvalue { i64, i1 } %concat.sum.len159, 0
  %ovf161 = extractvalue { i64, i1 } %concat.sum.len159, 1
  br i1 %ovf161, label %str_overflow_abort163, label %concat.sum.len162

str_stale154:                                     ; preds = %str_gen_check152
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok153

concat.sum.len162:                                ; preds = %str_overflow_abort163, %str_ok153
  %concat.tot.len164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum160, i64 1)
  %sum165 = extractvalue { i64, i1 } %concat.tot.len164, 0
  %ovf166 = extractvalue { i64, i1 } %concat.tot.len164, 1
  br i1 %ovf166, label %str_overflow_abort168, label %concat.tot.len167

str_overflow_abort163:                            ; preds = %str_ok153
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len162

concat.tot.len167:                                ; preds = %str_overflow_abort168, %concat.sum.len162
  %arena.cur169 = call ptr @dva_arena_current()
  %concat.buf170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 %sum165)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf170, ptr align 1 %concat.lhs146, i64 %concat.lhs138, i1 false)
  %concat.mid171 = getelementptr i8, ptr %concat.buf170, i64 %concat.lhs138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid171, ptr align 1 %concat.rhs158, i64 %concat.rhs149, i1 false)
  %concat.nul172 = getelementptr i8, ptr %concat.buf170, i64 %sum160
  store i8 0, ptr %concat.nul172, align 1
  %arena.cur173 = call ptr @dva_arena_current()
  %concat.str174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 16)
  %str.build.len.gep175 = getelementptr inbounds { i64, ptr }, ptr %concat.str174, i32 0, i32 0
  store i64 %sum160, ptr %str.build.len.gep175, align 8
  %str.build.data.gep176 = getelementptr inbounds { i64, ptr }, ptr %concat.str174, i32 0, i32 1
  store ptr %concat.buf170, ptr %str.build.data.gep176, align 8
  %concat.lhs177 = getelementptr inbounds { i64, ptr }, ptr %concat.str174, i32 0, i32 0
  %concat.lhs178 = load i64, ptr %concat.lhs177, align 8
  %concat.lhs179 = and i64 %concat.lhs178, 281474976710655
  %str.tag180 = lshr i64 %concat.lhs178, 48
  %str.immortal181 = icmp eq i64 %str.tag180, 0
  br i1 %str.immortal181, label %str_ok183, label %str_gen_check182

str_overflow_abort168:                            ; preds = %concat.sum.len162
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len167

str_gen_check182:                                 ; preds = %concat.tot.len167
  %arena.cur185 = call ptr @dva_arena_current()
  %tag.valid186 = call i1 @dva_arena_validate_tag(ptr %arena.cur185, i64 %str.tag180)
  br i1 %tag.valid186, label %str_ok183, label %str_stale184

str_ok183:                                        ; preds = %str_stale184, %str_gen_check182, %concat.tot.len167
  %concat.lhs187 = getelementptr inbounds { i64, ptr }, ptr %concat.str174, i32 0, i32 1
  %concat.lhs188 = load ptr, ptr %concat.lhs187, align 8
  %concat.rhs189 = load i64, ptr @str.5.struct, align 8
  %concat.rhs190 = and i64 %concat.rhs189, 281474976710655
  %str.tag191 = lshr i64 %concat.rhs189, 48
  %str.immortal192 = icmp eq i64 %str.tag191, 0
  br i1 %str.immortal192, label %str_ok194, label %str_gen_check193

str_stale184:                                     ; preds = %str_gen_check182
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok183

str_gen_check193:                                 ; preds = %str_ok183
  %arena.cur196 = call ptr @dva_arena_current()
  %tag.valid197 = call i1 @dva_arena_validate_tag(ptr %arena.cur196, i64 %str.tag191)
  br i1 %tag.valid197, label %str_ok194, label %str_stale195

str_ok194:                                        ; preds = %str_stale195, %str_gen_check193, %str_ok183
  %concat.rhs198 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len199 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs179, i64 %concat.rhs190)
  %sum200 = extractvalue { i64, i1 } %concat.sum.len199, 0
  %ovf201 = extractvalue { i64, i1 } %concat.sum.len199, 1
  br i1 %ovf201, label %str_overflow_abort203, label %concat.sum.len202

str_stale195:                                     ; preds = %str_gen_check193
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok194

concat.sum.len202:                                ; preds = %str_overflow_abort203, %str_ok194
  %concat.tot.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum200, i64 1)
  %sum205 = extractvalue { i64, i1 } %concat.tot.len204, 0
  %ovf206 = extractvalue { i64, i1 } %concat.tot.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %concat.tot.len207

str_overflow_abort203:                            ; preds = %str_ok194
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len202

concat.tot.len207:                                ; preds = %str_overflow_abort208, %concat.sum.len202
  %arena.cur209 = call ptr @dva_arena_current()
  %concat.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf210, ptr align 1 %concat.lhs188, i64 %concat.lhs179, i1 false)
  %concat.mid211 = getelementptr i8, ptr %concat.buf210, i64 %concat.lhs179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid211, ptr align 1 %concat.rhs198, i64 %concat.rhs190, i1 false)
  %concat.nul212 = getelementptr i8, ptr %concat.buf210, i64 %sum200
  store i8 0, ptr %concat.nul212, align 1
  %arena.cur213 = call ptr @dva_arena_current()
  %concat.str214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 16)
  %str.build.len.gep215 = getelementptr inbounds { i64, ptr }, ptr %concat.str214, i32 0, i32 0
  store i64 %sum200, ptr %str.build.len.gep215, align 8
  %str.build.data.gep216 = getelementptr inbounds { i64, ptr }, ptr %concat.str214, i32 0, i32 1
  store ptr %concat.buf210, ptr %str.build.data.gep216, align 8
  %var.load217 = load ptr, ptr %var.name, align 8
  %concat.lhs218 = getelementptr inbounds { i64, ptr }, ptr %concat.str214, i32 0, i32 0
  %concat.lhs219 = load i64, ptr %concat.lhs218, align 8
  %concat.lhs220 = and i64 %concat.lhs219, 281474976710655
  %str.tag221 = lshr i64 %concat.lhs219, 48
  %str.immortal222 = icmp eq i64 %str.tag221, 0
  br i1 %str.immortal222, label %str_ok224, label %str_gen_check223

str_overflow_abort208:                            ; preds = %concat.sum.len202
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len207

str_gen_check223:                                 ; preds = %concat.tot.len207
  %arena.cur226 = call ptr @dva_arena_current()
  %tag.valid227 = call i1 @dva_arena_validate_tag(ptr %arena.cur226, i64 %str.tag221)
  br i1 %tag.valid227, label %str_ok224, label %str_stale225

str_ok224:                                        ; preds = %str_stale225, %str_gen_check223, %concat.tot.len207
  %concat.lhs228 = getelementptr inbounds { i64, ptr }, ptr %concat.str214, i32 0, i32 1
  %concat.lhs229 = load ptr, ptr %concat.lhs228, align 8
  %concat.rhs230 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 0
  %concat.rhs231 = load i64, ptr %concat.rhs230, align 8
  %concat.rhs232 = and i64 %concat.rhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale225:                                     ; preds = %str_gen_check223
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok224

str_gen_check235:                                 ; preds = %str_ok224
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok224
  %concat.rhs240 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 1
  %concat.rhs241 = load ptr, ptr %concat.rhs240, align 8
  %concat.sum.len242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs220, i64 %concat.rhs232)
  %sum243 = extractvalue { i64, i1 } %concat.sum.len242, 0
  %ovf244 = extractvalue { i64, i1 } %concat.sum.len242, 1
  br i1 %ovf244, label %str_overflow_abort246, label %concat.sum.len245

str_stale237:                                     ; preds = %str_gen_check235
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len245:                                ; preds = %str_overflow_abort246, %str_ok236
  %concat.tot.len247 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum243, i64 1)
  %sum248 = extractvalue { i64, i1 } %concat.tot.len247, 0
  %ovf249 = extractvalue { i64, i1 } %concat.tot.len247, 1
  br i1 %ovf249, label %str_overflow_abort251, label %concat.tot.len250

str_overflow_abort246:                            ; preds = %str_ok236
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len245

concat.tot.len250:                                ; preds = %str_overflow_abort251, %concat.sum.len245
  %arena.cur252 = call ptr @dva_arena_current()
  %concat.buf253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 %sum248)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf253, ptr align 1 %concat.lhs229, i64 %concat.lhs220, i1 false)
  %concat.mid254 = getelementptr i8, ptr %concat.buf253, i64 %concat.lhs220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid254, ptr align 1 %concat.rhs241, i64 %concat.rhs232, i1 false)
  %concat.nul255 = getelementptr i8, ptr %concat.buf253, i64 %sum243
  store i8 0, ptr %concat.nul255, align 1
  %arena.cur256 = call ptr @dva_arena_current()
  %concat.str257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 16)
  %str.build.len.gep258 = getelementptr inbounds { i64, ptr }, ptr %concat.str257, i32 0, i32 0
  store i64 %sum243, ptr %str.build.len.gep258, align 8
  %str.build.data.gep259 = getelementptr inbounds { i64, ptr }, ptr %concat.str257, i32 0, i32 1
  store ptr %concat.buf253, ptr %str.build.data.gep259, align 8
  %call.res260 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load133, ptr %concat.str257)
  ret { i1, i64 } %call.res260

str_overflow_abort251:                            ; preds = %concat.sum.len245
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len250

ret.dead261:                                      ; No predecessors!
  br label %choice.exit
}

define ptr @"type_env::resolve_generic_name"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.217.then, label %and.217.else

and.217.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.217.exit

and.217.else:                                     ; preds = %str.eq.merge
  br label %and.217.exit

and.217.exit:                                     ; preds = %and.217.else, %and.217.then
  %and.217.phi = phi i1 [ %nottmp, %and.217.then ], [ %str.neq, %and.217.else ]
  br i1 %and.217.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.217.exit
  %var.load13 = load ptr, ptr %var.env, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load13, i32 0, i32 8
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs16 = and i64 %concat.lhs, 281474976710655
  %str.tag17 = lshr i64 %concat.lhs, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

choice.else:                                      ; preds = %and.217.exit
  %var.load267 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit263
  %choice.res = phi ptr [ %var.load266, %choice.exit263 ], [ %var.load267, %choice.else ]
  ret ptr %choice.res

str_gen_check19:                                  ; preds = %choice.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %choice.then
  %concat.lhs24 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %concat.rhs25 = load i64, ptr %concat.rhs, align 8
  %concat.rhs26 = and i64 %concat.rhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.rhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale21:                                      ; preds = %str_gen_check19
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

str_gen_check29:                                  ; preds = %str_ok20
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok20
  %concat.rhs34 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %concat.rhs35 = load ptr, ptr %concat.rhs34, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 %concat.rhs26)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len36

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

concat.sum.len36:                                 ; preds = %str_overflow_abort, %str_ok30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum37 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf38 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %concat.tot.len39

str_overflow_abort:                               ; preds = %str_ok30
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len36

concat.tot.len39:                                 ; preds = %str_overflow_abort40, %concat.sum.len36
  %arena.cur41 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs24, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs35, i64 %concat.rhs26, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur42 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs43 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs44 = load i64, ptr %concat.lhs43, align 8
  %concat.lhs45 = and i64 %concat.lhs44, 281474976710655
  %str.tag46 = lshr i64 %concat.lhs44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_overflow_abort40:                             ; preds = %concat.sum.len36
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len39

str_gen_check48:                                  ; preds = %concat.tot.len39
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %concat.tot.len39
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs54 = load ptr, ptr %concat.lhs53, align 8
  %concat.rhs55 = load i64, ptr @str.4.struct, align 8
  %concat.rhs56 = and i64 %concat.rhs55, 281474976710655
  %str.tag57 = lshr i64 %concat.rhs55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_stale50:                                      ; preds = %str_gen_check48
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check59:                                  ; preds = %str_ok49
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %str_ok49
  %concat.rhs64 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs45, i64 %concat.rhs56)
  %sum66 = extractvalue { i64, i1 } %concat.sum.len65, 0
  %ovf67 = extractvalue { i64, i1 } %concat.sum.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.sum.len68

str_stale61:                                      ; preds = %str_gen_check59
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

concat.sum.len68:                                 ; preds = %str_overflow_abort69, %str_ok60
  %concat.tot.len70 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 1)
  %sum71 = extractvalue { i64, i1 } %concat.tot.len70, 0
  %ovf72 = extractvalue { i64, i1 } %concat.tot.len70, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.tot.len73

str_overflow_abort69:                             ; preds = %str_ok60
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len68

concat.tot.len73:                                 ; preds = %str_overflow_abort74, %concat.sum.len68
  %arena.cur75 = call ptr @dva_arena_current()
  %concat.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum71)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf76, ptr align 1 %concat.lhs54, i64 %concat.lhs45, i1 false)
  %concat.mid77 = getelementptr i8, ptr %concat.buf76, i64 %concat.lhs45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid77, ptr align 1 %concat.rhs64, i64 %concat.rhs56, i1 false)
  %concat.nul78 = getelementptr i8, ptr %concat.buf76, i64 %sum66
  store i8 0, ptr %concat.nul78, align 1
  %arena.cur79 = call ptr @dva_arena_current()
  %concat.str80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 16)
  %str.build.len.gep81 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 0
  store i64 %sum66, ptr %str.build.len.gep81, align 8
  %str.build.data.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 1
  store ptr %concat.buf76, ptr %str.build.data.gep82, align 8
  %var.load83 = load ptr, ptr %var.name, align 8
  %concat.lhs84 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 0
  %concat.lhs85 = load i64, ptr %concat.lhs84, align 8
  %concat.lhs86 = and i64 %concat.lhs85, 281474976710655
  %str.tag87 = lshr i64 %concat.lhs85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

str_overflow_abort74:                             ; preds = %concat.sum.len68
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len73

str_gen_check89:                                  ; preds = %concat.tot.len73
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %concat.tot.len73
  %concat.lhs94 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 1
  %concat.lhs95 = load ptr, ptr %concat.lhs94, align 8
  %concat.rhs96 = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 0
  %concat.rhs97 = load i64, ptr %concat.rhs96, align 8
  %concat.rhs98 = and i64 %concat.rhs97, 281474976710655
  %str.tag99 = lshr i64 %concat.rhs97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

str_stale91:                                      ; preds = %str_gen_check89
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

str_gen_check101:                                 ; preds = %str_ok90
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %str_ok90
  %concat.rhs106 = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 1
  %concat.rhs107 = load ptr, ptr %concat.rhs106, align 8
  %concat.sum.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs86, i64 %concat.rhs98)
  %sum109 = extractvalue { i64, i1 } %concat.sum.len108, 0
  %ovf110 = extractvalue { i64, i1 } %concat.sum.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %concat.sum.len111

str_stale103:                                     ; preds = %str_gen_check101
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

concat.sum.len111:                                ; preds = %str_overflow_abort112, %str_ok102
  %concat.tot.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum109, i64 1)
  %sum114 = extractvalue { i64, i1 } %concat.tot.len113, 0
  %ovf115 = extractvalue { i64, i1 } %concat.tot.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %concat.tot.len116

str_overflow_abort112:                            ; preds = %str_ok102
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len111

concat.tot.len116:                                ; preds = %str_overflow_abort117, %concat.sum.len111
  %arena.cur118 = call ptr @dva_arena_current()
  %concat.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum114)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf119, ptr align 1 %concat.lhs95, i64 %concat.lhs86, i1 false)
  %concat.mid120 = getelementptr i8, ptr %concat.buf119, i64 %concat.lhs86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid120, ptr align 1 %concat.rhs107, i64 %concat.rhs98, i1 false)
  %concat.nul121 = getelementptr i8, ptr %concat.buf119, i64 %sum109
  store i8 0, ptr %concat.nul121, align 1
  %arena.cur122 = call ptr @dva_arena_current()
  %concat.str123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 16)
  %str.build.len.gep124 = getelementptr inbounds { i64, ptr }, ptr %concat.str123, i32 0, i32 0
  store i64 %sum109, ptr %str.build.len.gep124, align 8
  %str.build.data.gep125 = getelementptr inbounds { i64, ptr }, ptr %concat.str123, i32 0, i32 1
  store ptr %concat.buf119, ptr %str.build.data.gep125, align 8
  store ptr %concat.str123, ptr %var.pub_name, align 8
  %var.load126 = load ptr, ptr %var.env, align 8
  %var.load127 = load ptr, ptr %var.pub_name, align 8
  %call.res128 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load126, ptr %var.load127)
  %ram.tag = extractvalue { i1, i64 } %call.res128, 0
  br i1 %ram.tag, label %choice.then129, label %choice.exit130

str_overflow_abort117:                            ; preds = %concat.sum.len111
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len116

choice.then129:                                   ; preds = %concat.tot.len116
  %var.load131 = load ptr, ptr %var.pub_name, align 8
  ret ptr %var.load131

choice.exit130:                                   ; preds = %ret.dead, %concat.tot.len116
  %var.load132 = load ptr, ptr %var.env, align 8
  %fld.gep133 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load132, i32 0, i32 8
  %fld.load134 = load ptr, ptr %fld.gep133, align 8
  %concat.lhs135 = load i64, ptr @str.0.struct, align 8
  %concat.lhs136 = and i64 %concat.lhs135, 281474976710655
  %str.tag137 = lshr i64 %concat.lhs135, 48
  %str.immortal138 = icmp eq i64 %str.tag137, 0
  br i1 %str.immortal138, label %str_ok140, label %str_gen_check139

ret.dead:                                         ; No predecessors!
  br label %choice.exit130

str_gen_check139:                                 ; preds = %choice.exit130
  %arena.cur142 = call ptr @dva_arena_current()
  %tag.valid143 = call i1 @dva_arena_validate_tag(ptr %arena.cur142, i64 %str.tag137)
  br i1 %tag.valid143, label %str_ok140, label %str_stale141

str_ok140:                                        ; preds = %str_stale141, %str_gen_check139, %choice.exit130
  %concat.lhs144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs145 = getelementptr inbounds { i64, ptr }, ptr %fld.load134, i32 0, i32 0
  %concat.rhs146 = load i64, ptr %concat.rhs145, align 8
  %concat.rhs147 = and i64 %concat.rhs146, 281474976710655
  %str.tag148 = lshr i64 %concat.rhs146, 48
  %str.immortal149 = icmp eq i64 %str.tag148, 0
  br i1 %str.immortal149, label %str_ok151, label %str_gen_check150

str_stale141:                                     ; preds = %str_gen_check139
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok140

str_gen_check150:                                 ; preds = %str_ok140
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag148)
  br i1 %tag.valid154, label %str_ok151, label %str_stale152

str_ok151:                                        ; preds = %str_stale152, %str_gen_check150, %str_ok140
  %concat.rhs155 = getelementptr inbounds { i64, ptr }, ptr %fld.load134, i32 0, i32 1
  %concat.rhs156 = load ptr, ptr %concat.rhs155, align 8
  %concat.sum.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs136, i64 %concat.rhs147)
  %sum158 = extractvalue { i64, i1 } %concat.sum.len157, 0
  %ovf159 = extractvalue { i64, i1 } %concat.sum.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %concat.sum.len160

str_stale152:                                     ; preds = %str_gen_check150
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok151

concat.sum.len160:                                ; preds = %str_overflow_abort161, %str_ok151
  %concat.tot.len162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum158, i64 1)
  %sum163 = extractvalue { i64, i1 } %concat.tot.len162, 0
  %ovf164 = extractvalue { i64, i1 } %concat.tot.len162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %concat.tot.len165

str_overflow_abort161:                            ; preds = %str_ok151
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len160

concat.tot.len165:                                ; preds = %str_overflow_abort166, %concat.sum.len160
  %arena.cur167 = call ptr @dva_arena_current()
  %concat.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum163)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf168, ptr align 1 %concat.lhs144, i64 %concat.lhs136, i1 false)
  %concat.mid169 = getelementptr i8, ptr %concat.buf168, i64 %concat.lhs136
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid169, ptr align 1 %concat.rhs156, i64 %concat.rhs147, i1 false)
  %concat.nul170 = getelementptr i8, ptr %concat.buf168, i64 %sum158
  store i8 0, ptr %concat.nul170, align 1
  %arena.cur171 = call ptr @dva_arena_current()
  %concat.str172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 16)
  %str.build.len.gep173 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 0
  store i64 %sum158, ptr %str.build.len.gep173, align 8
  %str.build.data.gep174 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 1
  store ptr %concat.buf168, ptr %str.build.data.gep174, align 8
  %concat.lhs175 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 0
  %concat.lhs176 = load i64, ptr %concat.lhs175, align 8
  %concat.lhs177 = and i64 %concat.lhs176, 281474976710655
  %str.tag178 = lshr i64 %concat.lhs176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_overflow_abort166:                            ; preds = %concat.sum.len160
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len165

str_gen_check180:                                 ; preds = %concat.tot.len165
  %arena.cur183 = call ptr @dva_arena_current()
  %tag.valid184 = call i1 @dva_arena_validate_tag(ptr %arena.cur183, i64 %str.tag178)
  br i1 %tag.valid184, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %concat.tot.len165
  %concat.lhs185 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 1
  %concat.lhs186 = load ptr, ptr %concat.lhs185, align 8
  %concat.rhs187 = load i64, ptr @str.5.struct, align 8
  %concat.rhs188 = and i64 %concat.rhs187, 281474976710655
  %str.tag189 = lshr i64 %concat.rhs187, 48
  %str.immortal190 = icmp eq i64 %str.tag189, 0
  br i1 %str.immortal190, label %str_ok192, label %str_gen_check191

str_stale182:                                     ; preds = %str_gen_check180
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

str_gen_check191:                                 ; preds = %str_ok181
  %arena.cur194 = call ptr @dva_arena_current()
  %tag.valid195 = call i1 @dva_arena_validate_tag(ptr %arena.cur194, i64 %str.tag189)
  br i1 %tag.valid195, label %str_ok192, label %str_stale193

str_ok192:                                        ; preds = %str_stale193, %str_gen_check191, %str_ok181
  %concat.rhs196 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs177, i64 %concat.rhs188)
  %sum198 = extractvalue { i64, i1 } %concat.sum.len197, 0
  %ovf199 = extractvalue { i64, i1 } %concat.sum.len197, 1
  br i1 %ovf199, label %str_overflow_abort201, label %concat.sum.len200

str_stale193:                                     ; preds = %str_gen_check191
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok192

concat.sum.len200:                                ; preds = %str_overflow_abort201, %str_ok192
  %concat.tot.len202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum198, i64 1)
  %sum203 = extractvalue { i64, i1 } %concat.tot.len202, 0
  %ovf204 = extractvalue { i64, i1 } %concat.tot.len202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %concat.tot.len205

str_overflow_abort201:                            ; preds = %str_ok192
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len200

concat.tot.len205:                                ; preds = %str_overflow_abort206, %concat.sum.len200
  %arena.cur207 = call ptr @dva_arena_current()
  %concat.buf208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 %sum203)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf208, ptr align 1 %concat.lhs186, i64 %concat.lhs177, i1 false)
  %concat.mid209 = getelementptr i8, ptr %concat.buf208, i64 %concat.lhs177
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid209, ptr align 1 %concat.rhs196, i64 %concat.rhs188, i1 false)
  %concat.nul210 = getelementptr i8, ptr %concat.buf208, i64 %sum198
  store i8 0, ptr %concat.nul210, align 1
  %arena.cur211 = call ptr @dva_arena_current()
  %concat.str212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 16)
  %str.build.len.gep213 = getelementptr inbounds { i64, ptr }, ptr %concat.str212, i32 0, i32 0
  store i64 %sum198, ptr %str.build.len.gep213, align 8
  %str.build.data.gep214 = getelementptr inbounds { i64, ptr }, ptr %concat.str212, i32 0, i32 1
  store ptr %concat.buf208, ptr %str.build.data.gep214, align 8
  %var.load215 = load ptr, ptr %var.name, align 8
  %concat.lhs216 = getelementptr inbounds { i64, ptr }, ptr %concat.str212, i32 0, i32 0
  %concat.lhs217 = load i64, ptr %concat.lhs216, align 8
  %concat.lhs218 = and i64 %concat.lhs217, 281474976710655
  %str.tag219 = lshr i64 %concat.lhs217, 48
  %str.immortal220 = icmp eq i64 %str.tag219, 0
  br i1 %str.immortal220, label %str_ok222, label %str_gen_check221

str_overflow_abort206:                            ; preds = %concat.sum.len200
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len205

str_gen_check221:                                 ; preds = %concat.tot.len205
  %arena.cur224 = call ptr @dva_arena_current()
  %tag.valid225 = call i1 @dva_arena_validate_tag(ptr %arena.cur224, i64 %str.tag219)
  br i1 %tag.valid225, label %str_ok222, label %str_stale223

str_ok222:                                        ; preds = %str_stale223, %str_gen_check221, %concat.tot.len205
  %concat.lhs226 = getelementptr inbounds { i64, ptr }, ptr %concat.str212, i32 0, i32 1
  %concat.lhs227 = load ptr, ptr %concat.lhs226, align 8
  %concat.rhs228 = getelementptr inbounds { i64, ptr }, ptr %var.load215, i32 0, i32 0
  %concat.rhs229 = load i64, ptr %concat.rhs228, align 8
  %concat.rhs230 = and i64 %concat.rhs229, 281474976710655
  %str.tag231 = lshr i64 %concat.rhs229, 48
  %str.immortal232 = icmp eq i64 %str.tag231, 0
  br i1 %str.immortal232, label %str_ok234, label %str_gen_check233

str_stale223:                                     ; preds = %str_gen_check221
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok222

str_gen_check233:                                 ; preds = %str_ok222
  %arena.cur236 = call ptr @dva_arena_current()
  %tag.valid237 = call i1 @dva_arena_validate_tag(ptr %arena.cur236, i64 %str.tag231)
  br i1 %tag.valid237, label %str_ok234, label %str_stale235

str_ok234:                                        ; preds = %str_stale235, %str_gen_check233, %str_ok222
  %concat.rhs238 = getelementptr inbounds { i64, ptr }, ptr %var.load215, i32 0, i32 1
  %concat.rhs239 = load ptr, ptr %concat.rhs238, align 8
  %concat.sum.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs218, i64 %concat.rhs230)
  %sum241 = extractvalue { i64, i1 } %concat.sum.len240, 0
  %ovf242 = extractvalue { i64, i1 } %concat.sum.len240, 1
  br i1 %ovf242, label %str_overflow_abort244, label %concat.sum.len243

str_stale235:                                     ; preds = %str_gen_check233
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok234

concat.sum.len243:                                ; preds = %str_overflow_abort244, %str_ok234
  %concat.tot.len245 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum241, i64 1)
  %sum246 = extractvalue { i64, i1 } %concat.tot.len245, 0
  %ovf247 = extractvalue { i64, i1 } %concat.tot.len245, 1
  br i1 %ovf247, label %str_overflow_abort249, label %concat.tot.len248

str_overflow_abort244:                            ; preds = %str_ok234
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len243

concat.tot.len248:                                ; preds = %str_overflow_abort249, %concat.sum.len243
  %arena.cur250 = call ptr @dva_arena_current()
  %concat.buf251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 %sum246)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf251, ptr align 1 %concat.lhs227, i64 %concat.lhs218, i1 false)
  %concat.mid252 = getelementptr i8, ptr %concat.buf251, i64 %concat.lhs218
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid252, ptr align 1 %concat.rhs239, i64 %concat.rhs230, i1 false)
  %concat.nul253 = getelementptr i8, ptr %concat.buf251, i64 %sum241
  store i8 0, ptr %concat.nul253, align 1
  %arena.cur254 = call ptr @dva_arena_current()
  %concat.str255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 16)
  %str.build.len.gep256 = getelementptr inbounds { i64, ptr }, ptr %concat.str255, i32 0, i32 0
  store i64 %sum241, ptr %str.build.len.gep256, align 8
  %str.build.data.gep257 = getelementptr inbounds { i64, ptr }, ptr %concat.str255, i32 0, i32 1
  store ptr %concat.buf251, ptr %str.build.data.gep257, align 8
  store ptr %concat.str255, ptr %var.priv_name, align 8
  %var.load258 = load ptr, ptr %var.env, align 8
  %var.load259 = load ptr, ptr %var.priv_name, align 8
  %call.res260 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load258, ptr %var.load259)
  %ram.tag261 = extractvalue { i1, i64 } %call.res260, 0
  br i1 %ram.tag261, label %choice.then262, label %choice.exit263

str_overflow_abort249:                            ; preds = %concat.sum.len243
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len248

choice.then262:                                   ; preds = %concat.tot.len248
  %var.load264 = load ptr, ptr %var.priv_name, align 8
  ret ptr %var.load264

choice.exit263:                                   ; preds = %ret.dead265, %concat.tot.len248
  %var.load266 = load ptr, ptr %var.name, align 8
  br label %choice.exit

ret.dead265:                                      ; No predecessors!
  br label %choice.exit263
}

define void @"type_env::bind_user_type"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur6 = call ptr @dva_arena_current()
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = call ptr @dva_arena_current()
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
  %arena.cur19 = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
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

define ptr @"type_env::lookup_user_type_exact"(ptr %0, ptr %1) #1 {
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
  %var.load71 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load71

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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur15 = call ptr @dva_arena_current()
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
  %var.load46 = load ptr, ptr %var.u, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load46, i32 0, i32 0
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

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
  %str.tag = lshr i64 %err.msg.len31, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.220
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.220
  %err.msg.len3234 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %str.tag38 = lshr i64 %err.file.len36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check40:                                  ; preds = %str_ok
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale42:                                      ; preds = %str_gen_check40
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

err.thread:                                       ; preds = %str_ok41
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok41
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check54:                                  ; preds = %unwrap.pos.220
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %unwrap.pos.220
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %eq.rhs.len59 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len59, 281474976710655
  %str.tag61 = lshr i64 %eq.rhs.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check63:                                  ; preds = %str_ok55
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok55
  %eq.len = icmp eq i64 %eq.lhs.len51, %eq.rhs.len60
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale65:                                      ; preds = %str_gen_check63
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %eq.rhs.data69 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data68, ptr %eq.rhs.data69, i64 %eq.lhs.len51)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load70 = load ptr, ptr %var.u, align 8
  store ptr %var.load70, ptr %"var.res'", align 8
  br label %loop.exit.219

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.219
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #1 {
entry:
  %var.pr = alloca ptr, align 8
  %var._264 = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.221.then, label %and.221.else

and.221.then:                                     ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load12, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.221.exit

and.221.else:                                     ; preds = %str.eq.merge
  br label %and.221.exit

and.221.exit:                                     ; preds = %and.221.else, %and.221.then
  %and.221.phi = phi i1 [ %nottmp, %and.221.then ], [ %str.neq, %and.221.else ]
  br i1 %and.221.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.221.exit
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 8
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %concat.lhs = load i64, ptr @str.0.struct, align 8
  %concat.lhs17 = and i64 %concat.lhs, 281474976710655
  %str.tag18 = lshr i64 %concat.lhs, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

choice.exit:                                      ; preds = %choice.exit263, %and.221.exit
  %var.load267 = load ptr, ptr %var.env, align 8
  %var.load268 = load ptr, ptr %var.name, align 8
  %call.res269 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load267, ptr %var.load268)
  ret ptr %call.res269

str_gen_check20:                                  ; preds = %choice.then
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %choice.then
  %concat.lhs25 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %concat.rhs26 = load i64, ptr %concat.rhs, align 8
  %concat.rhs27 = and i64 %concat.rhs26, 281474976710655
  %str.tag28 = lshr i64 %concat.rhs26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

str_stale22:                                      ; preds = %str_gen_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check30:                                  ; preds = %str_ok21
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %str_ok21
  %concat.rhs35 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %concat.rhs36 = load ptr, ptr %concat.rhs35, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs17, i64 %concat.rhs27)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len37

str_stale32:                                      ; preds = %str_gen_check30
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

concat.sum.len37:                                 ; preds = %str_overflow_abort, %str_ok31
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort:                               ; preds = %str_ok31
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len37

concat.tot.len40:                                 ; preds = %str_overflow_abort41, %concat.sum.len37
  %arena.cur42 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs17, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs36, i64 %concat.rhs27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur43 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs44 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs45 = load i64, ptr %concat.lhs44, align 8
  %concat.lhs46 = and i64 %concat.lhs45, 281474976710655
  %str.tag47 = lshr i64 %concat.lhs45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_overflow_abort41:                             ; preds = %concat.sum.len37
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len40

str_gen_check49:                                  ; preds = %concat.tot.len40
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %concat.tot.len40
  %concat.lhs54 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs55 = load ptr, ptr %concat.lhs54, align 8
  %concat.rhs56 = load i64, ptr @str.4.struct, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

str_stale51:                                      ; preds = %str_gen_check49
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

str_gen_check60:                                  ; preds = %str_ok50
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %str_ok50
  %concat.rhs65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs46, i64 %concat.rhs57)
  %sum67 = extractvalue { i64, i1 } %concat.sum.len66, 0
  %ovf68 = extractvalue { i64, i1 } %concat.sum.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %concat.sum.len69

str_stale62:                                      ; preds = %str_gen_check60
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

concat.sum.len69:                                 ; preds = %str_overflow_abort70, %str_ok61
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum67, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort70:                             ; preds = %str_ok61
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len69

concat.tot.len74:                                 ; preds = %str_overflow_abort75, %concat.sum.len69
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf77, ptr align 1 %concat.lhs55, i64 %concat.lhs46, i1 false)
  %concat.mid78 = getelementptr i8, ptr %concat.buf77, i64 %concat.lhs46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid78, ptr align 1 %concat.rhs65, i64 %concat.rhs57, i1 false)
  %concat.nul79 = getelementptr i8, ptr %concat.buf77, i64 %sum67
  store i8 0, ptr %concat.nul79, align 1
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.str81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  store i64 %sum67, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  store ptr %concat.buf77, ptr %str.build.data.gep83, align 8
  %var.load84 = load ptr, ptr %var.name, align 8
  %concat.lhs85 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  %concat.lhs86 = load i64, ptr %concat.lhs85, align 8
  %concat.lhs87 = and i64 %concat.lhs86, 281474976710655
  %str.tag88 = lshr i64 %concat.lhs86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

str_overflow_abort75:                             ; preds = %concat.sum.len69
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len74

str_gen_check90:                                  ; preds = %concat.tot.len74
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %concat.tot.len74
  %concat.lhs95 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  %concat.lhs96 = load ptr, ptr %concat.lhs95, align 8
  %concat.rhs97 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %concat.rhs98 = load i64, ptr %concat.rhs97, align 8
  %concat.rhs99 = and i64 %concat.rhs98, 281474976710655
  %str.tag100 = lshr i64 %concat.rhs98, 48
  %str.immortal101 = icmp eq i64 %str.tag100, 0
  br i1 %str.immortal101, label %str_ok103, label %str_gen_check102

str_stale92:                                      ; preds = %str_gen_check90
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

str_gen_check102:                                 ; preds = %str_ok91
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag100)
  br i1 %tag.valid106, label %str_ok103, label %str_stale104

str_ok103:                                        ; preds = %str_stale104, %str_gen_check102, %str_ok91
  %concat.rhs107 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %concat.rhs108 = load ptr, ptr %concat.rhs107, align 8
  %concat.sum.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs87, i64 %concat.rhs99)
  %sum110 = extractvalue { i64, i1 } %concat.sum.len109, 0
  %ovf111 = extractvalue { i64, i1 } %concat.sum.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %concat.sum.len112

str_stale104:                                     ; preds = %str_gen_check102
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok103

concat.sum.len112:                                ; preds = %str_overflow_abort113, %str_ok103
  %concat.tot.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum110, i64 1)
  %sum115 = extractvalue { i64, i1 } %concat.tot.len114, 0
  %ovf116 = extractvalue { i64, i1 } %concat.tot.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %concat.tot.len117

str_overflow_abort113:                            ; preds = %str_ok103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len112

concat.tot.len117:                                ; preds = %str_overflow_abort118, %concat.sum.len112
  %arena.cur119 = call ptr @dva_arena_current()
  %concat.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf120, ptr align 1 %concat.lhs96, i64 %concat.lhs87, i1 false)
  %concat.mid121 = getelementptr i8, ptr %concat.buf120, i64 %concat.lhs87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid121, ptr align 1 %concat.rhs108, i64 %concat.rhs99, i1 false)
  %concat.nul122 = getelementptr i8, ptr %concat.buf120, i64 %sum110
  store i8 0, ptr %concat.nul122, align 1
  %arena.cur123 = call ptr @dva_arena_current()
  %concat.str124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 16)
  %str.build.len.gep125 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 0
  store i64 %sum110, ptr %str.build.len.gep125, align 8
  %str.build.data.gep126 = getelementptr inbounds { i64, ptr }, ptr %concat.str124, i32 0, i32 1
  store ptr %concat.buf120, ptr %str.build.data.gep126, align 8
  %call.res127 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load13, ptr %concat.str124)
  store ptr %call.res127, ptr %var.pub, align 8
  %var.load128 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load128, null
  br i1 %niche.ne.null, label %choice.then129, label %choice.exit130

str_overflow_abort118:                            ; preds = %concat.sum.len112
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len117

choice.then129:                                   ; preds = %concat.tot.len117
  store ptr %var.load128, ptr %var._, align 8
  store ptr %var.load128, ptr %var.p, align 8
  %var.load131 = load ptr, ptr %var.p, align 8
  ret ptr %var.load131

choice.exit130:                                   ; preds = %ret.dead, %concat.tot.len117
  %var.load132 = load ptr, ptr %var.env, align 8
  %var.load133 = load ptr, ptr %var.env, align 8
  %fld.gep134 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load133, i32 0, i32 8
  %fld.load135 = load ptr, ptr %fld.gep134, align 8
  %concat.lhs136 = load i64, ptr @str.0.struct, align 8
  %concat.lhs137 = and i64 %concat.lhs136, 281474976710655
  %str.tag138 = lshr i64 %concat.lhs136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

ret.dead:                                         ; No predecessors!
  br label %choice.exit130

str_gen_check140:                                 ; preds = %choice.exit130
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag138)
  br i1 %tag.valid144, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %choice.exit130
  %concat.lhs145 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.rhs146 = getelementptr inbounds { i64, ptr }, ptr %fld.load135, i32 0, i32 0
  %concat.rhs147 = load i64, ptr %concat.rhs146, align 8
  %concat.rhs148 = and i64 %concat.rhs147, 281474976710655
  %str.tag149 = lshr i64 %concat.rhs147, 48
  %str.immortal150 = icmp eq i64 %str.tag149, 0
  br i1 %str.immortal150, label %str_ok152, label %str_gen_check151

str_stale142:                                     ; preds = %str_gen_check140
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

str_gen_check151:                                 ; preds = %str_ok141
  %arena.cur154 = call ptr @dva_arena_current()
  %tag.valid155 = call i1 @dva_arena_validate_tag(ptr %arena.cur154, i64 %str.tag149)
  br i1 %tag.valid155, label %str_ok152, label %str_stale153

str_ok152:                                        ; preds = %str_stale153, %str_gen_check151, %str_ok141
  %concat.rhs156 = getelementptr inbounds { i64, ptr }, ptr %fld.load135, i32 0, i32 1
  %concat.rhs157 = load ptr, ptr %concat.rhs156, align 8
  %concat.sum.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs137, i64 %concat.rhs148)
  %sum159 = extractvalue { i64, i1 } %concat.sum.len158, 0
  %ovf160 = extractvalue { i64, i1 } %concat.sum.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %concat.sum.len161

str_stale153:                                     ; preds = %str_gen_check151
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok152

concat.sum.len161:                                ; preds = %str_overflow_abort162, %str_ok152
  %concat.tot.len163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum159, i64 1)
  %sum164 = extractvalue { i64, i1 } %concat.tot.len163, 0
  %ovf165 = extractvalue { i64, i1 } %concat.tot.len163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %concat.tot.len166

str_overflow_abort162:                            ; preds = %str_ok152
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len161

concat.tot.len166:                                ; preds = %str_overflow_abort167, %concat.sum.len161
  %arena.cur168 = call ptr @dva_arena_current()
  %concat.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 %sum164)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf169, ptr align 1 %concat.lhs145, i64 %concat.lhs137, i1 false)
  %concat.mid170 = getelementptr i8, ptr %concat.buf169, i64 %concat.lhs137
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid170, ptr align 1 %concat.rhs157, i64 %concat.rhs148, i1 false)
  %concat.nul171 = getelementptr i8, ptr %concat.buf169, i64 %sum159
  store i8 0, ptr %concat.nul171, align 1
  %arena.cur172 = call ptr @dva_arena_current()
  %concat.str173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 16)
  %str.build.len.gep174 = getelementptr inbounds { i64, ptr }, ptr %concat.str173, i32 0, i32 0
  store i64 %sum159, ptr %str.build.len.gep174, align 8
  %str.build.data.gep175 = getelementptr inbounds { i64, ptr }, ptr %concat.str173, i32 0, i32 1
  store ptr %concat.buf169, ptr %str.build.data.gep175, align 8
  %concat.lhs176 = getelementptr inbounds { i64, ptr }, ptr %concat.str173, i32 0, i32 0
  %concat.lhs177 = load i64, ptr %concat.lhs176, align 8
  %concat.lhs178 = and i64 %concat.lhs177, 281474976710655
  %str.tag179 = lshr i64 %concat.lhs177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_overflow_abort167:                            ; preds = %concat.sum.len161
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len166

str_gen_check181:                                 ; preds = %concat.tot.len166
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %str.tag179)
  br i1 %tag.valid185, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %concat.tot.len166
  %concat.lhs186 = getelementptr inbounds { i64, ptr }, ptr %concat.str173, i32 0, i32 1
  %concat.lhs187 = load ptr, ptr %concat.lhs186, align 8
  %concat.rhs188 = load i64, ptr @str.5.struct, align 8
  %concat.rhs189 = and i64 %concat.rhs188, 281474976710655
  %str.tag190 = lshr i64 %concat.rhs188, 48
  %str.immortal191 = icmp eq i64 %str.tag190, 0
  br i1 %str.immortal191, label %str_ok193, label %str_gen_check192

str_stale183:                                     ; preds = %str_gen_check181
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

str_gen_check192:                                 ; preds = %str_ok182
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid196 = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag190)
  br i1 %tag.valid196, label %str_ok193, label %str_stale194

str_ok193:                                        ; preds = %str_stale194, %str_gen_check192, %str_ok182
  %concat.rhs197 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs178, i64 %concat.rhs189)
  %sum199 = extractvalue { i64, i1 } %concat.sum.len198, 0
  %ovf200 = extractvalue { i64, i1 } %concat.sum.len198, 1
  br i1 %ovf200, label %str_overflow_abort202, label %concat.sum.len201

str_stale194:                                     ; preds = %str_gen_check192
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok193

concat.sum.len201:                                ; preds = %str_overflow_abort202, %str_ok193
  %concat.tot.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum199, i64 1)
  %sum204 = extractvalue { i64, i1 } %concat.tot.len203, 0
  %ovf205 = extractvalue { i64, i1 } %concat.tot.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %concat.tot.len206

str_overflow_abort202:                            ; preds = %str_ok193
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len201

concat.tot.len206:                                ; preds = %str_overflow_abort207, %concat.sum.len201
  %arena.cur208 = call ptr @dva_arena_current()
  %concat.buf209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 %sum204)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf209, ptr align 1 %concat.lhs187, i64 %concat.lhs178, i1 false)
  %concat.mid210 = getelementptr i8, ptr %concat.buf209, i64 %concat.lhs178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid210, ptr align 1 %concat.rhs197, i64 %concat.rhs189, i1 false)
  %concat.nul211 = getelementptr i8, ptr %concat.buf209, i64 %sum199
  store i8 0, ptr %concat.nul211, align 1
  %arena.cur212 = call ptr @dva_arena_current()
  %concat.str213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 16)
  %str.build.len.gep214 = getelementptr inbounds { i64, ptr }, ptr %concat.str213, i32 0, i32 0
  store i64 %sum199, ptr %str.build.len.gep214, align 8
  %str.build.data.gep215 = getelementptr inbounds { i64, ptr }, ptr %concat.str213, i32 0, i32 1
  store ptr %concat.buf209, ptr %str.build.data.gep215, align 8
  %var.load216 = load ptr, ptr %var.name, align 8
  %concat.lhs217 = getelementptr inbounds { i64, ptr }, ptr %concat.str213, i32 0, i32 0
  %concat.lhs218 = load i64, ptr %concat.lhs217, align 8
  %concat.lhs219 = and i64 %concat.lhs218, 281474976710655
  %str.tag220 = lshr i64 %concat.lhs218, 48
  %str.immortal221 = icmp eq i64 %str.tag220, 0
  br i1 %str.immortal221, label %str_ok223, label %str_gen_check222

str_overflow_abort207:                            ; preds = %concat.sum.len201
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len206

str_gen_check222:                                 ; preds = %concat.tot.len206
  %arena.cur225 = call ptr @dva_arena_current()
  %tag.valid226 = call i1 @dva_arena_validate_tag(ptr %arena.cur225, i64 %str.tag220)
  br i1 %tag.valid226, label %str_ok223, label %str_stale224

str_ok223:                                        ; preds = %str_stale224, %str_gen_check222, %concat.tot.len206
  %concat.lhs227 = getelementptr inbounds { i64, ptr }, ptr %concat.str213, i32 0, i32 1
  %concat.lhs228 = load ptr, ptr %concat.lhs227, align 8
  %concat.rhs229 = getelementptr inbounds { i64, ptr }, ptr %var.load216, i32 0, i32 0
  %concat.rhs230 = load i64, ptr %concat.rhs229, align 8
  %concat.rhs231 = and i64 %concat.rhs230, 281474976710655
  %str.tag232 = lshr i64 %concat.rhs230, 48
  %str.immortal233 = icmp eq i64 %str.tag232, 0
  br i1 %str.immortal233, label %str_ok235, label %str_gen_check234

str_stale224:                                     ; preds = %str_gen_check222
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok223

str_gen_check234:                                 ; preds = %str_ok223
  %arena.cur237 = call ptr @dva_arena_current()
  %tag.valid238 = call i1 @dva_arena_validate_tag(ptr %arena.cur237, i64 %str.tag232)
  br i1 %tag.valid238, label %str_ok235, label %str_stale236

str_ok235:                                        ; preds = %str_stale236, %str_gen_check234, %str_ok223
  %concat.rhs239 = getelementptr inbounds { i64, ptr }, ptr %var.load216, i32 0, i32 1
  %concat.rhs240 = load ptr, ptr %concat.rhs239, align 8
  %concat.sum.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs219, i64 %concat.rhs231)
  %sum242 = extractvalue { i64, i1 } %concat.sum.len241, 0
  %ovf243 = extractvalue { i64, i1 } %concat.sum.len241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %concat.sum.len244

str_stale236:                                     ; preds = %str_gen_check234
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok235

concat.sum.len244:                                ; preds = %str_overflow_abort245, %str_ok235
  %concat.tot.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum242, i64 1)
  %sum247 = extractvalue { i64, i1 } %concat.tot.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.tot.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.tot.len249

str_overflow_abort245:                            ; preds = %str_ok235
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len244

concat.tot.len249:                                ; preds = %str_overflow_abort250, %concat.sum.len244
  %arena.cur251 = call ptr @dva_arena_current()
  %concat.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 %sum247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf252, ptr align 1 %concat.lhs228, i64 %concat.lhs219, i1 false)
  %concat.mid253 = getelementptr i8, ptr %concat.buf252, i64 %concat.lhs219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid253, ptr align 1 %concat.rhs240, i64 %concat.rhs231, i1 false)
  %concat.nul254 = getelementptr i8, ptr %concat.buf252, i64 %sum242
  store i8 0, ptr %concat.nul254, align 1
  %arena.cur255 = call ptr @dva_arena_current()
  %concat.str256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 16)
  %str.build.len.gep257 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 0
  store i64 %sum242, ptr %str.build.len.gep257, align 8
  %str.build.data.gep258 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 1
  store ptr %concat.buf252, ptr %str.build.data.gep258, align 8
  %call.res259 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load132, ptr %concat.str256)
  store ptr %call.res259, ptr %var.priv, align 8
  %var.load260 = load ptr, ptr %var.priv, align 8
  %niche.ne.null261 = icmp ne ptr %var.load260, null
  br i1 %niche.ne.null261, label %choice.then262, label %choice.exit263

str_overflow_abort250:                            ; preds = %concat.sum.len244
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len249

choice.then262:                                   ; preds = %concat.tot.len249
  store ptr %var.load260, ptr %var._264, align 8
  store ptr %var.load260, ptr %var.pr, align 8
  %var.load265 = load ptr, ptr %var.pr, align 8
  ret ptr %var.load265

choice.exit263:                                   ; preds = %ret.dead266, %concat.tot.len249
  br label %choice.exit

ret.dead266:                                      ; No predecessors!
  br label %choice.exit263
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
