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
@"var.ast::cell_var_names" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"type_env::new_init", ptr null }
@"var.type_env::new_init" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@str.1 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.1 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"type_env::new_env", ptr null }
@"var.type_env::new_env" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"type_env::cache_fn_body", ptr null }
@"var.type_env::cache_fn_body" = global ptr null
@str.2 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.2 }
@str.3 = internal unnamed_addr constant [13 x i8] c"type_env.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.3 = internal constant { ptr, ptr } { ptr @"type_env::lookup_fn_body", ptr null }
@"var.type_env::lookup_fn_body" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"type_env::mark_generic_binding", ptr null }
@"var.type_env::mark_generic_binding" = global ptr null
@str.4 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.4 }
@str.5 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.5 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"type_env::is_generic_binding", ptr null }
@"var.type_env::is_generic_binding" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"type_env::mark_global_var", ptr null }
@"var.type_env::mark_global_var" = global ptr null
@str.6 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"type_env::is_marked_global", ptr null }
@"var.type_env::is_marked_global" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"type_env::enter_scope", ptr null }
@"var.type_env::enter_scope" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"type_env::leave_scope", ptr null }
@"var.type_env::leave_scope" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"type_env::bind_local", ptr null }
@"var.type_env::bind_local" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"type_env::bind_global", ptr null }
@"var.type_env::bind_global" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.12 = internal constant { ptr, ptr } { ptr @"type_env::name_is_qualified", ptr null }
@"var.type_env::name_is_qualified" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"type_env::decl_module", ptr null }
@"var.type_env::decl_module" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"type_env::set_current_module", ptr null }
@"var.type_env::set_current_module" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"type_env::lookup_scope", ptr null }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local_exact", ptr null }
@"var.type_env::lookup_local_exact" = global ptr null
@"var.type_env::lookup_scope" = global ptr null
@str.7 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local", ptr null }
@"var.type_env::lookup_local" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding_exact", ptr null }
@"var.type_env::lookup_binding_exact" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding", ptr null }
@"var.type_env::lookup_binding" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"type_env::find_last_dot", ptr null }
@"var.type_env::find_last_dot" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.21 = internal constant { ptr, ptr } { ptr @"type_env::drop_last_dot", ptr null }
@"var.type_env::drop_last_dot" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"type_env::init_has_name", ptr null }
@"var.type_env::init_has_name" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_tracked", ptr null }
@"var.type_env::init_mark_tracked" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"type_env::init_is_tracked", ptr null }
@"var.type_env::init_is_tracked" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_whole", ptr null }
@"var.type_env::init_mark_whole" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"type_env::init_is_whole", ptr null }
@"var.type_env::init_is_whole" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_written", ptr null }
@"var.type_env::init_mark_written" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok_walk", ptr null }
@"var.type_env::init_is_ok_walk" = global ptr null
@str.8 = internal unnamed_addr constant [2 x i8] c".\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"type_env::init_has_subpath", ptr null }
@"var.type_env::init_has_subpath" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok", ptr null }
@"var.type_env::init_is_ok" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot", ptr null }
@"var.type_env::init_snapshot" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot_of", ptr null }
@"var.type_env::init_snapshot_of" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"type_env::init_restore", ptr null }
@"var.type_env::init_restore" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"type_env::init_merge_two", ptr null }
@"var.type_env::init_merge_two" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"type_env::init_is_fully_init", ptr null }
@"var.type_env::init_is_fully_init" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"type_env::bind_generic", ptr null }
@"var.type_env::bind_generic" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic_exact", ptr null }
@"var.type_env::lookup_generic_exact" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic", ptr null }
@"var.type_env::lookup_generic" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"type_env::bind_user_type", ptr null }
@"var.type_env::bind_user_type" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type_exact", ptr null }
@"var.type_env::lookup_user_type_exact" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type", ptr null }
@"var.type_env::lookup_user_type" = global ptr null
@str.9 = internal unnamed_addr constant [6 x i8] c"print\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.9 }
@str.10 = internal unnamed_addr constant [8 x i8] c"writeln\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.10 }
@str.11 = internal unnamed_addr constant [10 x i8] c"print_int\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.11 }
@str.12 = internal unnamed_addr constant [12 x i8] c"print_float\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.12 }
@str.13 = internal unnamed_addr constant [14 x i8] c"print_float32\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.13 }
@str.14 = internal unnamed_addr constant [10 x i8] c"writeln_b\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.14 }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"type_env::is_prelude_fn", ptr null }
@"var.type_env::is_prelude_fn" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"type_env::is_prelude_active", ptr null }
@"var.type_env::is_prelude_active" = global ptr null
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

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_type_env() #1 {
entry:
  store ptr @clo.const, ptr @"var.type_env::new_init", align 8
  store ptr @clo.const.1, ptr @"var.type_env::new_env", align 8
  store ptr @clo.const.2, ptr @"var.type_env::cache_fn_body", align 8
  store ptr @clo.const.3, ptr @"var.type_env::lookup_fn_body", align 8
  store ptr @clo.const.4, ptr @"var.type_env::mark_generic_binding", align 8
  store ptr @clo.const.5, ptr @"var.type_env::is_generic_binding", align 8
  store ptr @clo.const.6, ptr @"var.type_env::mark_global_var", align 8
  store ptr @clo.const.7, ptr @"var.type_env::is_marked_global", align 8
  store ptr @clo.const.8, ptr @"var.type_env::enter_scope", align 8
  store ptr @clo.const.9, ptr @"var.type_env::leave_scope", align 8
  store ptr @clo.const.10, ptr @"var.type_env::bind_local", align 8
  store ptr @clo.const.11, ptr @"var.type_env::bind_global", align 8
  store ptr @clo.const.12, ptr @"var.type_env::name_is_qualified", align 8
  store ptr @clo.const.13, ptr @"var.type_env::decl_module", align 8
  store ptr @clo.const.14, ptr @"var.type_env::set_current_module", align 8
  store ptr @clo.const.16, ptr @"var.type_env::lookup_local_exact", align 8
  store ptr @clo.const.15, ptr @"var.type_env::lookup_scope", align 8
  store ptr @clo.const.17, ptr @"var.type_env::lookup_local", align 8
  store ptr @clo.const.18, ptr @"var.type_env::lookup_binding_exact", align 8
  store ptr @clo.const.19, ptr @"var.type_env::lookup_binding", align 8
  store ptr @clo.const.20, ptr @"var.type_env::find_last_dot", align 8
  store ptr @clo.const.21, ptr @"var.type_env::drop_last_dot", align 8
  store ptr @clo.const.22, ptr @"var.type_env::init_has_name", align 8
  store ptr @clo.const.23, ptr @"var.type_env::init_mark_tracked", align 8
  store ptr @clo.const.24, ptr @"var.type_env::init_is_tracked", align 8
  store ptr @clo.const.25, ptr @"var.type_env::init_mark_whole", align 8
  store ptr @clo.const.26, ptr @"var.type_env::init_is_whole", align 8
  store ptr @clo.const.27, ptr @"var.type_env::init_mark_written", align 8
  store ptr @clo.const.28, ptr @"var.type_env::init_is_ok_walk", align 8
  store ptr @clo.const.29, ptr @"var.type_env::init_has_subpath", align 8
  store ptr @clo.const.30, ptr @"var.type_env::init_is_ok", align 8
  store ptr @clo.const.31, ptr @"var.type_env::init_snapshot", align 8
  store ptr @clo.const.32, ptr @"var.type_env::init_snapshot_of", align 8
  store ptr @clo.const.33, ptr @"var.type_env::init_restore", align 8
  store ptr @clo.const.34, ptr @"var.type_env::init_merge_two", align 8
  store ptr @clo.const.35, ptr @"var.type_env::init_is_fully_init", align 8
  store ptr @clo.const.36, ptr @"var.type_env::bind_generic", align 8
  store ptr @clo.const.37, ptr @"var.type_env::lookup_generic_exact", align 8
  store ptr @clo.const.38, ptr @"var.type_env::lookup_generic", align 8
  store ptr @clo.const.39, ptr @"var.type_env::bind_user_type", align 8
  store ptr @clo.const.40, ptr @"var.type_env::lookup_user_type_exact", align 8
  store ptr @clo.const.41, ptr @"var.type_env::lookup_user_type", align 8
  store ptr @clo.const.42, ptr @"var.type_env::is_prelude_fn", align 8
  store ptr @clo.const.43, ptr @"var.type_env::is_prelude_active", align 8
  ret void
}

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
  %var.scopes = alloca ptr, align 8
  %var.root_scope = alloca ptr, align 8
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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld8, align 8
  store ptr %rec.alloc, ptr %var.root_scope, align 8
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
  store ptr %a.new10, ptr %var.scopes, align 8
  %var.load = load ptr, ptr %var.root_scope, align 8
  %a.load = load ptr, ptr %var.scopes, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create17, ptr %var.scopes, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.scopes, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  %a.elem.p2i = ptrtoint ptr %var.load to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
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
  %arena.cur40 = call ptr @dva_arena_current()
  %a.new41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = call ptr @dva_arena_current()
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  %a.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 0
  store i64 0, ptr %a.len.gep44, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  %call.res = call ptr @"type_env::new_init"()
  %arena.cur47 = call ptr @dva_arena_current()
  %a.new48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur49 = call ptr @dva_arena_current()
  %a.buf50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 128)
  %a.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new48, i32 0, i32 0
  store i64 0, ptr %a.len.gep51, align 8
  %a.data.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new48, i32 0, i32 1
  store ptr %a.buf50, ptr %a.data.gep52, align 8
  %a.cap.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new48, i32 0, i32 2
  store i64 16, ptr %a.cap.gep53, align 8
  %arena.cur54 = call ptr @dva_arena_current()
  %a.new55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 24)
  %arena.cur56 = call ptr @dva_arena_current()
  %a.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  %a.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new55, i32 0, i32 0
  store i64 0, ptr %a.len.gep58, align 8
  %a.data.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new55, i32 0, i32 1
  store ptr %a.buf57, ptr %a.data.gep59, align 8
  %a.cap.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new55, i32 0, i32 2
  store i64 16, ptr %a.cap.gep60, align 8
  %arena.cur61 = call ptr @dva_arena_current()
  %m.new62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 40)
  %arena.cur63 = call ptr @dva_arena_current()
  %m.keys64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 64)
  %arena.cur65 = call ptr @dva_arena_current()
  %m.vals66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 64)
  %arena.cur67 = call ptr @dva_arena_current()
  %m.states68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states68, i8 0, i64 8, i1 false)
  %m.count.gep69 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new62, i32 0, i32 0
  store i64 0, ptr %m.count.gep69, align 8
  %m.cap.gep70 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new62, i32 0, i32 1
  store i64 8, ptr %m.cap.gep70, align 8
  %m.keys.gep71 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new62, i32 0, i32 2
  store ptr %m.keys64, ptr %m.keys.gep71, align 8
  %m.vals.gep72 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new62, i32 0, i32 3
  store ptr %m.vals66, ptr %m.vals.gep72, align 8
  %m.states.gep73 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %m.new62, i32 0, i32 4
  store ptr %m.states68, ptr %m.states.gep73, align 8
  %arena.cur74 = call ptr @dva_arena_current()
  %a.new75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 24)
  %arena.cur76 = call ptr @dva_arena_current()
  %a.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 128)
  %a.len.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new75, i32 0, i32 0
  store i64 0, ptr %a.len.gep78, align 8
  %a.data.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new75, i32 0, i32 1
  store ptr %a.buf77, ptr %a.data.gep79, align 8
  %a.cap.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new75, i32 0, i32 2
  store i64 16, ptr %a.cap.gep80, align 8
  %arena.cur81 = call ptr @dva_arena_current()
  %a.new82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %arena.cur83 = call ptr @dva_arena_current()
  %a.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 128)
  %a.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new82, i32 0, i32 0
  store i64 0, ptr %a.len.gep85, align 8
  %a.data.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new82, i32 0, i32 1
  store ptr %a.buf84, ptr %a.data.gep86, align 8
  %a.cap.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new82, i32 0, i32 2
  store i64 16, ptr %a.cap.gep87, align 8
  %arena.cur88 = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur89 = call ptr @dva_arena_current()
  %rec.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld91 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 0
  store ptr %a.load239, ptr %rec.fld91, align 8
  %rec.fld92 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 1
  store i64 0, ptr %rec.fld92, align 8
  %rec.fld93 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 2
  store i64 0, ptr %rec.fld93, align 8
  %rec.fld94 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 3
  store ptr %a.new41, ptr %rec.fld94, align 8
  %rec.fld95 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld95, ptr align 1 %call.res, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld96 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 5
  store ptr %a.new48, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 6
  store ptr %a.new55, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 7
  store ptr %m.new62, ptr %rec.fld98, align 8
  %rec.fld99 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 8
  store ptr @str.0.struct, ptr %rec.fld99, align 8
  %rec.fld100 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 9
  store i1 false, ptr %rec.fld100, align 1
  %rec.fld101 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 10
  store i1 false, ptr %rec.fld101, align 1
  %rec.fld102 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 11
  store i1 false, ptr %rec.fld102, align 1
  %rec.fld103 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 12
  store ptr %a.new75, ptr %rec.fld103, align 8
  %rec.fld104 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 13
  store ptr %a.new82, ptr %rec.fld104, align 8
  %rec.fld105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 14
  store ptr %ram.alloc, ptr %rec.fld105, align 8
  %rec.fld106 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc90, i32 0, i32 15
  store ptr @str.1.struct, ptr %rec.fld106, align 8
  ret ptr %rec.alloc90
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %var.load3 = load ptr, ptr %var.body, align 8
  %m.wr.p2i = ptrtoint ptr %var.load3 to i64
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  %m.count4 = load i64, ptr %m.count, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %m.cap5 = load i64, ptr %m.cap, align 8
  %m.c.plus = add i64 %m.count4, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap5, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins

m.grow:                                           ; preds = %entry
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %m.old.cap6 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %m.old.keys7 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 3
  %m.old.vals8 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 4
  %m.old.states9 = load ptr, ptr %m.old.states, align 8
  %m.new.cap = mul i64 %m.old.cap6, 2
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur10 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %m.gv.bytes)
  %arena.cur11 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  br label %m.re.loop

m.ins:                                            ; preds = %m.re.done, %entry
  %m.cap51 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %m.cap52 = load i64, ptr %m.cap51, align 8
  %m.keys53 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %m.keys54 = load ptr, ptr %m.keys53, align 8
  %m.vals55 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 3
  %m.vals56 = load ptr, ptr %m.vals55, align 8
  %m.states57 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 4
  %m.states58 = load ptr, ptr %m.states57, align 8
  %mk.data59 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data60 = load ptr, ptr %mk.data59, align 8
  %mk.len61 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len62 = load i64, ptr %mk.len61, align 8
  %mk.len63 = and i64 %mk.len62, 281474976710655
  %str.tag64 = lshr i64 %mk.len62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap6
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states9, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  br label %m.ins

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys7, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals8, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap12 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %m.cap13 = load i64, ptr %m.cap12, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %m.keys14 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 3
  %m.vals15 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 4
  %m.states16 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data17 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len18 = load i64, ptr %mk.len, align 8
  %mk.len19 = and i64 %mk.len18, 281474976710655
  %str.tag = lshr i64 %mk.len18, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %m.re.ins
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen21
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %m.re.ins
  %hash.str = call i64 @dva_hash_string(ptr %mk.data17, i64 %mk.len19)
  %m.capm1 = sub i64 %m.cap13, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.state.gep = getelementptr i8, ptr %m.states16, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.is.tomb = icmp eq i8 %m.state, 2
  %m.is.free = or i1 %m.is.empty, %m.is.tomb
  br i1 %m.is.free, label %m.empty, label %m.found

m.found:                                          ; preds = %m.loop
  %m.key.slot = getelementptr ptr, ptr %m.keys14, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen22 = load i64, ptr %mk.slen, align 8
  %mk.slen23 = and i64 %mk.slen22, 281474976710655
  %str.tag24 = lshr i64 %mk.slen22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

m.empty:                                          ; preds = %m.loop
  %m.key.slot46 = getelementptr ptr, ptr %m.keys14, i64 %m.idx
  store ptr %m.re.key, ptr %m.key.slot46, align 8
  %m.val.slot47 = getelementptr i64, ptr %m.vals15, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot47, align 8
  store i8 1, ptr %m.state.gep, align 1
  %m.count48 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  %m.count49 = load i64, ptr %m.count48, align 8
  %m.count.next = add i64 %m.count49, 1
  %m.count.gep50 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep50, align 8
  br label %m.done

m.done:                                           ; preds = %m.empty, %m.overwrite
  br label %m.re.cont

str_gen_check26:                                  ; preds = %m.found
  %arena.gen29 = call ptr @dva_arena_current()
  %arena.gen30 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen29, i32 0, i32 4
  %arena.gen31 = load i64, ptr %arena.gen30, align 8
  %str.tag.match32 = icmp eq i64 %str.tag24, %arena.gen31
  br i1 %str.tag.match32, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata33 = load ptr, ptr %mk.sdata, align 8
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen34 = load i64, ptr %mk.nlen, align 8
  %mk.nlen35 = and i64 %mk.nlen34, 281474976710655
  %str.tag36 = lshr i64 %mk.nlen34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check38:                                  ; preds = %str_ok27
  %arena.gen41 = call ptr @dva_arena_current()
  %arena.gen42 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen41, i32 0, i32 4
  %arena.gen43 = load i64, ptr %arena.gen42, align 8
  %str.tag.match44 = icmp eq i64 %str.tag36, %arena.gen43
  br i1 %str.tag.match44, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok27
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata45 = load ptr, ptr %mk.ndata, align 8
  %mk.lenseq = icmp eq i64 %mk.slen23, %mk.nlen35
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata33, ptr %mk.ndata45, i64 %mk.nlen35)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  %mk.eq = and i1 %mk.lenseq, %mk.cmpeq
  br i1 %mk.eq, label %m.overwrite, label %m.next

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

m.next:                                           ; preds = %str_ok39
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  br label %m.loop

m.overwrite:                                      ; preds = %str_ok39
  %m.val.slot = getelementptr i64, ptr %m.vals15, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot, align 8
  br label %m.done

str_gen_check66:                                  ; preds = %m.ins
  %arena.gen69 = call ptr @dva_arena_current()
  %arena.gen70 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen69, i32 0, i32 4
  %arena.gen71 = load i64, ptr %arena.gen70, align 8
  %str.tag.match72 = icmp eq i64 %str.tag64, %arena.gen71
  br i1 %str.tag.match72, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %m.ins
  %hash.str73 = call i64 @dva_hash_string(ptr %mk.data60, i64 %mk.len63)
  %m.capm174 = sub i64 %m.cap52, 1
  %m.idx075 = and i64 %hash.str73, %m.capm174
  br label %m.loop76

str_stale68:                                      ; preds = %str_gen_check66
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

m.loop76:                                         ; preds = %m.next120, %str_ok67
  %m.idx80 = phi i64 [ %m.idx075, %str_ok67 ], [ %m.idx.next124, %m.next120 ]
  %m.state.gep81 = getelementptr i8, ptr %m.states58, i64 %m.idx80
  %m.state82 = load i8, ptr %m.state.gep81, align 1
  %m.is.empty83 = icmp eq i8 %m.state82, 0
  %m.is.tomb84 = icmp eq i8 %m.state82, 2
  %m.is.free85 = or i1 %m.is.empty83, %m.is.tomb84
  br i1 %m.is.free85, label %m.empty78, label %m.found77

m.found77:                                        ; preds = %m.loop76
  %m.key.slot86 = getelementptr ptr, ptr %m.keys54, i64 %m.idx80
  %mk.stored87 = load ptr, ptr %m.key.slot86, align 8
  %mk.slen88 = getelementptr inbounds { i64, ptr }, ptr %mk.stored87, i32 0, i32 0
  %mk.slen89 = load i64, ptr %mk.slen88, align 8
  %mk.slen90 = and i64 %mk.slen89, 281474976710655
  %str.tag91 = lshr i64 %mk.slen89, 48
  %str.immortal92 = icmp eq i64 %str.tag91, 0
  br i1 %str.immortal92, label %str_ok94, label %str_gen_check93

m.empty78:                                        ; preds = %m.loop76
  %m.key.slot125 = getelementptr ptr, ptr %m.keys54, i64 %m.idx80
  store ptr %var.load2, ptr %m.key.slot125, align 8
  %m.val.slot126 = getelementptr i64, ptr %m.vals56, i64 %m.idx80
  store i64 %m.wr.p2i, ptr %m.val.slot126, align 8
  store i8 1, ptr %m.state.gep81, align 1
  %m.count127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  %m.count128 = load i64, ptr %m.count127, align 8
  %m.count.next129 = add i64 %m.count128, 1
  %m.count.gep130 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next129, ptr %m.count.gep130, align 8
  br label %m.done79

m.done79:                                         ; preds = %m.empty78, %m.overwrite121
  ret void

str_gen_check93:                                  ; preds = %m.found77
  %arena.gen96 = call ptr @dva_arena_current()
  %arena.gen97 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen96, i32 0, i32 4
  %arena.gen98 = load i64, ptr %arena.gen97, align 8
  %str.tag.match99 = icmp eq i64 %str.tag91, %arena.gen98
  br i1 %str.tag.match99, label %str_ok94, label %str_stale95

str_ok94:                                         ; preds = %str_stale95, %str_gen_check93, %m.found77
  %mk.sdata100 = getelementptr inbounds { i64, ptr }, ptr %mk.stored87, i32 0, i32 1
  %mk.sdata101 = load ptr, ptr %mk.sdata100, align 8
  %mk.nlen102 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen103 = load i64, ptr %mk.nlen102, align 8
  %mk.nlen104 = and i64 %mk.nlen103, 281474976710655
  %str.tag105 = lshr i64 %mk.nlen103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_stale95:                                      ; preds = %str_gen_check93
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok94

str_gen_check107:                                 ; preds = %str_ok94
  %arena.gen110 = call ptr @dva_arena_current()
  %arena.gen111 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen110, i32 0, i32 4
  %arena.gen112 = load i64, ptr %arena.gen111, align 8
  %str.tag.match113 = icmp eq i64 %str.tag105, %arena.gen112
  br i1 %str.tag.match113, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %str_ok94
  %mk.ndata114 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata115 = load ptr, ptr %mk.ndata114, align 8
  %mk.lenseq116 = icmp eq i64 %mk.slen90, %mk.nlen104
  %mk.memcmp117 = call i32 @memcmp(ptr %mk.sdata101, ptr %mk.ndata115, i64 %mk.nlen104)
  %mk.cmpeq118 = icmp eq i32 %mk.memcmp117, 0
  %mk.eq119 = and i1 %mk.lenseq116, %mk.cmpeq118
  br i1 %mk.eq119, label %m.overwrite121, label %m.next120

str_stale109:                                     ; preds = %str_gen_check107
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

m.next120:                                        ; preds = %str_ok108
  %m.idx.add123 = add i64 %m.idx80, 1
  %m.idx.next124 = and i64 %m.idx.add123, %m.capm174
  br label %m.loop76

m.overwrite121:                                   ; preds = %str_ok108
  %m.val.slot122 = getelementptr i64, ptr %m.vals56, i64 %m.idx80
  store i64 %m.wr.p2i, ptr %m.val.slot122, align 8
  br label %m.done79
}

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #1 {
entry:
  %var.body = alloca ptr, align 8
  %var._103 = alloca ptr, align 8
  %var._102 = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.bodies = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
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
  %var.load35 = load ptr, ptr %var.bodies, align 8
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
  %choice.res134 = phi ptr [ %var.load133, %choice.exit97 ], [ null, %choice.else ]
  ret ptr %choice.res134

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
  %m.rd.val.slot = getelementptr ptr, ptr %m.vals41, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then95:                                    ; preds = %m.rd.done
  %ram.pay98 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay98 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit97

