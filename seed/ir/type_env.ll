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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"type_env::new_init"() #0 {
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
  %arena.cur53 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  %arena.cur59 = call ptr @dva_arena_current()
  %a.new60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 24)
  %arena.cur61 = call ptr @dva_arena_current()
  %a.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 128)
  %a.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 0
  store i64 0, ptr %a.len.gep63, align 8
  %a.data.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 1
  store ptr %a.buf62, ptr %a.data.gep64, align 8
  %a.cap.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new60, i32 0, i32 2
  store i64 16, ptr %a.cap.gep65, align 8
  %arena.cur66 = call ptr @dva_arena_current()
  %a.new67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %arena.cur68 = call ptr @dva_arena_current()
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
  %arena.cur81 = call ptr @dva_arena_current()
  %a.create82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %arena.cur83 = call ptr @dva_arena_current()
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
  %arena.cur94 = call ptr @dva_arena_current()
  %a.create95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 24)
  %arena.cur96 = call ptr @dva_arena_current()
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
  %arena.cur102 = call ptr @dva_arena_current()
  %m.new103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 48)
  %arena.cur104 = call ptr @dva_arena_current()
  %m.keys105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 64)
  %arena.cur106 = call ptr @dva_arena_current()
  %m.vals107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 64)
  %arena.cur108 = call ptr @dva_arena_current()
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
  %arena.cur116 = call ptr @dva_arena_current()
  %a.new117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 24)
  %arena.cur118 = call ptr @dva_arena_current()
  %a.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 128)
  %a.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 0
  store i64 0, ptr %a.len.gep120, align 8
  %a.data.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 1
  store ptr %a.buf119, ptr %a.data.gep121, align 8
  %a.cap.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep122, align 8
  %arena.cur123 = call ptr @dva_arena_current()
  %a.new124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 24)
  %arena.cur125 = call ptr @dva_arena_current()
  %a.buf126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 128)
  %a.len.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 0
  store i64 0, ptr %a.len.gep127, align 8
  %a.data.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 1
  store ptr %a.buf126, ptr %a.data.gep128, align 8
  %a.cap.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new124, i32 0, i32 2
  store i64 16, ptr %a.cap.gep129, align 8
  %arena.cur130 = call ptr @dva_arena_current()
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data8, i64 %mk.len10)
  %m.capm1 = sub i64 %m.cap4, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

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
  br i1 %tag.immortal16, label %str_ok15, label %tag.gen_check17

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

m.done:                                           ; preds = %m.ins.slot, %m.done178, %m.overwrite
  ret void

str_ok15:                                         ; preds = %abort.dead24, %tag.slow_check18, %tag.gen_check17, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen25 = load i64, ptr %mk.nlen, align 8
  %mk.nlen26 = and i64 %mk.nlen25, 281474976710655
  %str.tag27 = lshr i64 %mk.nlen25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  br i1 %tag.immortal29, label %str_ok28, label %tag.gen_check30

tag.gen_check17:                                  ; preds = %m.found
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok21 = icmp eq i64 %str.tag14, %active.gen20
  br i1 %tag.fast.ok21, label %str_ok15, label %tag.slow_check18

tag.slow_check18:                                 ; preds = %tag.gen_check17
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag14)
  br i1 %tag.valid23, label %str_ok15, label %tag.stale19

tag.stale19:                                      ; preds = %tag.slow_check18
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %str_ok15

str_ok28:                                         ; preds = %abort.dead37, %tag.slow_check31, %tag.gen_check30, %str_ok15
  %mk.lenseq = icmp eq i64 %mk.slen13, %mk.nlen26
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.gen_check30:                                  ; preds = %str_ok15
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

mk.eq.then:                                       ; preds = %str_ok28
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata38 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata39 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata38, ptr %mk.ndata39, i64 %mk.nlen26)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok28
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.old.cap40 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.old.keys41 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.old.vals42 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.old.states43 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap40, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.live.cnt44 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt44, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap40
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap40
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur45 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur46 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %m.gv.bytes)
  %arena.cur47 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %m.new.cap)
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
  %m.use.tomb249 = icmp ne i64 %m.tomb11, -1
  %m.ins.idx250 = select i1 %m.use.tomb249, i64 %m.tomb11, i64 %m.idx
  %m.key.slot251 = getelementptr i64, ptr %m.keys5, i64 %m.ins.idx250
  store ptr %var.load2, ptr %m.key.slot251, align 8
  %m.val.slot252 = getelementptr i64, ptr %m.vals6, i64 %m.ins.idx250
  store i64 %slot.p2i, ptr %m.val.slot252, align 8
  %m.ins.state.slot253 = getelementptr i8, ptr %m.states7, i64 %m.ins.idx250
  store i8 1, ptr %m.ins.state.slot253, align 1
  %m.count254 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count255 = load i64, ptr %m.count254, align 8
  %m.count.next256 = add i64 %m.count255, 1
  %m.count.gep257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next256, ptr %m.count.gep257, align 8
  %m.ins.tombs.p258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs259 = load i64, ptr %m.ins.tombs.p258, align 8
  %m.tomb.dec260 = select i1 %m.use.tomb249, i64 1, i64 0
  %m.ins.tombs.next261 = sub i64 %m.ins.tombs259, %m.tomb.dec260
  store i64 %m.ins.tombs.next261, ptr %m.ins.tombs.p258, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap40
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states43, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done82, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap144 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap145 = load i64, ptr %m.cap144, align 8
  %m.keys146 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys147 = load ptr, ptr %m.keys146, align 8
  %m.vals148 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals149 = load ptr, ptr %m.vals148, align 8
  %m.states150 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states151 = load ptr, ptr %m.states150, align 8
  %mk.data152 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data153 = load ptr, ptr %mk.data152, align 8
  %mk.len154 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len155 = load i64, ptr %mk.len154, align 8
  %mk.len156 = and i64 %mk.len155, 281474976710655
  %str.tag157 = lshr i64 %mk.len155, 48
  %tag.immortal159 = icmp eq i64 %str.tag157, 0
  br i1 %tag.immortal159, label %str_ok158, label %tag.gen_check160

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys41, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals42, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap48 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap49 = load i64, ptr %m.cap48, align 8
  %m.keys50 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys51 = load ptr, ptr %m.keys50, align 8
  %m.vals52 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals53 = load ptr, ptr %m.vals52, align 8
  %m.states54 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states55 = load ptr, ptr %m.states54, align 8
  %mk.data56 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data57 = load ptr, ptr %mk.data56, align 8
  %mk.len58 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len59 = load i64, ptr %mk.len58, align 8
  %mk.len60 = and i64 %mk.len59, 281474976710655
  %str.tag61 = lshr i64 %mk.len59, 48
  %tag.immortal63 = icmp eq i64 %str.tag61, 0
  br i1 %tag.immortal63, label %str_ok62, label %tag.gen_check64

str_ok62:                                         ; preds = %abort.dead71, %tag.slow_check65, %tag.gen_check64, %m.re.ins
  %hash.str72 = call i64 @dva_hash_string(ptr %mk.data57, i64 %mk.len60)
  %m.capm173 = sub i64 %m.cap49, 1
  %m.idx074 = and i64 %hash.str72, %m.capm173
  br label %m.loop75

tag.gen_check64:                                  ; preds = %m.re.ins
  %active.gen67 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok68 = icmp eq i64 %str.tag61, %active.gen67
  br i1 %tag.fast.ok68, label %str_ok62, label %tag.slow_check65

tag.slow_check65:                                 ; preds = %tag.gen_check64
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag61)
  br i1 %tag.valid70, label %str_ok62, label %tag.stale66

tag.stale66:                                      ; preds = %tag.slow_check65
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %str_ok62

m.loop75:                                         ; preds = %m.next80, %str_ok62
  %m.idx83 = phi i64 [ %m.idx074, %str_ok62 ], [ %m.idx.next138, %m.next80 ]
  %m.tomb84 = phi i64 [ -1, %str_ok62 ], [ %m.next.tomb136, %m.next80 ]
  %m.probe85 = phi i64 [ 0, %str_ok62 ], [ %m.probe.next139, %m.next80 ]
  %m.reached.cap86 = icmp eq i64 %m.probe85, %m.cap49
  %m.state.gep87 = getelementptr i8, ptr %m.states55, i64 %m.idx83
  %m.state88 = load i8, ptr %m.state.gep87, align 1
  %m.is.empty89 = icmp eq i8 %m.state88, 0
  %m.stop90 = or i1 %m.is.empty89, %m.reached.cap86
  br i1 %m.stop90, label %m.empty81, label %m.check.tomb76

m.check.tomb76:                                   ; preds = %m.loop75
  %m.is.tomb91 = icmp eq i8 %m.state88, 2
  br i1 %m.is.tomb91, label %m.tomb77, label %m.found78

m.tomb77:                                         ; preds = %m.check.tomb76
  %m.has.tomb92 = icmp ne i64 %m.tomb84, -1
  %m.tomb.sel93 = select i1 %m.has.tomb92, i64 %m.tomb84, i64 %m.idx83
  br label %m.next80

m.found78:                                        ; preds = %m.check.tomb76
  %m.key.slot94 = getelementptr i64, ptr %m.keys51, i64 %m.idx83
  %mk.stored95 = load ptr, ptr %m.key.slot94, align 8
  %mk.slen96 = getelementptr inbounds { i64, ptr }, ptr %mk.stored95, i32 0, i32 0
  %mk.slen97 = load i64, ptr %mk.slen96, align 8
  %mk.slen98 = and i64 %mk.slen97, 281474976710655
  %str.tag99 = lshr i64 %mk.slen97, 48
  %tag.immortal101 = icmp eq i64 %str.tag99, 0
  br i1 %tag.immortal101, label %str_ok100, label %tag.gen_check102

m.overwrite79:                                    ; preds = %mk.eq.merge127
  %m.val.slot135 = getelementptr i64, ptr %m.vals53, i64 %m.idx83
  store i64 %m.re.val, ptr %m.val.slot135, align 8
  br label %m.done82

m.next80:                                         ; preds = %mk.eq.merge127, %m.tomb77
  %m.next.tomb136 = phi i64 [ %m.tomb.sel93, %m.tomb77 ], [ %m.tomb84, %mk.eq.merge127 ]
  %m.idx.add137 = add i64 %m.idx83, 1
  %m.idx.next138 = and i64 %m.idx.add137, %m.capm173
  %m.probe.next139 = add i64 %m.probe85, 1
  br label %m.loop75

m.empty81:                                        ; preds = %m.loop75
  %m.use.tomb = icmp ne i64 %m.tomb84, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb84, i64 %m.idx83
  %m.key.slot140 = getelementptr i64, ptr %m.keys51, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot140, align 8
  %m.val.slot141 = getelementptr i64, ptr %m.vals53, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot141, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states55, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count142 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count142, 1
  %m.count.gep143 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep143, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done82

m.done82:                                         ; preds = %m.empty81, %m.overwrite79
  br label %m.re.cont

str_ok100:                                        ; preds = %abort.dead109, %tag.slow_check103, %tag.gen_check102, %m.found78
  %mk.nlen110 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen111 = load i64, ptr %mk.nlen110, align 8
  %mk.nlen112 = and i64 %mk.nlen111, 281474976710655
  %str.tag113 = lshr i64 %mk.nlen111, 48
  %tag.immortal115 = icmp eq i64 %str.tag113, 0
  br i1 %tag.immortal115, label %str_ok114, label %tag.gen_check116

tag.gen_check102:                                 ; preds = %m.found78
  %active.gen105 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok106 = icmp eq i64 %str.tag99, %active.gen105
  br i1 %tag.fast.ok106, label %str_ok100, label %tag.slow_check103

tag.slow_check103:                                ; preds = %tag.gen_check102
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag99)
  br i1 %tag.valid108, label %str_ok100, label %tag.stale104

tag.stale104:                                     ; preds = %tag.slow_check103
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead109:                                    ; No predecessors!
  br label %str_ok100

str_ok114:                                        ; preds = %abort.dead123, %tag.slow_check117, %tag.gen_check116, %str_ok100
  %mk.lenseq124 = icmp eq i64 %mk.slen98, %mk.nlen112
  br i1 %mk.lenseq124, label %mk.eq.then125, label %mk.eq.else126

tag.gen_check116:                                 ; preds = %str_ok100
  %active.gen119 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok120 = icmp eq i64 %str.tag113, %active.gen119
  br i1 %tag.fast.ok120, label %str_ok114, label %tag.slow_check117

tag.slow_check117:                                ; preds = %tag.gen_check116
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid122 = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %str.tag113)
  br i1 %tag.valid122, label %str_ok114, label %tag.stale118

tag.stale118:                                     ; preds = %tag.slow_check117
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead123:                                    ; No predecessors!
  br label %str_ok114

mk.eq.then125:                                    ; preds = %str_ok114
  %mk.sdata128 = getelementptr inbounds { i64, ptr }, ptr %mk.stored95, i32 0, i32 1
  %mk.sdata129 = load ptr, ptr %mk.sdata128, align 8
  %mk.ndata130 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata131 = load ptr, ptr %mk.ndata130, align 8
  %mk.memcmp132 = call i32 @memcmp(ptr %mk.sdata129, ptr %mk.ndata131, i64 %mk.nlen112)
  %mk.cmpeq133 = icmp eq i32 %mk.memcmp132, 0
  br label %mk.eq.merge127

mk.eq.else126:                                    ; preds = %str_ok114
  br label %mk.eq.merge127

mk.eq.merge127:                                   ; preds = %mk.eq.else126, %mk.eq.then125
  %mk.eq134 = phi i1 [ %mk.cmpeq133, %mk.eq.then125 ], [ false, %mk.eq.else126 ]
  br i1 %mk.eq134, label %m.overwrite79, label %m.next80

str_ok158:                                        ; preds = %abort.dead167, %tag.slow_check161, %tag.gen_check160, %m.re.done
  %hash.str168 = call i64 @dva_hash_string(ptr %mk.data153, i64 %mk.len156)
  %m.capm1169 = sub i64 %m.cap145, 1
  %m.idx0170 = and i64 %hash.str168, %m.capm1169
  br label %m.loop171

tag.gen_check160:                                 ; preds = %m.re.done
  %active.gen163 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok164 = icmp eq i64 %str.tag157, %active.gen163
  br i1 %tag.fast.ok164, label %str_ok158, label %tag.slow_check161

tag.slow_check161:                                ; preds = %tag.gen_check160
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid166 = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag157)
  br i1 %tag.valid166, label %str_ok158, label %tag.stale162

tag.stale162:                                     ; preds = %tag.slow_check161
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead167:                                    ; No predecessors!
  br label %str_ok158

m.loop171:                                        ; preds = %m.next176, %str_ok158
  %m.idx179 = phi i64 [ %m.idx0170, %str_ok158 ], [ %m.idx.next234, %m.next176 ]
  %m.tomb180 = phi i64 [ -1, %str_ok158 ], [ %m.next.tomb232, %m.next176 ]
  %m.probe181 = phi i64 [ 0, %str_ok158 ], [ %m.probe.next235, %m.next176 ]
  %m.reached.cap182 = icmp eq i64 %m.probe181, %m.cap145
  %m.state.gep183 = getelementptr i8, ptr %m.states151, i64 %m.idx179
  %m.state184 = load i8, ptr %m.state.gep183, align 1
  %m.is.empty185 = icmp eq i8 %m.state184, 0
  %m.stop186 = or i1 %m.is.empty185, %m.reached.cap182
  br i1 %m.stop186, label %m.empty177, label %m.check.tomb172

m.check.tomb172:                                  ; preds = %m.loop171
  %m.is.tomb187 = icmp eq i8 %m.state184, 2
  br i1 %m.is.tomb187, label %m.tomb173, label %m.found174

m.tomb173:                                        ; preds = %m.check.tomb172
  %m.has.tomb188 = icmp ne i64 %m.tomb180, -1
  %m.tomb.sel189 = select i1 %m.has.tomb188, i64 %m.tomb180, i64 %m.idx179
  br label %m.next176

m.found174:                                       ; preds = %m.check.tomb172
  %m.key.slot190 = getelementptr i64, ptr %m.keys147, i64 %m.idx179
  %mk.stored191 = load ptr, ptr %m.key.slot190, align 8
  %mk.slen192 = getelementptr inbounds { i64, ptr }, ptr %mk.stored191, i32 0, i32 0
  %mk.slen193 = load i64, ptr %mk.slen192, align 8
  %mk.slen194 = and i64 %mk.slen193, 281474976710655
  %str.tag195 = lshr i64 %mk.slen193, 48
  %tag.immortal197 = icmp eq i64 %str.tag195, 0
  br i1 %tag.immortal197, label %str_ok196, label %tag.gen_check198

m.overwrite175:                                   ; preds = %mk.eq.merge223
  %m.val.slot231 = getelementptr i64, ptr %m.vals149, i64 %m.idx179
  store i64 %slot.p2i, ptr %m.val.slot231, align 8
  br label %m.done178

m.next176:                                        ; preds = %mk.eq.merge223, %m.tomb173
  %m.next.tomb232 = phi i64 [ %m.tomb.sel189, %m.tomb173 ], [ %m.tomb180, %mk.eq.merge223 ]
  %m.idx.add233 = add i64 %m.idx179, 1
  %m.idx.next234 = and i64 %m.idx.add233, %m.capm1169
  %m.probe.next235 = add i64 %m.probe181, 1
  br label %m.loop171

m.empty177:                                       ; preds = %m.loop171
  %m.use.tomb236 = icmp ne i64 %m.tomb180, -1
  %m.ins.idx237 = select i1 %m.use.tomb236, i64 %m.tomb180, i64 %m.idx179
  %m.key.slot238 = getelementptr i64, ptr %m.keys147, i64 %m.ins.idx237
  store ptr %var.load2, ptr %m.key.slot238, align 8
  %m.val.slot239 = getelementptr i64, ptr %m.vals149, i64 %m.ins.idx237
  store i64 %slot.p2i, ptr %m.val.slot239, align 8
  %m.ins.state.slot240 = getelementptr i8, ptr %m.states151, i64 %m.ins.idx237
  store i8 1, ptr %m.ins.state.slot240, align 1
  %m.count241 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count242 = load i64, ptr %m.count241, align 8
  %m.count.next243 = add i64 %m.count242, 1
  %m.count.gep244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next243, ptr %m.count.gep244, align 8
  %m.ins.tombs.p245 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs246 = load i64, ptr %m.ins.tombs.p245, align 8
  %m.tomb.dec247 = select i1 %m.use.tomb236, i64 1, i64 0
  %m.ins.tombs.next248 = sub i64 %m.ins.tombs246, %m.tomb.dec247
  store i64 %m.ins.tombs.next248, ptr %m.ins.tombs.p245, align 8
  br label %m.done178

m.done178:                                        ; preds = %m.empty177, %m.overwrite175
  br label %m.done

str_ok196:                                        ; preds = %abort.dead205, %tag.slow_check199, %tag.gen_check198, %m.found174
  %mk.nlen206 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen207 = load i64, ptr %mk.nlen206, align 8
  %mk.nlen208 = and i64 %mk.nlen207, 281474976710655
  %str.tag209 = lshr i64 %mk.nlen207, 48
  %tag.immortal211 = icmp eq i64 %str.tag209, 0
  br i1 %tag.immortal211, label %str_ok210, label %tag.gen_check212

tag.gen_check198:                                 ; preds = %m.found174
  %active.gen201 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok202 = icmp eq i64 %str.tag195, %active.gen201
  br i1 %tag.fast.ok202, label %str_ok196, label %tag.slow_check199

tag.slow_check199:                                ; preds = %tag.gen_check198
  %arena.cur203 = call ptr @dva_arena_current()
  %tag.valid204 = call i1 @dva_arena_validate_tag(ptr %arena.cur203, i64 %str.tag195)
  br i1 %tag.valid204, label %str_ok196, label %tag.stale200

tag.stale200:                                     ; preds = %tag.slow_check199
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %str_ok196

str_ok210:                                        ; preds = %abort.dead219, %tag.slow_check213, %tag.gen_check212, %str_ok196
  %mk.lenseq220 = icmp eq i64 %mk.slen194, %mk.nlen208
  br i1 %mk.lenseq220, label %mk.eq.then221, label %mk.eq.else222

tag.gen_check212:                                 ; preds = %str_ok196
  %active.gen215 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok216 = icmp eq i64 %str.tag209, %active.gen215
  br i1 %tag.fast.ok216, label %str_ok210, label %tag.slow_check213

tag.slow_check213:                                ; preds = %tag.gen_check212
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag209)
  br i1 %tag.valid218, label %str_ok210, label %tag.stale214

tag.stale214:                                     ; preds = %tag.slow_check213
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead219:                                    ; No predecessors!
  br label %str_ok210

mk.eq.then221:                                    ; preds = %str_ok210
  %mk.sdata224 = getelementptr inbounds { i64, ptr }, ptr %mk.stored191, i32 0, i32 1
  %mk.sdata225 = load ptr, ptr %mk.sdata224, align 8
  %mk.ndata226 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata227 = load ptr, ptr %mk.ndata226, align 8
  %mk.memcmp228 = call i32 @memcmp(ptr %mk.sdata225, ptr %mk.ndata227, i64 %mk.nlen208)
  %mk.cmpeq229 = icmp eq i32 %mk.memcmp228, 0
  br label %mk.eq.merge223

mk.eq.else222:                                    ; preds = %str_ok210
  br label %mk.eq.merge223

mk.eq.merge223:                                   ; preds = %mk.eq.else222, %mk.eq.then221
  %mk.eq230 = phi i1 [ %mk.cmpeq229, %mk.eq.then221 ], [ false, %mk.eq.else222 ]
  br i1 %mk.eq230, label %m.overwrite175, label %m.next176
}

declare i32 @memcmp(ptr, ptr, i64) #0

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #0 {
entry:
  %var.body = alloca ptr, align 8
  %var._117 = alloca ptr, align 8
  %var._116 = alloca ptr, align 8
  %var._115 = alloca ptr, align 8
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
  %var.load38 = load ptr, ptr %var.bodies, align 8
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
  %choice.res152 = phi ptr [ %var.load151, %choice.exit111 ], [ null, %choice.else ]
  ret ptr %choice.res152

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
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then109:                                   ; preds = %m.rd.done
  %ram.pay112 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay112 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %m.rd.done
  %ram.pay113 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr114 = inttoptr i64 %ram.pay113 to ptr
  store ptr %pay.ptr114, ptr %var._115, align 8
  store ptr %pay.ptr114, ptr %var._116, align 8
  store ptr %pay.ptr114, ptr %var._117, align 8
  %err.code.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr114, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep118, align 8
  %err.msg.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr114, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep119, align 8
  %err.file.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr114, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep120, align 8
  %err.line.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr114, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep121, align 8
  %err.col.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr114, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep122, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len123 = load i64, ptr %err.msg.len, align 8
  %err.msg.len124 = and i64 %err.msg.len123, 281474976710655
  %str.tag125 = lshr i64 %err.msg.len123, 48
  %tag.immortal127 = icmp eq i64 %str.tag125, 0
  br i1 %tag.immortal127, label %str_ok126, label %tag.gen_check128

