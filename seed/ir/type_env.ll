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
@str.4 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.4 }
@str.5 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.5 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"type_env::is_generic_binding", ptr null }
@"var.type_env::is_generic_binding" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"type_env::mark_global_var", ptr null }
@"var.type_env::mark_global_var" = global ptr null
@str.6 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"type_env::is_marked_global", ptr null }
@"var.type_env::is_marked_global" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"type_env::enter_scope", ptr null }
@"var.type_env::enter_scope" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"type_env::leave_scope", ptr null }
@"var.type_env::leave_scope" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"type_env::bind_local", ptr null }
@"var.type_env::bind_local" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"type_env::unbind_local", ptr null }
@"var.type_env::unbind_local" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"type_env::bind_global", ptr null }
@"var.type_env::bind_global" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"type_env::name_is_qualified", ptr null }
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
@str.7 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local", ptr null }
@"var.type_env::lookup_local" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding_exact", ptr null }
@"var.type_env::lookup_binding_exact" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding", ptr null }
@"var.type_env::lookup_binding" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"type_env::find_last_dot", ptr null }
@"var.type_env::find_last_dot" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.24 = internal constant { ptr, ptr } { ptr @"type_env::drop_last_dot", ptr null }
@"var.type_env::drop_last_dot" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"type_env::init_has_name", ptr null }
@"var.type_env::init_has_name" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_tracked", ptr null }
@"var.type_env::init_mark_tracked" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"type_env::init_is_tracked", ptr null }
@"var.type_env::init_is_tracked" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_whole", ptr null }
@"var.type_env::init_mark_whole" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"type_env::init_is_whole", ptr null }
@"var.type_env::init_is_whole" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_written", ptr null }
@"var.type_env::init_mark_written" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok_walk", ptr null }
@"var.type_env::init_is_ok_walk" = global ptr null
@str.8 = internal unnamed_addr constant [2 x i8] c".\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"type_env::init_has_subpath", ptr null }
@"var.type_env::init_has_subpath" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok", ptr null }
@"var.type_env::init_is_ok" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot", ptr null }
@"var.type_env::init_snapshot" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot_of", ptr null }
@"var.type_env::init_snapshot_of" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"type_env::init_restore", ptr null }
@"var.type_env::init_restore" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"type_env::init_merge_two", ptr null }
@"var.type_env::init_merge_two" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"type_env::init_is_fully_init", ptr null }
@"var.type_env::init_is_fully_init" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"type_env::bind_generic", ptr null }
@"var.type_env::bind_generic" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic_exact", ptr null }
@"var.type_env::lookup_generic_exact" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic", ptr null }
@"var.type_env::lookup_generic" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"type_env::bind_user_type", ptr null }
@"var.type_env::bind_user_type" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type_exact", ptr null }
@"var.type_env::lookup_user_type_exact" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type", ptr null }
@"var.type_env::lookup_user_type" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_type_env, ptr null }]

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

define internal void @__dva_global_init_type_env() #1 {
entry:
  store ptr @clo.const, ptr @"var.type_env::empty_scope", align 8
  store ptr @clo.const.1, ptr @"var.type_env::new_init", align 8
  store ptr @clo.const.2, ptr @"var.type_env::new_env", align 8
  store ptr @clo.const.3, ptr @"var.type_env::cache_fn_body", align 8
  store ptr @clo.const.4, ptr @"var.type_env::lookup_fn_body", align 8
  store ptr @clo.const.5, ptr @"var.type_env::mark_generic_binding", align 8
  store ptr @clo.const.6, ptr @"var.type_env::is_generic_binding", align 8
  store ptr @clo.const.7, ptr @"var.type_env::mark_global_var", align 8
  store ptr @clo.const.8, ptr @"var.type_env::is_marked_global", align 8
  store ptr @clo.const.9, ptr @"var.type_env::enter_scope", align 8
  store ptr @clo.const.10, ptr @"var.type_env::leave_scope", align 8
  store ptr @clo.const.11, ptr @"var.type_env::bind_local", align 8
  store ptr @clo.const.12, ptr @"var.type_env::unbind_local", align 8
  store ptr @clo.const.13, ptr @"var.type_env::bind_global", align 8
  store ptr @clo.const.14, ptr @"var.type_env::name_is_qualified", align 8
  store ptr @clo.const.15, ptr @"var.type_env::decl_module_find", align 8
  store ptr @clo.const.16, ptr @"var.type_env::decl_module", align 8
  store ptr @clo.const.17, ptr @"var.type_env::set_current_module", align 8
  store ptr @clo.const.19, ptr @"var.type_env::lookup_local_exact", align 8
  store ptr @clo.const.18, ptr @"var.type_env::lookup_scope", align 8
  store ptr @clo.const.20, ptr @"var.type_env::lookup_local", align 8
  store ptr @clo.const.21, ptr @"var.type_env::lookup_binding_exact", align 8
  store ptr @clo.const.22, ptr @"var.type_env::lookup_binding", align 8
  store ptr @clo.const.23, ptr @"var.type_env::find_last_dot", align 8
  store ptr @clo.const.24, ptr @"var.type_env::drop_last_dot", align 8
  store ptr @clo.const.25, ptr @"var.type_env::init_has_name", align 8
  store ptr @clo.const.26, ptr @"var.type_env::init_mark_tracked", align 8
  store ptr @clo.const.27, ptr @"var.type_env::init_is_tracked", align 8
  store ptr @clo.const.28, ptr @"var.type_env::init_mark_whole", align 8
  store ptr @clo.const.29, ptr @"var.type_env::init_is_whole", align 8
  store ptr @clo.const.30, ptr @"var.type_env::init_mark_written", align 8
  store ptr @clo.const.31, ptr @"var.type_env::init_is_ok_walk", align 8
  store ptr @clo.const.32, ptr @"var.type_env::init_has_subpath", align 8
  store ptr @clo.const.33, ptr @"var.type_env::init_is_ok", align 8
  store ptr @clo.const.34, ptr @"var.type_env::init_snapshot", align 8
  store ptr @clo.const.35, ptr @"var.type_env::init_snapshot_of", align 8
  store ptr @clo.const.36, ptr @"var.type_env::init_restore", align 8
  store ptr @clo.const.37, ptr @"var.type_env::init_merge_two", align 8
  store ptr @clo.const.38, ptr @"var.type_env::init_is_fully_init", align 8
  store ptr @clo.const.39, ptr @"var.type_env::bind_generic", align 8
  store ptr @clo.const.40, ptr @"var.type_env::lookup_generic_exact", align 8
  store ptr @clo.const.41, ptr @"var.type_env::lookup_generic", align 8
  store ptr @clo.const.42, ptr @"var.type_env::bind_user_type", align 8
  store ptr @clo.const.43, ptr @"var.type_env::lookup_user_type_exact", align 8
  store ptr @clo.const.44, ptr @"var.type_env::lookup_user_type", align 8
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
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur107 = call ptr @dva_arena_current()
  %rec.alloc108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld109 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 0
  store ptr %a.load239, ptr %rec.fld109, align 8
  %rec.fld110 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 1
  store i64 0, ptr %rec.fld110, align 8
  %rec.fld111 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 2
  store i64 0, ptr %rec.fld111, align 8
  %rec.fld112 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 3
  store ptr %a.load252, ptr %rec.fld112, align 8
  %rec.fld113 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld113, ptr align 1 %call.res, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld114 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 5
  store ptr %a.load265, ptr %rec.fld114, align 8
  %rec.fld115 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 6
  store ptr %a.load278, ptr %rec.fld115, align 8
  %rec.fld116 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 7
  store ptr %m.new80, ptr %rec.fld116, align 8
  %rec.fld117 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 8
  store ptr @str.0.struct, ptr %rec.fld117, align 8
  %rec.fld118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 9
  store i1 false, ptr %rec.fld118, align 1
  %rec.fld119 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 10
  store i1 false, ptr %rec.fld119, align 1
  %rec.fld120 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 11
  store i1 false, ptr %rec.fld120, align 1
  %rec.fld121 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 12
  store i1 false, ptr %rec.fld121, align 1
  %rec.fld122 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 13
  store ptr %a.new, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 14
  store ptr %a.new100, ptr %rec.fld123, align 8
  %rec.fld124 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 15
  store ptr %ram.alloc, ptr %rec.fld124, align 8
  %rec.fld125 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc108, i32 0, i32 16
  store ptr @str.1.struct, ptr %rec.fld125, align 8
  ret ptr %rec.alloc108
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
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
  %m.key.slot = getelementptr ptr, ptr %m.keys5, i64 %m.idx
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
  %m.key.slot219 = getelementptr ptr, ptr %m.keys5, i64 %m.ins.idx218
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
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys33, i64 %m.re.i
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
  %m.key.slot82 = getelementptr ptr, ptr %m.keys43, i64 %m.idx71
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
  %m.key.slot120 = getelementptr ptr, ptr %m.keys43, i64 %m.ins.idx
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
  %m.key.slot166 = getelementptr ptr, ptr %m.keys127, i64 %m.idx155
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
  %m.key.slot206 = getelementptr ptr, ptr %m.keys127, i64 %m.ins.idx205
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
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
  %m.rd.val.slot = getelementptr ptr, ptr %m.vals36, i64 %m.rd.idx
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

define void @"type_env::mark_generic_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 13
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
  %var.n = alloca ptr, align 8
  %var._24 = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 13
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.header.0:                                    ; preds = %loop.latch.0, %entry
  %counter.load = load i64, ptr %loop.idx.0, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.0, label %loop.exit.nat.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 13
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load4, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.0:                                  ; preds = %loop.header.0
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit42
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %choice.then41, %loop.exit.nat.0
  %var.load43 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load43

a.rd.check:                                       ; preds = %loop.body.0
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.0
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
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
  %arena.cur8 = call ptr @dva_arena_current()
  %err.alloc9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 0
  store i64 4011, ptr %err.code.gep10, align 8
  %err.msg.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep11, align 8
  %err.file.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep12, align 8
  %err.line.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 3
  store i64 0, ptr %err.line.gep13, align 8
  %err.col.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 4
  store i64 0, ptr %err.col.gep14, align 8
  %err.ctx.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 5
  %err.ctx0.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep15, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep16, align 8
  %err.ctx1.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep15, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep17, align 8
  %err.p2i18 = ptrtoint ptr %err.alloc9 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i18, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag19 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag19, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay20 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay20 to ptr
  store ptr %pay.ptr, ptr %var._21, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay22 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr23 = inttoptr i64 %ram.pay22 to ptr
  store ptr %pay.ptr23, ptr %var._24, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.n, align 8
  %var.load25 = load ptr, ptr %var.n, align 8
  %var.load26 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len27 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len28 = and i64 %eq.lhs.len27, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len27, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %eq.rhs.len30 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len31 = and i64 %eq.rhs.len30, 281474976710655
  %str.tag32 = lshr i64 %eq.rhs.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check34:                                  ; preds = %str_ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len28, %eq.rhs.len31
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale36:                                      ; preds = %str_gen_check34
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %eq.rhs.data40 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data39, ptr %eq.rhs.data40, i64 %eq.lhs.len28)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then41, label %choice.exit42

choice.then41:                                    ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.0

choice.exit42:                                    ; preds = %str.eq.merge
  br label %loop.latch.0
}

define void @"type_env::mark_global_var"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 14
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
  %var.n = alloca ptr, align 8
  %var._116 = alloca ptr, align 8
  %var._113 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.1 = alloca i64, align 8
  %loop.idx.1 = alloca i64, align 8
  %var.qname = alloca ptr, align 8
  %"var.found'" = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 8
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
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load12, i32 0, i32 8
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 0
  %concat.lhs15 = load i64, ptr %concat.lhs, align 8
  %concat.lhs16 = and i64 %concat.lhs15, 281474976710655
  %str.tag17 = lshr i64 %concat.lhs15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

choice.else:                                      ; preds = %str.eq.merge
  %var.load85 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len75
  %choice.res = phi ptr [ %concat.str82, %concat.tot.len75 ], [ %var.load85, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load86 = load ptr, ptr %var.env, align 8
  %fld.gep87 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load86, i32 0, i32 14
  %fld.load88 = load ptr, ptr %fld.gep87, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load88, i32 0, i32 0
  %a.len.query89 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

str_gen_check19:                                  ; preds = %choice.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %choice.then
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %concat.lhs25 = load ptr, ptr %concat.lhs24, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs26 = and i64 %concat.rhs, 281474976710655
  %str.tag27 = lshr i64 %concat.rhs, 48
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
  %concat.rhs34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 %concat.rhs26)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len35

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

concat.sum.len35:                                 ; preds = %str_overflow_abort, %str_ok30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum36 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf37 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %concat.tot.len38

str_overflow_abort:                               ; preds = %str_ok30
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len35

concat.tot.len38:                                 ; preds = %str_overflow_abort39, %concat.sum.len35
  %arena.cur40 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs34, i64 %concat.rhs26, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur41 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load42 = load ptr, ptr %var.name, align 8
  %concat.lhs43 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs44 = load i64, ptr %concat.lhs43, align 8
  %concat.lhs45 = and i64 %concat.lhs44, 281474976710655
  %str.tag46 = lshr i64 %concat.lhs44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_overflow_abort39:                             ; preds = %concat.sum.len35
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len38

str_gen_check48:                                  ; preds = %concat.tot.len38
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %concat.tot.len38
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs54 = load ptr, ptr %concat.lhs53, align 8
  %concat.rhs55 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %concat.rhs56 = load i64, ptr %concat.rhs55, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

str_stale50:                                      ; preds = %str_gen_check48
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check60:                                  ; preds = %str_ok49
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %str_ok49
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %concat.rhs66 = load ptr, ptr %concat.rhs65, align 8
  %concat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs45, i64 %concat.rhs57)
  %sum68 = extractvalue { i64, i1 } %concat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %concat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %concat.sum.len70

str_stale62:                                      ; preds = %str_gen_check60
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

concat.sum.len70:                                 ; preds = %str_overflow_abort71, %str_ok61
  %concat.tot.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 1)
  %sum73 = extractvalue { i64, i1 } %concat.tot.len72, 0
  %ovf74 = extractvalue { i64, i1 } %concat.tot.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %concat.tot.len75

str_overflow_abort71:                             ; preds = %str_ok61
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len70

concat.tot.len75:                                 ; preds = %str_overflow_abort76, %concat.sum.len70
  %arena.cur77 = call ptr @dva_arena_current()
  %concat.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf78, ptr align 1 %concat.lhs54, i64 %concat.lhs45, i1 false)
  %concat.mid79 = getelementptr i8, ptr %concat.buf78, i64 %concat.lhs45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid79, ptr align 1 %concat.rhs66, i64 %concat.rhs57, i1 false)
  %concat.nul80 = getelementptr i8, ptr %concat.buf78, i64 %sum68
  store i8 0, ptr %concat.nul80, align 1
  %arena.cur81 = call ptr @dva_arena_current()
  %concat.str82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 0
  store i64 %sum68, ptr %str.build.len.gep83, align 8
  %str.build.data.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 1
  store ptr %concat.buf78, ptr %str.build.data.gep84, align 8
  br label %choice.exit

str_overflow_abort76:                             ; preds = %concat.sum.len70
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len75

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit
  %counter.load = load i64, ptr %loop.idx.1, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query89
  br i1 %loop.cond, label %loop.body.1, label %loop.exit.nat.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load90 = load ptr, ptr %var.env, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load90, i32 0, i32 14
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %var.load93 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load92, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.1:                                  ; preds = %loop.header.1
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit337
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %choice.then336, %loop.exit.nat.1
  %var.load338 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load338

a.rd.check:                                       ; preds = %loop.body.1
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load92, i32 0, i32 0
  %a.rd.len94 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load93, 0
  %a.rd.lt = icmp slt i64 %var.load93, %a.rd.len94
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load92, i32 0, i32 1
  %a.rd.data95 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data95, i64 %var.load93
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.1
  %arena.cur96 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
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
  %arena.cur97 = call ptr @dva_arena_current()
  %err.alloc98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 56)
  %err.code.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 0
  store i64 4011, ptr %err.code.gep99, align 8
  %err.msg.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep100, align 8
  %err.file.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep101, align 8
  %err.line.gep102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 3
  store i64 0, ptr %err.line.gep102, align 8
  %err.col.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 4
  store i64 0, ptr %err.col.gep103, align 8
  %err.ctx.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc98, i32 0, i32 5
  %err.ctx0.gep105 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep104, i32 0, i32 0
  store i64 %var.load93, ptr %err.ctx0.gep105, align 8
  %err.ctx1.gep106 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep104, i32 0, i32 1
  store i64 %a.rd.len94, ptr %err.ctx1.gep106, align 8
  %err.p2i107 = ptrtoint ptr %err.alloc98 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i107, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag108 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag108, label %choice.then109, label %choice.else110

choice.then109:                                   ; preds = %a.rd.done
  %ram.pay112 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay112 to ptr
  store ptr %pay.ptr, ptr %var._113, align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %a.rd.done
  %ram.pay114 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr115 = inttoptr i64 %ram.pay114 to ptr
  store ptr %pay.ptr115, ptr %var._116, align 8
  br label %choice.exit111

choice.exit111:                                   ; preds = %choice.else110, %choice.then109
  %choice.res117 = phi ptr [ %pay.ptr, %choice.then109 ], [ @str.0.struct, %choice.else110 ]
  store ptr %choice.res117, ptr %var.n, align 8
  %var.load118 = load ptr, ptr %var.n, align 8
  %var.load119 = load ptr, ptr %var.name, align 8
  %eq.lhs.len120 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %eq.lhs.len121 = load i64, ptr %eq.lhs.len120, align 8
  %eq.lhs.len122 = and i64 %eq.lhs.len121, 281474976710655
  %str.tag123 = lshr i64 %eq.lhs.len121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_gen_check125:                                 ; preds = %choice.exit111
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %choice.exit111
  %eq.rhs.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 0
  %eq.rhs.len131 = load i64, ptr %eq.rhs.len130, align 8
  %eq.rhs.len132 = and i64 %eq.rhs.len131, 281474976710655
  %str.tag133 = lshr i64 %eq.rhs.len131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

str_stale127:                                     ; preds = %str_gen_check125
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check135:                                 ; preds = %str_ok126
  %arena.cur138 = call ptr @dva_arena_current()
  %tag.valid139 = call i1 @dva_arena_validate_tag(ptr %arena.cur138, i64 %str.tag133)
  br i1 %tag.valid139, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %str_ok126
  %eq.len140 = icmp eq i64 %eq.lhs.len122, %eq.rhs.len132
  br i1 %eq.len140, label %str.eq.then141, label %str.eq.else142

str_stale137:                                     ; preds = %str_gen_check135
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

str.eq.then141:                                   ; preds = %str_ok136
  %eq.lhs.data144 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %eq.lhs.data145 = load ptr, ptr %eq.lhs.data144, align 8
  %eq.rhs.data146 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 1
  %eq.rhs.data147 = load ptr, ptr %eq.rhs.data146, align 8
  %eq.memcmp148 = call i32 @memcmp(ptr %eq.lhs.data145, ptr %eq.rhs.data147, i64 %eq.lhs.len122)
  %eq.cmp.zero149 = icmp eq i32 %eq.memcmp148, 0
  br label %str.eq.merge143

str.eq.else142:                                   ; preds = %str_ok136
  br label %str.eq.merge143

str.eq.merge143:                                  ; preds = %str.eq.else142, %str.eq.then141
  %str.eq.result150 = phi i1 [ %eq.cmp.zero149, %str.eq.then141 ], [ false, %str.eq.else142 ]
  br i1 %str.eq.result150, label %or.2.then, label %or.2.else

or.2.then:                                        ; preds = %str.eq.merge143
  br label %or.2.exit

or.2.else:                                        ; preds = %str.eq.merge143
  %var.load151 = load ptr, ptr %var.n, align 8
  %var.load152 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len153 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %eq.lhs.len154 = load i64, ptr %eq.lhs.len153, align 8
  %eq.lhs.len155 = and i64 %eq.lhs.len154, 281474976710655
  %str.tag156 = lshr i64 %eq.lhs.len154, 48
  %str.immortal157 = icmp eq i64 %str.tag156, 0
  br i1 %str.immortal157, label %str_ok159, label %str_gen_check158

or.2.exit:                                        ; preds = %str.eq.merge176, %or.2.then
  %or.2.phi = phi i1 [ %str.eq.result150, %or.2.then ], [ %str.eq.result183, %str.eq.merge176 ]
  br i1 %or.2.phi, label %or.3.then, label %or.3.else

str_gen_check158:                                 ; preds = %or.2.else
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag156)
  br i1 %tag.valid162, label %str_ok159, label %str_stale160

str_ok159:                                        ; preds = %str_stale160, %str_gen_check158, %or.2.else
  %eq.rhs.len163 = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 0
  %eq.rhs.len164 = load i64, ptr %eq.rhs.len163, align 8
  %eq.rhs.len165 = and i64 %eq.rhs.len164, 281474976710655
  %str.tag166 = lshr i64 %eq.rhs.len164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

str_stale160:                                     ; preds = %str_gen_check158
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok159

str_gen_check168:                                 ; preds = %str_ok159
  %arena.cur171 = call ptr @dva_arena_current()
  %tag.valid172 = call i1 @dva_arena_validate_tag(ptr %arena.cur171, i64 %str.tag166)
  br i1 %tag.valid172, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %str_ok159
  %eq.len173 = icmp eq i64 %eq.lhs.len155, %eq.rhs.len165
  br i1 %eq.len173, label %str.eq.then174, label %str.eq.else175

str_stale170:                                     ; preds = %str_gen_check168
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str.eq.then174:                                   ; preds = %str_ok169
  %eq.lhs.data177 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %eq.lhs.data178 = load ptr, ptr %eq.lhs.data177, align 8
  %eq.rhs.data179 = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 1
  %eq.rhs.data180 = load ptr, ptr %eq.rhs.data179, align 8
  %eq.memcmp181 = call i32 @memcmp(ptr %eq.lhs.data178, ptr %eq.rhs.data180, i64 %eq.lhs.len155)
  %eq.cmp.zero182 = icmp eq i32 %eq.memcmp181, 0
  br label %str.eq.merge176

str.eq.else175:                                   ; preds = %str_ok169
  br label %str.eq.merge176

str.eq.merge176:                                  ; preds = %str.eq.else175, %str.eq.then174
  %str.eq.result183 = phi i1 [ %eq.cmp.zero182, %str.eq.then174 ], [ false, %str.eq.else175 ]
  br label %or.2.exit

or.3.then:                                        ; preds = %or.2.exit
  br label %or.3.exit

or.3.else:                                        ; preds = %or.2.exit
  %var.load184 = load ptr, ptr %var.env, align 8
  %fld.gep185 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load184, i32 0, i32 8
  %fld.load186 = load ptr, ptr %fld.gep185, align 8
  %eq.lhs.len187 = getelementptr inbounds { i64, ptr }, ptr %fld.load186, i32 0, i32 0
  %eq.lhs.len188 = load i64, ptr %eq.lhs.len187, align 8
  %eq.lhs.len189 = and i64 %eq.lhs.len188, 281474976710655
  %str.tag190 = lshr i64 %eq.lhs.len188, 48
  %str.immortal191 = icmp eq i64 %str.tag190, 0
  br i1 %str.immortal191, label %str_ok193, label %str_gen_check192

or.3.exit:                                        ; preds = %and.4.exit, %or.3.then
  %or.3.phi = phi i1 [ %or.2.phi, %or.3.then ], [ %and.4.phi, %and.4.exit ]
  store i1 %or.3.phi, ptr %var.match, align 1
  %var.load335 = load i1, ptr %var.match, align 1
  br i1 %var.load335, label %choice.then336, label %choice.exit337

str_gen_check192:                                 ; preds = %or.3.else
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid196 = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag190)
  br i1 %tag.valid196, label %str_ok193, label %str_stale194

str_ok193:                                        ; preds = %str_stale194, %str_gen_check192, %or.3.else
  %eq.rhs.len197 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len198 = and i64 %eq.rhs.len197, 281474976710655
  %str.tag199 = lshr i64 %eq.rhs.len197, 48
  %str.immortal200 = icmp eq i64 %str.tag199, 0
  br i1 %str.immortal200, label %str_ok202, label %str_gen_check201

str_stale194:                                     ; preds = %str_gen_check192
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok193

str_gen_check201:                                 ; preds = %str_ok193
  %arena.cur204 = call ptr @dva_arena_current()
  %tag.valid205 = call i1 @dva_arena_validate_tag(ptr %arena.cur204, i64 %str.tag199)
  br i1 %tag.valid205, label %str_ok202, label %str_stale203

str_ok202:                                        ; preds = %str_stale203, %str_gen_check201, %str_ok193
  %eq.len206 = icmp eq i64 %eq.lhs.len189, %eq.rhs.len198
  br i1 %eq.len206, label %str.eq.then207, label %str.eq.else208

str_stale203:                                     ; preds = %str_gen_check201
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok202

str.eq.then207:                                   ; preds = %str_ok202
  %eq.lhs.data210 = getelementptr inbounds { i64, ptr }, ptr %fld.load186, i32 0, i32 1
  %eq.lhs.data211 = load ptr, ptr %eq.lhs.data210, align 8
  %eq.rhs.data212 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp213 = call i32 @memcmp(ptr %eq.lhs.data211, ptr %eq.rhs.data212, i64 %eq.lhs.len189)
  %eq.cmp.zero214 = icmp eq i32 %eq.memcmp213, 0
  br label %str.eq.merge209

str.eq.else208:                                   ; preds = %str_ok202
  br label %str.eq.merge209

str.eq.merge209:                                  ; preds = %str.eq.else208, %str.eq.then207
  %str.eq.result215 = phi i1 [ %eq.cmp.zero214, %str.eq.then207 ], [ false, %str.eq.else208 ]
  %str.neq216 = xor i1 %str.eq.result215, true
  br i1 %str.neq216, label %and.4.then, label %and.4.else

and.4.then:                                       ; preds = %str.eq.merge209
  %var.load217 = load ptr, ptr %var.name, align 8
  %var.load218 = load ptr, ptr %var.env, align 8
  %fld.gep219 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load218, i32 0, i32 8
  %fld.load220 = load ptr, ptr %fld.gep219, align 8
  %concat.lhs221 = getelementptr inbounds { i64, ptr }, ptr %fld.load220, i32 0, i32 0
  %concat.lhs222 = load i64, ptr %concat.lhs221, align 8
  %concat.lhs223 = and i64 %concat.lhs222, 281474976710655
  %str.tag224 = lshr i64 %concat.lhs222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

and.4.else:                                       ; preds = %str.eq.merge209
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %str.eq.merge327
  %and.4.phi = phi i1 [ %str.eq.result334, %str.eq.merge327 ], [ %str.neq216, %and.4.else ]
  br label %or.3.exit

str_gen_check226:                                 ; preds = %and.4.then
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %and.4.then
  %concat.lhs231 = getelementptr inbounds { i64, ptr }, ptr %fld.load220, i32 0, i32 1
  %concat.lhs232 = load ptr, ptr %concat.lhs231, align 8
  %concat.rhs233 = load i64, ptr @str.6.struct, align 8
  %concat.rhs234 = and i64 %concat.rhs233, 281474976710655
  %str.tag235 = lshr i64 %concat.rhs233, 48
  %str.immortal236 = icmp eq i64 %str.tag235, 0
  br i1 %str.immortal236, label %str_ok238, label %str_gen_check237