choice.else96:                                    ; preds = %m.rd.done
  %ram.pay99 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr100 = inttoptr i64 %ram.pay99 to ptr
  store ptr %pay.ptr100, ptr %var._101, align 8
  store ptr %pay.ptr100, ptr %var._102, align 8
  store ptr %pay.ptr100, ptr %var._103, align 8
  %err.code.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr100, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep104, align 8
  %err.msg.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr100, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep105, align 8
  %err.file.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr100, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep106, align 8
  %err.line.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr100, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep107, align 8
  %err.col.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr100, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep108, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len109 = load i64, ptr %err.msg.len, align 8
  %err.msg.len110 = and i64 %err.msg.len109, 281474976710655
  %str.tag111 = lshr i64 %err.msg.len109, 48
  %str.immortal112 = icmp eq i64 %str.tag111, 0
  br i1 %str.immortal112, label %str_ok114, label %str_gen_check113

choice.exit97:                                    ; preds = %err.abort, %choice.then95
  %choice.res = phi ptr [ %pay.ptr, %choice.then95 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load133 = load ptr, ptr %var.body, align 8
  br label %choice.exit

str_gen_check113:                                 ; preds = %choice.else96
  %arena.gen116 = call ptr @dva_arena_current()
  %arena.gen117 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen116, i32 0, i32 4
  %arena.gen118 = load i64, ptr %arena.gen117, align 8
  %str.tag.match119 = icmp eq i64 %str.tag111, %arena.gen118
  br i1 %str.tag.match119, label %str_ok114, label %str_stale115

str_ok114:                                        ; preds = %str_stale115, %str_gen_check113, %choice.else96
  %err.msg.len32 = trunc i64 %err.msg.len110 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data120 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len121 = load i64, ptr %err.file.len, align 8
  %err.file.len122 = and i64 %err.file.len121, 281474976710655
  %str.tag123 = lshr i64 %err.file.len121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_stale115:                                     ; preds = %str_gen_check113
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok114

str_gen_check125:                                 ; preds = %str_ok114
  %arena.gen128 = call ptr @dva_arena_current()
  %arena.gen129 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen128, i32 0, i32 4
  %arena.gen130 = load i64, ptr %arena.gen129, align 8
  %str.tag.match131 = icmp eq i64 %str.tag123, %arena.gen130
  br i1 %str.tag.match131, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %str_ok114
  %err.file.len32 = trunc i64 %err.file.len122 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data132 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale127:                                     ; preds = %str_gen_check125
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

err.thread:                                       ; preds = %str_ok126
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr100, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok126
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data120, i32 %err.file.len32, ptr %err.file.data132, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit97
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 12
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
  %a.elem.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 12
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
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 12
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load4, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.0:                                  ; preds = %loop.header.0
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit45
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %choice.then44, %loop.exit.nat.0
  %var.load46 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load46

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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen29 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen30 = load i64, ptr %arena.gen29, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen30
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %eq.rhs.len31 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.rhs.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check35:                                  ; preds = %str_ok
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len28, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale37:                                      ; preds = %str_gen_check35
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %eq.rhs.data43 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data43, i64 %eq.lhs.len28)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then44, label %choice.exit45

choice.then44:                                    ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.0

choice.exit45:                                    ; preds = %str.eq.merge
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 13
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
  %a.elem.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len5, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define i1 @"type_env::is_marked_global"(ptr %0, ptr %1) #1 {
entry:
  %var.match = alloca i1, align 1
  %var.n = alloca ptr, align 8
  %var._127 = alloca ptr, align 8
  %var._124 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.env, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 8
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %concat.lhs19 = load i64, ptr %concat.lhs, align 8
  %concat.lhs20 = and i64 %concat.lhs19, 281474976710655
  %str.tag21 = lshr i64 %concat.lhs19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %str.eq.merge
  %var.load96 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len86
  %choice.res = phi ptr [ %concat.str93, %concat.tot.len86 ], [ %var.load96, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load97 = load ptr, ptr %var.env, align 8
  %fld.gep98 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load97, i32 0, i32 13
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load99, i32 0, i32 0
  %a.len.query100 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

str_gen_check23:                                  ; preds = %choice.then
  %arena.gen26 = call ptr @dva_arena_current()
  %arena.gen27 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen26, i32 0, i32 4
  %arena.gen28 = load i64, ptr %arena.gen27, align 8
  %str.tag.match29 = icmp eq i64 %str.tag21, %arena.gen28
  br i1 %str.tag.match29, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %concat.lhs30 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %concat.lhs31 = load ptr, ptr %concat.lhs30, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs32 = and i64 %concat.rhs, 281474976710655
  %str.tag33 = lshr i64 %concat.rhs, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str_gen_check35:                                  ; preds = %str_ok24
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok24
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs20, i64 %concat.rhs32)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len43

str_stale37:                                      ; preds = %str_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

concat.sum.len43:                                 ; preds = %str_overflow_abort, %str_ok36
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum44 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf45 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.tot.len46

str_overflow_abort:                               ; preds = %str_ok36
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len43

concat.tot.len46:                                 ; preds = %str_overflow_abort47, %concat.sum.len43
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs31, i64 %concat.lhs20, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs42, i64 %concat.rhs32, i1 false)
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

str_overflow_abort47:                             ; preds = %concat.sum.len43
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len46

str_gen_check55:                                  ; preds = %concat.tot.len46
  %arena.gen58 = call ptr @dva_arena_current()
  %arena.gen59 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen58, i32 0, i32 4
  %arena.gen60 = load i64, ptr %arena.gen59, align 8
  %str.tag.match61 = icmp eq i64 %str.tag53, %arena.gen60
  br i1 %str.tag.match61, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %concat.tot.len46
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs63 = load ptr, ptr %concat.lhs62, align 8
  %concat.rhs64 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %concat.rhs65 = load i64, ptr %concat.rhs64, align 8
  %concat.rhs66 = and i64 %concat.rhs65, 281474976710655
  %str.tag67 = lshr i64 %concat.rhs65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale57:                                      ; preds = %str_gen_check55
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check69:                                  ; preds = %str_ok56
  %arena.gen72 = call ptr @dva_arena_current()
  %arena.gen73 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen72, i32 0, i32 4
  %arena.gen74 = load i64, ptr %arena.gen73, align 8
  %str.tag.match75 = icmp eq i64 %str.tag67, %arena.gen74
  br i1 %str.tag.match75, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok56
  %concat.rhs76 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %concat.rhs77 = load ptr, ptr %concat.rhs76, align 8
  %concat.sum.len78 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs52, i64 %concat.rhs66)
  %sum79 = extractvalue { i64, i1 } %concat.sum.len78, 0
  %ovf80 = extractvalue { i64, i1 } %concat.sum.len78, 1
  br i1 %ovf80, label %str_overflow_abort82, label %concat.sum.len81

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

concat.sum.len81:                                 ; preds = %str_overflow_abort82, %str_ok70
  %concat.tot.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum79, i64 1)
  %sum84 = extractvalue { i64, i1 } %concat.tot.len83, 0
  %ovf85 = extractvalue { i64, i1 } %concat.tot.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %concat.tot.len86

str_overflow_abort82:                             ; preds = %str_ok70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len81

concat.tot.len86:                                 ; preds = %str_overflow_abort87, %concat.sum.len81
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf89, ptr align 1 %concat.lhs63, i64 %concat.lhs52, i1 false)
  %concat.mid90 = getelementptr i8, ptr %concat.buf89, i64 %concat.lhs52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid90, ptr align 1 %concat.rhs77, i64 %concat.rhs66, i1 false)
  %concat.nul91 = getelementptr i8, ptr %concat.buf89, i64 %sum79
  store i8 0, ptr %concat.nul91, align 1
  %arena.cur92 = call ptr @dva_arena_current()
  %concat.str93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 16)
  %str.build.len.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str93, i32 0, i32 0
  store i64 %sum79, ptr %str.build.len.gep94, align 8
  %str.build.data.gep95 = getelementptr inbounds { i64, ptr }, ptr %concat.str93, i32 0, i32 1
  store ptr %concat.buf89, ptr %str.build.data.gep95, align 8
  br label %choice.exit

str_overflow_abort87:                             ; preds = %concat.sum.len81
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len86

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit
  %counter.load = load i64, ptr %loop.idx.1, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query100
  br i1 %loop.cond, label %loop.body.1, label %loop.exit.nat.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load101 = load ptr, ptr %var.env, align 8
  %fld.gep102 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load101, i32 0, i32 13
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %var.load104 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load103, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.1:                                  ; preds = %loop.header.1
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit372
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %choice.then371, %loop.exit.nat.1
  %var.load373 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load373

a.rd.check:                                       ; preds = %loop.body.1
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load103, i32 0, i32 0
  %a.rd.len105 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load104, 0
  %a.rd.lt = icmp slt i64 %var.load104, %a.rd.len105
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load103, i32 0, i32 1
  %a.rd.data106 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data106, i64 %var.load104
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.1
  %arena.cur107 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 56)
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
  %arena.cur108 = call ptr @dva_arena_current()
  %err.alloc109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 56)
  %err.code.gep110 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 0
  store i64 4011, ptr %err.code.gep110, align 8
  %err.msg.gep111 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep111, align 8
  %err.file.gep112 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep112, align 8
  %err.line.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 3
  store i64 0, ptr %err.line.gep113, align 8
  %err.col.gep114 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 4
  store i64 0, ptr %err.col.gep114, align 8
  %err.ctx.gep115 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc109, i32 0, i32 5
  %err.ctx0.gep116 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep115, i32 0, i32 0
  store i64 %var.load104, ptr %err.ctx0.gep116, align 8
  %err.ctx1.gep117 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep115, i32 0, i32 1
  store i64 %a.rd.len105, ptr %err.ctx1.gep117, align 8
  %err.p2i118 = ptrtoint ptr %err.alloc109 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i118, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag119 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag119, label %choice.then120, label %choice.else121

choice.then120:                                   ; preds = %a.rd.done
  %ram.pay123 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay123 to ptr
  store ptr %pay.ptr, ptr %var._124, align 8
  br label %choice.exit122

choice.else121:                                   ; preds = %a.rd.done
  %ram.pay125 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr126 = inttoptr i64 %ram.pay125 to ptr
  store ptr %pay.ptr126, ptr %var._127, align 8
  br label %choice.exit122

choice.exit122:                                   ; preds = %choice.else121, %choice.then120
  %choice.res128 = phi ptr [ %pay.ptr, %choice.then120 ], [ @str.0.struct, %choice.else121 ]
  store ptr %choice.res128, ptr %var.n, align 8
  %var.load129 = load ptr, ptr %var.n, align 8
  %var.load130 = load ptr, ptr %var.name, align 8
  %eq.lhs.len131 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 0
  %eq.lhs.len132 = load i64, ptr %eq.lhs.len131, align 8
  %eq.lhs.len133 = and i64 %eq.lhs.len132, 281474976710655
  %str.tag134 = lshr i64 %eq.lhs.len132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_gen_check136:                                 ; preds = %choice.exit122
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %choice.exit122
  %eq.rhs.len143 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 0
  %eq.rhs.len144 = load i64, ptr %eq.rhs.len143, align 8
  %eq.rhs.len145 = and i64 %eq.rhs.len144, 281474976710655
  %str.tag146 = lshr i64 %eq.rhs.len144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

str_stale138:                                     ; preds = %str_gen_check136
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

str_gen_check148:                                 ; preds = %str_ok137
  %arena.gen151 = call ptr @dva_arena_current()
  %arena.gen152 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen151, i32 0, i32 4
  %arena.gen153 = load i64, ptr %arena.gen152, align 8
  %str.tag.match154 = icmp eq i64 %str.tag146, %arena.gen153
  br i1 %str.tag.match154, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %str_ok137
  %eq.len155 = icmp eq i64 %eq.lhs.len133, %eq.rhs.len145
  br i1 %eq.len155, label %str.eq.then156, label %str.eq.else157

str_stale150:                                     ; preds = %str_gen_check148
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

str.eq.then156:                                   ; preds = %str_ok149
  %eq.lhs.data159 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 1
  %eq.lhs.data160 = load ptr, ptr %eq.lhs.data159, align 8
  %eq.rhs.data161 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 1
  %eq.rhs.data162 = load ptr, ptr %eq.rhs.data161, align 8
  %eq.memcmp163 = call i32 @memcmp(ptr %eq.lhs.data160, ptr %eq.rhs.data162, i64 %eq.lhs.len133)
  %eq.cmp.zero164 = icmp eq i32 %eq.memcmp163, 0
  br label %str.eq.merge158

str.eq.else157:                                   ; preds = %str_ok149
  br label %str.eq.merge158

str.eq.merge158:                                  ; preds = %str.eq.else157, %str.eq.then156
  %str.eq.result165 = phi i1 [ %eq.cmp.zero164, %str.eq.then156 ], [ false, %str.eq.else157 ]
  br i1 %str.eq.result165, label %or.2.then, label %or.2.else

or.2.then:                                        ; preds = %str.eq.merge158
  br label %or.2.exit

or.2.else:                                        ; preds = %str.eq.merge158
  %var.load166 = load ptr, ptr %var.n, align 8
  %var.load167 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len168 = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 0
  %eq.lhs.len169 = load i64, ptr %eq.lhs.len168, align 8
  %eq.lhs.len170 = and i64 %eq.lhs.len169, 281474976710655
  %str.tag171 = lshr i64 %eq.lhs.len169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

or.2.exit:                                        ; preds = %str.eq.merge195, %or.2.then
  %or.2.phi = phi i1 [ %str.eq.result165, %or.2.then ], [ %str.eq.result202, %str.eq.merge195 ]
  br i1 %or.2.phi, label %or.3.then, label %or.3.else

str_gen_check173:                                 ; preds = %or.2.else
  %arena.gen176 = call ptr @dva_arena_current()
  %arena.gen177 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen176, i32 0, i32 4
  %arena.gen178 = load i64, ptr %arena.gen177, align 8
  %str.tag.match179 = icmp eq i64 %str.tag171, %arena.gen178
  br i1 %str.tag.match179, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %or.2.else
  %eq.rhs.len180 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 0
  %eq.rhs.len181 = load i64, ptr %eq.rhs.len180, align 8
  %eq.rhs.len182 = and i64 %eq.rhs.len181, 281474976710655
  %str.tag183 = lshr i64 %eq.rhs.len181, 48
  %str.immortal184 = icmp eq i64 %str.tag183, 0
  br i1 %str.immortal184, label %str_ok186, label %str_gen_check185

str_stale175:                                     ; preds = %str_gen_check173
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str_gen_check185:                                 ; preds = %str_ok174
  %arena.gen188 = call ptr @dva_arena_current()
  %arena.gen189 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen188, i32 0, i32 4
  %arena.gen190 = load i64, ptr %arena.gen189, align 8
  %str.tag.match191 = icmp eq i64 %str.tag183, %arena.gen190
  br i1 %str.tag.match191, label %str_ok186, label %str_stale187

str_ok186:                                        ; preds = %str_stale187, %str_gen_check185, %str_ok174
  %eq.len192 = icmp eq i64 %eq.lhs.len170, %eq.rhs.len182
  br i1 %eq.len192, label %str.eq.then193, label %str.eq.else194

str_stale187:                                     ; preds = %str_gen_check185
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok186

str.eq.then193:                                   ; preds = %str_ok186
  %eq.lhs.data196 = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 1
  %eq.lhs.data197 = load ptr, ptr %eq.lhs.data196, align 8
  %eq.rhs.data198 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 1
  %eq.rhs.data199 = load ptr, ptr %eq.rhs.data198, align 8
  %eq.memcmp200 = call i32 @memcmp(ptr %eq.lhs.data197, ptr %eq.rhs.data199, i64 %eq.lhs.len170)
  %eq.cmp.zero201 = icmp eq i32 %eq.memcmp200, 0
  br label %str.eq.merge195

str.eq.else194:                                   ; preds = %str_ok186
  br label %str.eq.merge195

str.eq.merge195:                                  ; preds = %str.eq.else194, %str.eq.then193
  %str.eq.result202 = phi i1 [ %eq.cmp.zero201, %str.eq.then193 ], [ false, %str.eq.else194 ]
  br label %or.2.exit

or.3.then:                                        ; preds = %or.2.exit
  br label %or.3.exit

or.3.else:                                        ; preds = %or.2.exit
  %var.load203 = load ptr, ptr %var.env, align 8
  %fld.gep204 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load203, i32 0, i32 8
  %fld.load205 = load ptr, ptr %fld.gep204, align 8
  %eq.lhs.len206 = getelementptr inbounds { i64, ptr }, ptr %fld.load205, i32 0, i32 0
  %eq.lhs.len207 = load i64, ptr %eq.lhs.len206, align 8
  %eq.lhs.len208 = and i64 %eq.lhs.len207, 281474976710655
  %str.tag209 = lshr i64 %eq.lhs.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

or.3.exit:                                        ; preds = %and.4.exit, %or.3.then
  %or.3.phi = phi i1 [ %or.2.phi, %or.3.then ], [ %and.4.phi, %and.4.exit ]
  store i1 %or.3.phi, ptr %var.match, align 1
  %var.load370 = load i1, ptr %var.match, align 1
  br i1 %var.load370, label %choice.then371, label %choice.exit372

str_gen_check211:                                 ; preds = %or.3.else
  %arena.gen214 = call ptr @dva_arena_current()
  %arena.gen215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen214, i32 0, i32 4
  %arena.gen216 = load i64, ptr %arena.gen215, align 8
  %str.tag.match217 = icmp eq i64 %str.tag209, %arena.gen216
  br i1 %str.tag.match217, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %or.3.else
  %eq.rhs.len218 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len219 = and i64 %eq.rhs.len218, 281474976710655
  %str.tag220 = lshr i64 %eq.rhs.len218, 48
  %str.immortal221 = icmp eq i64 %str.tag220, 0
  br i1 %str.immortal221, label %str_ok223, label %str_gen_check222

str_stale213:                                     ; preds = %str_gen_check211
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

str_gen_check222:                                 ; preds = %str_ok212
  %arena.gen225 = call ptr @dva_arena_current()
  %arena.gen226 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen225, i32 0, i32 4
  %arena.gen227 = load i64, ptr %arena.gen226, align 8
  %str.tag.match228 = icmp eq i64 %str.tag220, %arena.gen227
  br i1 %str.tag.match228, label %str_ok223, label %str_stale224

str_ok223:                                        ; preds = %str_stale224, %str_gen_check222, %str_ok212
  %eq.len229 = icmp eq i64 %eq.lhs.len208, %eq.rhs.len219
  br i1 %eq.len229, label %str.eq.then230, label %str.eq.else231

str_stale224:                                     ; preds = %str_gen_check222
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok223

str.eq.then230:                                   ; preds = %str_ok223
  %eq.lhs.data233 = getelementptr inbounds { i64, ptr }, ptr %fld.load205, i32 0, i32 1
  %eq.lhs.data234 = load ptr, ptr %eq.lhs.data233, align 8
  %eq.rhs.data235 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data234, ptr %eq.rhs.data235, i64 %eq.lhs.len208)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br label %str.eq.merge232

str.eq.else231:                                   ; preds = %str_ok223
  br label %str.eq.merge232

str.eq.merge232:                                  ; preds = %str.eq.else231, %str.eq.then230
  %str.eq.result238 = phi i1 [ %eq.cmp.zero237, %str.eq.then230 ], [ false, %str.eq.else231 ]
  %str.neq239 = xor i1 %str.eq.result238, true
  br i1 %str.neq239, label %and.4.then, label %and.4.else

and.4.then:                                       ; preds = %str.eq.merge232
  %var.load240 = load ptr, ptr %var.name, align 8
  %var.load241 = load ptr, ptr %var.env, align 8
  %fld.gep242 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load241, i32 0, i32 8
  %fld.load243 = load ptr, ptr %fld.gep242, align 8
  %concat.lhs244 = getelementptr inbounds { i64, ptr }, ptr %fld.load243, i32 0, i32 0
  %concat.lhs245 = load i64, ptr %concat.lhs244, align 8
  %concat.lhs246 = and i64 %concat.lhs245, 281474976710655
  %str.tag247 = lshr i64 %concat.lhs245, 48
  %str.immortal248 = icmp eq i64 %str.tag247, 0
  br i1 %str.immortal248, label %str_ok250, label %str_gen_check249

and.4.else:                                       ; preds = %str.eq.merge232
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %str.eq.merge362
  %and.4.phi = phi i1 [ %str.eq.result369, %str.eq.merge362 ], [ %str.neq239, %and.4.else ]
  br label %or.3.exit

str_gen_check249:                                 ; preds = %and.4.then
  %arena.gen252 = call ptr @dva_arena_current()
  %arena.gen253 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen252, i32 0, i32 4
  %arena.gen254 = load i64, ptr %arena.gen253, align 8
  %str.tag.match255 = icmp eq i64 %str.tag247, %arena.gen254
  br i1 %str.tag.match255, label %str_ok250, label %str_stale251

str_ok250:                                        ; preds = %str_stale251, %str_gen_check249, %and.4.then
  %concat.lhs256 = getelementptr inbounds { i64, ptr }, ptr %fld.load243, i32 0, i32 1
  %concat.lhs257 = load ptr, ptr %concat.lhs256, align 8
  %concat.rhs258 = load i64, ptr @str.6.struct, align 8
  %concat.rhs259 = and i64 %concat.rhs258, 281474976710655
  %str.tag260 = lshr i64 %concat.rhs258, 48
  %str.immortal261 = icmp eq i64 %str.tag260, 0
  br i1 %str.immortal261, label %str_ok263, label %str_gen_check262

str_stale251:                                     ; preds = %str_gen_check249
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok250

str_gen_check262:                                 ; preds = %str_ok250
  %arena.gen265 = call ptr @dva_arena_current()
  %arena.gen266 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen265, i32 0, i32 4
  %arena.gen267 = load i64, ptr %arena.gen266, align 8
  %str.tag.match268 = icmp eq i64 %str.tag260, %arena.gen267
  br i1 %str.tag.match268, label %str_ok263, label %str_stale264

str_ok263:                                        ; preds = %str_stale264, %str_gen_check262, %str_ok250
  %concat.rhs269 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs246, i64 %concat.rhs259)
  %sum271 = extractvalue { i64, i1 } %concat.sum.len270, 0
  %ovf272 = extractvalue { i64, i1 } %concat.sum.len270, 1
  br i1 %ovf272, label %str_overflow_abort274, label %concat.sum.len273

str_stale264:                                     ; preds = %str_gen_check262
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok263

concat.sum.len273:                                ; preds = %str_overflow_abort274, %str_ok263
  %concat.tot.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum271, i64 1)
  %sum276 = extractvalue { i64, i1 } %concat.tot.len275, 0
  %ovf277 = extractvalue { i64, i1 } %concat.tot.len275, 1
  br i1 %ovf277, label %str_overflow_abort279, label %concat.tot.len278

str_overflow_abort274:                            ; preds = %str_ok263
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len273

concat.tot.len278:                                ; preds = %str_overflow_abort279, %concat.sum.len273
  %arena.cur280 = call ptr @dva_arena_current()
  %concat.buf281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 %sum276)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf281, ptr align 1 %concat.lhs257, i64 %concat.lhs246, i1 false)
  %concat.mid282 = getelementptr i8, ptr %concat.buf281, i64 %concat.lhs246
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid282, ptr align 1 %concat.rhs269, i64 %concat.rhs259, i1 false)
  %concat.nul283 = getelementptr i8, ptr %concat.buf281, i64 %sum271
  store i8 0, ptr %concat.nul283, align 1
  %arena.cur284 = call ptr @dva_arena_current()
  %concat.str285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 16)
  %str.build.len.gep286 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 0
  store i64 %sum271, ptr %str.build.len.gep286, align 8
  %str.build.data.gep287 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 1
  store ptr %concat.buf281, ptr %str.build.data.gep287, align 8
  %var.load288 = load ptr, ptr %var.n, align 8
  %concat.lhs289 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 0
  %concat.lhs290 = load i64, ptr %concat.lhs289, align 8
  %concat.lhs291 = and i64 %concat.lhs290, 281474976710655
  %str.tag292 = lshr i64 %concat.lhs290, 48
  %str.immortal293 = icmp eq i64 %str.tag292, 0
  br i1 %str.immortal293, label %str_ok295, label %str_gen_check294

str_overflow_abort279:                            ; preds = %concat.sum.len273
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len278

str_gen_check294:                                 ; preds = %concat.tot.len278
  %arena.gen297 = call ptr @dva_arena_current()
  %arena.gen298 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen297, i32 0, i32 4
  %arena.gen299 = load i64, ptr %arena.gen298, align 8
  %str.tag.match300 = icmp eq i64 %str.tag292, %arena.gen299
  br i1 %str.tag.match300, label %str_ok295, label %str_stale296