choice.exit111:                                   ; preds = %err.abort, %choice.then109
  %choice.res = phi ptr [ %pay.ptr, %choice.then109 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load151 = load ptr, ptr %var.body, align 8
  br label %choice.exit

str_ok126:                                        ; preds = %abort.dead135, %tag.slow_check129, %tag.gen_check128, %choice.else110
  %err.msg.len32 = trunc i64 %err.msg.len124 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data136 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len137 = load i64, ptr %err.file.len, align 8
  %err.file.len138 = and i64 %err.file.len137, 281474976710655
  %str.tag139 = lshr i64 %err.file.len137, 48
  %tag.immortal141 = icmp eq i64 %str.tag139, 0
  br i1 %tag.immortal141, label %str_ok140, label %tag.gen_check142

tag.gen_check128:                                 ; preds = %choice.else110
  %active.gen131 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok132 = icmp eq i64 %str.tag125, %active.gen131
  br i1 %tag.fast.ok132, label %str_ok126, label %tag.slow_check129

tag.slow_check129:                                ; preds = %tag.gen_check128
  %arena.cur133 = call ptr @dva_arena_current()
  %tag.valid134 = call i1 @dva_arena_validate_tag(ptr %arena.cur133, i64 %str.tag125)
  br i1 %tag.valid134, label %str_ok126, label %tag.stale130

tag.stale130:                                     ; preds = %tag.slow_check129
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead135:                                    ; No predecessors!
  br label %str_ok126

str_ok140:                                        ; preds = %abort.dead149, %tag.slow_check143, %tag.gen_check142, %str_ok126
  %err.file.len32 = trunc i64 %err.file.len138 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data150 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check142:                                 ; preds = %str_ok126
  %active.gen145 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok146 = icmp eq i64 %str.tag139, %active.gen145
  br i1 %tag.fast.ok146, label %str_ok140, label %tag.slow_check143

tag.slow_check143:                                ; preds = %tag.gen_check142
  %arena.cur147 = call ptr @dva_arena_current()
  %tag.valid148 = call i1 @dva_arena_validate_tag(ptr %arena.cur147, i64 %str.tag139)
  br i1 %tag.valid148, label %str_ok140, label %tag.stale144

tag.stale144:                                     ; preds = %tag.slow_check143
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead149:                                    ; No predecessors!
  br label %str_ok140

err.thread:                                       ; preds = %str_ok140
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr114, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok140
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data136, i32 %err.file.len32, ptr %err.file.data150, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit111
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

choice.else:                                      ; preds = %and.171.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len52
  %choice.res = phi ptr [ %concat.str, %concat.tot.len52 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.pub, align 8
  %var.load60 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load60, label %choice.then61, label %choice.else62

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.then
  %cat.seg23 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg24 = load ptr, ptr %cat.seg23, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load25 = load ptr, ptr %var.name, align 8
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %cat.seg27 = load i64, ptr %cat.seg26, align 8
  %cat.seg28 = and i64 %cat.seg27, 281474976710655
  %str.tag29 = lshr i64 %cat.seg27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

tag.gen_check15:                                  ; preds = %choice.then
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

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %str_ok13
  %cat.seg40 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %cat.seg41 = load ptr, ptr %cat.seg40, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len42

tag.gen_check32:                                  ; preds = %str_ok13
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

cat.sum.len42:                                    ; preds = %abort.dead43, %str_ok30
  %cat.sum.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg28)
  %sum45 = extractvalue { i64, i1 } %cat.sum.len44, 0
  %ovf46 = extractvalue { i64, i1 } %cat.sum.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %cat.sum.len47

str_overflow_abort:                               ; preds = %str_ok30
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %cat.sum.len42

cat.sum.len47:                                    ; preds = %abort.dead49, %cat.sum.len42
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum50 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf51 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.tot.len52

str_overflow_abort48:                             ; preds = %cat.sum.len42
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %cat.sum.len47

concat.tot.len52:                                 ; preds = %abort.dead54, %cat.sum.len47
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg24, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst56 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst56, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off57 = add i64 %cat.off, 2
  %cat.dst58 = getelementptr i8, ptr %concat.buf, i64 %cat.off57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst58, ptr align 1 %cat.seg41, i64 %cat.seg28, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum45
  store i8 0, ptr %concat.nul, align 1
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum45, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort53:                             ; preds = %cat.sum.len47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %concat.tot.len52

choice.then61:                                    ; preds = %choice.exit
  %var.load64 = load ptr, ptr %var.env, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load64, i32 0, i32 8
  %fld.load66 = load ptr, ptr %fld.gep65, align 8
  %cat.seg67 = getelementptr inbounds { i64, ptr }, ptr %fld.load66, i32 0, i32 0
  %cat.seg68 = load i64, ptr %cat.seg67, align 8
  %cat.seg69 = and i64 %cat.seg68, 281474976710655
  %str.tag70 = lshr i64 %cat.seg68, 48
  %tag.immortal72 = icmp eq i64 %str.tag70, 0
  br i1 %tag.immortal72, label %str_ok71, label %tag.gen_check73

choice.else62:                                    ; preds = %choice.exit
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %concat.tot.len116
  %choice.res131 = phi ptr [ %concat.str128, %concat.tot.len116 ], [ @str.0.struct, %choice.else62 ]
  store ptr %choice.res131, ptr %var.priv, align 8
  %var.load132 = load ptr, ptr %var.env, align 8
  %fld.gep133 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load132, i32 0, i32 13
  %fld.load134 = load ptr, ptr %fld.gep133, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load134, i32 0, i32 0
  %arr.cycle.len135 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load134, i32 0, i32 1
  %arr.cycle.data136 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.174, align 8
  br label %loop.header.174

str_ok71:                                         ; preds = %abort.dead80, %tag.slow_check74, %tag.gen_check73, %choice.then61
  %cat.seg81 = getelementptr inbounds { i64, ptr }, ptr %fld.load66, i32 0, i32 1
  %cat.seg82 = load ptr, ptr %cat.seg81, align 8
  %cat.lit.data83 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load84 = load ptr, ptr %var.name, align 8
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %cat.seg86 = load i64, ptr %cat.seg85, align 8
  %cat.seg87 = and i64 %cat.seg86, 281474976710655
  %str.tag88 = lshr i64 %cat.seg86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  br i1 %tag.immortal90, label %str_ok89, label %tag.gen_check91

tag.gen_check73:                                  ; preds = %choice.then61
  %active.gen76 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok77 = icmp eq i64 %str.tag70, %active.gen76
  br i1 %tag.fast.ok77, label %str_ok71, label %tag.slow_check74

tag.slow_check74:                                 ; preds = %tag.gen_check73
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag70)
  br i1 %tag.valid79, label %str_ok71, label %tag.stale75

tag.stale75:                                      ; preds = %tag.slow_check74
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %str_ok71

str_ok89:                                         ; preds = %abort.dead98, %tag.slow_check92, %tag.gen_check91, %str_ok71
  %cat.seg99 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %cat.seg100 = load ptr, ptr %cat.seg99, align 8
  %cat.sum.len101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg69, i64 3)
  %sum102 = extractvalue { i64, i1 } %cat.sum.len101, 0
  %ovf103 = extractvalue { i64, i1 } %cat.sum.len101, 1
  br i1 %ovf103, label %str_overflow_abort105, label %cat.sum.len104

tag.gen_check91:                                  ; preds = %str_ok71
  %active.gen94 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok95 = icmp eq i64 %str.tag88, %active.gen94
  br i1 %tag.fast.ok95, label %str_ok89, label %tag.slow_check92

tag.slow_check92:                                 ; preds = %tag.gen_check91
  %arena.cur96 = call ptr @dva_arena_current()
  %tag.valid97 = call i1 @dva_arena_validate_tag(ptr %arena.cur96, i64 %str.tag88)
  br i1 %tag.valid97, label %str_ok89, label %tag.stale93

tag.stale93:                                      ; preds = %tag.slow_check92
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %str_ok89

cat.sum.len104:                                   ; preds = %abort.dead106, %str_ok89
  %cat.sum.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum102, i64 %cat.seg87)
  %sum108 = extractvalue { i64, i1 } %cat.sum.len107, 0
  %ovf109 = extractvalue { i64, i1 } %cat.sum.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %cat.sum.len110

str_overflow_abort105:                            ; preds = %str_ok89
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %cat.sum.len104

cat.sum.len110:                                   ; preds = %abort.dead112, %cat.sum.len104
  %concat.tot.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum108, i64 1)
  %sum114 = extractvalue { i64, i1 } %concat.tot.len113, 0
  %ovf115 = extractvalue { i64, i1 } %concat.tot.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %concat.tot.len116

str_overflow_abort111:                            ; preds = %cat.sum.len104
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead112:                                    ; No predecessors!
  br label %cat.sum.len110

concat.tot.len116:                                ; preds = %abort.dead118, %cat.sum.len110
  %arena.cur119 = call ptr @dva_arena_current()
  %concat.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum114)
  %cat.dst121 = getelementptr i8, ptr %concat.buf120, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst121, ptr align 1 %cat.seg82, i64 %cat.seg69, i1 false)
  %cat.off122 = add i64 0, %cat.seg69
  %cat.dst123 = getelementptr i8, ptr %concat.buf120, i64 %cat.off122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst123, ptr align 1 %cat.lit.data83, i64 3, i1 false)
  %cat.off124 = add i64 %cat.off122, 3
  %cat.dst125 = getelementptr i8, ptr %concat.buf120, i64 %cat.off124
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst125, ptr align 1 %cat.seg100, i64 %cat.seg87, i1 false)
  %concat.nul126 = getelementptr i8, ptr %concat.buf120, i64 %sum108
  store i8 0, ptr %concat.nul126, align 1
  %arena.cur127 = call ptr @dva_arena_current()
  %concat.str128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 16)
  %str.build.len.gep129 = getelementptr inbounds { i64, ptr }, ptr %concat.str128, i32 0, i32 0
  store i64 %sum108, ptr %str.build.len.gep129, align 8
  %str.build.data.gep130 = getelementptr inbounds { i64, ptr }, ptr %concat.str128, i32 0, i32 1
  store ptr %concat.buf120, ptr %str.build.data.gep130, align 8
  br label %choice.exit63

str_overflow_abort117:                            ; preds = %cat.sum.len110
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %concat.tot.len116

loop.header.174:                                  ; preds = %loop.latch.174, %choice.exit63
  %counter.load = load i64, ptr %loop.idx.174, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len135
  br i1 %loop.cond, label %loop.body.174, label %loop.exit.nat.174

loop.body.174:                                    ; preds = %loop.header.174
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.174, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data136, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load137 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load137, label %choice.then138, label %choice.else139

loop.exit.nat.174:                                ; preds = %loop.header.174
  br label %loop.exit.174

loop.latch.174:                                   ; preds = %choice.exit200
  %step.val = load i64, ptr %loop.step.174, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.174, align 8
  br label %loop.header.174

loop.exit.174:                                    ; preds = %loop.exit.nat.174
  ret i1 false

choice.then138:                                   ; preds = %loop.body.174
  %var.load141 = load ptr, ptr %var.n, align 8
  %var.load142 = load ptr, ptr %var.pub, align 8
  %eq.lhs.len143 = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %eq.lhs.len144 = load i64, ptr %eq.lhs.len143, align 8
  %eq.lhs.len145 = and i64 %eq.lhs.len144, 281474976710655
  %eq.rhs.len146 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 0
  %eq.rhs.len147 = load i64, ptr %eq.rhs.len146, align 8
  %eq.rhs.len148 = and i64 %eq.rhs.len147, 281474976710655
  %eq.len149 = icmp eq i64 %eq.lhs.len145, %eq.rhs.len148
  br i1 %eq.len149, label %str.eq.then150, label %str.eq.else151

choice.else139:                                   ; preds = %loop.body.174
  %var.load179 = load ptr, ptr %var.n, align 8
  %var.load180 = load ptr, ptr %var.name, align 8
  %eq.lhs.len181 = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 0
  %eq.lhs.len182 = load i64, ptr %eq.lhs.len181, align 8
  %eq.lhs.len183 = and i64 %eq.lhs.len182, 281474976710655
  %eq.rhs.len184 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 0
  %eq.rhs.len185 = load i64, ptr %eq.rhs.len184, align 8
  %eq.rhs.len186 = and i64 %eq.rhs.len185, 281474976710655
  %eq.len187 = icmp eq i64 %eq.lhs.len183, %eq.rhs.len186
  br i1 %eq.len187, label %str.eq.then188, label %str.eq.else189

choice.exit140:                                   ; preds = %str.eq.merge190, %or.175.exit
  %choice.res198 = phi i1 [ %or.175.phi, %or.175.exit ], [ %str.eq.result197, %str.eq.merge190 ]
  br i1 %choice.res198, label %choice.then199, label %choice.exit200

str.eq.then150:                                   ; preds = %choice.then138
  %eq.lhs.data153 = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 1
  %eq.lhs.data154 = load ptr, ptr %eq.lhs.data153, align 8
  %eq.rhs.data155 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 1
  %eq.rhs.data156 = load ptr, ptr %eq.rhs.data155, align 8
  %eq.memcmp157 = call i32 @memcmp(ptr %eq.lhs.data154, ptr %eq.rhs.data156, i64 %eq.lhs.len145)
  %eq.cmp.zero158 = icmp eq i32 %eq.memcmp157, 0
  br label %str.eq.merge152

str.eq.else151:                                   ; preds = %choice.then138
  br label %str.eq.merge152

str.eq.merge152:                                  ; preds = %str.eq.else151, %str.eq.then150
  %str.eq.result159 = phi i1 [ %eq.cmp.zero158, %str.eq.then150 ], [ false, %str.eq.else151 ]
  br i1 %str.eq.result159, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %str.eq.merge152
  br label %or.175.exit

or.175.else:                                      ; preds = %str.eq.merge152
  %var.load160 = load ptr, ptr %var.n, align 8
  %var.load161 = load ptr, ptr %var.priv, align 8
  %eq.lhs.len162 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %eq.lhs.len163 = load i64, ptr %eq.lhs.len162, align 8
  %eq.lhs.len164 = and i64 %eq.lhs.len163, 281474976710655
  %eq.rhs.len165 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 0
  %eq.rhs.len166 = load i64, ptr %eq.rhs.len165, align 8
  %eq.rhs.len167 = and i64 %eq.rhs.len166, 281474976710655
  %eq.len168 = icmp eq i64 %eq.lhs.len164, %eq.rhs.len167
  br i1 %eq.len168, label %str.eq.then169, label %str.eq.else170

or.175.exit:                                      ; preds = %str.eq.merge171, %or.175.then
  %or.175.phi = phi i1 [ %str.eq.result159, %or.175.then ], [ %str.eq.result178, %str.eq.merge171 ]
  br label %choice.exit140

str.eq.then169:                                   ; preds = %or.175.else
  %eq.lhs.data172 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 1
  %eq.lhs.data173 = load ptr, ptr %eq.lhs.data172, align 8
  %eq.rhs.data174 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 1
  %eq.rhs.data175 = load ptr, ptr %eq.rhs.data174, align 8
  %eq.memcmp176 = call i32 @memcmp(ptr %eq.lhs.data173, ptr %eq.rhs.data175, i64 %eq.lhs.len164)
  %eq.cmp.zero177 = icmp eq i32 %eq.memcmp176, 0
  br label %str.eq.merge171

str.eq.else170:                                   ; preds = %or.175.else
  br label %str.eq.merge171

str.eq.merge171:                                  ; preds = %str.eq.else170, %str.eq.then169
  %str.eq.result178 = phi i1 [ %eq.cmp.zero177, %str.eq.then169 ], [ false, %str.eq.else170 ]
  br label %or.175.exit

str.eq.then188:                                   ; preds = %choice.else139
  %eq.lhs.data191 = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 1
  %eq.lhs.data192 = load ptr, ptr %eq.lhs.data191, align 8
  %eq.rhs.data193 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 1
  %eq.rhs.data194 = load ptr, ptr %eq.rhs.data193, align 8
  %eq.memcmp195 = call i32 @memcmp(ptr %eq.lhs.data192, ptr %eq.rhs.data194, i64 %eq.lhs.len183)
  %eq.cmp.zero196 = icmp eq i32 %eq.memcmp195, 0
  br label %str.eq.merge190

str.eq.else189:                                   ; preds = %choice.else139
  br label %str.eq.merge190

str.eq.merge190:                                  ; preds = %str.eq.else189, %str.eq.then188
  %str.eq.result197 = phi i1 [ %eq.cmp.zero196, %str.eq.then188 ], [ false, %str.eq.else189 ]
  br label %choice.exit140

choice.then199:                                   ; preds = %choice.exit140
  ret i1 true

choice.exit200:                                   ; preds = %ret.dead, %choice.exit140
  br label %loop.latch.174

ret.dead:                                         ; No predecessors!
  br label %choice.exit200
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.172.then, label %and.172.else

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

and.172.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.172.else:                                     ; preds = %str_ok
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %idx_ok
  %and.172.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.172.else ]
  br i1 %and.172.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.172.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.172.exit

idx_oob:                                          ; preds = %idx_big_check, %and.172.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.172.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.172.exit
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
  br i1 %cmptmp27, label %and.173.then, label %and.173.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.173.then:                                     ; preds = %idx_ok20
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

and.173.else:                                     ; preds = %idx_ok20
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok38
  %and.173.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.173.else ]
  br i1 %and.173.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.173.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.173.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.173.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.173.exit
  br label %choice.exit48

choice.else47:                                    ; preds = %and.173.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load49, i64 %addtmp51)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i1 [ true, %choice.then46 ], [ %call.res, %choice.else47 ]
  br label %choice.exit
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %and.176.exit
  %eq.rhs.len23 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len24 = and i64 %eq.rhs.len23, 281474976710655
  %eq.len25 = icmp eq i64 %eq.lhs.len11, %eq.rhs.len24
  br i1 %eq.len25, label %str.eq.then26, label %str.eq.else27

tag.gen_check15:                                  ; preds = %and.176.exit
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

str.eq.then26:                                    ; preds = %str_ok13
  %eq.lhs.data29 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %eq.lhs.data30 = load ptr, ptr %eq.lhs.data29, align 8
  %eq.rhs.data31 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp32 = call i32 @memcmp(ptr %eq.lhs.data30, ptr %eq.rhs.data31, i64 %eq.lhs.len11)
  %eq.cmp.zero33 = icmp eq i32 %eq.memcmp32, 0
  br label %str.eq.merge28

str.eq.else27:                                    ; preds = %str_ok13
  br label %str.eq.merge28

str.eq.merge28:                                   ; preds = %str.eq.else27, %str.eq.then26
  %str.eq.result34 = phi i1 [ %eq.cmp.zero33, %str.eq.then26 ], [ false, %str.eq.else27 ]
  %str.neq35 = xor i1 %str.eq.result34, true
  br i1 %str.neq35, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge28
  %var.load36 = load ptr, ptr %var.env, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load36, i32 0, i32 8
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load38, i32 0, i32 0
  %cat.seg39 = load i64, ptr %cat.seg, align 8
  %cat.seg40 = and i64 %cat.seg39, 281474976710655
  %str.tag41 = lshr i64 %cat.seg39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  br i1 %tag.immortal43, label %str_ok42, label %tag.gen_check44

choice.else:                                      ; preds = %str.eq.merge28
  %var.load89 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len81
  %choice.res = phi ptr [ %concat.str, %concat.tot.len81 ], [ %var.load89, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load90 = load ptr, ptr %var.env, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load90, i32 0, i32 8
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %eq.lhs.len93 = getelementptr inbounds { i64, ptr }, ptr %fld.load92, i32 0, i32 0
  %eq.lhs.len94 = load i64, ptr %eq.lhs.len93, align 8
  %eq.lhs.len95 = and i64 %eq.lhs.len94, 281474976710655
  %str.tag96 = lshr i64 %eq.lhs.len94, 48
  %tag.immortal98 = icmp eq i64 %str.tag96, 0
  br i1 %tag.immortal98, label %str_ok97, label %tag.gen_check99

str_ok42:                                         ; preds = %abort.dead51, %tag.slow_check45, %tag.gen_check44, %choice.then
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %fld.load38, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load54 = load ptr, ptr %var.name, align 8
  %cat.seg55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %cat.seg56 = load i64, ptr %cat.seg55, align 8
  %cat.seg57 = and i64 %cat.seg56, 281474976710655
  %str.tag58 = lshr i64 %cat.seg56, 48
  %tag.immortal60 = icmp eq i64 %str.tag58, 0
  br i1 %tag.immortal60, label %str_ok59, label %tag.gen_check61

tag.gen_check44:                                  ; preds = %choice.then
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok48 = icmp eq i64 %str.tag41, %active.gen47
  br i1 %tag.fast.ok48, label %str_ok42, label %tag.slow_check45

tag.slow_check45:                                 ; preds = %tag.gen_check44
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag41)
  br i1 %tag.valid50, label %str_ok42, label %tag.stale46

tag.stale46:                                      ; preds = %tag.slow_check45
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %str_ok42

str_ok59:                                         ; preds = %abort.dead68, %tag.slow_check62, %tag.gen_check61, %str_ok42
  %cat.seg69 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %cat.seg70 = load ptr, ptr %cat.seg69, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg40, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len71

tag.gen_check61:                                  ; preds = %str_ok42
  %active.gen64 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok65 = icmp eq i64 %str.tag58, %active.gen64
  br i1 %tag.fast.ok65, label %str_ok59, label %tag.slow_check62

tag.slow_check62:                                 ; preds = %tag.gen_check61
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag58)
  br i1 %tag.valid67, label %str_ok59, label %tag.stale63

tag.stale63:                                      ; preds = %tag.slow_check62
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %str_ok59

cat.sum.len71:                                    ; preds = %abort.dead72, %str_ok59
  %cat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg57)
  %sum74 = extractvalue { i64, i1 } %cat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %cat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %cat.sum.len76

str_overflow_abort:                               ; preds = %str_ok59
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %cat.sum.len71

cat.sum.len76:                                    ; preds = %abort.dead78, %cat.sum.len71
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 1)
  %sum79 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf80 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf80, label %str_overflow_abort82, label %concat.tot.len81

str_overflow_abort77:                             ; preds = %cat.sum.len71
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %cat.sum.len76

concat.tot.len81:                                 ; preds = %abort.dead83, %cat.sum.len76
  %arena.cur84 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum79)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg53, i64 %cat.seg40, i1 false)
  %cat.off = add i64 0, %cat.seg40
  %cat.dst85 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst85, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off86 = add i64 %cat.off, 2
  %cat.dst87 = getelementptr i8, ptr %concat.buf, i64 %cat.off86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst87, ptr align 1 %cat.seg70, i64 %cat.seg57, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum74
  store i8 0, ptr %concat.nul, align 1
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum74, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort82:                             ; preds = %cat.sum.len76
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %concat.tot.len81

str_ok97:                                         ; preds = %abort.dead106, %tag.slow_check100, %tag.gen_check99, %choice.exit
  %eq.rhs.len107 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len108 = and i64 %eq.rhs.len107, 281474976710655
  %eq.len109 = icmp eq i64 %eq.lhs.len95, %eq.rhs.len108
  br i1 %eq.len109, label %str.eq.then110, label %str.eq.else111

tag.gen_check99:                                  ; preds = %choice.exit
  %active.gen102 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok103 = icmp eq i64 %str.tag96, %active.gen102
  br i1 %tag.fast.ok103, label %str_ok97, label %tag.slow_check100

tag.slow_check100:                                ; preds = %tag.gen_check99
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag96)
  br i1 %tag.valid105, label %str_ok97, label %tag.stale101

tag.stale101:                                     ; preds = %tag.slow_check100
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %str_ok97

str.eq.then110:                                   ; preds = %str_ok97
  %eq.lhs.data113 = getelementptr inbounds { i64, ptr }, ptr %fld.load92, i32 0, i32 1
  %eq.lhs.data114 = load ptr, ptr %eq.lhs.data113, align 8
  %eq.rhs.data115 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp116 = call i32 @memcmp(ptr %eq.lhs.data114, ptr %eq.rhs.data115, i64 %eq.lhs.len95)
  %eq.cmp.zero117 = icmp eq i32 %eq.memcmp116, 0
  br label %str.eq.merge112

str.eq.else111:                                   ; preds = %str_ok97
  br label %str.eq.merge112

str.eq.merge112:                                  ; preds = %str.eq.else111, %str.eq.then110
  %str.eq.result118 = phi i1 [ %eq.cmp.zero117, %str.eq.then110 ], [ false, %str.eq.else111 ]
  %str.neq119 = xor i1 %str.eq.result118, true
  br i1 %str.neq119, label %choice.then120, label %choice.else121

choice.then120:                                   ; preds = %str.eq.merge112
  %var.load123 = load ptr, ptr %var.env, align 8
  %fld.gep124 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load123, i32 0, i32 8
  %fld.load125 = load ptr, ptr %fld.gep124, align 8
  %cat.seg126 = getelementptr inbounds { i64, ptr }, ptr %fld.load125, i32 0, i32 0
  %cat.seg127 = load i64, ptr %cat.seg126, align 8
  %cat.seg128 = and i64 %cat.seg127, 281474976710655
  %str.tag129 = lshr i64 %cat.seg127, 48
  %tag.immortal131 = icmp eq i64 %str.tag129, 0
  br i1 %tag.immortal131, label %str_ok130, label %tag.gen_check132

choice.else121:                                   ; preds = %str.eq.merge112
  %var.load190 = load ptr, ptr %var.name, align 8
  br label %choice.exit122

choice.exit122:                                   ; preds = %choice.else121, %concat.tot.len175
  %choice.res191 = phi ptr [ %concat.str187, %concat.tot.len175 ], [ %var.load190, %choice.else121 ]
  store ptr %choice.res191, ptr %var.private_name, align 8
  %var.load192 = load ptr, ptr %var.env, align 8
  %fld.gep193 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load192, i32 0, i32 14
  %fld.load194 = load ptr, ptr %fld.gep193, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load194, i32 0, i32 0
  %arr.cycle.len195 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load194, i32 0, i32 1
  %arr.cycle.data196 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.177, align 8
  br label %loop.header.177

str_ok130:                                        ; preds = %abort.dead139, %tag.slow_check133, %tag.gen_check132, %choice.then120
  %cat.seg140 = getelementptr inbounds { i64, ptr }, ptr %fld.load125, i32 0, i32 1
  %cat.seg141 = load ptr, ptr %cat.seg140, align 8
  %cat.lit.data142 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load143 = load ptr, ptr %var.name, align 8
  %cat.seg144 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 0
  %cat.seg145 = load i64, ptr %cat.seg144, align 8
  %cat.seg146 = and i64 %cat.seg145, 281474976710655
  %str.tag147 = lshr i64 %cat.seg145, 48
  %tag.immortal149 = icmp eq i64 %str.tag147, 0
  br i1 %tag.immortal149, label %str_ok148, label %tag.gen_check150

tag.gen_check132:                                 ; preds = %choice.then120
  %active.gen135 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok136 = icmp eq i64 %str.tag129, %active.gen135
  br i1 %tag.fast.ok136, label %str_ok130, label %tag.slow_check133

tag.slow_check133:                                ; preds = %tag.gen_check132
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag129)
  br i1 %tag.valid138, label %str_ok130, label %tag.stale134

tag.stale134:                                     ; preds = %tag.slow_check133
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead139:                                    ; No predecessors!
  br label %str_ok130

str_ok148:                                        ; preds = %abort.dead157, %tag.slow_check151, %tag.gen_check150, %str_ok130
  %cat.seg158 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 1
  %cat.seg159 = load ptr, ptr %cat.seg158, align 8
  %cat.sum.len160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg128, i64 3)
  %sum161 = extractvalue { i64, i1 } %cat.sum.len160, 0
  %ovf162 = extractvalue { i64, i1 } %cat.sum.len160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %cat.sum.len163