str_stale228:                                     ; preds = %str_gen_check226
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

str_gen_check237:                                 ; preds = %str_ok227
  %arena.cur240 = call ptr @dva_arena_current()
  %tag.valid241 = call i1 @dva_arena_validate_tag(ptr %arena.cur240, i64 %str.tag235)
  br i1 %tag.valid241, label %str_ok238, label %str_stale239

str_ok238:                                        ; preds = %str_stale239, %str_gen_check237, %str_ok227
  %concat.rhs242 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs223, i64 %concat.rhs234)
  %sum244 = extractvalue { i64, i1 } %concat.sum.len243, 0
  %ovf245 = extractvalue { i64, i1 } %concat.sum.len243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %concat.sum.len246

str_stale239:                                     ; preds = %str_gen_check237
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok238

concat.sum.len246:                                ; preds = %str_overflow_abort247, %str_ok238
  %concat.tot.len248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum244, i64 1)
  %sum249 = extractvalue { i64, i1 } %concat.tot.len248, 0
  %ovf250 = extractvalue { i64, i1 } %concat.tot.len248, 1
  br i1 %ovf250, label %str_overflow_abort252, label %concat.tot.len251

str_overflow_abort247:                            ; preds = %str_ok238
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len246

concat.tot.len251:                                ; preds = %str_overflow_abort252, %concat.sum.len246
  %arena.cur253 = call ptr @dva_arena_current()
  %concat.buf254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 %sum249)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf254, ptr align 1 %concat.lhs232, i64 %concat.lhs223, i1 false)
  %concat.mid255 = getelementptr i8, ptr %concat.buf254, i64 %concat.lhs223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid255, ptr align 1 %concat.rhs242, i64 %concat.rhs234, i1 false)
  %concat.nul256 = getelementptr i8, ptr %concat.buf254, i64 %sum244
  store i8 0, ptr %concat.nul256, align 1
  %arena.cur257 = call ptr @dva_arena_current()
  %concat.str258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 16)
  %str.build.len.gep259 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 0
  store i64 %sum244, ptr %str.build.len.gep259, align 8
  %str.build.data.gep260 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 1
  store ptr %concat.buf254, ptr %str.build.data.gep260, align 8
  %var.load261 = load ptr, ptr %var.n, align 8
  %concat.lhs262 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 0
  %concat.lhs263 = load i64, ptr %concat.lhs262, align 8
  %concat.lhs264 = and i64 %concat.lhs263, 281474976710655
  %str.tag265 = lshr i64 %concat.lhs263, 48
  %str.immortal266 = icmp eq i64 %str.tag265, 0
  br i1 %str.immortal266, label %str_ok268, label %str_gen_check267

str_overflow_abort252:                            ; preds = %concat.sum.len246
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len251

str_gen_check267:                                 ; preds = %concat.tot.len251
  %arena.cur270 = call ptr @dva_arena_current()
  %tag.valid271 = call i1 @dva_arena_validate_tag(ptr %arena.cur270, i64 %str.tag265)
  br i1 %tag.valid271, label %str_ok268, label %str_stale269

str_ok268:                                        ; preds = %str_stale269, %str_gen_check267, %concat.tot.len251
  %concat.lhs272 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 1
  %concat.lhs273 = load ptr, ptr %concat.lhs272, align 8
  %concat.rhs274 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 0
  %concat.rhs275 = load i64, ptr %concat.rhs274, align 8
  %concat.rhs276 = and i64 %concat.rhs275, 281474976710655
  %str.tag277 = lshr i64 %concat.rhs275, 48
  %str.immortal278 = icmp eq i64 %str.tag277, 0
  br i1 %str.immortal278, label %str_ok280, label %str_gen_check279

str_stale269:                                     ; preds = %str_gen_check267
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok268

str_gen_check279:                                 ; preds = %str_ok268
  %arena.cur282 = call ptr @dva_arena_current()
  %tag.valid283 = call i1 @dva_arena_validate_tag(ptr %arena.cur282, i64 %str.tag277)
  br i1 %tag.valid283, label %str_ok280, label %str_stale281

str_ok280:                                        ; preds = %str_stale281, %str_gen_check279, %str_ok268
  %concat.rhs284 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 1
  %concat.rhs285 = load ptr, ptr %concat.rhs284, align 8
  %concat.sum.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs264, i64 %concat.rhs276)
  %sum287 = extractvalue { i64, i1 } %concat.sum.len286, 0
  %ovf288 = extractvalue { i64, i1 } %concat.sum.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %concat.sum.len289

str_stale281:                                     ; preds = %str_gen_check279
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok280

concat.sum.len289:                                ; preds = %str_overflow_abort290, %str_ok280
  %concat.tot.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum287, i64 1)
  %sum292 = extractvalue { i64, i1 } %concat.tot.len291, 0
  %ovf293 = extractvalue { i64, i1 } %concat.tot.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %concat.tot.len294

str_overflow_abort290:                            ; preds = %str_ok280
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len289

concat.tot.len294:                                ; preds = %str_overflow_abort295, %concat.sum.len289
  %arena.cur296 = call ptr @dva_arena_current()
  %concat.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 %sum292)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf297, ptr align 1 %concat.lhs273, i64 %concat.lhs264, i1 false)
  %concat.mid298 = getelementptr i8, ptr %concat.buf297, i64 %concat.lhs264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid298, ptr align 1 %concat.rhs285, i64 %concat.rhs276, i1 false)
  %concat.nul299 = getelementptr i8, ptr %concat.buf297, i64 %sum287
  store i8 0, ptr %concat.nul299, align 1
  %arena.cur300 = call ptr @dva_arena_current()
  %concat.str301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 16)
  %str.build.len.gep302 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 0
  store i64 %sum287, ptr %str.build.len.gep302, align 8
  %str.build.data.gep303 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 1
  store ptr %concat.buf297, ptr %str.build.data.gep303, align 8
  %eq.lhs.len304 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 0
  %eq.lhs.len305 = load i64, ptr %eq.lhs.len304, align 8
  %eq.lhs.len306 = and i64 %eq.lhs.len305, 281474976710655
  %str.tag307 = lshr i64 %eq.lhs.len305, 48
  %str.immortal308 = icmp eq i64 %str.tag307, 0
  br i1 %str.immortal308, label %str_ok310, label %str_gen_check309

str_overflow_abort295:                            ; preds = %concat.sum.len289
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len294

str_gen_check309:                                 ; preds = %concat.tot.len294
  %arena.cur312 = call ptr @dva_arena_current()
  %tag.valid313 = call i1 @dva_arena_validate_tag(ptr %arena.cur312, i64 %str.tag307)
  br i1 %tag.valid313, label %str_ok310, label %str_stale311

str_ok310:                                        ; preds = %str_stale311, %str_gen_check309, %concat.tot.len294
  %eq.rhs.len314 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 0
  %eq.rhs.len315 = load i64, ptr %eq.rhs.len314, align 8
  %eq.rhs.len316 = and i64 %eq.rhs.len315, 281474976710655
  %str.tag317 = lshr i64 %eq.rhs.len315, 48
  %str.immortal318 = icmp eq i64 %str.tag317, 0
  br i1 %str.immortal318, label %str_ok320, label %str_gen_check319

str_stale311:                                     ; preds = %str_gen_check309
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok310

str_gen_check319:                                 ; preds = %str_ok310
  %arena.cur322 = call ptr @dva_arena_current()
  %tag.valid323 = call i1 @dva_arena_validate_tag(ptr %arena.cur322, i64 %str.tag317)
  br i1 %tag.valid323, label %str_ok320, label %str_stale321

str_ok320:                                        ; preds = %str_stale321, %str_gen_check319, %str_ok310
  %eq.len324 = icmp eq i64 %eq.lhs.len306, %eq.rhs.len316
  br i1 %eq.len324, label %str.eq.then325, label %str.eq.else326

str_stale321:                                     ; preds = %str_gen_check319
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok320

str.eq.then325:                                   ; preds = %str_ok320
  %eq.lhs.data328 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 1
  %eq.lhs.data329 = load ptr, ptr %eq.lhs.data328, align 8
  %eq.rhs.data330 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 1
  %eq.rhs.data331 = load ptr, ptr %eq.rhs.data330, align 8
  %eq.memcmp332 = call i32 @memcmp(ptr %eq.lhs.data329, ptr %eq.rhs.data331, i64 %eq.lhs.len306)
  %eq.cmp.zero333 = icmp eq i32 %eq.memcmp332, 0
  br label %str.eq.merge327

str.eq.else326:                                   ; preds = %str_ok320
  br label %str.eq.merge327

str.eq.merge327:                                  ; preds = %str.eq.else326, %str.eq.then325
  %str.eq.result334 = phi i1 [ %eq.cmp.zero333, %str.eq.then325 ], [ false, %str.eq.else326 ]
  br label %and.4.exit

choice.then336:                                   ; preds = %or.3.exit
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.1

choice.exit337:                                   ; preds = %or.3.exit
  br label %loop.latch.1
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
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
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load12, i32 0, i32 0
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
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load46, i32 0, i32 0
  store ptr %a.load259, ptr %fld.gep60, align 8
  %var.load61 = load ptr, ptr %var.env, align 8
  %var.load62 = load i64, ptr %var.new_idx, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load61, i32 0, i32 1
  store i64 %var.load62, ptr %fld.gep63, align 8
  %var.load64 = load ptr, ptr %var.env, align 8
  %var.load65 = load ptr, ptr %var.env, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load65, i32 0, i32 2
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %addtmp = add i64 %fld.load67, 1
  %fld.gep68 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load64, i32 0, i32 2
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 149, ptr %err.line.gep, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 149, ptr %err.line.gep17, align 8
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
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load30, i32 0, i32 1
  store i64 %fld.load33, ptr %fld.gep34, align 8
  %var.load35 = load ptr, ptr %var.env, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 2
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %cmptmp38 = icmp sgt i64 %fld.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

choice.then39:                                    ; preds = %choice.exit25
  %var.load42 = load ptr, ptr %var.env, align 8
  %var.load43 = load ptr, ptr %var.env, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %subtmp = sub i64 %fld.load45, 1
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load42, i32 0, i32 2
  store i64 %subtmp, ptr %fld.gep46, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %choice.exit25
  %var.load47 = load ptr, ptr %var.env, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load47, i32 0, i32 2
  store i64 0, ptr %fld.gep48, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  br label %choice.exit
}

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #1 {
entry:
  %var._370 = alloca ptr, align 8
  %var._369 = alloca ptr, align 8
  %var._368 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after401, %entry
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 161, ptr %err.line.gep, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 161, ptr %err.line.gep17, align 8
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
  %m.key.slot = getelementptr ptr, ptr %m.keys53, i64 %m.idx
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
  %fld.gep284 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load283, i32 0, i32 2
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
  %m.key.slot268 = getelementptr ptr, ptr %m.keys53, i64 %m.ins.idx267
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
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys82, i64 %m.re.i
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
  %m.key.slot131 = getelementptr ptr, ptr %m.keys92, i64 %m.idx120
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
  %m.key.slot169 = getelementptr ptr, ptr %m.keys92, i64 %m.ins.idx
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
  %m.key.slot215 = getelementptr ptr, ptr %m.keys176, i64 %m.idx204
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
  %m.key.slot255 = getelementptr ptr, ptr %m.keys176, i64 %m.ins.idx254
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
  store ptr @str.4.struct, ptr %err.msg.gep345, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep355, align 8
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
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc343, %a.wr.err.null ], [ %err.alloc353, %a.wr.err.oob ]
  %arena.cur362 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %tag.gep363 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep363, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep364 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep364, align 8
  br i1 %is.pos, label %choice.then365, label %choice.else366

choice.then365:                                   ; preds = %a.wr.done
  br label %choice.exit367

choice.else366:                                   ; preds = %a.wr.done
  store ptr %payload.ptr, ptr %var._368, align 8
  store ptr %payload.ptr, ptr %var._369, align 8
  store ptr %payload.ptr, ptr %var._370, align 8
  %err.code.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep371, align 8
  %err.msg.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep372, align 8
  %err.file.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep373, align 8
  %err.line.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep374, align 8
  %err.col.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep375, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len376 = load i64, ptr %err.msg.len, align 8
  %err.msg.len377 = and i64 %err.msg.len376, 281474976710655
  %str.tag378 = lshr i64 %err.msg.len376, 48
  %str.immortal379 = icmp eq i64 %str.tag378, 0
  br i1 %str.immortal379, label %str_ok381, label %str_gen_check380

choice.exit367:                                   ; preds = %err.abort, %choice.then365
  %var.load396 = load ptr, ptr %var.env, align 8
  %var.load397 = load ptr, ptr %var.scs, align 8
  %a.load398 = load ptr, ptr %var.scs, align 8
  %a.null399 = icmp eq ptr %a.load398, null
  br i1 %a.null399, label %a.create400, label %a.after401

str_gen_check380:                                 ; preds = %choice.else366
  %arena.cur383 = call ptr @dva_arena_current()
  %tag.valid384 = call i1 @dva_arena_validate_tag(ptr %arena.cur383, i64 %str.tag378)
  br i1 %tag.valid384, label %str_ok381, label %str_stale382

str_ok381:                                        ; preds = %str_stale382, %str_gen_check380, %choice.else366
  %err.msg.len32 = trunc i64 %err.msg.len377 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data385 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len386 = load i64, ptr %err.file.len, align 8
  %err.file.len387 = and i64 %err.file.len386, 281474976710655
  %str.tag388 = lshr i64 %err.file.len386, 48
  %str.immortal389 = icmp eq i64 %str.tag388, 0
  br i1 %str.immortal389, label %str_ok391, label %str_gen_check390

str_stale382:                                     ; preds = %str_gen_check380
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok381

str_gen_check390:                                 ; preds = %str_ok381
  %arena.cur393 = call ptr @dva_arena_current()
  %tag.valid394 = call i1 @dva_arena_validate_tag(ptr %arena.cur393, i64 %str.tag388)
  br i1 %tag.valid394, label %str_ok391, label %str_stale392

str_ok391:                                        ; preds = %str_stale392, %str_gen_check390, %str_ok381
  %err.file.len32 = trunc i64 %err.file.len387 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data395 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale392:                                     ; preds = %str_gen_check390
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok391

err.thread:                                       ; preds = %str_ok391
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok391
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data385, i32 %err.file.len32, ptr %err.file.data395, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit367

a.create400:                                      ; preds = %choice.exit367
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
  store ptr %a.create403, ptr %var.scs, align 8
  br label %a.after401

a.after401:                                       ; preds = %a.create400, %choice.exit367
  %a.load2409 = load ptr, ptr %var.scs, align 8
  %fld.gep410 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load396, i32 0, i32 0
  store ptr %a.load2409, ptr %fld.gep410, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #1 {
entry:
  %var._307 = alloca ptr, align 8
  %var._306 = alloca ptr, align 8
  %var._305 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after338, %entry
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 176, ptr %err.line.gep, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 176, ptr %err.line.gep17, align 8
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
  %m.key.slot = getelementptr ptr, ptr %m.keys36, i64 %m.idx
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
  %m.key.slot251 = getelementptr ptr, ptr %m.keys36, i64 %m.ins.idx250
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
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys65, i64 %m.re.i
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
  %m.key.slot114 = getelementptr ptr, ptr %m.keys75, i64 %m.idx103
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
  %m.key.slot152 = getelementptr ptr, ptr %m.keys75, i64 %m.ins.idx
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
  %m.key.slot198 = getelementptr ptr, ptr %m.keys159, i64 %m.idx187
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
  %m.key.slot238 = getelementptr ptr, ptr %m.keys159, i64 %m.ins.idx237
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
  store ptr @str.4.struct, ptr %err.msg.gep282, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep292, align 8
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
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc280, %a.wr.err.null ], [ %err.alloc290, %a.wr.err.oob ]
  %arena.cur299 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %tag.gep300 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep300, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep301 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep301, align 8
  br i1 %is.pos, label %choice.then302, label %choice.else303

choice.then302:                                   ; preds = %a.wr.done
  br label %choice.exit304

choice.else303:                                   ; preds = %a.wr.done
  store ptr %payload.ptr, ptr %var._305, align 8
  store ptr %payload.ptr, ptr %var._306, align 8
  store ptr %payload.ptr, ptr %var._307, align 8
  %err.code.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep308, align 8
  %err.msg.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep309, align 8
  %err.file.gep310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep310, align 8
  %err.line.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep311, align 8
  %err.col.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep312, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len313 = load i64, ptr %err.msg.len, align 8
  %err.msg.len314 = and i64 %err.msg.len313, 281474976710655
  %str.tag315 = lshr i64 %err.msg.len313, 48
  %str.immortal316 = icmp eq i64 %str.tag315, 0
  br i1 %str.immortal316, label %str_ok318, label %str_gen_check317

choice.exit304:                                   ; preds = %err.abort, %choice.then302
  %var.load333 = load ptr, ptr %var.env, align 8
  %var.load334 = load ptr, ptr %var.scs, align 8
  %a.load335 = load ptr, ptr %var.scs, align 8
  %a.null336 = icmp eq ptr %a.load335, null
  br i1 %a.null336, label %a.create337, label %a.after338

str_gen_check317:                                 ; preds = %choice.else303
  %arena.cur320 = call ptr @dva_arena_current()
  %tag.valid321 = call i1 @dva_arena_validate_tag(ptr %arena.cur320, i64 %str.tag315)
  br i1 %tag.valid321, label %str_ok318, label %str_stale319

str_ok318:                                        ; preds = %str_stale319, %str_gen_check317, %choice.else303
  %err.msg.len32 = trunc i64 %err.msg.len314 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data322 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len323 = load i64, ptr %err.file.len, align 8
  %err.file.len324 = and i64 %err.file.len323, 281474976710655
  %str.tag325 = lshr i64 %err.file.len323, 48
  %str.immortal326 = icmp eq i64 %str.tag325, 0
  br i1 %str.immortal326, label %str_ok328, label %str_gen_check327

str_stale319:                                     ; preds = %str_gen_check317
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok318

str_gen_check327:                                 ; preds = %str_ok318
  %arena.cur330 = call ptr @dva_arena_current()
  %tag.valid331 = call i1 @dva_arena_validate_tag(ptr %arena.cur330, i64 %str.tag325)
  br i1 %tag.valid331, label %str_ok328, label %str_stale329

str_ok328:                                        ; preds = %str_stale329, %str_gen_check327, %str_ok318
  %err.file.len32 = trunc i64 %err.file.len324 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data332 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale329:                                     ; preds = %str_gen_check327
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok328

err.thread:                                       ; preds = %str_ok328
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok328
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data322, i32 %err.file.len32, ptr %err.file.data332, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit304

a.create337:                                      ; preds = %choice.exit304
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
  store ptr %a.create340, ptr %var.scs, align 8
  br label %a.after338

a.after338:                                       ; preds = %a.create337, %choice.exit304
  %a.load2346 = load ptr, ptr %var.scs, align 8
  %fld.gep347 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load333, i32 0, i32 0
  store ptr %a.load2346, ptr %fld.gep347, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 3
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
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 3
  store ptr %a.load229, ptr %fld.gep30, align 8
  ret void
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
  br i1 %cmptmp16, label %and.5.then, label %and.5.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.5.then:                                       ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.5.else:                                       ; preds = %idx_ok
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %idx_ok34
  %and.5.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp16, %and.5.else ]
  br i1 %and.5.phi, label %choice.then41, label %choice.else42

str_gen_check23:                                  ; preds = %and.5.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.5.then
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
  br label %and.5.exit

idx_oob35:                                        ; preds = %idx_big_check33, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok34

choice.then41:                                    ; preds = %and.5.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.5.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load44, i64 %addtmp46)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i1 [ true, %choice.then41 ], [ %call.res, %choice.else42 ]
  br label %choice.exit
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
  br i1 %cmptmp16, label %and.6.then, label %and.6.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.6.then:                                       ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.6.else:                                       ; preds = %idx_ok
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %idx_ok34
  %and.6.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp16, %and.6.else ]
  br i1 %and.6.phi, label %choice.then41, label %choice.else42

str_gen_check23:                                  ; preds = %and.6.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.6.then
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
  br label %and.6.exit

idx_oob35:                                        ; preds = %idx_big_check33, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok34

choice.then41:                                    ; preds = %and.6.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.6.exit
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 222, ptr %err.line.gep, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 222, ptr %err.line.gep17, align 8
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
  store ptr @str.4.struct, ptr %err.msg.gep135, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep146, align 8
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
  %var.p = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_local_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit20, %choice.then
  %choice.res192 = phi ptr [ %var.load3, %choice.then ], [ %choice.res191, %choice.exit20 ]
  ret ptr %choice.res192

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.7.then, label %and.7.else

and.7.then:                                       ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.name, align 8
  %call.res17 = call i1 @"type_env::name_is_qualified"(ptr %var.load16, i64 0)
  %nottmp = xor i1 %call.res17, true
  br label %and.7.exit

and.7.else:                                       ; preds = %str.eq.merge
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %and.7.then
  %and.7.phi = phi i1 [ %nottmp, %and.7.then ], [ %str.neq, %and.7.else ]
  br i1 %and.7.phi, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %and.7.exit
  %var.load21 = load ptr, ptr %var.env, align 8
  %var.load22 = load ptr, ptr %var.env, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load22, i32 0, i32 8
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else19:                                    ; preds = %and.7.exit
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.exit100
  %choice.res191 = phi ptr [ %choice.res, %choice.exit100 ], [ null, %choice.else19 ]
  br label %choice.exit

str_gen_check29:                                  ; preds = %choice.then18
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then18
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check39:                                  ; preds = %str_ok30
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok30
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs36)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len45

str_stale41:                                      ; preds = %str_gen_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len45:                                 ; preds = %str_overflow_abort, %str_ok40
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort:                               ; preds = %str_ok40
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len45

concat.tot.len48:                                 ; preds = %str_overflow_abort49, %concat.sum.len45
  %arena.cur50 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load52 = load ptr, ptr %var.name, align 8
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs54 = load i64, ptr %concat.lhs53, align 8
  %concat.lhs55 = and i64 %concat.lhs54, 281474976710655
  %str.tag56 = lshr i64 %concat.lhs54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_overflow_abort49:                             ; preds = %concat.sum.len45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len48

str_gen_check58:                                  ; preds = %concat.tot.len48
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %concat.tot.len48
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs64 = load ptr, ptr %concat.lhs63, align 8
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs65, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale60:                                      ; preds = %str_gen_check58
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check70:                                  ; preds = %str_ok59
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok59
  %concat.rhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %concat.rhs76 = load ptr, ptr %concat.rhs75, align 8
  %concat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs55, i64 %concat.rhs67)
  %sum78 = extractvalue { i64, i1 } %concat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %concat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %concat.sum.len80

str_stale72:                                      ; preds = %str_gen_check70
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

concat.sum.len80:                                 ; preds = %str_overflow_abort81, %str_ok71
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %str_ok71
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len80

concat.tot.len85:                                 ; preds = %str_overflow_abort86, %concat.sum.len80
  %arena.cur87 = call ptr @dva_arena_current()
  %concat.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf88, ptr align 1 %concat.lhs64, i64 %concat.lhs55, i1 false)
  %concat.mid89 = getelementptr i8, ptr %concat.buf88, i64 %concat.lhs55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid89, ptr align 1 %concat.rhs76, i64 %concat.rhs67, i1 false)
  %concat.nul90 = getelementptr i8, ptr %concat.buf88, i64 %sum78
  store i8 0, ptr %concat.nul90, align 1
  %arena.cur91 = call ptr @dva_arena_current()
  %concat.str92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep93 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 0
  store i64 %sum78, ptr %str.build.len.gep93, align 8
  %str.build.data.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 1
  store ptr %concat.buf88, ptr %str.build.data.gep94, align 8
  %call.res95 = call ptr @"type_env::lookup_local_exact"(ptr %var.load21, ptr %concat.str92)
  store ptr %call.res95, ptr %var.pub, align 8
  %var.load96 = load ptr, ptr %var.pub, align 8
  %niche.ne.null97 = icmp ne ptr %var.load96, null
  br i1 %niche.ne.null97, label %choice.then98, label %choice.else99

str_overflow_abort86:                             ; preds = %concat.sum.len80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len85

choice.then98:                                    ; preds = %concat.tot.len85
  store ptr %var.load96, ptr %var._101, align 8
  store ptr %var.load96, ptr %var.p, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  br label %choice.exit100

choice.else99:                                    ; preds = %concat.tot.len85
  %var.load103 = load ptr, ptr %var.env, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load104, i32 0, i32 8
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %concat.lhs107 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %concat.lhs108 = load i64, ptr %concat.lhs107, align 8
  %concat.lhs109 = and i64 %concat.lhs108, 281474976710655
  %str.tag110 = lshr i64 %concat.lhs108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit100:                                   ; preds = %concat.tot.len180, %choice.then98
  %choice.res = phi ptr [ %var.load102, %choice.then98 ], [ %call.res190, %concat.tot.len180 ]
  br label %choice.exit20

str_gen_check112:                                 ; preds = %choice.else99
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag110)
  br i1 %tag.valid116, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else99
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %concat.lhs118 = load ptr, ptr %concat.lhs117, align 8
  %concat.rhs119 = load i64, ptr @str.7.struct, align 8
  %concat.rhs120 = and i64 %concat.rhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.rhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_stale114:                                     ; preds = %str_gen_check112
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check123:                                 ; preds = %str_ok113
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %str_ok113
  %concat.rhs128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs109, i64 %concat.rhs120)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

str_stale125:                                     ; preds = %str_gen_check123
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

concat.sum.len132:                                ; preds = %str_overflow_abort133, %str_ok124
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %str_ok124
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len132

concat.tot.len137:                                ; preds = %str_overflow_abort138, %concat.sum.len132
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf140, ptr align 1 %concat.lhs118, i64 %concat.lhs109, i1 false)
  %concat.mid141 = getelementptr i8, ptr %concat.buf140, i64 %concat.lhs109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid141, ptr align 1 %concat.rhs128, i64 %concat.rhs120, i1 false)
  %concat.nul142 = getelementptr i8, ptr %concat.buf140, i64 %sum130
  store i8 0, ptr %concat.nul142, align 1
  %arena.cur143 = call ptr @dva_arena_current()
  %concat.str144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  store ptr %concat.buf140, ptr %str.build.data.gep146, align 8
  %var.load147 = load ptr, ptr %var.name, align 8
  %concat.lhs148 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  %concat.lhs149 = load i64, ptr %concat.lhs148, align 8
  %concat.lhs150 = and i64 %concat.lhs149, 281474976710655
  %str.tag151 = lshr i64 %concat.lhs149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_overflow_abort138:                            ; preds = %concat.sum.len132
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len137

str_gen_check153:                                 ; preds = %concat.tot.len137
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %concat.tot.len137
  %concat.lhs158 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  %concat.lhs159 = load ptr, ptr %concat.lhs158, align 8
  %concat.rhs160 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %concat.rhs161 = load i64, ptr %concat.rhs160, align 8
  %concat.rhs162 = and i64 %concat.rhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.rhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale155:                                     ; preds = %str_gen_check153
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check165:                                 ; preds = %str_ok154
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok154
  %concat.rhs170 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %concat.rhs171 = load ptr, ptr %concat.rhs170, align 8
  %concat.sum.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs150, i64 %concat.rhs162)
  %sum173 = extractvalue { i64, i1 } %concat.sum.len172, 0
  %ovf174 = extractvalue { i64, i1 } %concat.sum.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.sum.len175