str_ok295:                                        ; preds = %str_stale296, %str_gen_check294, %concat.tot.len278
  %concat.lhs301 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 1
  %concat.lhs302 = load ptr, ptr %concat.lhs301, align 8
  %concat.rhs303 = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 0
  %concat.rhs304 = load i64, ptr %concat.rhs303, align 8
  %concat.rhs305 = and i64 %concat.rhs304, 281474976710655
  %str.tag306 = lshr i64 %concat.rhs304, 48
  %str.immortal307 = icmp eq i64 %str.tag306, 0
  br i1 %str.immortal307, label %str_ok309, label %str_gen_check308

str_stale296:                                     ; preds = %str_gen_check294
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok295

str_gen_check308:                                 ; preds = %str_ok295
  %arena.gen311 = call ptr @dva_arena_current()
  %arena.gen312 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen311, i32 0, i32 4
  %arena.gen313 = load i64, ptr %arena.gen312, align 8
  %str.tag.match314 = icmp eq i64 %str.tag306, %arena.gen313
  br i1 %str.tag.match314, label %str_ok309, label %str_stale310

str_ok309:                                        ; preds = %str_stale310, %str_gen_check308, %str_ok295
  %concat.rhs315 = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 1
  %concat.rhs316 = load ptr, ptr %concat.rhs315, align 8
  %concat.sum.len317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs291, i64 %concat.rhs305)
  %sum318 = extractvalue { i64, i1 } %concat.sum.len317, 0
  %ovf319 = extractvalue { i64, i1 } %concat.sum.len317, 1
  br i1 %ovf319, label %str_overflow_abort321, label %concat.sum.len320

str_stale310:                                     ; preds = %str_gen_check308
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok309

concat.sum.len320:                                ; preds = %str_overflow_abort321, %str_ok309
  %concat.tot.len322 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum318, i64 1)
  %sum323 = extractvalue { i64, i1 } %concat.tot.len322, 0
  %ovf324 = extractvalue { i64, i1 } %concat.tot.len322, 1
  br i1 %ovf324, label %str_overflow_abort326, label %concat.tot.len325

str_overflow_abort321:                            ; preds = %str_ok309
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len320

concat.tot.len325:                                ; preds = %str_overflow_abort326, %concat.sum.len320
  %arena.cur327 = call ptr @dva_arena_current()
  %concat.buf328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 %sum323)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf328, ptr align 1 %concat.lhs302, i64 %concat.lhs291, i1 false)
  %concat.mid329 = getelementptr i8, ptr %concat.buf328, i64 %concat.lhs291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid329, ptr align 1 %concat.rhs316, i64 %concat.rhs305, i1 false)
  %concat.nul330 = getelementptr i8, ptr %concat.buf328, i64 %sum318
  store i8 0, ptr %concat.nul330, align 1
  %arena.cur331 = call ptr @dva_arena_current()
  %concat.str332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 16)
  %str.build.len.gep333 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 0
  store i64 %sum318, ptr %str.build.len.gep333, align 8
  %str.build.data.gep334 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 1
  store ptr %concat.buf328, ptr %str.build.data.gep334, align 8
  %eq.lhs.len335 = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 0
  %eq.lhs.len336 = load i64, ptr %eq.lhs.len335, align 8
  %eq.lhs.len337 = and i64 %eq.lhs.len336, 281474976710655
  %str.tag338 = lshr i64 %eq.lhs.len336, 48
  %str.immortal339 = icmp eq i64 %str.tag338, 0
  br i1 %str.immortal339, label %str_ok341, label %str_gen_check340

str_overflow_abort326:                            ; preds = %concat.sum.len320
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len325

str_gen_check340:                                 ; preds = %concat.tot.len325
  %arena.gen343 = call ptr @dva_arena_current()
  %arena.gen344 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen343, i32 0, i32 4
  %arena.gen345 = load i64, ptr %arena.gen344, align 8
  %str.tag.match346 = icmp eq i64 %str.tag338, %arena.gen345
  br i1 %str.tag.match346, label %str_ok341, label %str_stale342

str_ok341:                                        ; preds = %str_stale342, %str_gen_check340, %concat.tot.len325
  %eq.rhs.len347 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 0
  %eq.rhs.len348 = load i64, ptr %eq.rhs.len347, align 8
  %eq.rhs.len349 = and i64 %eq.rhs.len348, 281474976710655
  %str.tag350 = lshr i64 %eq.rhs.len348, 48
  %str.immortal351 = icmp eq i64 %str.tag350, 0
  br i1 %str.immortal351, label %str_ok353, label %str_gen_check352

str_stale342:                                     ; preds = %str_gen_check340
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok341

str_gen_check352:                                 ; preds = %str_ok341
  %arena.gen355 = call ptr @dva_arena_current()
  %arena.gen356 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen355, i32 0, i32 4
  %arena.gen357 = load i64, ptr %arena.gen356, align 8
  %str.tag.match358 = icmp eq i64 %str.tag350, %arena.gen357
  br i1 %str.tag.match358, label %str_ok353, label %str_stale354

str_ok353:                                        ; preds = %str_stale354, %str_gen_check352, %str_ok341
  %eq.len359 = icmp eq i64 %eq.lhs.len337, %eq.rhs.len349
  br i1 %eq.len359, label %str.eq.then360, label %str.eq.else361

str_stale354:                                     ; preds = %str_gen_check352
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok353

str.eq.then360:                                   ; preds = %str_ok353
  %eq.lhs.data363 = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 1
  %eq.lhs.data364 = load ptr, ptr %eq.lhs.data363, align 8
  %eq.rhs.data365 = getelementptr inbounds { i64, ptr }, ptr %concat.str332, i32 0, i32 1
  %eq.rhs.data366 = load ptr, ptr %eq.rhs.data365, align 8
  %eq.memcmp367 = call i32 @memcmp(ptr %eq.lhs.data364, ptr %eq.rhs.data366, i64 %eq.lhs.len337)
  %eq.cmp.zero368 = icmp eq i32 %eq.memcmp367, 0
  br label %str.eq.merge362

str.eq.else361:                                   ; preds = %str_ok353
  br label %str.eq.merge362

str.eq.merge362:                                  ; preds = %str.eq.else361, %str.eq.then360
  %str.eq.result369 = phi i1 [ %eq.cmp.zero368, %str.eq.then360 ], [ false, %str.eq.else361 ]
  br label %and.4.exit

choice.then371:                                   ; preds = %or.3.exit
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.1

choice.exit372:                                   ; preds = %or.3.exit
  br label %loop.latch.1
}

define void @"type_env::enter_scope"(ptr %0) #1 {
entry:
  %var.new_idx = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %var.new_scope = alloca ptr, align 8
  %var.parent_idx = alloca i64, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.parent_idx, align 8
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
  %var.load2 = load i64, ptr %var.parent_idx, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 40)
  %arena.cur4 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 64)
  %arena.cur5 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 64)
  %arena.cur6 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 8)
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
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load2, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld9, align 8
  store ptr %rec.alloc, ptr %var.new_scope, align 8
  %var.load10 = load ptr, ptr %var.env, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load10, i32 0, i32 0
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  store ptr %fld.load12, ptr %var.scs, align 8
  %var.load13 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep18, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  store ptr %a.create15, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.scs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query21 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query21, ptr %var.new_idx, align 8
  %var.load22 = load ptr, ptr %var.new_scope, align 8
  %a.load23 = load ptr, ptr %var.scs, align 8
  %a.null24 = icmp eq ptr %a.load23, null
  br i1 %a.null24, label %a.create25, label %a.after26

a.create25:                                       ; preds = %a.after
  %arena.cur27 = call ptr @dva_arena_current()
  %a.create28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 24)
  %arena.cur29 = call ptr @dva_arena_current()
  %a.buf30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 128)
  %a.len.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 0
  store i64 0, ptr %a.len.gep31, align 8
  %a.data.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 1
  store ptr %a.buf30, ptr %a.data.gep32, align 8
  %a.cap.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 2
  store i64 16, ptr %a.cap.gep33, align 8
  store ptr %a.create28, ptr %var.scs, align 8
  br label %a.after26

a.after26:                                        ; preds = %a.create25, %a.after
  %a.load234 = load ptr, ptr %var.scs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after26
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load234, i32 0, i32 0
  %a.len35 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load234, i32 0, i32 2
  %a.cap36 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len35, %a.cap36
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load234)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load234, i32 0, i32 1
  %a.cur.data37 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load234, i32 0, i32 0
  %a.cur.len38 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data37, i64 %a.cur.len38
  %a.elem.p2i = ptrtoint ptr %var.load22 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len38, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load234, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load39 = load ptr, ptr %var.env, align 8
  %var.load40 = load ptr, ptr %var.scs, align 8
  %a.load41 = load ptr, ptr %var.scs, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

a.create43:                                       ; preds = %a.store
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
  store ptr %a.create46, ptr %var.scs, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %a.store
  %a.load252 = load ptr, ptr %var.scs, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load39, i32 0, i32 0
  store ptr %a.load252, ptr %fld.gep53, align 8
  %var.load54 = load ptr, ptr %var.env, align 8
  %var.load55 = load i64, ptr %var.new_idx, align 8
  %fld.gep56 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load54, i32 0, i32 1
  store i64 %var.load55, ptr %fld.gep56, align 8
  %var.load57 = load ptr, ptr %var.env, align 8
  %var.load58 = load ptr, ptr %var.env, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %addtmp = add i64 %fld.load60, 1
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load57, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep61, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit54, %entry
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
  store i64 140, ptr %err.line.gep, align 8
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
  store i64 140, ptr %err.line.gep17, align 8
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
  %arena.cur30 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 40)
  %arena.cur37 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 64)
  %arena.cur38 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 64)
  %arena.cur39 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 8)
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
  %arena.cur40 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld42, align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load43 = load ptr, ptr %var.env, align 8
  %var.load44 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep45 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load44, i32 0, i32 1
  %fld.load46 = load i64, ptr %fld.gep45, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load43, i32 0, i32 1
  store i64 %fld.load46, ptr %fld.gep47, align 8
  %var.load48 = load ptr, ptr %var.env, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load48, i32 0, i32 2
  %fld.load50 = load i64, ptr %fld.gep49, align 8
  %cmptmp51 = icmp sgt i64 %fld.load50, 0
  br i1 %cmptmp51, label %choice.then52, label %choice.else53

choice.then52:                                    ; preds = %choice.exit25
  %var.load55 = load ptr, ptr %var.env, align 8
  %var.load56 = load ptr, ptr %var.env, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load56, i32 0, i32 2
  %fld.load58 = load i64, ptr %fld.gep57, align 8
  %subtmp = sub i64 %fld.load58, 1
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load55, i32 0, i32 2
  store i64 %subtmp, ptr %fld.gep59, align 8
  br label %choice.exit54

choice.else53:                                    ; preds = %choice.exit25
  %var.load60 = load ptr, ptr %var.env, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load60, i32 0, i32 2
  store i64 0, ptr %fld.gep61, align 8
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.else53, %choice.then52
  br label %choice.exit
}

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #1 {
entry:
  %var._272 = alloca ptr, align 8
  %var._271 = alloca ptr, align 8
  %var._270 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after307, %entry
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
  store ptr @str.5.struct, ptr %err.msg.gep15, align 8
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
  %arena.cur30 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 40)
  %arena.cur37 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 64)
  %arena.cur38 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 64)
  %arena.cur39 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 8)
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
  %arena.cur40 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld42, align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load43 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load43, i32 0, i32 0
  %fld.load45 = load ptr, ptr %fld.gep44, align 8
  store ptr %fld.load45, ptr %var.bnds, align 8
  %var.load46 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load46, i32 0, i32 2
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  store ptr %fld.load48, ptr %var.indices, align 8
  %var.load49 = load ptr, ptr %var.indices, align 8
  %var.load50 = load ptr, ptr %var.name, align 8
  %var.load51 = load ptr, ptr %var.bnds, align 8
  %a.load52 = load ptr, ptr %var.bnds, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

a.create54:                                       ; preds = %choice.exit25
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
  store ptr %a.create57, ptr %var.bnds, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %choice.exit25
  %a.load263 = load ptr, ptr %var.bnds, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 0
  %a.len.query64 = load i64, ptr %a.len.query, align 8
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  %m.count65 = load i64, ptr %m.count, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 1
  %m.cap66 = load i64, ptr %m.cap, align 8
  %m.c.plus = add i64 %m.count65, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap66, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins

m.grow:                                           ; preds = %a.after55
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 1
  %m.old.cap67 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 2
  %m.old.keys68 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 3
  %m.old.vals69 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 4
  %m.old.states70 = load ptr, ptr %m.old.states, align 8
  %m.new.cap = mul i64 %m.old.cap67, 2
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur71 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur72 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %m.gv.bytes)
  %arena.cur73 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep74, align 8
  %m.keys.gep75 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep75, align 8
  %m.vals.gep76 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep76, align 8
  %m.states.gep77 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep77, align 8
  %m.count.gep78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  store i64 0, ptr %m.count.gep78, align 8
  br label %m.re.loop

m.ins:                                            ; preds = %m.re.done, %a.after55
  %m.cap121 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 1
  %m.cap122 = load i64, ptr %m.cap121, align 8
  %m.keys123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 2
  %m.keys124 = load ptr, ptr %m.keys123, align 8
  %m.vals125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 3
  %m.vals126 = load ptr, ptr %m.vals125, align 8
  %m.states127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 4
  %m.states128 = load ptr, ptr %m.states127, align 8
  %mk.data129 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %mk.data130 = load ptr, ptr %mk.data129, align 8
  %mk.len131 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %mk.len132 = load i64, ptr %mk.len131, align 8
  %mk.len133 = and i64 %mk.len132, 281474976710655
  %str.tag134 = lshr i64 %mk.len132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap67
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states70, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  br label %m.ins

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys68, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals69, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap79 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 1
  %m.cap80 = load i64, ptr %m.cap79, align 8
  %m.keys81 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 2
  %m.keys82 = load ptr, ptr %m.keys81, align 8
  %m.vals83 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 3
  %m.vals84 = load ptr, ptr %m.vals83, align 8
  %m.states85 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 4
  %m.states86 = load ptr, ptr %m.states85, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data87 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len88 = load i64, ptr %mk.len, align 8
  %mk.len89 = and i64 %mk.len88, 281474976710655
  %str.tag = lshr i64 %mk.len88, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %m.re.ins
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen90 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen91 = load i64, ptr %arena.gen90, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen91
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %m.re.ins
  %hash.str = call i64 @dva_hash_string(ptr %mk.data87, i64 %mk.len89)
  %m.capm1 = sub i64 %m.cap80, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.state.gep = getelementptr i8, ptr %m.states86, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.is.tomb = icmp eq i8 %m.state, 2
  %m.is.free = or i1 %m.is.empty, %m.is.tomb
  br i1 %m.is.free, label %m.empty, label %m.found

m.found:                                          ; preds = %m.loop
  %m.key.slot = getelementptr ptr, ptr %m.keys82, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen92 = load i64, ptr %mk.slen, align 8
  %mk.slen93 = and i64 %mk.slen92, 281474976710655
  %str.tag94 = lshr i64 %mk.slen92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

m.empty:                                          ; preds = %m.loop
  %m.key.slot116 = getelementptr ptr, ptr %m.keys82, i64 %m.idx
  store ptr %m.re.key, ptr %m.key.slot116, align 8
  %m.val.slot117 = getelementptr i64, ptr %m.vals84, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot117, align 8
  store i8 1, ptr %m.state.gep, align 1
  %m.count118 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  %m.count119 = load i64, ptr %m.count118, align 8
  %m.count.next = add i64 %m.count119, 1
  %m.count.gep120 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep120, align 8
  br label %m.done

m.done:                                           ; preds = %m.empty, %m.overwrite
  br label %m.re.cont

str_gen_check96:                                  ; preds = %m.found
  %arena.gen99 = call ptr @dva_arena_current()
  %arena.gen100 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen99, i32 0, i32 4
  %arena.gen101 = load i64, ptr %arena.gen100, align 8
  %str.tag.match102 = icmp eq i64 %str.tag94, %arena.gen101
  br i1 %str.tag.match102, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata103 = load ptr, ptr %mk.sdata, align 8
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen104 = load i64, ptr %mk.nlen, align 8
  %mk.nlen105 = and i64 %mk.nlen104, 281474976710655
  %str.tag106 = lshr i64 %mk.nlen104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale98:                                      ; preds = %str_gen_check96
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str_gen_check108:                                 ; preds = %str_ok97
  %arena.gen111 = call ptr @dva_arena_current()
  %arena.gen112 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen111, i32 0, i32 4
  %arena.gen113 = load i64, ptr %arena.gen112, align 8
  %str.tag.match114 = icmp eq i64 %str.tag106, %arena.gen113
  br i1 %str.tag.match114, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok97
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata115 = load ptr, ptr %mk.ndata, align 8
  %mk.lenseq = icmp eq i64 %mk.slen93, %mk.nlen105
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata103, ptr %mk.ndata115, i64 %mk.nlen105)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  %mk.eq = and i1 %mk.lenseq, %mk.cmpeq
  br i1 %mk.eq, label %m.overwrite, label %m.next

str_stale110:                                     ; preds = %str_gen_check108
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

m.next:                                           ; preds = %str_ok109
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  br label %m.loop

m.overwrite:                                      ; preds = %str_ok109
  %m.val.slot = getelementptr i64, ptr %m.vals84, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot, align 8
  br label %m.done

str_gen_check136:                                 ; preds = %m.ins
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %m.ins
  %hash.str143 = call i64 @dva_hash_string(ptr %mk.data130, i64 %mk.len133)
  %m.capm1144 = sub i64 %m.cap122, 1
  %m.idx0145 = and i64 %hash.str143, %m.capm1144
  br label %m.loop146

str_stale138:                                     ; preds = %str_gen_check136
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

m.loop146:                                        ; preds = %m.next190, %str_ok137
  %m.idx150 = phi i64 [ %m.idx0145, %str_ok137 ], [ %m.idx.next194, %m.next190 ]
  %m.state.gep151 = getelementptr i8, ptr %m.states128, i64 %m.idx150
  %m.state152 = load i8, ptr %m.state.gep151, align 1
  %m.is.empty153 = icmp eq i8 %m.state152, 0
  %m.is.tomb154 = icmp eq i8 %m.state152, 2
  %m.is.free155 = or i1 %m.is.empty153, %m.is.tomb154
  br i1 %m.is.free155, label %m.empty148, label %m.found147

m.found147:                                       ; preds = %m.loop146
  %m.key.slot156 = getelementptr ptr, ptr %m.keys124, i64 %m.idx150
  %mk.stored157 = load ptr, ptr %m.key.slot156, align 8
  %mk.slen158 = getelementptr inbounds { i64, ptr }, ptr %mk.stored157, i32 0, i32 0
  %mk.slen159 = load i64, ptr %mk.slen158, align 8
  %mk.slen160 = and i64 %mk.slen159, 281474976710655
  %str.tag161 = lshr i64 %mk.slen159, 48
  %str.immortal162 = icmp eq i64 %str.tag161, 0
  br i1 %str.immortal162, label %str_ok164, label %str_gen_check163

m.empty148:                                       ; preds = %m.loop146
  %m.key.slot195 = getelementptr ptr, ptr %m.keys124, i64 %m.idx150
  store ptr %var.load50, ptr %m.key.slot195, align 8
  %m.val.slot196 = getelementptr i64, ptr %m.vals126, i64 %m.idx150
  store i64 %a.len.query64, ptr %m.val.slot196, align 8
  store i8 1, ptr %m.state.gep151, align 1
  %m.count197 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  %m.count198 = load i64, ptr %m.count197, align 8
  %m.count.next199 = add i64 %m.count198, 1
  %m.count.gep200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr }, ptr %var.load49, i32 0, i32 0
  store i64 %m.count.next199, ptr %m.count.gep200, align 8
  br label %m.done149

m.done149:                                        ; preds = %m.empty148, %m.overwrite191
  %var.load201 = load ptr, ptr %var.name, align 8
  %var.load202 = load ptr, ptr %var.ut, align 8
  %var.load203 = load ptr, ptr %var.ti, align 8
  %var.load204 = load i1, ptr %var.is_mut, align 1
  %var.load205 = load ptr, ptr %var.env, align 8
  %fld.gep206 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load205, i32 0, i32 2
  %fld.load207 = load i64, ptr %fld.gep206, align 8
  %arena.cur208 = call ptr @dva_arena_current()
  %rec.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld210 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 0
  store ptr %var.load201, ptr %rec.fld210, align 8
  %rec.fld211 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 1
  store ptr %var.load202, ptr %rec.fld211, align 8
  %rec.fld212 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 2
  store ptr %var.load203, ptr %rec.fld212, align 8
  %rec.fld213 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 3
  store i1 %var.load204, ptr %rec.fld213, align 1
  %rec.fld214 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 4
  store i1 false, ptr %rec.fld214, align 1
  %rec.fld215 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc209, i32 0, i32 5
  store i64 %fld.load207, ptr %rec.fld215, align 8
  %a.load216 = load ptr, ptr %var.bnds, align 8
  %a.null217 = icmp eq ptr %a.load216, null
  br i1 %a.null217, label %a.create218, label %a.after219

str_gen_check163:                                 ; preds = %m.found147
  %arena.gen166 = call ptr @dva_arena_current()
  %arena.gen167 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen166, i32 0, i32 4
  %arena.gen168 = load i64, ptr %arena.gen167, align 8
  %str.tag.match169 = icmp eq i64 %str.tag161, %arena.gen168
  br i1 %str.tag.match169, label %str_ok164, label %str_stale165

str_ok164:                                        ; preds = %str_stale165, %str_gen_check163, %m.found147
  %mk.sdata170 = getelementptr inbounds { i64, ptr }, ptr %mk.stored157, i32 0, i32 1
  %mk.sdata171 = load ptr, ptr %mk.sdata170, align 8
  %mk.nlen172 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %mk.nlen173 = load i64, ptr %mk.nlen172, align 8
  %mk.nlen174 = and i64 %mk.nlen173, 281474976710655
  %str.tag175 = lshr i64 %mk.nlen173, 48
  %str.immortal176 = icmp eq i64 %str.tag175, 0
  br i1 %str.immortal176, label %str_ok178, label %str_gen_check177

str_stale165:                                     ; preds = %str_gen_check163
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok164

str_gen_check177:                                 ; preds = %str_ok164
  %arena.gen180 = call ptr @dva_arena_current()
  %arena.gen181 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen180, i32 0, i32 4
  %arena.gen182 = load i64, ptr %arena.gen181, align 8
  %str.tag.match183 = icmp eq i64 %str.tag175, %arena.gen182
  br i1 %str.tag.match183, label %str_ok178, label %str_stale179

str_ok178:                                        ; preds = %str_stale179, %str_gen_check177, %str_ok164
  %mk.ndata184 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %mk.ndata185 = load ptr, ptr %mk.ndata184, align 8
  %mk.lenseq186 = icmp eq i64 %mk.slen160, %mk.nlen174
  %mk.memcmp187 = call i32 @memcmp(ptr %mk.sdata171, ptr %mk.ndata185, i64 %mk.nlen174)
  %mk.cmpeq188 = icmp eq i32 %mk.memcmp187, 0
  %mk.eq189 = and i1 %mk.lenseq186, %mk.cmpeq188
  br i1 %mk.eq189, label %m.overwrite191, label %m.next190

str_stale179:                                     ; preds = %str_gen_check177
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok178

m.next190:                                        ; preds = %str_ok178
  %m.idx.add193 = add i64 %m.idx150, 1
  %m.idx.next194 = and i64 %m.idx.add193, %m.capm1144
  br label %m.loop146

m.overwrite191:                                   ; preds = %str_ok178
  %m.val.slot192 = getelementptr i64, ptr %m.vals126, i64 %m.idx150
  store i64 %a.len.query64, ptr %m.val.slot192, align 8
  br label %m.done149