tag.gen_check150:                                 ; preds = %str_ok130
  %active.gen153 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok154 = icmp eq i64 %str.tag147, %active.gen153
  br i1 %tag.fast.ok154, label %str_ok148, label %tag.slow_check151

tag.slow_check151:                                ; preds = %tag.gen_check150
  %arena.cur155 = call ptr @dva_arena_current()
  %tag.valid156 = call i1 @dva_arena_validate_tag(ptr %arena.cur155, i64 %str.tag147)
  br i1 %tag.valid156, label %str_ok148, label %tag.stale152

tag.stale152:                                     ; preds = %tag.slow_check151
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead157:                                    ; No predecessors!
  br label %str_ok148

cat.sum.len163:                                   ; preds = %abort.dead165, %str_ok148
  %cat.sum.len166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum161, i64 %cat.seg146)
  %sum167 = extractvalue { i64, i1 } %cat.sum.len166, 0
  %ovf168 = extractvalue { i64, i1 } %cat.sum.len166, 1
  br i1 %ovf168, label %str_overflow_abort170, label %cat.sum.len169

str_overflow_abort164:                            ; preds = %str_ok148
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %cat.sum.len163

cat.sum.len169:                                   ; preds = %abort.dead171, %cat.sum.len163
  %concat.tot.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum167, i64 1)
  %sum173 = extractvalue { i64, i1 } %concat.tot.len172, 0
  %ovf174 = extractvalue { i64, i1 } %concat.tot.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.tot.len175

str_overflow_abort170:                            ; preds = %cat.sum.len163
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead171:                                    ; No predecessors!
  br label %cat.sum.len169

concat.tot.len175:                                ; preds = %abort.dead177, %cat.sum.len169
  %arena.cur178 = call ptr @dva_arena_current()
  %concat.buf179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 %sum173)
  %cat.dst180 = getelementptr i8, ptr %concat.buf179, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst180, ptr align 1 %cat.seg141, i64 %cat.seg128, i1 false)
  %cat.off181 = add i64 0, %cat.seg128
  %cat.dst182 = getelementptr i8, ptr %concat.buf179, i64 %cat.off181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst182, ptr align 1 %cat.lit.data142, i64 3, i1 false)
  %cat.off183 = add i64 %cat.off181, 3
  %cat.dst184 = getelementptr i8, ptr %concat.buf179, i64 %cat.off183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst184, ptr align 1 %cat.seg159, i64 %cat.seg146, i1 false)
  %concat.nul185 = getelementptr i8, ptr %concat.buf179, i64 %sum167
  store i8 0, ptr %concat.nul185, align 1
  %arena.cur186 = call ptr @dva_arena_current()
  %concat.str187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 0
  store i64 %sum167, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 1
  store ptr %concat.buf179, ptr %str.build.data.gep189, align 8
  br label %choice.exit122

str_overflow_abort176:                            ; preds = %cat.sum.len169
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead177:                                    ; No predecessors!
  br label %concat.tot.len175

loop.header.177:                                  ; preds = %loop.latch.177, %choice.exit122
  %counter.load = load i64, ptr %loop.idx.177, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len195
  br i1 %loop.cond, label %loop.body.177, label %loop.exit.nat.177

loop.body.177:                                    ; preds = %loop.header.177
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.177, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data196, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load197 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load197, label %choice.then198, label %choice.else199

loop.exit.nat.177:                                ; preds = %loop.header.177
  br label %loop.exit.177

loop.latch.177:                                   ; preds = %choice.exit381
  %step.val = load i64, ptr %loop.step.177, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.177, align 8
  br label %loop.header.177

loop.exit.177:                                    ; preds = %loop.exit.nat.177
  ret i1 false

choice.then198:                                   ; preds = %loop.body.177
  %var.load201 = load ptr, ptr %var.n, align 8
  %var.load202 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len203 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 0
  %eq.lhs.len204 = load i64, ptr %eq.lhs.len203, align 8
  %eq.lhs.len205 = and i64 %eq.lhs.len204, 281474976710655
  %eq.rhs.len206 = getelementptr inbounds { i64, ptr }, ptr %var.load202, i32 0, i32 0
  %eq.rhs.len207 = load i64, ptr %eq.rhs.len206, align 8
  %eq.rhs.len208 = and i64 %eq.rhs.len207, 281474976710655
  %eq.len209 = icmp eq i64 %eq.lhs.len205, %eq.rhs.len208
  br i1 %eq.len209, label %str.eq.then210, label %str.eq.else211

choice.else199:                                   ; preds = %loop.body.177
  %var.load239 = load ptr, ptr %var.n, align 8
  %var.load240 = load ptr, ptr %var.name, align 8
  %eq.lhs.len241 = getelementptr inbounds { i64, ptr }, ptr %var.load239, i32 0, i32 0
  %eq.lhs.len242 = load i64, ptr %eq.lhs.len241, align 8
  %eq.lhs.len243 = and i64 %eq.lhs.len242, 281474976710655
  %eq.rhs.len244 = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 0
  %eq.rhs.len245 = load i64, ptr %eq.rhs.len244, align 8
  %eq.rhs.len246 = and i64 %eq.rhs.len245, 281474976710655
  %eq.len247 = icmp eq i64 %eq.lhs.len243, %eq.rhs.len246
  br i1 %eq.len247, label %str.eq.then248, label %str.eq.else249

choice.exit200:                                   ; preds = %or.181.exit, %or.178.exit
  %choice.res378 = phi i1 [ %or.178.phi, %or.178.exit ], [ %or.181.phi, %or.181.exit ]
  store i1 %choice.res378, ptr %var.match, align 1
  %var.load379 = load i1, ptr %var.match, align 1
  br i1 %var.load379, label %choice.then380, label %choice.exit381

str.eq.then210:                                   ; preds = %choice.then198
  %eq.lhs.data213 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 1
  %eq.lhs.data214 = load ptr, ptr %eq.lhs.data213, align 8
  %eq.rhs.data215 = getelementptr inbounds { i64, ptr }, ptr %var.load202, i32 0, i32 1
  %eq.rhs.data216 = load ptr, ptr %eq.rhs.data215, align 8
  %eq.memcmp217 = call i32 @memcmp(ptr %eq.lhs.data214, ptr %eq.rhs.data216, i64 %eq.lhs.len205)
  %eq.cmp.zero218 = icmp eq i32 %eq.memcmp217, 0
  br label %str.eq.merge212

str.eq.else211:                                   ; preds = %choice.then198
  br label %str.eq.merge212

str.eq.merge212:                                  ; preds = %str.eq.else211, %str.eq.then210
  %str.eq.result219 = phi i1 [ %eq.cmp.zero218, %str.eq.then210 ], [ false, %str.eq.else211 ]
  br i1 %str.eq.result219, label %or.178.then, label %or.178.else

or.178.then:                                      ; preds = %str.eq.merge212
  br label %or.178.exit

or.178.else:                                      ; preds = %str.eq.merge212
  %var.load220 = load ptr, ptr %var.n, align 8
  %var.load221 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len222 = getelementptr inbounds { i64, ptr }, ptr %var.load220, i32 0, i32 0
  %eq.lhs.len223 = load i64, ptr %eq.lhs.len222, align 8
  %eq.lhs.len224 = and i64 %eq.lhs.len223, 281474976710655
  %eq.rhs.len225 = getelementptr inbounds { i64, ptr }, ptr %var.load221, i32 0, i32 0
  %eq.rhs.len226 = load i64, ptr %eq.rhs.len225, align 8
  %eq.rhs.len227 = and i64 %eq.rhs.len226, 281474976710655
  %eq.len228 = icmp eq i64 %eq.lhs.len224, %eq.rhs.len227
  br i1 %eq.len228, label %str.eq.then229, label %str.eq.else230

or.178.exit:                                      ; preds = %str.eq.merge231, %or.178.then
  %or.178.phi = phi i1 [ %str.eq.result219, %or.178.then ], [ %str.eq.result238, %str.eq.merge231 ]
  br label %choice.exit200

str.eq.then229:                                   ; preds = %or.178.else
  %eq.lhs.data232 = getelementptr inbounds { i64, ptr }, ptr %var.load220, i32 0, i32 1
  %eq.lhs.data233 = load ptr, ptr %eq.lhs.data232, align 8
  %eq.rhs.data234 = getelementptr inbounds { i64, ptr }, ptr %var.load221, i32 0, i32 1
  %eq.rhs.data235 = load ptr, ptr %eq.rhs.data234, align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data233, ptr %eq.rhs.data235, i64 %eq.lhs.len224)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br label %str.eq.merge231

str.eq.else230:                                   ; preds = %or.178.else
  br label %str.eq.merge231

str.eq.merge231:                                  ; preds = %str.eq.else230, %str.eq.then229
  %str.eq.result238 = phi i1 [ %eq.cmp.zero237, %str.eq.then229 ], [ false, %str.eq.else230 ]
  br label %or.178.exit

str.eq.then248:                                   ; preds = %choice.else199
  %eq.lhs.data251 = getelementptr inbounds { i64, ptr }, ptr %var.load239, i32 0, i32 1
  %eq.lhs.data252 = load ptr, ptr %eq.lhs.data251, align 8
  %eq.rhs.data253 = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 1
  %eq.rhs.data254 = load ptr, ptr %eq.rhs.data253, align 8
  %eq.memcmp255 = call i32 @memcmp(ptr %eq.lhs.data252, ptr %eq.rhs.data254, i64 %eq.lhs.len243)
  %eq.cmp.zero256 = icmp eq i32 %eq.memcmp255, 0
  br label %str.eq.merge250

str.eq.else249:                                   ; preds = %choice.else199
  br label %str.eq.merge250

str.eq.merge250:                                  ; preds = %str.eq.else249, %str.eq.then248
  %str.eq.result257 = phi i1 [ %eq.cmp.zero256, %str.eq.then248 ], [ false, %str.eq.else249 ]
  br i1 %str.eq.result257, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %str.eq.merge250
  br label %or.179.exit

or.179.else:                                      ; preds = %str.eq.merge250
  %var.load258 = load ptr, ptr %var.n, align 8
  %var.load259 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len260 = getelementptr inbounds { i64, ptr }, ptr %var.load258, i32 0, i32 0
  %eq.lhs.len261 = load i64, ptr %eq.lhs.len260, align 8
  %eq.lhs.len262 = and i64 %eq.lhs.len261, 281474976710655
  %eq.rhs.len263 = getelementptr inbounds { i64, ptr }, ptr %var.load259, i32 0, i32 0
  %eq.rhs.len264 = load i64, ptr %eq.rhs.len263, align 8
  %eq.rhs.len265 = and i64 %eq.rhs.len264, 281474976710655
  %eq.len266 = icmp eq i64 %eq.lhs.len262, %eq.rhs.len265
  br i1 %eq.len266, label %str.eq.then267, label %str.eq.else268

or.179.exit:                                      ; preds = %str.eq.merge269, %or.179.then
  %or.179.phi = phi i1 [ %str.eq.result257, %or.179.then ], [ %str.eq.result276, %str.eq.merge269 ]
  br i1 %or.179.phi, label %or.180.then, label %or.180.else

str.eq.then267:                                   ; preds = %or.179.else
  %eq.lhs.data270 = getelementptr inbounds { i64, ptr }, ptr %var.load258, i32 0, i32 1
  %eq.lhs.data271 = load ptr, ptr %eq.lhs.data270, align 8
  %eq.rhs.data272 = getelementptr inbounds { i64, ptr }, ptr %var.load259, i32 0, i32 1
  %eq.rhs.data273 = load ptr, ptr %eq.rhs.data272, align 8
  %eq.memcmp274 = call i32 @memcmp(ptr %eq.lhs.data271, ptr %eq.rhs.data273, i64 %eq.lhs.len262)
  %eq.cmp.zero275 = icmp eq i32 %eq.memcmp274, 0
  br label %str.eq.merge269

str.eq.else268:                                   ; preds = %or.179.else
  br label %str.eq.merge269

str.eq.merge269:                                  ; preds = %str.eq.else268, %str.eq.then267
  %str.eq.result276 = phi i1 [ %eq.cmp.zero275, %str.eq.then267 ], [ false, %str.eq.else268 ]
  br label %or.179.exit

or.180.then:                                      ; preds = %or.179.exit
  br label %or.180.exit

or.180.else:                                      ; preds = %or.179.exit
  %var.load277 = load ptr, ptr %var.n, align 8
  %var.load278 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len279 = getelementptr inbounds { i64, ptr }, ptr %var.load277, i32 0, i32 0
  %eq.lhs.len280 = load i64, ptr %eq.lhs.len279, align 8
  %eq.lhs.len281 = and i64 %eq.lhs.len280, 281474976710655
  %eq.rhs.len282 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 0
  %eq.rhs.len283 = load i64, ptr %eq.rhs.len282, align 8
  %eq.rhs.len284 = and i64 %eq.rhs.len283, 281474976710655
  %eq.len285 = icmp eq i64 %eq.lhs.len281, %eq.rhs.len284
  br i1 %eq.len285, label %str.eq.then286, label %str.eq.else287

or.180.exit:                                      ; preds = %str.eq.merge288, %or.180.then
  %or.180.phi = phi i1 [ %or.179.phi, %or.180.then ], [ %str.eq.result295, %str.eq.merge288 ]
  br i1 %or.180.phi, label %or.181.then, label %or.181.else

str.eq.then286:                                   ; preds = %or.180.else
  %eq.lhs.data289 = getelementptr inbounds { i64, ptr }, ptr %var.load277, i32 0, i32 1
  %eq.lhs.data290 = load ptr, ptr %eq.lhs.data289, align 8
  %eq.rhs.data291 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 1
  %eq.rhs.data292 = load ptr, ptr %eq.rhs.data291, align 8
  %eq.memcmp293 = call i32 @memcmp(ptr %eq.lhs.data290, ptr %eq.rhs.data292, i64 %eq.lhs.len281)
  %eq.cmp.zero294 = icmp eq i32 %eq.memcmp293, 0
  br label %str.eq.merge288

str.eq.else287:                                   ; preds = %or.180.else
  br label %str.eq.merge288

str.eq.merge288:                                  ; preds = %str.eq.else287, %str.eq.then286
  %str.eq.result295 = phi i1 [ %eq.cmp.zero294, %str.eq.then286 ], [ false, %str.eq.else287 ]
  br label %or.180.exit

or.181.then:                                      ; preds = %or.180.exit
  br label %or.181.exit

or.181.else:                                      ; preds = %or.180.exit
  %var.load296 = load ptr, ptr %var.env, align 8
  %fld.gep297 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load296, i32 0, i32 8
  %fld.load298 = load ptr, ptr %fld.gep297, align 8
  %eq.lhs.len299 = getelementptr inbounds { i64, ptr }, ptr %fld.load298, i32 0, i32 0
  %eq.lhs.len300 = load i64, ptr %eq.lhs.len299, align 8
  %eq.lhs.len301 = and i64 %eq.lhs.len300, 281474976710655
  %eq.rhs.len302 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len303 = and i64 %eq.rhs.len302, 281474976710655
  %eq.len304 = icmp eq i64 %eq.lhs.len301, %eq.rhs.len303
  br i1 %eq.len304, label %str.eq.then305, label %str.eq.else306

or.181.exit:                                      ; preds = %and.182.exit, %or.181.then
  %or.181.phi = phi i1 [ %or.180.phi, %or.181.then ], [ %and.182.phi, %and.182.exit ]
  br label %choice.exit200

str.eq.then305:                                   ; preds = %or.181.else
  %eq.lhs.data308 = getelementptr inbounds { i64, ptr }, ptr %fld.load298, i32 0, i32 1
  %eq.lhs.data309 = load ptr, ptr %eq.lhs.data308, align 8
  %eq.rhs.data310 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp311 = call i32 @memcmp(ptr %eq.lhs.data309, ptr %eq.rhs.data310, i64 %eq.lhs.len301)
  %eq.cmp.zero312 = icmp eq i32 %eq.memcmp311, 0
  br label %str.eq.merge307

str.eq.else306:                                   ; preds = %or.181.else
  br label %str.eq.merge307

str.eq.merge307:                                  ; preds = %str.eq.else306, %str.eq.then305
  %str.eq.result313 = phi i1 [ %eq.cmp.zero312, %str.eq.then305 ], [ false, %str.eq.else306 ]
  %str.neq314 = xor i1 %str.eq.result313, true
  br i1 %str.neq314, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %str.eq.merge307
  %var.load315 = load ptr, ptr %var.name, align 8
  %var.load316 = load ptr, ptr %var.env, align 8
  %fld.gep317 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load316, i32 0, i32 8
  %fld.load318 = load ptr, ptr %fld.gep317, align 8
  %cat.seg319 = getelementptr inbounds { i64, ptr }, ptr %fld.load318, i32 0, i32 0
  %cat.seg320 = load i64, ptr %cat.seg319, align 8
  %cat.seg321 = and i64 %cat.seg320, 281474976710655
  %cat.seg322 = getelementptr inbounds { i64, ptr }, ptr %fld.load318, i32 0, i32 1
  %cat.seg323 = load ptr, ptr %cat.seg322, align 8
  %cat.lit.data324 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load325 = load ptr, ptr %var.n, align 8
  %cat.seg326 = getelementptr inbounds { i64, ptr }, ptr %var.load325, i32 0, i32 0
  %cat.seg327 = load i64, ptr %cat.seg326, align 8
  %cat.seg328 = and i64 %cat.seg327, 281474976710655
  %cat.seg329 = getelementptr inbounds { i64, ptr }, ptr %var.load325, i32 0, i32 1
  %cat.seg330 = load ptr, ptr %cat.seg329, align 8
  %cat.sum.len331 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg321, i64 2)
  %sum332 = extractvalue { i64, i1 } %cat.sum.len331, 0
  %ovf333 = extractvalue { i64, i1 } %cat.sum.len331, 1
  br i1 %ovf333, label %str_overflow_abort335, label %cat.sum.len334

and.182.else:                                     ; preds = %str.eq.merge307
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %str.eq.merge370
  %and.182.phi = phi i1 [ %str.eq.result377, %str.eq.merge370 ], [ %str.neq314, %and.182.else ]
  br label %or.181.exit

cat.sum.len334:                                   ; preds = %abort.dead336, %and.182.then
  %cat.sum.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum332, i64 %cat.seg328)
  %sum338 = extractvalue { i64, i1 } %cat.sum.len337, 0
  %ovf339 = extractvalue { i64, i1 } %cat.sum.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %cat.sum.len340

str_overflow_abort335:                            ; preds = %and.182.then
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead336:                                    ; No predecessors!
  br label %cat.sum.len334

cat.sum.len340:                                   ; preds = %abort.dead342, %cat.sum.len334
  %concat.tot.len343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum338, i64 1)
  %sum344 = extractvalue { i64, i1 } %concat.tot.len343, 0
  %ovf345 = extractvalue { i64, i1 } %concat.tot.len343, 1
  br i1 %ovf345, label %str_overflow_abort347, label %concat.tot.len346

str_overflow_abort341:                            ; preds = %cat.sum.len334
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead342:                                    ; No predecessors!
  br label %cat.sum.len340

concat.tot.len346:                                ; preds = %abort.dead348, %cat.sum.len340
  %arena.cur349 = call ptr @dva_arena_current()
  %concat.buf350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 %sum344)
  %cat.dst351 = getelementptr i8, ptr %concat.buf350, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst351, ptr align 1 %cat.seg323, i64 %cat.seg321, i1 false)
  %cat.off352 = add i64 0, %cat.seg321
  %cat.dst353 = getelementptr i8, ptr %concat.buf350, i64 %cat.off352
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst353, ptr align 1 %cat.lit.data324, i64 2, i1 false)
  %cat.off354 = add i64 %cat.off352, 2
  %cat.dst355 = getelementptr i8, ptr %concat.buf350, i64 %cat.off354
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst355, ptr align 1 %cat.seg330, i64 %cat.seg328, i1 false)
  %concat.nul356 = getelementptr i8, ptr %concat.buf350, i64 %sum338
  store i8 0, ptr %concat.nul356, align 1
  %arena.cur357 = call ptr @dva_arena_current()
  %concat.str358 = call ptr @dva_arena_alloc(ptr %arena.cur357, i64 16)
  %str.build.len.gep359 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 0
  store i64 %sum338, ptr %str.build.len.gep359, align 8
  %str.build.data.gep360 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 1
  store ptr %concat.buf350, ptr %str.build.data.gep360, align 8
  %eq.lhs.len361 = getelementptr inbounds { i64, ptr }, ptr %var.load315, i32 0, i32 0
  %eq.lhs.len362 = load i64, ptr %eq.lhs.len361, align 8
  %eq.lhs.len363 = and i64 %eq.lhs.len362, 281474976710655
  %eq.rhs.len364 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 0
  %eq.rhs.len365 = load i64, ptr %eq.rhs.len364, align 8
  %eq.rhs.len366 = and i64 %eq.rhs.len365, 281474976710655
  %eq.len367 = icmp eq i64 %eq.lhs.len363, %eq.rhs.len366
  br i1 %eq.len367, label %str.eq.then368, label %str.eq.else369

str_overflow_abort347:                            ; preds = %cat.sum.len340
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead348:                                    ; No predecessors!
  br label %concat.tot.len346

str.eq.then368:                                   ; preds = %concat.tot.len346
  %eq.lhs.data371 = getelementptr inbounds { i64, ptr }, ptr %var.load315, i32 0, i32 1
  %eq.lhs.data372 = load ptr, ptr %eq.lhs.data371, align 8
  %eq.rhs.data373 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 1
  %eq.rhs.data374 = load ptr, ptr %eq.rhs.data373, align 8
  %eq.memcmp375 = call i32 @memcmp(ptr %eq.lhs.data372, ptr %eq.rhs.data374, i64 %eq.lhs.len363)
  %eq.cmp.zero376 = icmp eq i32 %eq.memcmp375, 0
  br label %str.eq.merge370

str.eq.else369:                                   ; preds = %concat.tot.len346
  br label %str.eq.merge370

str.eq.merge370:                                  ; preds = %str.eq.else369, %str.eq.then368
  %str.eq.result377 = phi i1 [ %eq.cmp.zero376, %str.eq.then368 ], [ false, %str.eq.else369 ]
  br label %and.182.exit

choice.then380:                                   ; preds = %choice.exit200
  ret i1 true

choice.exit381:                                   ; preds = %ret.dead, %choice.exit200
  br label %loop.latch.177

ret.dead:                                         ; No predecessors!
  br label %choice.exit381
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

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #0 {
entry:
  %var._399 = alloca ptr, align 8
  %var._398 = alloca ptr, align 8
  %var._397 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after438, %entry
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %a.after42
  %hash.str = call i64 @dva_hash_string(ptr %mk.data56, i64 %mk.len58)
  %m.capm1 = sub i64 %m.cap52, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

tag.gen_check:                                    ; preds = %a.after42
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %tag.immortal65 = icmp eq i64 %str.tag63, 0
  br i1 %tag.immortal65, label %str_ok64, label %tag.gen_check66

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

m.done:                                           ; preds = %m.ins.slot, %m.done227, %m.overwrite
  %var.load311 = load ptr, ptr %var.name, align 8
  %var.load312 = load ptr, ptr %var.ut, align 8
  %var.load313 = load ptr, ptr %var.ti, align 8
  %var.load314 = load i1, ptr %var.is_mut, align 1
  %var.load315 = load ptr, ptr %var.env, align 8
  %fld.gep316 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load315, i32 0, i32 2
  %fld.load317 = load i64, ptr %fld.gep316, align 8
  %arena.cur318 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load311, ptr %rec.fld, align 8
  %rec.fld319 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load312, ptr %rec.fld319, align 8
  %rec.fld320 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load313, ptr %rec.fld320, align 8
  %rec.fld321 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load314, ptr %rec.fld321, align 1
  %rec.fld322 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld322, align 1
  %rec.fld323 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load317, ptr %rec.fld323, align 8
  %a.load324 = load ptr, ptr %var.bnds, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

str_ok64:                                         ; preds = %abort.dead73, %tag.slow_check67, %tag.gen_check66, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen74 = load i64, ptr %mk.nlen, align 8
  %mk.nlen75 = and i64 %mk.nlen74, 281474976710655
  %str.tag76 = lshr i64 %mk.nlen74, 48
  %tag.immortal78 = icmp eq i64 %str.tag76, 0
  br i1 %tag.immortal78, label %str_ok77, label %tag.gen_check79

tag.gen_check66:                                  ; preds = %m.found
  %active.gen69 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok70 = icmp eq i64 %str.tag63, %active.gen69
  br i1 %tag.fast.ok70, label %str_ok64, label %tag.slow_check67

tag.slow_check67:                                 ; preds = %tag.gen_check66
  %arena.cur71 = call ptr @dva_arena_current()
  %tag.valid72 = call i1 @dva_arena_validate_tag(ptr %arena.cur71, i64 %str.tag63)
  br i1 %tag.valid72, label %str_ok64, label %tag.stale68

tag.stale68:                                      ; preds = %tag.slow_check67
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %str_ok64

str_ok77:                                         ; preds = %abort.dead86, %tag.slow_check80, %tag.gen_check79, %str_ok64
  %mk.lenseq = icmp eq i64 %mk.slen62, %mk.nlen75
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.gen_check79:                                  ; preds = %str_ok64
  %active.gen82 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok83 = icmp eq i64 %str.tag76, %active.gen82
  br i1 %tag.fast.ok83, label %str_ok77, label %tag.slow_check80

tag.slow_check80:                                 ; preds = %tag.gen_check79
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag76)
  br i1 %tag.valid85, label %str_ok77, label %tag.stale81

tag.stale81:                                      ; preds = %tag.slow_check80
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead86:                                     ; No predecessors!
  br label %str_ok77