str_stale167:                                     ; preds = %str_gen_check165
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

concat.sum.len175:                                ; preds = %str_overflow_abort176, %str_ok166
  %concat.tot.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum173, i64 1)
  %sum178 = extractvalue { i64, i1 } %concat.tot.len177, 0
  %ovf179 = extractvalue { i64, i1 } %concat.tot.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %concat.tot.len180

str_overflow_abort176:                            ; preds = %str_ok166
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len175

concat.tot.len180:                                ; preds = %str_overflow_abort181, %concat.sum.len175
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum178)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf183, ptr align 1 %concat.lhs159, i64 %concat.lhs150, i1 false)
  %concat.mid184 = getelementptr i8, ptr %concat.buf183, i64 %concat.lhs150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid184, ptr align 1 %concat.rhs171, i64 %concat.rhs162, i1 false)
  %concat.nul185 = getelementptr i8, ptr %concat.buf183, i64 %sum173
  store i8 0, ptr %concat.nul185, align 1
  %arena.cur186 = call ptr @dva_arena_current()
  %concat.str187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 0
  store i64 %sum173, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 1
  store ptr %concat.buf183, ptr %str.build.data.gep189, align 8
  %call.res190 = call ptr @"type_env::lookup_local_exact"(ptr %var.load103, ptr %concat.str187)
  br label %choice.exit100

str_overflow_abort181:                            ; preds = %concat.sum.len175
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len180
}

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var._172 = alloca ptr, align 8
  %var._169 = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._90 = alloca i64, align 8
  %var._i89 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %"var.g_found'" = alloca ptr, align 8
  %var.gls = alloca ptr, align 8
  %var._66 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._52 = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var._43 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.max_iters = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %"var.found'" = alloca ptr, align 8
  %"var.curr'" = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %"var.curr'", align 8
  store ptr null, ptr %"var.found'", align 8
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
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
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after
  %counter.load = load i64, ptr %loop.idx.8, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.8, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.curr'", align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.8, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %choice.then, %loop.exit.nat.8
  %var.load61 = load ptr, ptr %"var.found'", align 8
  %niche.ne.null62 = icmp ne ptr %var.load61, null
  br i1 %niche.ne.null62, label %choice.then63, label %choice.else64

choice.then:                                      ; preds = %loop.body.8
  br label %loop.exit.8

choice.else:                                      ; preds = %loop.body.8
  %var.load10 = load ptr, ptr %var.scs, align 8
  %a.load11 = load ptr, ptr %var.scs, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

choice.exit:                                      ; preds = %choice.exit57
  br label %loop.latch.8

a.create13:                                       ; preds = %choice.else
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
  store ptr %a.create16, ptr %var.scs, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %choice.else
  %a.load222 = load ptr, ptr %var.scs, align 8
  %var.load23 = load i64, ptr %"var.curr'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load222, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after14
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.rd.len24 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load23, 0
  %a.rd.lt = icmp slt i64 %var.load23, %a.rd.len24
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %a.rd.data25 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data25, i64 %var.load23
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after14
  %arena.cur26 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 263, ptr %err.line.gep, align 8
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
  %arena.cur27 = call ptr @dva_arena_current()
  %err.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 0
  store i64 4011, ptr %err.code.gep29, align 8
  %err.msg.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep30, align 8
  %err.file.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep31, align 8
  %err.line.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 3
  store i64 263, ptr %err.line.gep32, align 8
  %err.col.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 4
  store i64 29, ptr %err.col.gep33, align 8
  %err.ctx.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 5
  %err.ctx0.gep35 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 0
  store i64 %var.load23, ptr %err.ctx0.gep35, align 8
  %err.ctx1.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 1
  store i64 %a.rd.len24, ptr %err.ctx1.gep36, align 8
  %err.p2i37 = ptrtoint ptr %err.alloc28 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i37, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag38 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag38, label %choice.then39, label %choice.else40

choice.then39:                                    ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr, ptr %var._43, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %a.rd.done
  %ram.pay44 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr45 = inttoptr i64 %ram.pay44 to ptr
  store ptr %pay.ptr45, ptr %var._46, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res = phi ptr [ %pay.ptr, %choice.then39 ], [ %call.res, %choice.else40 ]
  store ptr %choice.res, ptr %var.sc, align 8
  %var.load47 = load ptr, ptr %var.sc, align 8
  %var.load48 = load ptr, ptr %var.name, align 8
  %call.res49 = call ptr @"type_env::lookup_scope"(ptr %var.load47, ptr %var.load48)
  %niche.ne.null = icmp ne ptr %call.res49, null
  br i1 %niche.ne.null, label %choice.then50, label %choice.exit51

choice.then50:                                    ; preds = %choice.exit41
  store ptr %call.res49, ptr %var._52, align 8
  store ptr %call.res49, ptr %var.binding, align 8
  %var.load53 = load ptr, ptr %var.binding, align 8
  store ptr %var.load53, ptr %"var.found'", align 8
  store i64 -1, ptr %"var.curr'", align 8
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.then50, %choice.exit41
  %var.load54 = load i64, ptr %"var.curr'", align 8
  %cmptmp55 = icmp sge i64 %var.load54, 0
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

choice.then56:                                    ; preds = %choice.exit51
  %var.load58 = load ptr, ptr %var.sc, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load58, i32 0, i32 1
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  store i64 %fld.load60, ptr %"var.curr'", align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.then56, %choice.exit51
  br label %choice.exit

choice.then63:                                    ; preds = %loop.exit.8
  store ptr %var.load61, ptr %var._66, align 8
  %var.load67 = load ptr, ptr %"var.found'", align 8
  br label %choice.exit65

choice.else64:                                    ; preds = %loop.exit.8
  %var.load68 = load ptr, ptr %var.env, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load68, i32 0, i32 3
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  store ptr %fld.load70, ptr %var.gls, align 8
  store ptr null, ptr %"var.g_found'", align 8
  %var.load71 = load ptr, ptr %var.gls, align 8
  %a.load72 = load ptr, ptr %var.gls, align 8
  %a.null73 = icmp eq ptr %a.load72, null
  br i1 %a.null73, label %a.create74, label %a.after75

choice.exit65:                                    ; preds = %loop.exit.9, %choice.then63
  %choice.res213 = phi ptr [ %var.load67, %choice.then63 ], [ %var.load212, %loop.exit.9 ]
  ret ptr %choice.res213

a.create74:                                       ; preds = %choice.else64
  %arena.cur76 = call ptr @dva_arena_current()
  %a.create77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.create77, ptr %var.gls, align 8
  br label %a.after75

a.after75:                                        ; preds = %a.create74, %choice.else64
  %a.load283 = load ptr, ptr %var.gls, align 8
  %a.len.query84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load283, i32 0, i32 0
  %a.len.query85 = load i64, ptr %a.len.query84, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after75
  %counter.load86 = load i64, ptr %loop.idx.9, align 8
  %loop.cond87 = icmp slt i64 %counter.load86, %a.len.query85
  br i1 %loop.cond87, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i88 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i88, ptr %var._i89, align 8
  store i64 %counter.load86, ptr %var._90, align 8
  store i64 %counter.load86, ptr %var.k, align 8
  %var.load91 = load ptr, ptr %var.gls, align 8
  %a.load92 = load ptr, ptr %var.gls, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit208
  %step.val210 = load i64, ptr %loop.step.9, align 8
  %loop.next211 = add i64 %counter.load86, %step.val210
  store i64 %loop.next211, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %choice.then207, %loop.exit.nat.9
  %var.load212 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit65

a.create94:                                       ; preds = %loop.body.9
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
  store ptr %a.create97, ptr %var.gls, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %loop.body.9
  %a.load2103 = load ptr, ptr %var.gls, align 8
  %a.len.query104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.len.query105 = load i64, ptr %a.len.query104, align 8
  %subtmp = sub i64 %a.len.query105, 1
  %var.load106 = load i64, ptr %var.k, align 8
  %subtmp107 = sub i64 %subtmp, %var.load106
  store i64 %subtmp107, ptr %var.i, align 8
  %var.load108 = load ptr, ptr %var.gls, align 8
  %a.load109 = load ptr, ptr %var.gls, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

a.create111:                                      ; preds = %a.after95
  %arena.cur113 = call ptr @dva_arena_current()
  %a.create114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 24)
  %arena.cur115 = call ptr @dva_arena_current()
  %a.buf116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 0
  store i64 0, ptr %a.len.gep117, align 8
  %a.data.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 1
  store ptr %a.buf116, ptr %a.data.gep118, align 8
  %a.cap.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep119, align 8
  store ptr %a.create114, ptr %var.gls, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %a.after95
  %a.load2120 = load ptr, ptr %var.gls, align 8
  %var.load121 = load i64, ptr %var.i, align 8
  %a.rd.nonnull122 = icmp ne ptr %a.load2120, null
  br i1 %a.rd.nonnull122, label %a.rd.check123, label %a.rd.err.null125

a.rd.check123:                                    ; preds = %a.after112
  %a.rd.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 0
  %a.rd.len129 = load i64, ptr %a.rd.len128, align 8
  %a.rd.ge0130 = icmp sge i64 %var.load121, 0
  %a.rd.lt131 = icmp slt i64 %var.load121, %a.rd.len129
  %a.rd.bounds132 = and i1 %a.rd.ge0130, %a.rd.lt131
  br i1 %a.rd.bounds132, label %a.rd.ok124, label %a.rd.err.oob126

a.rd.ok124:                                       ; preds = %a.rd.check123
  %a.rd.data133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 1
  %a.rd.data134 = load ptr, ptr %a.rd.data133, align 8
  %a.rd.elem.gep135 = getelementptr i64, ptr %a.rd.data134, i64 %var.load121
  %a.rd.elem136 = load i64, ptr %a.rd.elem.gep135, align 8
  br label %a.rd.done127

a.rd.err.null125:                                 ; preds = %a.after112
  %arena.cur137 = call ptr @dva_arena_current()
  %err.alloc138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 56)
  %err.code.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 0
  store i64 4011, ptr %err.code.gep139, align 8
  %err.msg.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep140, align 8
  %err.file.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep141, align 8
  %err.line.gep142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 3
  store i64 277, ptr %err.line.gep142, align 8
  %err.col.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 4
  store i64 24, ptr %err.col.gep143, align 8
  %err.ctx.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 5
  %err.ctx0.gep145 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep144, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep145, align 8
  %err.ctx1.gep146 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep144, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep146, align 8
  %err.p2i147 = ptrtoint ptr %err.alloc138 to i64
  br label %a.rd.done127

a.rd.err.oob126:                                  ; preds = %a.rd.check123
  %arena.cur148 = call ptr @dva_arena_current()
  %err.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 56)
  %err.code.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 0
  store i64 4011, ptr %err.code.gep150, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep151, align 8
  %err.file.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep152, align 8
  %err.line.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 3
  store i64 277, ptr %err.line.gep153, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 4
  store i64 24, ptr %err.col.gep154, align 8
  %err.ctx.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 5
  %err.ctx0.gep156 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 0
  store i64 %var.load121, ptr %err.ctx0.gep156, align 8
  %err.ctx1.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 1
  store i64 %a.rd.len129, ptr %err.ctx1.gep157, align 8
  %err.p2i158 = ptrtoint ptr %err.alloc149 to i64
  br label %a.rd.done127

a.rd.done127:                                     ; preds = %a.rd.err.oob126, %a.rd.err.null125, %a.rd.ok124
  %a.rd.tag159 = phi i1 [ true, %a.rd.ok124 ], [ false, %a.rd.err.null125 ], [ false, %a.rd.err.oob126 ]
  %a.rd.pay160 = phi i64 [ %a.rd.elem136, %a.rd.ok124 ], [ %err.p2i147, %a.rd.err.null125 ], [ %err.p2i158, %a.rd.err.oob126 ]
  %ram.tag161 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag159, 0
  %ram.pay162 = insertvalue { i1, i64 } %ram.tag161, i64 %a.rd.pay160, 1
  %ram.tag163 = extractvalue { i1, i64 } %ram.pay162, 0
  br i1 %ram.tag163, label %choice.then164, label %choice.else165

choice.then164:                                   ; preds = %a.rd.done127
  %ram.pay167 = extractvalue { i1, i64 } %ram.pay162, 1
  %pay.ptr168 = inttoptr i64 %ram.pay167 to ptr
  store ptr %pay.ptr168, ptr %var._169, align 8
  br label %choice.exit166

choice.else165:                                   ; preds = %a.rd.done127
  %ram.pay170 = extractvalue { i1, i64 } %ram.pay162, 1
  %pay.ptr171 = inttoptr i64 %ram.pay170 to ptr
  store ptr %pay.ptr171, ptr %var._172, align 8
  %arena.cur173 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur174 = call ptr @dva_arena_current()
  %enum.alloc175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 16)
  %tag.gep176 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc175, i32 0, i32 0
  store i64 0, ptr %tag.gep176, align 8
  %pay.gep177 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc175, i32 0, i32 1
  %arena.cur178 = call ptr @dva_arena_current()
  %enum.alloc179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 16)
  %tag.gep180 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc179, i32 0, i32 0
  store i64 0, ptr %tag.gep180, align 8
  %pay.gep181 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc179, i32 0, i32 1
  store ptr null, ptr %pay.gep181, align 8
  store ptr %enum.alloc179, ptr %pay.gep177, align 8
  %arena.cur182 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld183 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld183, align 8
  %rec.fld184 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc175, ptr %rec.fld184, align 8
  %rec.fld185 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld185, align 1
  %rec.fld186 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld186, align 1
  %rec.fld187 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld187, align 8
  br label %choice.exit166

choice.exit166:                                   ; preds = %choice.else165, %choice.then164
  %choice.res188 = phi ptr [ %pay.ptr168, %choice.then164 ], [ %rec.alloc, %choice.else165 ]
  store ptr %choice.res188, ptr %var.b, align 8
  %var.load189 = load ptr, ptr %var.b, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %var.load189, i32 0, i32 0
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %var.load192 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load191, i32 0, i32 0
  %eq.lhs.len193 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len194 = and i64 %eq.lhs.len193, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len193, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit166
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit166
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load192, i32 0, i32 0
  %eq.rhs.len196 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len197 = and i64 %eq.rhs.len196, 281474976710655
  %str.tag198 = lshr i64 %eq.rhs.len196, 48
  %str.immortal199 = icmp eq i64 %str.tag198, 0
  br i1 %str.immortal199, label %str_ok201, label %str_gen_check200

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check200:                                 ; preds = %str_ok
  %arena.cur203 = call ptr @dva_arena_current()
  %tag.valid204 = call i1 @dva_arena_validate_tag(ptr %arena.cur203, i64 %str.tag198)
  br i1 %tag.valid204, label %str_ok201, label %str_stale202

str_ok201:                                        ; preds = %str_stale202, %str_gen_check200, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len194, %eq.rhs.len197
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale202:                                     ; preds = %str_gen_check200
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok201

str.eq.then:                                      ; preds = %str_ok201
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load191, i32 0, i32 1
  %eq.lhs.data205 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load192, i32 0, i32 1
  %eq.rhs.data206 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data205, ptr %eq.rhs.data206, i64 %eq.lhs.len194)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok201
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then207, label %choice.exit208

choice.then207:                                   ; preds = %str.eq.merge
  %var.load209 = load ptr, ptr %var.b, align 8
  store ptr %var.load209, ptr %"var.g_found'", align 8
  br label %loop.exit.9

choice.exit208:                                   ; preds = %str.eq.merge
  br label %loop.latch.9
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._100 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.qname = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_binding_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit18, %choice.then
  %choice.res191 = phi ptr [ %var.load3, %choice.then ], [ %choice.res190, %choice.exit18 ]
  ret ptr %choice.res191

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load19, i32 0, i32 8
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

choice.else17:                                    ; preds = %str.eq.merge
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.exit99
  %choice.res190 = phi ptr [ %choice.res, %choice.exit99 ], [ null, %choice.else17 ]
  br label %choice.exit

str_gen_check26:                                  ; preds = %choice.then16
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.then16
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs33 = and i64 %concat.rhs, 281474976710655
  %str.tag34 = lshr i64 %concat.rhs, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check36:                                  ; preds = %str_ok27
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok27
  %concat.rhs41 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len42

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

concat.sum.len42:                                 ; preds = %str_overflow_abort, %str_ok37
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum43 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.tot.len45

str_overflow_abort:                               ; preds = %str_ok37
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len42

concat.tot.len45:                                 ; preds = %str_overflow_abort46, %concat.sum.len42
  %arena.cur47 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs41, i64 %concat.rhs33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur48 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %concat.lhs50 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs51 = load i64, ptr %concat.lhs50, align 8
  %concat.lhs52 = and i64 %concat.lhs51, 281474976710655
  %str.tag53 = lshr i64 %concat.lhs51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_overflow_abort46:                             ; preds = %concat.sum.len42
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len45

str_gen_check55:                                  ; preds = %concat.tot.len45
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %concat.tot.len45
  %concat.lhs60 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs61 = load ptr, ptr %concat.lhs60, align 8
  %concat.rhs62 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %concat.rhs63 = load i64, ptr %concat.rhs62, align 8
  %concat.rhs64 = and i64 %concat.rhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.rhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_stale57:                                      ; preds = %str_gen_check55
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check67:                                  ; preds = %str_ok56
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %str_ok56
  %concat.rhs72 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %concat.rhs73 = load ptr, ptr %concat.rhs72, align 8
  %concat.sum.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs52, i64 %concat.rhs64)
  %sum75 = extractvalue { i64, i1 } %concat.sum.len74, 0
  %ovf76 = extractvalue { i64, i1 } %concat.sum.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %concat.sum.len77

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

concat.sum.len77:                                 ; preds = %str_overflow_abort78, %str_ok68
  %concat.tot.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum75, i64 1)
  %sum80 = extractvalue { i64, i1 } %concat.tot.len79, 0
  %ovf81 = extractvalue { i64, i1 } %concat.tot.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %concat.tot.len82

str_overflow_abort78:                             ; preds = %str_ok68
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len77

concat.tot.len82:                                 ; preds = %str_overflow_abort83, %concat.sum.len77
  %arena.cur84 = call ptr @dva_arena_current()
  %concat.buf85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf85, ptr align 1 %concat.lhs61, i64 %concat.lhs52, i1 false)
  %concat.mid86 = getelementptr i8, ptr %concat.buf85, i64 %concat.lhs52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid86, ptr align 1 %concat.rhs73, i64 %concat.rhs64, i1 false)
  %concat.nul87 = getelementptr i8, ptr %concat.buf85, i64 %sum75
  store i8 0, ptr %concat.nul87, align 1
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.str89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep90 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 0
  store i64 %sum75, ptr %str.build.len.gep90, align 8
  %str.build.data.gep91 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 1
  store ptr %concat.buf85, ptr %str.build.data.gep91, align 8
  store ptr %concat.str89, ptr %var.qname, align 8
  %var.load92 = load ptr, ptr %var.env, align 8
  %var.load93 = load ptr, ptr %var.qname, align 8
  %call.res94 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load92, ptr %var.load93)
  store ptr %call.res94, ptr %var.pub, align 8
  %var.load95 = load ptr, ptr %var.pub, align 8
  %niche.ne.null96 = icmp ne ptr %var.load95, null
  br i1 %niche.ne.null96, label %choice.then97, label %choice.else98

str_overflow_abort83:                             ; preds = %concat.sum.len77
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len82

choice.then97:                                    ; preds = %concat.tot.len82
  store ptr %var.load95, ptr %var._100, align 8
  store ptr %var.load95, ptr %var.p, align 8
  %var.load101 = load ptr, ptr %var.p, align 8
  br label %choice.exit99

choice.else98:                                    ; preds = %concat.tot.len82
  %var.load102 = load ptr, ptr %var.env, align 8
  %var.load103 = load ptr, ptr %var.env, align 8
  %fld.gep104 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load103, i32 0, i32 8
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %concat.lhs106 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 0
  %concat.lhs107 = load i64, ptr %concat.lhs106, align 8
  %concat.lhs108 = and i64 %concat.lhs107, 281474976710655
  %str.tag109 = lshr i64 %concat.lhs107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

choice.exit99:                                    ; preds = %concat.tot.len179, %choice.then97
  %choice.res = phi ptr [ %var.load101, %choice.then97 ], [ %call.res189, %concat.tot.len179 ]
  br label %choice.exit18

str_gen_check111:                                 ; preds = %choice.else98
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %choice.else98
  %concat.lhs116 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 1
  %concat.lhs117 = load ptr, ptr %concat.lhs116, align 8
  %concat.rhs118 = load i64, ptr @str.7.struct, align 8
  %concat.rhs119 = and i64 %concat.rhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.rhs118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_stale113:                                     ; preds = %str_gen_check111
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

str_gen_check122:                                 ; preds = %str_ok112
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %str_ok112
  %concat.rhs127 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs108, i64 %concat.rhs119)
  %sum129 = extractvalue { i64, i1 } %concat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %concat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %concat.sum.len131

str_stale124:                                     ; preds = %str_gen_check122
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

concat.sum.len131:                                ; preds = %str_overflow_abort132, %str_ok123
  %concat.tot.len133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 1)
  %sum134 = extractvalue { i64, i1 } %concat.tot.len133, 0
  %ovf135 = extractvalue { i64, i1 } %concat.tot.len133, 1
  br i1 %ovf135, label %str_overflow_abort137, label %concat.tot.len136

str_overflow_abort132:                            ; preds = %str_ok123
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len131

concat.tot.len136:                                ; preds = %str_overflow_abort137, %concat.sum.len131
  %arena.cur138 = call ptr @dva_arena_current()
  %concat.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 %sum134)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf139, ptr align 1 %concat.lhs117, i64 %concat.lhs108, i1 false)
  %concat.mid140 = getelementptr i8, ptr %concat.buf139, i64 %concat.lhs108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid140, ptr align 1 %concat.rhs127, i64 %concat.rhs119, i1 false)
  %concat.nul141 = getelementptr i8, ptr %concat.buf139, i64 %sum129
  store i8 0, ptr %concat.nul141, align 1
  %arena.cur142 = call ptr @dva_arena_current()
  %concat.str143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.build.len.gep144 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 0
  store i64 %sum129, ptr %str.build.len.gep144, align 8
  %str.build.data.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 1
  store ptr %concat.buf139, ptr %str.build.data.gep145, align 8
  %var.load146 = load ptr, ptr %var.name, align 8
  %concat.lhs147 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 0
  %concat.lhs148 = load i64, ptr %concat.lhs147, align 8
  %concat.lhs149 = and i64 %concat.lhs148, 281474976710655
  %str.tag150 = lshr i64 %concat.lhs148, 48
  %str.immortal151 = icmp eq i64 %str.tag150, 0
  br i1 %str.immortal151, label %str_ok153, label %str_gen_check152

str_overflow_abort137:                            ; preds = %concat.sum.len131
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len136

str_gen_check152:                                 ; preds = %concat.tot.len136
  %arena.cur155 = call ptr @dva_arena_current()
  %tag.valid156 = call i1 @dva_arena_validate_tag(ptr %arena.cur155, i64 %str.tag150)
  br i1 %tag.valid156, label %str_ok153, label %str_stale154

str_ok153:                                        ; preds = %str_stale154, %str_gen_check152, %concat.tot.len136
  %concat.lhs157 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 1
  %concat.lhs158 = load ptr, ptr %concat.lhs157, align 8
  %concat.rhs159 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 0
  %concat.rhs160 = load i64, ptr %concat.rhs159, align 8
  %concat.rhs161 = and i64 %concat.rhs160, 281474976710655
  %str.tag162 = lshr i64 %concat.rhs160, 48
  %str.immortal163 = icmp eq i64 %str.tag162, 0
  br i1 %str.immortal163, label %str_ok165, label %str_gen_check164

str_stale154:                                     ; preds = %str_gen_check152
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok153

str_gen_check164:                                 ; preds = %str_ok153
  %arena.cur167 = call ptr @dva_arena_current()
  %tag.valid168 = call i1 @dva_arena_validate_tag(ptr %arena.cur167, i64 %str.tag162)
  br i1 %tag.valid168, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %str_ok153
  %concat.rhs169 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 1
  %concat.rhs170 = load ptr, ptr %concat.rhs169, align 8
  %concat.sum.len171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs149, i64 %concat.rhs161)
  %sum172 = extractvalue { i64, i1 } %concat.sum.len171, 0
  %ovf173 = extractvalue { i64, i1 } %concat.sum.len171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %concat.sum.len174

str_stale166:                                     ; preds = %str_gen_check164
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

concat.sum.len174:                                ; preds = %str_overflow_abort175, %str_ok165
  %concat.tot.len176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum172, i64 1)
  %sum177 = extractvalue { i64, i1 } %concat.tot.len176, 0
  %ovf178 = extractvalue { i64, i1 } %concat.tot.len176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %concat.tot.len179

str_overflow_abort175:                            ; preds = %str_ok165
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len174

concat.tot.len179:                                ; preds = %str_overflow_abort180, %concat.sum.len174
  %arena.cur181 = call ptr @dva_arena_current()
  %concat.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf182, ptr align 1 %concat.lhs158, i64 %concat.lhs149, i1 false)
  %concat.mid183 = getelementptr i8, ptr %concat.buf182, i64 %concat.lhs149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid183, ptr align 1 %concat.rhs170, i64 %concat.rhs161, i1 false)
  %concat.nul184 = getelementptr i8, ptr %concat.buf182, i64 %sum172
  store i8 0, ptr %concat.nul184, align 1
  %arena.cur185 = call ptr @dva_arena_current()
  %concat.str186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 16)
  %str.build.len.gep187 = getelementptr inbounds { i64, ptr }, ptr %concat.str186, i32 0, i32 0
  store i64 %sum172, ptr %str.build.len.gep187, align 8
  %str.build.data.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str186, i32 0, i32 1
  store ptr %concat.buf182, ptr %str.build.data.gep188, align 8
  %call.res189 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load102, ptr %concat.str186)
  br label %choice.exit99

str_overflow_abort180:                            ; preds = %concat.sum.len174
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len179
}

define ptr @"type_env::find_last_dot"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  ret ptr %ram.alloc

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
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load6, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load6, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data5, i64 %var.load6
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp7 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp7, label %choice.then8, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then8:                                     ; preds = %idx_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %ram.alloc11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 16)
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc11, i32 0, i32 0
  store i64 1, ptr %tag.gep12, align 8
  %pay.gep13 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc11, i32 0, i32 1
  %var.load14 = load i64, ptr %var.i, align 8
  %arena.cur15 = call ptr @dva_arena_current()
  %pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 8)
  store i64 %var.load14, ptr %pay.alloc, align 8
  store ptr %pay.alloc, ptr %pay.gep13, align 8
  br label %choice.exit9

choice.else:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.s, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load17, 1
  %call.res = call ptr @"type_env::find_last_dot"(ptr %var.load16, i64 %subtmp)
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else, %choice.then8
  %choice.res = phi ptr [ %ram.alloc11, %choice.then8 ], [ %call.res, %choice.else ]
  ret ptr %choice.res
}