a.create218:                                      ; preds = %m.done149
  %arena.cur220 = call ptr @dva_arena_current()
  %a.create221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 24)
  %arena.cur222 = call ptr @dva_arena_current()
  %a.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 128)
  %a.len.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 0
  store i64 0, ptr %a.len.gep224, align 8
  %a.data.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 1
  store ptr %a.buf223, ptr %a.data.gep225, align 8
  %a.cap.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 2
  store i64 16, ptr %a.cap.gep226, align 8
  store ptr %a.create221, ptr %var.bnds, align 8
  br label %a.after219

a.after219:                                       ; preds = %a.create218, %m.done149
  %a.load2227 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after219
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.len228 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 2
  %a.cap229 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len228, %a.cap229
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2227)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 1
  %a.cur.data230 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.cur.len231 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data230, i64 %a.cur.len231
  %a.elem.p2i = ptrtoint ptr %rec.alloc209 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len231, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load232 = load ptr, ptr %var.cur_sc, align 8
  %var.load233 = load ptr, ptr %var.bnds, align 8
  %a.load234 = load ptr, ptr %var.bnds, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

a.create236:                                      ; preds = %a.store
  %arena.cur238 = call ptr @dva_arena_current()
  %a.create239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 24)
  %arena.cur240 = call ptr @dva_arena_current()
  %a.buf241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 128)
  %a.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 0
  store i64 0, ptr %a.len.gep242, align 8
  %a.data.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 1
  store ptr %a.buf241, ptr %a.data.gep243, align 8
  %a.cap.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep244, align 8
  store ptr %a.create239, ptr %var.bnds, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %a.store
  %a.load2245 = load ptr, ptr %var.bnds, align 8
  %fld.gep246 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load232, i32 0, i32 0
  store ptr %a.load2245, ptr %fld.gep246, align 8
  %var.load247 = load ptr, ptr %var.scs, align 8
  %a.load248 = load ptr, ptr %var.scs, align 8
  %a.null249 = icmp eq ptr %a.load248, null
  br i1 %a.null249, label %a.create250, label %a.after251

a.create250:                                      ; preds = %a.after237
  %arena.cur252 = call ptr @dva_arena_current()
  %a.create253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 24)
  %arena.cur254 = call ptr @dva_arena_current()
  %a.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 128)
  %a.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 0
  store i64 0, ptr %a.len.gep256, align 8
  %a.data.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 1
  store ptr %a.buf255, ptr %a.data.gep257, align 8
  %a.cap.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 2
  store i64 16, ptr %a.cap.gep258, align 8
  store ptr %a.create253, ptr %var.scs, align 8
  br label %a.after251

a.after251:                                       ; preds = %a.create250, %a.after237
  %a.load2259 = load ptr, ptr %var.scs, align 8
  %var.load260 = load i64, ptr %var.cur_idx, align 8
  %var.load261 = load ptr, ptr %var.cur_sc, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2259, i32 0, i32 1
  %a.wr.data262 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep263 = getelementptr i64, ptr %a.wr.data262, i64 %var.load260
  %a.wr.p2i = ptrtoint ptr %var.load261 to i64
  store i64 %a.wr.p2i, ptr %a.elem.gep263, align 8
  %arena.cur264 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep265 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep265, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep266 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep266, align 8
  br i1 %is.pos, label %choice.then267, label %choice.else268

choice.then267:                                   ; preds = %a.after251
  br label %choice.exit269

choice.else268:                                   ; preds = %a.after251
  store ptr %payload.ptr, ptr %var._270, align 8
  store ptr %payload.ptr, ptr %var._271, align 8
  store ptr %payload.ptr, ptr %var._272, align 8
  %err.code.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep273, align 8
  %err.msg.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep274, align 8
  %err.file.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep275, align 8
  %err.line.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep276, align 8
  %err.col.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep277, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len278 = load i64, ptr %err.msg.len, align 8
  %err.msg.len279 = and i64 %err.msg.len278, 281474976710655
  %str.tag280 = lshr i64 %err.msg.len278, 48
  %str.immortal281 = icmp eq i64 %str.tag280, 0
  br i1 %str.immortal281, label %str_ok283, label %str_gen_check282

choice.exit269:                                   ; preds = %err.abort, %choice.then267
  %var.load302 = load ptr, ptr %var.env, align 8
  %var.load303 = load ptr, ptr %var.scs, align 8
  %a.load304 = load ptr, ptr %var.scs, align 8
  %a.null305 = icmp eq ptr %a.load304, null
  br i1 %a.null305, label %a.create306, label %a.after307

str_gen_check282:                                 ; preds = %choice.else268
  %arena.gen285 = call ptr @dva_arena_current()
  %arena.gen286 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen285, i32 0, i32 4
  %arena.gen287 = load i64, ptr %arena.gen286, align 8
  %str.tag.match288 = icmp eq i64 %str.tag280, %arena.gen287
  br i1 %str.tag.match288, label %str_ok283, label %str_stale284

str_ok283:                                        ; preds = %str_stale284, %str_gen_check282, %choice.else268
  %err.msg.len32 = trunc i64 %err.msg.len279 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data289 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len290 = load i64, ptr %err.file.len, align 8
  %err.file.len291 = and i64 %err.file.len290, 281474976710655
  %str.tag292 = lshr i64 %err.file.len290, 48
  %str.immortal293 = icmp eq i64 %str.tag292, 0
  br i1 %str.immortal293, label %str_ok295, label %str_gen_check294

str_stale284:                                     ; preds = %str_gen_check282
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok283

str_gen_check294:                                 ; preds = %str_ok283
  %arena.gen297 = call ptr @dva_arena_current()
  %arena.gen298 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen297, i32 0, i32 4
  %arena.gen299 = load i64, ptr %arena.gen298, align 8
  %str.tag.match300 = icmp eq i64 %str.tag292, %arena.gen299
  br i1 %str.tag.match300, label %str_ok295, label %str_stale296

str_ok295:                                        ; preds = %str_stale296, %str_gen_check294, %str_ok283
  %err.file.len32 = trunc i64 %err.file.len291 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data301 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale296:                                     ; preds = %str_gen_check294
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok295

err.thread:                                       ; preds = %str_ok295
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok295
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data289, i32 %err.file.len32, ptr %err.file.data301, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit269

a.create306:                                      ; preds = %choice.exit269
  %arena.cur308 = call ptr @dva_arena_current()
  %a.create309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 24)
  %arena.cur310 = call ptr @dva_arena_current()
  %a.buf311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 128)
  %a.len.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 0
  store i64 0, ptr %a.len.gep312, align 8
  %a.data.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 1
  store ptr %a.buf311, ptr %a.data.gep313, align 8
  %a.cap.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 2
  store i64 16, ptr %a.cap.gep314, align 8
  store ptr %a.create309, ptr %var.scs, align 8
  br label %a.after307

a.after307:                                       ; preds = %a.create306, %choice.exit269
  %a.load2315 = load ptr, ptr %var.scs, align 8
  %fld.gep316 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load302, i32 0, i32 0
  store ptr %a.load2315, ptr %fld.gep316, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 3
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
  %a.elem.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 3
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
  br i1 %cmptmp20, label %and.5.then, label %and.5.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.5.then:                                       ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.name, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %str.tag25 = lshr i64 %s.read.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

and.5.else:                                       ; preds = %idx_ok
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %idx_ok40
  %and.5.phi = phi i1 [ %cmptmp46, %idx_ok40 ], [ %cmptmp20, %and.5.else ]
  br i1 %and.5.phi, label %choice.then47, label %choice.else48

str_gen_check27:                                  ; preds = %and.5.then
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %and.5.then
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
  br label %and.5.exit

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok28
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then47:                                    ; preds = %and.5.exit
  br label %choice.exit49

choice.else48:                                    ; preds = %and.5.exit
  %var.load50 = load ptr, ptr %var.name, align 8
  %var.load51 = load i64, ptr %var.i, align 8
  %addtmp52 = add i64 %var.load51, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load50, i64 %addtmp52)
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else48, %choice.then47
  %choice.res = phi i1 [ true, %choice.then47 ], [ %call.res, %choice.else48 ]
  br label %choice.exit
}

define ptr @"type_env::decl_module"(ptr %0, i64 %1) #1 {
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
  %choice.res69 = phi ptr [ %choice.res, %choice.exit49 ], [ @str.0.struct, %choice.else ]
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
  br i1 %cmptmp20, label %and.6.then, label %and.6.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.6.then:                                       ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.name, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %str.tag25 = lshr i64 %s.read.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

and.6.else:                                       ; preds = %idx_ok
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %idx_ok40
  %and.6.phi = phi i1 [ %cmptmp46, %idx_ok40 ], [ %cmptmp20, %and.6.else ]
  br i1 %and.6.phi, label %choice.then47, label %choice.else48

str_gen_check27:                                  ; preds = %and.6.then
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %and.6.then
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
  br label %and.6.exit

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok28
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then47:                                    ; preds = %and.6.exit
  %var.load50 = load ptr, ptr %var.name, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

choice.else48:                                    ; preds = %and.6.exit
  %var.load66 = load ptr, ptr %var.name, align 8
  %var.load67 = load i64, ptr %var.i, align 8
  %addtmp68 = add i64 %var.load67, 1
  %call.res = call ptr @"type_env::decl_module"(ptr %var.load66, i64 %addtmp68)
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

define void @"type_env::set_current_module"(ptr %0, ptr %1) #1 {
entry:
  %var.mod_name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.mod_name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.mod_name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit26, %choice.then
  %choice.res46 = phi ptr [ null, %choice.then ], [ %call.res, %choice.exit26 ]
  ret ptr %choice.res46

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
  store i64 198, ptr %err.line.gep, align 8
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
  store i64 198, ptr %err.line.gep17, align 8
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
  %arena.cur31 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  %arena.cur37 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 40)
  %arena.cur38 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 64)
  %arena.cur39 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 64)
  %arena.cur40 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 8)
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
  %arena.cur41 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld43, align 8
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %rec.alloc, %choice.else25 ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load44 = load ptr, ptr %var.cur_sc, align 8
  %var.load45 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_scope"(ptr %var.load44, ptr %var.load45)
  br label %choice.exit
}

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #1 {
entry:
  %var._172 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._168 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._102 = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var._100 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.else, %choice.exit165
  %choice.res174 = phi ptr [ %choice.res173, %choice.exit165 ], [ null, %choice.else ]
  ret ptr %choice.res174

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
  %var.load132 = load ptr, ptr %var.scope, align 8
  %fld.gep133 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load132, i32 0, i32 0
  %fld.load134 = load ptr, ptr %fld.gep133, align 8
  %var.load135 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load134, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

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

a.rd.check:                                       ; preds = %choice.exit97
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load134, i32 0, i32 0
  %a.rd.len136 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load135, 0
  %a.rd.lt = icmp slt i64 %var.load135, %a.rd.len136
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load134, i32 0, i32 1
  %a.rd.data137 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data137, i64 %var.load135
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.exit97
  %arena.cur138 = call ptr @dva_arena_current()
  %err.alloc139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 56)
  %err.code.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 0
  store i64 4011, ptr %err.code.gep140, align 8
  %err.msg.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep141, align 8
  %err.file.gep142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep142, align 8
  %err.line.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 3
  store i64 0, ptr %err.line.gep143, align 8
  %err.col.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 4
  store i64 0, ptr %err.col.gep144, align 8
  %err.ctx.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc139, i32 0, i32 5
  %err.ctx0.gep146 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep145, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep146, align 8
  %err.ctx1.gep147 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep145, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep147, align 8
  %err.p2i148 = ptrtoint ptr %err.alloc139 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur149 = call ptr @dva_arena_current()
  %err.alloc150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 56)
  %err.code.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 0
  store i64 4011, ptr %err.code.gep151, align 8
  %err.msg.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep152, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep153, align 8
  %err.line.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 3
  store i64 0, ptr %err.line.gep154, align 8
  %err.col.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 4
  store i64 0, ptr %err.col.gep155, align 8
  %err.ctx.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 5
  %err.ctx0.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 0
  store i64 %var.load135, ptr %err.ctx0.gep157, align 8
  %err.ctx1.gep158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 1
  store i64 %a.rd.len136, ptr %err.ctx1.gep158, align 8
  %err.p2i159 = ptrtoint ptr %err.alloc150 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i148, %a.rd.err.null ], [ %err.p2i159, %a.rd.err.oob ]
  %ram.tag160 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay161 = insertvalue { i1, i64 } %ram.tag160, i64 %a.rd.pay, 1
  %ram.tag162 = extractvalue { i1, i64 } %ram.pay161, 0
  br i1 %ram.tag162, label %choice.then163, label %choice.else164

choice.then163:                                   ; preds = %a.rd.done
  %ram.pay166 = extractvalue { i1, i64 } %ram.pay161, 1
  %pay.ptr167 = inttoptr i64 %ram.pay166 to ptr
  store ptr %pay.ptr167, ptr %var._168, align 8
  store ptr %pay.ptr167, ptr %var.binding, align 8
  %var.load169 = load ptr, ptr %var.binding, align 8
  br label %choice.exit165

choice.else164:                                   ; preds = %a.rd.done
  %ram.pay170 = extractvalue { i1, i64 } %ram.pay161, 1
  %pay.ptr171 = inttoptr i64 %ram.pay170 to ptr
  store ptr %pay.ptr171, ptr %var._172, align 8
  br label %choice.exit165

choice.exit165:                                   ; preds = %choice.else164, %choice.then163
  %choice.res173 = phi ptr [ %var.load169, %choice.then163 ], [ null, %choice.else164 ]
  br label %choice.exit
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._112 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit24, %choice.then
  %choice.res211 = phi ptr [ %var.load3, %choice.then ], [ %choice.res210, %choice.exit24 ]
  ret ptr %choice.res211

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen7 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen8 = load i64, ptr %arena.gen7, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen8
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.gen15 = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen15, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match18 = icmp eq i64 %str.tag10, %arena.gen17
  br i1 %str.tag.match18, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.7.then, label %and.7.else

and.7.then:                                       ; preds = %str.eq.merge
  %var.load20 = load ptr, ptr %var.name, align 8
  %call.res21 = call i1 @"type_env::name_is_qualified"(ptr %var.load20, i64 0)
  %nottmp = xor i1 %call.res21, true
  br label %and.7.exit

and.7.else:                                       ; preds = %str.eq.merge
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %and.7.then
  %and.7.phi = phi i1 [ %nottmp, %and.7.then ], [ %str.neq, %and.7.else ]
  br i1 %and.7.phi, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %and.7.exit
  %var.load25 = load ptr, ptr %var.env, align 8
  %var.load26 = load ptr, ptr %var.env, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load26, i32 0, i32 8
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %concat.lhs29 = load i64, ptr %concat.lhs, align 8
  %concat.lhs30 = and i64 %concat.lhs29, 281474976710655
  %str.tag31 = lshr i64 %concat.lhs29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.else23:                                    ; preds = %and.7.exit
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.exit111
  %choice.res210 = phi ptr [ %choice.res, %choice.exit111 ], [ null, %choice.else23 ]
  br label %choice.exit

str_gen_check33:                                  ; preds = %choice.then22
  %arena.gen36 = call ptr @dva_arena_current()
  %arena.gen37 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen36, i32 0, i32 4
  %arena.gen38 = load i64, ptr %arena.gen37, align 8
  %str.tag.match39 = icmp eq i64 %str.tag31, %arena.gen38
  br i1 %str.tag.match39, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then22
  %concat.lhs40 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %concat.lhs41 = load ptr, ptr %concat.lhs40, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs42 = and i64 %concat.rhs, 281474976710655
  %str.tag43 = lshr i64 %concat.rhs, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check45:                                  ; preds = %str_ok34
  %arena.gen48 = call ptr @dva_arena_current()
  %arena.gen49 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen48, i32 0, i32 4
  %arena.gen50 = load i64, ptr %arena.gen49, align 8
  %str.tag.match51 = icmp eq i64 %str.tag43, %arena.gen50
  br i1 %str.tag.match51, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok34
  %concat.rhs52 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs30, i64 %concat.rhs42)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len53

str_stale47:                                      ; preds = %str_gen_check45
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

concat.sum.len53:                                 ; preds = %str_overflow_abort, %str_ok46
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort:                               ; preds = %str_ok46
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len53
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs41, i64 %concat.lhs30, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs52, i64 %concat.rhs42, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load59 = load ptr, ptr %var.name, align 8
  %concat.lhs60 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs61 = load i64, ptr %concat.lhs60, align 8
  %concat.lhs62 = and i64 %concat.lhs61, 281474976710655
  %str.tag63 = lshr i64 %concat.lhs61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

str_overflow_abort57:                             ; preds = %concat.sum.len53
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56

str_gen_check65:                                  ; preds = %concat.tot.len56
  %arena.gen68 = call ptr @dva_arena_current()
  %arena.gen69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen68, i32 0, i32 4
  %arena.gen70 = load i64, ptr %arena.gen69, align 8
  %str.tag.match71 = icmp eq i64 %str.tag63, %arena.gen70
  br i1 %str.tag.match71, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %concat.tot.len56
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale67:                                      ; preds = %str_gen_check65
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str_gen_check79:                                  ; preds = %str_ok66
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok66
  %concat.rhs86 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %concat.rhs87 = load ptr, ptr %concat.rhs86, align 8
  %concat.sum.len88 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs62, i64 %concat.rhs76)
  %sum89 = extractvalue { i64, i1 } %concat.sum.len88, 0
  %ovf90 = extractvalue { i64, i1 } %concat.sum.len88, 1
  br i1 %ovf90, label %str_overflow_abort92, label %concat.sum.len91

str_stale81:                                      ; preds = %str_gen_check79
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len91:                                 ; preds = %str_overflow_abort92, %str_ok80
  %concat.tot.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum89, i64 1)
  %sum94 = extractvalue { i64, i1 } %concat.tot.len93, 0
  %ovf95 = extractvalue { i64, i1 } %concat.tot.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %concat.tot.len96

str_overflow_abort92:                             ; preds = %str_ok80
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len91

concat.tot.len96:                                 ; preds = %str_overflow_abort97, %concat.sum.len91
  %arena.cur98 = call ptr @dva_arena_current()
  %concat.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 %sum94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf99, ptr align 1 %concat.lhs73, i64 %concat.lhs62, i1 false)
  %concat.mid100 = getelementptr i8, ptr %concat.buf99, i64 %concat.lhs62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid100, ptr align 1 %concat.rhs87, i64 %concat.rhs76, i1 false)
  %concat.nul101 = getelementptr i8, ptr %concat.buf99, i64 %sum89
  store i8 0, ptr %concat.nul101, align 1
  %arena.cur102 = call ptr @dva_arena_current()
  %concat.str103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 0
  store i64 %sum89, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 1
  store ptr %concat.buf99, ptr %str.build.data.gep105, align 8
  %call.res106 = call ptr @"type_env::lookup_local_exact"(ptr %var.load25, ptr %concat.str103)
  store ptr %call.res106, ptr %var.pub, align 8
  %var.load107 = load ptr, ptr %var.pub, align 8
  %niche.ne.null108 = icmp ne ptr %var.load107, null
  br i1 %niche.ne.null108, label %choice.then109, label %choice.else110

str_overflow_abort97:                             ; preds = %concat.sum.len91
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len96

choice.then109:                                   ; preds = %concat.tot.len96
  store ptr %var.load107, ptr %var._112, align 8
  store ptr %var.load107, ptr %var.p, align 8
  %var.load113 = load ptr, ptr %var.p, align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %concat.tot.len96
  %var.load114 = load ptr, ptr %var.env, align 8
  %var.load115 = load ptr, ptr %var.env, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load115, i32 0, i32 8
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %concat.lhs118 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %concat.lhs119 = load i64, ptr %concat.lhs118, align 8
  %concat.lhs120 = and i64 %concat.lhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.lhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

choice.exit111:                                   ; preds = %concat.tot.len199, %choice.then109
  %choice.res = phi ptr [ %var.load113, %choice.then109 ], [ %call.res209, %concat.tot.len199 ]
  br label %choice.exit24

str_gen_check123:                                 ; preds = %choice.else110
  %arena.gen126 = call ptr @dva_arena_current()
  %arena.gen127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen126, i32 0, i32 4
  %arena.gen128 = load i64, ptr %arena.gen127, align 8
  %str.tag.match129 = icmp eq i64 %str.tag121, %arena.gen128
  br i1 %str.tag.match129, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %choice.else110
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.7.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale125:                                     ; preds = %str_gen_check123
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

str_gen_check136:                                 ; preds = %str_ok124
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok124
  %concat.rhs143 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs120, i64 %concat.rhs133)
  %sum145 = extractvalue { i64, i1 } %concat.sum.len144, 0
  %ovf146 = extractvalue { i64, i1 } %concat.sum.len144, 1
  br i1 %ovf146, label %str_overflow_abort148, label %concat.sum.len147

str_stale138:                                     ; preds = %str_gen_check136
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len147:                                ; preds = %str_overflow_abort148, %str_ok137
  %concat.tot.len149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum145, i64 1)
  %sum150 = extractvalue { i64, i1 } %concat.tot.len149, 0
  %ovf151 = extractvalue { i64, i1 } %concat.tot.len149, 1
  br i1 %ovf151, label %str_overflow_abort153, label %concat.tot.len152

str_overflow_abort148:                            ; preds = %str_ok137
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len147

concat.tot.len152:                                ; preds = %str_overflow_abort153, %concat.sum.len147
  %arena.cur154 = call ptr @dva_arena_current()
  %concat.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 %sum150)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf155, ptr align 1 %concat.lhs131, i64 %concat.lhs120, i1 false)
  %concat.mid156 = getelementptr i8, ptr %concat.buf155, i64 %concat.lhs120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid156, ptr align 1 %concat.rhs143, i64 %concat.rhs133, i1 false)
  %concat.nul157 = getelementptr i8, ptr %concat.buf155, i64 %sum145
  store i8 0, ptr %concat.nul157, align 1
  %arena.cur158 = call ptr @dva_arena_current()
  %concat.str159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  %str.build.len.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 0
  store i64 %sum145, ptr %str.build.len.gep160, align 8
  %str.build.data.gep161 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 1
  store ptr %concat.buf155, ptr %str.build.data.gep161, align 8
  %var.load162 = load ptr, ptr %var.name, align 8
  %concat.lhs163 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 0
  %concat.lhs164 = load i64, ptr %concat.lhs163, align 8
  %concat.lhs165 = and i64 %concat.lhs164, 281474976710655
  %str.tag166 = lshr i64 %concat.lhs164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

str_overflow_abort153:                            ; preds = %concat.sum.len147
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len152

str_gen_check168:                                 ; preds = %concat.tot.len152
  %arena.gen171 = call ptr @dva_arena_current()
  %arena.gen172 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen171, i32 0, i32 4
  %arena.gen173 = load i64, ptr %arena.gen172, align 8
  %str.tag.match174 = icmp eq i64 %str.tag166, %arena.gen173
  br i1 %str.tag.match174, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %concat.tot.len152
  %concat.lhs175 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 1
  %concat.lhs176 = load ptr, ptr %concat.lhs175, align 8
  %concat.rhs177 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %concat.rhs178 = load i64, ptr %concat.rhs177, align 8
  %concat.rhs179 = and i64 %concat.rhs178, 281474976710655
  %str.tag180 = lshr i64 %concat.rhs178, 48
  %str.immortal181 = icmp eq i64 %str.tag180, 0
  br i1 %str.immortal181, label %str_ok183, label %str_gen_check182

str_stale170:                                     ; preds = %str_gen_check168
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str_gen_check182:                                 ; preds = %str_ok169
  %arena.gen185 = call ptr @dva_arena_current()
  %arena.gen186 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen185, i32 0, i32 4
  %arena.gen187 = load i64, ptr %arena.gen186, align 8
  %str.tag.match188 = icmp eq i64 %str.tag180, %arena.gen187
  br i1 %str.tag.match188, label %str_ok183, label %str_stale184

str_ok183:                                        ; preds = %str_stale184, %str_gen_check182, %str_ok169
  %concat.rhs189 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %concat.rhs190 = load ptr, ptr %concat.rhs189, align 8
  %concat.sum.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs165, i64 %concat.rhs179)
  %sum192 = extractvalue { i64, i1 } %concat.sum.len191, 0
  %ovf193 = extractvalue { i64, i1 } %concat.sum.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %concat.sum.len194

str_stale184:                                     ; preds = %str_gen_check182
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok183