mk.eq.then:                                       ; preds = %str_ok77
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata87 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata88 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata87, ptr %mk.ndata88, i64 %mk.nlen75)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok77
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.old.cap89 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.old.keys90 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.old.vals91 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.old.states92 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap89, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.live.cnt93 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt93, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap89
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap89
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur94 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur95 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %m.gv.bytes)
  %arena.cur96 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %m.new.cap)
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
  %m.use.tomb298 = icmp ne i64 %m.tomb60, -1
  %m.ins.idx299 = select i1 %m.use.tomb298, i64 %m.tomb60, i64 %m.idx
  %m.key.slot300 = getelementptr i64, ptr %m.keys53, i64 %m.ins.idx299
  store ptr %var.load37, ptr %m.key.slot300, align 8
  %m.val.slot301 = getelementptr i64, ptr %m.vals54, i64 %m.ins.idx299
  store i64 %a.len.query51, ptr %m.val.slot301, align 8
  %m.ins.state.slot302 = getelementptr i8, ptr %m.states55, i64 %m.ins.idx299
  store i8 1, ptr %m.ins.state.slot302, align 1
  %m.count303 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count304 = load i64, ptr %m.count303, align 8
  %m.count.next305 = add i64 %m.count304, 1
  %m.count.gep306 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next305, ptr %m.count.gep306, align 8
  %m.ins.tombs.p307 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs308 = load i64, ptr %m.ins.tombs.p307, align 8
  %m.tomb.dec309 = select i1 %m.use.tomb298, i64 1, i64 0
  %m.ins.tombs.next310 = sub i64 %m.ins.tombs308, %m.tomb.dec309
  store i64 %m.ins.tombs.next310, ptr %m.ins.tombs.p307, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap89
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states92, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done131, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap193 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap194 = load i64, ptr %m.cap193, align 8
  %m.keys195 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys196 = load ptr, ptr %m.keys195, align 8
  %m.vals197 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals198 = load ptr, ptr %m.vals197, align 8
  %m.states199 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states200 = load ptr, ptr %m.states199, align 8
  %mk.data201 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data202 = load ptr, ptr %mk.data201, align 8
  %mk.len203 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len204 = load i64, ptr %mk.len203, align 8
  %mk.len205 = and i64 %mk.len204, 281474976710655
  %str.tag206 = lshr i64 %mk.len204, 48
  %tag.immortal208 = icmp eq i64 %str.tag206, 0
  br i1 %tag.immortal208, label %str_ok207, label %tag.gen_check209

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys90, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals91, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap97 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap98 = load i64, ptr %m.cap97, align 8
  %m.keys99 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys100 = load ptr, ptr %m.keys99, align 8
  %m.vals101 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals102 = load ptr, ptr %m.vals101, align 8
  %m.states103 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states104 = load ptr, ptr %m.states103, align 8
  %mk.data105 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data106 = load ptr, ptr %mk.data105, align 8
  %mk.len107 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len108 = load i64, ptr %mk.len107, align 8
  %mk.len109 = and i64 %mk.len108, 281474976710655
  %str.tag110 = lshr i64 %mk.len108, 48
  %tag.immortal112 = icmp eq i64 %str.tag110, 0
  br i1 %tag.immortal112, label %str_ok111, label %tag.gen_check113

str_ok111:                                        ; preds = %abort.dead120, %tag.slow_check114, %tag.gen_check113, %m.re.ins
  %hash.str121 = call i64 @dva_hash_string(ptr %mk.data106, i64 %mk.len109)
  %m.capm1122 = sub i64 %m.cap98, 1
  %m.idx0123 = and i64 %hash.str121, %m.capm1122
  br label %m.loop124

tag.gen_check113:                                 ; preds = %m.re.ins
  %active.gen116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok117 = icmp eq i64 %str.tag110, %active.gen116
  br i1 %tag.fast.ok117, label %str_ok111, label %tag.slow_check114

tag.slow_check114:                                ; preds = %tag.gen_check113
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag110)
  br i1 %tag.valid119, label %str_ok111, label %tag.stale115

tag.stale115:                                     ; preds = %tag.slow_check114
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %str_ok111

m.loop124:                                        ; preds = %m.next129, %str_ok111
  %m.idx132 = phi i64 [ %m.idx0123, %str_ok111 ], [ %m.idx.next187, %m.next129 ]
  %m.tomb133 = phi i64 [ -1, %str_ok111 ], [ %m.next.tomb185, %m.next129 ]
  %m.probe134 = phi i64 [ 0, %str_ok111 ], [ %m.probe.next188, %m.next129 ]
  %m.reached.cap135 = icmp eq i64 %m.probe134, %m.cap98
  %m.state.gep136 = getelementptr i8, ptr %m.states104, i64 %m.idx132
  %m.state137 = load i8, ptr %m.state.gep136, align 1
  %m.is.empty138 = icmp eq i8 %m.state137, 0
  %m.stop139 = or i1 %m.is.empty138, %m.reached.cap135
  br i1 %m.stop139, label %m.empty130, label %m.check.tomb125

m.check.tomb125:                                  ; preds = %m.loop124
  %m.is.tomb140 = icmp eq i8 %m.state137, 2
  br i1 %m.is.tomb140, label %m.tomb126, label %m.found127

m.tomb126:                                        ; preds = %m.check.tomb125
  %m.has.tomb141 = icmp ne i64 %m.tomb133, -1
  %m.tomb.sel142 = select i1 %m.has.tomb141, i64 %m.tomb133, i64 %m.idx132
  br label %m.next129

m.found127:                                       ; preds = %m.check.tomb125
  %m.key.slot143 = getelementptr i64, ptr %m.keys100, i64 %m.idx132
  %mk.stored144 = load ptr, ptr %m.key.slot143, align 8
  %mk.slen145 = getelementptr inbounds { i64, ptr }, ptr %mk.stored144, i32 0, i32 0
  %mk.slen146 = load i64, ptr %mk.slen145, align 8
  %mk.slen147 = and i64 %mk.slen146, 281474976710655
  %str.tag148 = lshr i64 %mk.slen146, 48
  %tag.immortal150 = icmp eq i64 %str.tag148, 0
  br i1 %tag.immortal150, label %str_ok149, label %tag.gen_check151

m.overwrite128:                                   ; preds = %mk.eq.merge176
  %m.val.slot184 = getelementptr i64, ptr %m.vals102, i64 %m.idx132
  store i64 %m.re.val, ptr %m.val.slot184, align 8
  br label %m.done131

m.next129:                                        ; preds = %mk.eq.merge176, %m.tomb126
  %m.next.tomb185 = phi i64 [ %m.tomb.sel142, %m.tomb126 ], [ %m.tomb133, %mk.eq.merge176 ]
  %m.idx.add186 = add i64 %m.idx132, 1
  %m.idx.next187 = and i64 %m.idx.add186, %m.capm1122
  %m.probe.next188 = add i64 %m.probe134, 1
  br label %m.loop124

m.empty130:                                       ; preds = %m.loop124
  %m.use.tomb = icmp ne i64 %m.tomb133, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb133, i64 %m.idx132
  %m.key.slot189 = getelementptr i64, ptr %m.keys100, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot189, align 8
  %m.val.slot190 = getelementptr i64, ptr %m.vals102, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot190, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states104, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count191 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count191, 1
  %m.count.gep192 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep192, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done131

m.done131:                                        ; preds = %m.empty130, %m.overwrite128
  br label %m.re.cont

str_ok149:                                        ; preds = %abort.dead158, %tag.slow_check152, %tag.gen_check151, %m.found127
  %mk.nlen159 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen160 = load i64, ptr %mk.nlen159, align 8
  %mk.nlen161 = and i64 %mk.nlen160, 281474976710655
  %str.tag162 = lshr i64 %mk.nlen160, 48
  %tag.immortal164 = icmp eq i64 %str.tag162, 0
  br i1 %tag.immortal164, label %str_ok163, label %tag.gen_check165

tag.gen_check151:                                 ; preds = %m.found127
  %active.gen154 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok155 = icmp eq i64 %str.tag148, %active.gen154
  br i1 %tag.fast.ok155, label %str_ok149, label %tag.slow_check152

tag.slow_check152:                                ; preds = %tag.gen_check151
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag148)
  br i1 %tag.valid157, label %str_ok149, label %tag.stale153

tag.stale153:                                     ; preds = %tag.slow_check152
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead158:                                    ; No predecessors!
  br label %str_ok149

str_ok163:                                        ; preds = %abort.dead172, %tag.slow_check166, %tag.gen_check165, %str_ok149
  %mk.lenseq173 = icmp eq i64 %mk.slen147, %mk.nlen161
  br i1 %mk.lenseq173, label %mk.eq.then174, label %mk.eq.else175

tag.gen_check165:                                 ; preds = %str_ok149
  %active.gen168 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok169 = icmp eq i64 %str.tag162, %active.gen168
  br i1 %tag.fast.ok169, label %str_ok163, label %tag.slow_check166

tag.slow_check166:                                ; preds = %tag.gen_check165
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid171 = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag162)
  br i1 %tag.valid171, label %str_ok163, label %tag.stale167

tag.stale167:                                     ; preds = %tag.slow_check166
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead172:                                    ; No predecessors!
  br label %str_ok163

mk.eq.then174:                                    ; preds = %str_ok163
  %mk.sdata177 = getelementptr inbounds { i64, ptr }, ptr %mk.stored144, i32 0, i32 1
  %mk.sdata178 = load ptr, ptr %mk.sdata177, align 8
  %mk.ndata179 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata180 = load ptr, ptr %mk.ndata179, align 8
  %mk.memcmp181 = call i32 @memcmp(ptr %mk.sdata178, ptr %mk.ndata180, i64 %mk.nlen161)
  %mk.cmpeq182 = icmp eq i32 %mk.memcmp181, 0
  br label %mk.eq.merge176

mk.eq.else175:                                    ; preds = %str_ok163
  br label %mk.eq.merge176

mk.eq.merge176:                                   ; preds = %mk.eq.else175, %mk.eq.then174
  %mk.eq183 = phi i1 [ %mk.cmpeq182, %mk.eq.then174 ], [ false, %mk.eq.else175 ]
  br i1 %mk.eq183, label %m.overwrite128, label %m.next129

str_ok207:                                        ; preds = %abort.dead216, %tag.slow_check210, %tag.gen_check209, %m.re.done
  %hash.str217 = call i64 @dva_hash_string(ptr %mk.data202, i64 %mk.len205)
  %m.capm1218 = sub i64 %m.cap194, 1
  %m.idx0219 = and i64 %hash.str217, %m.capm1218
  br label %m.loop220

tag.gen_check209:                                 ; preds = %m.re.done
  %active.gen212 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok213 = icmp eq i64 %str.tag206, %active.gen212
  br i1 %tag.fast.ok213, label %str_ok207, label %tag.slow_check210

tag.slow_check210:                                ; preds = %tag.gen_check209
  %arena.cur214 = call ptr @dva_arena_current()
  %tag.valid215 = call i1 @dva_arena_validate_tag(ptr %arena.cur214, i64 %str.tag206)
  br i1 %tag.valid215, label %str_ok207, label %tag.stale211

tag.stale211:                                     ; preds = %tag.slow_check210
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead216:                                    ; No predecessors!
  br label %str_ok207

m.loop220:                                        ; preds = %m.next225, %str_ok207
  %m.idx228 = phi i64 [ %m.idx0219, %str_ok207 ], [ %m.idx.next283, %m.next225 ]
  %m.tomb229 = phi i64 [ -1, %str_ok207 ], [ %m.next.tomb281, %m.next225 ]
  %m.probe230 = phi i64 [ 0, %str_ok207 ], [ %m.probe.next284, %m.next225 ]
  %m.reached.cap231 = icmp eq i64 %m.probe230, %m.cap194
  %m.state.gep232 = getelementptr i8, ptr %m.states200, i64 %m.idx228
  %m.state233 = load i8, ptr %m.state.gep232, align 1
  %m.is.empty234 = icmp eq i8 %m.state233, 0
  %m.stop235 = or i1 %m.is.empty234, %m.reached.cap231
  br i1 %m.stop235, label %m.empty226, label %m.check.tomb221

m.check.tomb221:                                  ; preds = %m.loop220
  %m.is.tomb236 = icmp eq i8 %m.state233, 2
  br i1 %m.is.tomb236, label %m.tomb222, label %m.found223

m.tomb222:                                        ; preds = %m.check.tomb221
  %m.has.tomb237 = icmp ne i64 %m.tomb229, -1
  %m.tomb.sel238 = select i1 %m.has.tomb237, i64 %m.tomb229, i64 %m.idx228
  br label %m.next225

m.found223:                                       ; preds = %m.check.tomb221
  %m.key.slot239 = getelementptr i64, ptr %m.keys196, i64 %m.idx228
  %mk.stored240 = load ptr, ptr %m.key.slot239, align 8
  %mk.slen241 = getelementptr inbounds { i64, ptr }, ptr %mk.stored240, i32 0, i32 0
  %mk.slen242 = load i64, ptr %mk.slen241, align 8
  %mk.slen243 = and i64 %mk.slen242, 281474976710655
  %str.tag244 = lshr i64 %mk.slen242, 48
  %tag.immortal246 = icmp eq i64 %str.tag244, 0
  br i1 %tag.immortal246, label %str_ok245, label %tag.gen_check247

m.overwrite224:                                   ; preds = %mk.eq.merge272
  %m.val.slot280 = getelementptr i64, ptr %m.vals198, i64 %m.idx228
  store i64 %a.len.query51, ptr %m.val.slot280, align 8
  br label %m.done227

m.next225:                                        ; preds = %mk.eq.merge272, %m.tomb222
  %m.next.tomb281 = phi i64 [ %m.tomb.sel238, %m.tomb222 ], [ %m.tomb229, %mk.eq.merge272 ]
  %m.idx.add282 = add i64 %m.idx228, 1
  %m.idx.next283 = and i64 %m.idx.add282, %m.capm1218
  %m.probe.next284 = add i64 %m.probe230, 1
  br label %m.loop220

m.empty226:                                       ; preds = %m.loop220
  %m.use.tomb285 = icmp ne i64 %m.tomb229, -1
  %m.ins.idx286 = select i1 %m.use.tomb285, i64 %m.tomb229, i64 %m.idx228
  %m.key.slot287 = getelementptr i64, ptr %m.keys196, i64 %m.ins.idx286
  store ptr %var.load37, ptr %m.key.slot287, align 8
  %m.val.slot288 = getelementptr i64, ptr %m.vals198, i64 %m.ins.idx286
  store i64 %a.len.query51, ptr %m.val.slot288, align 8
  %m.ins.state.slot289 = getelementptr i8, ptr %m.states200, i64 %m.ins.idx286
  store i8 1, ptr %m.ins.state.slot289, align 1
  %m.count290 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count291 = load i64, ptr %m.count290, align 8
  %m.count.next292 = add i64 %m.count291, 1
  %m.count.gep293 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next292, ptr %m.count.gep293, align 8
  %m.ins.tombs.p294 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs295 = load i64, ptr %m.ins.tombs.p294, align 8
  %m.tomb.dec296 = select i1 %m.use.tomb285, i64 1, i64 0
  %m.ins.tombs.next297 = sub i64 %m.ins.tombs295, %m.tomb.dec296
  store i64 %m.ins.tombs.next297, ptr %m.ins.tombs.p294, align 8
  br label %m.done227

m.done227:                                        ; preds = %m.empty226, %m.overwrite224
  br label %m.done

str_ok245:                                        ; preds = %abort.dead254, %tag.slow_check248, %tag.gen_check247, %m.found223
  %mk.nlen255 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen256 = load i64, ptr %mk.nlen255, align 8
  %mk.nlen257 = and i64 %mk.nlen256, 281474976710655
  %str.tag258 = lshr i64 %mk.nlen256, 48
  %tag.immortal260 = icmp eq i64 %str.tag258, 0
  br i1 %tag.immortal260, label %str_ok259, label %tag.gen_check261

tag.gen_check247:                                 ; preds = %m.found223
  %active.gen250 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok251 = icmp eq i64 %str.tag244, %active.gen250
  br i1 %tag.fast.ok251, label %str_ok245, label %tag.slow_check248

tag.slow_check248:                                ; preds = %tag.gen_check247
  %arena.cur252 = call ptr @dva_arena_current()
  %tag.valid253 = call i1 @dva_arena_validate_tag(ptr %arena.cur252, i64 %str.tag244)
  br i1 %tag.valid253, label %str_ok245, label %tag.stale249

tag.stale249:                                     ; preds = %tag.slow_check248
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead254:                                    ; No predecessors!
  br label %str_ok245

str_ok259:                                        ; preds = %abort.dead268, %tag.slow_check262, %tag.gen_check261, %str_ok245
  %mk.lenseq269 = icmp eq i64 %mk.slen243, %mk.nlen257
  br i1 %mk.lenseq269, label %mk.eq.then270, label %mk.eq.else271

tag.gen_check261:                                 ; preds = %str_ok245
  %active.gen264 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok265 = icmp eq i64 %str.tag258, %active.gen264
  br i1 %tag.fast.ok265, label %str_ok259, label %tag.slow_check262

tag.slow_check262:                                ; preds = %tag.gen_check261
  %arena.cur266 = call ptr @dva_arena_current()
  %tag.valid267 = call i1 @dva_arena_validate_tag(ptr %arena.cur266, i64 %str.tag258)
  br i1 %tag.valid267, label %str_ok259, label %tag.stale263

tag.stale263:                                     ; preds = %tag.slow_check262
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead268:                                    ; No predecessors!
  br label %str_ok259

mk.eq.then270:                                    ; preds = %str_ok259
  %mk.sdata273 = getelementptr inbounds { i64, ptr }, ptr %mk.stored240, i32 0, i32 1
  %mk.sdata274 = load ptr, ptr %mk.sdata273, align 8
  %mk.ndata275 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata276 = load ptr, ptr %mk.ndata275, align 8
  %mk.memcmp277 = call i32 @memcmp(ptr %mk.sdata274, ptr %mk.ndata276, i64 %mk.nlen257)
  %mk.cmpeq278 = icmp eq i32 %mk.memcmp277, 0
  br label %mk.eq.merge272

mk.eq.else271:                                    ; preds = %str_ok259
  br label %mk.eq.merge272

mk.eq.merge272:                                   ; preds = %mk.eq.else271, %mk.eq.then270
  %mk.eq279 = phi i1 [ %mk.cmpeq278, %mk.eq.then270 ], [ false, %mk.eq.else271 ]
  br i1 %mk.eq279, label %m.overwrite224, label %m.next225

a.create326:                                      ; preds = %m.done
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
  store ptr %a.create329, ptr %var.bnds, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %m.done
  %a.load2335 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after327
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.len336 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 2
  %a.cap337 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len336, %a.cap337
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2335)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 1
  %a.cur.data338 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.cur.len339 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data338, i64 %a.cur.len339
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len339, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load340 = load ptr, ptr %var.cur_sc, align 8
  %var.load341 = load ptr, ptr %var.bnds, align 8
  %a.load342 = load ptr, ptr %var.bnds, align 8
  %a.null343 = icmp eq ptr %a.load342, null
  br i1 %a.null343, label %a.create344, label %a.after345

a.create344:                                      ; preds = %a.store
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
  store ptr %a.create347, ptr %var.bnds, align 8
  br label %a.after345

a.after345:                                       ; preds = %a.create344, %a.store
  %a.load2353 = load ptr, ptr %var.bnds, align 8
  %fld.gep354 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load340, i32 0, i32 0
  store ptr %a.load2353, ptr %fld.gep354, align 8
  %var.load355 = load ptr, ptr %var.scs, align 8
  %a.load356 = load ptr, ptr %var.scs, align 8
  %a.null357 = icmp eq ptr %a.load356, null
  br i1 %a.null357, label %a.create358, label %a.after359

a.create358:                                      ; preds = %a.after345
  %arena.cur360 = call ptr @dva_arena_current()
  %a.create361 = call ptr @dva_arena_alloc(ptr %arena.cur360, i64 24)
  %arena.cur362 = call ptr @dva_arena_current()
  %a.buf363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 128)
  %a.len.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 0
  store i64 0, ptr %a.len.gep364, align 8
  %a.data.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 1
  store ptr %a.buf363, ptr %a.data.gep365, align 8
  %a.cap.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 2
  store i64 16, ptr %a.cap.gep366, align 8
  store ptr %a.create361, ptr %var.scs, align 8
  br label %a.after359

a.after359:                                       ; preds = %a.create358, %a.after345
  %a.load2367 = load ptr, ptr %var.scs, align 8
  %var.load368 = load i64, ptr %var.cur_idx, align 8
  %var.load369 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i370 = ptrtoint ptr %var.load369 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2367, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after359
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 0
  %a.wr.len371 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load368, 0
  %a.wr.lt = icmp slt i64 %var.load368, %a.wr.len371
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 1
  %a.wr.data372 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep373 = getelementptr i64, ptr %a.wr.data372, i64 %var.load368
  store i64 %slot.p2i370, ptr %a.elem.gep373, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after359
  %arena.cur374 = call ptr @dva_arena_current()
  %err.alloc375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 56)
  %err.code.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 0
  store i64 4011, ptr %err.code.gep376, align 8
  %err.msg.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep377, align 8
  %err.file.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep378, align 8
  %err.line.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 3
  store i64 0, ptr %err.line.gep379, align 8
  %err.col.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 4
  store i64 0, ptr %err.col.gep380, align 8
  %err.ctx.gep381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 5
  %err.ctx0.gep382 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep381, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep382, align 8
  %err.ctx1.gep383 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep381, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep383, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur384 = call ptr @dva_arena_current()
  %err.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 56)
  %err.code.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 0
  store i64 4011, ptr %err.code.gep386, align 8
  %err.msg.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep387, align 8
  %err.file.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep388, align 8
  %err.line.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 3
  store i64 0, ptr %err.line.gep389, align 8
  %err.col.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 4
  store i64 0, ptr %err.col.gep390, align 8
  %err.ctx.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 5
  %err.ctx0.gep392 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 0
  store i64 %var.load368, ptr %err.ctx0.gep392, align 8
  %err.ctx1.gep393 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 1
  store i64 %a.wr.len371, ptr %err.ctx1.gep393, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc375, %a.wr.err.null ], [ %err.alloc385, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then394, label %choice.else395

choice.then394:                                   ; preds = %a.wr.done
  br label %choice.exit396

choice.else395:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._397, align 8
  store ptr %a.wr.niche, ptr %var._398, align 8
  store ptr %a.wr.niche, ptr %var._399, align 8
  %err.code.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep400, align 8
  %err.msg.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep401, align 8
  %err.file.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep402, align 8
  %err.line.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep403, align 8
  %err.col.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep404, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len405 = load i64, ptr %err.msg.len, align 8
  %err.msg.len406 = and i64 %err.msg.len405, 281474976710655
  %str.tag407 = lshr i64 %err.msg.len405, 48
  %tag.immortal409 = icmp eq i64 %str.tag407, 0
  br i1 %tag.immortal409, label %str_ok408, label %tag.gen_check410

choice.exit396:                                   ; preds = %err.abort, %choice.then394
  %var.load433 = load ptr, ptr %var.env, align 8
  %var.load434 = load ptr, ptr %var.scs, align 8
  %a.load435 = load ptr, ptr %var.scs, align 8
  %a.null436 = icmp eq ptr %a.load435, null
  br i1 %a.null436, label %a.create437, label %a.after438

str_ok408:                                        ; preds = %abort.dead417, %tag.slow_check411, %tag.gen_check410, %choice.else395
  %err.msg.len32 = trunc i64 %err.msg.len406 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data418 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len419 = load i64, ptr %err.file.len, align 8
  %err.file.len420 = and i64 %err.file.len419, 281474976710655
  %str.tag421 = lshr i64 %err.file.len419, 48
  %tag.immortal423 = icmp eq i64 %str.tag421, 0
  br i1 %tag.immortal423, label %str_ok422, label %tag.gen_check424

tag.gen_check410:                                 ; preds = %choice.else395
  %active.gen413 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok414 = icmp eq i64 %str.tag407, %active.gen413
  br i1 %tag.fast.ok414, label %str_ok408, label %tag.slow_check411

tag.slow_check411:                                ; preds = %tag.gen_check410
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag407)
  br i1 %tag.valid416, label %str_ok408, label %tag.stale412

tag.stale412:                                     ; preds = %tag.slow_check411
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead417:                                    ; No predecessors!
  br label %str_ok408

str_ok422:                                        ; preds = %abort.dead431, %tag.slow_check425, %tag.gen_check424, %str_ok408
  %err.file.len32 = trunc i64 %err.file.len420 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data432 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check424:                                 ; preds = %str_ok408
  %active.gen427 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok428 = icmp eq i64 %str.tag421, %active.gen427
  br i1 %tag.fast.ok428, label %str_ok422, label %tag.slow_check425

tag.slow_check425:                                ; preds = %tag.gen_check424
  %arena.cur429 = call ptr @dva_arena_current()
  %tag.valid430 = call i1 @dva_arena_validate_tag(ptr %arena.cur429, i64 %str.tag421)
  br i1 %tag.valid430, label %str_ok422, label %tag.stale426

tag.stale426:                                     ; preds = %tag.slow_check425
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead431:                                    ; No predecessors!
  br label %str_ok422

err.thread:                                       ; preds = %str_ok422
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok422
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data418, i32 %err.file.len32, ptr %err.file.data432, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit396