define ptr @"type_env::drop_last_dot"(ptr %0) #1 {
entry:
  %var._26 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.cut = alloca i64, align 8
  %var._4 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  %call.res = call ptr @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.else:                                      ; preds = %str_ok
  ret ptr @str.0.struct

choice.exit:                                      ; preds = %ret.dead, %pay.int.merge14
  %choice.res = phi i64 [ %pay.int.phi16, %pay.int.merge14 ], [ 0, %ret.dead ]
  store i64 %choice.res, ptr %var.cut, align 8
  %var.load17 = load i64, ptr %var.cut, align 8
  %cmptmp = icmp sle i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then18, label %choice.exit19

pay.int.load:                                     ; preds = %choice.then
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.then
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  %pay.int.null5 = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null5, label %pay.int.nullbb7, label %pay.int.load6

pay.int.load6:                                    ; preds = %pay.int.merge
  %pay.int.val9 = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge8

pay.int.nullbb7:                                  ; preds = %pay.int.merge
  br label %pay.int.merge8

pay.int.merge8:                                   ; preds = %pay.int.nullbb7, %pay.int.load6
  %pay.int.phi10 = phi i64 [ %pay.int.val9, %pay.int.load6 ], [ 0, %pay.int.nullbb7 ]
  store i64 %pay.int.phi10, ptr %var._4, align 8
  %pay.int.null11 = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null11, label %pay.int.nullbb13, label %pay.int.load12

pay.int.load12:                                   ; preds = %pay.int.merge8
  %pay.int.val15 = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge14

pay.int.nullbb13:                                 ; preds = %pay.int.merge8
  br label %pay.int.merge14

pay.int.merge14:                                  ; preds = %pay.int.nullbb13, %pay.int.load12
  %pay.int.phi16 = phi i64 [ %pay.int.val15, %pay.int.load12 ], [ 0, %pay.int.nullbb13 ]
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then18:                                    ; preds = %choice.exit
  ret ptr @str.0.struct

choice.exit19:                                    ; preds = %ret.dead20, %choice.exit
  %var.load21 = load i64, ptr %var.cut, align 8
  %arena.cur22 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %cap.neg = icmp slt i64 %var.load21, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load21
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len23

ret.dead20:                                       ; No predecessors!
  br label %choice.exit19

b.buf.len23:                                      ; preds = %str_overflow_abort, %choice.exit19
  %arena.cur24 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load25 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

str_overflow_abort:                               ; preds = %choice.exit19
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len23

loop.header.10:                                   ; preds = %loop.latch.10, %b.buf.len23
  %counter.load = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load25
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._26, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.10, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load72 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 0
  %b.freeze.len73 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 1
  %b.freeze.data74 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check32:                                  ; preds = %loop.body.10
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %loop.body.10
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load38, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check:                                    ; preds = %str_ok33
  %idx.big = icmp sge i64 %var.load38, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %var.load38
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %str.tag43 = lshr i64 %s.read.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

idx_oob:                                          ; preds = %idx_big_check, %str_ok33
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check45:                                  ; preds = %idx_ok
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %idx_ok
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  %var.load52 = load i64, ptr %var.i, align 8
  %idx.neg53 = icmp slt i64 %var.load52, 0
  br i1 %idx.neg53, label %idx_oob56, label %idx_big_check54

str_stale47:                                      ; preds = %str_gen_check45
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

idx_big_check54:                                  ; preds = %str_ok46
  %idx.big57 = icmp sge i64 %var.load52, %s.read.len42
  br i1 %idx.big57, label %idx_oob56, label %idx_ok55

idx_ok55:                                         ; preds = %idx_oob56, %idx_big_check54
  %s.byte.gep58 = getelementptr i8, ptr %s.read.data51, i64 %var.load52
  %s.byte59 = load i8, ptr %s.byte.gep58, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val60, 0
  %b.b.le255 = icmp sle i64 %s.byte.val60, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob56:                                        ; preds = %idx_big_check54, %str_ok46
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok55

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok55
  %b.byte.i8 = trunc i64 %s.byte.val60 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len61 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data63 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len61, %b.cap62
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok55
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap62, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum64 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf65 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf65, label %str_overflow_abort67, label %b.new.buf.len66

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len66
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data69 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len70 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data69, i64 %b.cur.len70
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len70, 1
  %b.nul = getelementptr i8, ptr %b.cur.data69, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep71, align 8
  br label %loop.latch.10

b.new.buf.len66:                                  ; preds = %str_overflow_abort67, %b.grow
  %arena.cur68 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %sum64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data63, i64 %b.len61, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len61
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort67:                             ; preds = %b.grow
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len66

b.freeze.check:                                   ; preds = %loop.exit.10
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data74, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data74, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data74, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur75 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %b.freeze.len73)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data74, i64 %b.freeze.len73, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.10
  %b.freeze.data76 = phi ptr [ %b.freeze.data74, %loop.exit.10 ], [ %b.freeze.data74, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur77 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len73, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data76, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

define i1 @"type_env::init_has_name"(ptr %0, ptr %1) #1 {
entry:
  %var.n = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after
  %counter.load = load i64, ptr %loop.idx.11, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query3
  br i1 %loop.cond, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.names, align 8
  %a.load5 = load ptr, ptr %var.names, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit55
  %step.val = load i64, ptr %loop.step.11, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  ret i1 false

a.create7:                                        ; preds = %loop.body.11
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

a.after8:                                         ; preds = %a.create7, %loop.body.11
  %a.load216 = load ptr, ptr %var.names, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load216, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after8
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.rd.len18 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load17, 0
  %a.rd.lt = icmp slt i64 %var.load17, %a.rd.len18
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %a.rd.data19 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data19, i64 %var.load17
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after8
  %arena.cur20 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 318, ptr %err.line.gep, align 8
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
  %arena.cur21 = call ptr @dva_arena_current()
  %err.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 56)
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 0
  store i64 4011, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 3
  store i64 318, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 4
  store i64 20, ptr %err.col.gep27, align 8
  %err.ctx.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 5
  %err.ctx0.gep29 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep29, align 8
  %err.ctx1.gep30 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 1
  store i64 %a.rd.len18, ptr %err.ctx1.gep30, align 8
  %err.p2i31 = ptrtoint ptr %err.alloc22 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i31, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag32 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag32, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay33 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay33 to ptr
  store ptr %pay.ptr, ptr %var._34, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay35 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr36 = inttoptr i64 %ram.pay35 to ptr
  store ptr %pay.ptr36, ptr %var._37, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.n, align 8
  %var.load38 = load ptr, ptr %var.n, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %eq.lhs.len40 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len41 = and i64 %eq.lhs.len40, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len40, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %eq.rhs.len43 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %str.tag45 = lshr i64 %eq.rhs.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check47:                                  ; preds = %str_ok
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len41, %eq.rhs.len44
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale49:                                      ; preds = %str_gen_check47
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

str.eq.then:                                      ; preds = %str_ok48
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %eq.lhs.data52 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %eq.rhs.data53 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data53, i64 %eq.lhs.len41)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok48
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then54, label %choice.exit55

choice.then54:                                    ; preds = %str.eq.merge
  ret i1 true

choice.exit55:                                    ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.11

ret.dead:                                         ; No predecessors!
  br label %choice.exit55
}

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #1 {
entry:
  %var.tr = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load28, i32 0, i32 4
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep29, i32 0, i32 1
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load32, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load15, i32 0, i32 4
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
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load32, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load19, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load12, i32 0, i32 4
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
  %var.w = alloca ptr, align 8
  %var._69 = alloca ptr, align 8
  %var._66 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query35 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after
  %counter.load = load i64, ptr %loop.idx.12, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query35
  br i1 %loop.cond, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load36 = load ptr, ptr %var.written, align 8
  %a.load37 = load ptr, ptr %var.written, align 8
  %a.null38 = icmp eq ptr %a.load37, null
  br i1 %a.null38, label %a.create39, label %a.after40

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %choice.exit119
  %step.val = load i64, ptr %loop.step.12, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %choice.then118, %loop.exit.nat.12
  %var.load120 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load120

a.create39:                                       ; preds = %loop.body.12
  %arena.cur41 = call ptr @dva_arena_current()
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep45, align 8
  %a.data.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf44, ptr %a.data.gep46, align 8
  %a.cap.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep47, align 8
  store ptr %a.create42, ptr %var.written, align 8
  br label %a.after40

a.after40:                                        ; preds = %a.create39, %loop.body.12
  %a.load248 = load ptr, ptr %var.written, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load248, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after40
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 0
  %a.rd.len50 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load49, 0
  %a.rd.lt = icmp slt i64 %var.load49, %a.rd.len50
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 1
  %a.rd.data51 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data51, i64 %var.load49
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after40
  %arena.cur52 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 369, ptr %err.line.gep, align 8
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
  %arena.cur53 = call ptr @dva_arena_current()
  %err.alloc54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 56)
  %err.code.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 0
  store i64 4011, ptr %err.code.gep55, align 8
  %err.msg.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep56, align 8
  %err.file.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep57, align 8
  %err.line.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 3
  store i64 369, ptr %err.line.gep58, align 8
  %err.col.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 4
  store i64 22, ptr %err.col.gep59, align 8
  %err.ctx.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc54, i32 0, i32 5
  %err.ctx0.gep61 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep60, i32 0, i32 0
  store i64 %var.load49, ptr %err.ctx0.gep61, align 8
  %err.ctx1.gep62 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep60, i32 0, i32 1
  store i64 %a.rd.len50, ptr %err.ctx1.gep62, align 8
  %err.p2i63 = ptrtoint ptr %err.alloc54 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i63, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag64 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag64, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay65 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay65 to ptr
  store ptr %pay.ptr, ptr %var._66, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay67 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr68 = inttoptr i64 %ram.pay67 to ptr
  store ptr %pay.ptr68, ptr %var._69, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.w, align 8
  %var.load70 = load ptr, ptr %var.w, align 8
  %str.len.query71 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %str.len.query72 = load i64, ptr %str.len.query71, align 8
  %str.len.query73 = and i64 %str.len.query72, 281474976710655
  %str.tag74 = lshr i64 %str.len.query72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

str_gen_check76:                                  ; preds = %choice.exit
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %choice.exit
  %var.load81 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query73, %var.load81
  br i1 %cmptmp, label %and.13.then, label %and.13.else

str_stale78:                                      ; preds = %str_gen_check76
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

and.13.then:                                      ; preds = %str_ok77
  %var.load82 = load ptr, ptr %var.w, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %str.tag85 = lshr i64 %s.read.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

and.13.else:                                      ; preds = %str_ok77
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %str.eq.merge
  %and.13.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.13.else ]
  br i1 %and.13.phi, label %choice.then118, label %choice.exit119

str_gen_check87:                                  ; preds = %and.13.then
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %and.13.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data, align 8
  %var.load93 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len84, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len84
  %final.start = select i1 %start.gt.len, i64 %s.read.len84, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load93, 0
  %rel.end = add i64 %s.read.len84, %var.load93
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load93
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len84
  %final.end = select i1 %end.gt.len, i64 %s.read.len84, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data92, i64 %final.start
  %arena.cur94 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep95 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep95, align 8
  %str.build.data.gep96 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep96, align 8
  %var.load97 = load ptr, ptr %var.prefix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len98 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len99 = and i64 %eq.lhs.len98, 281474976710655
  %str.tag100 = lshr i64 %eq.lhs.len98, 48
  %str.immortal101 = icmp eq i64 %str.tag100, 0
  br i1 %str.immortal101, label %str_ok103, label %str_gen_check102

str_stale89:                                      ; preds = %str_gen_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

str_gen_check102:                                 ; preds = %str_ok88
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag100)
  br i1 %tag.valid106, label %str_ok103, label %str_stale104

str_ok103:                                        ; preds = %str_stale104, %str_gen_check102, %str_ok88
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 0
  %eq.rhs.len107 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len108 = and i64 %eq.rhs.len107, 281474976710655
  %str.tag109 = lshr i64 %eq.rhs.len107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

str_stale104:                                     ; preds = %str_gen_check102
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok103

str_gen_check111:                                 ; preds = %str_ok103
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %str_ok103
  %eq.len = icmp eq i64 %eq.lhs.len99, %eq.rhs.len108
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale113:                                     ; preds = %str_gen_check111
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

str.eq.then:                                      ; preds = %str_ok112
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data116 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 1
  %eq.rhs.data117 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data116, ptr %eq.rhs.data117, i64 %eq.lhs.len99)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok112
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.13.exit

choice.then118:                                   ; preds = %and.13.exit
  store i1 true, ptr %"var.has'", align 1
  br label %loop.exit.12

choice.exit119:                                   ; preds = %and.13.exit
  br label %loop.latch.12
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
  br i1 %call.res, label %or.14.then, label %or.14.else

or.14.then:                                       ; preds = %entry
  br label %or.14.exit

or.14.else:                                       ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.14.exit

or.14.exit:                                       ; preds = %or.14.else, %or.14.then
  %or.14.phi = phi i1 [ %call.res, %or.14.then ], [ %call.res5, %or.14.else ]
  br i1 %or.14.phi, label %or.15.then, label %or.15.else

or.15.then:                                       ; preds = %or.14.exit
  br label %or.15.exit

or.15.else:                                       ; preds = %or.14.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load6, i32 0, i32 4
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep7, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %call.res11 = call i1 @"type_env::init_has_subpath"(ptr %fld.load9, ptr %var.load10)
  br label %or.15.exit

or.15.exit:                                       ; preds = %or.15.else, %or.15.then
  %or.15.phi = phi i1 [ %or.14.phi, %or.15.then ], [ %call.res11, %or.15.else ]
  ret i1 %or.15.phi
}

define ptr @"type_env::init_snapshot"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._286 = alloca ptr, align 8
  %var._283 = alloca ptr, align 8
  %var._221 = alloca i64, align 8
  %var._i220 = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var.ewr = alloca ptr, align 8
  %var.wr = alloca ptr, align 8
  %var.w = alloca ptr, align 8
  %var._158 = alloca ptr, align 8
  %var._155 = alloca ptr, align 8
  %var._93 = alloca i64, align 8
  %var._i92 = alloca i64, align 8
  %loop.step.17 = alloca i64, align 8
  %loop.idx.17 = alloca i64, align 8
  %var.ew = alloca ptr, align 8
  %var.wh = alloca ptr, align 8
  %var.t = alloca ptr, align 8
  %var._45 = alloca ptr, align 8
  %var._42 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %var.etr = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep2, align 8
  store ptr %fld.load, ptr %var.etr, align 8
  %var.load3 = load ptr, ptr %var.etr, align 8
  %a.load = load ptr, ptr %var.etr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
  %a.buf7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep8, align 8
  %a.data.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf7, ptr %a.data.gep9, align 8
  %a.cap.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep10, align 8
  store ptr %a.create5, ptr %var.etr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.etr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query11 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.header.16:                                   ; preds = %loop.latch.16, %a.after
  %counter.load = load i64, ptr %loop.idx.16, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query11
  br i1 %loop.cond, label %loop.body.16, label %loop.exit.nat.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load12 = load ptr, ptr %var.etr, align 8
  %a.load13 = load ptr, ptr %var.etr, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

loop.exit.nat.16:                                 ; preds = %loop.header.16
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.16, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %loop.exit.nat.16
  %arena.cur63 = call ptr @dva_arena_current()
  %a.new64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 24)
  %arena.cur65 = call ptr @dva_arena_current()
  %a.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 128)
  %a.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new64, i32 0, i32 0
  store i64 0, ptr %a.len.gep67, align 8
  %a.data.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new64, i32 0, i32 1
  store ptr %a.buf66, ptr %a.data.gep68, align 8
  %a.cap.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new64, i32 0, i32 2
  store i64 16, ptr %a.cap.gep69, align 8
  store ptr %a.new64, ptr %var.wh, align 8
  %var.load70 = load ptr, ptr %var.env, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load70, i32 0, i32 4
  %fld.gep72 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep71, i32 0, i32 1
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  store ptr %fld.load73, ptr %var.ew, align 8
  %var.load74 = load ptr, ptr %var.ew, align 8
  %a.load75 = load ptr, ptr %var.ew, align 8
  %a.null76 = icmp eq ptr %a.load75, null
  br i1 %a.null76, label %a.create77, label %a.after78

a.create15:                                       ; preds = %loop.body.16
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
  store ptr %a.create18, ptr %var.etr, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %loop.body.16
  %a.load224 = load ptr, ptr %var.etr, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load224, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after16
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  %a.rd.len26 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load25, 0
  %a.rd.lt = icmp slt i64 %var.load25, %a.rd.len26
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 1
  %a.rd.data27 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data27, i64 %var.load25
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after16
  %arena.cur28 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 384, ptr %err.line.gep, align 8
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
  %arena.cur29 = call ptr @dva_arena_current()
  %err.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 56)
  %err.code.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 0
  store i64 4011, ptr %err.code.gep31, align 8
  %err.msg.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep32, align 8
  %err.file.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep33, align 8
  %err.line.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 3
  store i64 384, ptr %err.line.gep34, align 8
  %err.col.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 4
  store i64 18, ptr %err.col.gep35, align 8
  %err.ctx.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 5
  %err.ctx0.gep37 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep36, i32 0, i32 0
  store i64 %var.load25, ptr %err.ctx0.gep37, align 8
  %err.ctx1.gep38 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep36, i32 0, i32 1
  store i64 %a.rd.len26, ptr %err.ctx1.gep38, align 8
  %err.p2i39 = ptrtoint ptr %err.alloc30 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i39, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag40 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag40, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay41 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay41 to ptr
  store ptr %pay.ptr, ptr %var._42, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay43 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr44 = inttoptr i64 %ram.pay43 to ptr
  store ptr %pay.ptr44, ptr %var._45, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.t, align 8
  %var.load46 = load ptr, ptr %var.t, align 8
  %a.load47 = load ptr, ptr %var.tr, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

a.create49:                                       ; preds = %choice.exit
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
  store ptr %a.create52, ptr %var.tr, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %choice.exit
  %a.load258 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after50
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.len59 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 2
  %a.cap60 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len59, %a.cap60
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load258)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 1
  %a.cur.data61 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.cur.len62 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data61, i64 %a.cur.len62
  %slot.p2i = ptrtoint ptr %var.load46 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len62, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.16

a.create77:                                       ; preds = %loop.exit.16
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
  store ptr %a.create80, ptr %var.ew, align 8
  br label %a.after78

a.after78:                                        ; preds = %a.create77, %loop.exit.16
  %a.load286 = load ptr, ptr %var.ew, align 8
  %a.len.query87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load286, i32 0, i32 0
  %a.len.query88 = load i64, ptr %a.len.query87, align 8
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.header.17:                                   ; preds = %loop.latch.17, %a.after78
  %counter.load89 = load i64, ptr %loop.idx.17, align 8
  %loop.cond90 = icmp slt i64 %counter.load89, %a.len.query88
  br i1 %loop.cond90, label %loop.body.17, label %loop.exit.nat.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i91 = sub i64 %counter.load89, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i91, ptr %var._i92, align 8
  store i64 %counter.load89, ptr %var._93, align 8
  store i64 %counter.load89, ptr %var.i, align 8
  %var.load94 = load ptr, ptr %var.ew, align 8
  %a.load95 = load ptr, ptr %var.ew, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

loop.exit.nat.17:                                 ; preds = %loop.header.17
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %a.store175
  %step.val189 = load i64, ptr %loop.step.17, align 8
  %loop.next190 = add i64 %counter.load89, %step.val189
  store i64 %loop.next190, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %loop.exit.nat.17
  %arena.cur191 = call ptr @dva_arena_current()
  %a.new192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 24)
  %arena.cur193 = call ptr @dva_arena_current()
  %a.buf194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 128)
  %a.len.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new192, i32 0, i32 0
  store i64 0, ptr %a.len.gep195, align 8
  %a.data.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new192, i32 0, i32 1
  store ptr %a.buf194, ptr %a.data.gep196, align 8
  %a.cap.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new192, i32 0, i32 2
  store i64 16, ptr %a.cap.gep197, align 8
  store ptr %a.new192, ptr %var.wr, align 8
  %var.load198 = load ptr, ptr %var.env, align 8
  %fld.gep199 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load198, i32 0, i32 4
  %fld.gep200 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep199, i32 0, i32 2
  %fld.load201 = load ptr, ptr %fld.gep200, align 8
  store ptr %fld.load201, ptr %var.ewr, align 8
  %var.load202 = load ptr, ptr %var.ewr, align 8
  %a.load203 = load ptr, ptr %var.ewr, align 8
  %a.null204 = icmp eq ptr %a.load203, null
  br i1 %a.null204, label %a.create205, label %a.after206

a.create97:                                       ; preds = %loop.body.17
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
  store ptr %a.create100, ptr %var.ew, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %loop.body.17
  %a.load2106 = load ptr, ptr %var.ew, align 8
  %var.load107 = load i64, ptr %var.i, align 8
  %a.rd.nonnull108 = icmp ne ptr %a.load2106, null
  br i1 %a.rd.nonnull108, label %a.rd.check109, label %a.rd.err.null111

a.rd.check109:                                    ; preds = %a.after98
  %a.rd.len114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.rd.len115 = load i64, ptr %a.rd.len114, align 8
  %a.rd.ge0116 = icmp sge i64 %var.load107, 0
  %a.rd.lt117 = icmp slt i64 %var.load107, %a.rd.len115
  %a.rd.bounds118 = and i1 %a.rd.ge0116, %a.rd.lt117
  br i1 %a.rd.bounds118, label %a.rd.ok110, label %a.rd.err.oob112

a.rd.ok110:                                       ; preds = %a.rd.check109
  %a.rd.data119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %a.rd.data120 = load ptr, ptr %a.rd.data119, align 8
  %a.rd.elem.gep121 = getelementptr i64, ptr %a.rd.data120, i64 %var.load107
  %a.rd.elem122 = load i64, ptr %a.rd.elem.gep121, align 8
  br label %a.rd.done113

a.rd.err.null111:                                 ; preds = %a.after98
  %arena.cur123 = call ptr @dva_arena_current()
  %err.alloc124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 56)
  %err.code.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 0
  store i64 4011, ptr %err.code.gep125, align 8
  %err.msg.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep126, align 8
  %err.file.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep127, align 8
  %err.line.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 3
  store i64 389, ptr %err.line.gep128, align 8
  %err.col.gep129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 4
  store i64 17, ptr %err.col.gep129, align 8
  %err.ctx.gep130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc124, i32 0, i32 5
  %err.ctx0.gep131 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep130, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep131, align 8
  %err.ctx1.gep132 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep130, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep132, align 8
  %err.p2i133 = ptrtoint ptr %err.alloc124 to i64
  br label %a.rd.done113

a.rd.err.oob112:                                  ; preds = %a.rd.check109
  %arena.cur134 = call ptr @dva_arena_current()
  %err.alloc135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 56)
  %err.code.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 0
  store i64 4011, ptr %err.code.gep136, align 8
  %err.msg.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep137, align 8
  %err.file.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep138, align 8
  %err.line.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 3
  store i64 389, ptr %err.line.gep139, align 8
  %err.col.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 4
  store i64 17, ptr %err.col.gep140, align 8
  %err.ctx.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc135, i32 0, i32 5
  %err.ctx0.gep142 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep141, i32 0, i32 0
  store i64 %var.load107, ptr %err.ctx0.gep142, align 8
  %err.ctx1.gep143 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep141, i32 0, i32 1
  store i64 %a.rd.len115, ptr %err.ctx1.gep143, align 8
  %err.p2i144 = ptrtoint ptr %err.alloc135 to i64
  br label %a.rd.done113

a.rd.done113:                                     ; preds = %a.rd.err.oob112, %a.rd.err.null111, %a.rd.ok110
  %a.rd.tag145 = phi i1 [ true, %a.rd.ok110 ], [ false, %a.rd.err.null111 ], [ false, %a.rd.err.oob112 ]
  %a.rd.pay146 = phi i64 [ %a.rd.elem122, %a.rd.ok110 ], [ %err.p2i133, %a.rd.err.null111 ], [ %err.p2i144, %a.rd.err.oob112 ]
  %ram.tag147 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag145, 0
  %ram.pay148 = insertvalue { i1, i64 } %ram.tag147, i64 %a.rd.pay146, 1
  %ram.tag149 = extractvalue { i1, i64 } %ram.pay148, 0
  br i1 %ram.tag149, label %choice.then150, label %choice.else151

choice.then150:                                   ; preds = %a.rd.done113
  %ram.pay153 = extractvalue { i1, i64 } %ram.pay148, 1
  %pay.ptr154 = inttoptr i64 %ram.pay153 to ptr
  store ptr %pay.ptr154, ptr %var._155, align 8
  br label %choice.exit152

choice.else151:                                   ; preds = %a.rd.done113
  %ram.pay156 = extractvalue { i1, i64 } %ram.pay148, 1
  %pay.ptr157 = inttoptr i64 %ram.pay156 to ptr
  store ptr %pay.ptr157, ptr %var._158, align 8
  br label %choice.exit152

choice.exit152:                                   ; preds = %choice.else151, %choice.then150
  %choice.res159 = phi ptr [ %pay.ptr154, %choice.then150 ], [ @str.0.struct, %choice.else151 ]
  store ptr %choice.res159, ptr %var.w, align 8
  %var.load160 = load ptr, ptr %var.w, align 8
  %a.load161 = load ptr, ptr %var.wh, align 8
  %a.null162 = icmp eq ptr %a.load161, null
  br i1 %a.null162, label %a.create163, label %a.after164

a.create163:                                      ; preds = %choice.exit152
  %arena.cur165 = call ptr @dva_arena_current()
  %a.create166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 24)
  %arena.cur167 = call ptr @dva_arena_current()
  %a.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 128)
  %a.len.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create166, i32 0, i32 0
  store i64 0, ptr %a.len.gep169, align 8
  %a.data.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create166, i32 0, i32 1
  store ptr %a.buf168, ptr %a.data.gep170, align 8
  %a.cap.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create166, i32 0, i32 2
  store i64 16, ptr %a.cap.gep171, align 8
  store ptr %a.create166, ptr %var.wh, align 8
  br label %a.after164

a.after164:                                       ; preds = %a.create163, %choice.exit152
  %a.load2172 = load ptr, ptr %var.wh, align 8
  br label %a.check173

a.check173:                                       ; preds = %a.after164
  %a.len176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2172, i32 0, i32 0
  %a.len177 = load i64, ptr %a.len176, align 8
  %a.cap178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2172, i32 0, i32 2
  %a.cap179 = load i64, ptr %a.cap178, align 8
  %a.needs.grow180 = icmp eq i64 %a.len177, %a.cap179
  br i1 %a.needs.grow180, label %a.grow174, label %a.store175

a.grow174:                                        ; preds = %a.check173
  call void @dva_array_grow(ptr %a.load2172)
  br label %a.store175

a.store175:                                       ; preds = %a.grow174, %a.check173
  %a.cur.data181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2172, i32 0, i32 1
  %a.cur.data182 = load ptr, ptr %a.cur.data181, align 8
  %a.cur.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2172, i32 0, i32 0
  %a.cur.len184 = load i64, ptr %a.cur.len183, align 8
  %a.elem.gep185 = getelementptr i64, ptr %a.cur.data182, i64 %a.cur.len184
  %slot.p2i186 = ptrtoint ptr %var.load160 to i64
  store i64 %slot.p2i186, ptr %a.elem.gep185, align 8
  %a.next.len187 = add i64 %a.cur.len184, 1
  %b.len.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2172, i32 0, i32 0
  store i64 %a.next.len187, ptr %b.len.gep188, align 8
  br label %loop.latch.17