concat.sum.len194:                                ; preds = %str_overflow_abort195, %str_ok183
  %concat.tot.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum192, i64 1)
  %sum197 = extractvalue { i64, i1 } %concat.tot.len196, 0
  %ovf198 = extractvalue { i64, i1 } %concat.tot.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %concat.tot.len199

str_overflow_abort195:                            ; preds = %str_ok183
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len194

concat.tot.len199:                                ; preds = %str_overflow_abort200, %concat.sum.len194
  %arena.cur201 = call ptr @dva_arena_current()
  %concat.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 %sum197)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf202, ptr align 1 %concat.lhs176, i64 %concat.lhs165, i1 false)
  %concat.mid203 = getelementptr i8, ptr %concat.buf202, i64 %concat.lhs165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid203, ptr align 1 %concat.rhs190, i64 %concat.rhs179, i1 false)
  %concat.nul204 = getelementptr i8, ptr %concat.buf202, i64 %sum192
  store i8 0, ptr %concat.nul204, align 1
  %arena.cur205 = call ptr @dva_arena_current()
  %concat.str206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 16)
  %str.build.len.gep207 = getelementptr inbounds { i64, ptr }, ptr %concat.str206, i32 0, i32 0
  store i64 %sum192, ptr %str.build.len.gep207, align 8
  %str.build.data.gep208 = getelementptr inbounds { i64, ptr }, ptr %concat.str206, i32 0, i32 1
  store ptr %concat.buf202, ptr %str.build.data.gep208, align 8
  %call.res209 = call ptr @"type_env::lookup_local_exact"(ptr %var.load114, ptr %concat.str206)
  br label %choice.exit111

str_overflow_abort200:                            ; preds = %concat.sum.len194
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len199
}

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._102 = alloca i64, align 8
  %var._i101 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %"var.g_found'" = alloca ptr, align 8
  %var.gls = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._64 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %"var.curr'", align 8
  store ptr null, ptr %"var.found'", align 8
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
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
  %var.load73 = load ptr, ptr %"var.found'", align 8
  %niche.ne.null74 = icmp ne ptr %var.load73, null
  br i1 %niche.ne.null74, label %choice.then75, label %choice.else76

choice.then:                                      ; preds = %loop.body.8
  br label %loop.exit.8

choice.else:                                      ; preds = %loop.body.8
  %var.load10 = load ptr, ptr %var.scs, align 8
  %a.load11 = load ptr, ptr %var.scs, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

choice.exit:                                      ; preds = %choice.exit69
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
  store i64 237, ptr %err.line.gep, align 8
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
  store i64 237, ptr %err.line.gep32, align 8
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
  %arena.cur47 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur48 = call ptr @dva_arena_current()
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  %arena.cur53 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 40)
  %arena.cur54 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 64)
  %arena.cur55 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 64)
  %arena.cur56 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 8)
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
  %arena.cur57 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld59, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res = phi ptr [ %pay.ptr, %choice.then39 ], [ %rec.alloc, %choice.else40 ]
  store ptr %choice.res, ptr %var.sc, align 8
  %var.load60 = load ptr, ptr %var.sc, align 8
  %var.load61 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_scope"(ptr %var.load60, ptr %var.load61)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then62, label %choice.exit63

choice.then62:                                    ; preds = %choice.exit41
  store ptr %call.res, ptr %var._64, align 8
  store ptr %call.res, ptr %var.binding, align 8
  %var.load65 = load ptr, ptr %var.binding, align 8
  store ptr %var.load65, ptr %"var.found'", align 8
  store i64 -1, ptr %"var.curr'", align 8
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.then62, %choice.exit41
  %var.load66 = load i64, ptr %"var.curr'", align 8
  %cmptmp67 = icmp sge i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %choice.exit63
  %var.load70 = load ptr, ptr %var.sc, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load70, i32 0, i32 1
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  store i64 %fld.load72, ptr %"var.curr'", align 8
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.then68, %choice.exit63
  br label %choice.exit

choice.then75:                                    ; preds = %loop.exit.8
  store ptr %var.load73, ptr %var._78, align 8
  %var.load79 = load ptr, ptr %"var.found'", align 8
  br label %choice.exit77

choice.else76:                                    ; preds = %loop.exit.8
  %var.load80 = load ptr, ptr %var.env, align 8
  %fld.gep81 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load80, i32 0, i32 3
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  store ptr %fld.load82, ptr %var.gls, align 8
  store ptr null, ptr %"var.g_found'", align 8
  %var.load83 = load ptr, ptr %var.gls, align 8
  %a.load84 = load ptr, ptr %var.gls, align 8
  %a.null85 = icmp eq ptr %a.load84, null
  br i1 %a.null85, label %a.create86, label %a.after87

choice.exit77:                                    ; preds = %loop.exit.9, %choice.then75
  %choice.res230 = phi ptr [ %var.load79, %choice.then75 ], [ %var.load229, %loop.exit.9 ]
  ret ptr %choice.res230

a.create86:                                       ; preds = %choice.else76
  %arena.cur88 = call ptr @dva_arena_current()
  %a.create89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 24)
  %arena.cur90 = call ptr @dva_arena_current()
  %a.buf91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 128)
  %a.len.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 0
  store i64 0, ptr %a.len.gep92, align 8
  %a.data.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 1
  store ptr %a.buf91, ptr %a.data.gep93, align 8
  %a.cap.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 2
  store i64 16, ptr %a.cap.gep94, align 8
  store ptr %a.create89, ptr %var.gls, align 8
  br label %a.after87

a.after87:                                        ; preds = %a.create86, %choice.else76
  %a.load295 = load ptr, ptr %var.gls, align 8
  %a.len.query96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load295, i32 0, i32 0
  %a.len.query97 = load i64, ptr %a.len.query96, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after87
  %counter.load98 = load i64, ptr %loop.idx.9, align 8
  %loop.cond99 = icmp slt i64 %counter.load98, %a.len.query97
  br i1 %loop.cond99, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i100 = sub i64 %counter.load98, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i100, ptr %var._i101, align 8
  store i64 %counter.load98, ptr %var._102, align 8
  store i64 %counter.load98, ptr %var.k, align 8
  %var.load103 = load ptr, ptr %var.gls, align 8
  %a.load104 = load ptr, ptr %var.gls, align 8
  %a.null105 = icmp eq ptr %a.load104, null
  br i1 %a.null105, label %a.create106, label %a.after107

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit225
  %step.val227 = load i64, ptr %loop.step.9, align 8
  %loop.next228 = add i64 %counter.load98, %step.val227
  store i64 %loop.next228, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %choice.then224, %loop.exit.nat.9
  %var.load229 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit77

a.create106:                                      ; preds = %loop.body.9
  %arena.cur108 = call ptr @dva_arena_current()
  %a.create109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 24)
  %arena.cur110 = call ptr @dva_arena_current()
  %a.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 128)
  %a.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 0
  store i64 0, ptr %a.len.gep112, align 8
  %a.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 1
  store ptr %a.buf111, ptr %a.data.gep113, align 8
  %a.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 2
  store i64 16, ptr %a.cap.gep114, align 8
  store ptr %a.create109, ptr %var.gls, align 8
  br label %a.after107

a.after107:                                       ; preds = %a.create106, %loop.body.9
  %a.load2115 = load ptr, ptr %var.gls, align 8
  %a.len.query116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.len.query117 = load i64, ptr %a.len.query116, align 8
  %subtmp = sub i64 %a.len.query117, 1
  %var.load118 = load i64, ptr %var.k, align 8
  %subtmp119 = sub i64 %subtmp, %var.load118
  store i64 %subtmp119, ptr %var.i, align 8
  %var.load120 = load ptr, ptr %var.gls, align 8
  %a.load121 = load ptr, ptr %var.gls, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

a.create123:                                      ; preds = %a.after107
  %arena.cur125 = call ptr @dva_arena_current()
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = call ptr @dva_arena_current()
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  %a.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 0
  store i64 0, ptr %a.len.gep129, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  store ptr %a.create126, ptr %var.gls, align 8
  br label %a.after124

a.after124:                                       ; preds = %a.create123, %a.after107
  %a.load2132 = load ptr, ptr %var.gls, align 8
  %var.load133 = load i64, ptr %var.i, align 8
  %a.rd.nonnull134 = icmp ne ptr %a.load2132, null
  br i1 %a.rd.nonnull134, label %a.rd.check135, label %a.rd.err.null137

a.rd.check135:                                    ; preds = %a.after124
  %a.rd.len140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.rd.len141 = load i64, ptr %a.rd.len140, align 8
  %a.rd.ge0142 = icmp sge i64 %var.load133, 0
  %a.rd.lt143 = icmp slt i64 %var.load133, %a.rd.len141
  %a.rd.bounds144 = and i1 %a.rd.ge0142, %a.rd.lt143
  br i1 %a.rd.bounds144, label %a.rd.ok136, label %a.rd.err.oob138

a.rd.ok136:                                       ; preds = %a.rd.check135
  %a.rd.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 1
  %a.rd.data146 = load ptr, ptr %a.rd.data145, align 8
  %a.rd.elem.gep147 = getelementptr i64, ptr %a.rd.data146, i64 %var.load133
  %a.rd.elem148 = load i64, ptr %a.rd.elem.gep147, align 8
  br label %a.rd.done139

a.rd.err.null137:                                 ; preds = %a.after124
  %arena.cur149 = call ptr @dva_arena_current()
  %err.alloc150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 56)
  %err.code.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 0
  store i64 4011, ptr %err.code.gep151, align 8
  %err.msg.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep152, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep153, align 8
  %err.line.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 3
  store i64 252, ptr %err.line.gep154, align 8
  %err.col.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 4
  store i64 24, ptr %err.col.gep155, align 8
  %err.ctx.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 5
  %err.ctx0.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep157, align 8
  %err.ctx1.gep158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep158, align 8
  %err.p2i159 = ptrtoint ptr %err.alloc150 to i64
  br label %a.rd.done139

a.rd.err.oob138:                                  ; preds = %a.rd.check135
  %arena.cur160 = call ptr @dva_arena_current()
  %err.alloc161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 56)
  %err.code.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 0
  store i64 4011, ptr %err.code.gep162, align 8
  %err.msg.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep163, align 8
  %err.file.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep164, align 8
  %err.line.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 3
  store i64 252, ptr %err.line.gep165, align 8
  %err.col.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 4
  store i64 24, ptr %err.col.gep166, align 8
  %err.ctx.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 5
  %err.ctx0.gep168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 0
  store i64 %var.load133, ptr %err.ctx0.gep168, align 8
  %err.ctx1.gep169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep169, align 8
  %err.p2i170 = ptrtoint ptr %err.alloc161 to i64
  br label %a.rd.done139

a.rd.done139:                                     ; preds = %a.rd.err.oob138, %a.rd.err.null137, %a.rd.ok136
  %a.rd.tag171 = phi i1 [ true, %a.rd.ok136 ], [ false, %a.rd.err.null137 ], [ false, %a.rd.err.oob138 ]
  %a.rd.pay172 = phi i64 [ %a.rd.elem148, %a.rd.ok136 ], [ %err.p2i159, %a.rd.err.null137 ], [ %err.p2i170, %a.rd.err.oob138 ]
  %ram.tag173 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag171, 0
  %ram.pay174 = insertvalue { i1, i64 } %ram.tag173, i64 %a.rd.pay172, 1
  %ram.tag175 = extractvalue { i1, i64 } %ram.pay174, 0
  br i1 %ram.tag175, label %choice.then176, label %choice.else177

choice.then176:                                   ; preds = %a.rd.done139
  %ram.pay179 = extractvalue { i1, i64 } %ram.pay174, 1
  %pay.ptr180 = inttoptr i64 %ram.pay179 to ptr
  store ptr %pay.ptr180, ptr %var._181, align 8
  br label %choice.exit178

choice.else177:                                   ; preds = %a.rd.done139
  %ram.pay182 = extractvalue { i1, i64 } %ram.pay174, 1
  %pay.ptr183 = inttoptr i64 %ram.pay182 to ptr
  store ptr %pay.ptr183, ptr %var._184, align 8
  %arena.cur185 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur186 = call ptr @dva_arena_current()
  %enum.alloc187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %tag.gep188 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc187, i32 0, i32 0
  store i64 0, ptr %tag.gep188, align 8
  %pay.gep189 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc187, i32 0, i32 1
  %arena.cur190 = call ptr @dva_arena_current()
  %enum.alloc191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 16)
  %tag.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc191, i32 0, i32 0
  store i64 0, ptr %tag.gep192, align 8
  %pay.gep193 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc191, i32 0, i32 1
  store ptr null, ptr %pay.gep193, align 8
  store ptr %enum.alloc191, ptr %pay.gep189, align 8
  %arena.cur194 = call ptr @dva_arena_current()
  %rec.alloc195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld196 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld197, align 8
  %rec.fld198 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 2
  store ptr %enum.alloc187, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 3
  store i1 false, ptr %rec.fld199, align 1
  %rec.fld200 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 4
  store i1 false, ptr %rec.fld200, align 1
  %rec.fld201 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc195, i32 0, i32 5
  store i64 0, ptr %rec.fld201, align 8
  br label %choice.exit178

choice.exit178:                                   ; preds = %choice.else177, %choice.then176
  %choice.res202 = phi ptr [ %pay.ptr180, %choice.then176 ], [ %rec.alloc195, %choice.else177 ]
  store ptr %choice.res202, ptr %var.b, align 8
  %var.load203 = load ptr, ptr %var.b, align 8
  %fld.gep204 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %var.load203, i32 0, i32 0
  %fld.load205 = load ptr, ptr %fld.gep204, align 8
  %var.load206 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load205, i32 0, i32 0
  %eq.lhs.len207 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len208 = and i64 %eq.lhs.len207, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len207, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit178
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen209 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen210 = load i64, ptr %arena.gen209, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen210
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit178
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load206, i32 0, i32 0
  %eq.rhs.len211 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len212 = and i64 %eq.rhs.len211, 281474976710655
  %str.tag213 = lshr i64 %eq.rhs.len211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check215:                                 ; preds = %str_ok
  %arena.gen218 = call ptr @dva_arena_current()
  %arena.gen219 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen218, i32 0, i32 4
  %arena.gen220 = load i64, ptr %arena.gen219, align 8
  %str.tag.match221 = icmp eq i64 %str.tag213, %arena.gen220
  br i1 %str.tag.match221, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len208, %eq.rhs.len212
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale217:                                     ; preds = %str_gen_check215
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

str.eq.then:                                      ; preds = %str_ok216
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load205, i32 0, i32 1
  %eq.lhs.data222 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load206, i32 0, i32 1
  %eq.rhs.data223 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data222, ptr %eq.rhs.data223, i64 %eq.lhs.len208)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok216
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then224, label %choice.exit225

choice.then224:                                   ; preds = %str.eq.merge
  %var.load226 = load ptr, ptr %var.b, align 8
  store ptr %var.load226, ptr %"var.g_found'", align 8
  br label %loop.exit.9

choice.exit225:                                   ; preds = %str.eq.merge
  br label %loop.latch.9
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._111 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit22, %choice.then
  %choice.res210 = phi ptr [ %var.load3, %choice.then ], [ %choice.res209, %choice.exit22 ]
  ret ptr %choice.res210

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen7 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen8 = load i64, ptr %arena.gen7, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen8
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.gen15 = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen15, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match18 = icmp eq i64 %str.tag10, %arena.gen17
  br i1 %str.tag.match18, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then20, label %choice.else21

choice.then20:                                    ; preds = %str.eq.merge
  %var.load23 = load ptr, ptr %var.env, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load23, i32 0, i32 8
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 0
  %concat.lhs26 = load i64, ptr %concat.lhs, align 8
  %concat.lhs27 = and i64 %concat.lhs26, 281474976710655
  %str.tag28 = lshr i64 %concat.lhs26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

choice.else21:                                    ; preds = %str.eq.merge
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else21, %choice.exit110
  %choice.res209 = phi ptr [ %choice.res, %choice.exit110 ], [ null, %choice.else21 ]
  br label %choice.exit

str_gen_check30:                                  ; preds = %choice.then20
  %arena.gen33 = call ptr @dva_arena_current()
  %arena.gen34 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen33, i32 0, i32 4
  %arena.gen35 = load i64, ptr %arena.gen34, align 8
  %str.tag.match36 = icmp eq i64 %str.tag28, %arena.gen35
  br i1 %str.tag.match36, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %choice.then20
  %concat.lhs37 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %concat.lhs38 = load ptr, ptr %concat.lhs37, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale32:                                      ; preds = %str_gen_check30
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

str_gen_check42:                                  ; preds = %str_ok31
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok31
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs27, i64 %concat.rhs39)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len50

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len50:                                 ; preds = %str_overflow_abort, %str_ok43
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum51 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf52 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.tot.len53

str_overflow_abort:                               ; preds = %str_ok43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len50

concat.tot.len53:                                 ; preds = %str_overflow_abort54, %concat.sum.len50
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs38, i64 %concat.lhs27, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load56 = load ptr, ptr %var.name, align 8
  %concat.lhs57 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs58 = load i64, ptr %concat.lhs57, align 8
  %concat.lhs59 = and i64 %concat.lhs58, 281474976710655
  %str.tag60 = lshr i64 %concat.lhs58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

str_overflow_abort54:                             ; preds = %concat.sum.len50
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len53

str_gen_check62:                                  ; preds = %concat.tot.len53
  %arena.gen65 = call ptr @dva_arena_current()
  %arena.gen66 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen65, i32 0, i32 4
  %arena.gen67 = load i64, ptr %arena.gen66, align 8
  %str.tag.match68 = icmp eq i64 %str.tag60, %arena.gen67
  br i1 %str.tag.match68, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %concat.tot.len53
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs70 = load ptr, ptr %concat.lhs69, align 8
  %concat.rhs71 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %concat.rhs72 = load i64, ptr %concat.rhs71, align 8
  %concat.rhs73 = and i64 %concat.rhs72, 281474976710655
  %str.tag74 = lshr i64 %concat.rhs72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

str_stale64:                                      ; preds = %str_gen_check62
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

str_gen_check76:                                  ; preds = %str_ok63
  %arena.gen79 = call ptr @dva_arena_current()
  %arena.gen80 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen79, i32 0, i32 4
  %arena.gen81 = load i64, ptr %arena.gen80, align 8
  %str.tag.match82 = icmp eq i64 %str.tag74, %arena.gen81
  br i1 %str.tag.match82, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %str_ok63
  %concat.rhs83 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %concat.rhs84 = load ptr, ptr %concat.rhs83, align 8
  %concat.sum.len85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs59, i64 %concat.rhs73)
  %sum86 = extractvalue { i64, i1 } %concat.sum.len85, 0
  %ovf87 = extractvalue { i64, i1 } %concat.sum.len85, 1
  br i1 %ovf87, label %str_overflow_abort89, label %concat.sum.len88

str_stale78:                                      ; preds = %str_gen_check76
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

concat.sum.len88:                                 ; preds = %str_overflow_abort89, %str_ok77
  %concat.tot.len90 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum86, i64 1)
  %sum91 = extractvalue { i64, i1 } %concat.tot.len90, 0
  %ovf92 = extractvalue { i64, i1 } %concat.tot.len90, 1
  br i1 %ovf92, label %str_overflow_abort94, label %concat.tot.len93

str_overflow_abort89:                             ; preds = %str_ok77
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len88

concat.tot.len93:                                 ; preds = %str_overflow_abort94, %concat.sum.len88
  %arena.cur95 = call ptr @dva_arena_current()
  %concat.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf96, ptr align 1 %concat.lhs70, i64 %concat.lhs59, i1 false)
  %concat.mid97 = getelementptr i8, ptr %concat.buf96, i64 %concat.lhs59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid97, ptr align 1 %concat.rhs84, i64 %concat.rhs73, i1 false)
  %concat.nul98 = getelementptr i8, ptr %concat.buf96, i64 %sum86
  store i8 0, ptr %concat.nul98, align 1
  %arena.cur99 = call ptr @dva_arena_current()
  %concat.str100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %str.build.len.gep101 = getelementptr inbounds { i64, ptr }, ptr %concat.str100, i32 0, i32 0
  store i64 %sum86, ptr %str.build.len.gep101, align 8
  %str.build.data.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str100, i32 0, i32 1
  store ptr %concat.buf96, ptr %str.build.data.gep102, align 8
  store ptr %concat.str100, ptr %var.qname, align 8
  %var.load103 = load ptr, ptr %var.env, align 8
  %var.load104 = load ptr, ptr %var.qname, align 8
  %call.res105 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load103, ptr %var.load104)
  store ptr %call.res105, ptr %var.pub, align 8
  %var.load106 = load ptr, ptr %var.pub, align 8
  %niche.ne.null107 = icmp ne ptr %var.load106, null
  br i1 %niche.ne.null107, label %choice.then108, label %choice.else109

str_overflow_abort94:                             ; preds = %concat.sum.len88
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len93

choice.then108:                                   ; preds = %concat.tot.len93
  store ptr %var.load106, ptr %var._111, align 8
  store ptr %var.load106, ptr %var.p, align 8
  %var.load112 = load ptr, ptr %var.p, align 8
  br label %choice.exit110

choice.else109:                                   ; preds = %concat.tot.len93
  %var.load113 = load ptr, ptr %var.env, align 8
  %var.load114 = load ptr, ptr %var.env, align 8
  %fld.gep115 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load114, i32 0, i32 8
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 0
  %concat.lhs118 = load i64, ptr %concat.lhs117, align 8
  %concat.lhs119 = and i64 %concat.lhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.lhs118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

choice.exit110:                                   ; preds = %concat.tot.len198, %choice.then108
  %choice.res = phi ptr [ %var.load112, %choice.then108 ], [ %call.res208, %concat.tot.len198 ]
  br label %choice.exit22

str_gen_check122:                                 ; preds = %choice.else109
  %arena.gen125 = call ptr @dva_arena_current()
  %arena.gen126 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen125, i32 0, i32 4
  %arena.gen127 = load i64, ptr %arena.gen126, align 8
  %str.tag.match128 = icmp eq i64 %str.tag120, %arena.gen127
  br i1 %str.tag.match128, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %choice.else109
  %concat.lhs129 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 1
  %concat.lhs130 = load ptr, ptr %concat.lhs129, align 8
  %concat.rhs131 = load i64, ptr @str.7.struct, align 8
  %concat.rhs132 = and i64 %concat.rhs131, 281474976710655
  %str.tag133 = lshr i64 %concat.rhs131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

str_stale124:                                     ; preds = %str_gen_check122
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

str_gen_check135:                                 ; preds = %str_ok123
  %arena.gen138 = call ptr @dva_arena_current()
  %arena.gen139 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen138, i32 0, i32 4
  %arena.gen140 = load i64, ptr %arena.gen139, align 8
  %str.tag.match141 = icmp eq i64 %str.tag133, %arena.gen140
  br i1 %str.tag.match141, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %str_ok123
  %concat.rhs142 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs119, i64 %concat.rhs132)
  %sum144 = extractvalue { i64, i1 } %concat.sum.len143, 0
  %ovf145 = extractvalue { i64, i1 } %concat.sum.len143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %concat.sum.len146

str_stale137:                                     ; preds = %str_gen_check135
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

concat.sum.len146:                                ; preds = %str_overflow_abort147, %str_ok136
  %concat.tot.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum144, i64 1)
  %sum149 = extractvalue { i64, i1 } %concat.tot.len148, 0
  %ovf150 = extractvalue { i64, i1 } %concat.tot.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %concat.tot.len151

str_overflow_abort147:                            ; preds = %str_ok136
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len146

concat.tot.len151:                                ; preds = %str_overflow_abort152, %concat.sum.len146
  %arena.cur153 = call ptr @dva_arena_current()
  %concat.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum149)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf154, ptr align 1 %concat.lhs130, i64 %concat.lhs119, i1 false)
  %concat.mid155 = getelementptr i8, ptr %concat.buf154, i64 %concat.lhs119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid155, ptr align 1 %concat.rhs142, i64 %concat.rhs132, i1 false)
  %concat.nul156 = getelementptr i8, ptr %concat.buf154, i64 %sum144
  store i8 0, ptr %concat.nul156, align 1
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.str158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %str.build.len.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 0
  store i64 %sum144, ptr %str.build.len.gep159, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 1
  store ptr %concat.buf154, ptr %str.build.data.gep160, align 8
  %var.load161 = load ptr, ptr %var.name, align 8
  %concat.lhs162 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 0
  %concat.lhs163 = load i64, ptr %concat.lhs162, align 8
  %concat.lhs164 = and i64 %concat.lhs163, 281474976710655
  %str.tag165 = lshr i64 %concat.lhs163, 48
  %str.immortal166 = icmp eq i64 %str.tag165, 0
  br i1 %str.immortal166, label %str_ok168, label %str_gen_check167