a.create437:                                      ; preds = %choice.exit396
  %arena.cur439 = call ptr @dva_arena_current()
  %a.create440 = call ptr @dva_arena_alloc(ptr %arena.cur439, i64 24)
  %arena.cur441 = call ptr @dva_arena_current()
  %a.buf442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 128)
  %a.len.gep443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 0
  store i64 0, ptr %a.len.gep443, align 8
  %a.data.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 1
  store ptr %a.buf442, ptr %a.data.gep444, align 8
  %a.cap.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 2
  store i64 16, ptr %a.cap.gep445, align 8
  store ptr %a.create440, ptr %var.scs, align 8
  br label %a.after438

a.after438:                                       ; preds = %a.create437, %choice.exit396
  %a.load2446 = load ptr, ptr %var.scs, align 8
  %fld.gep447 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load433, i32 0, i32 0
  store ptr %a.load2446, ptr %fld.gep447, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #0 {
entry:
  %var._336 = alloca ptr, align 8
  %var._335 = alloca ptr, align 8
  %var._334 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after375, %entry
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit25
  %hash.str = call i64 @dva_hash_string(ptr %mk.data39, i64 %mk.len41)
  %m.capm1 = sub i64 %m.cap35, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

tag.gen_check:                                    ; preds = %choice.exit25
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %tag.immortal48 = icmp eq i64 %str.tag46, 0
  br i1 %tag.immortal48, label %str_ok47, label %tag.gen_check49

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

m.done:                                           ; preds = %m.ins.slot, %m.done210, %m.overwrite
  %var.load294 = load ptr, ptr %var.scs, align 8
  %a.load295 = load ptr, ptr %var.scs, align 8
  %a.null296 = icmp eq ptr %a.load295, null
  br i1 %a.null296, label %a.create297, label %a.after298

str_ok47:                                         ; preds = %abort.dead56, %tag.slow_check50, %tag.gen_check49, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen57 = load i64, ptr %mk.nlen, align 8
  %mk.nlen58 = and i64 %mk.nlen57, 281474976710655
  %str.tag59 = lshr i64 %mk.nlen57, 48
  %tag.immortal61 = icmp eq i64 %str.tag59, 0
  br i1 %tag.immortal61, label %str_ok60, label %tag.gen_check62

tag.gen_check49:                                  ; preds = %m.found
  %active.gen52 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok53 = icmp eq i64 %str.tag46, %active.gen52
  br i1 %tag.fast.ok53, label %str_ok47, label %tag.slow_check50

tag.slow_check50:                                 ; preds = %tag.gen_check49
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag46)
  br i1 %tag.valid55, label %str_ok47, label %tag.stale51

tag.stale51:                                      ; preds = %tag.slow_check50
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %str_ok47

str_ok60:                                         ; preds = %abort.dead69, %tag.slow_check63, %tag.gen_check62, %str_ok47
  %mk.lenseq = icmp eq i64 %mk.slen45, %mk.nlen58
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.gen_check62:                                  ; preds = %str_ok47
  %active.gen65 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok66 = icmp eq i64 %str.tag59, %active.gen65
  br i1 %tag.fast.ok66, label %str_ok60, label %tag.slow_check63

tag.slow_check63:                                 ; preds = %tag.gen_check62
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag59)
  br i1 %tag.valid68, label %str_ok60, label %tag.stale64

tag.stale64:                                      ; preds = %tag.slow_check63
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead69:                                     ; No predecessors!
  br label %str_ok60

mk.eq.then:                                       ; preds = %str_ok60
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata70 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata71 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata70, ptr %mk.ndata71, i64 %mk.nlen58)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok60
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.old.cap72 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.old.keys73 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.old.vals74 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.old.states75 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap72, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.live.cnt76 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt76, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap72
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap72
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur77 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur78 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %m.gv.bytes)
  %arena.cur79 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %m.new.cap)
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
  %m.use.tomb281 = icmp ne i64 %m.tomb43, -1
  %m.ins.idx282 = select i1 %m.use.tomb281, i64 %m.tomb43, i64 %m.idx
  %m.key.slot283 = getelementptr i64, ptr %m.keys36, i64 %m.ins.idx282
  store ptr %var.load34, ptr %m.key.slot283, align 8
  %m.val.slot284 = getelementptr i64, ptr %m.vals37, i64 %m.ins.idx282
  store i64 -1, ptr %m.val.slot284, align 8
  %m.ins.state.slot285 = getelementptr i8, ptr %m.states38, i64 %m.ins.idx282
  store i8 1, ptr %m.ins.state.slot285, align 1
  %m.count286 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count287 = load i64, ptr %m.count286, align 8
  %m.count.next288 = add i64 %m.count287, 1
  %m.count.gep289 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next288, ptr %m.count.gep289, align 8
  %m.ins.tombs.p290 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs291 = load i64, ptr %m.ins.tombs.p290, align 8
  %m.tomb.dec292 = select i1 %m.use.tomb281, i64 1, i64 0
  %m.ins.tombs.next293 = sub i64 %m.ins.tombs291, %m.tomb.dec292
  store i64 %m.ins.tombs.next293, ptr %m.ins.tombs.p290, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap72
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states75, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done114, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap177 = load i64, ptr %m.cap176, align 8
  %m.keys178 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys179 = load ptr, ptr %m.keys178, align 8
  %m.vals180 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals181 = load ptr, ptr %m.vals180, align 8
  %m.states182 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states183 = load ptr, ptr %m.states182, align 8
  %mk.data184 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data185 = load ptr, ptr %mk.data184, align 8
  %mk.len186 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len187 = load i64, ptr %mk.len186, align 8
  %mk.len188 = and i64 %mk.len187, 281474976710655
  %str.tag189 = lshr i64 %mk.len187, 48
  %tag.immortal191 = icmp eq i64 %str.tag189, 0
  br i1 %tag.immortal191, label %str_ok190, label %tag.gen_check192

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys73, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals74, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap80 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap81 = load i64, ptr %m.cap80, align 8
  %m.keys82 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys83 = load ptr, ptr %m.keys82, align 8
  %m.vals84 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals85 = load ptr, ptr %m.vals84, align 8
  %m.states86 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states87 = load ptr, ptr %m.states86, align 8
  %mk.data88 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data89 = load ptr, ptr %mk.data88, align 8
  %mk.len90 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len91 = load i64, ptr %mk.len90, align 8
  %mk.len92 = and i64 %mk.len91, 281474976710655
  %str.tag93 = lshr i64 %mk.len91, 48
  %tag.immortal95 = icmp eq i64 %str.tag93, 0
  br i1 %tag.immortal95, label %str_ok94, label %tag.gen_check96

str_ok94:                                         ; preds = %abort.dead103, %tag.slow_check97, %tag.gen_check96, %m.re.ins
  %hash.str104 = call i64 @dva_hash_string(ptr %mk.data89, i64 %mk.len92)
  %m.capm1105 = sub i64 %m.cap81, 1
  %m.idx0106 = and i64 %hash.str104, %m.capm1105
  br label %m.loop107

tag.gen_check96:                                  ; preds = %m.re.ins
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok100 = icmp eq i64 %str.tag93, %active.gen99
  br i1 %tag.fast.ok100, label %str_ok94, label %tag.slow_check97

tag.slow_check97:                                 ; preds = %tag.gen_check96
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag93)
  br i1 %tag.valid102, label %str_ok94, label %tag.stale98

tag.stale98:                                      ; preds = %tag.slow_check97
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %str_ok94

m.loop107:                                        ; preds = %m.next112, %str_ok94
  %m.idx115 = phi i64 [ %m.idx0106, %str_ok94 ], [ %m.idx.next170, %m.next112 ]
  %m.tomb116 = phi i64 [ -1, %str_ok94 ], [ %m.next.tomb168, %m.next112 ]
  %m.probe117 = phi i64 [ 0, %str_ok94 ], [ %m.probe.next171, %m.next112 ]
  %m.reached.cap118 = icmp eq i64 %m.probe117, %m.cap81
  %m.state.gep119 = getelementptr i8, ptr %m.states87, i64 %m.idx115
  %m.state120 = load i8, ptr %m.state.gep119, align 1
  %m.is.empty121 = icmp eq i8 %m.state120, 0
  %m.stop122 = or i1 %m.is.empty121, %m.reached.cap118
  br i1 %m.stop122, label %m.empty113, label %m.check.tomb108

m.check.tomb108:                                  ; preds = %m.loop107
  %m.is.tomb123 = icmp eq i8 %m.state120, 2
  br i1 %m.is.tomb123, label %m.tomb109, label %m.found110

m.tomb109:                                        ; preds = %m.check.tomb108
  %m.has.tomb124 = icmp ne i64 %m.tomb116, -1
  %m.tomb.sel125 = select i1 %m.has.tomb124, i64 %m.tomb116, i64 %m.idx115
  br label %m.next112

m.found110:                                       ; preds = %m.check.tomb108
  %m.key.slot126 = getelementptr i64, ptr %m.keys83, i64 %m.idx115
  %mk.stored127 = load ptr, ptr %m.key.slot126, align 8
  %mk.slen128 = getelementptr inbounds { i64, ptr }, ptr %mk.stored127, i32 0, i32 0
  %mk.slen129 = load i64, ptr %mk.slen128, align 8
  %mk.slen130 = and i64 %mk.slen129, 281474976710655
  %str.tag131 = lshr i64 %mk.slen129, 48
  %tag.immortal133 = icmp eq i64 %str.tag131, 0
  br i1 %tag.immortal133, label %str_ok132, label %tag.gen_check134

m.overwrite111:                                   ; preds = %mk.eq.merge159
  %m.val.slot167 = getelementptr i64, ptr %m.vals85, i64 %m.idx115
  store i64 %m.re.val, ptr %m.val.slot167, align 8
  br label %m.done114

m.next112:                                        ; preds = %mk.eq.merge159, %m.tomb109
  %m.next.tomb168 = phi i64 [ %m.tomb.sel125, %m.tomb109 ], [ %m.tomb116, %mk.eq.merge159 ]
  %m.idx.add169 = add i64 %m.idx115, 1
  %m.idx.next170 = and i64 %m.idx.add169, %m.capm1105
  %m.probe.next171 = add i64 %m.probe117, 1
  br label %m.loop107

m.empty113:                                       ; preds = %m.loop107
  %m.use.tomb = icmp ne i64 %m.tomb116, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb116, i64 %m.idx115
  %m.key.slot172 = getelementptr i64, ptr %m.keys83, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot172, align 8
  %m.val.slot173 = getelementptr i64, ptr %m.vals85, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot173, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states87, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count174 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count174, 1
  %m.count.gep175 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep175, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done114

m.done114:                                        ; preds = %m.empty113, %m.overwrite111
  br label %m.re.cont

str_ok132:                                        ; preds = %abort.dead141, %tag.slow_check135, %tag.gen_check134, %m.found110
  %mk.nlen142 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen143 = load i64, ptr %mk.nlen142, align 8
  %mk.nlen144 = and i64 %mk.nlen143, 281474976710655
  %str.tag145 = lshr i64 %mk.nlen143, 48
  %tag.immortal147 = icmp eq i64 %str.tag145, 0
  br i1 %tag.immortal147, label %str_ok146, label %tag.gen_check148

tag.gen_check134:                                 ; preds = %m.found110
  %active.gen137 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok138 = icmp eq i64 %str.tag131, %active.gen137
  br i1 %tag.fast.ok138, label %str_ok132, label %tag.slow_check135

tag.slow_check135:                                ; preds = %tag.gen_check134
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag131)
  br i1 %tag.valid140, label %str_ok132, label %tag.stale136

tag.stale136:                                     ; preds = %tag.slow_check135
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead141:                                    ; No predecessors!
  br label %str_ok132

str_ok146:                                        ; preds = %abort.dead155, %tag.slow_check149, %tag.gen_check148, %str_ok132
  %mk.lenseq156 = icmp eq i64 %mk.slen130, %mk.nlen144
  br i1 %mk.lenseq156, label %mk.eq.then157, label %mk.eq.else158

tag.gen_check148:                                 ; preds = %str_ok132
  %active.gen151 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok152 = icmp eq i64 %str.tag145, %active.gen151
  br i1 %tag.fast.ok152, label %str_ok146, label %tag.slow_check149

tag.slow_check149:                                ; preds = %tag.gen_check148
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag145)
  br i1 %tag.valid154, label %str_ok146, label %tag.stale150

tag.stale150:                                     ; preds = %tag.slow_check149
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead155:                                    ; No predecessors!
  br label %str_ok146

mk.eq.then157:                                    ; preds = %str_ok146
  %mk.sdata160 = getelementptr inbounds { i64, ptr }, ptr %mk.stored127, i32 0, i32 1
  %mk.sdata161 = load ptr, ptr %mk.sdata160, align 8
  %mk.ndata162 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata163 = load ptr, ptr %mk.ndata162, align 8
  %mk.memcmp164 = call i32 @memcmp(ptr %mk.sdata161, ptr %mk.ndata163, i64 %mk.nlen144)
  %mk.cmpeq165 = icmp eq i32 %mk.memcmp164, 0
  br label %mk.eq.merge159

mk.eq.else158:                                    ; preds = %str_ok146
  br label %mk.eq.merge159

mk.eq.merge159:                                   ; preds = %mk.eq.else158, %mk.eq.then157
  %mk.eq166 = phi i1 [ %mk.cmpeq165, %mk.eq.then157 ], [ false, %mk.eq.else158 ]
  br i1 %mk.eq166, label %m.overwrite111, label %m.next112

str_ok190:                                        ; preds = %abort.dead199, %tag.slow_check193, %tag.gen_check192, %m.re.done
  %hash.str200 = call i64 @dva_hash_string(ptr %mk.data185, i64 %mk.len188)
  %m.capm1201 = sub i64 %m.cap177, 1
  %m.idx0202 = and i64 %hash.str200, %m.capm1201
  br label %m.loop203

tag.gen_check192:                                 ; preds = %m.re.done
  %active.gen195 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok196 = icmp eq i64 %str.tag189, %active.gen195
  br i1 %tag.fast.ok196, label %str_ok190, label %tag.slow_check193

tag.slow_check193:                                ; preds = %tag.gen_check192
  %arena.cur197 = call ptr @dva_arena_current()
  %tag.valid198 = call i1 @dva_arena_validate_tag(ptr %arena.cur197, i64 %str.tag189)
  br i1 %tag.valid198, label %str_ok190, label %tag.stale194

tag.stale194:                                     ; preds = %tag.slow_check193
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead199:                                    ; No predecessors!
  br label %str_ok190

m.loop203:                                        ; preds = %m.next208, %str_ok190
  %m.idx211 = phi i64 [ %m.idx0202, %str_ok190 ], [ %m.idx.next266, %m.next208 ]
  %m.tomb212 = phi i64 [ -1, %str_ok190 ], [ %m.next.tomb264, %m.next208 ]
  %m.probe213 = phi i64 [ 0, %str_ok190 ], [ %m.probe.next267, %m.next208 ]
  %m.reached.cap214 = icmp eq i64 %m.probe213, %m.cap177
  %m.state.gep215 = getelementptr i8, ptr %m.states183, i64 %m.idx211
  %m.state216 = load i8, ptr %m.state.gep215, align 1
  %m.is.empty217 = icmp eq i8 %m.state216, 0
  %m.stop218 = or i1 %m.is.empty217, %m.reached.cap214
  br i1 %m.stop218, label %m.empty209, label %m.check.tomb204

m.check.tomb204:                                  ; preds = %m.loop203
  %m.is.tomb219 = icmp eq i8 %m.state216, 2
  br i1 %m.is.tomb219, label %m.tomb205, label %m.found206

m.tomb205:                                        ; preds = %m.check.tomb204
  %m.has.tomb220 = icmp ne i64 %m.tomb212, -1
  %m.tomb.sel221 = select i1 %m.has.tomb220, i64 %m.tomb212, i64 %m.idx211
  br label %m.next208

m.found206:                                       ; preds = %m.check.tomb204
  %m.key.slot222 = getelementptr i64, ptr %m.keys179, i64 %m.idx211
  %mk.stored223 = load ptr, ptr %m.key.slot222, align 8
  %mk.slen224 = getelementptr inbounds { i64, ptr }, ptr %mk.stored223, i32 0, i32 0
  %mk.slen225 = load i64, ptr %mk.slen224, align 8
  %mk.slen226 = and i64 %mk.slen225, 281474976710655
  %str.tag227 = lshr i64 %mk.slen225, 48
  %tag.immortal229 = icmp eq i64 %str.tag227, 0
  br i1 %tag.immortal229, label %str_ok228, label %tag.gen_check230

m.overwrite207:                                   ; preds = %mk.eq.merge255
  %m.val.slot263 = getelementptr i64, ptr %m.vals181, i64 %m.idx211
  store i64 -1, ptr %m.val.slot263, align 8
  br label %m.done210

m.next208:                                        ; preds = %mk.eq.merge255, %m.tomb205
  %m.next.tomb264 = phi i64 [ %m.tomb.sel221, %m.tomb205 ], [ %m.tomb212, %mk.eq.merge255 ]
  %m.idx.add265 = add i64 %m.idx211, 1
  %m.idx.next266 = and i64 %m.idx.add265, %m.capm1201
  %m.probe.next267 = add i64 %m.probe213, 1
  br label %m.loop203

m.empty209:                                       ; preds = %m.loop203
  %m.use.tomb268 = icmp ne i64 %m.tomb212, -1
  %m.ins.idx269 = select i1 %m.use.tomb268, i64 %m.tomb212, i64 %m.idx211
  %m.key.slot270 = getelementptr i64, ptr %m.keys179, i64 %m.ins.idx269
  store ptr %var.load34, ptr %m.key.slot270, align 8
  %m.val.slot271 = getelementptr i64, ptr %m.vals181, i64 %m.ins.idx269
  store i64 -1, ptr %m.val.slot271, align 8
  %m.ins.state.slot272 = getelementptr i8, ptr %m.states183, i64 %m.ins.idx269
  store i8 1, ptr %m.ins.state.slot272, align 1
  %m.count273 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count274 = load i64, ptr %m.count273, align 8
  %m.count.next275 = add i64 %m.count274, 1
  %m.count.gep276 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next275, ptr %m.count.gep276, align 8
  %m.ins.tombs.p277 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs278 = load i64, ptr %m.ins.tombs.p277, align 8
  %m.tomb.dec279 = select i1 %m.use.tomb268, i64 1, i64 0
  %m.ins.tombs.next280 = sub i64 %m.ins.tombs278, %m.tomb.dec279
  store i64 %m.ins.tombs.next280, ptr %m.ins.tombs.p277, align 8
  br label %m.done210

m.done210:                                        ; preds = %m.empty209, %m.overwrite207
  br label %m.done

str_ok228:                                        ; preds = %abort.dead237, %tag.slow_check231, %tag.gen_check230, %m.found206
  %mk.nlen238 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen239 = load i64, ptr %mk.nlen238, align 8
  %mk.nlen240 = and i64 %mk.nlen239, 281474976710655
  %str.tag241 = lshr i64 %mk.nlen239, 48
  %tag.immortal243 = icmp eq i64 %str.tag241, 0
  br i1 %tag.immortal243, label %str_ok242, label %tag.gen_check244

tag.gen_check230:                                 ; preds = %m.found206
  %active.gen233 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok234 = icmp eq i64 %str.tag227, %active.gen233
  br i1 %tag.fast.ok234, label %str_ok228, label %tag.slow_check231

tag.slow_check231:                                ; preds = %tag.gen_check230
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag227)
  br i1 %tag.valid236, label %str_ok228, label %tag.stale232

tag.stale232:                                     ; preds = %tag.slow_check231
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead237:                                    ; No predecessors!
  br label %str_ok228

str_ok242:                                        ; preds = %abort.dead251, %tag.slow_check245, %tag.gen_check244, %str_ok228
  %mk.lenseq252 = icmp eq i64 %mk.slen226, %mk.nlen240
  br i1 %mk.lenseq252, label %mk.eq.then253, label %mk.eq.else254

tag.gen_check244:                                 ; preds = %str_ok228
  %active.gen247 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok248 = icmp eq i64 %str.tag241, %active.gen247
  br i1 %tag.fast.ok248, label %str_ok242, label %tag.slow_check245

tag.slow_check245:                                ; preds = %tag.gen_check244
  %arena.cur249 = call ptr @dva_arena_current()
  %tag.valid250 = call i1 @dva_arena_validate_tag(ptr %arena.cur249, i64 %str.tag241)
  br i1 %tag.valid250, label %str_ok242, label %tag.stale246

tag.stale246:                                     ; preds = %tag.slow_check245
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead251:                                    ; No predecessors!
  br label %str_ok242

mk.eq.then253:                                    ; preds = %str_ok242
  %mk.sdata256 = getelementptr inbounds { i64, ptr }, ptr %mk.stored223, i32 0, i32 1
  %mk.sdata257 = load ptr, ptr %mk.sdata256, align 8
  %mk.ndata258 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata259 = load ptr, ptr %mk.ndata258, align 8
  %mk.memcmp260 = call i32 @memcmp(ptr %mk.sdata257, ptr %mk.ndata259, i64 %mk.nlen240)
  %mk.cmpeq261 = icmp eq i32 %mk.memcmp260, 0
  br label %mk.eq.merge255

mk.eq.else254:                                    ; preds = %str_ok242
  br label %mk.eq.merge255

mk.eq.merge255:                                   ; preds = %mk.eq.else254, %mk.eq.then253
  %mk.eq262 = phi i1 [ %mk.cmpeq261, %mk.eq.then253 ], [ false, %mk.eq.else254 ]
  br i1 %mk.eq262, label %m.overwrite207, label %m.next208

a.create297:                                      ; preds = %m.done
  %arena.cur299 = call ptr @dva_arena_current()
  %a.create300 = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 24)
  %arena.cur301 = call ptr @dva_arena_current()
  %a.buf302 = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 128)
  %a.len.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 0
  store i64 0, ptr %a.len.gep303, align 8
  %a.data.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 1
  store ptr %a.buf302, ptr %a.data.gep304, align 8
  %a.cap.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 2
  store i64 16, ptr %a.cap.gep305, align 8
  store ptr %a.create300, ptr %var.scs, align 8
  br label %a.after298

a.after298:                                       ; preds = %a.create297, %m.done
  %a.load2306 = load ptr, ptr %var.scs, align 8
  %var.load307 = load i64, ptr %var.cur_idx, align 8
  %var.load308 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i = ptrtoint ptr %var.load308 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2306, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after298
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 0
  %a.wr.len309 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load307, 0
  %a.wr.lt = icmp slt i64 %var.load307, %a.wr.len309
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 1
  %a.wr.data310 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data310, i64 %var.load307
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after298
  %arena.cur311 = call ptr @dva_arena_current()
  %err.alloc312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 56)
  %err.code.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 0
  store i64 4011, ptr %err.code.gep313, align 8
  %err.msg.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep314, align 8
  %err.file.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep315, align 8
  %err.line.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 3
  store i64 0, ptr %err.line.gep316, align 8
  %err.col.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 4
  store i64 0, ptr %err.col.gep317, align 8
  %err.ctx.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 5
  %err.ctx0.gep319 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep318, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep319, align 8
  %err.ctx1.gep320 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep318, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep320, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur321 = call ptr @dva_arena_current()
  %err.alloc322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 56)
  %err.code.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 0
  store i64 4011, ptr %err.code.gep323, align 8
  %err.msg.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep324, align 8
  %err.file.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep325, align 8
  %err.line.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 3
  store i64 0, ptr %err.line.gep326, align 8
  %err.col.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 4
  store i64 0, ptr %err.col.gep327, align 8
  %err.ctx.gep328 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 5
  %err.ctx0.gep329 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep328, i32 0, i32 0
  store i64 %var.load307, ptr %err.ctx0.gep329, align 8
  %err.ctx1.gep330 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep328, i32 0, i32 1
  store i64 %a.wr.len309, ptr %err.ctx1.gep330, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc312, %a.wr.err.null ], [ %err.alloc322, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then331, label %choice.else332

choice.then331:                                   ; preds = %a.wr.done
  br label %choice.exit333

choice.else332:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._334, align 8
  store ptr %a.wr.niche, ptr %var._335, align 8
  store ptr %a.wr.niche, ptr %var._336, align 8
  %err.code.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep337, align 8
  %err.msg.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep338, align 8
  %err.file.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep339, align 8
  %err.line.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep340, align 8
  %err.col.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep341, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len342 = load i64, ptr %err.msg.len, align 8
  %err.msg.len343 = and i64 %err.msg.len342, 281474976710655
  %str.tag344 = lshr i64 %err.msg.len342, 48
  %tag.immortal346 = icmp eq i64 %str.tag344, 0
  br i1 %tag.immortal346, label %str_ok345, label %tag.gen_check347

choice.exit333:                                   ; preds = %err.abort, %choice.then331
  %var.load370 = load ptr, ptr %var.env, align 8
  %var.load371 = load ptr, ptr %var.scs, align 8
  %a.load372 = load ptr, ptr %var.scs, align 8
  %a.null373 = icmp eq ptr %a.load372, null
  br i1 %a.null373, label %a.create374, label %a.after375

str_ok345:                                        ; preds = %abort.dead354, %tag.slow_check348, %tag.gen_check347, %choice.else332
  %err.msg.len32 = trunc i64 %err.msg.len343 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data355 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len356 = load i64, ptr %err.file.len, align 8
  %err.file.len357 = and i64 %err.file.len356, 281474976710655
  %str.tag358 = lshr i64 %err.file.len356, 48
  %tag.immortal360 = icmp eq i64 %str.tag358, 0
  br i1 %tag.immortal360, label %str_ok359, label %tag.gen_check361

tag.gen_check347:                                 ; preds = %choice.else332
  %active.gen350 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok351 = icmp eq i64 %str.tag344, %active.gen350
  br i1 %tag.fast.ok351, label %str_ok345, label %tag.slow_check348

tag.slow_check348:                                ; preds = %tag.gen_check347
  %arena.cur352 = call ptr @dva_arena_current()
  %tag.valid353 = call i1 @dva_arena_validate_tag(ptr %arena.cur352, i64 %str.tag344)
  br i1 %tag.valid353, label %str_ok345, label %tag.stale349

tag.stale349:                                     ; preds = %tag.slow_check348
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead354:                                    ; No predecessors!
  br label %str_ok345

str_ok359:                                        ; preds = %abort.dead368, %tag.slow_check362, %tag.gen_check361, %str_ok345
  %err.file.len32 = trunc i64 %err.file.len357 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data369 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check361:                                 ; preds = %str_ok345
  %active.gen364 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok365 = icmp eq i64 %str.tag358, %active.gen364
  br i1 %tag.fast.ok365, label %str_ok359, label %tag.slow_check362

tag.slow_check362:                                ; preds = %tag.gen_check361
  %arena.cur366 = call ptr @dva_arena_current()
  %tag.valid367 = call i1 @dva_arena_validate_tag(ptr %arena.cur366, i64 %str.tag358)
  br i1 %tag.valid367, label %str_ok359, label %tag.stale363

tag.stale363:                                     ; preds = %tag.slow_check362
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead368:                                    ; No predecessors!
  br label %str_ok359

err.thread:                                       ; preds = %str_ok359
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok359
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data355, i32 %err.file.len32, ptr %err.file.data369, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit333

a.create374:                                      ; preds = %choice.exit333
  %arena.cur376 = call ptr @dva_arena_current()
  %a.create377 = call ptr @dva_arena_alloc(ptr %arena.cur376, i64 24)
  %arena.cur378 = call ptr @dva_arena_current()
  %a.buf379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 128)
  %a.len.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 0
  store i64 0, ptr %a.len.gep380, align 8
  %a.data.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 1
  store ptr %a.buf379, ptr %a.data.gep381, align 8
  %a.cap.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 2
  store i64 16, ptr %a.cap.gep382, align 8
  store ptr %a.create377, ptr %var.scs, align 8
  br label %a.after375