a.create205:                                      ; preds = %loop.exit.17
  %arena.cur207 = call ptr @dva_arena_current()
  %a.create208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 24)
  %arena.cur209 = call ptr @dva_arena_current()
  %a.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 128)
  %a.len.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 0
  store i64 0, ptr %a.len.gep211, align 8
  %a.data.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 1
  store ptr %a.buf210, ptr %a.data.gep212, align 8
  %a.cap.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 2
  store i64 16, ptr %a.cap.gep213, align 8
  store ptr %a.create208, ptr %var.ewr, align 8
  br label %a.after206

a.after206:                                       ; preds = %a.create205, %loop.exit.17
  %a.load2214 = load ptr, ptr %var.ewr, align 8
  %a.len.query215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 0
  %a.len.query216 = load i64, ptr %a.len.query215, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %a.after206
  %counter.load217 = load i64, ptr %loop.idx.18, align 8
  %loop.cond218 = icmp slt i64 %counter.load217, %a.len.query216
  br i1 %loop.cond218, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i219 = sub i64 %counter.load217, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i219, ptr %var._i220, align 8
  store i64 %counter.load217, ptr %var._221, align 8
  store i64 %counter.load217, ptr %var.i, align 8
  %var.load222 = load ptr, ptr %var.ewr, align 8
  %a.load223 = load ptr, ptr %var.ewr, align 8
  %a.null224 = icmp eq ptr %a.load223, null
  br i1 %a.null224, label %a.create225, label %a.after226

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %a.store303
  %step.val317 = load i64, ptr %loop.step.18, align 8
  %loop.next318 = add i64 %counter.load217, %step.val317
  store i64 %loop.next318, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %var.load319 = load ptr, ptr %var.tr, align 8
  %a.load320 = load ptr, ptr %var.tr, align 8
  %a.null321 = icmp eq ptr %a.load320, null
  br i1 %a.null321, label %a.create322, label %a.after323

a.create225:                                      ; preds = %loop.body.18
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
  store ptr %a.create228, ptr %var.ewr, align 8
  br label %a.after226

a.after226:                                       ; preds = %a.create225, %loop.body.18
  %a.load2234 = load ptr, ptr %var.ewr, align 8
  %var.load235 = load i64, ptr %var.i, align 8
  %a.rd.nonnull236 = icmp ne ptr %a.load2234, null
  br i1 %a.rd.nonnull236, label %a.rd.check237, label %a.rd.err.null239

a.rd.check237:                                    ; preds = %a.after226
  %a.rd.len242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2234, i32 0, i32 0
  %a.rd.len243 = load i64, ptr %a.rd.len242, align 8
  %a.rd.ge0244 = icmp sge i64 %var.load235, 0
  %a.rd.lt245 = icmp slt i64 %var.load235, %a.rd.len243
  %a.rd.bounds246 = and i1 %a.rd.ge0244, %a.rd.lt245
  br i1 %a.rd.bounds246, label %a.rd.ok238, label %a.rd.err.oob240

a.rd.ok238:                                       ; preds = %a.rd.check237
  %a.rd.data247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2234, i32 0, i32 1
  %a.rd.data248 = load ptr, ptr %a.rd.data247, align 8
  %a.rd.elem.gep249 = getelementptr i64, ptr %a.rd.data248, i64 %var.load235
  %a.rd.elem250 = load i64, ptr %a.rd.elem.gep249, align 8
  br label %a.rd.done241

a.rd.err.null239:                                 ; preds = %a.after226
  %arena.cur251 = call ptr @dva_arena_current()
  %err.alloc252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 56)
  %err.code.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 0
  store i64 4011, ptr %err.code.gep253, align 8
  %err.msg.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep254, align 8
  %err.file.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep255, align 8
  %err.line.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 3
  store i64 394, ptr %err.line.gep256, align 8
  %err.col.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 4
  store i64 18, ptr %err.col.gep257, align 8
  %err.ctx.gep258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc252, i32 0, i32 5
  %err.ctx0.gep259 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep258, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep259, align 8
  %err.ctx1.gep260 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep258, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep260, align 8
  %err.p2i261 = ptrtoint ptr %err.alloc252 to i64
  br label %a.rd.done241

a.rd.err.oob240:                                  ; preds = %a.rd.check237
  %arena.cur262 = call ptr @dva_arena_current()
  %err.alloc263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 56)
  %err.code.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 0
  store i64 4011, ptr %err.code.gep264, align 8
  %err.msg.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep265, align 8
  %err.file.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep266, align 8
  %err.line.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 3
  store i64 394, ptr %err.line.gep267, align 8
  %err.col.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 4
  store i64 18, ptr %err.col.gep268, align 8
  %err.ctx.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc263, i32 0, i32 5
  %err.ctx0.gep270 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep269, i32 0, i32 0
  store i64 %var.load235, ptr %err.ctx0.gep270, align 8
  %err.ctx1.gep271 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep269, i32 0, i32 1
  store i64 %a.rd.len243, ptr %err.ctx1.gep271, align 8
  %err.p2i272 = ptrtoint ptr %err.alloc263 to i64
  br label %a.rd.done241

a.rd.done241:                                     ; preds = %a.rd.err.oob240, %a.rd.err.null239, %a.rd.ok238
  %a.rd.tag273 = phi i1 [ true, %a.rd.ok238 ], [ false, %a.rd.err.null239 ], [ false, %a.rd.err.oob240 ]
  %a.rd.pay274 = phi i64 [ %a.rd.elem250, %a.rd.ok238 ], [ %err.p2i261, %a.rd.err.null239 ], [ %err.p2i272, %a.rd.err.oob240 ]
  %ram.tag275 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag273, 0
  %ram.pay276 = insertvalue { i1, i64 } %ram.tag275, i64 %a.rd.pay274, 1
  %ram.tag277 = extractvalue { i1, i64 } %ram.pay276, 0
  br i1 %ram.tag277, label %choice.then278, label %choice.else279

choice.then278:                                   ; preds = %a.rd.done241
  %ram.pay281 = extractvalue { i1, i64 } %ram.pay276, 1
  %pay.ptr282 = inttoptr i64 %ram.pay281 to ptr
  store ptr %pay.ptr282, ptr %var._283, align 8
  br label %choice.exit280

choice.else279:                                   ; preds = %a.rd.done241
  %ram.pay284 = extractvalue { i1, i64 } %ram.pay276, 1
  %pay.ptr285 = inttoptr i64 %ram.pay284 to ptr
  store ptr %pay.ptr285, ptr %var._286, align 8
  br label %choice.exit280

choice.exit280:                                   ; preds = %choice.else279, %choice.then278
  %choice.res287 = phi ptr [ %pay.ptr282, %choice.then278 ], [ @str.0.struct, %choice.else279 ]
  store ptr %choice.res287, ptr %var.p, align 8
  %var.load288 = load ptr, ptr %var.p, align 8
  %a.load289 = load ptr, ptr %var.wr, align 8
  %a.null290 = icmp eq ptr %a.load289, null
  br i1 %a.null290, label %a.create291, label %a.after292

a.create291:                                      ; preds = %choice.exit280
  %arena.cur293 = call ptr @dva_arena_current()
  %a.create294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 24)
  %arena.cur295 = call ptr @dva_arena_current()
  %a.buf296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 128)
  %a.len.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 0
  store i64 0, ptr %a.len.gep297, align 8
  %a.data.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 1
  store ptr %a.buf296, ptr %a.data.gep298, align 8
  %a.cap.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 2
  store i64 16, ptr %a.cap.gep299, align 8
  store ptr %a.create294, ptr %var.wr, align 8
  br label %a.after292

a.after292:                                       ; preds = %a.create291, %choice.exit280
  %a.load2300 = load ptr, ptr %var.wr, align 8
  br label %a.check301

a.check301:                                       ; preds = %a.after292
  %a.len304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 0
  %a.len305 = load i64, ptr %a.len304, align 8
  %a.cap306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 2
  %a.cap307 = load i64, ptr %a.cap306, align 8
  %a.needs.grow308 = icmp eq i64 %a.len305, %a.cap307
  br i1 %a.needs.grow308, label %a.grow302, label %a.store303

a.grow302:                                        ; preds = %a.check301
  call void @dva_array_grow(ptr %a.load2300)
  br label %a.store303

a.store303:                                       ; preds = %a.grow302, %a.check301
  %a.cur.data309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 1
  %a.cur.data310 = load ptr, ptr %a.cur.data309, align 8
  %a.cur.len311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 0
  %a.cur.len312 = load i64, ptr %a.cur.len311, align 8
  %a.elem.gep313 = getelementptr i64, ptr %a.cur.data310, i64 %a.cur.len312
  %slot.p2i314 = ptrtoint ptr %var.load288 to i64
  store i64 %slot.p2i314, ptr %a.elem.gep313, align 8
  %a.next.len315 = add i64 %a.cur.len312, 1
  %b.len.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 0
  store i64 %a.next.len315, ptr %b.len.gep316, align 8
  br label %loop.latch.18

a.create322:                                      ; preds = %loop.exit.18
  %arena.cur324 = call ptr @dva_arena_current()
  %a.create325 = call ptr @dva_arena_alloc(ptr %arena.cur324, i64 24)
  %arena.cur326 = call ptr @dva_arena_current()
  %a.buf327 = call ptr @dva_arena_alloc(ptr %arena.cur326, i64 128)
  %a.len.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create325, i32 0, i32 0
  store i64 0, ptr %a.len.gep328, align 8
  %a.data.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create325, i32 0, i32 1
  store ptr %a.buf327, ptr %a.data.gep329, align 8
  %a.cap.gep330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create325, i32 0, i32 2
  store i64 16, ptr %a.cap.gep330, align 8
  store ptr %a.create325, ptr %var.tr, align 8
  br label %a.after323

a.after323:                                       ; preds = %a.create322, %loop.exit.18
  %a.load2331 = load ptr, ptr %var.tr, align 8
  %var.load332 = load ptr, ptr %var.wh, align 8
  %a.load333 = load ptr, ptr %var.wh, align 8
  %a.null334 = icmp eq ptr %a.load333, null
  br i1 %a.null334, label %a.create335, label %a.after336

a.create335:                                      ; preds = %a.after323
  %arena.cur337 = call ptr @dva_arena_current()
  %a.create338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 24)
  %arena.cur339 = call ptr @dva_arena_current()
  %a.buf340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 128)
  %a.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 0
  store i64 0, ptr %a.len.gep341, align 8
  %a.data.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 1
  store ptr %a.buf340, ptr %a.data.gep342, align 8
  %a.cap.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 2
  store i64 16, ptr %a.cap.gep343, align 8
  store ptr %a.create338, ptr %var.wh, align 8
  br label %a.after336

a.after336:                                       ; preds = %a.create335, %a.after323
  %a.load2344 = load ptr, ptr %var.wh, align 8
  %var.load345 = load ptr, ptr %var.wr, align 8
  %a.load346 = load ptr, ptr %var.wr, align 8
  %a.null347 = icmp eq ptr %a.load346, null
  br i1 %a.null347, label %a.create348, label %a.after349

a.create348:                                      ; preds = %a.after336
  %arena.cur350 = call ptr @dva_arena_current()
  %a.create351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 24)
  %arena.cur352 = call ptr @dva_arena_current()
  %a.buf353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 128)
  %a.len.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 0
  store i64 0, ptr %a.len.gep354, align 8
  %a.data.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 1
  store ptr %a.buf353, ptr %a.data.gep355, align 8
  %a.cap.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 2
  store i64 16, ptr %a.cap.gep356, align 8
  store ptr %a.create351, ptr %var.wr, align 8
  br label %a.after349

a.after349:                                       ; preds = %a.create348, %a.after336
  %a.load2357 = load ptr, ptr %var.wr, align 8
  %arena.cur358 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2331, ptr %rec.fld, align 8
  %rec.fld359 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2344, ptr %rec.fld359, align 8
  %rec.fld360 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2357, ptr %rec.fld360, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::init_snapshot_of"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._283 = alloca ptr, align 8
  %var._280 = alloca ptr, align 8
  %var._218 = alloca i64, align 8
  %var._i217 = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var.fwr = alloca ptr, align 8
  %var.wr = alloca ptr, align 8
  %var.w = alloca ptr, align 8
  %var._156 = alloca ptr, align 8
  %var._153 = alloca ptr, align 8
  %var._91 = alloca i64, align 8
  %var._i90 = alloca i64, align 8
  %loop.step.20 = alloca i64, align 8
  %loop.idx.20 = alloca i64, align 8
  %var.fw = alloca ptr, align 8
  %var.wh = alloca ptr, align 8
  %var.t = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var.ftr = alloca ptr, align 8
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
  store ptr %fld.load, ptr %var.ftr, align 8
  %var.load2 = load ptr, ptr %var.ftr, align 8
  %a.load = load ptr, ptr %var.ftr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.create4, ptr %var.ftr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.ftr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query10 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.header.19:                                   ; preds = %loop.latch.19, %a.after
  %counter.load = load i64, ptr %loop.idx.19, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query10
  br i1 %loop.cond, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load11 = load ptr, ptr %var.ftr, align 8
  %a.load12 = load ptr, ptr %var.ftr, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.19, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  %arena.cur62 = call ptr @dva_arena_current()
  %a.new63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 24)
  %arena.cur64 = call ptr @dva_arena_current()
  %a.buf65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 128)
  %a.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new63, i32 0, i32 0
  store i64 0, ptr %a.len.gep66, align 8
  %a.data.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new63, i32 0, i32 1
  store ptr %a.buf65, ptr %a.data.gep67, align 8
  %a.cap.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new63, i32 0, i32 2
  store i64 16, ptr %a.cap.gep68, align 8
  store ptr %a.new63, ptr %var.wh, align 8
  %var.load69 = load ptr, ptr %var.fi, align 8
  %fld.gep70 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load69, i32 0, i32 1
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  store ptr %fld.load71, ptr %var.fw, align 8
  %var.load72 = load ptr, ptr %var.fw, align 8
  %a.load73 = load ptr, ptr %var.fw, align 8
  %a.null74 = icmp eq ptr %a.load73, null
  br i1 %a.null74, label %a.create75, label %a.after76

a.create14:                                       ; preds = %loop.body.19
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
  store ptr %a.create17, ptr %var.ftr, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %loop.body.19
  %a.load223 = load ptr, ptr %var.ftr, align 8
  %var.load24 = load i64, ptr %var.i, align 8
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 403, ptr %err.line.gep, align 8
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
  %arena.cur28 = call ptr @dva_arena_current()
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 403, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 18, ptr %err.col.gep34, align 8
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
  br i1 %ram.tag39, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr, ptr %var._41, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr43 = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr43, ptr %var._44, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.t, align 8
  %var.load45 = load ptr, ptr %var.t, align 8
  %a.load46 = load ptr, ptr %var.tr, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create48:                                       ; preds = %choice.exit
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

a.after49:                                        ; preds = %a.create48, %choice.exit
  %a.load257 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after49
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.len58 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 2
  %a.cap59 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len58, %a.cap59
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load257)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.cur.data60 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.cur.len61 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data60, i64 %a.cur.len61
  %slot.p2i = ptrtoint ptr %var.load45 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len61, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.19

a.create75:                                       ; preds = %loop.exit.19
  %arena.cur77 = call ptr @dva_arena_current()
  %a.create78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 24)
  %arena.cur79 = call ptr @dva_arena_current()
  %a.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 128)
  %a.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 0
  store i64 0, ptr %a.len.gep81, align 8
  %a.data.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 1
  store ptr %a.buf80, ptr %a.data.gep82, align 8
  %a.cap.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 2
  store i64 16, ptr %a.cap.gep83, align 8
  store ptr %a.create78, ptr %var.fw, align 8
  br label %a.after76

a.after76:                                        ; preds = %a.create75, %loop.exit.19
  %a.load284 = load ptr, ptr %var.fw, align 8
  %a.len.query85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load284, i32 0, i32 0
  %a.len.query86 = load i64, ptr %a.len.query85, align 8
  store i64 0, ptr %loop.idx.20, align 8
  br label %loop.header.20

loop.header.20:                                   ; preds = %loop.latch.20, %a.after76
  %counter.load87 = load i64, ptr %loop.idx.20, align 8
  %loop.cond88 = icmp slt i64 %counter.load87, %a.len.query86
  br i1 %loop.cond88, label %loop.body.20, label %loop.exit.nat.20

loop.body.20:                                     ; preds = %loop.header.20
  %loop.rel.i89 = sub i64 %counter.load87, 0
  store i64 1, ptr %loop.step.20, align 8
  store i64 %loop.rel.i89, ptr %var._i90, align 8
  store i64 %counter.load87, ptr %var._91, align 8
  store i64 %counter.load87, ptr %var.i, align 8
  %var.load92 = load ptr, ptr %var.fw, align 8
  %a.load93 = load ptr, ptr %var.fw, align 8
  %a.null94 = icmp eq ptr %a.load93, null
  br i1 %a.null94, label %a.create95, label %a.after96

loop.exit.nat.20:                                 ; preds = %loop.header.20
  br label %loop.exit.20

loop.latch.20:                                    ; preds = %a.store173
  %step.val187 = load i64, ptr %loop.step.20, align 8
  %loop.next188 = add i64 %counter.load87, %step.val187
  store i64 %loop.next188, ptr %loop.idx.20, align 8
  br label %loop.header.20

loop.exit.20:                                     ; preds = %loop.exit.nat.20
  %arena.cur189 = call ptr @dva_arena_current()
  %a.new190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 24)
  %arena.cur191 = call ptr @dva_arena_current()
  %a.buf192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 128)
  %a.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new190, i32 0, i32 0
  store i64 0, ptr %a.len.gep193, align 8
  %a.data.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new190, i32 0, i32 1
  store ptr %a.buf192, ptr %a.data.gep194, align 8
  %a.cap.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new190, i32 0, i32 2
  store i64 16, ptr %a.cap.gep195, align 8
  store ptr %a.new190, ptr %var.wr, align 8
  %var.load196 = load ptr, ptr %var.fi, align 8
  %fld.gep197 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load196, i32 0, i32 2
  %fld.load198 = load ptr, ptr %fld.gep197, align 8
  store ptr %fld.load198, ptr %var.fwr, align 8
  %var.load199 = load ptr, ptr %var.fwr, align 8
  %a.load200 = load ptr, ptr %var.fwr, align 8
  %a.null201 = icmp eq ptr %a.load200, null
  br i1 %a.null201, label %a.create202, label %a.after203

a.create95:                                       ; preds = %loop.body.20
  %arena.cur97 = call ptr @dva_arena_current()
  %a.create98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 24)
  %arena.cur99 = call ptr @dva_arena_current()
  %a.buf100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 128)
  %a.len.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create98, i32 0, i32 0
  store i64 0, ptr %a.len.gep101, align 8
  %a.data.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create98, i32 0, i32 1
  store ptr %a.buf100, ptr %a.data.gep102, align 8
  %a.cap.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create98, i32 0, i32 2
  store i64 16, ptr %a.cap.gep103, align 8
  store ptr %a.create98, ptr %var.fw, align 8
  br label %a.after96

a.after96:                                        ; preds = %a.create95, %loop.body.20
  %a.load2104 = load ptr, ptr %var.fw, align 8
  %var.load105 = load i64, ptr %var.i, align 8
  %a.rd.nonnull106 = icmp ne ptr %a.load2104, null
  br i1 %a.rd.nonnull106, label %a.rd.check107, label %a.rd.err.null109

a.rd.check107:                                    ; preds = %a.after96
  %a.rd.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2104, i32 0, i32 0
  %a.rd.len113 = load i64, ptr %a.rd.len112, align 8
  %a.rd.ge0114 = icmp sge i64 %var.load105, 0
  %a.rd.lt115 = icmp slt i64 %var.load105, %a.rd.len113
  %a.rd.bounds116 = and i1 %a.rd.ge0114, %a.rd.lt115
  br i1 %a.rd.bounds116, label %a.rd.ok108, label %a.rd.err.oob110

a.rd.ok108:                                       ; preds = %a.rd.check107
  %a.rd.data117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2104, i32 0, i32 1
  %a.rd.data118 = load ptr, ptr %a.rd.data117, align 8
  %a.rd.elem.gep119 = getelementptr i64, ptr %a.rd.data118, i64 %var.load105
  %a.rd.elem120 = load i64, ptr %a.rd.elem.gep119, align 8
  br label %a.rd.done111

a.rd.err.null109:                                 ; preds = %a.after96
  %arena.cur121 = call ptr @dva_arena_current()
  %err.alloc122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 56)
  %err.code.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 0
  store i64 4011, ptr %err.code.gep123, align 8
  %err.msg.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep124, align 8
  %err.file.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep125, align 8
  %err.line.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 3
  store i64 408, ptr %err.line.gep126, align 8
  %err.col.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 4
  store i64 17, ptr %err.col.gep127, align 8
  %err.ctx.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 5
  %err.ctx0.gep129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep128, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep129, align 8
  %err.ctx1.gep130 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep128, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep130, align 8
  %err.p2i131 = ptrtoint ptr %err.alloc122 to i64
  br label %a.rd.done111

a.rd.err.oob110:                                  ; preds = %a.rd.check107
  %arena.cur132 = call ptr @dva_arena_current()
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 408, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 17, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 %var.load105, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 %a.rd.len113, ptr %err.ctx1.gep141, align 8
  %err.p2i142 = ptrtoint ptr %err.alloc133 to i64
  br label %a.rd.done111

a.rd.done111:                                     ; preds = %a.rd.err.oob110, %a.rd.err.null109, %a.rd.ok108
  %a.rd.tag143 = phi i1 [ true, %a.rd.ok108 ], [ false, %a.rd.err.null109 ], [ false, %a.rd.err.oob110 ]
  %a.rd.pay144 = phi i64 [ %a.rd.elem120, %a.rd.ok108 ], [ %err.p2i131, %a.rd.err.null109 ], [ %err.p2i142, %a.rd.err.oob110 ]
  %ram.tag145 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag143, 0
  %ram.pay146 = insertvalue { i1, i64 } %ram.tag145, i64 %a.rd.pay144, 1
  %ram.tag147 = extractvalue { i1, i64 } %ram.pay146, 0
  br i1 %ram.tag147, label %choice.then148, label %choice.else149

choice.then148:                                   ; preds = %a.rd.done111
  %ram.pay151 = extractvalue { i1, i64 } %ram.pay146, 1
  %pay.ptr152 = inttoptr i64 %ram.pay151 to ptr
  store ptr %pay.ptr152, ptr %var._153, align 8
  br label %choice.exit150

choice.else149:                                   ; preds = %a.rd.done111
  %ram.pay154 = extractvalue { i1, i64 } %ram.pay146, 1
  %pay.ptr155 = inttoptr i64 %ram.pay154 to ptr
  store ptr %pay.ptr155, ptr %var._156, align 8
  br label %choice.exit150

choice.exit150:                                   ; preds = %choice.else149, %choice.then148
  %choice.res157 = phi ptr [ %pay.ptr152, %choice.then148 ], [ @str.0.struct, %choice.else149 ]
  store ptr %choice.res157, ptr %var.w, align 8
  %var.load158 = load ptr, ptr %var.w, align 8
  %a.load159 = load ptr, ptr %var.wh, align 8
  %a.null160 = icmp eq ptr %a.load159, null
  br i1 %a.null160, label %a.create161, label %a.after162

a.create161:                                      ; preds = %choice.exit150
  %arena.cur163 = call ptr @dva_arena_current()
  %a.create164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 24)
  %arena.cur165 = call ptr @dva_arena_current()
  %a.buf166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 128)
  %a.len.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 0
  store i64 0, ptr %a.len.gep167, align 8
  %a.data.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 1
  store ptr %a.buf166, ptr %a.data.gep168, align 8
  %a.cap.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 2
  store i64 16, ptr %a.cap.gep169, align 8
  store ptr %a.create164, ptr %var.wh, align 8
  br label %a.after162

a.after162:                                       ; preds = %a.create161, %choice.exit150
  %a.load2170 = load ptr, ptr %var.wh, align 8
  br label %a.check171

a.check171:                                       ; preds = %a.after162
  %a.len174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 0
  %a.len175 = load i64, ptr %a.len174, align 8
  %a.cap176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 2
  %a.cap177 = load i64, ptr %a.cap176, align 8
  %a.needs.grow178 = icmp eq i64 %a.len175, %a.cap177
  br i1 %a.needs.grow178, label %a.grow172, label %a.store173

a.grow172:                                        ; preds = %a.check171
  call void @dva_array_grow(ptr %a.load2170)
  br label %a.store173

a.store173:                                       ; preds = %a.grow172, %a.check171
  %a.cur.data179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 1
  %a.cur.data180 = load ptr, ptr %a.cur.data179, align 8
  %a.cur.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 0
  %a.cur.len182 = load i64, ptr %a.cur.len181, align 8
  %a.elem.gep183 = getelementptr i64, ptr %a.cur.data180, i64 %a.cur.len182
  %slot.p2i184 = ptrtoint ptr %var.load158 to i64
  store i64 %slot.p2i184, ptr %a.elem.gep183, align 8
  %a.next.len185 = add i64 %a.cur.len182, 1
  %b.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 0
  store i64 %a.next.len185, ptr %b.len.gep186, align 8
  br label %loop.latch.20

a.create202:                                      ; preds = %loop.exit.20
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
  store ptr %a.create205, ptr %var.fwr, align 8
  br label %a.after203

a.after203:                                       ; preds = %a.create202, %loop.exit.20
  %a.load2211 = load ptr, ptr %var.fwr, align 8
  %a.len.query212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2211, i32 0, i32 0
  %a.len.query213 = load i64, ptr %a.len.query212, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after203
  %counter.load214 = load i64, ptr %loop.idx.21, align 8
  %loop.cond215 = icmp slt i64 %counter.load214, %a.len.query213
  br i1 %loop.cond215, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i216 = sub i64 %counter.load214, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i216, ptr %var._i217, align 8
  store i64 %counter.load214, ptr %var._218, align 8
  store i64 %counter.load214, ptr %var.i, align 8
  %var.load219 = load ptr, ptr %var.fwr, align 8
  %a.load220 = load ptr, ptr %var.fwr, align 8
  %a.null221 = icmp eq ptr %a.load220, null
  br i1 %a.null221, label %a.create222, label %a.after223

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %a.store300
  %step.val314 = load i64, ptr %loop.step.21, align 8
  %loop.next315 = add i64 %counter.load214, %step.val314
  store i64 %loop.next315, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load316 = load ptr, ptr %var.tr, align 8
  %a.load317 = load ptr, ptr %var.tr, align 8
  %a.null318 = icmp eq ptr %a.load317, null
  br i1 %a.null318, label %a.create319, label %a.after320

a.create222:                                      ; preds = %loop.body.21
  %arena.cur224 = call ptr @dva_arena_current()
  %a.create225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 24)
  %arena.cur226 = call ptr @dva_arena_current()
  %a.buf227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 128)
  %a.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 0
  store i64 0, ptr %a.len.gep228, align 8
  %a.data.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 1
  store ptr %a.buf227, ptr %a.data.gep229, align 8
  %a.cap.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 2
  store i64 16, ptr %a.cap.gep230, align 8
  store ptr %a.create225, ptr %var.fwr, align 8
  br label %a.after223