str_overflow_abort152:                            ; preds = %concat.sum.len146
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len151

str_gen_check167:                                 ; preds = %concat.tot.len151
  %arena.gen170 = call ptr @dva_arena_current()
  %arena.gen171 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen170, i32 0, i32 4
  %arena.gen172 = load i64, ptr %arena.gen171, align 8
  %str.tag.match173 = icmp eq i64 %str.tag165, %arena.gen172
  br i1 %str.tag.match173, label %str_ok168, label %str_stale169

str_ok168:                                        ; preds = %str_stale169, %str_gen_check167, %concat.tot.len151
  %concat.lhs174 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 1
  %concat.lhs175 = load ptr, ptr %concat.lhs174, align 8
  %concat.rhs176 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 0
  %concat.rhs177 = load i64, ptr %concat.rhs176, align 8
  %concat.rhs178 = and i64 %concat.rhs177, 281474976710655
  %str.tag179 = lshr i64 %concat.rhs177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_stale169:                                     ; preds = %str_gen_check167
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok168

str_gen_check181:                                 ; preds = %str_ok168
  %arena.gen184 = call ptr @dva_arena_current()
  %arena.gen185 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen184, i32 0, i32 4
  %arena.gen186 = load i64, ptr %arena.gen185, align 8
  %str.tag.match187 = icmp eq i64 %str.tag179, %arena.gen186
  br i1 %str.tag.match187, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %str_ok168
  %concat.rhs188 = getelementptr inbounds { i64, ptr }, ptr %var.load161, i32 0, i32 1
  %concat.rhs189 = load ptr, ptr %concat.rhs188, align 8
  %concat.sum.len190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs164, i64 %concat.rhs178)
  %sum191 = extractvalue { i64, i1 } %concat.sum.len190, 0
  %ovf192 = extractvalue { i64, i1 } %concat.sum.len190, 1
  br i1 %ovf192, label %str_overflow_abort194, label %concat.sum.len193

str_stale183:                                     ; preds = %str_gen_check181
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

concat.sum.len193:                                ; preds = %str_overflow_abort194, %str_ok182
  %concat.tot.len195 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum191, i64 1)
  %sum196 = extractvalue { i64, i1 } %concat.tot.len195, 0
  %ovf197 = extractvalue { i64, i1 } %concat.tot.len195, 1
  br i1 %ovf197, label %str_overflow_abort199, label %concat.tot.len198

str_overflow_abort194:                            ; preds = %str_ok182
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len193

concat.tot.len198:                                ; preds = %str_overflow_abort199, %concat.sum.len193
  %arena.cur200 = call ptr @dva_arena_current()
  %concat.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 %sum196)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf201, ptr align 1 %concat.lhs175, i64 %concat.lhs164, i1 false)
  %concat.mid202 = getelementptr i8, ptr %concat.buf201, i64 %concat.lhs164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid202, ptr align 1 %concat.rhs189, i64 %concat.rhs178, i1 false)
  %concat.nul203 = getelementptr i8, ptr %concat.buf201, i64 %sum191
  store i8 0, ptr %concat.nul203, align 1
  %arena.cur204 = call ptr @dva_arena_current()
  %concat.str205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 16)
  %str.build.len.gep206 = getelementptr inbounds { i64, ptr }, ptr %concat.str205, i32 0, i32 0
  store i64 %sum191, ptr %str.build.len.gep206, align 8
  %str.build.data.gep207 = getelementptr inbounds { i64, ptr }, ptr %concat.str205, i32 0, i32 1
  store ptr %concat.buf201, ptr %str.build.data.gep207, align 8
  %call.res208 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load113, ptr %concat.str205)
  br label %choice.exit110

str_overflow_abort199:                            ; preds = %concat.sum.len193
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len198
}

define i64 @"type_env::find_last_dot"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %str.tag = lshr i64 %s.read.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res15 = phi i64 [ -1, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i64 %choice.res15

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load7, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load7, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp8, label %choice.then9, label %choice.else10

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then9:                                     ; preds = %idx_ok
  %var.load12 = load i64, ptr %var.i, align 8
  br label %choice.exit11

choice.else10:                                    ; preds = %idx_ok
  %var.load13 = load ptr, ptr %var.s, align 8
  %var.load14 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load14, 1
  %call.res = call i64 @"type_env::find_last_dot"(ptr %var.load13, i64 %subtmp)
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi i64 [ %var.load12, %choice.then9 ], [ %call.res, %choice.else10 ]
  br label %choice.exit
}

define ptr @"type_env::drop_last_dot"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.cut = alloca i64, align 8
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call i64 @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  store i64 %call.res, ptr %var.cut, align 8
  %var.load6 = load i64, ptr %var.cut, align 8
  %cmptmp = icmp sgt i64 %var.load6, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load7 = load i64, ptr %var.cut, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load7, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load7
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len8

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ @str.0.struct, %choice.else ]
  ret ptr %choice.res

b.buf.len8:                                       ; preds = %str_overflow_abort, %choice.then
  %arena.cur9 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load10 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

str_overflow_abort:                               ; preds = %choice.then
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len8

loop.header.10:                                   ; preds = %loop.latch.10, %b.buf.len8
  %counter.load = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load10
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %str.tag14 = lshr i64 %s.read.len12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.10, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load60 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.freeze.len61 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  %b.freeze.data62 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check16:                                  ; preds = %loop.body.10
  %arena.gen19 = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen19, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match22 = icmp eq i64 %str.tag14, %arena.gen21
  br i1 %str.tag.match22, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %loop.body.10
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale18:                                      ; preds = %str_gen_check16
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

idx_big_check:                                    ; preds = %str_ok17
  %idx.big = icmp sge i64 %var.load24, %s.read.len13
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

idx_oob:                                          ; preds = %idx_big_check, %str_ok17
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check31:                                  ; preds = %idx_ok
  %arena.gen34 = call ptr @dva_arena_current()
  %arena.gen35 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen34, i32 0, i32 4
  %arena.gen36 = load i64, ptr %arena.gen35, align 8
  %str.tag.match37 = icmp eq i64 %str.tag29, %arena.gen36
  br i1 %str.tag.match37, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %idx_ok
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %var.i, align 8
  %idx.neg41 = icmp slt i64 %var.load40, 0
  br i1 %idx.neg41, label %idx_oob44, label %idx_big_check42

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

idx_big_check42:                                  ; preds = %str_ok32
  %idx.big45 = icmp sge i64 %var.load40, %s.read.len28
  br i1 %idx.big45, label %idx_oob44, label %idx_ok43

idx_ok43:                                         ; preds = %idx_oob44, %idx_big_check42
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data39, i64 %var.load40
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val48, 0
  %b.b.le255 = icmp sle i64 %s.byte.val48, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob44:                                        ; preds = %idx_big_check42, %str_ok32
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok43

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok43
  %b.byte.i8 = trunc i64 %s.byte.val48 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len49 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data51 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len49, %b.cap50
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok43
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap50, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.new.buf.len54

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len54
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data57 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len58 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data57, i64 %b.cur.len58
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len58, 1
  %b.nul = getelementptr i8, ptr %b.cur.data57, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep59, align 8
  br label %loop.latch.10

b.new.buf.len54:                                  ; preds = %str_overflow_abort55, %b.grow
  %arena.cur56 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data51, i64 %b.len49, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len49
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort55:                             ; preds = %b.grow
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len54

b.freeze.check:                                   ; preds = %loop.exit.10
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data62, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data62, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data62, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur63 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %b.freeze.len61)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data62, i64 %b.freeze.len61, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.10
  %b.freeze.data64 = phi ptr [ %b.freeze.data62, %loop.exit.10 ], [ %b.freeze.data62, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur65 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len61, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data64, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit
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
  %"var.found'" = alloca i1, align 1
  %var.s = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  store ptr %1, ptr %var.s, align 8
  store i1 false, ptr %"var.found'", align 1
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

loop.latch.11:                                    ; preds = %choice.exit58
  %step.val = load i64, ptr %loop.step.11, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %choice.then57, %loop.exit.nat.11
  %var.load59 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load59

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
  store i64 297, ptr %err.line.gep, align 8
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
  store i64 297, ptr %err.line.gep26, align 8
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen42 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen43 = load i64, ptr %arena.gen42, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen43
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %eq.rhs.len44 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len45 = and i64 %eq.rhs.len44, 281474976710655
  %str.tag46 = lshr i64 %eq.rhs.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check48:                                  ; preds = %str_ok
  %arena.gen51 = call ptr @dva_arena_current()
  %arena.gen52 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen51, i32 0, i32 4
  %arena.gen53 = load i64, ptr %arena.gen52, align 8
  %str.tag.match54 = icmp eq i64 %str.tag46, %arena.gen53
  br i1 %str.tag.match54, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len41, %eq.rhs.len45
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale50:                                      ; preds = %str_gen_check48
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str.eq.then:                                      ; preds = %str_ok49
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %eq.lhs.data55 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %eq.rhs.data56 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data55, ptr %eq.rhs.data56, i64 %eq.lhs.len41)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok49
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then57, label %choice.exit58

choice.then57:                                    ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.11

choice.exit58:                                    ; preds = %str.eq.merge
  br label %loop.latch.11
}

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #1 {
entry:
  %var.tr = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %a.elem.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load28, i32 0, i32 4
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep29, i32 0, i32 1
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load32, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %a.elem.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load15, i32 0, i32 4
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
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load32, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 4
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
  %a.elem.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load19, i32 0, i32 4
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
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 4
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep17, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load18)
  br i1 %call.res, label %choice.then19, label %choice.else20

choice.exit:                                      ; preds = %choice.exit21, %choice.then
  %choice.res26 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit21 ]
  ret i1 %choice.res26

choice.then19:                                    ; preds = %choice.else
  br label %choice.exit21

choice.else20:                                    ; preds = %choice.else
  %var.load22 = load ptr, ptr %var.env, align 8
  %var.load23 = load ptr, ptr %var.p, align 8
  %call.res24 = call ptr @"type_env::drop_last_dot"(ptr %var.load23)
  %call.res25 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load22, ptr %call.res24)
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.else20, %choice.then19
  %choice.res = phi i1 [ true, %choice.then19 ], [ %call.res25, %choice.else20 ]
  br label %choice.exit
}

define i1 @"type_env::init_has_subpath"(ptr %0, ptr %1) #1 {
entry:
  %var.w = alloca ptr, align 8
  %var._74 = alloca ptr, align 8
  %var._71 = alloca ptr, align 8
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs7 = and i64 %concat.rhs, 281474976710655
  %str.tag8 = lshr i64 %concat.rhs, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.gen13 = call ptr @dva_arena_current()
  %arena.gen14 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen13, i32 0, i32 4
  %arena.gen15 = load i64, ptr %arena.gen14, align 8
  %str.tag.match16 = icmp eq i64 %str.tag8, %arena.gen15
  br i1 %str.tag.match16, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %concat.rhs17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs7)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok11
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok11
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs7, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load24 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  store i64 %str.len.query26, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load36 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

a.create:                                         ; preds = %str_ok30
  %arena.cur37 = call ptr @dva_arena_current()
  %a.create38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 24)
  %arena.cur39 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create38, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok30
  %a.load2 = load ptr, ptr %var.written, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query40 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after
  %counter.load = load i64, ptr %loop.idx.12, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query40
  br i1 %loop.cond, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load41 = load ptr, ptr %var.written, align 8
  %a.load42 = load ptr, ptr %var.written, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %choice.exit132
  %step.val = load i64, ptr %loop.step.12, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %choice.then131, %loop.exit.nat.12
  %var.load133 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load133

a.create44:                                       ; preds = %loop.body.12
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
  store ptr %a.create47, ptr %var.written, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %loop.body.12
  %a.load253 = load ptr, ptr %var.written, align 8
  %var.load54 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load253, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after45
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.rd.len55 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load54, 0
  %a.rd.lt = icmp slt i64 %var.load54, %a.rd.len55
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 1
  %a.rd.data56 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data56, i64 %var.load54
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after45
  %arena.cur57 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 348, ptr %err.line.gep, align 8
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
  %arena.cur58 = call ptr @dva_arena_current()
  %err.alloc59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 56)
  %err.code.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 0
  store i64 4011, ptr %err.code.gep60, align 8
  %err.msg.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep61, align 8
  %err.file.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep62, align 8
  %err.line.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 3
  store i64 348, ptr %err.line.gep63, align 8
  %err.col.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 4
  store i64 22, ptr %err.col.gep64, align 8
  %err.ctx.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc59, i32 0, i32 5
  %err.ctx0.gep66 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep65, i32 0, i32 0
  store i64 %var.load54, ptr %err.ctx0.gep66, align 8
  %err.ctx1.gep67 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep65, i32 0, i32 1
  store i64 %a.rd.len55, ptr %err.ctx1.gep67, align 8
  %err.p2i68 = ptrtoint ptr %err.alloc59 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i68, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag69 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag69, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay70 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay70 to ptr
  store ptr %pay.ptr, ptr %var._71, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay72 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr73 = inttoptr i64 %ram.pay72 to ptr
  store ptr %pay.ptr73, ptr %var._74, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.w, align 8
  %var.load75 = load ptr, ptr %var.w, align 8
  %str.len.query76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 0
  %str.len.query77 = load i64, ptr %str.len.query76, align 8
  %str.len.query78 = and i64 %str.len.query77, 281474976710655
  %str.tag79 = lshr i64 %str.len.query77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

str_gen_check81:                                  ; preds = %choice.exit
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %choice.exit
  %var.load88 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query78, %var.load88
  br i1 %cmptmp, label %and.13.then, label %and.13.else

str_stale83:                                      ; preds = %str_gen_check81
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

and.13.then:                                      ; preds = %str_ok82
  %var.load89 = load ptr, ptr %var.w, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %s.read.len90 = load i64, ptr %s.read.len, align 8
  %s.read.len91 = and i64 %s.read.len90, 281474976710655
  %str.tag92 = lshr i64 %s.read.len90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

and.13.else:                                      ; preds = %str_ok82
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %str.eq.merge
  %and.13.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.13.else ]
  br i1 %and.13.phi, label %choice.then131, label %choice.exit132

str_gen_check94:                                  ; preds = %and.13.then
  %arena.gen97 = call ptr @dva_arena_current()
  %arena.gen98 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen97, i32 0, i32 4
  %arena.gen99 = load i64, ptr %arena.gen98, align 8
  %str.tag.match100 = icmp eq i64 %str.tag92, %arena.gen99
  br i1 %str.tag.match100, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %and.13.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %s.read.data101 = load ptr, ptr %s.read.data, align 8
  %var.load102 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len91, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len91
  %final.start = select i1 %start.gt.len, i64 %s.read.len91, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load102, 0
  %rel.end = add i64 %s.read.len91, %var.load102
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load102
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len91
  %final.end = select i1 %end.gt.len, i64 %s.read.len91, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data101, i64 %final.start
  %arena.cur103 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 16)
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep105, align 8
  %var.load106 = load ptr, ptr %var.prefix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len107 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len108 = and i64 %eq.lhs.len107, 281474976710655
  %str.tag109 = lshr i64 %eq.lhs.len107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

str_stale96:                                      ; preds = %str_gen_check94
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

str_gen_check111:                                 ; preds = %str_ok95
  %arena.gen114 = call ptr @dva_arena_current()
  %arena.gen115 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen114, i32 0, i32 4
  %arena.gen116 = load i64, ptr %arena.gen115, align 8
  %str.tag.match117 = icmp eq i64 %str.tag109, %arena.gen116
  br i1 %str.tag.match117, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %str_ok95
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %eq.rhs.len118 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len119 = and i64 %eq.rhs.len118, 281474976710655
  %str.tag120 = lshr i64 %eq.rhs.len118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_stale113:                                     ; preds = %str_gen_check111
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

str_gen_check122:                                 ; preds = %str_ok112
  %arena.gen125 = call ptr @dva_arena_current()
  %arena.gen126 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen125, i32 0, i32 4
  %arena.gen127 = load i64, ptr %arena.gen126, align 8
  %str.tag.match128 = icmp eq i64 %str.tag120, %arena.gen127
  br i1 %str.tag.match128, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %str_ok112
  %eq.len = icmp eq i64 %eq.lhs.len108, %eq.rhs.len119
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale124:                                     ; preds = %str_gen_check122
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

str.eq.then:                                      ; preds = %str_ok123
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data129 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %eq.rhs.data130 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data129, ptr %eq.rhs.data130, i64 %eq.lhs.len108)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok123
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.13.exit

choice.then131:                                   ; preds = %and.13.exit
  store i1 true, ptr %"var.has'", align 1
  br label %loop.exit.12

choice.exit132:                                   ; preds = %and.13.exit
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 4
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
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load6, i32 0, i32 4
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  %fld.gep71 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load70, i32 0, i32 4
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
  store i64 363, ptr %err.line.gep, align 8
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
  store i64 363, ptr %err.line.gep34, align 8
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
  %a.elem.p2i = ptrtoint ptr %var.load46 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep199 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load198, i32 0, i32 4
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
  store i64 368, ptr %err.line.gep128, align 8
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
  store i64 368, ptr %err.line.gep139, align 8
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
  %a.elem.p2i186 = ptrtoint ptr %var.load160 to i64
  store i64 %a.elem.p2i186, ptr %a.elem.gep185, align 8
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
  store i64 373, ptr %err.line.gep256, align 8
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
  store i64 373, ptr %err.line.gep267, align 8
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
  %a.elem.p2i314 = ptrtoint ptr %var.load288 to i64
  store i64 %a.elem.p2i314, ptr %a.elem.gep313, align 8
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
  store i64 382, ptr %err.line.gep, align 8
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
  store i64 382, ptr %err.line.gep33, align 8
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
  %a.elem.p2i = ptrtoint ptr %var.load45 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  store i64 387, ptr %err.line.gep126, align 8
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
  store i64 387, ptr %err.line.gep137, align 8
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
  %a.elem.p2i184 = ptrtoint ptr %var.load158 to i64
  store i64 %a.elem.p2i184, ptr %a.elem.gep183, align 8
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
  store i64 392, ptr %err.line.gep253, align 8
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
  store i64 392, ptr %err.line.gep264, align 8
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
  %a.elem.p2i311 = ptrtoint ptr %var.load285 to i64
  store i64 %a.elem.p2i311, ptr %a.elem.gep310, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
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
  store i64 405, ptr %err.line.gep, align 8
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
  store i64 405, ptr %err.line.gep33, align 8
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
  %a.elem.p2i = ptrtoint ptr %var.load45 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  store i64 409, ptr %err.line.gep119, align 8
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
  store i64 409, ptr %err.line.gep130, align 8
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
  %a.elem.p2i193 = ptrtoint ptr %var.load167 to i64
  store i64 %a.elem.p2i193, ptr %a.elem.gep192, align 8
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
  store i64 414, ptr %err.line.gep262, align 8
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
  store i64 414, ptr %err.line.gep273, align 8
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
  %a.elem.p2i327 = ptrtoint ptr %var.load301 to i64
  store i64 %a.elem.p2i327, ptr %a.elem.gep326, align 8
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
  store i64 419, ptr %err.line.gep396, align 8
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
  store i64 419, ptr %err.line.gep407, align 8
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
  %a.elem.p2i461 = ptrtoint ptr %var.load435 to i64
  store i64 %a.elem.p2i461, ptr %a.elem.gep460, align 8
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
  %var._48 = alloca ptr, align 8
  %var._45 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %"var.all_wr'" = alloca i1, align 1
  %var.flds = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 4
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
  %choice.res166 = phi i1 [ true, %choice.then ], [ %choice.res165, %choice.exit7 ]
  ret i1 %choice.res166

choice.exit7:                                     ; preds = %choice.next, %loop.exit.27
  %choice.res165 = phi i1 [ %var.load164, %loop.exit.27 ], [ true, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.else
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var.flds, align 8
  store i1 true, ptr %"var.all_wr'", align 1
  %var.load8 = load ptr, ptr %var.flds, align 8
  %a.load = load ptr, ptr %var.flds, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next:                                      ; preds = %choice.else
  br label %choice.exit7

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
  br label %loop.header.27

loop.header.27:                                   ; preds = %loop.latch.27, %a.after
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query11
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load12 = load ptr, ptr %var.flds, align 8
  %a.load13 = load ptr, ptr %var.flds, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit73
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %choice.then162, %loop.exit.nat.27
  %var.load164 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

a.create15:                                       ; preds = %loop.body.27
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
  store ptr %a.create18, ptr %var.flds, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %loop.body.27
  %a.load224 = load ptr, ptr %var.flds, align 8
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
  store i64 432, ptr %err.line.gep, align 8
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
  %arena.cur29 = call ptr @dva_arena_current()
  %err.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 56)
  %err.code.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 0
  store i64 4011, ptr %err.code.gep31, align 8
  %err.msg.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep32, align 8
  %err.file.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep33, align 8
  %err.line.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 3
  store i64 432, ptr %err.line.gep34, align 8
  %err.col.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 4
  store i64 31, ptr %err.col.gep35, align 8
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
  br i1 %ram.tag40, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %a.rd.done
  %ram.pay44 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay44 to ptr
  store ptr %pay.ptr, ptr %var._45, align 8
  br label %choice.exit43

choice.else42:                                    ; preds = %a.rd.done
  %ram.pay46 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr47 = inttoptr i64 %ram.pay46 to ptr
  store ptr %pay.ptr47, ptr %var._48, align 8
  %arena.cur49 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %tag.gep50 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep50, align 8
  %pay.gep51 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep51, align 8
  %arena.cur52 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld53 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld53, align 8
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi ptr [ %pay.ptr, %choice.then41 ], [ %rec.alloc, %choice.else42 ]
  store ptr %choice.res, ptr %var.f, align 8
  %var.load54 = load ptr, ptr %var.f, align 8
  %fld.gep55 = getelementptr inbounds { ptr, ptr }, ptr %var.load54, i32 0, i32 0
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 0
  %eq.lhs.len57 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len58 = and i64 %eq.lhs.len57, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len57, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit43
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen59 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen60 = load i64, ptr %arena.gen59, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen60
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit43
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
  %arena.gen67 = call ptr @dva_arena_current()
  %arena.gen68 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen67, i32 0, i32 4
  %arena.gen69 = load i64, ptr %arena.gen68, align 8
  %str.tag.match70 = icmp eq i64 %str.tag62, %arena.gen69
  br i1 %str.tag.match70, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len58, %eq.rhs.len61
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale66:                                      ; preds = %str_gen_check64
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str.eq.then:                                      ; preds = %str_ok65
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data, i64 %eq.lhs.len58)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok65
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then72, label %choice.exit73

choice.then72:                                    ; preds = %str.eq.merge
  %var.load74 = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %concat.lhs75 = load i64, ptr %concat.lhs, align 8
  %concat.lhs76 = and i64 %concat.lhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.lhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

choice.exit73:                                    ; preds = %choice.exit163, %str.eq.merge
  br label %loop.latch.27

str_gen_check79:                                  ; preds = %choice.then72
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %choice.then72
  %concat.lhs86 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %concat.lhs87 = load ptr, ptr %concat.lhs86, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs88 = and i64 %concat.rhs, 281474976710655
  %str.tag89 = lshr i64 %concat.rhs, 48
  %str.immortal90 = icmp eq i64 %str.tag89, 0
  br i1 %str.immortal90, label %str_ok92, label %str_gen_check91

str_stale81:                                      ; preds = %str_gen_check79
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str_gen_check91:                                  ; preds = %str_ok80
  %arena.gen94 = call ptr @dva_arena_current()
  %arena.gen95 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen94, i32 0, i32 4
  %arena.gen96 = load i64, ptr %arena.gen95, align 8
  %str.tag.match97 = icmp eq i64 %str.tag89, %arena.gen96
  br i1 %str.tag.match97, label %str_ok92, label %str_stale93