a.after375:                                       ; preds = %a.create374, %choice.exit333
  %a.load2383 = load ptr, ptr %var.scs, align 8
  %fld.gep384 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load370, i32 0, i32 0
  store ptr %a.load2383, ptr %fld.gep384, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.183.then, label %and.183.else

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

and.183.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.183.else:                                     ; preds = %str_ok
  br label %and.183.exit

and.183.exit:                                     ; preds = %and.183.else, %idx_ok
  %and.183.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.183.else ]
  br i1 %and.183.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.183.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.183.exit

idx_oob:                                          ; preds = %idx_big_check, %and.183.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.183.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.183.exit
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
  br i1 %cmptmp27, label %and.184.then, label %and.184.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.184.then:                                     ; preds = %idx_ok20
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

and.184.else:                                     ; preds = %idx_ok20
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %idx_ok38
  %and.184.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.184.else ]
  br i1 %and.184.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.184.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.184.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.184.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.184.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 2
  %var.load52 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load49, i64 %addtmp51, i64 %var.load52)
  br label %choice.exit48

choice.else47:                                    ; preds = %and.184.exit
  %var.load53 = load ptr, ptr %var.name, align 8
  %var.load54 = load i64, ptr %var.i, align 8
  %addtmp55 = add i64 %var.load54, 1
  %var.load56 = load i64, ptr %var.last, align 8
  %call.res57 = call i64 @"type_env::decl_module_find"(ptr %var.load53, i64 %addtmp55, i64 %var.load56)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i64 [ %call.res, %choice.then46 ], [ %call.res57, %choice.else47 ]
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
  %arena.cur = call ptr @dva_arena_current()
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

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #0 {
entry:
  %var._194 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._190 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._116 = alloca ptr, align 8
  %var._115 = alloca ptr, align 8
  %var._114 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.else, %choice.exit153
  %choice.res197 = phi ptr [ %choice.res196, %choice.exit153 ], [ null, %choice.else ]
  ret ptr %choice.res197

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
  %cmptmp = icmp slt i64 %var.load150, 0
  br i1 %cmptmp, label %choice.then151, label %choice.else152

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

choice.then151:                                   ; preds = %choice.exit111
  br label %choice.exit153

choice.else152:                                   ; preds = %choice.exit111
  %var.load154 = load ptr, ptr %var.scope, align 8
  %fld.gep155 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load154, i32 0, i32 0
  %fld.load156 = load ptr, ptr %fld.gep155, align 8
  %var.load157 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load156, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit153:                                   ; preds = %choice.exit187, %choice.then151
  %choice.res196 = phi ptr [ null, %choice.then151 ], [ %choice.res195, %choice.exit187 ]
  br label %choice.exit

a.rd.check:                                       ; preds = %choice.else152
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load156, i32 0, i32 0
  %a.rd.len158 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load157, 0
  %a.rd.lt = icmp slt i64 %var.load157, %a.rd.len158
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load156, i32 0, i32 1
  %a.rd.data159 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data159, i64 %var.load157
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.else152
  %arena.cur160 = call ptr @dva_arena_current()
  %err.alloc161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 56)
  %err.code.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 0
  store i64 4011, ptr %err.code.gep162, align 8
  %err.msg.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep163, align 8
  %err.file.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep164, align 8
  %err.line.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 3
  store i64 0, ptr %err.line.gep165, align 8
  %err.col.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 4
  store i64 0, ptr %err.col.gep166, align 8
  %err.ctx.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 5
  %err.ctx0.gep168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep168, align 8
  %err.ctx1.gep169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep169, align 8
  %err.p2i170 = ptrtoint ptr %err.alloc161 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur171 = call ptr @dva_arena_current()
  %err.alloc172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 56)
  %err.code.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 0
  store i64 4011, ptr %err.code.gep173, align 8
  %err.msg.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep174, align 8
  %err.file.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep175, align 8
  %err.line.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 3
  store i64 0, ptr %err.line.gep176, align 8
  %err.col.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 4
  store i64 0, ptr %err.col.gep177, align 8
  %err.ctx.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 5
  %err.ctx0.gep179 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep178, i32 0, i32 0
  store i64 %var.load157, ptr %err.ctx0.gep179, align 8
  %err.ctx1.gep180 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep178, i32 0, i32 1
  store i64 %a.rd.len158, ptr %err.ctx1.gep180, align 8
  %err.p2i181 = ptrtoint ptr %err.alloc172 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i170, %a.rd.err.null ], [ %err.p2i181, %a.rd.err.oob ]
  %ram.tag182 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay183 = insertvalue { i1, i64 } %ram.tag182, i64 %a.rd.pay, 1
  %ram.tag184 = extractvalue { i1, i64 } %ram.pay183, 0
  br i1 %ram.tag184, label %choice.then185, label %choice.else186

choice.then185:                                   ; preds = %a.rd.done
  %ram.pay188 = extractvalue { i1, i64 } %ram.pay183, 1
  %pay.ptr189 = inttoptr i64 %ram.pay188 to ptr
  store ptr %pay.ptr189, ptr %var._190, align 8
  store ptr %pay.ptr189, ptr %var.binding, align 8
  %var.load191 = load ptr, ptr %var.binding, align 8
  br label %choice.exit187

choice.else186:                                   ; preds = %a.rd.done
  %ram.pay192 = extractvalue { i1, i64 } %ram.pay183, 1
  %pay.ptr193 = inttoptr i64 %ram.pay192 to ptr
  store ptr %pay.ptr193, ptr %var._194, align 8
  br label %choice.exit187

choice.exit187:                                   ; preds = %choice.else186, %choice.then185
  %choice.res195 = phi ptr [ %var.load191, %choice.then185 ], [ null, %choice.else186 ]
  br label %choice.exit153
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #0 {
entry:
  %var.p259 = alloca ptr, align 8
  %var._258 = alloca ptr, align 8
  %var.pub252 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._145 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

and.186.else:                                     ; preds = %entry
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %and.187.then, label %and.187.else

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %and.186.then
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %and.186.then
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
  br i1 %tag.immortal17, label %str_ok16, label %tag.gen_check18

choice.exit:                                      ; preds = %ret.dead137, %and.187.exit
  %var.load138 = load ptr, ptr %var.env, align 8
  %var.load139 = load ptr, ptr %var.name, align 8
  %call.res140 = call ptr @"type_env::lookup_local_exact"(ptr %var.load138, ptr %var.load139)
  store ptr %call.res140, ptr %var.exact, align 8
  %var.load141 = load ptr, ptr %var.exact, align 8
  %niche.ne.null142 = icmp ne ptr %var.load141, null
  br i1 %niche.ne.null142, label %choice.then143, label %choice.else

str_ok16:                                         ; preds = %abort.dead25, %tag.slow_check19, %tag.gen_check18, %choice.then
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 1
  %cat.seg27 = load ptr, ptr %cat.seg26, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load28 = load ptr, ptr %var.name, align 8
  %cat.seg29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %cat.seg30 = load i64, ptr %cat.seg29, align 8
  %cat.seg31 = and i64 %cat.seg30, 281474976710655
  %str.tag32 = lshr i64 %cat.seg30, 48
  %tag.immortal34 = icmp eq i64 %str.tag32, 0
  br i1 %tag.immortal34, label %str_ok33, label %tag.gen_check35

tag.gen_check18:                                  ; preds = %choice.then
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok22 = icmp eq i64 %str.tag15, %active.gen21
  br i1 %tag.fast.ok22, label %str_ok16, label %tag.slow_check19

tag.slow_check19:                                 ; preds = %tag.gen_check18
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag15)
  br i1 %tag.valid24, label %str_ok16, label %tag.stale20

tag.stale20:                                      ; preds = %tag.slow_check19
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %str_ok16

str_ok33:                                         ; preds = %abort.dead42, %tag.slow_check36, %tag.gen_check35, %str_ok16
  %cat.seg43 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %cat.seg44 = load ptr, ptr %cat.seg43, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg14, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len45

tag.gen_check35:                                  ; preds = %str_ok16
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok39 = icmp eq i64 %str.tag32, %active.gen38
  br i1 %tag.fast.ok39, label %str_ok33, label %tag.slow_check36

tag.slow_check36:                                 ; preds = %tag.gen_check35
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag32)
  br i1 %tag.valid41, label %str_ok33, label %tag.stale37

tag.stale37:                                      ; preds = %tag.slow_check36
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %str_ok33

cat.sum.len45:                                    ; preds = %abort.dead46, %str_ok33
  %cat.sum.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg31)
  %sum48 = extractvalue { i64, i1 } %cat.sum.len47, 0
  %ovf49 = extractvalue { i64, i1 } %cat.sum.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %cat.sum.len50

str_overflow_abort:                               ; preds = %str_ok33
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %cat.sum.len45

cat.sum.len50:                                    ; preds = %abort.dead52, %cat.sum.len45
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum48, i64 1)
  %sum53 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf54 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.tot.len55

str_overflow_abort51:                             ; preds = %cat.sum.len45
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %cat.sum.len50

concat.tot.len55:                                 ; preds = %abort.dead57, %cat.sum.len50
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum53)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg27, i64 %cat.seg14, i1 false)
  %cat.off = add i64 0, %cat.seg14
  %cat.dst59 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst59, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off60 = add i64 %cat.off, 2
  %cat.dst61 = getelementptr i8, ptr %concat.buf, i64 %cat.off60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.seg44, i64 %cat.seg31, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum48
  store i8 0, ptr %concat.nul, align 1
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum48, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res63 = call ptr @"type_env::lookup_local_exact"(ptr %var.load9, ptr %concat.str)
  store ptr %call.res63, ptr %var.pub, align 8
  %var.load64 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load64, null
  br i1 %niche.ne.null, label %choice.then65, label %choice.exit66

str_overflow_abort56:                             ; preds = %cat.sum.len50
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %concat.tot.len55

choice.then65:                                    ; preds = %concat.tot.len55
  store ptr %var.load64, ptr %var._, align 8
  store ptr %var.load64, ptr %var.p, align 8
  %var.load67 = load ptr, ptr %var.p, align 8
  ret ptr %var.load67

choice.exit66:                                    ; preds = %ret.dead, %concat.tot.len55
  %var.load68 = load ptr, ptr %var.env, align 8
  %var.load69 = load ptr, ptr %var.env, align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load69, i32 0, i32 8
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %cat.seg72 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 0
  %cat.seg73 = load i64, ptr %cat.seg72, align 8
  %cat.seg74 = and i64 %cat.seg73, 281474976710655
  %str.tag75 = lshr i64 %cat.seg73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  br i1 %tag.immortal77, label %str_ok76, label %tag.gen_check78

ret.dead:                                         ; No predecessors!
  br label %choice.exit66

str_ok76:                                         ; preds = %abort.dead85, %tag.slow_check79, %tag.gen_check78, %choice.exit66
  %cat.seg86 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 1
  %cat.seg87 = load ptr, ptr %cat.seg86, align 8
  %cat.lit.data88 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load89 = load ptr, ptr %var.name, align 8
  %cat.seg90 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %cat.seg91 = load i64, ptr %cat.seg90, align 8
  %cat.seg92 = and i64 %cat.seg91, 281474976710655
  %str.tag93 = lshr i64 %cat.seg91, 48
  %tag.immortal95 = icmp eq i64 %str.tag93, 0
  br i1 %tag.immortal95, label %str_ok94, label %tag.gen_check96

tag.gen_check78:                                  ; preds = %choice.exit66
  %active.gen81 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok82 = icmp eq i64 %str.tag75, %active.gen81
  br i1 %tag.fast.ok82, label %str_ok76, label %tag.slow_check79

tag.slow_check79:                                 ; preds = %tag.gen_check78
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag75)
  br i1 %tag.valid84, label %str_ok76, label %tag.stale80

tag.stale80:                                      ; preds = %tag.slow_check79
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %str_ok76

str_ok94:                                         ; preds = %abort.dead103, %tag.slow_check97, %tag.gen_check96, %str_ok76
  %cat.seg104 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %cat.seg105 = load ptr, ptr %cat.seg104, align 8
  %cat.sum.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg74, i64 3)
  %sum107 = extractvalue { i64, i1 } %cat.sum.len106, 0
  %ovf108 = extractvalue { i64, i1 } %cat.sum.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %cat.sum.len109

tag.gen_check96:                                  ; preds = %str_ok76
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok100 = icmp eq i64 %str.tag93, %active.gen99
  br i1 %tag.fast.ok100, label %str_ok94, label %tag.slow_check97

tag.slow_check97:                                 ; preds = %tag.gen_check96
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag93)
  br i1 %tag.valid102, label %str_ok94, label %tag.stale98

tag.stale98:                                      ; preds = %tag.slow_check97
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %str_ok94

cat.sum.len109:                                   ; preds = %abort.dead111, %str_ok94
  %cat.sum.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum107, i64 %cat.seg92)
  %sum113 = extractvalue { i64, i1 } %cat.sum.len112, 0
  %ovf114 = extractvalue { i64, i1 } %cat.sum.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %cat.sum.len115

str_overflow_abort110:                            ; preds = %str_ok94
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead111:                                    ; No predecessors!
  br label %cat.sum.len109

cat.sum.len115:                                   ; preds = %abort.dead117, %cat.sum.len109
  %concat.tot.len118 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum113, i64 1)
  %sum119 = extractvalue { i64, i1 } %concat.tot.len118, 0
  %ovf120 = extractvalue { i64, i1 } %concat.tot.len118, 1
  br i1 %ovf120, label %str_overflow_abort122, label %concat.tot.len121

str_overflow_abort116:                            ; preds = %cat.sum.len109
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %cat.sum.len115

concat.tot.len121:                                ; preds = %abort.dead123, %cat.sum.len115
  %arena.cur124 = call ptr @dva_arena_current()
  %concat.buf125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 %sum119)
  %cat.dst126 = getelementptr i8, ptr %concat.buf125, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst126, ptr align 1 %cat.seg87, i64 %cat.seg74, i1 false)
  %cat.off127 = add i64 0, %cat.seg74
  %cat.dst128 = getelementptr i8, ptr %concat.buf125, i64 %cat.off127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst128, ptr align 1 %cat.lit.data88, i64 3, i1 false)
  %cat.off129 = add i64 %cat.off127, 3
  %cat.dst130 = getelementptr i8, ptr %concat.buf125, i64 %cat.off129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst130, ptr align 1 %cat.seg105, i64 %cat.seg92, i1 false)
  %concat.nul131 = getelementptr i8, ptr %concat.buf125, i64 %sum113
  store i8 0, ptr %concat.nul131, align 1
  %arena.cur132 = call ptr @dva_arena_current()
  %concat.str133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %str.build.len.gep134 = getelementptr inbounds { i64, ptr }, ptr %concat.str133, i32 0, i32 0
  store i64 %sum113, ptr %str.build.len.gep134, align 8
  %str.build.data.gep135 = getelementptr inbounds { i64, ptr }, ptr %concat.str133, i32 0, i32 1
  store ptr %concat.buf125, ptr %str.build.data.gep135, align 8
  %call.res136 = call ptr @"type_env::lookup_local_exact"(ptr %var.load68, ptr %concat.str133)
  ret ptr %call.res136

str_overflow_abort122:                            ; preds = %cat.sum.len115
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead123:                                    ; No predecessors!
  br label %concat.tot.len121

ret.dead137:                                      ; No predecessors!
  br label %choice.exit

choice.then143:                                   ; preds = %choice.exit
  store ptr %var.load141, ptr %var._145, align 8
  store ptr %var.load141, ptr %var.b, align 8
  %var.load146 = load ptr, ptr %var.b, align 8
  br label %choice.exit144

choice.else:                                      ; preds = %choice.exit
  %var.load147 = load ptr, ptr %var.env, align 8
  %fld.gep148 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load147, i32 0, i32 8
  %fld.load149 = load ptr, ptr %fld.gep148, align 8
  %eq.lhs.len150 = getelementptr inbounds { i64, ptr }, ptr %fld.load149, i32 0, i32 0
  %eq.lhs.len151 = load i64, ptr %eq.lhs.len150, align 8
  %eq.lhs.len152 = and i64 %eq.lhs.len151, 281474976710655
  %str.tag153 = lshr i64 %eq.lhs.len151, 48
  %tag.immortal155 = icmp eq i64 %str.tag153, 0
  br i1 %tag.immortal155, label %str_ok154, label %tag.gen_check156

choice.exit144:                                   ; preds = %choice.exit182, %choice.then143
  %choice.res331 = phi ptr [ %var.load146, %choice.then143 ], [ %choice.res330, %choice.exit182 ]
  ret ptr %choice.res331

str_ok154:                                        ; preds = %abort.dead163, %tag.slow_check157, %tag.gen_check156, %choice.else
  %eq.rhs.len164 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len165 = and i64 %eq.rhs.len164, 281474976710655
  %eq.len166 = icmp eq i64 %eq.lhs.len152, %eq.rhs.len165
  br i1 %eq.len166, label %str.eq.then167, label %str.eq.else168

tag.gen_check156:                                 ; preds = %choice.else
  %active.gen159 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok160 = icmp eq i64 %str.tag153, %active.gen159
  br i1 %tag.fast.ok160, label %str_ok154, label %tag.slow_check157

tag.slow_check157:                                ; preds = %tag.gen_check156
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag153)
  br i1 %tag.valid162, label %str_ok154, label %tag.stale158

tag.stale158:                                     ; preds = %tag.slow_check157
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %str_ok154

str.eq.then167:                                   ; preds = %str_ok154
  %eq.lhs.data170 = getelementptr inbounds { i64, ptr }, ptr %fld.load149, i32 0, i32 1
  %eq.lhs.data171 = load ptr, ptr %eq.lhs.data170, align 8
  %eq.rhs.data172 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp173 = call i32 @memcmp(ptr %eq.lhs.data171, ptr %eq.rhs.data172, i64 %eq.lhs.len152)
  %eq.cmp.zero174 = icmp eq i32 %eq.memcmp173, 0
  br label %str.eq.merge169

str.eq.else168:                                   ; preds = %str_ok154
  br label %str.eq.merge169

str.eq.merge169:                                  ; preds = %str.eq.else168, %str.eq.then167
  %str.eq.result175 = phi i1 [ %eq.cmp.zero174, %str.eq.then167 ], [ false, %str.eq.else168 ]
  %str.neq176 = xor i1 %str.eq.result175, true
  br i1 %str.neq176, label %and.188.then, label %and.188.else

and.188.then:                                     ; preds = %str.eq.merge169
  %var.load177 = load ptr, ptr %var.name, align 8
  %call.res178 = call i1 @"type_env::name_is_qualified"(ptr %var.load177, i64 0)
  %nottmp179 = xor i1 %call.res178, true
  br label %and.188.exit

and.188.else:                                     ; preds = %str.eq.merge169
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %and.188.then
  %and.188.phi = phi i1 [ %nottmp179, %and.188.then ], [ %str.neq176, %and.188.else ]
  br i1 %and.188.phi, label %choice.then180, label %choice.else181

choice.then180:                                   ; preds = %and.188.exit
  %var.load183 = load ptr, ptr %var.env, align 8
  %var.load184 = load ptr, ptr %var.env, align 8
  %fld.gep185 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load184, i32 0, i32 8
  %fld.load186 = load ptr, ptr %fld.gep185, align 8
  %cat.seg187 = getelementptr inbounds { i64, ptr }, ptr %fld.load186, i32 0, i32 0
  %cat.seg188 = load i64, ptr %cat.seg187, align 8
  %cat.seg189 = and i64 %cat.seg188, 281474976710655
  %str.tag190 = lshr i64 %cat.seg188, 48
  %tag.immortal192 = icmp eq i64 %str.tag190, 0
  br i1 %tag.immortal192, label %str_ok191, label %tag.gen_check193

choice.else181:                                   ; preds = %and.188.exit
  br label %choice.exit182

choice.exit182:                                   ; preds = %choice.else181, %choice.exit257
  %choice.res330 = phi ptr [ %choice.res, %choice.exit257 ], [ null, %choice.else181 ]
  br label %choice.exit144

str_ok191:                                        ; preds = %abort.dead200, %tag.slow_check194, %tag.gen_check193, %choice.then180
  %cat.seg201 = getelementptr inbounds { i64, ptr }, ptr %fld.load186, i32 0, i32 1
  %cat.seg202 = load ptr, ptr %cat.seg201, align 8
  %cat.lit.data203 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load204 = load ptr, ptr %var.name, align 8
  %cat.seg205 = getelementptr inbounds { i64, ptr }, ptr %var.load204, i32 0, i32 0
  %cat.seg206 = load i64, ptr %cat.seg205, align 8
  %cat.seg207 = and i64 %cat.seg206, 281474976710655
  %str.tag208 = lshr i64 %cat.seg206, 48
  %tag.immortal210 = icmp eq i64 %str.tag208, 0
  br i1 %tag.immortal210, label %str_ok209, label %tag.gen_check211

tag.gen_check193:                                 ; preds = %choice.then180
  %active.gen196 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok197 = icmp eq i64 %str.tag190, %active.gen196
  br i1 %tag.fast.ok197, label %str_ok191, label %tag.slow_check194

tag.slow_check194:                                ; preds = %tag.gen_check193
  %arena.cur198 = call ptr @dva_arena_current()
  %tag.valid199 = call i1 @dva_arena_validate_tag(ptr %arena.cur198, i64 %str.tag190)
  br i1 %tag.valid199, label %str_ok191, label %tag.stale195

tag.stale195:                                     ; preds = %tag.slow_check194
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead200:                                    ; No predecessors!
  br label %str_ok191

str_ok209:                                        ; preds = %abort.dead218, %tag.slow_check212, %tag.gen_check211, %str_ok191
  %cat.seg219 = getelementptr inbounds { i64, ptr }, ptr %var.load204, i32 0, i32 1
  %cat.seg220 = load ptr, ptr %cat.seg219, align 8
  %cat.sum.len221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg189, i64 2)
  %sum222 = extractvalue { i64, i1 } %cat.sum.len221, 0
  %ovf223 = extractvalue { i64, i1 } %cat.sum.len221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %cat.sum.len224

tag.gen_check211:                                 ; preds = %str_ok191
  %active.gen214 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok215 = icmp eq i64 %str.tag208, %active.gen214
  br i1 %tag.fast.ok215, label %str_ok209, label %tag.slow_check212

tag.slow_check212:                                ; preds = %tag.gen_check211
  %arena.cur216 = call ptr @dva_arena_current()
  %tag.valid217 = call i1 @dva_arena_validate_tag(ptr %arena.cur216, i64 %str.tag208)
  br i1 %tag.valid217, label %str_ok209, label %tag.stale213

tag.stale213:                                     ; preds = %tag.slow_check212
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead218:                                    ; No predecessors!
  br label %str_ok209

cat.sum.len224:                                   ; preds = %abort.dead226, %str_ok209
  %cat.sum.len227 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum222, i64 %cat.seg207)
  %sum228 = extractvalue { i64, i1 } %cat.sum.len227, 0
  %ovf229 = extractvalue { i64, i1 } %cat.sum.len227, 1
  br i1 %ovf229, label %str_overflow_abort231, label %cat.sum.len230