a.after223:                                       ; preds = %a.create222, %loop.body.21
  %a.load2231 = load ptr, ptr %var.fwr, align 8
  %var.load232 = load i64, ptr %var.i, align 8
  %a.rd.nonnull233 = icmp ne ptr %a.load2231, null
  br i1 %a.rd.nonnull233, label %a.rd.check234, label %a.rd.err.null236

a.rd.check234:                                    ; preds = %a.after223
  %a.rd.len239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2231, i32 0, i32 0
  %a.rd.len240 = load i64, ptr %a.rd.len239, align 8
  %a.rd.ge0241 = icmp sge i64 %var.load232, 0
  %a.rd.lt242 = icmp slt i64 %var.load232, %a.rd.len240
  %a.rd.bounds243 = and i1 %a.rd.ge0241, %a.rd.lt242
  br i1 %a.rd.bounds243, label %a.rd.ok235, label %a.rd.err.oob237

a.rd.ok235:                                       ; preds = %a.rd.check234
  %a.rd.data244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2231, i32 0, i32 1
  %a.rd.data245 = load ptr, ptr %a.rd.data244, align 8
  %a.rd.elem.gep246 = getelementptr i64, ptr %a.rd.data245, i64 %var.load232
  %a.rd.elem247 = load i64, ptr %a.rd.elem.gep246, align 8
  br label %a.rd.done238

a.rd.err.null236:                                 ; preds = %a.after223
  %arena.cur248 = call ptr @dva_arena_current()
  %err.alloc249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 56)
  %err.code.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 0
  store i64 4011, ptr %err.code.gep250, align 8
  %err.msg.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep251, align 8
  %err.file.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep252, align 8
  %err.line.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 3
  store i64 413, ptr %err.line.gep253, align 8
  %err.col.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 4
  store i64 18, ptr %err.col.gep254, align 8
  %err.ctx.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 5
  %err.ctx0.gep256 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep255, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep256, align 8
  %err.ctx1.gep257 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep255, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep257, align 8
  %err.p2i258 = ptrtoint ptr %err.alloc249 to i64
  br label %a.rd.done238

a.rd.err.oob237:                                  ; preds = %a.rd.check234
  %arena.cur259 = call ptr @dva_arena_current()
  %err.alloc260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 56)
  %err.code.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 0
  store i64 4011, ptr %err.code.gep261, align 8
  %err.msg.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep262, align 8
  %err.file.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep263, align 8
  %err.line.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 3
  store i64 413, ptr %err.line.gep264, align 8
  %err.col.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 4
  store i64 18, ptr %err.col.gep265, align 8
  %err.ctx.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 5
  %err.ctx0.gep267 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep266, i32 0, i32 0
  store i64 %var.load232, ptr %err.ctx0.gep267, align 8
  %err.ctx1.gep268 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep266, i32 0, i32 1
  store i64 %a.rd.len240, ptr %err.ctx1.gep268, align 8
  %err.p2i269 = ptrtoint ptr %err.alloc260 to i64
  br label %a.rd.done238

a.rd.done238:                                     ; preds = %a.rd.err.oob237, %a.rd.err.null236, %a.rd.ok235
  %a.rd.tag270 = phi i1 [ true, %a.rd.ok235 ], [ false, %a.rd.err.null236 ], [ false, %a.rd.err.oob237 ]
  %a.rd.pay271 = phi i64 [ %a.rd.elem247, %a.rd.ok235 ], [ %err.p2i258, %a.rd.err.null236 ], [ %err.p2i269, %a.rd.err.oob237 ]
  %ram.tag272 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag270, 0
  %ram.pay273 = insertvalue { i1, i64 } %ram.tag272, i64 %a.rd.pay271, 1
  %ram.tag274 = extractvalue { i1, i64 } %ram.pay273, 0
  br i1 %ram.tag274, label %choice.then275, label %choice.else276

choice.then275:                                   ; preds = %a.rd.done238
  %ram.pay278 = extractvalue { i1, i64 } %ram.pay273, 1
  %pay.ptr279 = inttoptr i64 %ram.pay278 to ptr
  store ptr %pay.ptr279, ptr %var._280, align 8
  br label %choice.exit277

choice.else276:                                   ; preds = %a.rd.done238
  %ram.pay281 = extractvalue { i1, i64 } %ram.pay273, 1
  %pay.ptr282 = inttoptr i64 %ram.pay281 to ptr
  store ptr %pay.ptr282, ptr %var._283, align 8
  br label %choice.exit277

choice.exit277:                                   ; preds = %choice.else276, %choice.then275
  %choice.res284 = phi ptr [ %pay.ptr279, %choice.then275 ], [ @str.0.struct, %choice.else276 ]
  store ptr %choice.res284, ptr %var.p, align 8
  %var.load285 = load ptr, ptr %var.p, align 8
  %a.load286 = load ptr, ptr %var.wr, align 8
  %a.null287 = icmp eq ptr %a.load286, null
  br i1 %a.null287, label %a.create288, label %a.after289

a.create288:                                      ; preds = %choice.exit277
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
  store ptr %a.create291, ptr %var.wr, align 8
  br label %a.after289

a.after289:                                       ; preds = %a.create288, %choice.exit277
  %a.load2297 = load ptr, ptr %var.wr, align 8
  br label %a.check298

a.check298:                                       ; preds = %a.after289
  %a.len301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  %a.len302 = load i64, ptr %a.len301, align 8
  %a.cap303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 2
  %a.cap304 = load i64, ptr %a.cap303, align 8
  %a.needs.grow305 = icmp eq i64 %a.len302, %a.cap304
  br i1 %a.needs.grow305, label %a.grow299, label %a.store300

a.grow299:                                        ; preds = %a.check298
  call void @dva_array_grow(ptr %a.load2297)
  br label %a.store300

a.store300:                                       ; preds = %a.grow299, %a.check298
  %a.cur.data306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 1
  %a.cur.data307 = load ptr, ptr %a.cur.data306, align 8
  %a.cur.len308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  %a.cur.len309 = load i64, ptr %a.cur.len308, align 8
  %a.elem.gep310 = getelementptr i64, ptr %a.cur.data307, i64 %a.cur.len309
  %slot.p2i311 = ptrtoint ptr %var.load285 to i64
  store i64 %slot.p2i311, ptr %a.elem.gep310, align 8
  %a.next.len312 = add i64 %a.cur.len309, 1
  %b.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  store i64 %a.next.len312, ptr %b.len.gep313, align 8
  br label %loop.latch.21

a.create319:                                      ; preds = %loop.exit.21
  %arena.cur321 = call ptr @dva_arena_current()
  %a.create322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 24)
  %arena.cur323 = call ptr @dva_arena_current()
  %a.buf324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 128)
  %a.len.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create322, i32 0, i32 0
  store i64 0, ptr %a.len.gep325, align 8
  %a.data.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create322, i32 0, i32 1
  store ptr %a.buf324, ptr %a.data.gep326, align 8
  %a.cap.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create322, i32 0, i32 2
  store i64 16, ptr %a.cap.gep327, align 8
  store ptr %a.create322, ptr %var.tr, align 8
  br label %a.after320

a.after320:                                       ; preds = %a.create319, %loop.exit.21
  %a.load2328 = load ptr, ptr %var.tr, align 8
  %var.load329 = load ptr, ptr %var.wh, align 8
  %a.load330 = load ptr, ptr %var.wh, align 8
  %a.null331 = icmp eq ptr %a.load330, null
  br i1 %a.null331, label %a.create332, label %a.after333

a.create332:                                      ; preds = %a.after320
  %arena.cur334 = call ptr @dva_arena_current()
  %a.create335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 24)
  %arena.cur336 = call ptr @dva_arena_current()
  %a.buf337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 128)
  %a.len.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 0
  store i64 0, ptr %a.len.gep338, align 8
  %a.data.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 1
  store ptr %a.buf337, ptr %a.data.gep339, align 8
  %a.cap.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 2
  store i64 16, ptr %a.cap.gep340, align 8
  store ptr %a.create335, ptr %var.wh, align 8
  br label %a.after333

a.after333:                                       ; preds = %a.create332, %a.after320
  %a.load2341 = load ptr, ptr %var.wh, align 8
  %var.load342 = load ptr, ptr %var.wr, align 8
  %a.load343 = load ptr, ptr %var.wr, align 8
  %a.null344 = icmp eq ptr %a.load343, null
  br i1 %a.null344, label %a.create345, label %a.after346

a.create345:                                      ; preds = %a.after333
  %arena.cur347 = call ptr @dva_arena_current()
  %a.create348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 24)
  %arena.cur349 = call ptr @dva_arena_current()
  %a.buf350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 128)
  %a.len.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 0
  store i64 0, ptr %a.len.gep351, align 8
  %a.data.gep352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 1
  store ptr %a.buf350, ptr %a.data.gep352, align 8
  %a.cap.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 2
  store i64 16, ptr %a.cap.gep353, align 8
  store ptr %a.create348, ptr %var.wr, align 8
  br label %a.after346

a.after346:                                       ; preds = %a.create345, %a.after333
  %a.load2354 = load ptr, ptr %var.wr, align 8
  %arena.cur355 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur355, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2328, ptr %rec.fld, align 8
  %rec.fld356 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2341, ptr %rec.fld356, align 8
  %rec.fld357 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2354, ptr %rec.fld357, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  ret void
}

define ptr @"type_env::init_merge_two"(ptr %0, ptr %1) #1 {
entry:
  %var.path = alloca ptr, align 8
  %var._426 = alloca ptr, align 8
  %var._423 = alloca ptr, align 8
  %var._361 = alloca i64, align 8
  %var._i360 = alloca i64, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
  %var.awr = alloca ptr, align 8
  %var.wr = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var._292 = alloca ptr, align 8
  %var._289 = alloca ptr, align 8
  %var._227 = alloca i64, align 8
  %var._i226 = alloca i64, align 8
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
  %var.aw = alloca ptr, align 8
  %var.wh = alloca ptr, align 8
  %var.t2 = alloca ptr, align 8
  %var._149 = alloca ptr, align 8
  %var._146 = alloca ptr, align 8
  %var._84 = alloca i64, align 8
  %var._i83 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %var.btr = alloca ptr, align 8
  %var.t = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %var.atr = alloca ptr, align 8
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
  store ptr %fld.load, ptr %var.atr, align 8
  %var.load2 = load ptr, ptr %var.atr, align 8
  %a.load = load ptr, ptr %var.atr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.create4, ptr %var.atr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.atr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query10 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.header.22:                                   ; preds = %loop.latch.22, %a.after
  %counter.load = load i64, ptr %loop.idx.22, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query10
  br i1 %loop.cond, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load11 = load ptr, ptr %var.atr, align 8
  %a.load12 = load ptr, ptr %var.atr, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load62 = load ptr, ptr %var.b, align 8
  %fld.gep63 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load62, i32 0, i32 0
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  store ptr %fld.load64, ptr %var.btr, align 8
  %var.load65 = load ptr, ptr %var.btr, align 8
  %a.load66 = load ptr, ptr %var.btr, align 8
  %a.null67 = icmp eq ptr %a.load66, null
  br i1 %a.null67, label %a.create68, label %a.after69

a.create14:                                       ; preds = %loop.body.22
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
  store ptr %a.create17, ptr %var.atr, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %loop.body.22
  %a.load223 = load ptr, ptr %var.atr, align 8
  %var.load24 = load i64, ptr %var.i, align 8
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 426, ptr %err.line.gep, align 8
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
  %arena.cur28 = call ptr @dva_arena_current()
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 426, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 18, ptr %err.col.gep34, align 8
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
  br i1 %ram.tag39, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr, ptr %var._41, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr43 = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr43, ptr %var._44, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.t, align 8
  %var.load45 = load ptr, ptr %var.t, align 8
  %a.load46 = load ptr, ptr %var.tr, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create48:                                       ; preds = %choice.exit
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

a.after49:                                        ; preds = %a.create48, %choice.exit
  %a.load257 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after49
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.len58 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 2
  %a.cap59 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len58, %a.cap59
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load257)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.cur.data60 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.cur.len61 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data60, i64 %a.cur.len61
  %slot.p2i = ptrtoint ptr %var.load45 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len61, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.22

a.create68:                                       ; preds = %loop.exit.22
  %arena.cur70 = call ptr @dva_arena_current()
  %a.create71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %arena.cur72 = call ptr @dva_arena_current()
  %a.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 128)
  %a.len.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 0
  store i64 0, ptr %a.len.gep74, align 8
  %a.data.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 1
  store ptr %a.buf73, ptr %a.data.gep75, align 8
  %a.cap.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 2
  store i64 16, ptr %a.cap.gep76, align 8
  store ptr %a.create71, ptr %var.btr, align 8
  br label %a.after69

a.after69:                                        ; preds = %a.create68, %loop.exit.22
  %a.load277 = load ptr, ptr %var.btr, align 8
  %a.len.query78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load277, i32 0, i32 0
  %a.len.query79 = load i64, ptr %a.len.query78, align 8
  store i64 0, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.header.23:                                   ; preds = %loop.latch.23, %a.after69
  %counter.load80 = load i64, ptr %loop.idx.23, align 8
  %loop.cond81 = icmp slt i64 %counter.load80, %a.len.query79
  br i1 %loop.cond81, label %loop.body.23, label %loop.exit.nat.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i82 = sub i64 %counter.load80, 0
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i82, ptr %var._i83, align 8
  store i64 %counter.load80, ptr %var._84, align 8
  store i64 %counter.load80, ptr %var.i, align 8
  %var.load85 = load ptr, ptr %var.btr, align 8
  %a.load86 = load ptr, ptr %var.btr, align 8
  %a.null87 = icmp eq ptr %a.load86, null
  br i1 %a.null87, label %a.create88, label %a.after89

loop.exit.nat.23:                                 ; preds = %loop.header.23
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %choice.exit166
  %step.val196 = load i64, ptr %loop.step.23, align 8
  %loop.next197 = add i64 %counter.load80, %step.val196
  store i64 %loop.next197, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %loop.exit.nat.23
  %arena.cur198 = call ptr @dva_arena_current()
  %a.new199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = call ptr @dva_arena_current()
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.new199, ptr %var.wh, align 8
  %var.load205 = load ptr, ptr %var.a, align 8
  %fld.gep206 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load205, i32 0, i32 1
  %fld.load207 = load ptr, ptr %fld.gep206, align 8
  store ptr %fld.load207, ptr %var.aw, align 8
  %var.load208 = load ptr, ptr %var.aw, align 8
  %a.load209 = load ptr, ptr %var.aw, align 8
  %a.null210 = icmp eq ptr %a.load209, null
  br i1 %a.null210, label %a.create211, label %a.after212

a.create88:                                       ; preds = %loop.body.23
  %arena.cur90 = call ptr @dva_arena_current()
  %a.create91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 24)
  %arena.cur92 = call ptr @dva_arena_current()
  %a.buf93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 128)
  %a.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 0
  store i64 0, ptr %a.len.gep94, align 8
  %a.data.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 1
  store ptr %a.buf93, ptr %a.data.gep95, align 8
  %a.cap.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 2
  store i64 16, ptr %a.cap.gep96, align 8
  store ptr %a.create91, ptr %var.btr, align 8
  br label %a.after89

a.after89:                                        ; preds = %a.create88, %loop.body.23
  %a.load297 = load ptr, ptr %var.btr, align 8
  %var.load98 = load i64, ptr %var.i, align 8
  %a.rd.nonnull99 = icmp ne ptr %a.load297, null
  br i1 %a.rd.nonnull99, label %a.rd.check100, label %a.rd.err.null102

a.rd.check100:                                    ; preds = %a.after89
  %a.rd.len105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load297, i32 0, i32 0
  %a.rd.len106 = load i64, ptr %a.rd.len105, align 8
  %a.rd.ge0107 = icmp sge i64 %var.load98, 0
  %a.rd.lt108 = icmp slt i64 %var.load98, %a.rd.len106
  %a.rd.bounds109 = and i1 %a.rd.ge0107, %a.rd.lt108
  br i1 %a.rd.bounds109, label %a.rd.ok101, label %a.rd.err.oob103

a.rd.ok101:                                       ; preds = %a.rd.check100
  %a.rd.data110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load297, i32 0, i32 1
  %a.rd.data111 = load ptr, ptr %a.rd.data110, align 8
  %a.rd.elem.gep112 = getelementptr i64, ptr %a.rd.data111, i64 %var.load98
  %a.rd.elem113 = load i64, ptr %a.rd.elem.gep112, align 8
  br label %a.rd.done104

a.rd.err.null102:                                 ; preds = %a.after89
  %arena.cur114 = call ptr @dva_arena_current()
  %err.alloc115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 56)
  %err.code.gep116 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 0
  store i64 4011, ptr %err.code.gep116, align 8
  %err.msg.gep117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep117, align 8
  %err.file.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep118, align 8
  %err.line.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 3
  store i64 430, ptr %err.line.gep119, align 8
  %err.col.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 4
  store i64 19, ptr %err.col.gep120, align 8
  %err.ctx.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 5
  %err.ctx0.gep122 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep121, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep122, align 8
  %err.ctx1.gep123 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep121, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep123, align 8
  %err.p2i124 = ptrtoint ptr %err.alloc115 to i64
  br label %a.rd.done104

a.rd.err.oob103:                                  ; preds = %a.rd.check100
  %arena.cur125 = call ptr @dva_arena_current()
  %err.alloc126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 56)
  %err.code.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 0
  store i64 4011, ptr %err.code.gep127, align 8
  %err.msg.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep128, align 8
  %err.file.gep129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep129, align 8
  %err.line.gep130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 3
  store i64 430, ptr %err.line.gep130, align 8
  %err.col.gep131 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 4
  store i64 19, ptr %err.col.gep131, align 8
  %err.ctx.gep132 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc126, i32 0, i32 5
  %err.ctx0.gep133 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep132, i32 0, i32 0
  store i64 %var.load98, ptr %err.ctx0.gep133, align 8
  %err.ctx1.gep134 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep132, i32 0, i32 1
  store i64 %a.rd.len106, ptr %err.ctx1.gep134, align 8
  %err.p2i135 = ptrtoint ptr %err.alloc126 to i64
  br label %a.rd.done104

a.rd.done104:                                     ; preds = %a.rd.err.oob103, %a.rd.err.null102, %a.rd.ok101
  %a.rd.tag136 = phi i1 [ true, %a.rd.ok101 ], [ false, %a.rd.err.null102 ], [ false, %a.rd.err.oob103 ]
  %a.rd.pay137 = phi i64 [ %a.rd.elem113, %a.rd.ok101 ], [ %err.p2i124, %a.rd.err.null102 ], [ %err.p2i135, %a.rd.err.oob103 ]
  %ram.tag138 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag136, 0
  %ram.pay139 = insertvalue { i1, i64 } %ram.tag138, i64 %a.rd.pay137, 1
  %ram.tag140 = extractvalue { i1, i64 } %ram.pay139, 0
  br i1 %ram.tag140, label %choice.then141, label %choice.else142

choice.then141:                                   ; preds = %a.rd.done104
  %ram.pay144 = extractvalue { i1, i64 } %ram.pay139, 1
  %pay.ptr145 = inttoptr i64 %ram.pay144 to ptr
  store ptr %pay.ptr145, ptr %var._146, align 8
  br label %choice.exit143

choice.else142:                                   ; preds = %a.rd.done104
  %ram.pay147 = extractvalue { i1, i64 } %ram.pay139, 1
  %pay.ptr148 = inttoptr i64 %ram.pay147 to ptr
  store ptr %pay.ptr148, ptr %var._149, align 8
  br label %choice.exit143

choice.exit143:                                   ; preds = %choice.else142, %choice.then141
  %choice.res150 = phi ptr [ %pay.ptr145, %choice.then141 ], [ @str.0.struct, %choice.else142 ]
  store ptr %choice.res150, ptr %var.t2, align 8
  %var.load151 = load ptr, ptr %var.tr, align 8
  %a.load152 = load ptr, ptr %var.tr, align 8
  %a.null153 = icmp eq ptr %a.load152, null
  br i1 %a.null153, label %a.create154, label %a.after155

a.create154:                                      ; preds = %choice.exit143
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
  store ptr %a.create157, ptr %var.tr, align 8
  br label %a.after155

a.after155:                                       ; preds = %a.create154, %choice.exit143
  %a.load2163 = load ptr, ptr %var.tr, align 8
  %var.load164 = load ptr, ptr %var.t2, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %a.load2163, ptr %var.load164)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then165, label %choice.exit166

choice.then165:                                   ; preds = %a.after155
  %var.load167 = load ptr, ptr %var.t2, align 8
  %a.load168 = load ptr, ptr %var.tr, align 8
  %a.null169 = icmp eq ptr %a.load168, null
  br i1 %a.null169, label %a.create170, label %a.after171

choice.exit166:                                   ; preds = %a.store182, %a.after155
  br label %loop.latch.23

a.create170:                                      ; preds = %choice.then165
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
  store ptr %a.create173, ptr %var.tr, align 8
  br label %a.after171

a.after171:                                       ; preds = %a.create170, %choice.then165
  %a.load2179 = load ptr, ptr %var.tr, align 8
  br label %a.check180

a.check180:                                       ; preds = %a.after171
  %a.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 0
  %a.len184 = load i64, ptr %a.len183, align 8
  %a.cap185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 2
  %a.cap186 = load i64, ptr %a.cap185, align 8
  %a.needs.grow187 = icmp eq i64 %a.len184, %a.cap186
  br i1 %a.needs.grow187, label %a.grow181, label %a.store182

a.grow181:                                        ; preds = %a.check180
  call void @dva_array_grow(ptr %a.load2179)
  br label %a.store182

a.store182:                                       ; preds = %a.grow181, %a.check180
  %a.cur.data188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 1
  %a.cur.data189 = load ptr, ptr %a.cur.data188, align 8
  %a.cur.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 0
  %a.cur.len191 = load i64, ptr %a.cur.len190, align 8
  %a.elem.gep192 = getelementptr i64, ptr %a.cur.data189, i64 %a.cur.len191
  %slot.p2i193 = ptrtoint ptr %var.load167 to i64
  store i64 %slot.p2i193, ptr %a.elem.gep192, align 8
  %a.next.len194 = add i64 %a.cur.len191, 1
  %b.len.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 0
  store i64 %a.next.len194, ptr %b.len.gep195, align 8
  br label %choice.exit166

a.create211:                                      ; preds = %loop.exit.23
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
  store ptr %a.create214, ptr %var.aw, align 8
  br label %a.after212

a.after212:                                       ; preds = %a.create211, %loop.exit.23
  %a.load2220 = load ptr, ptr %var.aw, align 8
  %a.len.query221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2220, i32 0, i32 0
  %a.len.query222 = load i64, ptr %a.len.query221, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.header.24:                                   ; preds = %loop.latch.24, %a.after212
  %counter.load223 = load i64, ptr %loop.idx.24, align 8
  %loop.cond224 = icmp slt i64 %counter.load223, %a.len.query222
  br i1 %loop.cond224, label %loop.body.24, label %loop.exit.nat.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i225 = sub i64 %counter.load223, 0
  store i64 1, ptr %loop.step.24, align 8
  store i64 %loop.rel.i225, ptr %var._i226, align 8
  store i64 %counter.load223, ptr %var._227, align 8
  store i64 %counter.load223, ptr %var.i, align 8
  %var.load228 = load ptr, ptr %var.aw, align 8
  %a.load229 = load ptr, ptr %var.aw, align 8
  %a.null230 = icmp eq ptr %a.load229, null
  br i1 %a.null230, label %a.create231, label %a.after232

loop.exit.nat.24:                                 ; preds = %loop.header.24
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %choice.exit300
  %step.val330 = load i64, ptr %loop.step.24, align 8
  %loop.next331 = add i64 %counter.load223, %step.val330
  store i64 %loop.next331, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %loop.exit.nat.24
  %arena.cur332 = call ptr @dva_arena_current()
  %a.new333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 24)
  %arena.cur334 = call ptr @dva_arena_current()
  %a.buf335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 128)
  %a.len.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new333, i32 0, i32 0
  store i64 0, ptr %a.len.gep336, align 8
  %a.data.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new333, i32 0, i32 1
  store ptr %a.buf335, ptr %a.data.gep337, align 8
  %a.cap.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new333, i32 0, i32 2
  store i64 16, ptr %a.cap.gep338, align 8
  store ptr %a.new333, ptr %var.wr, align 8
  %var.load339 = load ptr, ptr %var.a, align 8
  %fld.gep340 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load339, i32 0, i32 2
  %fld.load341 = load ptr, ptr %fld.gep340, align 8
  store ptr %fld.load341, ptr %var.awr, align 8
  %var.load342 = load ptr, ptr %var.awr, align 8
  %a.load343 = load ptr, ptr %var.awr, align 8
  %a.null344 = icmp eq ptr %a.load343, null
  br i1 %a.null344, label %a.create345, label %a.after346

a.create231:                                      ; preds = %loop.body.24
  %arena.cur233 = call ptr @dva_arena_current()
  %a.create234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 24)
  %arena.cur235 = call ptr @dva_arena_current()
  %a.buf236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 128)
  %a.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 0
  store i64 0, ptr %a.len.gep237, align 8
  %a.data.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 1
  store ptr %a.buf236, ptr %a.data.gep238, align 8
  %a.cap.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep239, align 8
  store ptr %a.create234, ptr %var.aw, align 8
  br label %a.after232

a.after232:                                       ; preds = %a.create231, %loop.body.24
  %a.load2240 = load ptr, ptr %var.aw, align 8
  %var.load241 = load i64, ptr %var.i, align 8
  %a.rd.nonnull242 = icmp ne ptr %a.load2240, null
  br i1 %a.rd.nonnull242, label %a.rd.check243, label %a.rd.err.null245

a.rd.check243:                                    ; preds = %a.after232
  %a.rd.len248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2240, i32 0, i32 0
  %a.rd.len249 = load i64, ptr %a.rd.len248, align 8
  %a.rd.ge0250 = icmp sge i64 %var.load241, 0
  %a.rd.lt251 = icmp slt i64 %var.load241, %a.rd.len249
  %a.rd.bounds252 = and i1 %a.rd.ge0250, %a.rd.lt251
  br i1 %a.rd.bounds252, label %a.rd.ok244, label %a.rd.err.oob246

a.rd.ok244:                                       ; preds = %a.rd.check243
  %a.rd.data253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2240, i32 0, i32 1
  %a.rd.data254 = load ptr, ptr %a.rd.data253, align 8
  %a.rd.elem.gep255 = getelementptr i64, ptr %a.rd.data254, i64 %var.load241
  %a.rd.elem256 = load i64, ptr %a.rd.elem.gep255, align 8
  br label %a.rd.done247

a.rd.err.null245:                                 ; preds = %a.after232
  %arena.cur257 = call ptr @dva_arena_current()
  %err.alloc258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 56)
  %err.code.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 0
  store i64 4011, ptr %err.code.gep259, align 8
  %err.msg.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep260, align 8
  %err.file.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep261, align 8
  %err.line.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 3
  store i64 435, ptr %err.line.gep262, align 8
  %err.col.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 4
  store i64 20, ptr %err.col.gep263, align 8
  %err.ctx.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 5
  %err.ctx0.gep265 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep265, align 8
  %err.ctx1.gep266 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep266, align 8
  %err.p2i267 = ptrtoint ptr %err.alloc258 to i64
  br label %a.rd.done247