str_ok92:                                         ; preds = %str_stale93, %str_gen_check91, %str_ok80
  %concat.rhs98 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs76, i64 %concat.rhs88)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len99

str_stale93:                                      ; preds = %str_gen_check91
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok92

concat.sum.len99:                                 ; preds = %str_overflow_abort, %str_ok92
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum100 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf101 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf101, label %str_overflow_abort103, label %concat.tot.len102

str_overflow_abort:                               ; preds = %str_ok92
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len99

concat.tot.len102:                                ; preds = %str_overflow_abort103, %concat.sum.len99
  %arena.cur104 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %sum100)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs87, i64 %concat.lhs76, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs98, i64 %concat.rhs88, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur105 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load106 = load ptr, ptr %var.f, align 8
  %fld.gep107 = getelementptr inbounds { ptr, ptr }, ptr %var.load106, i32 0, i32 0
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %concat.lhs109 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs110 = load i64, ptr %concat.lhs109, align 8
  %concat.lhs111 = and i64 %concat.lhs110, 281474976710655
  %str.tag112 = lshr i64 %concat.lhs110, 48
  %str.immortal113 = icmp eq i64 %str.tag112, 0
  br i1 %str.immortal113, label %str_ok115, label %str_gen_check114

str_overflow_abort103:                            ; preds = %concat.sum.len99
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len102

str_gen_check114:                                 ; preds = %concat.tot.len102
  %arena.gen117 = call ptr @dva_arena_current()
  %arena.gen118 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen117, i32 0, i32 4
  %arena.gen119 = load i64, ptr %arena.gen118, align 8
  %str.tag.match120 = icmp eq i64 %str.tag112, %arena.gen119
  br i1 %str.tag.match120, label %str_ok115, label %str_stale116

str_ok115:                                        ; preds = %str_stale116, %str_gen_check114, %concat.tot.len102
  %concat.lhs121 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs122 = load ptr, ptr %concat.lhs121, align 8
  %concat.rhs123 = getelementptr inbounds { i64, ptr }, ptr %fld.load108, i32 0, i32 0
  %concat.rhs124 = load i64, ptr %concat.rhs123, align 8
  %concat.rhs125 = and i64 %concat.rhs124, 281474976710655
  %str.tag126 = lshr i64 %concat.rhs124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_stale116:                                     ; preds = %str_gen_check114
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok115

str_gen_check128:                                 ; preds = %str_ok115
  %arena.gen131 = call ptr @dva_arena_current()
  %arena.gen132 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen131, i32 0, i32 4
  %arena.gen133 = load i64, ptr %arena.gen132, align 8
  %str.tag.match134 = icmp eq i64 %str.tag126, %arena.gen133
  br i1 %str.tag.match134, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %str_ok115
  %concat.rhs135 = getelementptr inbounds { i64, ptr }, ptr %fld.load108, i32 0, i32 1
  %concat.rhs136 = load ptr, ptr %concat.rhs135, align 8
  %concat.sum.len137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs111, i64 %concat.rhs125)
  %sum138 = extractvalue { i64, i1 } %concat.sum.len137, 0
  %ovf139 = extractvalue { i64, i1 } %concat.sum.len137, 1
  br i1 %ovf139, label %str_overflow_abort141, label %concat.sum.len140

str_stale130:                                     ; preds = %str_gen_check128
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

concat.sum.len140:                                ; preds = %str_overflow_abort141, %str_ok129
  %concat.tot.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum138, i64 1)
  %sum143 = extractvalue { i64, i1 } %concat.tot.len142, 0
  %ovf144 = extractvalue { i64, i1 } %concat.tot.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %concat.tot.len145

str_overflow_abort141:                            ; preds = %str_ok129
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len140

concat.tot.len145:                                ; preds = %str_overflow_abort146, %concat.sum.len140
  %arena.cur147 = call ptr @dva_arena_current()
  %concat.buf148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 %sum143)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf148, ptr align 1 %concat.lhs122, i64 %concat.lhs111, i1 false)
  %concat.mid149 = getelementptr i8, ptr %concat.buf148, i64 %concat.lhs111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid149, ptr align 1 %concat.rhs136, i64 %concat.rhs125, i1 false)
  %concat.nul150 = getelementptr i8, ptr %concat.buf148, i64 %sum138
  store i8 0, ptr %concat.nul150, align 1
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.str152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 16)
  %str.build.len.gep153 = getelementptr inbounds { i64, ptr }, ptr %concat.str152, i32 0, i32 0
  store i64 %sum138, ptr %str.build.len.gep153, align 8
  %str.build.data.gep154 = getelementptr inbounds { i64, ptr }, ptr %concat.str152, i32 0, i32 1
  store ptr %concat.buf148, ptr %str.build.data.gep154, align 8
  store ptr %concat.str152, ptr %var.path, align 8
  %var.load155 = load ptr, ptr %var.env, align 8
  %fld.gep156 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load155, i32 0, i32 4
  %fld.gep157 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep156, i32 0, i32 2
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %var.load159 = load ptr, ptr %var.path, align 8
  %call.res160 = call i1 @"type_env::init_has_name"(ptr %fld.load158, ptr %var.load159)
  %nottmp161 = xor i1 %call.res160, true
  br i1 %nottmp161, label %choice.then162, label %choice.exit163

str_overflow_abort146:                            ; preds = %concat.sum.len140
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len145

choice.then162:                                   ; preds = %concat.tot.len145
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.27

choice.exit163:                                   ; preds = %concat.tot.len145
  br label %choice.exit73
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
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
  %a.elem.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load11, i32 0, i32 5
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
  %loop.step.28 = alloca i64, align 8
  %loop.idx.28 = alloca i64, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.header.28:                                   ; preds = %loop.latch.28, %entry
  %counter.load = load i64, ptr %loop.idx.28, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.28, label %loop.exit.nat.28

loop.body.28:                                     ; preds = %loop.header.28
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.28, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 5
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load9, i32 0, i32 5
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.28:                                 ; preds = %loop.header.28
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit64
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %choice.then63, %loop.exit.nat.28
  %var.load72 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load72

a.rd.check:                                       ; preds = %loop.body.28
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

a.rd.err.null:                                    ; preds = %loop.body.28
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen49
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %eq.rhs.len50 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len51 = and i64 %eq.rhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.rhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check54:                                  ; preds = %str_ok
  %arena.gen57 = call ptr @dva_arena_current()
  %arena.gen58 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen57, i32 0, i32 4
  %arena.gen59 = load i64, ptr %arena.gen58, align 8
  %str.tag.match60 = icmp eq i64 %str.tag52, %arena.gen59
  br i1 %str.tag.match60, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len47, %eq.rhs.len51
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale56:                                      ; preds = %str_gen_check54
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str.eq.then:                                      ; preds = %str_ok55
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 1
  %eq.lhs.data61 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %eq.rhs.data62 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data61, ptr %eq.rhs.data62, i64 %eq.lhs.len47)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok55
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then63, label %choice.exit64

choice.then63:                                    ; preds = %str.eq.merge
  %arena.cur65 = call ptr @dva_arena_current()
  %ram.alloc66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %tag.gep67 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc66, i32 0, i32 0
  store i64 1, ptr %tag.gep67, align 8
  %pay.gep68 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc66, i32 0, i32 1
  %var.load69 = load ptr, ptr %var.g, align 8
  %fld.gep70 = getelementptr inbounds { ptr, ptr }, ptr %var.load69, i32 0, i32 1
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  store ptr %fld.load71, ptr %pay.gep68, align 8
  store ptr %ram.alloc66, ptr %"var.res'", align 8
  br label %loop.exit.28

choice.exit64:                                    ; preds = %str.eq.merge
  br label %loop.latch.28
}

define ptr @"type_env::lookup_generic"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._121 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit26, %choice.then
  %choice.res228 = phi ptr [ %ram.alloc, %choice.then ], [ %choice.res227, %choice.exit26 ]
  ret ptr %choice.res228

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen9 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen10 = load i64, ptr %arena.gen9, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen10
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.gen17 = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen17, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %str.tag.match20 = icmp eq i64 %str.tag12, %arena.gen19
  br i1 %str.tag.match20, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %str.eq.merge
  %var.load22 = load ptr, ptr %var.name, align 8
  %call.res23 = call i1 @"type_env::name_is_qualified"(ptr %var.load22, i64 0)
  %nottmp = xor i1 %call.res23, true
  br label %and.29.exit

and.29.else:                                      ; preds = %str.eq.merge
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp, %and.29.then ], [ %str.neq, %and.29.else ]
  br i1 %and.29.phi, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %and.29.exit
  %var.load27 = load ptr, ptr %var.env, align 8
  %var.load28 = load ptr, ptr %var.env, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load28, i32 0, i32 8
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 0
  %concat.lhs31 = load i64, ptr %concat.lhs, align 8
  %concat.lhs32 = and i64 %concat.lhs31, 281474976710655
  %str.tag33 = lshr i64 %concat.lhs31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.else25:                                    ; preds = %and.29.exit
  %arena.cur223 = call ptr @dva_arena_current()
  %ram.alloc224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 16)
  %tag.gep225 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc224, i32 0, i32 0
  store i64 0, ptr %tag.gep225, align 8
  %pay.gep226 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc224, i32 0, i32 1
  store ptr null, ptr %pay.gep226, align 8
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.exit120
  %choice.res227 = phi ptr [ %choice.res, %choice.exit120 ], [ %ram.alloc224, %choice.else25 ]
  br label %choice.exit

str_gen_check35:                                  ; preds = %choice.then24
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.then24
  %concat.lhs42 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 1
  %concat.lhs43 = load ptr, ptr %concat.lhs42, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs44 = and i64 %concat.rhs, 281474976710655
  %str.tag45 = lshr i64 %concat.rhs, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

str_stale37:                                      ; preds = %str_gen_check35
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str_gen_check47:                                  ; preds = %str_ok36
  %arena.gen50 = call ptr @dva_arena_current()
  %arena.gen51 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen50, i32 0, i32 4
  %arena.gen52 = load i64, ptr %arena.gen51, align 8
  %str.tag.match53 = icmp eq i64 %str.tag45, %arena.gen52
  br i1 %str.tag.match53, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %str_ok36
  %concat.rhs54 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs32, i64 %concat.rhs44)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len55

str_stale49:                                      ; preds = %str_gen_check47
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

concat.sum.len55:                                 ; preds = %str_overflow_abort, %str_ok48
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort:                               ; preds = %str_ok48
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len55

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len55
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs43, i64 %concat.lhs32, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs54, i64 %concat.rhs44, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur61 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load62 = load ptr, ptr %var.name, align 8
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs64 = load i64, ptr %concat.lhs63, align 8
  %concat.lhs65 = and i64 %concat.lhs64, 281474976710655
  %str.tag66 = lshr i64 %concat.lhs64, 48
  %str.immortal67 = icmp eq i64 %str.tag66, 0
  br i1 %str.immortal67, label %str_ok69, label %str_gen_check68

str_overflow_abort59:                             ; preds = %concat.sum.len55
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

str_gen_check68:                                  ; preds = %concat.tot.len58
  %arena.gen71 = call ptr @dva_arena_current()
  %arena.gen72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen71, i32 0, i32 4
  %arena.gen73 = load i64, ptr %arena.gen72, align 8
  %str.tag.match74 = icmp eq i64 %str.tag66, %arena.gen73
  br i1 %str.tag.match74, label %str_ok69, label %str_stale70

str_ok69:                                         ; preds = %str_stale70, %str_gen_check68, %concat.tot.len58
  %concat.lhs75 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs76 = load ptr, ptr %concat.lhs75, align 8
  %concat.rhs77 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %concat.rhs78 = load i64, ptr %concat.rhs77, align 8
  %concat.rhs79 = and i64 %concat.rhs78, 281474976710655
  %str.tag80 = lshr i64 %concat.rhs78, 48
  %str.immortal81 = icmp eq i64 %str.tag80, 0
  br i1 %str.immortal81, label %str_ok83, label %str_gen_check82

str_stale70:                                      ; preds = %str_gen_check68
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok69

str_gen_check82:                                  ; preds = %str_ok69
  %arena.gen85 = call ptr @dva_arena_current()
  %arena.gen86 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen85, i32 0, i32 4
  %arena.gen87 = load i64, ptr %arena.gen86, align 8
  %str.tag.match88 = icmp eq i64 %str.tag80, %arena.gen87
  br i1 %str.tag.match88, label %str_ok83, label %str_stale84

str_ok83:                                         ; preds = %str_stale84, %str_gen_check82, %str_ok69
  %concat.rhs89 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %concat.rhs90 = load ptr, ptr %concat.rhs89, align 8
  %concat.sum.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs65, i64 %concat.rhs79)
  %sum92 = extractvalue { i64, i1 } %concat.sum.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.sum.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.sum.len94

str_stale84:                                      ; preds = %str_gen_check82
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok83

concat.sum.len94:                                 ; preds = %str_overflow_abort95, %str_ok83
  %concat.tot.len96 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum92, i64 1)
  %sum97 = extractvalue { i64, i1 } %concat.tot.len96, 0
  %ovf98 = extractvalue { i64, i1 } %concat.tot.len96, 1
  br i1 %ovf98, label %str_overflow_abort100, label %concat.tot.len99

str_overflow_abort95:                             ; preds = %str_ok83
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len94

concat.tot.len99:                                 ; preds = %str_overflow_abort100, %concat.sum.len94
  %arena.cur101 = call ptr @dva_arena_current()
  %concat.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf102, ptr align 1 %concat.lhs76, i64 %concat.lhs65, i1 false)
  %concat.mid103 = getelementptr i8, ptr %concat.buf102, i64 %concat.lhs65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid103, ptr align 1 %concat.rhs90, i64 %concat.rhs79, i1 false)
  %concat.nul104 = getelementptr i8, ptr %concat.buf102, i64 %sum92
  store i8 0, ptr %concat.nul104, align 1
  %arena.cur105 = call ptr @dva_arena_current()
  %concat.str106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 16)
  %str.build.len.gep107 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 0
  store i64 %sum92, ptr %str.build.len.gep107, align 8
  %str.build.data.gep108 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 1
  store ptr %concat.buf102, ptr %str.build.data.gep108, align 8
  %call.res109 = call ptr @"type_env::lookup_generic_exact"(ptr %var.load27, ptr %concat.str106)
  store ptr %call.res109, ptr %var.pub, align 8
  %var.load110 = load ptr, ptr %var.pub, align 8
  %tag.gep111 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 0
  %tag.id112 = load i64, ptr %tag.gep111, align 8
  %tag.eq.one113 = icmp eq i64 %tag.id112, 1
  %tag.eq.two114 = icmp eq i64 %tag.id112, 2
  %is.pos115 = or i1 %tag.eq.one113, %tag.eq.two114
  %pay.gep116 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 1
  %payload.ptr117 = load ptr, ptr %pay.gep116, align 8
  br i1 %is.pos115, label %choice.then118, label %choice.else119

str_overflow_abort100:                            ; preds = %concat.sum.len94
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len99

choice.then118:                                   ; preds = %concat.tot.len99
  store ptr %payload.ptr117, ptr %var._121, align 8
  store ptr %payload.ptr117, ptr %var.p, align 8
  %arena.cur122 = call ptr @dva_arena_current()
  %ram.alloc123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 16)
  %tag.gep124 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc123, i32 0, i32 0
  store i64 1, ptr %tag.gep124, align 8
  %pay.gep125 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc123, i32 0, i32 1
  %var.load126 = load ptr, ptr %var.p, align 8
  store ptr %var.load126, ptr %pay.gep125, align 8
  br label %choice.exit120

choice.else119:                                   ; preds = %concat.tot.len99
  %var.load127 = load ptr, ptr %var.env, align 8
  %var.load128 = load ptr, ptr %var.env, align 8
  %fld.gep129 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load128, i32 0, i32 8
  %fld.load130 = load ptr, ptr %fld.gep129, align 8
  %concat.lhs131 = getelementptr inbounds { i64, ptr }, ptr %fld.load130, i32 0, i32 0
  %concat.lhs132 = load i64, ptr %concat.lhs131, align 8
  %concat.lhs133 = and i64 %concat.lhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.lhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

choice.exit120:                                   ; preds = %concat.tot.len212, %choice.then118
  %choice.res = phi ptr [ %ram.alloc123, %choice.then118 ], [ %call.res222, %concat.tot.len212 ]
  br label %choice.exit26

str_gen_check136:                                 ; preds = %choice.else119
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %choice.else119
  %concat.lhs143 = getelementptr inbounds { i64, ptr }, ptr %fld.load130, i32 0, i32 1
  %concat.lhs144 = load ptr, ptr %concat.lhs143, align 8
  %concat.rhs145 = load i64, ptr @str.7.struct, align 8
  %concat.rhs146 = and i64 %concat.rhs145, 281474976710655
  %str.tag147 = lshr i64 %concat.rhs145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_stale138:                                     ; preds = %str_gen_check136
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

str_gen_check149:                                 ; preds = %str_ok137
  %arena.gen152 = call ptr @dva_arena_current()
  %arena.gen153 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen152, i32 0, i32 4
  %arena.gen154 = load i64, ptr %arena.gen153, align 8
  %str.tag.match155 = icmp eq i64 %str.tag147, %arena.gen154
  br i1 %str.tag.match155, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %str_ok137
  %concat.rhs156 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs133, i64 %concat.rhs146)
  %sum158 = extractvalue { i64, i1 } %concat.sum.len157, 0
  %ovf159 = extractvalue { i64, i1 } %concat.sum.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %concat.sum.len160

str_stale151:                                     ; preds = %str_gen_check149
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

concat.sum.len160:                                ; preds = %str_overflow_abort161, %str_ok150
  %concat.tot.len162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum158, i64 1)
  %sum163 = extractvalue { i64, i1 } %concat.tot.len162, 0
  %ovf164 = extractvalue { i64, i1 } %concat.tot.len162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %concat.tot.len165

str_overflow_abort161:                            ; preds = %str_ok150
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len160

concat.tot.len165:                                ; preds = %str_overflow_abort166, %concat.sum.len160
  %arena.cur167 = call ptr @dva_arena_current()
  %concat.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum163)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf168, ptr align 1 %concat.lhs144, i64 %concat.lhs133, i1 false)
  %concat.mid169 = getelementptr i8, ptr %concat.buf168, i64 %concat.lhs133
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid169, ptr align 1 %concat.rhs156, i64 %concat.rhs146, i1 false)
  %concat.nul170 = getelementptr i8, ptr %concat.buf168, i64 %sum158
  store i8 0, ptr %concat.nul170, align 1
  %arena.cur171 = call ptr @dva_arena_current()
  %concat.str172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 16)
  %str.build.len.gep173 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 0
  store i64 %sum158, ptr %str.build.len.gep173, align 8
  %str.build.data.gep174 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 1
  store ptr %concat.buf168, ptr %str.build.data.gep174, align 8
  %var.load175 = load ptr, ptr %var.name, align 8
  %concat.lhs176 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 0
  %concat.lhs177 = load i64, ptr %concat.lhs176, align 8
  %concat.lhs178 = and i64 %concat.lhs177, 281474976710655
  %str.tag179 = lshr i64 %concat.lhs177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_overflow_abort166:                            ; preds = %concat.sum.len160
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len165

str_gen_check181:                                 ; preds = %concat.tot.len165
  %arena.gen184 = call ptr @dva_arena_current()
  %arena.gen185 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen184, i32 0, i32 4
  %arena.gen186 = load i64, ptr %arena.gen185, align 8
  %str.tag.match187 = icmp eq i64 %str.tag179, %arena.gen186
  br i1 %str.tag.match187, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %concat.tot.len165
  %concat.lhs188 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 1
  %concat.lhs189 = load ptr, ptr %concat.lhs188, align 8
  %concat.rhs190 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %concat.rhs191 = load i64, ptr %concat.rhs190, align 8
  %concat.rhs192 = and i64 %concat.rhs191, 281474976710655
  %str.tag193 = lshr i64 %concat.rhs191, 48
  %str.immortal194 = icmp eq i64 %str.tag193, 0
  br i1 %str.immortal194, label %str_ok196, label %str_gen_check195

str_stale183:                                     ; preds = %str_gen_check181
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

str_gen_check195:                                 ; preds = %str_ok182
  %arena.gen198 = call ptr @dva_arena_current()
  %arena.gen199 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen198, i32 0, i32 4
  %arena.gen200 = load i64, ptr %arena.gen199, align 8
  %str.tag.match201 = icmp eq i64 %str.tag193, %arena.gen200
  br i1 %str.tag.match201, label %str_ok196, label %str_stale197

str_ok196:                                        ; preds = %str_stale197, %str_gen_check195, %str_ok182
  %concat.rhs202 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 1
  %concat.rhs203 = load ptr, ptr %concat.rhs202, align 8
  %concat.sum.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs178, i64 %concat.rhs192)
  %sum205 = extractvalue { i64, i1 } %concat.sum.len204, 0
  %ovf206 = extractvalue { i64, i1 } %concat.sum.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %concat.sum.len207

str_stale197:                                     ; preds = %str_gen_check195
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok196

concat.sum.len207:                                ; preds = %str_overflow_abort208, %str_ok196
  %concat.tot.len209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum205, i64 1)
  %sum210 = extractvalue { i64, i1 } %concat.tot.len209, 0
  %ovf211 = extractvalue { i64, i1 } %concat.tot.len209, 1
  br i1 %ovf211, label %str_overflow_abort213, label %concat.tot.len212

str_overflow_abort208:                            ; preds = %str_ok196
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len207

concat.tot.len212:                                ; preds = %str_overflow_abort213, %concat.sum.len207
  %arena.cur214 = call ptr @dva_arena_current()
  %concat.buf215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 %sum210)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf215, ptr align 1 %concat.lhs189, i64 %concat.lhs178, i1 false)
  %concat.mid216 = getelementptr i8, ptr %concat.buf215, i64 %concat.lhs178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid216, ptr align 1 %concat.rhs203, i64 %concat.rhs192, i1 false)
  %concat.nul217 = getelementptr i8, ptr %concat.buf215, i64 %sum205
  store i8 0, ptr %concat.nul217, align 1
  %arena.cur218 = call ptr @dva_arena_current()
  %concat.str219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %str.build.len.gep220 = getelementptr inbounds { i64, ptr }, ptr %concat.str219, i32 0, i32 0
  store i64 %sum205, ptr %str.build.len.gep220, align 8
  %str.build.data.gep221 = getelementptr inbounds { i64, ptr }, ptr %concat.str219, i32 0, i32 1
  store ptr %concat.buf215, ptr %str.build.data.gep221, align 8
  %call.res222 = call ptr @"type_env::lookup_generic_exact"(ptr %var.load127, ptr %concat.str219)
  br label %choice.exit120

str_overflow_abort213:                            ; preds = %concat.sum.len207
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len212
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 6
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
  %a.elem.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
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
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load13, i32 0, i32 6
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
  %loop.step.30 = alloca i64, align 8
  %loop.idx.30 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.30, align 8
  br label %loop.header.30

loop.header.30:                                   ; preds = %loop.latch.30, %entry
  %counter.load = load i64, ptr %loop.idx.30, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.30, label %loop.exit.nat.30

loop.body.30:                                     ; preds = %loop.header.30
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.30, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load2, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load9, i32 0, i32 6
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.30:                                 ; preds = %loop.header.30
  br label %loop.exit.30

loop.latch.30:                                    ; preds = %choice.exit66
  %step.val = load i64, ptr %loop.step.30, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.30, align 8
  br label %loop.header.30

loop.exit.30:                                     ; preds = %choice.then65, %loop.exit.nat.30
  %var.load68 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load68

a.rd.check:                                       ; preds = %loop.body.30
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

a.rd.err.null:                                    ; preds = %loop.body.30
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen50 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen51 = load i64, ptr %arena.gen50, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen51
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %eq.rhs.len52 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len53 = and i64 %eq.rhs.len52, 281474976710655
  %str.tag54 = lshr i64 %eq.rhs.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check56:                                  ; preds = %str_ok
  %arena.gen59 = call ptr @dva_arena_current()
  %arena.gen60 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen59, i32 0, i32 4
  %arena.gen61 = load i64, ptr %arena.gen60, align 8
  %str.tag.match62 = icmp eq i64 %str.tag54, %arena.gen61
  br i1 %str.tag.match62, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len49, %eq.rhs.len53
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale58:                                      ; preds = %str_gen_check56
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