str_overflow_abort225:                            ; preds = %str_ok209
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead226:                                    ; No predecessors!
  br label %cat.sum.len224

cat.sum.len230:                                   ; preds = %abort.dead232, %cat.sum.len224
  %concat.tot.len233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum228, i64 1)
  %sum234 = extractvalue { i64, i1 } %concat.tot.len233, 0
  %ovf235 = extractvalue { i64, i1 } %concat.tot.len233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %concat.tot.len236

str_overflow_abort231:                            ; preds = %cat.sum.len224
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead232:                                    ; No predecessors!
  br label %cat.sum.len230

concat.tot.len236:                                ; preds = %abort.dead238, %cat.sum.len230
  %arena.cur239 = call ptr @dva_arena_current()
  %concat.buf240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 %sum234)
  %cat.dst241 = getelementptr i8, ptr %concat.buf240, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst241, ptr align 1 %cat.seg202, i64 %cat.seg189, i1 false)
  %cat.off242 = add i64 0, %cat.seg189
  %cat.dst243 = getelementptr i8, ptr %concat.buf240, i64 %cat.off242
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst243, ptr align 1 %cat.lit.data203, i64 2, i1 false)
  %cat.off244 = add i64 %cat.off242, 2
  %cat.dst245 = getelementptr i8, ptr %concat.buf240, i64 %cat.off244
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst245, ptr align 1 %cat.seg220, i64 %cat.seg207, i1 false)
  %concat.nul246 = getelementptr i8, ptr %concat.buf240, i64 %sum228
  store i8 0, ptr %concat.nul246, align 1
  %arena.cur247 = call ptr @dva_arena_current()
  %concat.str248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  %str.build.len.gep249 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 0
  store i64 %sum228, ptr %str.build.len.gep249, align 8
  %str.build.data.gep250 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 1
  store ptr %concat.buf240, ptr %str.build.data.gep250, align 8
  %call.res251 = call ptr @"type_env::lookup_local_exact"(ptr %var.load183, ptr %concat.str248)
  store ptr %call.res251, ptr %var.pub252, align 8
  %var.load253 = load ptr, ptr %var.pub252, align 8
  %niche.ne.null254 = icmp ne ptr %var.load253, null
  br i1 %niche.ne.null254, label %choice.then255, label %choice.else256

str_overflow_abort237:                            ; preds = %cat.sum.len230
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead238:                                    ; No predecessors!
  br label %concat.tot.len236

choice.then255:                                   ; preds = %concat.tot.len236
  store ptr %var.load253, ptr %var._258, align 8
  store ptr %var.load253, ptr %var.p259, align 8
  %var.load260 = load ptr, ptr %var.p259, align 8
  br label %choice.exit257

choice.else256:                                   ; preds = %concat.tot.len236
  %var.load261 = load ptr, ptr %var.env, align 8
  %var.load262 = load ptr, ptr %var.env, align 8
  %fld.gep263 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load262, i32 0, i32 8
  %fld.load264 = load ptr, ptr %fld.gep263, align 8
  %cat.seg265 = getelementptr inbounds { i64, ptr }, ptr %fld.load264, i32 0, i32 0
  %cat.seg266 = load i64, ptr %cat.seg265, align 8
  %cat.seg267 = and i64 %cat.seg266, 281474976710655
  %str.tag268 = lshr i64 %cat.seg266, 48
  %tag.immortal270 = icmp eq i64 %str.tag268, 0
  br i1 %tag.immortal270, label %str_ok269, label %tag.gen_check271

choice.exit257:                                   ; preds = %concat.tot.len314, %choice.then255
  %choice.res = phi ptr [ %var.load260, %choice.then255 ], [ %call.res329, %concat.tot.len314 ]
  br label %choice.exit182

str_ok269:                                        ; preds = %abort.dead278, %tag.slow_check272, %tag.gen_check271, %choice.else256
  %cat.seg279 = getelementptr inbounds { i64, ptr }, ptr %fld.load264, i32 0, i32 1
  %cat.seg280 = load ptr, ptr %cat.seg279, align 8
  %cat.lit.data281 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load282 = load ptr, ptr %var.name, align 8
  %cat.seg283 = getelementptr inbounds { i64, ptr }, ptr %var.load282, i32 0, i32 0
  %cat.seg284 = load i64, ptr %cat.seg283, align 8
  %cat.seg285 = and i64 %cat.seg284, 281474976710655
  %str.tag286 = lshr i64 %cat.seg284, 48
  %tag.immortal288 = icmp eq i64 %str.tag286, 0
  br i1 %tag.immortal288, label %str_ok287, label %tag.gen_check289

tag.gen_check271:                                 ; preds = %choice.else256
  %active.gen274 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok275 = icmp eq i64 %str.tag268, %active.gen274
  br i1 %tag.fast.ok275, label %str_ok269, label %tag.slow_check272

tag.slow_check272:                                ; preds = %tag.gen_check271
  %arena.cur276 = call ptr @dva_arena_current()
  %tag.valid277 = call i1 @dva_arena_validate_tag(ptr %arena.cur276, i64 %str.tag268)
  br i1 %tag.valid277, label %str_ok269, label %tag.stale273

tag.stale273:                                     ; preds = %tag.slow_check272
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %str_ok269

str_ok287:                                        ; preds = %abort.dead296, %tag.slow_check290, %tag.gen_check289, %str_ok269
  %cat.seg297 = getelementptr inbounds { i64, ptr }, ptr %var.load282, i32 0, i32 1
  %cat.seg298 = load ptr, ptr %cat.seg297, align 8
  %cat.sum.len299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg267, i64 3)
  %sum300 = extractvalue { i64, i1 } %cat.sum.len299, 0
  %ovf301 = extractvalue { i64, i1 } %cat.sum.len299, 1
  br i1 %ovf301, label %str_overflow_abort303, label %cat.sum.len302

tag.gen_check289:                                 ; preds = %str_ok269
  %active.gen292 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok293 = icmp eq i64 %str.tag286, %active.gen292
  br i1 %tag.fast.ok293, label %str_ok287, label %tag.slow_check290

tag.slow_check290:                                ; preds = %tag.gen_check289
  %arena.cur294 = call ptr @dva_arena_current()
  %tag.valid295 = call i1 @dva_arena_validate_tag(ptr %arena.cur294, i64 %str.tag286)
  br i1 %tag.valid295, label %str_ok287, label %tag.stale291

tag.stale291:                                     ; preds = %tag.slow_check290
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead296:                                    ; No predecessors!
  br label %str_ok287

cat.sum.len302:                                   ; preds = %abort.dead304, %str_ok287
  %cat.sum.len305 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum300, i64 %cat.seg285)
  %sum306 = extractvalue { i64, i1 } %cat.sum.len305, 0
  %ovf307 = extractvalue { i64, i1 } %cat.sum.len305, 1
  br i1 %ovf307, label %str_overflow_abort309, label %cat.sum.len308

str_overflow_abort303:                            ; preds = %str_ok287
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead304:                                    ; No predecessors!
  br label %cat.sum.len302

cat.sum.len308:                                   ; preds = %abort.dead310, %cat.sum.len302
  %concat.tot.len311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum306, i64 1)
  %sum312 = extractvalue { i64, i1 } %concat.tot.len311, 0
  %ovf313 = extractvalue { i64, i1 } %concat.tot.len311, 1
  br i1 %ovf313, label %str_overflow_abort315, label %concat.tot.len314

str_overflow_abort309:                            ; preds = %cat.sum.len302
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead310:                                    ; No predecessors!
  br label %cat.sum.len308

concat.tot.len314:                                ; preds = %abort.dead316, %cat.sum.len308
  %arena.cur317 = call ptr @dva_arena_current()
  %concat.buf318 = call ptr @dva_arena_alloc(ptr %arena.cur317, i64 %sum312)
  %cat.dst319 = getelementptr i8, ptr %concat.buf318, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst319, ptr align 1 %cat.seg280, i64 %cat.seg267, i1 false)
  %cat.off320 = add i64 0, %cat.seg267
  %cat.dst321 = getelementptr i8, ptr %concat.buf318, i64 %cat.off320
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst321, ptr align 1 %cat.lit.data281, i64 3, i1 false)
  %cat.off322 = add i64 %cat.off320, 3
  %cat.dst323 = getelementptr i8, ptr %concat.buf318, i64 %cat.off322
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst323, ptr align 1 %cat.seg298, i64 %cat.seg285, i1 false)
  %concat.nul324 = getelementptr i8, ptr %concat.buf318, i64 %sum306
  store i8 0, ptr %concat.nul324, align 1
  %arena.cur325 = call ptr @dva_arena_current()
  %concat.str326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 16)
  %str.build.len.gep327 = getelementptr inbounds { i64, ptr }, ptr %concat.str326, i32 0, i32 0
  store i64 %sum306, ptr %str.build.len.gep327, align 8
  %str.build.data.gep328 = getelementptr inbounds { i64, ptr }, ptr %concat.str326, i32 0, i32 1
  store ptr %concat.buf318, ptr %str.build.data.gep328, align 8
  %call.res329 = call ptr @"type_env::lookup_local_exact"(ptr %var.load261, ptr %concat.str326)
  br label %choice.exit257

str_overflow_abort315:                            ; preds = %cat.sum.len308
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead316:                                    ; No predecessors!
  br label %concat.tot.len314
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

loop.latch.190:                                   ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.190, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.190, align 8
  br label %loop.header.190

loop.exit.190:                                    ; preds = %choice.then76, %loop.exit.nat.190
  %var.load79 = load ptr, ptr %"var.g_found'", align 8
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
  %var._72 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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

choice.exit:                                      ; preds = %ret.dead144, %and.192.exit
  %var.load145 = load ptr, ptr %var.env, align 8
  %var.load146 = load ptr, ptr %var.name, align 8
  %call.res147 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load145, ptr %var.load146)
  ret ptr %call.res147

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
  br i1 %tag.immortal21, label %str_ok20, label %tag.gen_check22

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

str_ok20:                                         ; preds = %abort.dead29, %tag.slow_check23, %tag.gen_check22, %choice.exit11
  %cat.seg30 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %cat.seg31 = load ptr, ptr %cat.seg30, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load32 = load ptr, ptr %var.name, align 8
  %cat.seg33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %cat.seg34 = load i64, ptr %cat.seg33, align 8
  %cat.seg35 = and i64 %cat.seg34, 281474976710655
  %str.tag36 = lshr i64 %cat.seg34, 48
  %tag.immortal38 = icmp eq i64 %str.tag36, 0
  br i1 %tag.immortal38, label %str_ok37, label %tag.gen_check39

tag.gen_check22:                                  ; preds = %choice.exit11
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok26 = icmp eq i64 %str.tag19, %active.gen25
  br i1 %tag.fast.ok26, label %str_ok20, label %tag.slow_check23

tag.slow_check23:                                 ; preds = %tag.gen_check22
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag19)
  br i1 %tag.valid28, label %str_ok20, label %tag.stale24

tag.stale24:                                      ; preds = %tag.slow_check23
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %str_ok20

str_ok37:                                         ; preds = %abort.dead46, %tag.slow_check40, %tag.gen_check39, %str_ok20
  %cat.seg47 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %cat.seg48 = load ptr, ptr %cat.seg47, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg18, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len49

tag.gen_check39:                                  ; preds = %str_ok20
  %active.gen42 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok43 = icmp eq i64 %str.tag36, %active.gen42
  br i1 %tag.fast.ok43, label %str_ok37, label %tag.slow_check40

tag.slow_check40:                                 ; preds = %tag.gen_check39
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag36)
  br i1 %tag.valid45, label %str_ok37, label %tag.stale41

tag.stale41:                                      ; preds = %tag.slow_check40
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %str_ok37

cat.sum.len49:                                    ; preds = %abort.dead50, %str_ok37
  %cat.sum.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg35)
  %sum52 = extractvalue { i64, i1 } %cat.sum.len51, 0
  %ovf53 = extractvalue { i64, i1 } %cat.sum.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %cat.sum.len54

str_overflow_abort:                               ; preds = %str_ok37
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %cat.sum.len49

cat.sum.len54:                                    ; preds = %abort.dead56, %cat.sum.len49
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum52, i64 1)
  %sum57 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf58 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf58, label %str_overflow_abort60, label %concat.tot.len59

str_overflow_abort55:                             ; preds = %cat.sum.len49
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %cat.sum.len54

concat.tot.len59:                                 ; preds = %abort.dead61, %cat.sum.len54
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum57)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg31, i64 %cat.seg18, i1 false)
  %cat.off = add i64 0, %cat.seg18
  %cat.dst63 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off64 = add i64 %cat.off, 2
  %cat.dst65 = getelementptr i8, ptr %concat.buf, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 %cat.seg48, i64 %cat.seg35, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum52
  store i8 0, ptr %concat.nul, align 1
  %arena.cur66 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum52, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res67 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load13, ptr %concat.str)
  store ptr %call.res67, ptr %var.pub, align 8
  %var.load68 = load ptr, ptr %var.pub, align 8
  %niche.ne.null69 = icmp ne ptr %var.load68, null
  br i1 %niche.ne.null69, label %choice.then70, label %choice.exit71

str_overflow_abort60:                             ; preds = %cat.sum.len54
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %concat.tot.len59

choice.then70:                                    ; preds = %concat.tot.len59
  store ptr %var.load68, ptr %var._72, align 8
  store ptr %var.load68, ptr %var.p, align 8
  %var.load73 = load ptr, ptr %var.p, align 8
  ret ptr %var.load73

choice.exit71:                                    ; preds = %ret.dead74, %concat.tot.len59
  %var.load75 = load ptr, ptr %var.env, align 8
  %var.load76 = load ptr, ptr %var.env, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load76, i32 0, i32 8
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %cat.seg79 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %cat.seg80 = load i64, ptr %cat.seg79, align 8
  %cat.seg81 = and i64 %cat.seg80, 281474976710655
  %str.tag82 = lshr i64 %cat.seg80, 48
  %tag.immortal84 = icmp eq i64 %str.tag82, 0
  br i1 %tag.immortal84, label %str_ok83, label %tag.gen_check85

ret.dead74:                                       ; No predecessors!
  br label %choice.exit71

str_ok83:                                         ; preds = %abort.dead92, %tag.slow_check86, %tag.gen_check85, %choice.exit71
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %cat.seg94 = load ptr, ptr %cat.seg93, align 8
  %cat.lit.data95 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load96 = load ptr, ptr %var.name, align 8
  %cat.seg97 = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 0
  %cat.seg98 = load i64, ptr %cat.seg97, align 8
  %cat.seg99 = and i64 %cat.seg98, 281474976710655
  %str.tag100 = lshr i64 %cat.seg98, 48
  %tag.immortal102 = icmp eq i64 %str.tag100, 0
  br i1 %tag.immortal102, label %str_ok101, label %tag.gen_check103

tag.gen_check85:                                  ; preds = %choice.exit71
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok89 = icmp eq i64 %str.tag82, %active.gen88
  br i1 %tag.fast.ok89, label %str_ok83, label %tag.slow_check86

tag.slow_check86:                                 ; preds = %tag.gen_check85
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag82)
  br i1 %tag.valid91, label %str_ok83, label %tag.stale87

tag.stale87:                                      ; preds = %tag.slow_check86
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %str_ok83

str_ok101:                                        ; preds = %abort.dead110, %tag.slow_check104, %tag.gen_check103, %str_ok83
  %cat.seg111 = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 1
  %cat.seg112 = load ptr, ptr %cat.seg111, align 8
  %cat.sum.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg81, i64 3)
  %sum114 = extractvalue { i64, i1 } %cat.sum.len113, 0
  %ovf115 = extractvalue { i64, i1 } %cat.sum.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %cat.sum.len116

tag.gen_check103:                                 ; preds = %str_ok83
  %active.gen106 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok107 = icmp eq i64 %str.tag100, %active.gen106
  br i1 %tag.fast.ok107, label %str_ok101, label %tag.slow_check104

tag.slow_check104:                                ; preds = %tag.gen_check103
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %str.tag100)
  br i1 %tag.valid109, label %str_ok101, label %tag.stale105

tag.stale105:                                     ; preds = %tag.slow_check104
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %str_ok101

cat.sum.len116:                                   ; preds = %abort.dead118, %str_ok101
  %cat.sum.len119 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum114, i64 %cat.seg99)
  %sum120 = extractvalue { i64, i1 } %cat.sum.len119, 0
  %ovf121 = extractvalue { i64, i1 } %cat.sum.len119, 1
  br i1 %ovf121, label %str_overflow_abort123, label %cat.sum.len122

str_overflow_abort117:                            ; preds = %str_ok101
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %cat.sum.len116

cat.sum.len122:                                   ; preds = %abort.dead124, %cat.sum.len116
  %concat.tot.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum120, i64 1)
  %sum126 = extractvalue { i64, i1 } %concat.tot.len125, 0
  %ovf127 = extractvalue { i64, i1 } %concat.tot.len125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %concat.tot.len128

str_overflow_abort123:                            ; preds = %cat.sum.len116
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead124:                                    ; No predecessors!
  br label %cat.sum.len122

concat.tot.len128:                                ; preds = %abort.dead130, %cat.sum.len122
  %arena.cur131 = call ptr @dva_arena_current()
  %concat.buf132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 %sum126)
  %cat.dst133 = getelementptr i8, ptr %concat.buf132, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst133, ptr align 1 %cat.seg94, i64 %cat.seg81, i1 false)
  %cat.off134 = add i64 0, %cat.seg81
  %cat.dst135 = getelementptr i8, ptr %concat.buf132, i64 %cat.off134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst135, ptr align 1 %cat.lit.data95, i64 3, i1 false)
  %cat.off136 = add i64 %cat.off134, 3
  %cat.dst137 = getelementptr i8, ptr %concat.buf132, i64 %cat.off136
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst137, ptr align 1 %cat.seg112, i64 %cat.seg99, i1 false)
  %concat.nul138 = getelementptr i8, ptr %concat.buf132, i64 %sum120
  store i8 0, ptr %concat.nul138, align 1
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.str140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 16)
  %str.build.len.gep141 = getelementptr inbounds { i64, ptr }, ptr %concat.str140, i32 0, i32 0
  store i64 %sum120, ptr %str.build.len.gep141, align 8
  %str.build.data.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str140, i32 0, i32 1
  store ptr %concat.buf132, ptr %str.build.data.gep142, align 8
  %call.res143 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load75, ptr %concat.str140)
  ret ptr %call.res143

str_overflow_abort129:                            ; preds = %cat.sum.len122
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead130:                                    ; No predecessors!
  br label %concat.tot.len128

ret.dead144:                                      ; No predecessors!
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
  %idx.neg = icmp slt i64 %var.load5, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load5, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %var.load5
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp6 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp6, label %choice.then7, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
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
  %var._14 = alloca i64, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

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

b.buf.len10:                                      ; preds = %abort.dead11, %choice.exit6
  %arena.cur12 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.194, align 8
  br label %loop.header.194

str_overflow_abort:                               ; preds = %choice.exit6
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %b.buf.len10

loop.header.194:                                  ; preds = %loop.latch.194, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.194, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load13
  br i1 %loop.cond, label %loop.body.194, label %loop.exit.nat.194

loop.body.194:                                    ; preds = %loop.header.194
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.194, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._14, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load15 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.194:                                ; preds = %loop.header.194
  br label %loop.exit.194

loop.latch.194:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.194, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.194, align 8
  br label %loop.header.194

loop.exit.194:                                    ; preds = %loop.exit.nat.194
  %var.load34 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load34, i32 0, i32 0
  %b.freeze.len35 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load34, i32 0, i32 1
  %b.freeze.data36 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

idx_big_check:                                    ; preds = %loop.body.194
  %idx.big = icmp sge i64 %var.load19, %s.read.len17
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead20, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %loop.body.194
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok

b.byte_ok:                                        ; preds = %abort.dead21, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len22 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap23 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data24 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len22, %b.cap23
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap23, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf26 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.new.buf.len27

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len27
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data31 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len32 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data31, i64 %b.cur.len32
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len32, 1
  %b.nul = getelementptr i8, ptr %b.cur.data31, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep33, align 8
  br label %loop.latch.194

b.new.buf.len27:                                  ; preds = %abort.dead29, %b.grow
  %arena.cur30 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data24, i64 %b.len22, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len22
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort28:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %b.new.buf.len27

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data36, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data36, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data36, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len35, 1
  %arena.cur37 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data36, i64 %b.freeze.len35, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len35
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.194
  %b.freeze.data38 = phi ptr [ %b.freeze.data36, %loop.exit.194 ], [ %b.freeze.data36, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur39 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len35, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data38, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load34, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load34, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load34, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack40 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack40
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %choice.res16 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit10 ]
  ret i1 %choice.res16

choice.then8:                                     ; preds = %choice.else
  br label %choice.exit10

choice.else9:                                     ; preds = %choice.else
  %var.load11 = load ptr, ptr %var.env, align 8
  %var.load12 = load ptr, ptr %var.p, align 8
  %call.res13 = call { i64, ptr } @"type_env::drop_last_dot"(ptr %var.load12)
  %arena.cur14 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  store { i64, ptr } %call.res13, ptr %ret.ub.alloc, align 8
  %call.res15 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load11, ptr %ret.ub.alloc)
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi i1 [ true, %choice.then8 ], [ %call.res15, %choice.else9 ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

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

concat.sum.len7:                                  ; preds = %abort.dead8, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf10 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %concat.tot.len11

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %concat.sum.len7

concat.tot.len11:                                 ; preds = %abort.dead13, %concat.sum.len7
  %arena.cur14 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur15 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load16 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %str.len.query17 = load i64, ptr %str.len.query, align 8
  %str.len.query18 = and i64 %str.len.query17, 281474976710655
  %str.tag19 = lshr i64 %str.len.query17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  br i1 %tag.immortal21, label %str_ok20, label %tag.gen_check22

str_overflow_abort12:                             ; preds = %concat.sum.len7
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %concat.tot.len11

str_ok20:                                         ; preds = %abort.dead29, %tag.slow_check23, %tag.gen_check22, %concat.tot.len11
  store i64 %str.len.query18, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load30 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

tag.gen_check22:                                  ; preds = %concat.tot.len11
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok26 = icmp eq i64 %str.tag19, %active.gen25
  br i1 %tag.fast.ok26, label %str_ok20, label %tag.slow_check23

tag.slow_check23:                                 ; preds = %tag.gen_check22
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag19)
  br i1 %tag.valid28, label %str_ok20, label %tag.stale24

tag.stale24:                                      ; preds = %tag.slow_check23
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %str_ok20

a.create:                                         ; preds = %str_ok20
  %arena.cur31 = call ptr @dva_arena_current()
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create32, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok20
  %a.load2 = load ptr, ptr %var.written, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len34 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data35 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.header.196:                                  ; preds = %loop.latch.196, %a.after
  %counter.load = load i64, ptr %loop.idx.196, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len34
  br i1 %loop.cond, label %loop.body.196, label %loop.exit.nat.196

loop.body.196:                                    ; preds = %loop.header.196
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.196, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data35, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.w, align 8
  %var.load36 = load ptr, ptr %var.w, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %var.load40 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query39, %var.load40
  br i1 %cmptmp, label %and.197.then, label %and.197.else

loop.exit.nat.196:                                ; preds = %loop.header.196
  br label %loop.exit.196

loop.latch.196:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.196, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.exit.196:                                    ; preds = %choice.then, %loop.exit.nat.196
  %var.load53 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load53

and.197.then:                                     ; preds = %loop.body.196
  %var.load41 = load ptr, ptr %var.w, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.chk.len42 = load i64, ptr %s.chk.len, align 8
  %s.chk.len43 = and i64 %s.chk.len42, 281474976710655
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data, align 8
  %var.load47 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len45, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len45
  %final.start = select i1 %start.gt.len, i64 %s.read.len45, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load47, 0
  %rel.end = add i64 %s.read.len45, %var.load47
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load47
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len45
  %final.end = select i1 %end.gt.len, i64 %s.read.len45, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data46, i64 %final.start
  %var.load48 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %cmp.str49 = load i64, ptr %cmp.str, align 8
  %cmp.str50 = and i64 %cmp.str49, 281474976710655
  %cmp.str51 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cmp.str52 = load ptr, ptr %cmp.str51, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str50
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.197.else:                                     ; preds = %loop.body.196
  br label %and.197.exit

and.197.exit:                                     ; preds = %and.197.else, %str.eq.merge
  %and.197.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.197.else ]
  br i1 %and.197.phi, label %choice.then, label %choice.exit

str.eq.then:                                      ; preds = %and.197.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str52, i64 %view.len)
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len36

cat.sum.len40:                                    ; preds = %abort.dead42, %cat.sum.len36
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum38, i64 1)
  %sum43 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.tot.len45

str_overflow_abort41:                             ; preds = %cat.sum.len36
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %cat.sum.len40

concat.tot.len45:                                 ; preds = %abort.dead47, %cat.sum.len40
  %arena.cur48 = call ptr @dva_arena_current()
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
  %arena.cur52 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

choice.exit:                                      ; preds = %ret.dead135, %and.216.exit
  %var.load136 = load ptr, ptr %var.env, align 8
  %var.load137 = load ptr, ptr %var.name, align 8
  %call.res138 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load136, ptr %var.load137)
  ret { i1, i64 } %call.res138

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.then
  %cat.seg23 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg24 = load ptr, ptr %cat.seg23, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load25 = load ptr, ptr %var.name, align 8
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %cat.seg27 = load i64, ptr %cat.seg26, align 8
  %cat.seg28 = and i64 %cat.seg27, 281474976710655
  %str.tag29 = lshr i64 %cat.seg27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