a.rd.err.oob246:                                  ; preds = %a.rd.check243
  %arena.cur268 = call ptr @dva_arena_current()
  %err.alloc269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 56)
  %err.code.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 0
  store i64 4011, ptr %err.code.gep270, align 8
  %err.msg.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep271, align 8
  %err.file.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep272, align 8
  %err.line.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 3
  store i64 435, ptr %err.line.gep273, align 8
  %err.col.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 4
  store i64 20, ptr %err.col.gep274, align 8
  %err.ctx.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 5
  %err.ctx0.gep276 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 0
  store i64 %var.load241, ptr %err.ctx0.gep276, align 8
  %err.ctx1.gep277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 1
  store i64 %a.rd.len249, ptr %err.ctx1.gep277, align 8
  %err.p2i278 = ptrtoint ptr %err.alloc269 to i64
  br label %a.rd.done247

a.rd.done247:                                     ; preds = %a.rd.err.oob246, %a.rd.err.null245, %a.rd.ok244
  %a.rd.tag279 = phi i1 [ true, %a.rd.ok244 ], [ false, %a.rd.err.null245 ], [ false, %a.rd.err.oob246 ]
  %a.rd.pay280 = phi i64 [ %a.rd.elem256, %a.rd.ok244 ], [ %err.p2i267, %a.rd.err.null245 ], [ %err.p2i278, %a.rd.err.oob246 ]
  %ram.tag281 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag279, 0
  %ram.pay282 = insertvalue { i1, i64 } %ram.tag281, i64 %a.rd.pay280, 1
  %ram.tag283 = extractvalue { i1, i64 } %ram.pay282, 0
  br i1 %ram.tag283, label %choice.then284, label %choice.else285

choice.then284:                                   ; preds = %a.rd.done247
  %ram.pay287 = extractvalue { i1, i64 } %ram.pay282, 1
  %pay.ptr288 = inttoptr i64 %ram.pay287 to ptr
  store ptr %pay.ptr288, ptr %var._289, align 8
  br label %choice.exit286

choice.else285:                                   ; preds = %a.rd.done247
  %ram.pay290 = extractvalue { i1, i64 } %ram.pay282, 1
  %pay.ptr291 = inttoptr i64 %ram.pay290 to ptr
  store ptr %pay.ptr291, ptr %var._292, align 8
  br label %choice.exit286

choice.exit286:                                   ; preds = %choice.else285, %choice.then284
  %choice.res293 = phi ptr [ %pay.ptr288, %choice.then284 ], [ @str.0.struct, %choice.else285 ]
  store ptr %choice.res293, ptr %var.name, align 8
  %var.load294 = load ptr, ptr %var.b, align 8
  %fld.gep295 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load294, i32 0, i32 1
  %fld.load296 = load ptr, ptr %fld.gep295, align 8
  %var.load297 = load ptr, ptr %var.name, align 8
  %call.res298 = call i1 @"type_env::init_has_name"(ptr %fld.load296, ptr %var.load297)
  br i1 %call.res298, label %choice.then299, label %choice.exit300

choice.then299:                                   ; preds = %choice.exit286
  %var.load301 = load ptr, ptr %var.name, align 8
  %a.load302 = load ptr, ptr %var.wh, align 8
  %a.null303 = icmp eq ptr %a.load302, null
  br i1 %a.null303, label %a.create304, label %a.after305

choice.exit300:                                   ; preds = %a.store316, %choice.exit286
  br label %loop.latch.24

a.create304:                                      ; preds = %choice.then299
  %arena.cur306 = call ptr @dva_arena_current()
  %a.create307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 24)
  %arena.cur308 = call ptr @dva_arena_current()
  %a.buf309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 128)
  %a.len.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 0
  store i64 0, ptr %a.len.gep310, align 8
  %a.data.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 1
  store ptr %a.buf309, ptr %a.data.gep311, align 8
  %a.cap.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 2
  store i64 16, ptr %a.cap.gep312, align 8
  store ptr %a.create307, ptr %var.wh, align 8
  br label %a.after305

a.after305:                                       ; preds = %a.create304, %choice.then299
  %a.load2313 = load ptr, ptr %var.wh, align 8
  br label %a.check314

a.check314:                                       ; preds = %a.after305
  %a.len317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 0
  %a.len318 = load i64, ptr %a.len317, align 8
  %a.cap319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 2
  %a.cap320 = load i64, ptr %a.cap319, align 8
  %a.needs.grow321 = icmp eq i64 %a.len318, %a.cap320
  br i1 %a.needs.grow321, label %a.grow315, label %a.store316

a.grow315:                                        ; preds = %a.check314
  call void @dva_array_grow(ptr %a.load2313)
  br label %a.store316

a.store316:                                       ; preds = %a.grow315, %a.check314
  %a.cur.data322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 1
  %a.cur.data323 = load ptr, ptr %a.cur.data322, align 8
  %a.cur.len324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 0
  %a.cur.len325 = load i64, ptr %a.cur.len324, align 8
  %a.elem.gep326 = getelementptr i64, ptr %a.cur.data323, i64 %a.cur.len325
  %slot.p2i327 = ptrtoint ptr %var.load301 to i64
  store i64 %slot.p2i327, ptr %a.elem.gep326, align 8
  %a.next.len328 = add i64 %a.cur.len325, 1
  %b.len.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 0
  store i64 %a.next.len328, ptr %b.len.gep329, align 8
  br label %choice.exit300

a.create345:                                      ; preds = %loop.exit.24
  %arena.cur347 = call ptr @dva_arena_current()
  %a.create348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 24)
  %arena.cur349 = call ptr @dva_arena_current()
  %a.buf350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 128)
  %a.len.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 0
  store i64 0, ptr %a.len.gep351, align 8
  %a.data.gep352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 1
  store ptr %a.buf350, ptr %a.data.gep352, align 8
  %a.cap.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create348, i32 0, i32 2
  store i64 16, ptr %a.cap.gep353, align 8
  store ptr %a.create348, ptr %var.awr, align 8
  br label %a.after346

a.after346:                                       ; preds = %a.create345, %loop.exit.24
  %a.load2354 = load ptr, ptr %var.awr, align 8
  %a.len.query355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2354, i32 0, i32 0
  %a.len.query356 = load i64, ptr %a.len.query355, align 8
  store i64 0, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.header.25:                                   ; preds = %loop.latch.25, %a.after346
  %counter.load357 = load i64, ptr %loop.idx.25, align 8
  %loop.cond358 = icmp slt i64 %counter.load357, %a.len.query356
  br i1 %loop.cond358, label %loop.body.25, label %loop.exit.nat.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i359 = sub i64 %counter.load357, 0
  store i64 1, ptr %loop.step.25, align 8
  store i64 %loop.rel.i359, ptr %var._i360, align 8
  store i64 %counter.load357, ptr %var._361, align 8
  store i64 %counter.load357, ptr %var.i, align 8
  %var.load362 = load ptr, ptr %var.awr, align 8
  %a.load363 = load ptr, ptr %var.awr, align 8
  %a.null364 = icmp eq ptr %a.load363, null
  br i1 %a.null364, label %a.create365, label %a.after366

loop.exit.nat.25:                                 ; preds = %loop.header.25
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit434
  %step.val464 = load i64, ptr %loop.step.25, align 8
  %loop.next465 = add i64 %counter.load357, %step.val464
  store i64 %loop.next465, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %loop.exit.nat.25
  %var.load466 = load ptr, ptr %var.tr, align 8
  %a.load467 = load ptr, ptr %var.tr, align 8
  %a.null468 = icmp eq ptr %a.load467, null
  br i1 %a.null468, label %a.create469, label %a.after470

a.create365:                                      ; preds = %loop.body.25
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
  store ptr %a.create368, ptr %var.awr, align 8
  br label %a.after366

a.after366:                                       ; preds = %a.create365, %loop.body.25
  %a.load2374 = load ptr, ptr %var.awr, align 8
  %var.load375 = load i64, ptr %var.i, align 8
  %a.rd.nonnull376 = icmp ne ptr %a.load2374, null
  br i1 %a.rd.nonnull376, label %a.rd.check377, label %a.rd.err.null379

a.rd.check377:                                    ; preds = %a.after366
  %a.rd.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  %a.rd.len383 = load i64, ptr %a.rd.len382, align 8
  %a.rd.ge0384 = icmp sge i64 %var.load375, 0
  %a.rd.lt385 = icmp slt i64 %var.load375, %a.rd.len383
  %a.rd.bounds386 = and i1 %a.rd.ge0384, %a.rd.lt385
  br i1 %a.rd.bounds386, label %a.rd.ok378, label %a.rd.err.oob380

a.rd.ok378:                                       ; preds = %a.rd.check377
  %a.rd.data387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 1
  %a.rd.data388 = load ptr, ptr %a.rd.data387, align 8
  %a.rd.elem.gep389 = getelementptr i64, ptr %a.rd.data388, i64 %var.load375
  %a.rd.elem390 = load i64, ptr %a.rd.elem.gep389, align 8
  br label %a.rd.done381

a.rd.err.null379:                                 ; preds = %a.after366
  %arena.cur391 = call ptr @dva_arena_current()
  %err.alloc392 = call ptr @dva_arena_alloc(ptr %arena.cur391, i64 56)
  %err.code.gep393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 0
  store i64 4011, ptr %err.code.gep393, align 8
  %err.msg.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep394, align 8
  %err.file.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep395, align 8
  %err.line.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 3
  store i64 440, ptr %err.line.gep396, align 8
  %err.col.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 4
  store i64 21, ptr %err.col.gep397, align 8
  %err.ctx.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 5
  %err.ctx0.gep399 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep398, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep399, align 8
  %err.ctx1.gep400 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep398, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep400, align 8
  %err.p2i401 = ptrtoint ptr %err.alloc392 to i64
  br label %a.rd.done381

a.rd.err.oob380:                                  ; preds = %a.rd.check377
  %arena.cur402 = call ptr @dva_arena_current()
  %err.alloc403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 56)
  %err.code.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 0
  store i64 4011, ptr %err.code.gep404, align 8
  %err.msg.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep405, align 8
  %err.file.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep406, align 8
  %err.line.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 3
  store i64 440, ptr %err.line.gep407, align 8
  %err.col.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 4
  store i64 21, ptr %err.col.gep408, align 8
  %err.ctx.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 5
  %err.ctx0.gep410 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 0
  store i64 %var.load375, ptr %err.ctx0.gep410, align 8
  %err.ctx1.gep411 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 1
  store i64 %a.rd.len383, ptr %err.ctx1.gep411, align 8
  %err.p2i412 = ptrtoint ptr %err.alloc403 to i64
  br label %a.rd.done381

a.rd.done381:                                     ; preds = %a.rd.err.oob380, %a.rd.err.null379, %a.rd.ok378
  %a.rd.tag413 = phi i1 [ true, %a.rd.ok378 ], [ false, %a.rd.err.null379 ], [ false, %a.rd.err.oob380 ]
  %a.rd.pay414 = phi i64 [ %a.rd.elem390, %a.rd.ok378 ], [ %err.p2i401, %a.rd.err.null379 ], [ %err.p2i412, %a.rd.err.oob380 ]
  %ram.tag415 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag413, 0
  %ram.pay416 = insertvalue { i1, i64 } %ram.tag415, i64 %a.rd.pay414, 1
  %ram.tag417 = extractvalue { i1, i64 } %ram.pay416, 0
  br i1 %ram.tag417, label %choice.then418, label %choice.else419

choice.then418:                                   ; preds = %a.rd.done381
  %ram.pay421 = extractvalue { i1, i64 } %ram.pay416, 1
  %pay.ptr422 = inttoptr i64 %ram.pay421 to ptr
  store ptr %pay.ptr422, ptr %var._423, align 8
  br label %choice.exit420

choice.else419:                                   ; preds = %a.rd.done381
  %ram.pay424 = extractvalue { i1, i64 } %ram.pay416, 1
  %pay.ptr425 = inttoptr i64 %ram.pay424 to ptr
  store ptr %pay.ptr425, ptr %var._426, align 8
  br label %choice.exit420

choice.exit420:                                   ; preds = %choice.else419, %choice.then418
  %choice.res427 = phi ptr [ %pay.ptr422, %choice.then418 ], [ @str.0.struct, %choice.else419 ]
  store ptr %choice.res427, ptr %var.path, align 8
  %var.load428 = load ptr, ptr %var.b, align 8
  %fld.gep429 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load428, i32 0, i32 2
  %fld.load430 = load ptr, ptr %fld.gep429, align 8
  %var.load431 = load ptr, ptr %var.path, align 8
  %call.res432 = call i1 @"type_env::init_has_name"(ptr %fld.load430, ptr %var.load431)
  br i1 %call.res432, label %choice.then433, label %choice.exit434

choice.then433:                                   ; preds = %choice.exit420
  %var.load435 = load ptr, ptr %var.path, align 8
  %a.load436 = load ptr, ptr %var.wr, align 8
  %a.null437 = icmp eq ptr %a.load436, null
  br i1 %a.null437, label %a.create438, label %a.after439

choice.exit434:                                   ; preds = %a.store450, %choice.exit420
  br label %loop.latch.25

a.create438:                                      ; preds = %choice.then433
  %arena.cur440 = call ptr @dva_arena_current()
  %a.create441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 24)
  %arena.cur442 = call ptr @dva_arena_current()
  %a.buf443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 128)
  %a.len.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 0
  store i64 0, ptr %a.len.gep444, align 8
  %a.data.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 1
  store ptr %a.buf443, ptr %a.data.gep445, align 8
  %a.cap.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create441, i32 0, i32 2
  store i64 16, ptr %a.cap.gep446, align 8
  store ptr %a.create441, ptr %var.wr, align 8
  br label %a.after439

a.after439:                                       ; preds = %a.create438, %choice.then433
  %a.load2447 = load ptr, ptr %var.wr, align 8
  br label %a.check448

a.check448:                                       ; preds = %a.after439
  %a.len451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2447, i32 0, i32 0
  %a.len452 = load i64, ptr %a.len451, align 8
  %a.cap453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2447, i32 0, i32 2
  %a.cap454 = load i64, ptr %a.cap453, align 8
  %a.needs.grow455 = icmp eq i64 %a.len452, %a.cap454
  br i1 %a.needs.grow455, label %a.grow449, label %a.store450

a.grow449:                                        ; preds = %a.check448
  call void @dva_array_grow(ptr %a.load2447)
  br label %a.store450

a.store450:                                       ; preds = %a.grow449, %a.check448
  %a.cur.data456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2447, i32 0, i32 1
  %a.cur.data457 = load ptr, ptr %a.cur.data456, align 8
  %a.cur.len458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2447, i32 0, i32 0
  %a.cur.len459 = load i64, ptr %a.cur.len458, align 8
  %a.elem.gep460 = getelementptr i64, ptr %a.cur.data457, i64 %a.cur.len459
  %slot.p2i461 = ptrtoint ptr %var.load435 to i64
  store i64 %slot.p2i461, ptr %a.elem.gep460, align 8
  %a.next.len462 = add i64 %a.cur.len459, 1
  %b.len.gep463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2447, i32 0, i32 0
  store i64 %a.next.len462, ptr %b.len.gep463, align 8
  br label %choice.exit434

a.create469:                                      ; preds = %loop.exit.25
  %arena.cur471 = call ptr @dva_arena_current()
  %a.create472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 24)
  %arena.cur473 = call ptr @dva_arena_current()
  %a.buf474 = call ptr @dva_arena_alloc(ptr %arena.cur473, i64 128)
  %a.len.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 0
  store i64 0, ptr %a.len.gep475, align 8
  %a.data.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 1
  store ptr %a.buf474, ptr %a.data.gep476, align 8
  %a.cap.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 2
  store i64 16, ptr %a.cap.gep477, align 8
  store ptr %a.create472, ptr %var.tr, align 8
  br label %a.after470

a.after470:                                       ; preds = %a.create469, %loop.exit.25
  %a.load2478 = load ptr, ptr %var.tr, align 8
  %var.load479 = load ptr, ptr %var.wh, align 8
  %a.load480 = load ptr, ptr %var.wh, align 8
  %a.null481 = icmp eq ptr %a.load480, null
  br i1 %a.null481, label %a.create482, label %a.after483

a.create482:                                      ; preds = %a.after470
  %arena.cur484 = call ptr @dva_arena_current()
  %a.create485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 24)
  %arena.cur486 = call ptr @dva_arena_current()
  %a.buf487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 128)
  %a.len.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 0
  store i64 0, ptr %a.len.gep488, align 8
  %a.data.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 1
  store ptr %a.buf487, ptr %a.data.gep489, align 8
  %a.cap.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 2
  store i64 16, ptr %a.cap.gep490, align 8
  store ptr %a.create485, ptr %var.wh, align 8
  br label %a.after483

a.after483:                                       ; preds = %a.create482, %a.after470
  %a.load2491 = load ptr, ptr %var.wh, align 8
  %var.load492 = load ptr, ptr %var.wr, align 8
  %a.load493 = load ptr, ptr %var.wr, align 8
  %a.null494 = icmp eq ptr %a.load493, null
  br i1 %a.null494, label %a.create495, label %a.after496

a.create495:                                      ; preds = %a.after483
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
  store ptr %a.create498, ptr %var.wr, align 8
  br label %a.after496

a.after496:                                       ; preds = %a.create495, %a.after483
  %a.load2504 = load ptr, ptr %var.wr, align 8
  %arena.cur505 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2478, ptr %rec.fld, align 8
  %rec.fld506 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2491, ptr %rec.fld506, align 8
  %rec.fld507 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2504, ptr %rec.fld507, align 8
  ret ptr %rec.alloc
}

define i1 @"type_env::init_is_fully_init"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.path = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._49 = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var._12 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
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
  br i1 %nottmp, label %or.26.then, label %or.26.else

or.26.then:                                       ; preds = %entry
  br label %or.26.exit

or.26.else:                                       ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.name, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.26.exit

or.26.exit:                                       ; preds = %or.26.else, %or.26.then
  %or.26.phi = phi i1 [ %nottmp, %or.26.then ], [ %call.res5, %or.26.else ]
  br i1 %or.26.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.26.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.26.exit
  %var.load6 = load ptr, ptr %var.ut, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit7, %choice.then
  %choice.res165 = phi i1 [ true, %choice.then ], [ %choice.res164, %choice.exit7 ]
  ret i1 %choice.res165

choice.exit7:                                     ; preds = %or.28.exit, %loop.exit.27
  %choice.res164 = phi i1 [ %var.load154, %loop.exit.27 ], [ %or.28.phi, %or.28.exit ]
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
  %var.load155 = load ptr, ptr %var.env, align 8
  %var.load156 = load ptr, ptr %var.name, align 8
  %call.res157 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load155, ptr %var.load156)
  br i1 %call.res157, label %or.28.then, label %or.28.else

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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query11 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.27, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  br label %loop.header.27

loop.header.27:                                   ; preds = %loop.latch.27, %a.after
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query11
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._12, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load13 = load ptr, ptr %var.flds, align 8
  %a.load14 = load ptr, ptr %var.flds, align 8
  %a.null15 = icmp eq ptr %a.load14, null
  br i1 %a.null15, label %a.create16, label %a.after17

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit71
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %choice.then152, %loop.exit.nat.27
  store i64 %cycle.prev.u, ptr %var._, align 8
  %var.load154 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

a.create16:                                       ; preds = %loop.body.27
  %arena.cur18 = call ptr @dva_arena_current()
  %a.create19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 24)
  %arena.cur20 = call ptr @dva_arena_current()
  %a.buf21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 128)
  %a.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 0
  store i64 0, ptr %a.len.gep22, align 8
  %a.data.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 1
  store ptr %a.buf21, ptr %a.data.gep23, align 8
  %a.cap.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 2
  store i64 16, ptr %a.cap.gep24, align 8
  store ptr %a.create19, ptr %var.flds, align 8
  br label %a.after17

a.after17:                                        ; preds = %a.create16, %loop.body.27
  %a.load225 = load ptr, ptr %var.flds, align 8
  %var.load26 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load225, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after17
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load225, i32 0, i32 0
  %a.rd.len27 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load26, 0
  %a.rd.lt = icmp slt i64 %var.load26, %a.rd.len27
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load225, i32 0, i32 1
  %a.rd.data28 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data28, i64 %var.load26
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after17
  %arena.cur29 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 453, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 31, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur30 = call ptr @dva_arena_current()
  %err.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 56)
  %err.code.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 0
  store i64 4011, ptr %err.code.gep32, align 8
  %err.msg.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep33, align 8
  %err.file.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep34, align 8
  %err.line.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 3
  store i64 453, ptr %err.line.gep35, align 8
  %err.col.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 4
  store i64 31, ptr %err.col.gep36, align 8
  %err.ctx.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 5
  %err.ctx0.gep38 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep37, i32 0, i32 0
  store i64 %var.load26, ptr %err.ctx0.gep38, align 8
  %err.ctx1.gep39 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep37, i32 0, i32 1
  store i64 %a.rd.len27, ptr %err.ctx1.gep39, align 8
  %err.p2i40 = ptrtoint ptr %err.alloc31 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i40, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag41 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag41, label %choice.then42, label %choice.else43

choice.then42:                                    ; preds = %a.rd.done
  %ram.pay45 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay45 to ptr
  store ptr %pay.ptr, ptr %var._46, align 8
  br label %choice.exit44

choice.else43:                                    ; preds = %a.rd.done
  %ram.pay47 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr48 = inttoptr i64 %ram.pay47 to ptr
  store ptr %pay.ptr48, ptr %var._49, align 8
  %arena.cur50 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %tag.gep51 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep51, align 8
  %pay.gep52 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep52, align 8
  %arena.cur53 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld54 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld54, align 8
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res = phi ptr [ %pay.ptr, %choice.then42 ], [ %rec.alloc, %choice.else43 ]
  store ptr %choice.res, ptr %var.f, align 8
  %var.load55 = load ptr, ptr %var.f, align 8
  %fld.gep56 = getelementptr inbounds { ptr, ptr }, ptr %var.load55, i32 0, i32 0
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 0
  %eq.lhs.len58 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len59 = and i64 %eq.lhs.len58, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len58, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit44
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit44
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len, 281474976710655
  %str.tag62 = lshr i64 %eq.rhs.len, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check64:                                  ; preds = %str_ok
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len59, %eq.rhs.len61
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale66:                                      ; preds = %str_gen_check64
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str.eq.then:                                      ; preds = %str_ok65
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 1
  %eq.lhs.data69 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data69, ptr %eq.rhs.data, i64 %eq.lhs.len59)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok65
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then70, label %choice.exit71

choice.then70:                                    ; preds = %str.eq.merge
  %var.load72 = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %concat.lhs73 = load i64, ptr %concat.lhs, align 8
  %concat.lhs74 = and i64 %concat.lhs73, 281474976710655
  %str.tag75 = lshr i64 %concat.lhs73, 48
  %str.immortal76 = icmp eq i64 %str.tag75, 0
  br i1 %str.immortal76, label %str_ok78, label %str_gen_check77

choice.exit71:                                    ; preds = %choice.exit153, %str.eq.merge
  br label %loop.latch.27

str_gen_check77:                                  ; preds = %choice.then70
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag75)
  br i1 %tag.valid81, label %str_ok78, label %str_stale79

str_ok78:                                         ; preds = %str_stale79, %str_gen_check77, %choice.then70
  %concat.lhs82 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %concat.lhs83 = load ptr, ptr %concat.lhs82, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs84 = and i64 %concat.rhs, 281474976710655
  %str.tag85 = lshr i64 %concat.rhs, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_stale79:                                      ; preds = %str_gen_check77
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok78

str_gen_check87:                                  ; preds = %str_ok78
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %str_ok78
  %concat.rhs92 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs74, i64 %concat.rhs84)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len93

str_stale89:                                      ; preds = %str_gen_check87
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

concat.sum.len93:                                 ; preds = %str_overflow_abort, %str_ok88
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum94 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf95 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf95, label %str_overflow_abort97, label %concat.tot.len96

str_overflow_abort:                               ; preds = %str_ok88
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len93

concat.tot.len96:                                 ; preds = %str_overflow_abort97, %concat.sum.len93
  %arena.cur98 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 %sum94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs83, i64 %concat.lhs74, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs92, i64 %concat.rhs84, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur99 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load100 = load ptr, ptr %var.f, align 8
  %fld.gep101 = getelementptr inbounds { ptr, ptr }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %concat.lhs103 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs104 = load i64, ptr %concat.lhs103, align 8
  %concat.lhs105 = and i64 %concat.lhs104, 281474976710655
  %str.tag106 = lshr i64 %concat.lhs104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_overflow_abort97:                             ; preds = %concat.sum.len93
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len96

str_gen_check108:                                 ; preds = %concat.tot.len96
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %concat.tot.len96
  %concat.lhs113 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs114 = load ptr, ptr %concat.lhs113, align 8
  %concat.rhs115 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 0
  %concat.rhs116 = load i64, ptr %concat.rhs115, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale110:                                     ; preds = %str_gen_check108
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

str_gen_check120:                                 ; preds = %str_ok109
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok109
  %concat.rhs125 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 1
  %concat.rhs126 = load ptr, ptr %concat.rhs125, align 8
  %concat.sum.len127 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs105, i64 %concat.rhs117)
  %sum128 = extractvalue { i64, i1 } %concat.sum.len127, 0
  %ovf129 = extractvalue { i64, i1 } %concat.sum.len127, 1
  br i1 %ovf129, label %str_overflow_abort131, label %concat.sum.len130

str_stale122:                                     ; preds = %str_gen_check120
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len130:                                ; preds = %str_overflow_abort131, %str_ok121
  %concat.tot.len132 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum128, i64 1)
  %sum133 = extractvalue { i64, i1 } %concat.tot.len132, 0
  %ovf134 = extractvalue { i64, i1 } %concat.tot.len132, 1
  br i1 %ovf134, label %str_overflow_abort136, label %concat.tot.len135

str_overflow_abort131:                            ; preds = %str_ok121
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len130

concat.tot.len135:                                ; preds = %str_overflow_abort136, %concat.sum.len130
  %arena.cur137 = call ptr @dva_arena_current()
  %concat.buf138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 %sum133)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf138, ptr align 1 %concat.lhs114, i64 %concat.lhs105, i1 false)
  %concat.mid139 = getelementptr i8, ptr %concat.buf138, i64 %concat.lhs105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid139, ptr align 1 %concat.rhs126, i64 %concat.rhs117, i1 false)
  %concat.nul140 = getelementptr i8, ptr %concat.buf138, i64 %sum128
  store i8 0, ptr %concat.nul140, align 1
  %arena.cur141 = call ptr @dva_arena_current()
  %concat.str142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 16)
  %str.build.len.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str142, i32 0, i32 0
  store i64 %sum128, ptr %str.build.len.gep143, align 8
  %str.build.data.gep144 = getelementptr inbounds { i64, ptr }, ptr %concat.str142, i32 0, i32 1
  store ptr %concat.buf138, ptr %str.build.data.gep144, align 8
  store ptr %concat.str142, ptr %var.path, align 8
  %var.load145 = load ptr, ptr %var.env, align 8
  %fld.gep146 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load145, i32 0, i32 4
  %fld.gep147 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep146, i32 0, i32 2
  %fld.load148 = load ptr, ptr %fld.gep147, align 8
  %var.load149 = load ptr, ptr %var.path, align 8
  %call.res150 = call i1 @"type_env::init_has_name"(ptr %fld.load148, ptr %var.load149)
  %nottmp151 = xor i1 %call.res150, true
  br i1 %nottmp151, label %choice.then152, label %choice.exit153