str.eq.then:                                      ; preds = %str_ok57
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 1
  %eq.lhs.data63 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %eq.rhs.data64 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data63, ptr %eq.rhs.data64, i64 %eq.lhs.len49)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok57
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then65, label %choice.exit66

choice.then65:                                    ; preds = %str.eq.merge
  %var.load67 = load ptr, ptr %var.u, align 8
  store ptr %var.load67, ptr %"var.res'", align 8
  br label %loop.exit.30

choice.exit66:                                    ; preds = %str.eq.merge
  br label %loop.latch.30
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._112 = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit24, %choice.then
  %choice.res211 = phi ptr [ %var.load3, %choice.then ], [ %choice.res210, %choice.exit24 ]
  ret ptr %choice.res211

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen7 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen8 = load i64, ptr %arena.gen7, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen8
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.gen15 = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen15, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match18 = icmp eq i64 %str.tag10, %arena.gen17
  br i1 %str.tag.match18, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.31.then, label %and.31.else

and.31.then:                                      ; preds = %str.eq.merge
  %var.load20 = load ptr, ptr %var.name, align 8
  %call.res21 = call i1 @"type_env::name_is_qualified"(ptr %var.load20, i64 0)
  %nottmp = xor i1 %call.res21, true
  br label %and.31.exit

and.31.else:                                      ; preds = %str.eq.merge
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %and.31.then
  %and.31.phi = phi i1 [ %nottmp, %and.31.then ], [ %str.neq, %and.31.else ]
  br i1 %and.31.phi, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %and.31.exit
  %var.load25 = load ptr, ptr %var.env, align 8
  %var.load26 = load ptr, ptr %var.env, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load26, i32 0, i32 8
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %concat.lhs29 = load i64, ptr %concat.lhs, align 8
  %concat.lhs30 = and i64 %concat.lhs29, 281474976710655
  %str.tag31 = lshr i64 %concat.lhs29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.else23:                                    ; preds = %and.31.exit
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.exit111
  %choice.res210 = phi ptr [ %choice.res, %choice.exit111 ], [ null, %choice.else23 ]
  br label %choice.exit

str_gen_check33:                                  ; preds = %choice.then22
  %arena.gen36 = call ptr @dva_arena_current()
  %arena.gen37 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen36, i32 0, i32 4
  %arena.gen38 = load i64, ptr %arena.gen37, align 8
  %str.tag.match39 = icmp eq i64 %str.tag31, %arena.gen38
  br i1 %str.tag.match39, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then22
  %concat.lhs40 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %concat.lhs41 = load ptr, ptr %concat.lhs40, align 8
  %concat.rhs = load i64, ptr @str.6.struct, align 8
  %concat.rhs42 = and i64 %concat.rhs, 281474976710655
  %str.tag43 = lshr i64 %concat.rhs, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check45:                                  ; preds = %str_ok34
  %arena.gen48 = call ptr @dva_arena_current()
  %arena.gen49 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen48, i32 0, i32 4
  %arena.gen50 = load i64, ptr %arena.gen49, align 8
  %str.tag.match51 = icmp eq i64 %str.tag43, %arena.gen50
  br i1 %str.tag.match51, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok34
  %concat.rhs52 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs30, i64 %concat.rhs42)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len53

str_stale47:                                      ; preds = %str_gen_check45
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

concat.sum.len53:                                 ; preds = %str_overflow_abort, %str_ok46
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort:                               ; preds = %str_ok46
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len53
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs41, i64 %concat.lhs30, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs52, i64 %concat.rhs42, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load59 = load ptr, ptr %var.name, align 8
  %concat.lhs60 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs61 = load i64, ptr %concat.lhs60, align 8
  %concat.lhs62 = and i64 %concat.lhs61, 281474976710655
  %str.tag63 = lshr i64 %concat.lhs61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

str_overflow_abort57:                             ; preds = %concat.sum.len53
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56

str_gen_check65:                                  ; preds = %concat.tot.len56
  %arena.gen68 = call ptr @dva_arena_current()
  %arena.gen69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen68, i32 0, i32 4
  %arena.gen70 = load i64, ptr %arena.gen69, align 8
  %str.tag.match71 = icmp eq i64 %str.tag63, %arena.gen70
  br i1 %str.tag.match71, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %concat.tot.len56
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale67:                                      ; preds = %str_gen_check65
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str_gen_check79:                                  ; preds = %str_ok66
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok66
  %concat.rhs86 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %concat.rhs87 = load ptr, ptr %concat.rhs86, align 8
  %concat.sum.len88 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs62, i64 %concat.rhs76)
  %sum89 = extractvalue { i64, i1 } %concat.sum.len88, 0
  %ovf90 = extractvalue { i64, i1 } %concat.sum.len88, 1
  br i1 %ovf90, label %str_overflow_abort92, label %concat.sum.len91

str_stale81:                                      ; preds = %str_gen_check79
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len91:                                 ; preds = %str_overflow_abort92, %str_ok80
  %concat.tot.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum89, i64 1)
  %sum94 = extractvalue { i64, i1 } %concat.tot.len93, 0
  %ovf95 = extractvalue { i64, i1 } %concat.tot.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %concat.tot.len96

str_overflow_abort92:                             ; preds = %str_ok80
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len91

concat.tot.len96:                                 ; preds = %str_overflow_abort97, %concat.sum.len91
  %arena.cur98 = call ptr @dva_arena_current()
  %concat.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 %sum94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf99, ptr align 1 %concat.lhs73, i64 %concat.lhs62, i1 false)
  %concat.mid100 = getelementptr i8, ptr %concat.buf99, i64 %concat.lhs62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid100, ptr align 1 %concat.rhs87, i64 %concat.rhs76, i1 false)
  %concat.nul101 = getelementptr i8, ptr %concat.buf99, i64 %sum89
  store i8 0, ptr %concat.nul101, align 1
  %arena.cur102 = call ptr @dva_arena_current()
  %concat.str103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 0
  store i64 %sum89, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 1
  store ptr %concat.buf99, ptr %str.build.data.gep105, align 8
  %call.res106 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load25, ptr %concat.str103)
  store ptr %call.res106, ptr %var.pub, align 8
  %var.load107 = load ptr, ptr %var.pub, align 8
  %niche.ne.null108 = icmp ne ptr %var.load107, null
  br i1 %niche.ne.null108, label %choice.then109, label %choice.else110

str_overflow_abort97:                             ; preds = %concat.sum.len91
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len96

choice.then109:                                   ; preds = %concat.tot.len96
  store ptr %var.load107, ptr %var._112, align 8
  store ptr %var.load107, ptr %var.p, align 8
  %var.load113 = load ptr, ptr %var.p, align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %concat.tot.len96
  %var.load114 = load ptr, ptr %var.env, align 8
  %var.load115 = load ptr, ptr %var.env, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load115, i32 0, i32 8
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %concat.lhs118 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %concat.lhs119 = load i64, ptr %concat.lhs118, align 8
  %concat.lhs120 = and i64 %concat.lhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.lhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

choice.exit111:                                   ; preds = %concat.tot.len199, %choice.then109
  %choice.res = phi ptr [ %var.load113, %choice.then109 ], [ %call.res209, %concat.tot.len199 ]
  br label %choice.exit24

str_gen_check123:                                 ; preds = %choice.else110
  %arena.gen126 = call ptr @dva_arena_current()
  %arena.gen127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen126, i32 0, i32 4
  %arena.gen128 = load i64, ptr %arena.gen127, align 8
  %str.tag.match129 = icmp eq i64 %str.tag121, %arena.gen128
  br i1 %str.tag.match129, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %choice.else110
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.7.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale125:                                     ; preds = %str_gen_check123
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

str_gen_check136:                                 ; preds = %str_ok124
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok124
  %concat.rhs143 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs120, i64 %concat.rhs133)
  %sum145 = extractvalue { i64, i1 } %concat.sum.len144, 0
  %ovf146 = extractvalue { i64, i1 } %concat.sum.len144, 1
  br i1 %ovf146, label %str_overflow_abort148, label %concat.sum.len147

str_stale138:                                     ; preds = %str_gen_check136
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len147:                                ; preds = %str_overflow_abort148, %str_ok137
  %concat.tot.len149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum145, i64 1)
  %sum150 = extractvalue { i64, i1 } %concat.tot.len149, 0
  %ovf151 = extractvalue { i64, i1 } %concat.tot.len149, 1
  br i1 %ovf151, label %str_overflow_abort153, label %concat.tot.len152

str_overflow_abort148:                            ; preds = %str_ok137
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len147

concat.tot.len152:                                ; preds = %str_overflow_abort153, %concat.sum.len147
  %arena.cur154 = call ptr @dva_arena_current()
  %concat.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 %sum150)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf155, ptr align 1 %concat.lhs131, i64 %concat.lhs120, i1 false)
  %concat.mid156 = getelementptr i8, ptr %concat.buf155, i64 %concat.lhs120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid156, ptr align 1 %concat.rhs143, i64 %concat.rhs133, i1 false)
  %concat.nul157 = getelementptr i8, ptr %concat.buf155, i64 %sum145
  store i8 0, ptr %concat.nul157, align 1
  %arena.cur158 = call ptr @dva_arena_current()
  %concat.str159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  %str.build.len.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 0
  store i64 %sum145, ptr %str.build.len.gep160, align 8
  %str.build.data.gep161 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 1
  store ptr %concat.buf155, ptr %str.build.data.gep161, align 8
  %var.load162 = load ptr, ptr %var.name, align 8
  %concat.lhs163 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 0
  %concat.lhs164 = load i64, ptr %concat.lhs163, align 8
  %concat.lhs165 = and i64 %concat.lhs164, 281474976710655
  %str.tag166 = lshr i64 %concat.lhs164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

str_overflow_abort153:                            ; preds = %concat.sum.len147
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len152

str_gen_check168:                                 ; preds = %concat.tot.len152
  %arena.gen171 = call ptr @dva_arena_current()
  %arena.gen172 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen171, i32 0, i32 4
  %arena.gen173 = load i64, ptr %arena.gen172, align 8
  %str.tag.match174 = icmp eq i64 %str.tag166, %arena.gen173
  br i1 %str.tag.match174, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %concat.tot.len152
  %concat.lhs175 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 1
  %concat.lhs176 = load ptr, ptr %concat.lhs175, align 8
  %concat.rhs177 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %concat.rhs178 = load i64, ptr %concat.rhs177, align 8
  %concat.rhs179 = and i64 %concat.rhs178, 281474976710655
  %str.tag180 = lshr i64 %concat.rhs178, 48
  %str.immortal181 = icmp eq i64 %str.tag180, 0
  br i1 %str.immortal181, label %str_ok183, label %str_gen_check182

str_stale170:                                     ; preds = %str_gen_check168
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str_gen_check182:                                 ; preds = %str_ok169
  %arena.gen185 = call ptr @dva_arena_current()
  %arena.gen186 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen185, i32 0, i32 4
  %arena.gen187 = load i64, ptr %arena.gen186, align 8
  %str.tag.match188 = icmp eq i64 %str.tag180, %arena.gen187
  br i1 %str.tag.match188, label %str_ok183, label %str_stale184

str_ok183:                                        ; preds = %str_stale184, %str_gen_check182, %str_ok169
  %concat.rhs189 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %concat.rhs190 = load ptr, ptr %concat.rhs189, align 8
  %concat.sum.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs165, i64 %concat.rhs179)
  %sum192 = extractvalue { i64, i1 } %concat.sum.len191, 0
  %ovf193 = extractvalue { i64, i1 } %concat.sum.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %concat.sum.len194

str_stale184:                                     ; preds = %str_gen_check182
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok183

concat.sum.len194:                                ; preds = %str_overflow_abort195, %str_ok183
  %concat.tot.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum192, i64 1)
  %sum197 = extractvalue { i64, i1 } %concat.tot.len196, 0
  %ovf198 = extractvalue { i64, i1 } %concat.tot.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %concat.tot.len199

str_overflow_abort195:                            ; preds = %str_ok183
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len194

concat.tot.len199:                                ; preds = %str_overflow_abort200, %concat.sum.len194
  %arena.cur201 = call ptr @dva_arena_current()
  %concat.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 %sum197)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf202, ptr align 1 %concat.lhs176, i64 %concat.lhs165, i1 false)
  %concat.mid203 = getelementptr i8, ptr %concat.buf202, i64 %concat.lhs165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid203, ptr align 1 %concat.rhs190, i64 %concat.rhs179, i1 false)
  %concat.nul204 = getelementptr i8, ptr %concat.buf202, i64 %sum192
  store i8 0, ptr %concat.nul204, align 1
  %arena.cur205 = call ptr @dva_arena_current()
  %concat.str206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 16)
  %str.build.len.gep207 = getelementptr inbounds { i64, ptr }, ptr %concat.str206, i32 0, i32 0
  store i64 %sum192, ptr %str.build.len.gep207, align 8
  %str.build.data.gep208 = getelementptr inbounds { i64, ptr }, ptr %concat.str206, i32 0, i32 1
  store ptr %concat.buf202, ptr %str.build.data.gep208, align 8
  %call.res209 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load114, ptr %concat.str206)
  br label %choice.exit111

str_overflow_abort200:                            ; preds = %concat.sum.len194
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len199
}

define i1 @"type_env::is_prelude_fn"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %str.eq.merge177
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge177
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len16, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_gen_check21:                                  ; preds = %str.eq.merge
  %arena.gen24 = call ptr @dva_arena_current()
  %arena.gen25 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen24, i32 0, i32 4
  %arena.gen26 = load i64, ptr %arena.gen25, align 8
  %str.tag.match27 = icmp eq i64 %str.tag19, %arena.gen26
  br i1 %str.tag.match27, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %str.eq.merge
  %eq.rhs.len28 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len29 = and i64 %eq.rhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.rhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

str_gen_check32:                                  ; preds = %str_ok22
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok22
  %eq.len39 = icmp eq i64 %eq.lhs.len18, %eq.rhs.len29
  br i1 %eq.len39, label %str.eq.then40, label %str.eq.else41

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str.eq.then40:                                    ; preds = %str_ok33
  %eq.lhs.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data43, align 8
  %eq.rhs.data45 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp46 = call i32 @memcmp(ptr %eq.lhs.data44, ptr %eq.rhs.data45, i64 %eq.lhs.len18)
  %eq.cmp.zero47 = icmp eq i32 %eq.memcmp46, 0
  br label %str.eq.merge42

str.eq.else41:                                    ; preds = %str_ok33
  br label %str.eq.merge42

str.eq.merge42:                                   ; preds = %str.eq.else41, %str.eq.then40
  %str.eq.result48 = phi i1 [ %eq.cmp.zero47, %str.eq.then40 ], [ false, %str.eq.else41 ]
  %case.or = or i1 %str.eq.result, %str.eq.result48
  %eq.lhs.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len49, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

str_gen_check54:                                  ; preds = %str.eq.merge42
  %arena.gen57 = call ptr @dva_arena_current()
  %arena.gen58 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen57, i32 0, i32 4
  %arena.gen59 = load i64, ptr %arena.gen58, align 8
  %str.tag.match60 = icmp eq i64 %str.tag52, %arena.gen59
  br i1 %str.tag.match60, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %str.eq.merge42
  %eq.rhs.len61 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len62 = and i64 %eq.rhs.len61, 281474976710655
  %str.tag63 = lshr i64 %eq.rhs.len61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

str_stale56:                                      ; preds = %str_gen_check54
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check65:                                  ; preds = %str_ok55
  %arena.gen68 = call ptr @dva_arena_current()
  %arena.gen69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen68, i32 0, i32 4
  %arena.gen70 = load i64, ptr %arena.gen69, align 8
  %str.tag.match71 = icmp eq i64 %str.tag63, %arena.gen70
  br i1 %str.tag.match71, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %str_ok55
  %eq.len72 = icmp eq i64 %eq.lhs.len51, %eq.rhs.len62
  br i1 %eq.len72, label %str.eq.then73, label %str.eq.else74

str_stale67:                                      ; preds = %str_gen_check65
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str.eq.then73:                                    ; preds = %str_ok66
  %eq.lhs.data76 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data77 = load ptr, ptr %eq.lhs.data76, align 8
  %eq.rhs.data78 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp79 = call i32 @memcmp(ptr %eq.lhs.data77, ptr %eq.rhs.data78, i64 %eq.lhs.len51)
  %eq.cmp.zero80 = icmp eq i32 %eq.memcmp79, 0
  br label %str.eq.merge75

str.eq.else74:                                    ; preds = %str_ok66
  br label %str.eq.merge75

str.eq.merge75:                                   ; preds = %str.eq.else74, %str.eq.then73
  %str.eq.result81 = phi i1 [ %eq.cmp.zero80, %str.eq.then73 ], [ false, %str.eq.else74 ]
  %case.or82 = or i1 %case.or, %str.eq.result81
  %eq.lhs.len83 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len84 = load i64, ptr %eq.lhs.len83, align 8
  %eq.lhs.len85 = and i64 %eq.lhs.len84, 281474976710655
  %str.tag86 = lshr i64 %eq.lhs.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_gen_check88:                                  ; preds = %str.eq.merge75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str.eq.merge75
  %eq.rhs.len95 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len96 = and i64 %eq.rhs.len95, 281474976710655
  %str.tag97 = lshr i64 %eq.rhs.len95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

str_stale90:                                      ; preds = %str_gen_check88
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check99:                                  ; preds = %str_ok89
  %arena.gen102 = call ptr @dva_arena_current()
  %arena.gen103 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen102, i32 0, i32 4
  %arena.gen104 = load i64, ptr %arena.gen103, align 8
  %str.tag.match105 = icmp eq i64 %str.tag97, %arena.gen104
  br i1 %str.tag.match105, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %str_ok89
  %eq.len106 = icmp eq i64 %eq.lhs.len85, %eq.rhs.len96
  br i1 %eq.len106, label %str.eq.then107, label %str.eq.else108

str_stale101:                                     ; preds = %str_gen_check99
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

str.eq.then107:                                   ; preds = %str_ok100
  %eq.lhs.data110 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data111 = load ptr, ptr %eq.lhs.data110, align 8
  %eq.rhs.data112 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp113 = call i32 @memcmp(ptr %eq.lhs.data111, ptr %eq.rhs.data112, i64 %eq.lhs.len85)
  %eq.cmp.zero114 = icmp eq i32 %eq.memcmp113, 0
  br label %str.eq.merge109

str.eq.else108:                                   ; preds = %str_ok100
  br label %str.eq.merge109

str.eq.merge109:                                  ; preds = %str.eq.else108, %str.eq.then107
  %str.eq.result115 = phi i1 [ %eq.cmp.zero114, %str.eq.then107 ], [ false, %str.eq.else108 ]
  %case.or116 = or i1 %case.or82, %str.eq.result115
  %eq.lhs.len117 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len118 = load i64, ptr %eq.lhs.len117, align 8
  %eq.lhs.len119 = and i64 %eq.lhs.len118, 281474976710655
  %str.tag120 = lshr i64 %eq.lhs.len118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_gen_check122:                                 ; preds = %str.eq.merge109
  %arena.gen125 = call ptr @dva_arena_current()
  %arena.gen126 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen125, i32 0, i32 4
  %arena.gen127 = load i64, ptr %arena.gen126, align 8
  %str.tag.match128 = icmp eq i64 %str.tag120, %arena.gen127
  br i1 %str.tag.match128, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %str.eq.merge109
  %eq.rhs.len129 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %str.tag131 = lshr i64 %eq.rhs.len129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale124:                                     ; preds = %str_gen_check122
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

str_gen_check133:                                 ; preds = %str_ok123
  %arena.gen136 = call ptr @dva_arena_current()
  %arena.gen137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen136, i32 0, i32 4
  %arena.gen138 = load i64, ptr %arena.gen137, align 8
  %str.tag.match139 = icmp eq i64 %str.tag131, %arena.gen138
  br i1 %str.tag.match139, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok123
  %eq.len140 = icmp eq i64 %eq.lhs.len119, %eq.rhs.len130
  br i1 %eq.len140, label %str.eq.then141, label %str.eq.else142

str_stale135:                                     ; preds = %str_gen_check133
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

str.eq.then141:                                   ; preds = %str_ok134
  %eq.lhs.data144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data145 = load ptr, ptr %eq.lhs.data144, align 8
  %eq.rhs.data146 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp147 = call i32 @memcmp(ptr %eq.lhs.data145, ptr %eq.rhs.data146, i64 %eq.lhs.len119)
  %eq.cmp.zero148 = icmp eq i32 %eq.memcmp147, 0
  br label %str.eq.merge143

str.eq.else142:                                   ; preds = %str_ok134
  br label %str.eq.merge143

str.eq.merge143:                                  ; preds = %str.eq.else142, %str.eq.then141
  %str.eq.result149 = phi i1 [ %eq.cmp.zero148, %str.eq.then141 ], [ false, %str.eq.else142 ]
  %case.or150 = or i1 %case.or116, %str.eq.result149
  %eq.lhs.len151 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len152 = load i64, ptr %eq.lhs.len151, align 8
  %eq.lhs.len153 = and i64 %eq.lhs.len152, 281474976710655
  %str.tag154 = lshr i64 %eq.lhs.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

str_gen_check156:                                 ; preds = %str.eq.merge143
  %arena.gen159 = call ptr @dva_arena_current()
  %arena.gen160 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen159, i32 0, i32 4
  %arena.gen161 = load i64, ptr %arena.gen160, align 8
  %str.tag.match162 = icmp eq i64 %str.tag154, %arena.gen161
  br i1 %str.tag.match162, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %str.eq.merge143
  %eq.rhs.len163 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len164 = and i64 %eq.rhs.len163, 281474976710655
  %str.tag165 = lshr i64 %eq.rhs.len163, 48
  %str.immortal166 = icmp eq i64 %str.tag165, 0
  br i1 %str.immortal166, label %str_ok168, label %str_gen_check167

str_stale158:                                     ; preds = %str_gen_check156
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str_gen_check167:                                 ; preds = %str_ok157
  %arena.gen170 = call ptr @dva_arena_current()
  %arena.gen171 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen170, i32 0, i32 4
  %arena.gen172 = load i64, ptr %arena.gen171, align 8
  %str.tag.match173 = icmp eq i64 %str.tag165, %arena.gen172
  br i1 %str.tag.match173, label %str_ok168, label %str_stale169

str_ok168:                                        ; preds = %str_stale169, %str_gen_check167, %str_ok157
  %eq.len174 = icmp eq i64 %eq.lhs.len153, %eq.rhs.len164
  br i1 %eq.len174, label %str.eq.then175, label %str.eq.else176

str_stale169:                                     ; preds = %str_gen_check167
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok168

str.eq.then175:                                   ; preds = %str_ok168
  %eq.lhs.data178 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data179 = load ptr, ptr %eq.lhs.data178, align 8
  %eq.rhs.data180 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp181 = call i32 @memcmp(ptr %eq.lhs.data179, ptr %eq.rhs.data180, i64 %eq.lhs.len153)
  %eq.cmp.zero182 = icmp eq i32 %eq.memcmp181, 0
  br label %str.eq.merge177

str.eq.else176:                                   ; preds = %str_ok168
  br label %str.eq.merge177

str.eq.merge177:                                  ; preds = %str.eq.else176, %str.eq.then175
  %str.eq.result183 = phi i1 [ %eq.cmp.zero182, %str.eq.then175 ], [ false, %str.eq.else176 ]
  %case.or184 = or i1 %case.or150, %str.eq.result183
  br i1 %case.or184, label %choice.case, label %choice.next
}

define i1 @"type_env::is_prelude_active"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::is_prelude_fn"(ptr %var.load)
  br i1 %call.res, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.env, align 8
  %call.res2 = call ptr @"type_env::lookup_binding"(ptr %var.load1, ptr @str.9.struct)
  %niche.ne.null = icmp ne ptr %call.res2, null
  br label %and.32.exit

and.32.else:                                      ; preds = %entry
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %and.32.then
  %and.32.phi = phi i1 [ %niche.ne.null, %and.32.then ], [ %call.res, %and.32.else ]
  ret i1 %and.32.phi
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