tag.gen_check15:                                  ; preds = %choice.then
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

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %str_ok13
  %cat.seg40 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %cat.seg41 = load ptr, ptr %cat.seg40, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len42

tag.gen_check32:                                  ; preds = %str_ok13
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

cat.sum.len42:                                    ; preds = %abort.dead43, %str_ok30
  %cat.sum.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg28)
  %sum45 = extractvalue { i64, i1 } %cat.sum.len44, 0
  %ovf46 = extractvalue { i64, i1 } %cat.sum.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %cat.sum.len47

str_overflow_abort:                               ; preds = %str_ok30
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %cat.sum.len42

cat.sum.len47:                                    ; preds = %abort.dead49, %cat.sum.len42
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum50 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf51 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.tot.len52

str_overflow_abort48:                             ; preds = %cat.sum.len42
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %cat.sum.len47

concat.tot.len52:                                 ; preds = %abort.dead54, %cat.sum.len47
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg24, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst56 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst56, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off57 = add i64 %cat.off, 2
  %cat.dst58 = getelementptr i8, ptr %concat.buf, i64 %cat.off57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst58, ptr align 1 %cat.seg41, i64 %cat.seg28, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum45
  store i8 0, ptr %concat.nul, align 1
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum45, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res60 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load6, ptr %concat.str)
  store { i1, i64 } %call.res60, ptr %var.pub, align 8
  %var.load61 = load { i1, i64 }, ptr %var.pub, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load61, 0
  br i1 %ram.tag, label %choice.then62, label %choice.exit63

str_overflow_abort53:                             ; preds = %cat.sum.len47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %concat.tot.len52

choice.then62:                                    ; preds = %concat.tot.len52
  %ram.pay = extractvalue { i1, i64 } %var.load61, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.p, align 8
  %var.load64 = load ptr, ptr %var.p, align 8
  %p.to.i64 = ptrtoint ptr %var.load64 to i64
  %ram.pay65 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay65

choice.exit63:                                    ; preds = %ret.dead, %concat.tot.len52
  %var.load66 = load ptr, ptr %var.env, align 8
  %var.load67 = load ptr, ptr %var.env, align 8
  %fld.gep68 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load67, i32 0, i32 8
  %fld.load69 = load ptr, ptr %fld.gep68, align 8
  %cat.seg70 = getelementptr inbounds { i64, ptr }, ptr %fld.load69, i32 0, i32 0
  %cat.seg71 = load i64, ptr %cat.seg70, align 8
  %cat.seg72 = and i64 %cat.seg71, 281474976710655
  %str.tag73 = lshr i64 %cat.seg71, 48
  %tag.immortal75 = icmp eq i64 %str.tag73, 0
  br i1 %tag.immortal75, label %str_ok74, label %tag.gen_check76

ret.dead:                                         ; No predecessors!
  br label %choice.exit63

str_ok74:                                         ; preds = %abort.dead83, %tag.slow_check77, %tag.gen_check76, %choice.exit63
  %cat.seg84 = getelementptr inbounds { i64, ptr }, ptr %fld.load69, i32 0, i32 1
  %cat.seg85 = load ptr, ptr %cat.seg84, align 8
  %cat.lit.data86 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load87 = load ptr, ptr %var.name, align 8
  %cat.seg88 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 0
  %cat.seg89 = load i64, ptr %cat.seg88, align 8
  %cat.seg90 = and i64 %cat.seg89, 281474976710655
  %str.tag91 = lshr i64 %cat.seg89, 48
  %tag.immortal93 = icmp eq i64 %str.tag91, 0
  br i1 %tag.immortal93, label %str_ok92, label %tag.gen_check94

tag.gen_check76:                                  ; preds = %choice.exit63
  %active.gen79 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok80 = icmp eq i64 %str.tag73, %active.gen79
  br i1 %tag.fast.ok80, label %str_ok74, label %tag.slow_check77

tag.slow_check77:                                 ; preds = %tag.gen_check76
  %arena.cur81 = call ptr @dva_arena_current()
  %tag.valid82 = call i1 @dva_arena_validate_tag(ptr %arena.cur81, i64 %str.tag73)
  br i1 %tag.valid82, label %str_ok74, label %tag.stale78

tag.stale78:                                      ; preds = %tag.slow_check77
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %str_ok74

str_ok92:                                         ; preds = %abort.dead101, %tag.slow_check95, %tag.gen_check94, %str_ok74
  %cat.seg102 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 1
  %cat.seg103 = load ptr, ptr %cat.seg102, align 8
  %cat.sum.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg72, i64 3)
  %sum105 = extractvalue { i64, i1 } %cat.sum.len104, 0
  %ovf106 = extractvalue { i64, i1 } %cat.sum.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %cat.sum.len107

tag.gen_check94:                                  ; preds = %str_ok74
  %active.gen97 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok98 = icmp eq i64 %str.tag91, %active.gen97
  br i1 %tag.fast.ok98, label %str_ok92, label %tag.slow_check95

tag.slow_check95:                                 ; preds = %tag.gen_check94
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag91)
  br i1 %tag.valid100, label %str_ok92, label %tag.stale96

tag.stale96:                                      ; preds = %tag.slow_check95
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %str_ok92

cat.sum.len107:                                   ; preds = %abort.dead109, %str_ok92
  %cat.sum.len110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum105, i64 %cat.seg90)
  %sum111 = extractvalue { i64, i1 } %cat.sum.len110, 0
  %ovf112 = extractvalue { i64, i1 } %cat.sum.len110, 1
  br i1 %ovf112, label %str_overflow_abort114, label %cat.sum.len113

str_overflow_abort108:                            ; preds = %str_ok92
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead109:                                    ; No predecessors!
  br label %cat.sum.len107

cat.sum.len113:                                   ; preds = %abort.dead115, %cat.sum.len107
  %concat.tot.len116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum111, i64 1)
  %sum117 = extractvalue { i64, i1 } %concat.tot.len116, 0
  %ovf118 = extractvalue { i64, i1 } %concat.tot.len116, 1
  br i1 %ovf118, label %str_overflow_abort120, label %concat.tot.len119

str_overflow_abort114:                            ; preds = %cat.sum.len107
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead115:                                    ; No predecessors!
  br label %cat.sum.len113

concat.tot.len119:                                ; preds = %abort.dead121, %cat.sum.len113
  %arena.cur122 = call ptr @dva_arena_current()
  %concat.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %sum117)
  %cat.dst124 = getelementptr i8, ptr %concat.buf123, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst124, ptr align 1 %cat.seg85, i64 %cat.seg72, i1 false)
  %cat.off125 = add i64 0, %cat.seg72
  %cat.dst126 = getelementptr i8, ptr %concat.buf123, i64 %cat.off125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst126, ptr align 1 %cat.lit.data86, i64 3, i1 false)
  %cat.off127 = add i64 %cat.off125, 3
  %cat.dst128 = getelementptr i8, ptr %concat.buf123, i64 %cat.off127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst128, ptr align 1 %cat.seg103, i64 %cat.seg90, i1 false)
  %concat.nul129 = getelementptr i8, ptr %concat.buf123, i64 %sum111
  store i8 0, ptr %concat.nul129, align 1
  %arena.cur130 = call ptr @dva_arena_current()
  %concat.str131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 16)
  %str.build.len.gep132 = getelementptr inbounds { i64, ptr }, ptr %concat.str131, i32 0, i32 0
  store i64 %sum111, ptr %str.build.len.gep132, align 8
  %str.build.data.gep133 = getelementptr inbounds { i64, ptr }, ptr %concat.str131, i32 0, i32 1
  store ptr %concat.buf123, ptr %str.build.data.gep133, align 8
  %call.res134 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load66, ptr %concat.str131)
  ret { i1, i64 } %call.res134

str_overflow_abort120:                            ; preds = %cat.sum.len113
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead121:                                    ; No predecessors!
  br label %concat.tot.len119

ret.dead135:                                      ; No predecessors!
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal13, label %str_ok12, label %tag.gen_check14

choice.else:                                      ; preds = %and.217.exit
  %var.load142 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit137
  %choice.res = phi ptr [ %var.load141, %choice.exit137 ], [ %var.load142, %choice.else ]
  %ret.pack143 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack143

str_ok12:                                         ; preds = %abort.dead21, %tag.slow_check15, %tag.gen_check14, %choice.then
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %cat.seg23 = load ptr, ptr %cat.seg22, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load24 = load ptr, ptr %var.name, align 8
  %cat.seg25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %cat.seg26 = load i64, ptr %cat.seg25, align 8
  %cat.seg27 = and i64 %cat.seg26, 281474976710655
  %str.tag28 = lshr i64 %cat.seg26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  br i1 %tag.immortal30, label %str_ok29, label %tag.gen_check31

tag.gen_check14:                                  ; preds = %choice.then
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok18 = icmp eq i64 %str.tag11, %active.gen17
  br i1 %tag.fast.ok18, label %str_ok12, label %tag.slow_check15

tag.slow_check15:                                 ; preds = %tag.gen_check14
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag11)
  br i1 %tag.valid20, label %str_ok12, label %tag.stale16

tag.stale16:                                      ; preds = %tag.slow_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %str_ok12

str_ok29:                                         ; preds = %abort.dead38, %tag.slow_check32, %tag.gen_check31, %str_ok12
  %cat.seg39 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %cat.seg40 = load ptr, ptr %cat.seg39, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg10, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len41

tag.gen_check31:                                  ; preds = %str_ok12
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok35 = icmp eq i64 %str.tag28, %active.gen34
  br i1 %tag.fast.ok35, label %str_ok29, label %tag.slow_check32

tag.slow_check32:                                 ; preds = %tag.gen_check31
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag28)
  br i1 %tag.valid37, label %str_ok29, label %tag.stale33

tag.stale33:                                      ; preds = %tag.slow_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %str_ok29

cat.sum.len41:                                    ; preds = %abort.dead42, %str_ok29
  %cat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg27)
  %sum44 = extractvalue { i64, i1 } %cat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %cat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %cat.sum.len46

str_overflow_abort:                               ; preds = %str_ok29
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %cat.sum.len41

cat.sum.len46:                                    ; preds = %abort.dead48, %cat.sum.len41
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %cat.sum.len41
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %cat.sum.len46

concat.tot.len51:                                 ; preds = %abort.dead53, %cat.sum.len46
  %arena.cur54 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum49)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg23, i64 %cat.seg10, i1 false)
  %cat.off = add i64 0, %cat.seg10
  %cat.dst55 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst55, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off56 = add i64 %cat.off, 2
  %cat.dst57 = getelementptr i8, ptr %concat.buf, i64 %cat.off56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst57, ptr align 1 %cat.seg40, i64 %cat.seg27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum44
  store i8 0, ptr %concat.nul, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub_name, align 8
  %var.load59 = load ptr, ptr %var.env, align 8
  %var.load60 = load ptr, ptr %var.pub_name, align 8
  %call.res61 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load59, ptr %var.load60)
  %ram.tag = extractvalue { i1, i64 } %call.res61, 0
  br i1 %ram.tag, label %choice.then62, label %choice.exit63

str_overflow_abort52:                             ; preds = %cat.sum.len46
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %concat.tot.len51

choice.then62:                                    ; preds = %concat.tot.len51
  %var.load64 = load ptr, ptr %var.pub_name, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load64, align 8
  ret { i64, ptr } %ret.pack

choice.exit63:                                    ; preds = %ret.dead, %concat.tot.len51
  %var.load65 = load ptr, ptr %var.env, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load65, i32 0, i32 8
  %fld.load67 = load ptr, ptr %fld.gep66, align 8
  %cat.seg68 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 0
  %cat.seg69 = load i64, ptr %cat.seg68, align 8
  %cat.seg70 = and i64 %cat.seg69, 281474976710655
  %str.tag71 = lshr i64 %cat.seg69, 48
  %tag.immortal73 = icmp eq i64 %str.tag71, 0
  br i1 %tag.immortal73, label %str_ok72, label %tag.gen_check74

ret.dead:                                         ; No predecessors!
  br label %choice.exit63

str_ok72:                                         ; preds = %abort.dead81, %tag.slow_check75, %tag.gen_check74, %choice.exit63
  %cat.seg82 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 1
  %cat.seg83 = load ptr, ptr %cat.seg82, align 8
  %cat.lit.data84 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load85 = load ptr, ptr %var.name, align 8
  %cat.seg86 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %cat.seg87 = load i64, ptr %cat.seg86, align 8
  %cat.seg88 = and i64 %cat.seg87, 281474976710655
  %str.tag89 = lshr i64 %cat.seg87, 48
  %tag.immortal91 = icmp eq i64 %str.tag89, 0
  br i1 %tag.immortal91, label %str_ok90, label %tag.gen_check92

tag.gen_check74:                                  ; preds = %choice.exit63
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok78 = icmp eq i64 %str.tag71, %active.gen77
  br i1 %tag.fast.ok78, label %str_ok72, label %tag.slow_check75

tag.slow_check75:                                 ; preds = %tag.gen_check74
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag71)
  br i1 %tag.valid80, label %str_ok72, label %tag.stale76

tag.stale76:                                      ; preds = %tag.slow_check75
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %str_ok72

str_ok90:                                         ; preds = %abort.dead99, %tag.slow_check93, %tag.gen_check92, %str_ok72
  %cat.seg100 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 1
  %cat.seg101 = load ptr, ptr %cat.seg100, align 8
  %cat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg70, i64 3)
  %sum103 = extractvalue { i64, i1 } %cat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %cat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %cat.sum.len105

tag.gen_check92:                                  ; preds = %str_ok72
  %active.gen95 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok96 = icmp eq i64 %str.tag89, %active.gen95
  br i1 %tag.fast.ok96, label %str_ok90, label %tag.slow_check93

tag.slow_check93:                                 ; preds = %tag.gen_check92
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag89)
  br i1 %tag.valid98, label %str_ok90, label %tag.stale94

tag.stale94:                                      ; preds = %tag.slow_check93
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead99:                                     ; No predecessors!
  br label %str_ok90

cat.sum.len105:                                   ; preds = %abort.dead107, %str_ok90
  %cat.sum.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 %cat.seg88)
  %sum109 = extractvalue { i64, i1 } %cat.sum.len108, 0
  %ovf110 = extractvalue { i64, i1 } %cat.sum.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %cat.sum.len111

str_overflow_abort106:                            ; preds = %str_ok90
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %cat.sum.len105

cat.sum.len111:                                   ; preds = %abort.dead113, %cat.sum.len105
  %concat.tot.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum109, i64 1)
  %sum115 = extractvalue { i64, i1 } %concat.tot.len114, 0
  %ovf116 = extractvalue { i64, i1 } %concat.tot.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %concat.tot.len117

str_overflow_abort112:                            ; preds = %cat.sum.len105
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %cat.sum.len111

concat.tot.len117:                                ; preds = %abort.dead119, %cat.sum.len111
  %arena.cur120 = call ptr @dva_arena_current()
  %concat.buf121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum115)
  %cat.dst122 = getelementptr i8, ptr %concat.buf121, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst122, ptr align 1 %cat.seg83, i64 %cat.seg70, i1 false)
  %cat.off123 = add i64 0, %cat.seg70
  %cat.dst124 = getelementptr i8, ptr %concat.buf121, i64 %cat.off123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst124, ptr align 1 %cat.lit.data84, i64 3, i1 false)
  %cat.off125 = add i64 %cat.off123, 3
  %cat.dst126 = getelementptr i8, ptr %concat.buf121, i64 %cat.off125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst126, ptr align 1 %cat.seg101, i64 %cat.seg88, i1 false)
  %concat.nul127 = getelementptr i8, ptr %concat.buf121, i64 %sum109
  store i8 0, ptr %concat.nul127, align 1
  %arena.cur128 = call ptr @dva_arena_current()
  %concat.str129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 16)
  %str.build.len.gep130 = getelementptr inbounds { i64, ptr }, ptr %concat.str129, i32 0, i32 0
  store i64 %sum109, ptr %str.build.len.gep130, align 8
  %str.build.data.gep131 = getelementptr inbounds { i64, ptr }, ptr %concat.str129, i32 0, i32 1
  store ptr %concat.buf121, ptr %str.build.data.gep131, align 8
  store ptr %concat.str129, ptr %var.priv_name, align 8
  %var.load132 = load ptr, ptr %var.env, align 8
  %var.load133 = load ptr, ptr %var.priv_name, align 8
  %call.res134 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load132, ptr %var.load133)
  %ram.tag135 = extractvalue { i1, i64 } %call.res134, 0
  br i1 %ram.tag135, label %choice.then136, label %choice.exit137

str_overflow_abort118:                            ; preds = %cat.sum.len111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %concat.tot.len117

choice.then136:                                   ; preds = %concat.tot.len117
  %var.load138 = load ptr, ptr %var.priv_name, align 8
  %ret.pack139 = load { i64, ptr }, ptr %var.load138, align 8
  ret { i64, ptr } %ret.pack139

choice.exit137:                                   ; preds = %ret.dead140, %concat.tot.len117
  %var.load141 = load ptr, ptr %var.name, align 8
  br label %choice.exit

ret.dead140:                                      ; No predecessors!
  br label %choice.exit137
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
  %var._138 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

choice.exit:                                      ; preds = %choice.exit137, %and.221.exit
  %var.load141 = load ptr, ptr %var.env, align 8
  %var.load142 = load ptr, ptr %var.name, align 8
  %call.res143 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load141, ptr %var.load142)
  ret ptr %call.res143

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.then
  %cat.seg23 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg24 = load ptr, ptr %cat.seg23, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load25 = load ptr, ptr %var.name, align 8
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %cat.seg27 = load i64, ptr %cat.seg26, align 8
  %cat.seg28 = and i64 %cat.seg27, 281474976710655
  %str.tag29 = lshr i64 %cat.seg27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

tag.gen_check15:                                  ; preds = %choice.then
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

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %str_ok13
  %cat.seg40 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %cat.seg41 = load ptr, ptr %cat.seg40, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len42

tag.gen_check32:                                  ; preds = %str_ok13
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

cat.sum.len42:                                    ; preds = %abort.dead43, %str_ok30
  %cat.sum.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg28)
  %sum45 = extractvalue { i64, i1 } %cat.sum.len44, 0
  %ovf46 = extractvalue { i64, i1 } %cat.sum.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %cat.sum.len47

str_overflow_abort:                               ; preds = %str_ok30
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %cat.sum.len42

cat.sum.len47:                                    ; preds = %abort.dead49, %cat.sum.len42
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum50 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf51 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.tot.len52

str_overflow_abort48:                             ; preds = %cat.sum.len42
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %cat.sum.len47

concat.tot.len52:                                 ; preds = %abort.dead54, %cat.sum.len47
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg24, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst56 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst56, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off57 = add i64 %cat.off, 2
  %cat.dst58 = getelementptr i8, ptr %concat.buf, i64 %cat.off57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst58, ptr align 1 %cat.seg41, i64 %cat.seg28, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum45
  store i8 0, ptr %concat.nul, align 1
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum45, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res60 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load6, ptr %concat.str)
  store ptr %call.res60, ptr %var.pub, align 8
  %var.load61 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load61, null
  br i1 %niche.ne.null, label %choice.then62, label %choice.exit63

str_overflow_abort53:                             ; preds = %cat.sum.len47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %concat.tot.len52

choice.then62:                                    ; preds = %concat.tot.len52
  store ptr %var.load61, ptr %var._, align 8
  store ptr %var.load61, ptr %var.p, align 8
  %var.load64 = load ptr, ptr %var.p, align 8
  ret ptr %var.load64

choice.exit63:                                    ; preds = %ret.dead, %concat.tot.len52
  %var.load65 = load ptr, ptr %var.env, align 8
  %var.load66 = load ptr, ptr %var.env, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load66, i32 0, i32 8
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %cat.seg69 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %cat.seg70 = load i64, ptr %cat.seg69, align 8
  %cat.seg71 = and i64 %cat.seg70, 281474976710655
  %str.tag72 = lshr i64 %cat.seg70, 48
  %tag.immortal74 = icmp eq i64 %str.tag72, 0
  br i1 %tag.immortal74, label %str_ok73, label %tag.gen_check75

ret.dead:                                         ; No predecessors!
  br label %choice.exit63

str_ok73:                                         ; preds = %abort.dead82, %tag.slow_check76, %tag.gen_check75, %choice.exit63
  %cat.seg83 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %cat.seg84 = load ptr, ptr %cat.seg83, align 8
  %cat.lit.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load86 = load ptr, ptr %var.name, align 8
  %cat.seg87 = getelementptr inbounds { i64, ptr }, ptr %var.load86, i32 0, i32 0
  %cat.seg88 = load i64, ptr %cat.seg87, align 8
  %cat.seg89 = and i64 %cat.seg88, 281474976710655
  %str.tag90 = lshr i64 %cat.seg88, 48
  %tag.immortal92 = icmp eq i64 %str.tag90, 0
  br i1 %tag.immortal92, label %str_ok91, label %tag.gen_check93

tag.gen_check75:                                  ; preds = %choice.exit63
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok79 = icmp eq i64 %str.tag72, %active.gen78
  br i1 %tag.fast.ok79, label %str_ok73, label %tag.slow_check76

tag.slow_check76:                                 ; preds = %tag.gen_check75
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag72)
  br i1 %tag.valid81, label %str_ok73, label %tag.stale77

tag.stale77:                                      ; preds = %tag.slow_check76
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %str_ok73

str_ok91:                                         ; preds = %abort.dead100, %tag.slow_check94, %tag.gen_check93, %str_ok73
  %cat.seg101 = getelementptr inbounds { i64, ptr }, ptr %var.load86, i32 0, i32 1
  %cat.seg102 = load ptr, ptr %cat.seg101, align 8
  %cat.sum.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg71, i64 3)
  %sum104 = extractvalue { i64, i1 } %cat.sum.len103, 0
  %ovf105 = extractvalue { i64, i1 } %cat.sum.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %cat.sum.len106

tag.gen_check93:                                  ; preds = %str_ok73
  %active.gen96 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok97 = icmp eq i64 %str.tag90, %active.gen96
  br i1 %tag.fast.ok97, label %str_ok91, label %tag.slow_check94

tag.slow_check94:                                 ; preds = %tag.gen_check93
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag90)
  br i1 %tag.valid99, label %str_ok91, label %tag.stale95

tag.stale95:                                      ; preds = %tag.slow_check94
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead100:                                    ; No predecessors!
  br label %str_ok91

cat.sum.len106:                                   ; preds = %abort.dead108, %str_ok91
  %cat.sum.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum104, i64 %cat.seg89)
  %sum110 = extractvalue { i64, i1 } %cat.sum.len109, 0
  %ovf111 = extractvalue { i64, i1 } %cat.sum.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %cat.sum.len112

str_overflow_abort107:                            ; preds = %str_ok91
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %cat.sum.len106

cat.sum.len112:                                   ; preds = %abort.dead114, %cat.sum.len106
  %concat.tot.len115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum110, i64 1)
  %sum116 = extractvalue { i64, i1 } %concat.tot.len115, 0
  %ovf117 = extractvalue { i64, i1 } %concat.tot.len115, 1
  br i1 %ovf117, label %str_overflow_abort119, label %concat.tot.len118

str_overflow_abort113:                            ; preds = %cat.sum.len106
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %cat.sum.len112

concat.tot.len118:                                ; preds = %abort.dead120, %cat.sum.len112
  %arena.cur121 = call ptr @dva_arena_current()
  %concat.buf122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %sum116)
  %cat.dst123 = getelementptr i8, ptr %concat.buf122, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst123, ptr align 1 %cat.seg84, i64 %cat.seg71, i1 false)
  %cat.off124 = add i64 0, %cat.seg71
  %cat.dst125 = getelementptr i8, ptr %concat.buf122, i64 %cat.off124
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst125, ptr align 1 %cat.lit.data85, i64 3, i1 false)
  %cat.off126 = add i64 %cat.off124, 3
  %cat.dst127 = getelementptr i8, ptr %concat.buf122, i64 %cat.off126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst127, ptr align 1 %cat.seg102, i64 %cat.seg89, i1 false)
  %concat.nul128 = getelementptr i8, ptr %concat.buf122, i64 %sum110
  store i8 0, ptr %concat.nul128, align 1
  %arena.cur129 = call ptr @dva_arena_current()
  %concat.str130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 16)
  %str.build.len.gep131 = getelementptr inbounds { i64, ptr }, ptr %concat.str130, i32 0, i32 0
  store i64 %sum110, ptr %str.build.len.gep131, align 8
  %str.build.data.gep132 = getelementptr inbounds { i64, ptr }, ptr %concat.str130, i32 0, i32 1
  store ptr %concat.buf122, ptr %str.build.data.gep132, align 8
  %call.res133 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load65, ptr %concat.str130)
  store ptr %call.res133, ptr %var.priv, align 8
  %var.load134 = load ptr, ptr %var.priv, align 8
  %niche.ne.null135 = icmp ne ptr %var.load134, null
  br i1 %niche.ne.null135, label %choice.then136, label %choice.exit137

str_overflow_abort119:                            ; preds = %cat.sum.len112
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %concat.tot.len118

choice.then136:                                   ; preds = %concat.tot.len118
  store ptr %var.load134, ptr %var._138, align 8
  store ptr %var.load134, ptr %var.pr, align 8
  %var.load139 = load ptr, ptr %var.pr, align 8
  ret ptr %var.load139

choice.exit137:                                   ; preds = %ret.dead140, %concat.tot.len118
  br label %choice.exit

ret.dead140:                                      ; No predecessors!
  br label %choice.exit137
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