str_overflow_abort136:                            ; preds = %concat.sum.len130
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len135

choice.then152:                                   ; preds = %concat.tot.len135
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.27

choice.exit153:                                   ; preds = %concat.tot.len135
  br label %choice.exit71

or.28.then:                                       ; preds = %choice.next
  br label %or.28.exit

or.28.else:                                       ; preds = %choice.next
  %var.load158 = load ptr, ptr %var.env, align 8
  %fld.gep159 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load158, i32 0, i32 4
  %fld.gep160 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep159, i32 0, i32 2
  %fld.load161 = load ptr, ptr %fld.gep160, align 8
  %var.load162 = load ptr, ptr %var.name, align 8
  %call.res163 = call i1 @"type_env::init_has_name"(ptr %fld.load161, ptr %var.load162)
  br label %or.28.exit

or.28.exit:                                       ; preds = %or.28.else, %or.28.then
  %or.28.phi = phi i1 [ %call.res157, %or.28.then ], [ %call.res163, %or.28.else ]
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
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
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load11, i32 0, i32 5
  store ptr %a.load224, ptr %fld.gep25, align 8
  ret void
}

define ptr @"type_env::lookup_generic_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.g = alloca ptr, align 8
  %var._32 = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  store ptr %ram.alloc, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.header.29:                                   ; preds = %loop.latch.29, %entry
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 5
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load9, i32 0, i32 5
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit61
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %choice.then60, %loop.exit.nat.29
  %var.load69 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load69

a.rd.check:                                       ; preds = %loop.body.29
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

a.rd.err.null:                                    ; preds = %loop.body.29
  %arena.cur15 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
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
  %arena.cur16 = call ptr @dva_arena_current()
  %err.alloc17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 56)
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 0
  store i64 4011, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 3
  store i64 0, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 4
  store i64 0, ptr %err.col.gep22, align 8
  %err.ctx.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 5
  %err.ctx0.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 0
  store i64 %var.load12, ptr %err.ctx0.gep24, align 8
  %err.ctx1.gep25 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep25, align 8
  %err.p2i26 = ptrtoint ptr %err.alloc17 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i26, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag27 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag27, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay28 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay28 to ptr
  store ptr %pay.ptr, ptr %var._29, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay30 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr31 = inttoptr i64 %ram.pay30 to ptr
  store ptr %pay.ptr31, ptr %var._32, align 8
  %arena.cur33 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep34, align 8
  %pay.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur36 = call ptr @dva_arena_current()
  %enum.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 16)
  %tag.gep38 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc37, i32 0, i32 0
  store i64 0, ptr %tag.gep38, align 8
  %pay.gep39 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc37, i32 0, i32 1
  store ptr null, ptr %pay.gep39, align 8
  store ptr %enum.alloc37, ptr %pay.gep35, align 8
  %arena.cur40 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld41, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.g, align 8
  %var.load42 = load ptr, ptr %var.g, align 8
  %fld.gep43 = getelementptr inbounds { ptr, ptr }, ptr %var.load42, i32 0, i32 0
  %fld.load44 = load ptr, ptr %fld.gep43, align 8
  %var.load45 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 0
  %eq.lhs.len46 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len47 = and i64 %eq.lhs.len46, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len46, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %eq.rhs.len49 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len50 = and i64 %eq.rhs.len49, 281474976710655
  %str.tag51 = lshr i64 %eq.rhs.len49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check53:                                  ; preds = %str_ok
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len47, %eq.rhs.len50
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale55:                                      ; preds = %str_gen_check53
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

str.eq.then:                                      ; preds = %str_ok54
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %eq.rhs.data59 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data59, i64 %eq.lhs.len47)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok54
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then60, label %choice.exit61

choice.then60:                                    ; preds = %str.eq.merge
  %arena.cur62 = call ptr @dva_arena_current()
  %ram.alloc63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc63, i32 0, i32 0
  store i64 1, ptr %tag.gep64, align 8
  %pay.gep65 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc63, i32 0, i32 1
  %var.load66 = load ptr, ptr %var.g, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr }, ptr %var.load66, i32 0, i32 1
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  store ptr %fld.load68, ptr %pay.gep65, align 8
  store ptr %ram.alloc63, ptr %"var.res'", align 8
  br label %loop.exit.29

choice.exit61:                                    ; preds = %str.eq.merge
  br label %loop.latch.29
}

define ptr @"type_env::lookup_generic"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._110 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_generic_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.ti, align 8
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  %var.load5 = load ptr, ptr %var.ti, align 8
  store ptr %var.load5, ptr %pay.gep4, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit23, %choice.then
  %choice.res209 = phi ptr [ %ram.alloc, %choice.then ], [ %choice.res208, %choice.exit23 ]
  ret ptr %choice.res209

str_gen_check:                                    ; preds = %choice.else
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check13:                                  ; preds = %str_ok
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale15:                                      ; preds = %str_gen_check13
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str.eq.then:                                      ; preds = %str_ok14
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok14
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.name, align 8
  %call.res20 = call i1 @"type_env::name_is_qualified"(ptr %var.load19, i64 0)
  %nottmp = xor i1 %call.res20, true
  br label %and.30.exit

and.30.else:                                      ; preds = %str.eq.merge
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %nottmp, %and.30.then ], [ %str.neq, %and.30.else ]
  br i1 %and.30.phi, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %and.30.exit
  %var.load24 = load ptr, ptr %var.env, align 8
  %var.load25 = load ptr, ptr %var.env, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load25, i32 0, i32 8
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %str.tag30 = lshr i64 %concat.lhs28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.else22:                                    ; preds = %and.30.exit
  %arena.cur204 = call ptr @dva_arena_current()
  %ram.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 16)
  %tag.gep206 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc205, i32 0, i32 0
  store i64 0, ptr %tag.gep206, align 8
  %pay.gep207 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc205, i32 0, i32 1
  store ptr null, ptr %pay.gep207, align 8
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.exit109
  %choice.res208 = phi ptr [ %choice.res, %choice.exit109 ], [ %ram.alloc205, %choice.else22 ]
  br label %choice.exit

str_gen_check32:                                  ; preds = %choice.then21
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.then21
  %concat.lhs37 = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 1
  %concat.lhs38 = load ptr, ptr %concat.lhs37, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check42:                                  ; preds = %str_ok33
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok33
  %concat.rhs47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs39)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len48

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len48:                                 ; preds = %str_overflow_abort, %str_ok43
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort:                               ; preds = %str_ok43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len48

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len48
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs38, i64 %concat.lhs29, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs47, i64 %concat.rhs39, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur54 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load55 = load ptr, ptr %var.name, align 8
  %concat.lhs56 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs57 = load i64, ptr %concat.lhs56, align 8
  %concat.lhs58 = and i64 %concat.lhs57, 281474976710655
  %str.tag59 = lshr i64 %concat.lhs57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

str_overflow_abort52:                             ; preds = %concat.sum.len48
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check61:                                  ; preds = %concat.tot.len51
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %concat.tot.len51
  %concat.lhs66 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs67 = load ptr, ptr %concat.lhs66, align 8
  %concat.rhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 0
  %concat.rhs69 = load i64, ptr %concat.rhs68, align 8
  %concat.rhs70 = and i64 %concat.rhs69, 281474976710655
  %str.tag71 = lshr i64 %concat.rhs69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

str_stale63:                                      ; preds = %str_gen_check61
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check73:                                  ; preds = %str_ok62
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %str_ok62
  %concat.rhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 1
  %concat.rhs79 = load ptr, ptr %concat.rhs78, align 8
  %concat.sum.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs58, i64 %concat.rhs70)
  %sum81 = extractvalue { i64, i1 } %concat.sum.len80, 0
  %ovf82 = extractvalue { i64, i1 } %concat.sum.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %concat.sum.len83

str_stale75:                                      ; preds = %str_gen_check73
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

concat.sum.len83:                                 ; preds = %str_overflow_abort84, %str_ok74
  %concat.tot.len85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum81, i64 1)
  %sum86 = extractvalue { i64, i1 } %concat.tot.len85, 0
  %ovf87 = extractvalue { i64, i1 } %concat.tot.len85, 1
  br i1 %ovf87, label %str_overflow_abort89, label %concat.tot.len88

str_overflow_abort84:                             ; preds = %str_ok74
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len83

concat.tot.len88:                                 ; preds = %str_overflow_abort89, %concat.sum.len83
  %arena.cur90 = call ptr @dva_arena_current()
  %concat.buf91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum86)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf91, ptr align 1 %concat.lhs67, i64 %concat.lhs58, i1 false)
  %concat.mid92 = getelementptr i8, ptr %concat.buf91, i64 %concat.lhs58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid92, ptr align 1 %concat.rhs79, i64 %concat.rhs70, i1 false)
  %concat.nul93 = getelementptr i8, ptr %concat.buf91, i64 %sum81
  store i8 0, ptr %concat.nul93, align 1
  %arena.cur94 = call ptr @dva_arena_current()
  %concat.str95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 0
  store i64 %sum81, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 1
  store ptr %concat.buf91, ptr %str.build.data.gep97, align 8
  %call.res98 = call ptr @"type_env::lookup_generic_exact"(ptr %var.load24, ptr %concat.str95)
  store ptr %call.res98, ptr %var.pub, align 8
  %var.load99 = load ptr, ptr %var.pub, align 8
  %tag.gep100 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 0
  %tag.id101 = load i64, ptr %tag.gep100, align 8
  %tag.eq.one102 = icmp eq i64 %tag.id101, 1
  %tag.eq.two103 = icmp eq i64 %tag.id101, 2
  %is.pos104 = or i1 %tag.eq.one102, %tag.eq.two103
  %pay.gep105 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 1
  %payload.ptr106 = load ptr, ptr %pay.gep105, align 8
  br i1 %is.pos104, label %choice.then107, label %choice.else108

str_overflow_abort89:                             ; preds = %concat.sum.len83
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len88

choice.then107:                                   ; preds = %concat.tot.len88
  store ptr %payload.ptr106, ptr %var._110, align 8
  store ptr %payload.ptr106, ptr %var.p, align 8
  %arena.cur111 = call ptr @dva_arena_current()
  %ram.alloc112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %tag.gep113 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc112, i32 0, i32 0
  store i64 1, ptr %tag.gep113, align 8
  %pay.gep114 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc112, i32 0, i32 1
  %var.load115 = load ptr, ptr %var.p, align 8
  store ptr %var.load115, ptr %pay.gep114, align 8
  br label %choice.exit109

choice.else108:                                   ; preds = %concat.tot.len88
  %var.load116 = load ptr, ptr %var.env, align 8
  %var.load117 = load ptr, ptr %var.env, align 8
  %fld.gep118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load117, i32 0, i32 8
  %fld.load119 = load ptr, ptr %fld.gep118, align 8
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %fld.load119, i32 0, i32 0
  %concat.lhs121 = load i64, ptr %concat.lhs120, align 8
  %concat.lhs122 = and i64 %concat.lhs121, 281474976710655
  %str.tag123 = lshr i64 %concat.lhs121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

choice.exit109:                                   ; preds = %concat.tot.len193, %choice.then107
  %choice.res = phi ptr [ %ram.alloc112, %choice.then107 ], [ %call.res203, %concat.tot.len193 ]
  br label %choice.exit23

str_gen_check125:                                 ; preds = %choice.else108
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %choice.else108
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %fld.load119, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.7.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale127:                                     ; preds = %str_gen_check125
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check136:                                 ; preds = %str_ok126
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok126
  %concat.rhs141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs122, i64 %concat.rhs133)
  %sum143 = extractvalue { i64, i1 } %concat.sum.len142, 0
  %ovf144 = extractvalue { i64, i1 } %concat.sum.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %concat.sum.len145

str_stale138:                                     ; preds = %str_gen_check136
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len145:                                ; preds = %str_overflow_abort146, %str_ok137
  %concat.tot.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum143, i64 1)
  %sum148 = extractvalue { i64, i1 } %concat.tot.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.tot.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.tot.len150

str_overflow_abort146:                            ; preds = %str_ok137
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len145

concat.tot.len150:                                ; preds = %str_overflow_abort151, %concat.sum.len145
  %arena.cur152 = call ptr @dva_arena_current()
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf153, ptr align 1 %concat.lhs131, i64 %concat.lhs122, i1 false)
  %concat.mid154 = getelementptr i8, ptr %concat.buf153, i64 %concat.lhs122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid154, ptr align 1 %concat.rhs141, i64 %concat.rhs133, i1 false)
  %concat.nul155 = getelementptr i8, ptr %concat.buf153, i64 %sum143
  store i8 0, ptr %concat.nul155, align 1
  %arena.cur156 = call ptr @dva_arena_current()
  %concat.str157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 16)
  %str.build.len.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 0
  store i64 %sum143, ptr %str.build.len.gep158, align 8
  %str.build.data.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep159, align 8
  %var.load160 = load ptr, ptr %var.name, align 8
  %concat.lhs161 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 0
  %concat.lhs162 = load i64, ptr %concat.lhs161, align 8
  %concat.lhs163 = and i64 %concat.lhs162, 281474976710655
  %str.tag164 = lshr i64 %concat.lhs162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_overflow_abort151:                            ; preds = %concat.sum.len145
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len150

str_gen_check166:                                 ; preds = %concat.tot.len150
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %concat.tot.len150
  %concat.lhs171 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 1
  %concat.lhs172 = load ptr, ptr %concat.lhs171, align 8
  %concat.rhs173 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %concat.rhs174 = load i64, ptr %concat.rhs173, align 8
  %concat.rhs175 = and i64 %concat.rhs174, 281474976710655
  %str.tag176 = lshr i64 %concat.rhs174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

str_stale168:                                     ; preds = %str_gen_check166
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str_gen_check178:                                 ; preds = %str_ok167
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %str_ok167
  %concat.rhs183 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 1
  %concat.rhs184 = load ptr, ptr %concat.rhs183, align 8
  %concat.sum.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs163, i64 %concat.rhs175)
  %sum186 = extractvalue { i64, i1 } %concat.sum.len185, 0
  %ovf187 = extractvalue { i64, i1 } %concat.sum.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %concat.sum.len188

str_stale180:                                     ; preds = %str_gen_check178
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

concat.sum.len188:                                ; preds = %str_overflow_abort189, %str_ok179
  %concat.tot.len190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum186, i64 1)
  %sum191 = extractvalue { i64, i1 } %concat.tot.len190, 0
  %ovf192 = extractvalue { i64, i1 } %concat.tot.len190, 1
  br i1 %ovf192, label %str_overflow_abort194, label %concat.tot.len193

str_overflow_abort189:                            ; preds = %str_ok179
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len188

concat.tot.len193:                                ; preds = %str_overflow_abort194, %concat.sum.len188
  %arena.cur195 = call ptr @dva_arena_current()
  %concat.buf196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 %sum191)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf196, ptr align 1 %concat.lhs172, i64 %concat.lhs163, i1 false)
  %concat.mid197 = getelementptr i8, ptr %concat.buf196, i64 %concat.lhs163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid197, ptr align 1 %concat.rhs184, i64 %concat.rhs175, i1 false)
  %concat.nul198 = getelementptr i8, ptr %concat.buf196, i64 %sum186
  store i8 0, ptr %concat.nul198, align 1
  %arena.cur199 = call ptr @dva_arena_current()
  %concat.str200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 16)
  %str.build.len.gep201 = getelementptr inbounds { i64, ptr }, ptr %concat.str200, i32 0, i32 0
  store i64 %sum186, ptr %str.build.len.gep201, align 8
  %str.build.data.gep202 = getelementptr inbounds { i64, ptr }, ptr %concat.str200, i32 0, i32 1
  store ptr %concat.buf196, ptr %str.build.data.gep202, align 8
  %call.res203 = call ptr @"type_env::lookup_generic_exact"(ptr %var.load116, ptr %concat.str200)
  br label %choice.exit109

str_overflow_abort194:                            ; preds = %concat.sum.len188
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len193
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 6
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
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load13, i32 0, i32 6
  store ptr %a.load226, ptr %fld.gep27, align 8
  ret void
}

define ptr @"type_env::lookup_user_type_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.u = alloca ptr, align 8
  %var._31 = alloca ptr, align 8
  %var._28 = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.31 = alloca i64, align 8
  %loop.idx.31 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %entry
  %counter.load = load i64, ptr %loop.idx.31, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.31, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load9, i32 0, i32 6
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit63
  %step.val = load i64, ptr %loop.step.31, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %choice.then62, %loop.exit.nat.31
  %var.load65 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load65

a.rd.check:                                       ; preds = %loop.body.31
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

a.rd.err.null:                                    ; preds = %loop.body.31
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
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
  store ptr @str.5.struct, ptr %err.msg.gep18, align 8
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
  %ram.tag26 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag26, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr, ptr %var._28, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay29 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr30 = inttoptr i64 %ram.pay29 to ptr
  store ptr %pay.ptr30, ptr %var._31, align 8
  %arena.cur32 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur33 = call ptr @dva_arena_current()
  %enum.alloc34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %tag.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 0
  store i64 0, ptr %tag.gep35, align 8
  %pay.gep36 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 1
  store ptr null, ptr %pay.gep36, align 8
  store ptr %enum.alloc34, ptr %pay.gep, align 8
  %arena.cur37 = call ptr @dva_arena_current()
  %enum.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %tag.gep39 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc38, i32 0, i32 0
  store i64 9, ptr %tag.gep39, align 8
  %pay.gep40 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc38, i32 0, i32 1
  store ptr null, ptr %pay.gep40, align 8
  %arena.cur41 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc38, ptr %rec.fld43, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.u, align 8
  %var.load44 = load ptr, ptr %var.u, align 8
  %fld.gep45 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load44, i32 0, i32 0
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %var.load47 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 0
  %eq.lhs.len48 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len49 = and i64 %eq.lhs.len48, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len48, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %eq.rhs.len51 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.rhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check55:                                  ; preds = %str_ok
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len49, %eq.rhs.len52
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale57:                                      ; preds = %str_gen_check55
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str.eq.then:                                      ; preds = %str_ok56
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 1
  %eq.lhs.data60 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %eq.rhs.data61 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data60, ptr %eq.rhs.data61, i64 %eq.lhs.len49)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok56
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then62, label %choice.exit63

choice.then62:                                    ; preds = %str.eq.merge
  %var.load64 = load ptr, ptr %var.u, align 8
  store ptr %var.load64, ptr %"var.res'", align 8
  br label %loop.exit.31

choice.exit63:                                    ; preds = %str.eq.merge
  br label %loop.latch.31
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.u, align 8
  %var.load3 = load ptr, ptr %var.u, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit20, %choice.then
  %choice.res192 = phi ptr [ %var.load3, %choice.then ], [ %choice.res191, %choice.exit20 ]
  ret ptr %choice.res192

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.name, align 8
  %call.res17 = call i1 @"type_env::name_is_qualified"(ptr %var.load16, i64 0)
  %nottmp = xor i1 %call.res17, true
  br label %and.32.exit

and.32.else:                                      ; preds = %str.eq.merge
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %and.32.then
  %and.32.phi = phi i1 [ %nottmp, %and.32.then ], [ %str.neq, %and.32.else ]
  br i1 %and.32.phi, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %and.32.exit
  %var.load21 = load ptr, ptr %var.env, align 8
  %var.load22 = load ptr, ptr %var.env, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load22, i32 0, i32 8
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else19:                                    ; preds = %and.32.exit
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.exit100
  %choice.res191 = phi ptr [ %choice.res, %choice.exit100 ], [ null, %choice.else19 ]
  br label %choice.exit

str_gen_check29:                                  ; preds = %choice.then18
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then18
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check39:                                  ; preds = %str_ok30
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok30
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs36)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len45

str_stale41:                                      ; preds = %str_gen_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len45:                                 ; preds = %str_overflow_abort, %str_ok40
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort:                               ; preds = %str_ok40
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len45

concat.tot.len48:                                 ; preds = %str_overflow_abort49, %concat.sum.len45
  %arena.cur50 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load52 = load ptr, ptr %var.name, align 8
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs54 = load i64, ptr %concat.lhs53, align 8
  %concat.lhs55 = and i64 %concat.lhs54, 281474976710655
  %str.tag56 = lshr i64 %concat.lhs54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_overflow_abort49:                             ; preds = %concat.sum.len45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len48

str_gen_check58:                                  ; preds = %concat.tot.len48
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %concat.tot.len48
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs64 = load ptr, ptr %concat.lhs63, align 8
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs65, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale60:                                      ; preds = %str_gen_check58
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check70:                                  ; preds = %str_ok59
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok59
  %concat.rhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %concat.rhs76 = load ptr, ptr %concat.rhs75, align 8
  %concat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs55, i64 %concat.rhs67)
  %sum78 = extractvalue { i64, i1 } %concat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %concat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %concat.sum.len80

str_stale72:                                      ; preds = %str_gen_check70
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

concat.sum.len80:                                 ; preds = %str_overflow_abort81, %str_ok71
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %str_ok71
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len80

concat.tot.len85:                                 ; preds = %str_overflow_abort86, %concat.sum.len80
  %arena.cur87 = call ptr @dva_arena_current()
  %concat.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf88, ptr align 1 %concat.lhs64, i64 %concat.lhs55, i1 false)
  %concat.mid89 = getelementptr i8, ptr %concat.buf88, i64 %concat.lhs55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid89, ptr align 1 %concat.rhs76, i64 %concat.rhs67, i1 false)
  %concat.nul90 = getelementptr i8, ptr %concat.buf88, i64 %sum78
  store i8 0, ptr %concat.nul90, align 1
  %arena.cur91 = call ptr @dva_arena_current()
  %concat.str92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep93 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 0
  store i64 %sum78, ptr %str.build.len.gep93, align 8
  %str.build.data.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 1
  store ptr %concat.buf88, ptr %str.build.data.gep94, align 8
  %call.res95 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load21, ptr %concat.str92)
  store ptr %call.res95, ptr %var.pub, align 8
  %var.load96 = load ptr, ptr %var.pub, align 8
  %niche.ne.null97 = icmp ne ptr %var.load96, null
  br i1 %niche.ne.null97, label %choice.then98, label %choice.else99

str_overflow_abort86:                             ; preds = %concat.sum.len80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len85

choice.then98:                                    ; preds = %concat.tot.len85
  store ptr %var.load96, ptr %var._101, align 8
  store ptr %var.load96, ptr %var.p, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  br label %choice.exit100

choice.else99:                                    ; preds = %concat.tot.len85
  %var.load103 = load ptr, ptr %var.env, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load104, i32 0, i32 8
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %concat.lhs107 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %concat.lhs108 = load i64, ptr %concat.lhs107, align 8
  %concat.lhs109 = and i64 %concat.lhs108, 281474976710655
  %str.tag110 = lshr i64 %concat.lhs108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit100:                                   ; preds = %concat.tot.len180, %choice.then98
  %choice.res = phi ptr [ %var.load102, %choice.then98 ], [ %call.res190, %concat.tot.len180 ]
  br label %choice.exit20

str_gen_check112:                                 ; preds = %choice.else99
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag110)
  br i1 %tag.valid116, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else99
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %concat.lhs118 = load ptr, ptr %concat.lhs117, align 8
  %concat.rhs119 = load i64, ptr @str.7.struct, align 8
  %concat.rhs120 = and i64 %concat.rhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.rhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_stale114:                                     ; preds = %str_gen_check112
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check123:                                 ; preds = %str_ok113
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %str_ok113
  %concat.rhs128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs109, i64 %concat.rhs120)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

str_stale125:                                     ; preds = %str_gen_check123
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

concat.sum.len132:                                ; preds = %str_overflow_abort133, %str_ok124
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %str_ok124
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len132

concat.tot.len137:                                ; preds = %str_overflow_abort138, %concat.sum.len132
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf140, ptr align 1 %concat.lhs118, i64 %concat.lhs109, i1 false)
  %concat.mid141 = getelementptr i8, ptr %concat.buf140, i64 %concat.lhs109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid141, ptr align 1 %concat.rhs128, i64 %concat.rhs120, i1 false)
  %concat.nul142 = getelementptr i8, ptr %concat.buf140, i64 %sum130
  store i8 0, ptr %concat.nul142, align 1
  %arena.cur143 = call ptr @dva_arena_current()
  %concat.str144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  store ptr %concat.buf140, ptr %str.build.data.gep146, align 8
  %var.load147 = load ptr, ptr %var.name, align 8
  %concat.lhs148 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  %concat.lhs149 = load i64, ptr %concat.lhs148, align 8
  %concat.lhs150 = and i64 %concat.lhs149, 281474976710655
  %str.tag151 = lshr i64 %concat.lhs149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_overflow_abort138:                            ; preds = %concat.sum.len132
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len137

str_gen_check153:                                 ; preds = %concat.tot.len137
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %concat.tot.len137
  %concat.lhs158 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  %concat.lhs159 = load ptr, ptr %concat.lhs158, align 8
  %concat.rhs160 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %concat.rhs161 = load i64, ptr %concat.rhs160, align 8
  %concat.rhs162 = and i64 %concat.rhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.rhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale155:                                     ; preds = %str_gen_check153
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check165:                                 ; preds = %str_ok154
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok154
  %concat.rhs170 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %concat.rhs171 = load ptr, ptr %concat.rhs170, align 8
  %concat.sum.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs150, i64 %concat.rhs162)
  %sum173 = extractvalue { i64, i1 } %concat.sum.len172, 0
  %ovf174 = extractvalue { i64, i1 } %concat.sum.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.sum.len175

str_stale167:                                     ; preds = %str_gen_check165
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

concat.sum.len175:                                ; preds = %str_overflow_abort176, %str_ok166
  %concat.tot.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum173, i64 1)
  %sum178 = extractvalue { i64, i1 } %concat.tot.len177, 0
  %ovf179 = extractvalue { i64, i1 } %concat.tot.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %concat.tot.len180

str_overflow_abort176:                            ; preds = %str_ok166
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len175

concat.tot.len180:                                ; preds = %str_overflow_abort181, %concat.sum.len175
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum178)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf183, ptr align 1 %concat.lhs159, i64 %concat.lhs150, i1 false)
  %concat.mid184 = getelementptr i8, ptr %concat.buf183, i64 %concat.lhs150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid184, ptr align 1 %concat.rhs171, i64 %concat.rhs162, i1 false)
  %concat.nul185 = getelementptr i8, ptr %concat.buf183, i64 %sum173
  store i8 0, ptr %concat.nul185, align 1
  %arena.cur186 = call ptr @dva_arena_current()
  %concat.str187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 0
  store i64 %sum173, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 1
  store ptr %concat.buf183, ptr %str.build.data.gep189, align 8
  %call.res190 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load103, ptr %concat.str187)
  br label %choice.exit100

str_overflow_abort181:                            ; preds = %concat.sum.len175
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len180
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
