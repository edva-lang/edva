; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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

define internal void @__dva_global_init_type_env() #3 {
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

define ptr @"type_env::empty_scope"() #3 {
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

define ptr @"type_env::new_init"() #3 {
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

define ptr @"type_env::new_env"() #3 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define void @"type_env::cache_fn_body"(ptr %0, ptr %1, ptr %2) #3 {
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
  %hash.str = call i64 @dva_hash_string(ptr %mk.data8, i64 %mk.len10)
  %m.capm1 = sub i64 %m.cap4, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

m.loop:                                           ; preds = %m.next, %entry
  %m.idx = phi i64 [ %m.idx0, %entry ], [ %m.idx.next, %m.next ]
  %m.tomb11 = phi i64 [ -1, %entry ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %entry ], [ %m.probe.next, %m.next ]
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
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen14 = load i64, ptr %mk.nlen, align 8
  %mk.nlen15 = and i64 %mk.nlen14, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen13, %mk.nlen15
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

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

m.done:                                           ; preds = %m.ins.slot, %m.done111, %m.overwrite
  ret void

mk.eq.then:                                       ; preds = %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata16 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata17 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata16, ptr %mk.ndata17, i64 %mk.nlen15)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.old.cap18 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.old.keys19 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.old.vals20 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.old.states21 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap18, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.live.cnt22 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt22, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap18
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap18
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %m.gv.bytes)
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %m.new.cap)
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
  %m.use.tomb160 = icmp ne i64 %m.tomb11, -1
  %m.ins.idx161 = select i1 %m.use.tomb160, i64 %m.tomb11, i64 %m.idx
  %m.key.slot162 = getelementptr i64, ptr %m.keys5, i64 %m.ins.idx161
  store ptr %var.load2, ptr %m.key.slot162, align 8
  %m.val.slot163 = getelementptr i64, ptr %m.vals6, i64 %m.ins.idx161
  store i64 %slot.p2i, ptr %m.val.slot163, align 8
  %m.ins.state.slot164 = getelementptr i8, ptr %m.states7, i64 %m.ins.idx161
  store i8 1, ptr %m.ins.state.slot164, align 1
  %m.count165 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count166 = load i64, ptr %m.count165, align 8
  %m.count.next167 = add i64 %m.count166, 1
  %m.count.gep168 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next167, ptr %m.count.gep168, align 8
  %m.ins.tombs.p169 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs170 = load i64, ptr %m.ins.tombs.p169, align 8
  %m.tomb.dec171 = select i1 %m.use.tomb160, i64 1, i64 0
  %m.ins.tombs.next172 = sub i64 %m.ins.tombs170, %m.tomb.dec171
  store i64 %m.ins.tombs.next172, ptr %m.ins.tombs.p169, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap18
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states21, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done48, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap88 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap89 = load i64, ptr %m.cap88, align 8
  %m.keys90 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys91 = load ptr, ptr %m.keys90, align 8
  %m.vals92 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals93 = load ptr, ptr %m.vals92, align 8
  %m.states94 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states95 = load ptr, ptr %m.states94, align 8
  %mk.data96 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data97 = load ptr, ptr %mk.data96, align 8
  %mk.len98 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len99 = load i64, ptr %mk.len98, align 8
  %mk.len100 = and i64 %mk.len99, 281474976710655
  %hash.str101 = call i64 @dva_hash_string(ptr %mk.data97, i64 %mk.len100)
  %m.capm1102 = sub i64 %m.cap89, 1
  %m.idx0103 = and i64 %hash.str101, %m.capm1102
  br label %m.loop104

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys19, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals20, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap25 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap26 = load i64, ptr %m.cap25, align 8
  %m.keys27 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys28 = load ptr, ptr %m.keys27, align 8
  %m.vals29 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals30 = load ptr, ptr %m.vals29, align 8
  %m.states31 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states32 = load ptr, ptr %m.states31, align 8
  %mk.data33 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data34 = load ptr, ptr %mk.data33, align 8
  %mk.len35 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len36 = load i64, ptr %mk.len35, align 8
  %mk.len37 = and i64 %mk.len36, 281474976710655
  %hash.str38 = call i64 @dva_hash_string(ptr %mk.data34, i64 %mk.len37)
  %m.capm139 = sub i64 %m.cap26, 1
  %m.idx040 = and i64 %hash.str38, %m.capm139
  br label %m.loop41

m.loop41:                                         ; preds = %m.next46, %m.re.ins
  %m.idx49 = phi i64 [ %m.idx040, %m.re.ins ], [ %m.idx.next82, %m.next46 ]
  %m.tomb50 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb80, %m.next46 ]
  %m.probe51 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next83, %m.next46 ]
  %m.reached.cap52 = icmp eq i64 %m.probe51, %m.cap26
  %m.state.gep53 = getelementptr i8, ptr %m.states32, i64 %m.idx49
  %m.state54 = load i8, ptr %m.state.gep53, align 1
  %m.is.empty55 = icmp eq i8 %m.state54, 0
  %m.stop56 = or i1 %m.is.empty55, %m.reached.cap52
  br i1 %m.stop56, label %m.empty47, label %m.check.tomb42

m.check.tomb42:                                   ; preds = %m.loop41
  %m.is.tomb57 = icmp eq i8 %m.state54, 2
  br i1 %m.is.tomb57, label %m.tomb43, label %m.found44

m.tomb43:                                         ; preds = %m.check.tomb42
  %m.has.tomb58 = icmp ne i64 %m.tomb50, -1
  %m.tomb.sel59 = select i1 %m.has.tomb58, i64 %m.tomb50, i64 %m.idx49
  br label %m.next46

m.found44:                                        ; preds = %m.check.tomb42
  %m.key.slot60 = getelementptr i64, ptr %m.keys28, i64 %m.idx49
  %mk.stored61 = load ptr, ptr %m.key.slot60, align 8
  %mk.slen62 = getelementptr inbounds { i64, ptr }, ptr %mk.stored61, i32 0, i32 0
  %mk.slen63 = load i64, ptr %mk.slen62, align 8
  %mk.slen64 = and i64 %mk.slen63, 281474976710655
  %mk.nlen65 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen66 = load i64, ptr %mk.nlen65, align 8
  %mk.nlen67 = and i64 %mk.nlen66, 281474976710655
  %mk.lenseq68 = icmp eq i64 %mk.slen64, %mk.nlen67
  br i1 %mk.lenseq68, label %mk.eq.then69, label %mk.eq.else70

m.overwrite45:                                    ; preds = %mk.eq.merge71
  %m.val.slot79 = getelementptr i64, ptr %m.vals30, i64 %m.idx49
  store i64 %m.re.val, ptr %m.val.slot79, align 8
  br label %m.done48

m.next46:                                         ; preds = %mk.eq.merge71, %m.tomb43
  %m.next.tomb80 = phi i64 [ %m.tomb.sel59, %m.tomb43 ], [ %m.tomb50, %mk.eq.merge71 ]
  %m.idx.add81 = add i64 %m.idx49, 1
  %m.idx.next82 = and i64 %m.idx.add81, %m.capm139
  %m.probe.next83 = add i64 %m.probe51, 1
  br label %m.loop41

m.empty47:                                        ; preds = %m.loop41
  %m.use.tomb = icmp ne i64 %m.tomb50, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb50, i64 %m.idx49
  %m.key.slot84 = getelementptr i64, ptr %m.keys28, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot84, align 8
  %m.val.slot85 = getelementptr i64, ptr %m.vals30, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot85, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states32, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count86 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count86, 1
  %m.count.gep87 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep87, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done48

m.done48:                                         ; preds = %m.empty47, %m.overwrite45
  br label %m.re.cont

mk.eq.then69:                                     ; preds = %m.found44
  %mk.sdata72 = getelementptr inbounds { i64, ptr }, ptr %mk.stored61, i32 0, i32 1
  %mk.sdata73 = load ptr, ptr %mk.sdata72, align 8
  %mk.ndata74 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata75 = load ptr, ptr %mk.ndata74, align 8
  %mk.memcmp76 = call i32 @memcmp(ptr %mk.sdata73, ptr %mk.ndata75, i64 %mk.nlen67)
  %mk.cmpeq77 = icmp eq i32 %mk.memcmp76, 0
  br label %mk.eq.merge71

mk.eq.else70:                                     ; preds = %m.found44
  br label %mk.eq.merge71

mk.eq.merge71:                                    ; preds = %mk.eq.else70, %mk.eq.then69
  %mk.eq78 = phi i1 [ %mk.cmpeq77, %mk.eq.then69 ], [ false, %mk.eq.else70 ]
  br i1 %mk.eq78, label %m.overwrite45, label %m.next46

m.loop104:                                        ; preds = %m.next109, %m.re.done
  %m.idx112 = phi i64 [ %m.idx0103, %m.re.done ], [ %m.idx.next145, %m.next109 ]
  %m.tomb113 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb143, %m.next109 ]
  %m.probe114 = phi i64 [ 0, %m.re.done ], [ %m.probe.next146, %m.next109 ]
  %m.reached.cap115 = icmp eq i64 %m.probe114, %m.cap89
  %m.state.gep116 = getelementptr i8, ptr %m.states95, i64 %m.idx112
  %m.state117 = load i8, ptr %m.state.gep116, align 1
  %m.is.empty118 = icmp eq i8 %m.state117, 0
  %m.stop119 = or i1 %m.is.empty118, %m.reached.cap115
  br i1 %m.stop119, label %m.empty110, label %m.check.tomb105

m.check.tomb105:                                  ; preds = %m.loop104
  %m.is.tomb120 = icmp eq i8 %m.state117, 2
  br i1 %m.is.tomb120, label %m.tomb106, label %m.found107

m.tomb106:                                        ; preds = %m.check.tomb105
  %m.has.tomb121 = icmp ne i64 %m.tomb113, -1
  %m.tomb.sel122 = select i1 %m.has.tomb121, i64 %m.tomb113, i64 %m.idx112
  br label %m.next109

m.found107:                                       ; preds = %m.check.tomb105
  %m.key.slot123 = getelementptr i64, ptr %m.keys91, i64 %m.idx112
  %mk.stored124 = load ptr, ptr %m.key.slot123, align 8
  %mk.slen125 = getelementptr inbounds { i64, ptr }, ptr %mk.stored124, i32 0, i32 0
  %mk.slen126 = load i64, ptr %mk.slen125, align 8
  %mk.slen127 = and i64 %mk.slen126, 281474976710655
  %mk.nlen128 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen129 = load i64, ptr %mk.nlen128, align 8
  %mk.nlen130 = and i64 %mk.nlen129, 281474976710655
  %mk.lenseq131 = icmp eq i64 %mk.slen127, %mk.nlen130
  br i1 %mk.lenseq131, label %mk.eq.then132, label %mk.eq.else133

m.overwrite108:                                   ; preds = %mk.eq.merge134
  %m.val.slot142 = getelementptr i64, ptr %m.vals93, i64 %m.idx112
  store i64 %slot.p2i, ptr %m.val.slot142, align 8
  br label %m.done111

m.next109:                                        ; preds = %mk.eq.merge134, %m.tomb106
  %m.next.tomb143 = phi i64 [ %m.tomb.sel122, %m.tomb106 ], [ %m.tomb113, %mk.eq.merge134 ]
  %m.idx.add144 = add i64 %m.idx112, 1
  %m.idx.next145 = and i64 %m.idx.add144, %m.capm1102
  %m.probe.next146 = add i64 %m.probe114, 1
  br label %m.loop104

m.empty110:                                       ; preds = %m.loop104
  %m.use.tomb147 = icmp ne i64 %m.tomb113, -1
  %m.ins.idx148 = select i1 %m.use.tomb147, i64 %m.tomb113, i64 %m.idx112
  %m.key.slot149 = getelementptr i64, ptr %m.keys91, i64 %m.ins.idx148
  store ptr %var.load2, ptr %m.key.slot149, align 8
  %m.val.slot150 = getelementptr i64, ptr %m.vals93, i64 %m.ins.idx148
  store i64 %slot.p2i, ptr %m.val.slot150, align 8
  %m.ins.state.slot151 = getelementptr i8, ptr %m.states95, i64 %m.ins.idx148
  store i8 1, ptr %m.ins.state.slot151, align 1
  %m.count152 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count153 = load i64, ptr %m.count152, align 8
  %m.count.next154 = add i64 %m.count153, 1
  %m.count.gep155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next154, ptr %m.count.gep155, align 8
  %m.ins.tombs.p156 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs157 = load i64, ptr %m.ins.tombs.p156, align 8
  %m.tomb.dec158 = select i1 %m.use.tomb147, i64 1, i64 0
  %m.ins.tombs.next159 = sub i64 %m.ins.tombs157, %m.tomb.dec158
  store i64 %m.ins.tombs.next159, ptr %m.ins.tombs.p156, align 8
  br label %m.done111

m.done111:                                        ; preds = %m.empty110, %m.overwrite108
  br label %m.done

mk.eq.then132:                                    ; preds = %m.found107
  %mk.sdata135 = getelementptr inbounds { i64, ptr }, ptr %mk.stored124, i32 0, i32 1
  %mk.sdata136 = load ptr, ptr %mk.sdata135, align 8
  %mk.ndata137 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata138 = load ptr, ptr %mk.ndata137, align 8
  %mk.memcmp139 = call i32 @memcmp(ptr %mk.sdata136, ptr %mk.ndata138, i64 %mk.nlen130)
  %mk.cmpeq140 = icmp eq i32 %mk.memcmp139, 0
  br label %mk.eq.merge134

mk.eq.else133:                                    ; preds = %m.found107
  br label %mk.eq.merge134

mk.eq.merge134:                                   ; preds = %mk.eq.else133, %mk.eq.then132
  %mk.eq141 = phi i1 [ %mk.cmpeq140, %mk.eq.then132 ], [ false, %mk.eq.else133 ]
  br i1 %mk.eq141, label %m.overwrite108, label %m.next109
}

declare i32 @memcmp(ptr, ptr, i64) #3

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #3 {
entry:
  %var.body = alloca ptr, align 8
  %var._61 = alloca ptr, align 8
  %var._60 = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
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
  %var.load16 = load ptr, ptr %var.bodies, align 8
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
  %choice.res74 = phi ptr [ %var.load73, %choice.exit55 ], [ null, %choice.else ]
  ret ptr %choice.res74

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
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then53:                                    ; preds = %m.rd.done
  %ram.pay56 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay56 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit55

choice.else54:                                    ; preds = %m.rd.done
  %ram.pay57 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr58 = inttoptr i64 %ram.pay57 to ptr
  store ptr %pay.ptr58, ptr %var._59, align 8
  store ptr %pay.ptr58, ptr %var._60, align 8
  store ptr %pay.ptr58, ptr %var._61, align 8
  %err.code.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr58, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep62, align 8
  %err.msg.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr58, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep63, align 8
  %err.file.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr58, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep64, align 8
  %err.line.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr58, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep65, align 8
  %err.col.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr58, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep66, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len67 = load i64, ptr %err.msg.len, align 8
  %err.msg.len68 = and i64 %err.msg.len67, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len68 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data69 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len70 = load i64, ptr %err.file.len, align 8
  %err.file.len71 = and i64 %err.file.len70, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len71 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data72 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit55:                                    ; preds = %err.abort, %choice.then53
  %choice.res = phi ptr [ %pay.ptr, %choice.then53 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load73 = load ptr, ptr %var.body, align 8
  br label %choice.exit

err.thread:                                       ; preds = %choice.else54
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr58, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else54
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data69, i32 %err.file.len32, ptr %err.file.data72, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit55
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define void @"type_env::mark_generic_binding"(ptr %0, ptr %1) #3 {
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

define i1 @"type_env::is_generic_binding"(ptr %0, ptr %1) #3 {
entry:
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.176 = alloca i64, align 8
  %loop.idx.176 = alloca i64, align 8
  %var.priv = alloca ptr, align 8
  %concat.str80 = alloca { i64, ptr }, align 8
  %var.pub = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.173.then, label %and.173.else

and.173.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.173.exit

and.173.else:                                     ; preds = %str.eq.merge
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %and.173.then
  %and.173.phi = phi i1 [ %nottmp, %and.173.then ], [ %str.neq, %and.173.else ]
  store i1 %and.173.phi, ptr %var.has_mod, align 1
  %var.load6 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load6, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.173.exit
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %cat.seg12 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg13 = load ptr, ptr %cat.seg12, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load14 = load ptr, ptr %var.name, align 8
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %cat.seg16 = load i64, ptr %cat.seg15, align 8
  %cat.seg17 = and i64 %cat.seg16, 281474976710655
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %cat.seg19 = load ptr, ptr %cat.seg18, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

choice.else:                                      ; preds = %and.173.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len29
  %choice.res = phi ptr [ %concat.str, %concat.tot.len29 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.pub, align 8
  %var.load35 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load35, label %choice.then36, label %choice.else37

cat.sum.len20:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg17)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 1)
  %sum27 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf28 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %concat.tot.len29

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

concat.tot.len29:                                 ; preds = %abort.dead31, %cat.sum.len24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum27)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg13, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst32 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off33 = add i64 %cat.off, 2
  %cat.dst34 = getelementptr i8, ptr %concat.buf, i64 %cat.off33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst34, ptr align 1 %cat.seg19, i64 %cat.seg17, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum22
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort30:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %concat.tot.len29

choice.then36:                                    ; preds = %choice.exit
  %var.load39 = load ptr, ptr %var.env, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load39, i32 0, i32 8
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %cat.seg42 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 0
  %cat.seg43 = load i64, ptr %cat.seg42, align 8
  %cat.seg44 = and i64 %cat.seg43, 281474976710655
  %cat.seg45 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 1
  %cat.seg46 = load ptr, ptr %cat.seg45, align 8
  %cat.lit.data47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load48 = load ptr, ptr %var.name, align 8
  %cat.seg49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %cat.seg50 = load i64, ptr %cat.seg49, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg44, i64 3)
  %sum55 = extractvalue { i64, i1 } %cat.sum.len54, 0
  %ovf56 = extractvalue { i64, i1 } %cat.sum.len54, 1
  br i1 %ovf56, label %str_overflow_abort58, label %cat.sum.len57

choice.else37:                                    ; preds = %choice.exit
  br label %choice.exit38

choice.exit38:                                    ; preds = %choice.else37, %concat.tot.len69
  %choice.res83 = phi ptr [ %concat.str80, %concat.tot.len69 ], [ @str.0.struct, %choice.else37 ]
  store ptr %choice.res83, ptr %var.priv, align 8
  %var.load84 = load ptr, ptr %var.env, align 8
  %fld.gep85 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load84, i32 0, i32 13
  %fld.load86 = load ptr, ptr %fld.gep85, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load86, i32 0, i32 0
  %arr.cycle.len87 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load86, i32 0, i32 1
  %arr.cycle.data88 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.176, align 8
  br label %loop.header.176

cat.sum.len57:                                    ; preds = %abort.dead59, %choice.then36
  %cat.sum.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum55, i64 %cat.seg51)
  %sum61 = extractvalue { i64, i1 } %cat.sum.len60, 0
  %ovf62 = extractvalue { i64, i1 } %cat.sum.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %cat.sum.len63

str_overflow_abort58:                             ; preds = %choice.then36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %cat.sum.len57

cat.sum.len63:                                    ; preds = %abort.dead65, %cat.sum.len57
  %concat.tot.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum61, i64 1)
  %sum67 = extractvalue { i64, i1 } %concat.tot.len66, 0
  %ovf68 = extractvalue { i64, i1 } %concat.tot.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %concat.tot.len69

str_overflow_abort64:                             ; preds = %cat.sum.len57
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %cat.sum.len63

concat.tot.len69:                                 ; preds = %abort.dead71, %cat.sum.len63
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  %cat.dst74 = getelementptr i8, ptr %concat.buf73, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst74, ptr align 1 %cat.seg46, i64 %cat.seg44, i1 false)
  %cat.off75 = add i64 0, %cat.seg44
  %cat.dst76 = getelementptr i8, ptr %concat.buf73, i64 %cat.off75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst76, ptr align 1 %cat.lit.data47, i64 3, i1 false)
  %cat.off77 = add i64 %cat.off75, 3
  %cat.dst78 = getelementptr i8, ptr %concat.buf73, i64 %cat.off77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst78, ptr align 1 %cat.seg53, i64 %cat.seg51, i1 false)
  %concat.nul79 = getelementptr i8, ptr %concat.buf73, i64 %sum61
  store i8 0, ptr %concat.nul79, align 1
  %str.build.len.gep81 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 0
  store i64 %sum61, ptr %str.build.len.gep81, align 8
  %str.build.data.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str80, i32 0, i32 1
  store ptr %concat.buf73, ptr %str.build.data.gep82, align 8
  br label %choice.exit38

str_overflow_abort70:                             ; preds = %cat.sum.len63
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %concat.tot.len69

loop.header.176:                                  ; preds = %loop.latch.176, %choice.exit38
  %counter.load = load i64, ptr %loop.idx.176, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len87
  br i1 %loop.cond, label %loop.body.176, label %loop.exit.nat.176

loop.body.176:                                    ; preds = %loop.header.176
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.176, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data88, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load89 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load89, label %choice.then90, label %choice.else91

loop.exit.nat.176:                                ; preds = %loop.header.176
  br label %loop.exit.176

loop.latch.176:                                   ; preds = %choice.exit152
  %step.val = load i64, ptr %loop.step.176, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.176, align 8
  br label %loop.header.176

loop.exit.176:                                    ; preds = %loop.exit.nat.176
  ret i1 false

choice.then90:                                    ; preds = %loop.body.176
  %var.load93 = load ptr, ptr %var.n, align 8
  %var.load94 = load ptr, ptr %var.pub, align 8
  %eq.lhs.len95 = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 0
  %eq.lhs.len96 = load i64, ptr %eq.lhs.len95, align 8
  %eq.lhs.len97 = and i64 %eq.lhs.len96, 281474976710655
  %eq.rhs.len98 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %eq.rhs.len99 = load i64, ptr %eq.rhs.len98, align 8
  %eq.rhs.len100 = and i64 %eq.rhs.len99, 281474976710655
  %eq.len101 = icmp eq i64 %eq.lhs.len97, %eq.rhs.len100
  br i1 %eq.len101, label %str.eq.then102, label %str.eq.else103

choice.else91:                                    ; preds = %loop.body.176
  %var.load131 = load ptr, ptr %var.n, align 8
  %var.load132 = load ptr, ptr %var.name, align 8
  %eq.lhs.len133 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %eq.lhs.len134 = load i64, ptr %eq.lhs.len133, align 8
  %eq.lhs.len135 = and i64 %eq.lhs.len134, 281474976710655
  %eq.rhs.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 0
  %eq.rhs.len137 = load i64, ptr %eq.rhs.len136, align 8
  %eq.rhs.len138 = and i64 %eq.rhs.len137, 281474976710655
  %eq.len139 = icmp eq i64 %eq.lhs.len135, %eq.rhs.len138
  br i1 %eq.len139, label %str.eq.then140, label %str.eq.else141

choice.exit92:                                    ; preds = %str.eq.merge142, %or.177.exit
  %choice.res150 = phi i1 [ %or.177.phi, %or.177.exit ], [ %str.eq.result149, %str.eq.merge142 ]
  br i1 %choice.res150, label %choice.then151, label %choice.exit152

str.eq.then102:                                   ; preds = %choice.then90
  %eq.lhs.data105 = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 1
  %eq.lhs.data106 = load ptr, ptr %eq.lhs.data105, align 8
  %eq.rhs.data107 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %eq.rhs.data108 = load ptr, ptr %eq.rhs.data107, align 8
  %eq.memcmp109 = call i32 @memcmp(ptr %eq.lhs.data106, ptr %eq.rhs.data108, i64 %eq.lhs.len97)
  %eq.cmp.zero110 = icmp eq i32 %eq.memcmp109, 0
  br label %str.eq.merge104

str.eq.else103:                                   ; preds = %choice.then90
  br label %str.eq.merge104

str.eq.merge104:                                  ; preds = %str.eq.else103, %str.eq.then102
  %str.eq.result111 = phi i1 [ %eq.cmp.zero110, %str.eq.then102 ], [ false, %str.eq.else103 ]
  br i1 %str.eq.result111, label %or.177.then, label %or.177.else

or.177.then:                                      ; preds = %str.eq.merge104
  br label %or.177.exit

or.177.else:                                      ; preds = %str.eq.merge104
  %var.load112 = load ptr, ptr %var.n, align 8
  %var.load113 = load ptr, ptr %var.priv, align 8
  %eq.lhs.len114 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 0
  %eq.lhs.len115 = load i64, ptr %eq.lhs.len114, align 8
  %eq.lhs.len116 = and i64 %eq.lhs.len115, 281474976710655
  %eq.rhs.len117 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 0
  %eq.rhs.len118 = load i64, ptr %eq.rhs.len117, align 8
  %eq.rhs.len119 = and i64 %eq.rhs.len118, 281474976710655
  %eq.len120 = icmp eq i64 %eq.lhs.len116, %eq.rhs.len119
  br i1 %eq.len120, label %str.eq.then121, label %str.eq.else122

or.177.exit:                                      ; preds = %str.eq.merge123, %or.177.then
  %or.177.phi = phi i1 [ %str.eq.result111, %or.177.then ], [ %str.eq.result130, %str.eq.merge123 ]
  br label %choice.exit92

str.eq.then121:                                   ; preds = %or.177.else
  %eq.lhs.data124 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 1
  %eq.lhs.data125 = load ptr, ptr %eq.lhs.data124, align 8
  %eq.rhs.data126 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 1
  %eq.rhs.data127 = load ptr, ptr %eq.rhs.data126, align 8
  %eq.memcmp128 = call i32 @memcmp(ptr %eq.lhs.data125, ptr %eq.rhs.data127, i64 %eq.lhs.len116)
  %eq.cmp.zero129 = icmp eq i32 %eq.memcmp128, 0
  br label %str.eq.merge123

str.eq.else122:                                   ; preds = %or.177.else
  br label %str.eq.merge123

str.eq.merge123:                                  ; preds = %str.eq.else122, %str.eq.then121
  %str.eq.result130 = phi i1 [ %eq.cmp.zero129, %str.eq.then121 ], [ false, %str.eq.else122 ]
  br label %or.177.exit

str.eq.then140:                                   ; preds = %choice.else91
  %eq.lhs.data143 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %eq.lhs.data144 = load ptr, ptr %eq.lhs.data143, align 8
  %eq.rhs.data145 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 1
  %eq.rhs.data146 = load ptr, ptr %eq.rhs.data145, align 8
  %eq.memcmp147 = call i32 @memcmp(ptr %eq.lhs.data144, ptr %eq.rhs.data146, i64 %eq.lhs.len135)
  %eq.cmp.zero148 = icmp eq i32 %eq.memcmp147, 0
  br label %str.eq.merge142

str.eq.else141:                                   ; preds = %choice.else91
  br label %str.eq.merge142

str.eq.merge142:                                  ; preds = %str.eq.else141, %str.eq.then140
  %str.eq.result149 = phi i1 [ %eq.cmp.zero148, %str.eq.then140 ], [ false, %str.eq.else141 ]
  br label %choice.exit92

choice.then151:                                   ; preds = %choice.exit92
  ret i1 true

choice.exit152:                                   ; preds = %ret.dead, %choice.exit92
  br label %loop.latch.176

ret.dead:                                         ; No predecessors!
  br label %choice.exit152
}

define i1 @"type_env::name_is_qualified"(ptr %0, i64 %1) #3 {
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
  br i1 %cmptmp, label %and.174.then, label %and.174.else

and.174.then:                                     ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.174.else:                                     ; preds = %entry
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %idx_ok
  %and.174.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.174.else ]
  br i1 %and.174.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.174.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.174.exit

idx_oob:                                          ; preds = %and.174.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.174.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.174.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res47 = phi i1 [ %choice.res, %choice.exit43 ], [ false, %choice.else ]
  ret i1 %choice.res47

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.175.then, label %and.175.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.175.then:                                     ; preds = %idx_ok18
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

and.175.else:                                     ; preds = %idx_ok18
  br label %and.175.exit

and.175.exit:                                     ; preds = %and.175.else, %idx_ok34
  %and.175.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.175.else ]
  br i1 %and.175.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.175.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.175.exit

idx_oob35:                                        ; preds = %and.175.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.175.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.175.exit
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

define void @"type_env::mark_global_var"(ptr %0, ptr %1) #3 {
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

define i1 @"type_env::is_marked_global"(ptr %0, ptr %1) #3 {
entry:
  %var.match = alloca i1, align 1
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.179 = alloca i64, align 8
  %loop.idx.179 = alloca i64, align 8
  %var.private_name = alloca ptr, align 8
  %concat.str117 = alloca { i64, ptr }, align 8
  %var.qname = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.178.then, label %and.178.else

and.178.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.178.exit

and.178.else:                                     ; preds = %str.eq.merge
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %and.178.then
  %and.178.phi = phi i1 [ %nottmp, %and.178.then ], [ %str.neq, %and.178.else ]
  store i1 %and.178.phi, ptr %var.has_mod, align 1
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %eq.lhs.len9 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len9, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.rhs.len12 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len13 = and i64 %eq.rhs.len12, 281474976710655
  %eq.len14 = icmp eq i64 %eq.lhs.len11, %eq.rhs.len13
  br i1 %eq.len14, label %str.eq.then15, label %str.eq.else16

str.eq.then15:                                    ; preds = %and.178.exit
  %eq.lhs.data18 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data18, align 8
  %eq.rhs.data20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp21 = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len11)
  %eq.cmp.zero22 = icmp eq i32 %eq.memcmp21, 0
  br label %str.eq.merge17

str.eq.else16:                                    ; preds = %and.178.exit
  br label %str.eq.merge17

str.eq.merge17:                                   ; preds = %str.eq.else16, %str.eq.then15
  %str.eq.result23 = phi i1 [ %eq.cmp.zero22, %str.eq.then15 ], [ false, %str.eq.else16 ]
  %str.neq24 = xor i1 %str.eq.result23, true
  br i1 %str.neq24, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge17
  %var.load25 = load ptr, ptr %var.env, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load25, i32 0, i32 8
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 0
  %cat.seg28 = load i64, ptr %cat.seg, align 8
  %cat.seg29 = and i64 %cat.seg28, 281474976710655
  %cat.seg30 = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 1
  %cat.seg31 = load ptr, ptr %cat.seg30, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load32 = load ptr, ptr %var.name, align 8
  %cat.seg33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %cat.seg34 = load i64, ptr %cat.seg33, align 8
  %cat.seg35 = and i64 %cat.seg34, 281474976710655
  %cat.seg36 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %cat.seg37 = load ptr, ptr %cat.seg36, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg29, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len38

choice.else:                                      ; preds = %str.eq.merge17
  %var.load53 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len47
  %choice.res = phi ptr [ %concat.str, %concat.tot.len47 ], [ %var.load53, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load54 = load ptr, ptr %var.env, align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load54, i32 0, i32 8
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %eq.lhs.len57 = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 0
  %eq.lhs.len58 = load i64, ptr %eq.lhs.len57, align 8
  %eq.lhs.len59 = and i64 %eq.lhs.len58, 281474976710655
  %eq.rhs.len60 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len60, 281474976710655
  %eq.len62 = icmp eq i64 %eq.lhs.len59, %eq.rhs.len61
  br i1 %eq.len62, label %str.eq.then63, label %str.eq.else64

cat.sum.len38:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg35)
  %sum40 = extractvalue { i64, i1 } %cat.sum.len39, 0
  %ovf41 = extractvalue { i64, i1 } %cat.sum.len39, 1
  br i1 %ovf41, label %str_overflow_abort43, label %cat.sum.len42

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len38

cat.sum.len42:                                    ; preds = %abort.dead44, %cat.sum.len38
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum40, i64 1)
  %sum45 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf46 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %concat.tot.len47

str_overflow_abort43:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %cat.sum.len42

concat.tot.len47:                                 ; preds = %abort.dead49, %cat.sum.len42
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum45)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg31, i64 %cat.seg29, i1 false)
  %cat.off = add i64 0, %cat.seg29
  %cat.dst50 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst50, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off51 = add i64 %cat.off, 2
  %cat.dst52 = getelementptr i8, ptr %concat.buf, i64 %cat.off51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst52, ptr align 1 %cat.seg37, i64 %cat.seg35, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum40
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum40, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort48:                             ; preds = %cat.sum.len42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %concat.tot.len47

str.eq.then63:                                    ; preds = %choice.exit
  %eq.lhs.data66 = getelementptr inbounds { i64, ptr }, ptr %fld.load56, i32 0, i32 1
  %eq.lhs.data67 = load ptr, ptr %eq.lhs.data66, align 8
  %eq.rhs.data68 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp69 = call i32 @memcmp(ptr %eq.lhs.data67, ptr %eq.rhs.data68, i64 %eq.lhs.len59)
  %eq.cmp.zero70 = icmp eq i32 %eq.memcmp69, 0
  br label %str.eq.merge65

str.eq.else64:                                    ; preds = %choice.exit
  br label %str.eq.merge65

str.eq.merge65:                                   ; preds = %str.eq.else64, %str.eq.then63
  %str.eq.result71 = phi i1 [ %eq.cmp.zero70, %str.eq.then63 ], [ false, %str.eq.else64 ]
  %str.neq72 = xor i1 %str.eq.result71, true
  br i1 %str.neq72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %str.eq.merge65
  %var.load76 = load ptr, ptr %var.env, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load76, i32 0, i32 8
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %cat.seg79 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %cat.seg80 = load i64, ptr %cat.seg79, align 8
  %cat.seg81 = and i64 %cat.seg80, 281474976710655
  %cat.seg82 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %cat.seg83 = load ptr, ptr %cat.seg82, align 8
  %cat.lit.data84 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load85 = load ptr, ptr %var.name, align 8
  %cat.seg86 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %cat.seg87 = load i64, ptr %cat.seg86, align 8
  %cat.seg88 = and i64 %cat.seg87, 281474976710655
  %cat.seg89 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 1
  %cat.seg90 = load ptr, ptr %cat.seg89, align 8
  %cat.sum.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg81, i64 3)
  %sum92 = extractvalue { i64, i1 } %cat.sum.len91, 0
  %ovf93 = extractvalue { i64, i1 } %cat.sum.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %cat.sum.len94

choice.else74:                                    ; preds = %str.eq.merge65
  %var.load120 = load ptr, ptr %var.name, align 8
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %concat.tot.len106
  %choice.res121 = phi ptr [ %concat.str117, %concat.tot.len106 ], [ %var.load120, %choice.else74 ]
  store ptr %choice.res121, ptr %var.private_name, align 8
  %var.load122 = load ptr, ptr %var.env, align 8
  %fld.gep123 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load122, i32 0, i32 14
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load124, i32 0, i32 0
  %arr.cycle.len125 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load124, i32 0, i32 1
  %arr.cycle.data126 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.179, align 8
  br label %loop.header.179

cat.sum.len94:                                    ; preds = %abort.dead96, %choice.then73
  %cat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum92, i64 %cat.seg88)
  %sum98 = extractvalue { i64, i1 } %cat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %cat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %cat.sum.len100

str_overflow_abort95:                             ; preds = %choice.then73
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %cat.sum.len94

cat.sum.len100:                                   ; preds = %abort.dead102, %cat.sum.len94
  %concat.tot.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum104 = extractvalue { i64, i1 } %concat.tot.len103, 0
  %ovf105 = extractvalue { i64, i1 } %concat.tot.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %concat.tot.len106

str_overflow_abort101:                            ; preds = %cat.sum.len94
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %cat.sum.len100

concat.tot.len106:                                ; preds = %abort.dead108, %cat.sum.len100
  %arena.cur109 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %sum104)
  %cat.dst111 = getelementptr i8, ptr %concat.buf110, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst111, ptr align 1 %cat.seg83, i64 %cat.seg81, i1 false)
  %cat.off112 = add i64 0, %cat.seg81
  %cat.dst113 = getelementptr i8, ptr %concat.buf110, i64 %cat.off112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst113, ptr align 1 %cat.lit.data84, i64 3, i1 false)
  %cat.off114 = add i64 %cat.off112, 3
  %cat.dst115 = getelementptr i8, ptr %concat.buf110, i64 %cat.off114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst115, ptr align 1 %cat.seg90, i64 %cat.seg88, i1 false)
  %concat.nul116 = getelementptr i8, ptr %concat.buf110, i64 %sum98
  store i8 0, ptr %concat.nul116, align 1
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf110, ptr %str.build.data.gep119, align 8
  br label %choice.exit75

str_overflow_abort107:                            ; preds = %cat.sum.len100
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %concat.tot.len106

loop.header.179:                                  ; preds = %loop.latch.179, %choice.exit75
  %counter.load = load i64, ptr %loop.idx.179, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len125
  br i1 %loop.cond, label %loop.body.179, label %loop.exit.nat.179

loop.body.179:                                    ; preds = %loop.header.179
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.179, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data126, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load127 = load i1, ptr %var.has_mod, align 1
  br i1 %var.load127, label %choice.then128, label %choice.else129

loop.exit.nat.179:                                ; preds = %loop.header.179
  br label %loop.exit.179

loop.latch.179:                                   ; preds = %choice.exit311
  %step.val = load i64, ptr %loop.step.179, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.179, align 8
  br label %loop.header.179

loop.exit.179:                                    ; preds = %loop.exit.nat.179
  ret i1 false

choice.then128:                                   ; preds = %loop.body.179
  %var.load131 = load ptr, ptr %var.n, align 8
  %var.load132 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len133 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %eq.lhs.len134 = load i64, ptr %eq.lhs.len133, align 8
  %eq.lhs.len135 = and i64 %eq.lhs.len134, 281474976710655
  %eq.rhs.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 0
  %eq.rhs.len137 = load i64, ptr %eq.rhs.len136, align 8
  %eq.rhs.len138 = and i64 %eq.rhs.len137, 281474976710655
  %eq.len139 = icmp eq i64 %eq.lhs.len135, %eq.rhs.len138
  br i1 %eq.len139, label %str.eq.then140, label %str.eq.else141

choice.else129:                                   ; preds = %loop.body.179
  %var.load169 = load ptr, ptr %var.n, align 8
  %var.load170 = load ptr, ptr %var.name, align 8
  %eq.lhs.len171 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 0
  %eq.lhs.len172 = load i64, ptr %eq.lhs.len171, align 8
  %eq.lhs.len173 = and i64 %eq.lhs.len172, 281474976710655
  %eq.rhs.len174 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 0
  %eq.rhs.len175 = load i64, ptr %eq.rhs.len174, align 8
  %eq.rhs.len176 = and i64 %eq.rhs.len175, 281474976710655
  %eq.len177 = icmp eq i64 %eq.lhs.len173, %eq.rhs.len176
  br i1 %eq.len177, label %str.eq.then178, label %str.eq.else179

choice.exit130:                                   ; preds = %or.183.exit, %or.180.exit
  %choice.res308 = phi i1 [ %or.180.phi, %or.180.exit ], [ %or.183.phi, %or.183.exit ]
  store i1 %choice.res308, ptr %var.match, align 1
  %var.load309 = load i1, ptr %var.match, align 1
  br i1 %var.load309, label %choice.then310, label %choice.exit311

str.eq.then140:                                   ; preds = %choice.then128
  %eq.lhs.data143 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %eq.lhs.data144 = load ptr, ptr %eq.lhs.data143, align 8
  %eq.rhs.data145 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 1
  %eq.rhs.data146 = load ptr, ptr %eq.rhs.data145, align 8
  %eq.memcmp147 = call i32 @memcmp(ptr %eq.lhs.data144, ptr %eq.rhs.data146, i64 %eq.lhs.len135)
  %eq.cmp.zero148 = icmp eq i32 %eq.memcmp147, 0
  br label %str.eq.merge142

str.eq.else141:                                   ; preds = %choice.then128
  br label %str.eq.merge142

str.eq.merge142:                                  ; preds = %str.eq.else141, %str.eq.then140
  %str.eq.result149 = phi i1 [ %eq.cmp.zero148, %str.eq.then140 ], [ false, %str.eq.else141 ]
  br i1 %str.eq.result149, label %or.180.then, label %or.180.else

or.180.then:                                      ; preds = %str.eq.merge142
  br label %or.180.exit

or.180.else:                                      ; preds = %str.eq.merge142
  %var.load150 = load ptr, ptr %var.n, align 8
  %var.load151 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len152 = getelementptr inbounds { i64, ptr }, ptr %var.load150, i32 0, i32 0
  %eq.lhs.len153 = load i64, ptr %eq.lhs.len152, align 8
  %eq.lhs.len154 = and i64 %eq.lhs.len153, 281474976710655
  %eq.rhs.len155 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %eq.rhs.len156 = load i64, ptr %eq.rhs.len155, align 8
  %eq.rhs.len157 = and i64 %eq.rhs.len156, 281474976710655
  %eq.len158 = icmp eq i64 %eq.lhs.len154, %eq.rhs.len157
  br i1 %eq.len158, label %str.eq.then159, label %str.eq.else160

or.180.exit:                                      ; preds = %str.eq.merge161, %or.180.then
  %or.180.phi = phi i1 [ %str.eq.result149, %or.180.then ], [ %str.eq.result168, %str.eq.merge161 ]
  br label %choice.exit130

str.eq.then159:                                   ; preds = %or.180.else
  %eq.lhs.data162 = getelementptr inbounds { i64, ptr }, ptr %var.load150, i32 0, i32 1
  %eq.lhs.data163 = load ptr, ptr %eq.lhs.data162, align 8
  %eq.rhs.data164 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %eq.rhs.data165 = load ptr, ptr %eq.rhs.data164, align 8
  %eq.memcmp166 = call i32 @memcmp(ptr %eq.lhs.data163, ptr %eq.rhs.data165, i64 %eq.lhs.len154)
  %eq.cmp.zero167 = icmp eq i32 %eq.memcmp166, 0
  br label %str.eq.merge161

str.eq.else160:                                   ; preds = %or.180.else
  br label %str.eq.merge161

str.eq.merge161:                                  ; preds = %str.eq.else160, %str.eq.then159
  %str.eq.result168 = phi i1 [ %eq.cmp.zero167, %str.eq.then159 ], [ false, %str.eq.else160 ]
  br label %or.180.exit

str.eq.then178:                                   ; preds = %choice.else129
  %eq.lhs.data181 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 1
  %eq.lhs.data182 = load ptr, ptr %eq.lhs.data181, align 8
  %eq.rhs.data183 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 1
  %eq.rhs.data184 = load ptr, ptr %eq.rhs.data183, align 8
  %eq.memcmp185 = call i32 @memcmp(ptr %eq.lhs.data182, ptr %eq.rhs.data184, i64 %eq.lhs.len173)
  %eq.cmp.zero186 = icmp eq i32 %eq.memcmp185, 0
  br label %str.eq.merge180

str.eq.else179:                                   ; preds = %choice.else129
  br label %str.eq.merge180

str.eq.merge180:                                  ; preds = %str.eq.else179, %str.eq.then178
  %str.eq.result187 = phi i1 [ %eq.cmp.zero186, %str.eq.then178 ], [ false, %str.eq.else179 ]
  br i1 %str.eq.result187, label %or.181.then, label %or.181.else

or.181.then:                                      ; preds = %str.eq.merge180
  br label %or.181.exit

or.181.else:                                      ; preds = %str.eq.merge180
  %var.load188 = load ptr, ptr %var.n, align 8
  %var.load189 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len190 = getelementptr inbounds { i64, ptr }, ptr %var.load188, i32 0, i32 0
  %eq.lhs.len191 = load i64, ptr %eq.lhs.len190, align 8
  %eq.lhs.len192 = and i64 %eq.lhs.len191, 281474976710655
  %eq.rhs.len193 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 0
  %eq.rhs.len194 = load i64, ptr %eq.rhs.len193, align 8
  %eq.rhs.len195 = and i64 %eq.rhs.len194, 281474976710655
  %eq.len196 = icmp eq i64 %eq.lhs.len192, %eq.rhs.len195
  br i1 %eq.len196, label %str.eq.then197, label %str.eq.else198

or.181.exit:                                      ; preds = %str.eq.merge199, %or.181.then
  %or.181.phi = phi i1 [ %str.eq.result187, %or.181.then ], [ %str.eq.result206, %str.eq.merge199 ]
  br i1 %or.181.phi, label %or.182.then, label %or.182.else

str.eq.then197:                                   ; preds = %or.181.else
  %eq.lhs.data200 = getelementptr inbounds { i64, ptr }, ptr %var.load188, i32 0, i32 1
  %eq.lhs.data201 = load ptr, ptr %eq.lhs.data200, align 8
  %eq.rhs.data202 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 1
  %eq.rhs.data203 = load ptr, ptr %eq.rhs.data202, align 8
  %eq.memcmp204 = call i32 @memcmp(ptr %eq.lhs.data201, ptr %eq.rhs.data203, i64 %eq.lhs.len192)
  %eq.cmp.zero205 = icmp eq i32 %eq.memcmp204, 0
  br label %str.eq.merge199

str.eq.else198:                                   ; preds = %or.181.else
  br label %str.eq.merge199

str.eq.merge199:                                  ; preds = %str.eq.else198, %str.eq.then197
  %str.eq.result206 = phi i1 [ %eq.cmp.zero205, %str.eq.then197 ], [ false, %str.eq.else198 ]
  br label %or.181.exit

or.182.then:                                      ; preds = %or.181.exit
  br label %or.182.exit

or.182.else:                                      ; preds = %or.181.exit
  %var.load207 = load ptr, ptr %var.n, align 8
  %var.load208 = load ptr, ptr %var.private_name, align 8
  %eq.lhs.len209 = getelementptr inbounds { i64, ptr }, ptr %var.load207, i32 0, i32 0
  %eq.lhs.len210 = load i64, ptr %eq.lhs.len209, align 8
  %eq.lhs.len211 = and i64 %eq.lhs.len210, 281474976710655
  %eq.rhs.len212 = getelementptr inbounds { i64, ptr }, ptr %var.load208, i32 0, i32 0
  %eq.rhs.len213 = load i64, ptr %eq.rhs.len212, align 8
  %eq.rhs.len214 = and i64 %eq.rhs.len213, 281474976710655
  %eq.len215 = icmp eq i64 %eq.lhs.len211, %eq.rhs.len214
  br i1 %eq.len215, label %str.eq.then216, label %str.eq.else217

or.182.exit:                                      ; preds = %str.eq.merge218, %or.182.then
  %or.182.phi = phi i1 [ %or.181.phi, %or.182.then ], [ %str.eq.result225, %str.eq.merge218 ]
  br i1 %or.182.phi, label %or.183.then, label %or.183.else

str.eq.then216:                                   ; preds = %or.182.else
  %eq.lhs.data219 = getelementptr inbounds { i64, ptr }, ptr %var.load207, i32 0, i32 1
  %eq.lhs.data220 = load ptr, ptr %eq.lhs.data219, align 8
  %eq.rhs.data221 = getelementptr inbounds { i64, ptr }, ptr %var.load208, i32 0, i32 1
  %eq.rhs.data222 = load ptr, ptr %eq.rhs.data221, align 8
  %eq.memcmp223 = call i32 @memcmp(ptr %eq.lhs.data220, ptr %eq.rhs.data222, i64 %eq.lhs.len211)
  %eq.cmp.zero224 = icmp eq i32 %eq.memcmp223, 0
  br label %str.eq.merge218

str.eq.else217:                                   ; preds = %or.182.else
  br label %str.eq.merge218

str.eq.merge218:                                  ; preds = %str.eq.else217, %str.eq.then216
  %str.eq.result225 = phi i1 [ %eq.cmp.zero224, %str.eq.then216 ], [ false, %str.eq.else217 ]
  br label %or.182.exit

or.183.then:                                      ; preds = %or.182.exit
  br label %or.183.exit

or.183.else:                                      ; preds = %or.182.exit
  %var.load226 = load ptr, ptr %var.env, align 8
  %fld.gep227 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load226, i32 0, i32 8
  %fld.load228 = load ptr, ptr %fld.gep227, align 8
  %eq.lhs.len229 = getelementptr inbounds { i64, ptr }, ptr %fld.load228, i32 0, i32 0
  %eq.lhs.len230 = load i64, ptr %eq.lhs.len229, align 8
  %eq.lhs.len231 = and i64 %eq.lhs.len230, 281474976710655
  %eq.rhs.len232 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len233 = and i64 %eq.rhs.len232, 281474976710655
  %eq.len234 = icmp eq i64 %eq.lhs.len231, %eq.rhs.len233
  br i1 %eq.len234, label %str.eq.then235, label %str.eq.else236

or.183.exit:                                      ; preds = %and.184.exit, %or.183.then
  %or.183.phi = phi i1 [ %or.182.phi, %or.183.then ], [ %and.184.phi, %and.184.exit ]
  br label %choice.exit130

str.eq.then235:                                   ; preds = %or.183.else
  %eq.lhs.data238 = getelementptr inbounds { i64, ptr }, ptr %fld.load228, i32 0, i32 1
  %eq.lhs.data239 = load ptr, ptr %eq.lhs.data238, align 8
  %eq.rhs.data240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp241 = call i32 @memcmp(ptr %eq.lhs.data239, ptr %eq.rhs.data240, i64 %eq.lhs.len231)
  %eq.cmp.zero242 = icmp eq i32 %eq.memcmp241, 0
  br label %str.eq.merge237

str.eq.else236:                                   ; preds = %or.183.else
  br label %str.eq.merge237

str.eq.merge237:                                  ; preds = %str.eq.else236, %str.eq.then235
  %str.eq.result243 = phi i1 [ %eq.cmp.zero242, %str.eq.then235 ], [ false, %str.eq.else236 ]
  %str.neq244 = xor i1 %str.eq.result243, true
  br i1 %str.neq244, label %and.184.then, label %and.184.else

and.184.then:                                     ; preds = %str.eq.merge237
  %var.load245 = load ptr, ptr %var.name, align 8
  %var.load246 = load ptr, ptr %var.env, align 8
  %fld.gep247 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load246, i32 0, i32 8
  %fld.load248 = load ptr, ptr %fld.gep247, align 8
  %cat.seg249 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 0
  %cat.seg250 = load i64, ptr %cat.seg249, align 8
  %cat.seg251 = and i64 %cat.seg250, 281474976710655
  %cat.seg252 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 1
  %cat.seg253 = load ptr, ptr %cat.seg252, align 8
  %cat.lit.data254 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load255 = load ptr, ptr %var.n, align 8
  %cat.seg256 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 0
  %cat.seg257 = load i64, ptr %cat.seg256, align 8
  %cat.seg258 = and i64 %cat.seg257, 281474976710655
  %cat.seg259 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 1
  %cat.seg260 = load ptr, ptr %cat.seg259, align 8
  %cat.sum.len261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg251, i64 2)
  %sum262 = extractvalue { i64, i1 } %cat.sum.len261, 0
  %ovf263 = extractvalue { i64, i1 } %cat.sum.len261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %cat.sum.len264

and.184.else:                                     ; preds = %str.eq.merge237
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %str.eq.merge300
  %and.184.phi = phi i1 [ %str.eq.result307, %str.eq.merge300 ], [ %str.neq244, %and.184.else ]
  br label %or.183.exit

cat.sum.len264:                                   ; preds = %abort.dead266, %and.184.then
  %cat.sum.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum262, i64 %cat.seg258)
  %sum268 = extractvalue { i64, i1 } %cat.sum.len267, 0
  %ovf269 = extractvalue { i64, i1 } %cat.sum.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %cat.sum.len270

str_overflow_abort265:                            ; preds = %and.184.then
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst281, ptr align 1 %cat.seg253, i64 %cat.seg251, i1 false)
  %cat.off282 = add i64 0, %cat.seg251
  %cat.dst283 = getelementptr i8, ptr %concat.buf280, i64 %cat.off282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 %cat.lit.data254, i64 2, i1 false)
  %cat.off284 = add i64 %cat.off282, 2
  %cat.dst285 = getelementptr i8, ptr %concat.buf280, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 %cat.seg260, i64 %cat.seg258, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf280, i64 %sum268
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.build.len.gep289 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  store i64 %sum268, ptr %str.build.len.gep289, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf280, ptr %str.build.data.gep290, align 8
  %eq.lhs.len291 = getelementptr inbounds { i64, ptr }, ptr %var.load245, i32 0, i32 0
  %eq.lhs.len292 = load i64, ptr %eq.lhs.len291, align 8
  %eq.lhs.len293 = and i64 %eq.lhs.len292, 281474976710655
  %eq.rhs.len294 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  %eq.rhs.len295 = load i64, ptr %eq.rhs.len294, align 8
  %eq.rhs.len296 = and i64 %eq.rhs.len295, 281474976710655
  %eq.len297 = icmp eq i64 %eq.lhs.len293, %eq.rhs.len296
  br i1 %eq.len297, label %str.eq.then298, label %str.eq.else299

str_overflow_abort277:                            ; preds = %cat.sum.len270
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %concat.tot.len276

str.eq.then298:                                   ; preds = %concat.tot.len276
  %eq.lhs.data301 = getelementptr inbounds { i64, ptr }, ptr %var.load245, i32 0, i32 1
  %eq.lhs.data302 = load ptr, ptr %eq.lhs.data301, align 8
  %eq.rhs.data303 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  %eq.rhs.data304 = load ptr, ptr %eq.rhs.data303, align 8
  %eq.memcmp305 = call i32 @memcmp(ptr %eq.lhs.data302, ptr %eq.rhs.data304, i64 %eq.lhs.len293)
  %eq.cmp.zero306 = icmp eq i32 %eq.memcmp305, 0
  br label %str.eq.merge300

str.eq.else299:                                   ; preds = %concat.tot.len276
  br label %str.eq.merge300

str.eq.merge300:                                  ; preds = %str.eq.else299, %str.eq.then298
  %str.eq.result307 = phi i1 [ %eq.cmp.zero306, %str.eq.then298 ], [ false, %str.eq.else299 ]
  br label %and.184.exit

choice.then310:                                   ; preds = %choice.exit130
  ret i1 true

choice.exit311:                                   ; preds = %ret.dead, %choice.exit130
  br label %loop.latch.179

ret.dead:                                         ; No predecessors!
  br label %choice.exit311
}

define void @"type_env::enter_scope"(ptr %0) #3 {
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

define void @"type_env::leave_scope"(ptr %0) #3 {
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

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #3 {
entry:
  %var._310 = alloca ptr, align 8
  %var._309 = alloca ptr, align 8
  %var._308 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after327, %entry
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
  %hash.str = call i64 @dva_hash_string(ptr %mk.data56, i64 %mk.len58)
  %m.capm1 = sub i64 %m.cap52, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

m.loop:                                           ; preds = %m.next, %a.after42
  %m.idx = phi i64 [ %m.idx0, %a.after42 ], [ %m.idx.next, %m.next ]
  %m.tomb59 = phi i64 [ -1, %a.after42 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %a.after42 ], [ %m.probe.next, %m.next ]
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
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen62 = load i64, ptr %mk.nlen, align 8
  %mk.nlen63 = and i64 %mk.nlen62, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen61, %mk.nlen63
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

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

m.done:                                           ; preds = %m.ins.slot, %m.done160, %m.overwrite
  %var.load222 = load ptr, ptr %var.name, align 8
  %var.load223 = load ptr, ptr %var.ut, align 8
  %var.load224 = load ptr, ptr %var.ti, align 8
  %var.load225 = load i1, ptr %var.is_mut, align 1
  %var.load226 = load ptr, ptr %var.env, align 8
  %fld.gep227 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load226, i32 0, i32 2
  %fld.load228 = load i64, ptr %fld.gep227, align 8
  %arena.cur229 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load222, ptr %rec.fld, align 8
  %rec.fld230 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load223, ptr %rec.fld230, align 8
  %rec.fld231 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load224, ptr %rec.fld231, align 8
  %rec.fld232 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load225, ptr %rec.fld232, align 1
  %rec.fld233 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld233, align 1
  %rec.fld234 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load228, ptr %rec.fld234, align 8
  %a.load235 = load ptr, ptr %var.bnds, align 8
  %a.null236 = icmp eq ptr %a.load235, null
  br i1 %a.null236, label %a.create237, label %a.after238

mk.eq.then:                                       ; preds = %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata64 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata65 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata64, ptr %mk.ndata65, i64 %mk.nlen63)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.old.cap66 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.old.keys67 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.old.vals68 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.old.states69 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap66, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.live.cnt70 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt70, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap66
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap66
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %m.gv.bytes)
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %m.new.cap)
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
  %m.use.tomb209 = icmp ne i64 %m.tomb59, -1
  %m.ins.idx210 = select i1 %m.use.tomb209, i64 %m.tomb59, i64 %m.idx
  %m.key.slot211 = getelementptr i64, ptr %m.keys53, i64 %m.ins.idx210
  store ptr %var.load37, ptr %m.key.slot211, align 8
  %m.val.slot212 = getelementptr i64, ptr %m.vals54, i64 %m.ins.idx210
  store i64 %a.len.query51, ptr %m.val.slot212, align 8
  %m.ins.state.slot213 = getelementptr i8, ptr %m.states55, i64 %m.ins.idx210
  store i8 1, ptr %m.ins.state.slot213, align 1
  %m.count214 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count215 = load i64, ptr %m.count214, align 8
  %m.count.next216 = add i64 %m.count215, 1
  %m.count.gep217 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next216, ptr %m.count.gep217, align 8
  %m.ins.tombs.p218 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs219 = load i64, ptr %m.ins.tombs.p218, align 8
  %m.tomb.dec220 = select i1 %m.use.tomb209, i64 1, i64 0
  %m.ins.tombs.next221 = sub i64 %m.ins.tombs219, %m.tomb.dec220
  store i64 %m.ins.tombs.next221, ptr %m.ins.tombs.p218, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap66
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states69, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done97, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap137 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap138 = load i64, ptr %m.cap137, align 8
  %m.keys139 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys140 = load ptr, ptr %m.keys139, align 8
  %m.vals141 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals142 = load ptr, ptr %m.vals141, align 8
  %m.states143 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states144 = load ptr, ptr %m.states143, align 8
  %mk.data145 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data146 = load ptr, ptr %mk.data145, align 8
  %mk.len147 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len148 = load i64, ptr %mk.len147, align 8
  %mk.len149 = and i64 %mk.len148, 281474976710655
  %hash.str150 = call i64 @dva_hash_string(ptr %mk.data146, i64 %mk.len149)
  %m.capm1151 = sub i64 %m.cap138, 1
  %m.idx0152 = and i64 %hash.str150, %m.capm1151
  br label %m.loop153

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys67, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals68, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap75 = load i64, ptr %m.cap74, align 8
  %m.keys76 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys77 = load ptr, ptr %m.keys76, align 8
  %m.vals78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals79 = load ptr, ptr %m.vals78, align 8
  %m.states80 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states81 = load ptr, ptr %m.states80, align 8
  %mk.data82 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data83 = load ptr, ptr %mk.data82, align 8
  %mk.len84 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len85 = load i64, ptr %mk.len84, align 8
  %mk.len86 = and i64 %mk.len85, 281474976710655
  %hash.str87 = call i64 @dva_hash_string(ptr %mk.data83, i64 %mk.len86)
  %m.capm188 = sub i64 %m.cap75, 1
  %m.idx089 = and i64 %hash.str87, %m.capm188
  br label %m.loop90

m.loop90:                                         ; preds = %m.next95, %m.re.ins
  %m.idx98 = phi i64 [ %m.idx089, %m.re.ins ], [ %m.idx.next131, %m.next95 ]
  %m.tomb99 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb129, %m.next95 ]
  %m.probe100 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next132, %m.next95 ]
  %m.reached.cap101 = icmp eq i64 %m.probe100, %m.cap75
  %m.state.gep102 = getelementptr i8, ptr %m.states81, i64 %m.idx98
  %m.state103 = load i8, ptr %m.state.gep102, align 1
  %m.is.empty104 = icmp eq i8 %m.state103, 0
  %m.stop105 = or i1 %m.is.empty104, %m.reached.cap101
  br i1 %m.stop105, label %m.empty96, label %m.check.tomb91

m.check.tomb91:                                   ; preds = %m.loop90
  %m.is.tomb106 = icmp eq i8 %m.state103, 2
  br i1 %m.is.tomb106, label %m.tomb92, label %m.found93

m.tomb92:                                         ; preds = %m.check.tomb91
  %m.has.tomb107 = icmp ne i64 %m.tomb99, -1
  %m.tomb.sel108 = select i1 %m.has.tomb107, i64 %m.tomb99, i64 %m.idx98
  br label %m.next95

m.found93:                                        ; preds = %m.check.tomb91
  %m.key.slot109 = getelementptr i64, ptr %m.keys77, i64 %m.idx98
  %mk.stored110 = load ptr, ptr %m.key.slot109, align 8
  %mk.slen111 = getelementptr inbounds { i64, ptr }, ptr %mk.stored110, i32 0, i32 0
  %mk.slen112 = load i64, ptr %mk.slen111, align 8
  %mk.slen113 = and i64 %mk.slen112, 281474976710655
  %mk.nlen114 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen115 = load i64, ptr %mk.nlen114, align 8
  %mk.nlen116 = and i64 %mk.nlen115, 281474976710655
  %mk.lenseq117 = icmp eq i64 %mk.slen113, %mk.nlen116
  br i1 %mk.lenseq117, label %mk.eq.then118, label %mk.eq.else119

m.overwrite94:                                    ; preds = %mk.eq.merge120
  %m.val.slot128 = getelementptr i64, ptr %m.vals79, i64 %m.idx98
  store i64 %m.re.val, ptr %m.val.slot128, align 8
  br label %m.done97

m.next95:                                         ; preds = %mk.eq.merge120, %m.tomb92
  %m.next.tomb129 = phi i64 [ %m.tomb.sel108, %m.tomb92 ], [ %m.tomb99, %mk.eq.merge120 ]
  %m.idx.add130 = add i64 %m.idx98, 1
  %m.idx.next131 = and i64 %m.idx.add130, %m.capm188
  %m.probe.next132 = add i64 %m.probe100, 1
  br label %m.loop90

m.empty96:                                        ; preds = %m.loop90
  %m.use.tomb = icmp ne i64 %m.tomb99, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb99, i64 %m.idx98
  %m.key.slot133 = getelementptr i64, ptr %m.keys77, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot133, align 8
  %m.val.slot134 = getelementptr i64, ptr %m.vals79, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot134, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states81, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count135 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count135, 1
  %m.count.gep136 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep136, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done97

m.done97:                                         ; preds = %m.empty96, %m.overwrite94
  br label %m.re.cont

mk.eq.then118:                                    ; preds = %m.found93
  %mk.sdata121 = getelementptr inbounds { i64, ptr }, ptr %mk.stored110, i32 0, i32 1
  %mk.sdata122 = load ptr, ptr %mk.sdata121, align 8
  %mk.ndata123 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata124 = load ptr, ptr %mk.ndata123, align 8
  %mk.memcmp125 = call i32 @memcmp(ptr %mk.sdata122, ptr %mk.ndata124, i64 %mk.nlen116)
  %mk.cmpeq126 = icmp eq i32 %mk.memcmp125, 0
  br label %mk.eq.merge120

mk.eq.else119:                                    ; preds = %m.found93
  br label %mk.eq.merge120

mk.eq.merge120:                                   ; preds = %mk.eq.else119, %mk.eq.then118
  %mk.eq127 = phi i1 [ %mk.cmpeq126, %mk.eq.then118 ], [ false, %mk.eq.else119 ]
  br i1 %mk.eq127, label %m.overwrite94, label %m.next95

m.loop153:                                        ; preds = %m.next158, %m.re.done
  %m.idx161 = phi i64 [ %m.idx0152, %m.re.done ], [ %m.idx.next194, %m.next158 ]
  %m.tomb162 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb192, %m.next158 ]
  %m.probe163 = phi i64 [ 0, %m.re.done ], [ %m.probe.next195, %m.next158 ]
  %m.reached.cap164 = icmp eq i64 %m.probe163, %m.cap138
  %m.state.gep165 = getelementptr i8, ptr %m.states144, i64 %m.idx161
  %m.state166 = load i8, ptr %m.state.gep165, align 1
  %m.is.empty167 = icmp eq i8 %m.state166, 0
  %m.stop168 = or i1 %m.is.empty167, %m.reached.cap164
  br i1 %m.stop168, label %m.empty159, label %m.check.tomb154

m.check.tomb154:                                  ; preds = %m.loop153
  %m.is.tomb169 = icmp eq i8 %m.state166, 2
  br i1 %m.is.tomb169, label %m.tomb155, label %m.found156

m.tomb155:                                        ; preds = %m.check.tomb154
  %m.has.tomb170 = icmp ne i64 %m.tomb162, -1
  %m.tomb.sel171 = select i1 %m.has.tomb170, i64 %m.tomb162, i64 %m.idx161
  br label %m.next158

m.found156:                                       ; preds = %m.check.tomb154
  %m.key.slot172 = getelementptr i64, ptr %m.keys140, i64 %m.idx161
  %mk.stored173 = load ptr, ptr %m.key.slot172, align 8
  %mk.slen174 = getelementptr inbounds { i64, ptr }, ptr %mk.stored173, i32 0, i32 0
  %mk.slen175 = load i64, ptr %mk.slen174, align 8
  %mk.slen176 = and i64 %mk.slen175, 281474976710655
  %mk.nlen177 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen178 = load i64, ptr %mk.nlen177, align 8
  %mk.nlen179 = and i64 %mk.nlen178, 281474976710655
  %mk.lenseq180 = icmp eq i64 %mk.slen176, %mk.nlen179
  br i1 %mk.lenseq180, label %mk.eq.then181, label %mk.eq.else182

m.overwrite157:                                   ; preds = %mk.eq.merge183
  %m.val.slot191 = getelementptr i64, ptr %m.vals142, i64 %m.idx161
  store i64 %a.len.query51, ptr %m.val.slot191, align 8
  br label %m.done160

m.next158:                                        ; preds = %mk.eq.merge183, %m.tomb155
  %m.next.tomb192 = phi i64 [ %m.tomb.sel171, %m.tomb155 ], [ %m.tomb162, %mk.eq.merge183 ]
  %m.idx.add193 = add i64 %m.idx161, 1
  %m.idx.next194 = and i64 %m.idx.add193, %m.capm1151
  %m.probe.next195 = add i64 %m.probe163, 1
  br label %m.loop153

m.empty159:                                       ; preds = %m.loop153
  %m.use.tomb196 = icmp ne i64 %m.tomb162, -1
  %m.ins.idx197 = select i1 %m.use.tomb196, i64 %m.tomb162, i64 %m.idx161
  %m.key.slot198 = getelementptr i64, ptr %m.keys140, i64 %m.ins.idx197
  store ptr %var.load37, ptr %m.key.slot198, align 8
  %m.val.slot199 = getelementptr i64, ptr %m.vals142, i64 %m.ins.idx197
  store i64 %a.len.query51, ptr %m.val.slot199, align 8
  %m.ins.state.slot200 = getelementptr i8, ptr %m.states144, i64 %m.ins.idx197
  store i8 1, ptr %m.ins.state.slot200, align 1
  %m.count201 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count202 = load i64, ptr %m.count201, align 8
  %m.count.next203 = add i64 %m.count202, 1
  %m.count.gep204 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next203, ptr %m.count.gep204, align 8
  %m.ins.tombs.p205 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs206 = load i64, ptr %m.ins.tombs.p205, align 8
  %m.tomb.dec207 = select i1 %m.use.tomb196, i64 1, i64 0
  %m.ins.tombs.next208 = sub i64 %m.ins.tombs206, %m.tomb.dec207
  store i64 %m.ins.tombs.next208, ptr %m.ins.tombs.p205, align 8
  br label %m.done160

m.done160:                                        ; preds = %m.empty159, %m.overwrite157
  br label %m.done

mk.eq.then181:                                    ; preds = %m.found156
  %mk.sdata184 = getelementptr inbounds { i64, ptr }, ptr %mk.stored173, i32 0, i32 1
  %mk.sdata185 = load ptr, ptr %mk.sdata184, align 8
  %mk.ndata186 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata187 = load ptr, ptr %mk.ndata186, align 8
  %mk.memcmp188 = call i32 @memcmp(ptr %mk.sdata185, ptr %mk.ndata187, i64 %mk.nlen179)
  %mk.cmpeq189 = icmp eq i32 %mk.memcmp188, 0
  br label %mk.eq.merge183

mk.eq.else182:                                    ; preds = %m.found156
  br label %mk.eq.merge183

mk.eq.merge183:                                   ; preds = %mk.eq.else182, %mk.eq.then181
  %mk.eq190 = phi i1 [ %mk.cmpeq189, %mk.eq.then181 ], [ false, %mk.eq.else182 ]
  br i1 %mk.eq190, label %m.overwrite157, label %m.next158

a.create237:                                      ; preds = %m.done
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 24)
  %arena.cur241 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 128)
  %a.len.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 0
  store i64 0, ptr %a.len.gep243, align 8
  %a.data.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 1
  store ptr %a.buf242, ptr %a.data.gep244, align 8
  %a.cap.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 2
  store i64 16, ptr %a.cap.gep245, align 8
  store ptr %a.create240, ptr %var.bnds, align 8
  br label %a.after238

a.after238:                                       ; preds = %a.create237, %m.done
  %a.load2246 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after238
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2246, i32 0, i32 0
  %a.len247 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2246, i32 0, i32 2
  %a.cap248 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len247, %a.cap248
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2246)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2246, i32 0, i32 1
  %a.cur.data249 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2246, i32 0, i32 0
  %a.cur.len250 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data249, i64 %a.cur.len250
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len250, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2246, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load251 = load ptr, ptr %var.cur_sc, align 8
  %var.load252 = load ptr, ptr %var.bnds, align 8
  %a.load253 = load ptr, ptr %var.bnds, align 8
  %a.null254 = icmp eq ptr %a.load253, null
  br i1 %a.null254, label %a.create255, label %a.after256

a.create255:                                      ; preds = %a.store
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 24)
  %arena.cur259 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 128)
  %a.len.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 0
  store i64 0, ptr %a.len.gep261, align 8
  %a.data.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 1
  store ptr %a.buf260, ptr %a.data.gep262, align 8
  %a.cap.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 2
  store i64 16, ptr %a.cap.gep263, align 8
  store ptr %a.create258, ptr %var.bnds, align 8
  br label %a.after256

a.after256:                                       ; preds = %a.create255, %a.store
  %a.load2264 = load ptr, ptr %var.bnds, align 8
  %fld.gep265 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load251, i32 0, i32 0
  store ptr %a.load2264, ptr %fld.gep265, align 8
  %var.load266 = load ptr, ptr %var.scs, align 8
  %a.load267 = load ptr, ptr %var.scs, align 8
  %a.null268 = icmp eq ptr %a.load267, null
  br i1 %a.null268, label %a.create269, label %a.after270

a.create269:                                      ; preds = %a.after256
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 24)
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 128)
  %a.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 0
  store i64 0, ptr %a.len.gep275, align 8
  %a.data.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 1
  store ptr %a.buf274, ptr %a.data.gep276, align 8
  %a.cap.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 2
  store i64 16, ptr %a.cap.gep277, align 8
  store ptr %a.create272, ptr %var.scs, align 8
  br label %a.after270

a.after270:                                       ; preds = %a.create269, %a.after256
  %a.load2278 = load ptr, ptr %var.scs, align 8
  %var.load279 = load i64, ptr %var.cur_idx, align 8
  %var.load280 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i281 = ptrtoint ptr %var.load280 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2278, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after270
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 0
  %a.wr.len282 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load279, 0
  %a.wr.lt = icmp slt i64 %var.load279, %a.wr.len282
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 1
  %a.wr.data283 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep284 = getelementptr i64, ptr %a.wr.data283, i64 %var.load279
  store i64 %slot.p2i281, ptr %a.elem.gep284, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after270
  %arena.cur285 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc286 = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 56)
  %err.code.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 0
  store i64 4011, ptr %err.code.gep287, align 8
  %err.msg.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep288, align 8
  %err.file.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep289, align 8
  %err.line.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 3
  store i64 0, ptr %err.line.gep290, align 8
  %err.col.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 4
  store i64 0, ptr %err.col.gep291, align 8
  %err.ctx.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc286, i32 0, i32 5
  %err.ctx0.gep293 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep292, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep293, align 8
  %err.ctx1.gep294 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep292, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep294, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur295 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 56)
  %err.code.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 0
  store i64 4011, ptr %err.code.gep297, align 8
  %err.msg.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep298, align 8
  %err.file.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep299, align 8
  %err.line.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 3
  store i64 0, ptr %err.line.gep300, align 8
  %err.col.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 4
  store i64 0, ptr %err.col.gep301, align 8
  %err.ctx.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc296, i32 0, i32 5
  %err.ctx0.gep303 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep302, i32 0, i32 0
  store i64 %var.load279, ptr %err.ctx0.gep303, align 8
  %err.ctx1.gep304 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep302, i32 0, i32 1
  store i64 %a.wr.len282, ptr %err.ctx1.gep304, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc286, %a.wr.err.null ], [ %err.alloc296, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then305, label %choice.else306

choice.then305:                                   ; preds = %a.wr.done
  br label %choice.exit307

choice.else306:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._308, align 8
  store ptr %a.wr.niche, ptr %var._309, align 8
  store ptr %a.wr.niche, ptr %var._310, align 8
  %err.code.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep311, align 8
  %err.msg.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep312, align 8
  %err.file.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep313, align 8
  %err.line.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep314, align 8
  %err.col.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep315, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len316 = load i64, ptr %err.msg.len, align 8
  %err.msg.len317 = and i64 %err.msg.len316, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len317 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data318 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len319 = load i64, ptr %err.file.len, align 8
  %err.file.len320 = and i64 %err.file.len319, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len320 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data321 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit307:                                   ; preds = %err.abort, %choice.then305
  %var.load322 = load ptr, ptr %var.env, align 8
  %var.load323 = load ptr, ptr %var.scs, align 8
  %a.load324 = load ptr, ptr %var.scs, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

err.thread:                                       ; preds = %choice.else306
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else306
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data318, i32 %err.file.len32, ptr %err.file.data321, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit307

a.create326:                                      ; preds = %choice.exit307
  %arena.cur328 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create329 = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 24)
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 128)
  %a.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 0
  store i64 0, ptr %a.len.gep332, align 8
  %a.data.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 1
  store ptr %a.buf331, ptr %a.data.gep333, align 8
  %a.cap.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 2
  store i64 16, ptr %a.cap.gep334, align 8
  store ptr %a.create329, ptr %var.scs, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %choice.exit307
  %a.load2335 = load ptr, ptr %var.scs, align 8
  %fld.gep336 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load322, i32 0, i32 0
  store ptr %a.load2335, ptr %fld.gep336, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #3 {
entry:
  %var._247 = alloca ptr, align 8
  %var._246 = alloca ptr, align 8
  %var._245 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %a.after264, %entry
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
  %hash.str = call i64 @dva_hash_string(ptr %mk.data39, i64 %mk.len41)
  %m.capm1 = sub i64 %m.cap35, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

m.loop:                                           ; preds = %m.next, %choice.exit25
  %m.idx = phi i64 [ %m.idx0, %choice.exit25 ], [ %m.idx.next, %m.next ]
  %m.tomb42 = phi i64 [ -1, %choice.exit25 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %choice.exit25 ], [ %m.probe.next, %m.next ]
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
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen45 = load i64, ptr %mk.nlen, align 8
  %mk.nlen46 = and i64 %mk.nlen45, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen44, %mk.nlen46
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

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

m.done:                                           ; preds = %m.ins.slot, %m.done143, %m.overwrite
  %var.load205 = load ptr, ptr %var.scs, align 8
  %a.load206 = load ptr, ptr %var.scs, align 8
  %a.null207 = icmp eq ptr %a.load206, null
  br i1 %a.null207, label %a.create208, label %a.after209

mk.eq.then:                                       ; preds = %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata47 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata48 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata47, ptr %mk.ndata48, i64 %mk.nlen46)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.old.cap49 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.old.keys50 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.old.vals51 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.old.states52 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap49, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.live.cnt53 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt53, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap49
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap49
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %m.gv.bytes)
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %m.new.cap)
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
  %m.use.tomb192 = icmp ne i64 %m.tomb42, -1
  %m.ins.idx193 = select i1 %m.use.tomb192, i64 %m.tomb42, i64 %m.idx
  %m.key.slot194 = getelementptr i64, ptr %m.keys36, i64 %m.ins.idx193
  store ptr %var.load34, ptr %m.key.slot194, align 8
  %m.val.slot195 = getelementptr i64, ptr %m.vals37, i64 %m.ins.idx193
  store i64 -1, ptr %m.val.slot195, align 8
  %m.ins.state.slot196 = getelementptr i8, ptr %m.states38, i64 %m.ins.idx193
  store i8 1, ptr %m.ins.state.slot196, align 1
  %m.count197 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count198 = load i64, ptr %m.count197, align 8
  %m.count.next199 = add i64 %m.count198, 1
  %m.count.gep200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next199, ptr %m.count.gep200, align 8
  %m.ins.tombs.p201 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs202 = load i64, ptr %m.ins.tombs.p201, align 8
  %m.tomb.dec203 = select i1 %m.use.tomb192, i64 1, i64 0
  %m.ins.tombs.next204 = sub i64 %m.ins.tombs202, %m.tomb.dec203
  store i64 %m.ins.tombs.next204, ptr %m.ins.tombs.p201, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap49
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states52, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done80, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap120 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap121 = load i64, ptr %m.cap120, align 8
  %m.keys122 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys123 = load ptr, ptr %m.keys122, align 8
  %m.vals124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals125 = load ptr, ptr %m.vals124, align 8
  %m.states126 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states127 = load ptr, ptr %m.states126, align 8
  %mk.data128 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data129 = load ptr, ptr %mk.data128, align 8
  %mk.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len131 = load i64, ptr %mk.len130, align 8
  %mk.len132 = and i64 %mk.len131, 281474976710655
  %hash.str133 = call i64 @dva_hash_string(ptr %mk.data129, i64 %mk.len132)
  %m.capm1134 = sub i64 %m.cap121, 1
  %m.idx0135 = and i64 %hash.str133, %m.capm1134
  br label %m.loop136

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys50, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals51, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap57 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap58 = load i64, ptr %m.cap57, align 8
  %m.keys59 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys60 = load ptr, ptr %m.keys59, align 8
  %m.vals61 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals62 = load ptr, ptr %m.vals61, align 8
  %m.states63 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states64 = load ptr, ptr %m.states63, align 8
  %mk.data65 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data66 = load ptr, ptr %mk.data65, align 8
  %mk.len67 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len68 = load i64, ptr %mk.len67, align 8
  %mk.len69 = and i64 %mk.len68, 281474976710655
  %hash.str70 = call i64 @dva_hash_string(ptr %mk.data66, i64 %mk.len69)
  %m.capm171 = sub i64 %m.cap58, 1
  %m.idx072 = and i64 %hash.str70, %m.capm171
  br label %m.loop73

m.loop73:                                         ; preds = %m.next78, %m.re.ins
  %m.idx81 = phi i64 [ %m.idx072, %m.re.ins ], [ %m.idx.next114, %m.next78 ]
  %m.tomb82 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb112, %m.next78 ]
  %m.probe83 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next115, %m.next78 ]
  %m.reached.cap84 = icmp eq i64 %m.probe83, %m.cap58
  %m.state.gep85 = getelementptr i8, ptr %m.states64, i64 %m.idx81
  %m.state86 = load i8, ptr %m.state.gep85, align 1
  %m.is.empty87 = icmp eq i8 %m.state86, 0
  %m.stop88 = or i1 %m.is.empty87, %m.reached.cap84
  br i1 %m.stop88, label %m.empty79, label %m.check.tomb74

m.check.tomb74:                                   ; preds = %m.loop73
  %m.is.tomb89 = icmp eq i8 %m.state86, 2
  br i1 %m.is.tomb89, label %m.tomb75, label %m.found76

m.tomb75:                                         ; preds = %m.check.tomb74
  %m.has.tomb90 = icmp ne i64 %m.tomb82, -1
  %m.tomb.sel91 = select i1 %m.has.tomb90, i64 %m.tomb82, i64 %m.idx81
  br label %m.next78

m.found76:                                        ; preds = %m.check.tomb74
  %m.key.slot92 = getelementptr i64, ptr %m.keys60, i64 %m.idx81
  %mk.stored93 = load ptr, ptr %m.key.slot92, align 8
  %mk.slen94 = getelementptr inbounds { i64, ptr }, ptr %mk.stored93, i32 0, i32 0
  %mk.slen95 = load i64, ptr %mk.slen94, align 8
  %mk.slen96 = and i64 %mk.slen95, 281474976710655
  %mk.nlen97 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen98 = load i64, ptr %mk.nlen97, align 8
  %mk.nlen99 = and i64 %mk.nlen98, 281474976710655
  %mk.lenseq100 = icmp eq i64 %mk.slen96, %mk.nlen99
  br i1 %mk.lenseq100, label %mk.eq.then101, label %mk.eq.else102

m.overwrite77:                                    ; preds = %mk.eq.merge103
  %m.val.slot111 = getelementptr i64, ptr %m.vals62, i64 %m.idx81
  store i64 %m.re.val, ptr %m.val.slot111, align 8
  br label %m.done80

m.next78:                                         ; preds = %mk.eq.merge103, %m.tomb75
  %m.next.tomb112 = phi i64 [ %m.tomb.sel91, %m.tomb75 ], [ %m.tomb82, %mk.eq.merge103 ]
  %m.idx.add113 = add i64 %m.idx81, 1
  %m.idx.next114 = and i64 %m.idx.add113, %m.capm171
  %m.probe.next115 = add i64 %m.probe83, 1
  br label %m.loop73

m.empty79:                                        ; preds = %m.loop73
  %m.use.tomb = icmp ne i64 %m.tomb82, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb82, i64 %m.idx81
  %m.key.slot116 = getelementptr i64, ptr %m.keys60, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot116, align 8
  %m.val.slot117 = getelementptr i64, ptr %m.vals62, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot117, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states64, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count118 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count118, 1
  %m.count.gep119 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep119, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done80

m.done80:                                         ; preds = %m.empty79, %m.overwrite77
  br label %m.re.cont

mk.eq.then101:                                    ; preds = %m.found76
  %mk.sdata104 = getelementptr inbounds { i64, ptr }, ptr %mk.stored93, i32 0, i32 1
  %mk.sdata105 = load ptr, ptr %mk.sdata104, align 8
  %mk.ndata106 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata107 = load ptr, ptr %mk.ndata106, align 8
  %mk.memcmp108 = call i32 @memcmp(ptr %mk.sdata105, ptr %mk.ndata107, i64 %mk.nlen99)
  %mk.cmpeq109 = icmp eq i32 %mk.memcmp108, 0
  br label %mk.eq.merge103

mk.eq.else102:                                    ; preds = %m.found76
  br label %mk.eq.merge103

mk.eq.merge103:                                   ; preds = %mk.eq.else102, %mk.eq.then101
  %mk.eq110 = phi i1 [ %mk.cmpeq109, %mk.eq.then101 ], [ false, %mk.eq.else102 ]
  br i1 %mk.eq110, label %m.overwrite77, label %m.next78

m.loop136:                                        ; preds = %m.next141, %m.re.done
  %m.idx144 = phi i64 [ %m.idx0135, %m.re.done ], [ %m.idx.next177, %m.next141 ]
  %m.tomb145 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb175, %m.next141 ]
  %m.probe146 = phi i64 [ 0, %m.re.done ], [ %m.probe.next178, %m.next141 ]
  %m.reached.cap147 = icmp eq i64 %m.probe146, %m.cap121
  %m.state.gep148 = getelementptr i8, ptr %m.states127, i64 %m.idx144
  %m.state149 = load i8, ptr %m.state.gep148, align 1
  %m.is.empty150 = icmp eq i8 %m.state149, 0
  %m.stop151 = or i1 %m.is.empty150, %m.reached.cap147
  br i1 %m.stop151, label %m.empty142, label %m.check.tomb137

m.check.tomb137:                                  ; preds = %m.loop136
  %m.is.tomb152 = icmp eq i8 %m.state149, 2
  br i1 %m.is.tomb152, label %m.tomb138, label %m.found139

m.tomb138:                                        ; preds = %m.check.tomb137
  %m.has.tomb153 = icmp ne i64 %m.tomb145, -1
  %m.tomb.sel154 = select i1 %m.has.tomb153, i64 %m.tomb145, i64 %m.idx144
  br label %m.next141

m.found139:                                       ; preds = %m.check.tomb137
  %m.key.slot155 = getelementptr i64, ptr %m.keys123, i64 %m.idx144
  %mk.stored156 = load ptr, ptr %m.key.slot155, align 8
  %mk.slen157 = getelementptr inbounds { i64, ptr }, ptr %mk.stored156, i32 0, i32 0
  %mk.slen158 = load i64, ptr %mk.slen157, align 8
  %mk.slen159 = and i64 %mk.slen158, 281474976710655
  %mk.nlen160 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen161 = load i64, ptr %mk.nlen160, align 8
  %mk.nlen162 = and i64 %mk.nlen161, 281474976710655
  %mk.lenseq163 = icmp eq i64 %mk.slen159, %mk.nlen162
  br i1 %mk.lenseq163, label %mk.eq.then164, label %mk.eq.else165

m.overwrite140:                                   ; preds = %mk.eq.merge166
  %m.val.slot174 = getelementptr i64, ptr %m.vals125, i64 %m.idx144
  store i64 -1, ptr %m.val.slot174, align 8
  br label %m.done143

m.next141:                                        ; preds = %mk.eq.merge166, %m.tomb138
  %m.next.tomb175 = phi i64 [ %m.tomb.sel154, %m.tomb138 ], [ %m.tomb145, %mk.eq.merge166 ]
  %m.idx.add176 = add i64 %m.idx144, 1
  %m.idx.next177 = and i64 %m.idx.add176, %m.capm1134
  %m.probe.next178 = add i64 %m.probe146, 1
  br label %m.loop136

m.empty142:                                       ; preds = %m.loop136
  %m.use.tomb179 = icmp ne i64 %m.tomb145, -1
  %m.ins.idx180 = select i1 %m.use.tomb179, i64 %m.tomb145, i64 %m.idx144
  %m.key.slot181 = getelementptr i64, ptr %m.keys123, i64 %m.ins.idx180
  store ptr %var.load34, ptr %m.key.slot181, align 8
  %m.val.slot182 = getelementptr i64, ptr %m.vals125, i64 %m.ins.idx180
  store i64 -1, ptr %m.val.slot182, align 8
  %m.ins.state.slot183 = getelementptr i8, ptr %m.states127, i64 %m.ins.idx180
  store i8 1, ptr %m.ins.state.slot183, align 1
  %m.count184 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count185 = load i64, ptr %m.count184, align 8
  %m.count.next186 = add i64 %m.count185, 1
  %m.count.gep187 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next186, ptr %m.count.gep187, align 8
  %m.ins.tombs.p188 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs189 = load i64, ptr %m.ins.tombs.p188, align 8
  %m.tomb.dec190 = select i1 %m.use.tomb179, i64 1, i64 0
  %m.ins.tombs.next191 = sub i64 %m.ins.tombs189, %m.tomb.dec190
  store i64 %m.ins.tombs.next191, ptr %m.ins.tombs.p188, align 8
  br label %m.done143

m.done143:                                        ; preds = %m.empty142, %m.overwrite140
  br label %m.done

mk.eq.then164:                                    ; preds = %m.found139
  %mk.sdata167 = getelementptr inbounds { i64, ptr }, ptr %mk.stored156, i32 0, i32 1
  %mk.sdata168 = load ptr, ptr %mk.sdata167, align 8
  %mk.ndata169 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata170 = load ptr, ptr %mk.ndata169, align 8
  %mk.memcmp171 = call i32 @memcmp(ptr %mk.sdata168, ptr %mk.ndata170, i64 %mk.nlen162)
  %mk.cmpeq172 = icmp eq i32 %mk.memcmp171, 0
  br label %mk.eq.merge166

mk.eq.else165:                                    ; preds = %m.found139
  br label %mk.eq.merge166

mk.eq.merge166:                                   ; preds = %mk.eq.else165, %mk.eq.then164
  %mk.eq173 = phi i1 [ %mk.cmpeq172, %mk.eq.then164 ], [ false, %mk.eq.else165 ]
  br i1 %mk.eq173, label %m.overwrite140, label %m.next141

a.create208:                                      ; preds = %m.done
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 24)
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 128)
  %a.len.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 0
  store i64 0, ptr %a.len.gep214, align 8
  %a.data.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 1
  store ptr %a.buf213, ptr %a.data.gep215, align 8
  %a.cap.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 2
  store i64 16, ptr %a.cap.gep216, align 8
  store ptr %a.create211, ptr %var.scs, align 8
  br label %a.after209

a.after209:                                       ; preds = %a.create208, %m.done
  %a.load2217 = load ptr, ptr %var.scs, align 8
  %var.load218 = load i64, ptr %var.cur_idx, align 8
  %var.load219 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i = ptrtoint ptr %var.load219 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2217, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after209
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2217, i32 0, i32 0
  %a.wr.len220 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load218, 0
  %a.wr.lt = icmp slt i64 %var.load218, %a.wr.len220
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2217, i32 0, i32 1
  %a.wr.data221 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data221, i64 %var.load218
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after209
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 56)
  %err.code.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 0
  store i64 4011, ptr %err.code.gep224, align 8
  %err.msg.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep225, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep226, align 8
  %err.line.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 3
  store i64 0, ptr %err.line.gep227, align 8
  %err.col.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 4
  store i64 0, ptr %err.col.gep228, align 8
  %err.ctx.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 5
  %err.ctx0.gep230 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep230, align 8
  %err.ctx1.gep231 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep231, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 56)
  %err.code.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 0
  store i64 4011, ptr %err.code.gep234, align 8
  %err.msg.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep235, align 8
  %err.file.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep236, align 8
  %err.line.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 3
  store i64 0, ptr %err.line.gep237, align 8
  %err.col.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 4
  store i64 0, ptr %err.col.gep238, align 8
  %err.ctx.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 5
  %err.ctx0.gep240 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep239, i32 0, i32 0
  store i64 %var.load218, ptr %err.ctx0.gep240, align 8
  %err.ctx1.gep241 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep239, i32 0, i32 1
  store i64 %a.wr.len220, ptr %err.ctx1.gep241, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc223, %a.wr.err.null ], [ %err.alloc233, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then242, label %choice.else243

choice.then242:                                   ; preds = %a.wr.done
  br label %choice.exit244

choice.else243:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._245, align 8
  store ptr %a.wr.niche, ptr %var._246, align 8
  store ptr %a.wr.niche, ptr %var._247, align 8
  %err.code.gep248 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep248, align 8
  %err.msg.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep249, align 8
  %err.file.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep250, align 8
  %err.line.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep251, align 8
  %err.col.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep252, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len253 = load i64, ptr %err.msg.len, align 8
  %err.msg.len254 = and i64 %err.msg.len253, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len254 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data255 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len256 = load i64, ptr %err.file.len, align 8
  %err.file.len257 = and i64 %err.file.len256, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len257 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data258 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit244:                                   ; preds = %err.abort, %choice.then242
  %var.load259 = load ptr, ptr %var.env, align 8
  %var.load260 = load ptr, ptr %var.scs, align 8
  %a.load261 = load ptr, ptr %var.scs, align 8
  %a.null262 = icmp eq ptr %a.load261, null
  br i1 %a.null262, label %a.create263, label %a.after264

err.thread:                                       ; preds = %choice.else243
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else243
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data255, i32 %err.file.len32, ptr %err.file.data258, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit244

a.create263:                                      ; preds = %choice.exit244
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
  store ptr %a.create266, ptr %var.scs, align 8
  br label %a.after264

a.after264:                                       ; preds = %a.create263, %choice.exit244
  %a.load2272 = load ptr, ptr %var.scs, align 8
  %fld.gep273 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load259, i32 0, i32 0
  store ptr %a.load2272, ptr %fld.gep273, align 8
  br label %choice.exit
}

define void @"type_env::bind_global"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
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

define i64 @"type_env::decl_module_find"(ptr %0, i64 %1, i64 %2) #3 {
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
  br i1 %cmptmp, label %and.185.then, label %and.185.else

and.185.then:                                     ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.185.else:                                     ; preds = %entry
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %idx_ok
  %and.185.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.185.else ]
  br i1 %and.185.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.185.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.185.exit

idx_oob:                                          ; preds = %and.185.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.185.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.185.exit
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
  br i1 %cmptmp24, label %and.186.then, label %and.186.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.186.then:                                     ; preds = %idx_ok18
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

and.186.else:                                     ; preds = %idx_ok18
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %idx_ok34
  %and.186.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.186.else ]
  br i1 %and.186.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.186.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.186.exit

idx_oob35:                                        ; preds = %and.186.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.186.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.186.exit
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

define { i64, ptr } @"type_env::decl_module"(ptr %0, i64 %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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

define void @"type_env::set_current_module"(ptr %0, ptr %1) #3 {
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

define ptr @"type_env::lookup_local_exact"(ptr %0, ptr %1) #3 {
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

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #3 {
entry:
  %var._116 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._112 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._60 = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var._58 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.else, %choice.exit75
  %choice.res119 = phi ptr [ %choice.res118, %choice.exit75 ], [ null, %choice.else ]
  ret ptr %choice.res119

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
  %cmptmp = icmp slt i64 %var.load72, 0
  br i1 %cmptmp, label %choice.then73, label %choice.else74

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

choice.then73:                                    ; preds = %choice.exit55
  br label %choice.exit75

choice.else74:                                    ; preds = %choice.exit55
  %var.load76 = load ptr, ptr %var.scope, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load76, i32 0, i32 0
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %var.load79 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load78, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit75:                                    ; preds = %choice.exit109, %choice.then73
  %choice.res118 = phi ptr [ null, %choice.then73 ], [ %choice.res117, %choice.exit109 ]
  br label %choice.exit

a.rd.check:                                       ; preds = %choice.else74
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 0
  %a.rd.len80 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load79, 0
  %a.rd.lt = icmp slt i64 %var.load79, %a.rd.len80
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %a.rd.data81 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data81, i64 %var.load79
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.else74
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 56)
  %err.code.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 0
  store i64 4011, ptr %err.code.gep84, align 8
  %err.msg.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep85, align 8
  %err.file.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep86, align 8
  %err.line.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 3
  store i64 0, ptr %err.line.gep87, align 8
  %err.col.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 4
  store i64 0, ptr %err.col.gep88, align 8
  %err.ctx.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 5
  %err.ctx0.gep90 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep90, align 8
  %err.ctx1.gep91 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep91, align 8
  %err.p2i92 = ptrtoint ptr %err.alloc83 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 56)
  %err.code.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 0
  store i64 4011, ptr %err.code.gep95, align 8
  %err.msg.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep96, align 8
  %err.file.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep97, align 8
  %err.line.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 3
  store i64 0, ptr %err.line.gep98, align 8
  %err.col.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 4
  store i64 0, ptr %err.col.gep99, align 8
  %err.ctx.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc94, i32 0, i32 5
  %err.ctx0.gep101 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep100, i32 0, i32 0
  store i64 %var.load79, ptr %err.ctx0.gep101, align 8
  %err.ctx1.gep102 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep100, i32 0, i32 1
  store i64 %a.rd.len80, ptr %err.ctx1.gep102, align 8
  %err.p2i103 = ptrtoint ptr %err.alloc94 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i92, %a.rd.err.null ], [ %err.p2i103, %a.rd.err.oob ]
  %ram.tag104 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay105 = insertvalue { i1, i64 } %ram.tag104, i64 %a.rd.pay, 1
  %ram.tag106 = extractvalue { i1, i64 } %ram.pay105, 0
  br i1 %ram.tag106, label %choice.then107, label %choice.else108

choice.then107:                                   ; preds = %a.rd.done
  %ram.pay110 = extractvalue { i1, i64 } %ram.pay105, 1
  %pay.ptr111 = inttoptr i64 %ram.pay110 to ptr
  store ptr %pay.ptr111, ptr %var._112, align 8
  store ptr %pay.ptr111, ptr %var.binding, align 8
  %var.load113 = load ptr, ptr %var.binding, align 8
  br label %choice.exit109

choice.else108:                                   ; preds = %a.rd.done
  %ram.pay114 = extractvalue { i1, i64 } %ram.pay105, 1
  %pay.ptr115 = inttoptr i64 %ram.pay114 to ptr
  store ptr %pay.ptr115, ptr %var._116, align 8
  br label %choice.exit109

choice.exit109:                                   ; preds = %choice.else108, %choice.then107
  %choice.res117 = phi ptr [ %var.load113, %choice.then107 ], [ null, %choice.else108 ]
  br label %choice.exit75
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #3 {
entry:
  %var.p180 = alloca ptr, align 8
  %var._179 = alloca ptr, align 8
  %var.pub173 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._99 = alloca ptr, align 8
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
  br i1 %cmptmp, label %and.188.then, label %and.188.else

and.188.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load1, i32 0, i32 8
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.188.else:                                     ; preds = %entry
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %str.eq.merge
  %and.188.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp, %and.188.else ]
  br i1 %and.188.phi, label %and.189.then, label %and.189.else

str.eq.then:                                      ; preds = %and.188.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.188.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.188.exit

and.189.then:                                     ; preds = %and.188.exit
  %var.load8 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load8, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.189.exit

and.189.else:                                     ; preds = %and.188.exit
  br label %and.189.exit

and.189.exit:                                     ; preds = %and.189.else, %and.189.then
  %and.189.phi = phi i1 [ %nottmp, %and.189.then ], [ %and.188.phi, %and.189.else ]
  br i1 %and.189.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.189.exit
  %var.load9 = load ptr, ptr %var.env, align 8
  %var.load10 = load ptr, ptr %var.env, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load10, i32 0, i32 8
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 0
  %cat.seg13 = load i64, ptr %cat.seg, align 8
  %cat.seg14 = and i64 %cat.seg13, 281474976710655
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load17 = load ptr, ptr %var.name, align 8
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %cat.seg19 = load i64, ptr %cat.seg18, align 8
  %cat.seg20 = and i64 %cat.seg19, 281474976710655
  %cat.seg21 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %cat.seg22 = load ptr, ptr %cat.seg21, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg14, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len23

choice.exit:                                      ; preds = %ret.dead91, %and.189.exit
  %var.load92 = load ptr, ptr %var.env, align 8
  %var.load93 = load ptr, ptr %var.name, align 8
  %call.res94 = call ptr @"type_env::lookup_local_exact"(ptr %var.load92, ptr %var.load93)
  store ptr %call.res94, ptr %var.exact, align 8
  %var.load95 = load ptr, ptr %var.exact, align 8
  %niche.ne.null96 = icmp ne ptr %var.load95, null
  br i1 %niche.ne.null96, label %choice.then97, label %choice.else

cat.sum.len23:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg20)
  %sum25 = extractvalue { i64, i1 } %cat.sum.len24, 0
  %ovf26 = extractvalue { i64, i1 } %cat.sum.len24, 1
  br i1 %ovf26, label %str_overflow_abort28, label %cat.sum.len27

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len23

cat.sum.len27:                                    ; preds = %abort.dead29, %cat.sum.len23
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum25, i64 1)
  %sum30 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf31 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %concat.tot.len32

str_overflow_abort28:                             ; preds = %cat.sum.len23
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %cat.sum.len27

concat.tot.len32:                                 ; preds = %abort.dead34, %cat.sum.len27
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum30)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg16, i64 %cat.seg14, i1 false)
  %cat.off = add i64 0, %cat.seg14
  %cat.dst35 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst35, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off36 = add i64 %cat.off, 2
  %cat.dst37 = getelementptr i8, ptr %concat.buf, i64 %cat.off36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst37, ptr align 1 %cat.seg22, i64 %cat.seg20, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum25
  store i8 0, ptr %concat.nul, align 1
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum25, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res39 = call ptr @"type_env::lookup_local_exact"(ptr %var.load9, ptr %concat.str)
  store ptr %call.res39, ptr %var.pub, align 8
  %var.load40 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load40, null
  br i1 %niche.ne.null, label %choice.then41, label %choice.exit42

str_overflow_abort33:                             ; preds = %cat.sum.len27
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %concat.tot.len32

choice.then41:                                    ; preds = %concat.tot.len32
  store ptr %var.load40, ptr %var._, align 8
  store ptr %var.load40, ptr %var.p, align 8
  %var.load43 = load ptr, ptr %var.p, align 8
  ret ptr %var.load43

choice.exit42:                                    ; preds = %ret.dead, %concat.tot.len32
  %var.load44 = load ptr, ptr %var.env, align 8
  %var.load45 = load ptr, ptr %var.env, align 8
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load45, i32 0, i32 8
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %cat.seg48 = getelementptr inbounds { i64, ptr }, ptr %fld.load47, i32 0, i32 0
  %cat.seg49 = load i64, ptr %cat.seg48, align 8
  %cat.seg50 = and i64 %cat.seg49, 281474976710655
  %cat.seg51 = getelementptr inbounds { i64, ptr }, ptr %fld.load47, i32 0, i32 1
  %cat.seg52 = load ptr, ptr %cat.seg51, align 8
  %cat.lit.data53 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load54 = load ptr, ptr %var.name, align 8
  %cat.seg55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %cat.seg56 = load i64, ptr %cat.seg55, align 8
  %cat.seg57 = and i64 %cat.seg56, 281474976710655
  %cat.seg58 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %cat.seg59 = load ptr, ptr %cat.seg58, align 8
  %cat.sum.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg50, i64 3)
  %sum61 = extractvalue { i64, i1 } %cat.sum.len60, 0
  %ovf62 = extractvalue { i64, i1 } %cat.sum.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %cat.sum.len63

ret.dead:                                         ; No predecessors!
  br label %choice.exit42

cat.sum.len63:                                    ; preds = %abort.dead65, %choice.exit42
  %cat.sum.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum61, i64 %cat.seg57)
  %sum67 = extractvalue { i64, i1 } %cat.sum.len66, 0
  %ovf68 = extractvalue { i64, i1 } %cat.sum.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %cat.sum.len69

str_overflow_abort64:                             ; preds = %choice.exit42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %cat.sum.len63

cat.sum.len69:                                    ; preds = %abort.dead71, %cat.sum.len63
  %concat.tot.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum67, i64 1)
  %sum73 = extractvalue { i64, i1 } %concat.tot.len72, 0
  %ovf74 = extractvalue { i64, i1 } %concat.tot.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %concat.tot.len75

str_overflow_abort70:                             ; preds = %cat.sum.len63
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %cat.sum.len69

concat.tot.len75:                                 ; preds = %abort.dead77, %cat.sum.len69
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  %cat.dst80 = getelementptr i8, ptr %concat.buf79, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 %cat.seg52, i64 %cat.seg50, i1 false)
  %cat.off81 = add i64 0, %cat.seg50
  %cat.dst82 = getelementptr i8, ptr %concat.buf79, i64 %cat.off81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %cat.lit.data53, i64 3, i1 false)
  %cat.off83 = add i64 %cat.off81, 3
  %cat.dst84 = getelementptr i8, ptr %concat.buf79, i64 %cat.off83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst84, ptr align 1 %cat.seg59, i64 %cat.seg57, i1 false)
  %concat.nul85 = getelementptr i8, ptr %concat.buf79, i64 %sum67
  store i8 0, ptr %concat.nul85, align 1
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 16)
  %str.build.len.gep88 = getelementptr inbounds { i64, ptr }, ptr %concat.str87, i32 0, i32 0
  store i64 %sum67, ptr %str.build.len.gep88, align 8
  %str.build.data.gep89 = getelementptr inbounds { i64, ptr }, ptr %concat.str87, i32 0, i32 1
  store ptr %concat.buf79, ptr %str.build.data.gep89, align 8
  %call.res90 = call ptr @"type_env::lookup_local_exact"(ptr %var.load44, ptr %concat.str87)
  ret ptr %call.res90

str_overflow_abort76:                             ; preds = %cat.sum.len69
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead77:                                     ; No predecessors!
  br label %concat.tot.len75

ret.dead91:                                       ; No predecessors!
  br label %choice.exit

choice.then97:                                    ; preds = %choice.exit
  store ptr %var.load95, ptr %var._99, align 8
  store ptr %var.load95, ptr %var.b, align 8
  %var.load100 = load ptr, ptr %var.b, align 8
  br label %choice.exit98

choice.else:                                      ; preds = %choice.exit
  %var.load101 = load ptr, ptr %var.env, align 8
  %fld.gep102 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load101, i32 0, i32 8
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %eq.lhs.len104 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 0
  %eq.lhs.len105 = load i64, ptr %eq.lhs.len104, align 8
  %eq.lhs.len106 = and i64 %eq.lhs.len105, 281474976710655
  %eq.rhs.len107 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len108 = and i64 %eq.rhs.len107, 281474976710655
  %eq.len109 = icmp eq i64 %eq.lhs.len106, %eq.rhs.len108
  br i1 %eq.len109, label %str.eq.then110, label %str.eq.else111

choice.exit98:                                    ; preds = %choice.exit125, %choice.then97
  %choice.res230 = phi ptr [ %var.load100, %choice.then97 ], [ %choice.res229, %choice.exit125 ]
  ret ptr %choice.res230

str.eq.then110:                                   ; preds = %choice.else
  %eq.lhs.data113 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 1
  %eq.lhs.data114 = load ptr, ptr %eq.lhs.data113, align 8
  %eq.rhs.data115 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp116 = call i32 @memcmp(ptr %eq.lhs.data114, ptr %eq.rhs.data115, i64 %eq.lhs.len106)
  %eq.cmp.zero117 = icmp eq i32 %eq.memcmp116, 0
  br label %str.eq.merge112

str.eq.else111:                                   ; preds = %choice.else
  br label %str.eq.merge112

str.eq.merge112:                                  ; preds = %str.eq.else111, %str.eq.then110
  %str.eq.result118 = phi i1 [ %eq.cmp.zero117, %str.eq.then110 ], [ false, %str.eq.else111 ]
  %str.neq119 = xor i1 %str.eq.result118, true
  br i1 %str.neq119, label %and.190.then, label %and.190.else

and.190.then:                                     ; preds = %str.eq.merge112
  %var.load120 = load ptr, ptr %var.name, align 8
  %call.res121 = call i1 @"type_env::name_is_qualified"(ptr %var.load120, i64 0)
  %nottmp122 = xor i1 %call.res121, true
  br label %and.190.exit

and.190.else:                                     ; preds = %str.eq.merge112
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %and.190.then
  %and.190.phi = phi i1 [ %nottmp122, %and.190.then ], [ %str.neq119, %and.190.else ]
  br i1 %and.190.phi, label %choice.then123, label %choice.else124

choice.then123:                                   ; preds = %and.190.exit
  %var.load126 = load ptr, ptr %var.env, align 8
  %var.load127 = load ptr, ptr %var.env, align 8
  %fld.gep128 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load127, i32 0, i32 8
  %fld.load129 = load ptr, ptr %fld.gep128, align 8
  %cat.seg130 = getelementptr inbounds { i64, ptr }, ptr %fld.load129, i32 0, i32 0
  %cat.seg131 = load i64, ptr %cat.seg130, align 8
  %cat.seg132 = and i64 %cat.seg131, 281474976710655
  %cat.seg133 = getelementptr inbounds { i64, ptr }, ptr %fld.load129, i32 0, i32 1
  %cat.seg134 = load ptr, ptr %cat.seg133, align 8
  %cat.lit.data135 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load136 = load ptr, ptr %var.name, align 8
  %cat.seg137 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 0
  %cat.seg138 = load i64, ptr %cat.seg137, align 8
  %cat.seg139 = and i64 %cat.seg138, 281474976710655
  %cat.seg140 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 1
  %cat.seg141 = load ptr, ptr %cat.seg140, align 8
  %cat.sum.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg132, i64 2)
  %sum143 = extractvalue { i64, i1 } %cat.sum.len142, 0
  %ovf144 = extractvalue { i64, i1 } %cat.sum.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %cat.sum.len145

choice.else124:                                   ; preds = %and.190.exit
  br label %choice.exit125

choice.exit125:                                   ; preds = %choice.else124, %choice.exit178
  %choice.res229 = phi ptr [ %choice.res, %choice.exit178 ], [ null, %choice.else124 ]
  br label %choice.exit98

cat.sum.len145:                                   ; preds = %abort.dead147, %choice.then123
  %cat.sum.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum143, i64 %cat.seg139)
  %sum149 = extractvalue { i64, i1 } %cat.sum.len148, 0
  %ovf150 = extractvalue { i64, i1 } %cat.sum.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %cat.sum.len151

str_overflow_abort146:                            ; preds = %choice.then123
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead147:                                    ; No predecessors!
  br label %cat.sum.len145

cat.sum.len151:                                   ; preds = %abort.dead153, %cat.sum.len145
  %concat.tot.len154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum149, i64 1)
  %sum155 = extractvalue { i64, i1 } %concat.tot.len154, 0
  %ovf156 = extractvalue { i64, i1 } %concat.tot.len154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %concat.tot.len157

str_overflow_abort152:                            ; preds = %cat.sum.len145
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead153:                                    ; No predecessors!
  br label %cat.sum.len151

concat.tot.len157:                                ; preds = %abort.dead159, %cat.sum.len151
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 %sum155)
  %cat.dst162 = getelementptr i8, ptr %concat.buf161, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst162, ptr align 1 %cat.seg134, i64 %cat.seg132, i1 false)
  %cat.off163 = add i64 0, %cat.seg132
  %cat.dst164 = getelementptr i8, ptr %concat.buf161, i64 %cat.off163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst164, ptr align 1 %cat.lit.data135, i64 2, i1 false)
  %cat.off165 = add i64 %cat.off163, 2
  %cat.dst166 = getelementptr i8, ptr %concat.buf161, i64 %cat.off165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst166, ptr align 1 %cat.seg141, i64 %cat.seg139, i1 false)
  %concat.nul167 = getelementptr i8, ptr %concat.buf161, i64 %sum149
  store i8 0, ptr %concat.nul167, align 1
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %str.build.len.gep170 = getelementptr inbounds { i64, ptr }, ptr %concat.str169, i32 0, i32 0
  store i64 %sum149, ptr %str.build.len.gep170, align 8
  %str.build.data.gep171 = getelementptr inbounds { i64, ptr }, ptr %concat.str169, i32 0, i32 1
  store ptr %concat.buf161, ptr %str.build.data.gep171, align 8
  %call.res172 = call ptr @"type_env::lookup_local_exact"(ptr %var.load126, ptr %concat.str169)
  store ptr %call.res172, ptr %var.pub173, align 8
  %var.load174 = load ptr, ptr %var.pub173, align 8
  %niche.ne.null175 = icmp ne ptr %var.load174, null
  br i1 %niche.ne.null175, label %choice.then176, label %choice.else177

str_overflow_abort158:                            ; preds = %cat.sum.len151
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %concat.tot.len157

choice.then176:                                   ; preds = %concat.tot.len157
  store ptr %var.load174, ptr %var._179, align 8
  store ptr %var.load174, ptr %var.p180, align 8
  %var.load181 = load ptr, ptr %var.p180, align 8
  br label %choice.exit178

choice.else177:                                   ; preds = %concat.tot.len157
  %var.load182 = load ptr, ptr %var.env, align 8
  %var.load183 = load ptr, ptr %var.env, align 8
  %fld.gep184 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load183, i32 0, i32 8
  %fld.load185 = load ptr, ptr %fld.gep184, align 8
  %cat.seg186 = getelementptr inbounds { i64, ptr }, ptr %fld.load185, i32 0, i32 0
  %cat.seg187 = load i64, ptr %cat.seg186, align 8
  %cat.seg188 = and i64 %cat.seg187, 281474976710655
  %cat.seg189 = getelementptr inbounds { i64, ptr }, ptr %fld.load185, i32 0, i32 1
  %cat.seg190 = load ptr, ptr %cat.seg189, align 8
  %cat.lit.data191 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load192 = load ptr, ptr %var.name, align 8
  %cat.seg193 = getelementptr inbounds { i64, ptr }, ptr %var.load192, i32 0, i32 0
  %cat.seg194 = load i64, ptr %cat.seg193, align 8
  %cat.seg195 = and i64 %cat.seg194, 281474976710655
  %cat.seg196 = getelementptr inbounds { i64, ptr }, ptr %var.load192, i32 0, i32 1
  %cat.seg197 = load ptr, ptr %cat.seg196, align 8
  %cat.sum.len198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg188, i64 3)
  %sum199 = extractvalue { i64, i1 } %cat.sum.len198, 0
  %ovf200 = extractvalue { i64, i1 } %cat.sum.len198, 1
  br i1 %ovf200, label %str_overflow_abort202, label %cat.sum.len201

choice.exit178:                                   ; preds = %concat.tot.len213, %choice.then176
  %choice.res = phi ptr [ %var.load181, %choice.then176 ], [ %call.res228, %concat.tot.len213 ]
  br label %choice.exit125

cat.sum.len201:                                   ; preds = %abort.dead203, %choice.else177
  %cat.sum.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum199, i64 %cat.seg195)
  %sum205 = extractvalue { i64, i1 } %cat.sum.len204, 0
  %ovf206 = extractvalue { i64, i1 } %cat.sum.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %cat.sum.len207

str_overflow_abort202:                            ; preds = %choice.else177
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead203:                                    ; No predecessors!
  br label %cat.sum.len201

cat.sum.len207:                                   ; preds = %abort.dead209, %cat.sum.len201
  %concat.tot.len210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum205, i64 1)
  %sum211 = extractvalue { i64, i1 } %concat.tot.len210, 0
  %ovf212 = extractvalue { i64, i1 } %concat.tot.len210, 1
  br i1 %ovf212, label %str_overflow_abort214, label %concat.tot.len213

str_overflow_abort208:                            ; preds = %cat.sum.len201
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %cat.sum.len207

concat.tot.len213:                                ; preds = %abort.dead215, %cat.sum.len207
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 %sum211)
  %cat.dst218 = getelementptr i8, ptr %concat.buf217, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst218, ptr align 1 %cat.seg190, i64 %cat.seg188, i1 false)
  %cat.off219 = add i64 0, %cat.seg188
  %cat.dst220 = getelementptr i8, ptr %concat.buf217, i64 %cat.off219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst220, ptr align 1 %cat.lit.data191, i64 3, i1 false)
  %cat.off221 = add i64 %cat.off219, 3
  %cat.dst222 = getelementptr i8, ptr %concat.buf217, i64 %cat.off221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst222, ptr align 1 %cat.seg197, i64 %cat.seg195, i1 false)
  %concat.nul223 = getelementptr i8, ptr %concat.buf217, i64 %sum205
  store i8 0, ptr %concat.nul223, align 1
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 16)
  %str.build.len.gep226 = getelementptr inbounds { i64, ptr }, ptr %concat.str225, i32 0, i32 0
  store i64 %sum205, ptr %str.build.len.gep226, align 8
  %str.build.data.gep227 = getelementptr inbounds { i64, ptr }, ptr %concat.str225, i32 0, i32 1
  store ptr %concat.buf217, ptr %str.build.data.gep227, align 8
  %call.res228 = call ptr @"type_env::lookup_local_exact"(ptr %var.load182, ptr %concat.str225)
  br label %choice.exit178

str_overflow_abort214:                            ; preds = %cat.sum.len207
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead215:                                    ; No predecessors!
  br label %concat.tot.len213
}

define ptr @"type_env::lookup_scope_chain"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.binding = alloca ptr, align 8
  %var._53 = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  %var._47 = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.191 = alloca i64, align 8
  %loop.idx.191 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.191, align 8
  br label %loop.header.191

loop.header.191:                                  ; preds = %loop.latch.191, %a.after
  %counter.load = load i64, ptr %loop.idx.191, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.191, label %loop.exit.nat.191

loop.body.191:                                    ; preds = %loop.header.191
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.191, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load9 = load i64, ptr %"var.curr'", align 8
  %var.load10 = load i64, ptr %var.min_scope, align 8
  %cmptmp = icmp slt i64 %var.load9, %var.load10
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.191:                                ; preds = %loop.header.191
  br label %loop.exit.191

loop.latch.191:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.191, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.191, align 8
  br label %loop.header.191

loop.exit.191:                                    ; preds = %choice.then, %loop.exit.nat.191
  %var.load63 = load ptr, ptr %"var.found'", align 8
  ret ptr %var.load63

choice.then:                                      ; preds = %loop.body.191
  br label %loop.exit.191

choice.else:                                      ; preds = %loop.body.191
  %var.load11 = load ptr, ptr %var.scs, align 8
  %a.load12 = load ptr, ptr %var.scs, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

choice.exit:                                      ; preds = %choice.exit59
  br label %loop.latch.191

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

define ptr @"type_env::lookup_nonroot_exact"(ptr %0, ptr %1) #3 {
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

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #3 {
entry:
  %var.b = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var._9 = alloca i64, align 8
  %loop.step.192 = alloca i64, align 8
  %loop.idx.192 = alloca i64, align 8
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

choice.exit:                                      ; preds = %loop.exit.192, %choice.then
  %choice.res = phi ptr [ %var.load3, %choice.then ], [ %var.load79, %loop.exit.192 ]
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
  store i64 0, ptr %loop.idx.192, align 8
  br label %loop.header.192

loop.header.192:                                  ; preds = %loop.latch.192, %a.after
  %counter.load = load i64, ptr %loop.idx.192, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query8
  br i1 %loop.cond, label %loop.body.192, label %loop.exit.nat.192

loop.body.192:                                    ; preds = %loop.header.192
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.192, align 8
  store i64 %counter.load, ptr %var._9, align 8
  store i64 %counter.load, ptr %var.k, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load10 = load ptr, ptr %var.gls, align 8
  %a.load11 = load ptr, ptr %var.gls, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

loop.exit.nat.192:                                ; preds = %loop.header.192
  br label %loop.exit.192

loop.latch.192:                                   ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.192, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.192, align 8
  br label %loop.header.192

loop.exit.192:                                    ; preds = %choice.then76, %loop.exit.nat.192
  %var.load79 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit

a.create13:                                       ; preds = %loop.body.192
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

a.after14:                                        ; preds = %a.create13, %loop.body.192
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
  br i1 %unwrap.is_pos, label %unwrap.pos.193, label %unwrap.abort.193

unwrap.pos.193:                                   ; preds = %a.rd.done
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

unwrap.abort.193:                                 ; preds = %a.rd.done
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

err.thread:                                       ; preds = %unwrap.abort.193
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.193
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data62, i32 %err.file.len32, ptr %err.file.data65, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.193
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %eq.lhs.data74 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %eq.rhs.data75 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data74, ptr %eq.rhs.data75, i64 %eq.lhs.len71)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.193
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %str.eq.merge
  %var.load78 = load ptr, ptr %var.b, align 8
  store ptr %var.load78, ptr %"var.g_found'", align 8
  br label %loop.exit.192

choice.exit77:                                    ; preds = %str.eq.merge
  br label %loop.latch.192
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #3 {
entry:
  %var.p = alloca ptr, align 8
  %var._48 = alloca ptr, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.194.then, label %and.194.else

and.194.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.194.exit

and.194.else:                                     ; preds = %str.eq.merge
  br label %and.194.exit

and.194.exit:                                     ; preds = %and.194.else, %and.194.then
  %and.194.phi = phi i1 [ %nottmp, %and.194.then ], [ %str.neq, %and.194.else ]
  br i1 %and.194.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.194.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %call.res8 = call ptr @"type_env::lookup_nonroot_exact"(ptr %var.load6, ptr %var.load7)
  store ptr %call.res8, ptr %var.local_b, align 8
  %var.load9 = load ptr, ptr %var.local_b, align 8
  %niche.ne.null = icmp ne ptr %var.load9, null
  br i1 %niche.ne.null, label %choice.then10, label %choice.exit11

choice.exit:                                      ; preds = %ret.dead98, %and.194.exit
  %var.load99 = load ptr, ptr %var.env, align 8
  %var.load100 = load ptr, ptr %var.name, align 8
  %call.res101 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load99, ptr %var.load100)
  ret ptr %call.res101

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
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %cat.seg20 = load ptr, ptr %cat.seg19, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load21 = load ptr, ptr %var.name, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %cat.seg25 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %cat.seg26 = load ptr, ptr %cat.seg25, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg18, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len27

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

cat.sum.len27:                                    ; preds = %abort.dead, %choice.exit11
  %cat.sum.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum29 = extractvalue { i64, i1 } %cat.sum.len28, 0
  %ovf30 = extractvalue { i64, i1 } %cat.sum.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %cat.sum.len31

str_overflow_abort:                               ; preds = %choice.exit11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len27

cat.sum.len31:                                    ; preds = %abort.dead33, %cat.sum.len27
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum29, i64 1)
  %sum34 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf35 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf35, label %str_overflow_abort37, label %concat.tot.len36

str_overflow_abort32:                             ; preds = %cat.sum.len27
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %cat.sum.len31

concat.tot.len36:                                 ; preds = %abort.dead38, %cat.sum.len31
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum34)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg20, i64 %cat.seg18, i1 false)
  %cat.off = add i64 0, %cat.seg18
  %cat.dst39 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst39, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off40 = add i64 %cat.off, 2
  %cat.dst41 = getelementptr i8, ptr %concat.buf, i64 %cat.off40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst41, ptr align 1 %cat.seg26, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum29
  store i8 0, ptr %concat.nul, align 1
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum29, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res43 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load13, ptr %concat.str)
  store ptr %call.res43, ptr %var.pub, align 8
  %var.load44 = load ptr, ptr %var.pub, align 8
  %niche.ne.null45 = icmp ne ptr %var.load44, null
  br i1 %niche.ne.null45, label %choice.then46, label %choice.exit47

str_overflow_abort37:                             ; preds = %cat.sum.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %concat.tot.len36

choice.then46:                                    ; preds = %concat.tot.len36
  store ptr %var.load44, ptr %var._48, align 8
  store ptr %var.load44, ptr %var.p, align 8
  %var.load49 = load ptr, ptr %var.p, align 8
  ret ptr %var.load49

choice.exit47:                                    ; preds = %ret.dead50, %concat.tot.len36
  %var.load51 = load ptr, ptr %var.env, align 8
  %var.load52 = load ptr, ptr %var.env, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load52, i32 0, i32 8
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %cat.seg55 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 0
  %cat.seg56 = load i64, ptr %cat.seg55, align 8
  %cat.seg57 = and i64 %cat.seg56, 281474976710655
  %cat.seg58 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %cat.seg59 = load ptr, ptr %cat.seg58, align 8
  %cat.lit.data60 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load61 = load ptr, ptr %var.name, align 8
  %cat.seg62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %cat.seg63 = load i64, ptr %cat.seg62, align 8
  %cat.seg64 = and i64 %cat.seg63, 281474976710655
  %cat.seg65 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %cat.seg66 = load ptr, ptr %cat.seg65, align 8
  %cat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg57, i64 3)
  %sum68 = extractvalue { i64, i1 } %cat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %cat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %cat.sum.len70

ret.dead50:                                       ; No predecessors!
  br label %choice.exit47

cat.sum.len70:                                    ; preds = %abort.dead72, %choice.exit47
  %cat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 %cat.seg64)
  %sum74 = extractvalue { i64, i1 } %cat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %cat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %cat.sum.len76

str_overflow_abort71:                             ; preds = %choice.exit47
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %cat.sum.len70

cat.sum.len76:                                    ; preds = %abort.dead78, %cat.sum.len70
  %concat.tot.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 1)
  %sum80 = extractvalue { i64, i1 } %concat.tot.len79, 0
  %ovf81 = extractvalue { i64, i1 } %concat.tot.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %concat.tot.len82

str_overflow_abort77:                             ; preds = %cat.sum.len70
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %cat.sum.len76

concat.tot.len82:                                 ; preds = %abort.dead84, %cat.sum.len76
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum80)
  %cat.dst87 = getelementptr i8, ptr %concat.buf86, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst87, ptr align 1 %cat.seg59, i64 %cat.seg57, i1 false)
  %cat.off88 = add i64 0, %cat.seg57
  %cat.dst89 = getelementptr i8, ptr %concat.buf86, i64 %cat.off88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst89, ptr align 1 %cat.lit.data60, i64 3, i1 false)
  %cat.off90 = add i64 %cat.off88, 3
  %cat.dst91 = getelementptr i8, ptr %concat.buf86, i64 %cat.off90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst91, ptr align 1 %cat.seg66, i64 %cat.seg64, i1 false)
  %concat.nul92 = getelementptr i8, ptr %concat.buf86, i64 %sum74
  store i8 0, ptr %concat.nul92, align 1
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  %str.build.len.gep95 = getelementptr inbounds { i64, ptr }, ptr %concat.str94, i32 0, i32 0
  store i64 %sum74, ptr %str.build.len.gep95, align 8
  %str.build.data.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str94, i32 0, i32 1
  store ptr %concat.buf86, ptr %str.build.data.gep96, align 8
  %call.res97 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load51, ptr %concat.str94)
  ret ptr %call.res97

str_overflow_abort83:                             ; preds = %cat.sum.len76
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %concat.tot.len82

ret.dead98:                                       ; No predecessors!
  br label %choice.exit
}

define { i1, i64 } @"type_env::find_last_dot"(ptr %0, i64 %1) #3 {
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

define { i64, ptr } @"type_env::drop_last_dot"(ptr %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._12 = alloca i64, align 8
  %loop.step.196 = alloca i64, align 8
  %loop.idx.196 = alloca i64, align 8
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
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
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
  store i64 0, ptr %loop.idx.196, align 8
  br label %loop.header.196

str_overflow_abort:                               ; preds = %choice.exit6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len10

loop.header.196:                                  ; preds = %loop.latch.196, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.196, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load11
  br i1 %loop.cond, label %loop.body.196, label %loop.exit.nat.196

loop.body.196:                                    ; preds = %loop.header.196
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.196, align 8
  store i64 %counter.load, ptr %var._12, align 8
  store i64 %counter.load, ptr %var.i, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.196:                                ; preds = %loop.header.196
  br label %loop.exit.196

loop.latch.196:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.196, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.196, align 8
  br label %loop.header.196

loop.exit.196:                                    ; preds = %loop.exit.nat.196
  %var.load32 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 0
  %b.freeze.len33 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 1
  %b.freeze.data34 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len33, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data34, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack35 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack35

idx_ok:                                           ; preds = %abort.dead18, %loop.body.196
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %loop.body.196
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
  br label %loop.latch.196

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

define i1 @"type_env::init_has_name"(ptr %0, ptr %1) #3 {
entry:
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.197 = alloca i64, align 8
  %loop.idx.197 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.197, align 8
  br label %loop.header.197

loop.header.197:                                  ; preds = %loop.latch.197, %a.after
  %counter.load = load i64, ptr %loop.idx.197, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.197, label %loop.exit.nat.197

loop.body.197:                                    ; preds = %loop.header.197
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.197, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.197:                                ; preds = %loop.header.197
  br label %loop.exit.197

loop.latch.197:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.197, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.197, align 8
  br label %loop.header.197

loop.exit.197:                                    ; preds = %loop.exit.nat.197
  ret i1 false

str.eq.then:                                      ; preds = %loop.body.197
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.197
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.197

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #3 {
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

define i1 @"type_env::init_is_tracked"(ptr %0, ptr %1) #3 {
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

define void @"type_env::init_mark_whole"(ptr %0, ptr %1) #3 {
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

define i1 @"type_env::init_is_whole"(ptr %0, ptr %1) #3 {
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

define void @"type_env::init_mark_written"(ptr %0, ptr %1) #3 {
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

define i1 @"type_env::init_is_ok_walk"(ptr %0, ptr %1) #3 {
entry:
  %var.p = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
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

define i1 @"type_env::init_has_subpath"(ptr %0, ptr %1) #3 {
entry:
  %var._i = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.198 = alloca i64, align 8
  %loop.idx.198 = alloca i64, align 8
  %"var.has'" = alloca i1, align 1
  %var.plen = alloca i64, align 8
  %var.prefix = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var.path = alloca ptr, align 8
  %var.written = alloca ptr, align 8
  store ptr %0, ptr %var.written, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

concat.sum.len7:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %entry
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load13 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %str.len.query14 = load i64, ptr %str.len.query, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  store i64 %str.len.query15, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load16 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_overflow_abort11:                             ; preds = %concat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %concat.tot.len10

a.create:                                         ; preds = %concat.tot.len10
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create18, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %concat.tot.len10
  %a.load2 = load ptr, ptr %var.written, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len20 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data21 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.198, align 8
  br label %loop.header.198

loop.header.198:                                  ; preds = %loop.latch.198, %a.after
  %counter.load = load i64, ptr %loop.idx.198, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len20
  br i1 %loop.cond, label %loop.body.198, label %loop.exit.nat.198

loop.body.198:                                    ; preds = %loop.header.198
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.198, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data21, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.w, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load22 = load ptr, ptr %var.w, align 8
  %str.len.query23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %str.len.query24 = load i64, ptr %str.len.query23, align 8
  %str.len.query25 = and i64 %str.len.query24, 281474976710655
  %var.load26 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query25, %var.load26
  br i1 %cmptmp, label %and.199.then, label %and.199.else

loop.exit.nat.198:                                ; preds = %loop.header.198
  br label %loop.exit.198

loop.latch.198:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.198, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.198, align 8
  br label %loop.header.198

loop.exit.198:                                    ; preds = %choice.then, %loop.exit.nat.198
  %var.load37 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load37

and.199.then:                                     ; preds = %loop.body.198
  %var.load27 = load ptr, ptr %var.w, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len29, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load31, 0
  %rel.end = add i64 %s.read.len29, %var.load31
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load31
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %var.load32 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %cmp.str33 = load i64, ptr %cmp.str, align 8
  %cmp.str34 = and i64 %cmp.str33, 281474976710655
  %cmp.str35 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %cmp.str36 = load ptr, ptr %cmp.str35, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.199.else:                                     ; preds = %loop.body.198
  br label %and.199.exit

and.199.exit:                                     ; preds = %and.199.else, %str.eq.merge
  %and.199.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.199.else ]
  br i1 %and.199.phi, label %choice.then, label %choice.exit

str.eq.then:                                      ; preds = %and.199.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str36, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.199.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.199.exit

choice.then:                                      ; preds = %and.199.exit
  store i1 true, ptr %"var.has'", align 1
  br label %loop.exit.198

choice.exit:                                      ; preds = %and.199.exit
  br label %loop.latch.198
}

define i1 @"type_env::init_is_ok"(ptr %0, ptr %1) #3 {
entry:
  %var.path = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_is_ok_walk"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %or.200.then, label %or.200.else

or.200.then:                                      ; preds = %entry
  br label %or.200.exit

or.200.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.200.exit

or.200.exit:                                      ; preds = %or.200.else, %or.200.then
  %or.200.phi = phi i1 [ %call.res, %or.200.then ], [ %call.res5, %or.200.else ]
  br i1 %or.200.phi, label %or.201.then, label %or.201.else

or.201.then:                                      ; preds = %or.200.exit
  br label %or.201.exit

or.201.else:                                      ; preds = %or.200.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 4
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep7, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %call.res11 = call i1 @"type_env::init_has_subpath"(ptr %fld.load9, ptr %var.load10)
  br label %or.201.exit

or.201.exit:                                      ; preds = %or.201.else, %or.201.then
  %or.201.phi = phi i1 [ %or.200.phi, %or.201.then ], [ %call.res11, %or.201.else ]
  ret i1 %or.201.phi
}

define ptr @"type_env::init_snapshot"(ptr %0) #3 {
entry:
  %var._i93 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %var._92 = alloca ptr, align 8
  %loop.step.204 = alloca i64, align 8
  %loop.idx.204 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._i39 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %var._38 = alloca ptr, align 8
  %loop.step.203 = alloca i64, align 8
  %loop.idx.203 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.202 = alloca i64, align 8
  %loop.idx.202 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.202, align 8
  br label %loop.header.202

loop.header.202:                                  ; preds = %loop.latch.202, %entry
  %counter.load = load i64, ptr %loop.idx.202, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.202, label %loop.exit.nat.202

loop.body.202:                                    ; preds = %loop.header.202
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.202, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load5 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.202:                                ; preds = %loop.header.202
  br label %loop.exit.202

loop.latch.202:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.202, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.202, align 8
  br label %loop.header.202

loop.exit.202:                                    ; preds = %loop.exit.nat.202
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
  store i64 0, ptr %loop.idx.203, align 8
  br label %loop.header.203

a.create:                                         ; preds = %loop.body.202
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

a.after:                                          ; preds = %a.create, %loop.body.202
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
  br label %loop.latch.202

loop.header.203:                                  ; preds = %loop.latch.203, %loop.exit.202
  %counter.load32 = load i64, ptr %loop.idx.203, align 8
  %loop.cond33 = icmp slt i64 %counter.load32, %arr.cycle.len29
  br i1 %loop.cond33, label %loop.body.203, label %loop.exit.nat.203

loop.body.203:                                    ; preds = %loop.header.203
  %loop.rel.i34 = sub i64 %counter.load32, 0
  store i64 1, ptr %loop.step.203, align 8
  %arr.elem.gep35 = getelementptr i64, ptr %arr.cycle.data31, i64 %counter.load32
  %arr.elem.raw36 = load i64, ptr %arr.elem.gep35, align 8
  %slot.i2p37 = inttoptr i64 %arr.elem.raw36 to ptr
  store ptr %slot.i2p37, ptr %var._38, align 8
  store ptr %slot.i2p37, ptr %var.w, align 8
  store i64 %loop.rel.i34, ptr %var._i39, align 8
  %var.load40 = load ptr, ptr %var.w, align 8
  %a.load41 = load ptr, ptr %var.wh, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

loop.exit.nat.203:                                ; preds = %loop.header.203
  br label %loop.exit.203

loop.latch.203:                                   ; preds = %a.store55
  %step.val69 = load i64, ptr %loop.step.203, align 8
  %loop.next70 = add i64 %counter.load32, %step.val69
  store i64 %loop.next70, ptr %loop.idx.203, align 8
  br label %loop.header.203

loop.exit.203:                                    ; preds = %loop.exit.nat.203
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
  store i64 0, ptr %loop.idx.204, align 8
  br label %loop.header.204

a.create43:                                       ; preds = %loop.body.203
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

a.after44:                                        ; preds = %a.create43, %loop.body.203
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
  br label %loop.latch.203

loop.header.204:                                  ; preds = %loop.latch.204, %loop.exit.203
  %counter.load86 = load i64, ptr %loop.idx.204, align 8
  %loop.cond87 = icmp slt i64 %counter.load86, %arr.cycle.len83
  br i1 %loop.cond87, label %loop.body.204, label %loop.exit.nat.204

loop.body.204:                                    ; preds = %loop.header.204
  %loop.rel.i88 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.204, align 8
  %arr.elem.gep89 = getelementptr i64, ptr %arr.cycle.data85, i64 %counter.load86
  %arr.elem.raw90 = load i64, ptr %arr.elem.gep89, align 8
  %slot.i2p91 = inttoptr i64 %arr.elem.raw90 to ptr
  store ptr %slot.i2p91, ptr %var._92, align 8
  store ptr %slot.i2p91, ptr %var.p, align 8
  store i64 %loop.rel.i88, ptr %var._i93, align 8
  %var.load94 = load ptr, ptr %var.p, align 8
  %a.load95 = load ptr, ptr %var.wr, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

loop.exit.nat.204:                                ; preds = %loop.header.204
  br label %loop.exit.204

loop.latch.204:                                   ; preds = %a.store109
  %step.val123 = load i64, ptr %loop.step.204, align 8
  %loop.next124 = add i64 %counter.load86, %step.val123
  store i64 %loop.next124, ptr %loop.idx.204, align 8
  br label %loop.header.204

loop.exit.204:                                    ; preds = %loop.exit.nat.204
  %var.load125 = load ptr, ptr %var.tr, align 8
  %a.load126 = load ptr, ptr %var.tr, align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

a.create97:                                       ; preds = %loop.body.204
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

a.after98:                                        ; preds = %a.create97, %loop.body.204
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
  br label %loop.latch.204

a.create128:                                      ; preds = %loop.exit.204
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

a.after129:                                       ; preds = %a.create128, %loop.exit.204
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

define ptr @"type_env::init_snapshot_of"(ptr %0) #3 {
entry:
  %var._i90 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %var._89 = alloca ptr, align 8
  %loop.step.207 = alloca i64, align 8
  %loop.idx.207 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._i37 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %var._36 = alloca ptr, align 8
  %loop.step.206 = alloca i64, align 8
  %loop.idx.206 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.205 = alloca i64, align 8
  %loop.idx.205 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.205, align 8
  br label %loop.header.205

loop.header.205:                                  ; preds = %loop.latch.205, %entry
  %counter.load = load i64, ptr %loop.idx.205, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.205, label %loop.exit.nat.205

loop.body.205:                                    ; preds = %loop.header.205
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.205, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.205:                                ; preds = %loop.header.205
  br label %loop.exit.205

loop.latch.205:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.205, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.205, align 8
  br label %loop.header.205

loop.exit.205:                                    ; preds = %loop.exit.nat.205
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
  store i64 0, ptr %loop.idx.206, align 8
  br label %loop.header.206

a.create:                                         ; preds = %loop.body.205
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

a.after:                                          ; preds = %a.create, %loop.body.205
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
  br label %loop.latch.205

loop.header.206:                                  ; preds = %loop.latch.206, %loop.exit.205
  %counter.load30 = load i64, ptr %loop.idx.206, align 8
  %loop.cond31 = icmp slt i64 %counter.load30, %arr.cycle.len27
  br i1 %loop.cond31, label %loop.body.206, label %loop.exit.nat.206

loop.body.206:                                    ; preds = %loop.header.206
  %loop.rel.i32 = sub i64 %counter.load30, 0
  store i64 1, ptr %loop.step.206, align 8
  %arr.elem.gep33 = getelementptr i64, ptr %arr.cycle.data29, i64 %counter.load30
  %arr.elem.raw34 = load i64, ptr %arr.elem.gep33, align 8
  %slot.i2p35 = inttoptr i64 %arr.elem.raw34 to ptr
  store ptr %slot.i2p35, ptr %var._36, align 8
  store ptr %slot.i2p35, ptr %var.w, align 8
  store i64 %loop.rel.i32, ptr %var._i37, align 8
  %var.load38 = load ptr, ptr %var.w, align 8
  %a.load39 = load ptr, ptr %var.wh, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

loop.exit.nat.206:                                ; preds = %loop.header.206
  br label %loop.exit.206

loop.latch.206:                                   ; preds = %a.store53
  %step.val67 = load i64, ptr %loop.step.206, align 8
  %loop.next68 = add i64 %counter.load30, %step.val67
  store i64 %loop.next68, ptr %loop.idx.206, align 8
  br label %loop.header.206

loop.exit.206:                                    ; preds = %loop.exit.nat.206
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
  store i64 0, ptr %loop.idx.207, align 8
  br label %loop.header.207

a.create41:                                       ; preds = %loop.body.206
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

a.after42:                                        ; preds = %a.create41, %loop.body.206
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
  br label %loop.latch.206

loop.header.207:                                  ; preds = %loop.latch.207, %loop.exit.206
  %counter.load83 = load i64, ptr %loop.idx.207, align 8
  %loop.cond84 = icmp slt i64 %counter.load83, %arr.cycle.len80
  br i1 %loop.cond84, label %loop.body.207, label %loop.exit.nat.207

loop.body.207:                                    ; preds = %loop.header.207
  %loop.rel.i85 = sub i64 %counter.load83, 0
  store i64 1, ptr %loop.step.207, align 8
  %arr.elem.gep86 = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load83
  %arr.elem.raw87 = load i64, ptr %arr.elem.gep86, align 8
  %slot.i2p88 = inttoptr i64 %arr.elem.raw87 to ptr
  store ptr %slot.i2p88, ptr %var._89, align 8
  store ptr %slot.i2p88, ptr %var.p, align 8
  store i64 %loop.rel.i85, ptr %var._i90, align 8
  %var.load91 = load ptr, ptr %var.p, align 8
  %a.load92 = load ptr, ptr %var.wr, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

loop.exit.nat.207:                                ; preds = %loop.header.207
  br label %loop.exit.207

loop.latch.207:                                   ; preds = %a.store106
  %step.val120 = load i64, ptr %loop.step.207, align 8
  %loop.next121 = add i64 %counter.load83, %step.val120
  store i64 %loop.next121, ptr %loop.idx.207, align 8
  br label %loop.header.207

loop.exit.207:                                    ; preds = %loop.exit.nat.207
  %var.load122 = load ptr, ptr %var.tr, align 8
  %a.load123 = load ptr, ptr %var.tr, align 8
  %a.null124 = icmp eq ptr %a.load123, null
  br i1 %a.null124, label %a.create125, label %a.after126

a.create94:                                       ; preds = %loop.body.207
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

a.after95:                                        ; preds = %a.create94, %loop.body.207
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
  br label %loop.latch.207

a.create125:                                      ; preds = %loop.exit.207
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

a.after126:                                       ; preds = %a.create125, %loop.exit.207
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

define void @"type_env::init_restore"(ptr %0, ptr %1) #3 {
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

define ptr @"type_env::init_merge_two"(ptr %0, ptr %1) #3 {
entry:
  %var._i157 = alloca i64, align 8
  %var.path = alloca ptr, align 8
  %var._156 = alloca ptr, align 8
  %loop.step.211 = alloca i64, align 8
  %loop.idx.211 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._i97 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var._96 = alloca ptr, align 8
  %loop.step.210 = alloca i64, align 8
  %loop.idx.210 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._i30 = alloca i64, align 8
  %var.t2 = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %loop.step.209 = alloca i64, align 8
  %loop.idx.209 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.208 = alloca i64, align 8
  %loop.idx.208 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.208, align 8
  br label %loop.header.208

loop.header.208:                                  ; preds = %loop.latch.208, %entry
  %counter.load = load i64, ptr %loop.idx.208, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.208, label %loop.exit.nat.208

loop.body.208:                                    ; preds = %loop.header.208
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.208, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.208:                                ; preds = %loop.header.208
  br label %loop.exit.208

loop.latch.208:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.208, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.208, align 8
  br label %loop.header.208

loop.exit.208:                                    ; preds = %loop.exit.nat.208
  %var.load16 = load ptr, ptr %var.b, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %arr.cycle.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 0
  %arr.cycle.len20 = load i64, ptr %arr.cycle.len19, align 8
  %arr.cycle.data21 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data21, align 8
  store i64 0, ptr %loop.idx.209, align 8
  br label %loop.header.209

a.create:                                         ; preds = %loop.body.208
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

a.after:                                          ; preds = %a.create, %loop.body.208
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
  br label %loop.latch.208

loop.header.209:                                  ; preds = %loop.latch.209, %loop.exit.208
  %counter.load23 = load i64, ptr %loop.idx.209, align 8
  %loop.cond24 = icmp slt i64 %counter.load23, %arr.cycle.len20
  br i1 %loop.cond24, label %loop.body.209, label %loop.exit.nat.209

loop.body.209:                                    ; preds = %loop.header.209
  %loop.rel.i25 = sub i64 %counter.load23, 0
  store i64 1, ptr %loop.step.209, align 8
  %arr.elem.gep26 = getelementptr i64, ptr %arr.cycle.data22, i64 %counter.load23
  %arr.elem.raw27 = load i64, ptr %arr.elem.gep26, align 8
  %slot.i2p28 = inttoptr i64 %arr.elem.raw27 to ptr
  store ptr %slot.i2p28, ptr %var._29, align 8
  store ptr %slot.i2p28, ptr %var.t2, align 8
  store i64 %loop.rel.i25, ptr %var._i30, align 8
  %var.load31 = load ptr, ptr %var.tr, align 8
  %a.load32 = load ptr, ptr %var.tr, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

loop.exit.nat.209:                                ; preds = %loop.header.209
  br label %loop.exit.209

loop.latch.209:                                   ; preds = %choice.exit
  %step.val74 = load i64, ptr %loop.step.209, align 8
  %loop.next75 = add i64 %counter.load23, %step.val74
  store i64 %loop.next75, ptr %loop.idx.209, align 8
  br label %loop.header.209

loop.exit.209:                                    ; preds = %loop.exit.nat.209
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
  store i64 0, ptr %loop.idx.210, align 8
  br label %loop.header.210

a.create34:                                       ; preds = %loop.body.209
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

a.after35:                                        ; preds = %a.create34, %loop.body.209
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
  br label %loop.latch.209

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

loop.header.210:                                  ; preds = %loop.latch.210, %loop.exit.209
  %counter.load90 = load i64, ptr %loop.idx.210, align 8
  %loop.cond91 = icmp slt i64 %counter.load90, %arr.cycle.len87
  br i1 %loop.cond91, label %loop.body.210, label %loop.exit.nat.210

loop.body.210:                                    ; preds = %loop.header.210
  %loop.rel.i92 = sub i64 %counter.load90, 0
  store i64 1, ptr %loop.step.210, align 8
  %arr.elem.gep93 = getelementptr i64, ptr %arr.cycle.data89, i64 %counter.load90
  %arr.elem.raw94 = load i64, ptr %arr.elem.gep93, align 8
  %slot.i2p95 = inttoptr i64 %arr.elem.raw94 to ptr
  store ptr %slot.i2p95, ptr %var._96, align 8
  store ptr %slot.i2p95, ptr %var.name, align 8
  store i64 %loop.rel.i92, ptr %var._i97, align 8
  %var.load98 = load ptr, ptr %var.b, align 8
  %fld.gep99 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load98, i32 0, i32 1
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %var.load101 = load ptr, ptr %var.name, align 8
  %call.res102 = call i1 @"type_env::init_has_name"(ptr %fld.load100, ptr %var.load101)
  br i1 %call.res102, label %choice.then103, label %choice.exit104

loop.exit.nat.210:                                ; preds = %loop.header.210
  br label %loop.exit.210

loop.latch.210:                                   ; preds = %choice.exit104
  %step.val134 = load i64, ptr %loop.step.210, align 8
  %loop.next135 = add i64 %counter.load90, %step.val134
  store i64 %loop.next135, ptr %loop.idx.210, align 8
  br label %loop.header.210

loop.exit.210:                                    ; preds = %loop.exit.nat.210
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
  store i64 0, ptr %loop.idx.211, align 8
  br label %loop.header.211

choice.then103:                                   ; preds = %loop.body.210
  %var.load105 = load ptr, ptr %var.name, align 8
  %a.load106 = load ptr, ptr %var.wh, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

choice.exit104:                                   ; preds = %a.store120, %loop.body.210
  br label %loop.latch.210

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

loop.header.211:                                  ; preds = %loop.latch.211, %loop.exit.210
  %counter.load150 = load i64, ptr %loop.idx.211, align 8
  %loop.cond151 = icmp slt i64 %counter.load150, %arr.cycle.len147
  br i1 %loop.cond151, label %loop.body.211, label %loop.exit.nat.211

loop.body.211:                                    ; preds = %loop.header.211
  %loop.rel.i152 = sub i64 %counter.load150, 0
  store i64 1, ptr %loop.step.211, align 8
  %arr.elem.gep153 = getelementptr i64, ptr %arr.cycle.data149, i64 %counter.load150
  %arr.elem.raw154 = load i64, ptr %arr.elem.gep153, align 8
  %slot.i2p155 = inttoptr i64 %arr.elem.raw154 to ptr
  store ptr %slot.i2p155, ptr %var._156, align 8
  store ptr %slot.i2p155, ptr %var.path, align 8
  store i64 %loop.rel.i152, ptr %var._i157, align 8
  %var.load158 = load ptr, ptr %var.b, align 8
  %fld.gep159 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load158, i32 0, i32 2
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.path, align 8
  %call.res162 = call i1 @"type_env::init_has_name"(ptr %fld.load160, ptr %var.load161)
  br i1 %call.res162, label %choice.then163, label %choice.exit164

loop.exit.nat.211:                                ; preds = %loop.header.211
  br label %loop.exit.211

loop.latch.211:                                   ; preds = %choice.exit164
  %step.val194 = load i64, ptr %loop.step.211, align 8
  %loop.next195 = add i64 %counter.load150, %step.val194
  store i64 %loop.next195, ptr %loop.idx.211, align 8
  br label %loop.header.211

loop.exit.211:                                    ; preds = %loop.exit.nat.211
  %var.load196 = load ptr, ptr %var.tr, align 8
  %a.load197 = load ptr, ptr %var.tr, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

choice.then163:                                   ; preds = %loop.body.211
  %var.load165 = load ptr, ptr %var.path, align 8
  %a.load166 = load ptr, ptr %var.wr, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

choice.exit164:                                   ; preds = %a.store180, %loop.body.211
  br label %loop.latch.211

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

a.create199:                                      ; preds = %loop.exit.211
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

a.after200:                                       ; preds = %a.create199, %loop.exit.211
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

define i1 @"type_env::init_is_fully_init"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %var.path = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var._13 = alloca ptr, align 8
  %loop.step.213 = alloca i64, align 8
  %loop.idx.213 = alloca i64, align 8
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
  br i1 %nottmp, label %or.212.then, label %or.212.else

or.212.then:                                      ; preds = %entry
  br label %or.212.exit

or.212.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.name, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.212.exit

or.212.exit:                                      ; preds = %or.212.else, %or.212.then
  %or.212.phi = phi i1 [ %nottmp, %or.212.then ], [ %call.res5, %or.212.else ]
  br i1 %or.212.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.212.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.212.exit
  %var.load6 = load ptr, ptr %var.ut, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit7, %choice.then
  %choice.res71 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit7 ]
  ret i1 %choice.res71

choice.exit7:                                     ; preds = %or.214.exit, %loop.exit.213
  %choice.res = phi i1 [ %var.load61, %loop.exit.213 ], [ %or.214.phi, %or.214.exit ]
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
  %var.load62 = load ptr, ptr %var.env, align 8
  %var.load63 = load ptr, ptr %var.name, align 8
  %call.res64 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load62, ptr %var.load63)
  br i1 %call.res64, label %or.214.then, label %or.214.else

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
  store i64 0, ptr %loop.idx.213, align 8
  br label %loop.header.213

loop.header.213:                                  ; preds = %loop.latch.213, %a.after
  %counter.load = load i64, ptr %loop.idx.213, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len11
  br i1 %loop.cond, label %loop.body.213, label %loop.exit.nat.213

loop.body.213:                                    ; preds = %loop.header.213
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.213, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data12, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._13, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.213:                                ; preds = %loop.header.213
  br label %loop.exit.213

loop.latch.213:                                   ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.213, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.213, align 8
  br label %loop.header.213

loop.exit.213:                                    ; preds = %choice.then59, %loop.exit.nat.213
  %var.load61 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

str.eq.then:                                      ; preds = %loop.body.213
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %eq.lhs.data20 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data20, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.213
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

choice.exit22:                                    ; preds = %choice.exit60, %str.eq.merge
  br label %loop.latch.213

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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum38, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.path, align 8
  %var.load52 = load ptr, ptr %var.env, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load52, i32 0, i32 4
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep53, i32 0, i32 2
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %var.load56 = load ptr, ptr %var.path, align 8
  %call.res57 = call i1 @"type_env::init_has_name"(ptr %fld.load55, ptr %var.load56)
  %nottmp58 = xor i1 %call.res57, true
  br i1 %nottmp58, label %choice.then59, label %choice.exit60

str_overflow_abort46:                             ; preds = %cat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %concat.tot.len45

choice.then59:                                    ; preds = %concat.tot.len45
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.213

choice.exit60:                                    ; preds = %concat.tot.len45
  br label %choice.exit22

or.214.then:                                      ; preds = %choice.next
  br label %or.214.exit

or.214.else:                                      ; preds = %choice.next
  %var.load65 = load ptr, ptr %var.env, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load65, i32 0, i32 4
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep66, i32 0, i32 2
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %var.load69 = load ptr, ptr %var.name, align 8
  %call.res70 = call i1 @"type_env::init_has_name"(ptr %fld.load68, ptr %var.load69)
  br label %or.214.exit

or.214.exit:                                      ; preds = %or.214.else, %or.214.then
  %or.214.phi = phi i1 [ %call.res64, %or.214.then ], [ %call.res70, %or.214.else ]
  br label %choice.exit7
}

define void @"type_env::bind_generic"(ptr %0, ptr %1, ptr %2) #3 {
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

define { i1, i64 } @"type_env::lookup_generic_exact"(ptr %0, ptr %1) #3 {
entry:
  %var.g = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.216 = alloca i64, align 8
  %loop.idx.216 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.216, align 8
  br label %loop.header.216

loop.header.216:                                  ; preds = %loop.latch.216, %entry
  %counter.load = load i64, ptr %loop.idx.216, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.216, label %loop.exit.nat.216

loop.body.216:                                    ; preds = %loop.header.216
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.216, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.216:                                ; preds = %loop.header.216
  br label %loop.exit.216

loop.latch.216:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.216, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.216, align 8
  br label %loop.header.216

loop.exit.216:                                    ; preds = %choice.then, %loop.exit.nat.216
  %var.load52 = load { i1, i64 }, ptr %"var.res'", align 8
  ret { i1, i64 } %var.load52

a.rd.check:                                       ; preds = %loop.body.216
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

a.rd.err.null:                                    ; preds = %loop.body.216
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
  br i1 %unwrap.is_pos, label %unwrap.pos.217, label %unwrap.abort.217

unwrap.pos.217:                                   ; preds = %a.rd.done
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

unwrap.abort.217:                                 ; preds = %a.rd.done
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

err.thread:                                       ; preds = %unwrap.abort.217
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.217
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3233, ptr %err.msg.data34, i32 %err.file.len32, ptr %err.file.data37, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.217
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len43)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.217
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load48 = load ptr, ptr %var.g, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr }, ptr %var.load48, i32 0, i32 1
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %ptr.to.i64 = ptrtoint ptr %fld.load50 to i64
  %ram.pay51 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  store { i1, i64 } %ram.pay51, ptr %"var.res'", align 8
  br label %loop.exit.216

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.216
}

define { i1, i64 } @"type_env::lookup_generic"(ptr %0, ptr %1) #3 {
entry:
  %concat.str83 = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pub = alloca { i1, i64 }, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.218.then, label %and.218.else

and.218.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.218.exit

and.218.else:                                     ; preds = %str.eq.merge
  br label %and.218.exit

and.218.exit:                                     ; preds = %and.218.else, %and.218.then
  %and.218.phi = phi i1 [ %nottmp, %and.218.then ], [ %str.neq, %and.218.else ]
  br i1 %and.218.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.218.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %cat.seg12 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg13 = load ptr, ptr %cat.seg12, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load14 = load ptr, ptr %var.name, align 8
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %cat.seg16 = load i64, ptr %cat.seg15, align 8
  %cat.seg17 = and i64 %cat.seg16, 281474976710655
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %cat.seg19 = load ptr, ptr %cat.seg18, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

choice.exit:                                      ; preds = %ret.dead87, %and.218.exit
  %var.load88 = load ptr, ptr %var.env, align 8
  %var.load89 = load ptr, ptr %var.name, align 8
  %call.res90 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load88, ptr %var.load89)
  ret { i1, i64 } %call.res90

cat.sum.len20:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg17)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 1)
  %sum27 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf28 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %concat.tot.len29

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

concat.tot.len29:                                 ; preds = %abort.dead31, %cat.sum.len24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum27)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg13, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst32 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off33 = add i64 %cat.off, 2
  %cat.dst34 = getelementptr i8, ptr %concat.buf, i64 %cat.off33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst34, ptr align 1 %cat.seg19, i64 %cat.seg17, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum22
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res35 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load6, ptr %concat.str)
  store { i1, i64 } %call.res35, ptr %var.pub, align 8
  %var.load36 = load { i1, i64 }, ptr %var.pub, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load36, 0
  br i1 %ram.tag, label %choice.then37, label %choice.exit38

str_overflow_abort30:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %concat.tot.len29

choice.then37:                                    ; preds = %concat.tot.len29
  %ram.pay = extractvalue { i1, i64 } %var.load36, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.p, align 8
  %var.load39 = load ptr, ptr %var.p, align 8
  %ptr.to.i64 = ptrtoint ptr %var.load39 to i64
  %ram.pay40 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  ret { i1, i64 } %ram.pay40

choice.exit38:                                    ; preds = %ret.dead, %concat.tot.len29
  %var.load41 = load ptr, ptr %var.env, align 8
  %var.load42 = load ptr, ptr %var.env, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load42, i32 0, i32 8
  %fld.load44 = load ptr, ptr %fld.gep43, align 8
  %cat.seg45 = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 0
  %cat.seg46 = load i64, ptr %cat.seg45, align 8
  %cat.seg47 = and i64 %cat.seg46, 281474976710655
  %cat.seg48 = getelementptr inbounds { i64, ptr }, ptr %fld.load44, i32 0, i32 1
  %cat.seg49 = load ptr, ptr %cat.seg48, align 8
  %cat.lit.data50 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load51 = load ptr, ptr %var.name, align 8
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %cat.seg53 = load i64, ptr %cat.seg52, align 8
  %cat.seg54 = and i64 %cat.seg53, 281474976710655
  %cat.seg55 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %cat.seg56 = load ptr, ptr %cat.seg55, align 8
  %cat.sum.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg47, i64 3)
  %sum58 = extractvalue { i64, i1 } %cat.sum.len57, 0
  %ovf59 = extractvalue { i64, i1 } %cat.sum.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %cat.sum.len60

ret.dead:                                         ; No predecessors!
  br label %choice.exit38

cat.sum.len60:                                    ; preds = %abort.dead62, %choice.exit38
  %cat.sum.len63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum58, i64 %cat.seg54)
  %sum64 = extractvalue { i64, i1 } %cat.sum.len63, 0
  %ovf65 = extractvalue { i64, i1 } %cat.sum.len63, 1
  br i1 %ovf65, label %str_overflow_abort67, label %cat.sum.len66

str_overflow_abort61:                             ; preds = %choice.exit38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %cat.sum.len60

cat.sum.len66:                                    ; preds = %abort.dead68, %cat.sum.len60
  %concat.tot.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum64, i64 1)
  %sum70 = extractvalue { i64, i1 } %concat.tot.len69, 0
  %ovf71 = extractvalue { i64, i1 } %concat.tot.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %concat.tot.len72

str_overflow_abort67:                             ; preds = %cat.sum.len60
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %cat.sum.len66

concat.tot.len72:                                 ; preds = %abort.dead74, %cat.sum.len66
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  %cat.dst77 = getelementptr i8, ptr %concat.buf76, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst77, ptr align 1 %cat.seg49, i64 %cat.seg47, i1 false)
  %cat.off78 = add i64 0, %cat.seg47
  %cat.dst79 = getelementptr i8, ptr %concat.buf76, i64 %cat.off78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 %cat.lit.data50, i64 3, i1 false)
  %cat.off80 = add i64 %cat.off78, 3
  %cat.dst81 = getelementptr i8, ptr %concat.buf76, i64 %cat.off80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst81, ptr align 1 %cat.seg56, i64 %cat.seg54, i1 false)
  %concat.nul82 = getelementptr i8, ptr %concat.buf76, i64 %sum64
  store i8 0, ptr %concat.nul82, align 1
  %str.build.len.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str83, i32 0, i32 0
  store i64 %sum64, ptr %str.build.len.gep84, align 8
  %str.build.data.gep85 = getelementptr inbounds { i64, ptr }, ptr %concat.str83, i32 0, i32 1
  store ptr %concat.buf76, ptr %str.build.data.gep85, align 8
  %call.res86 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load41, ptr %concat.str83)
  ret { i1, i64 } %call.res86

str_overflow_abort73:                             ; preds = %cat.sum.len66
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %concat.tot.len72

ret.dead87:                                       ; No predecessors!
  br label %choice.exit
}

define { i64, ptr } @"type_env::resolve_generic_name"(ptr %0, ptr %1) #3 {
entry:
  %var.priv_name = alloca ptr, align 8
  %concat.str81 = alloca { i64, ptr }, align 8
  %var.pub_name = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.219.then, label %and.219.else

and.219.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.219.exit

and.219.else:                                     ; preds = %str.eq.merge
  br label %and.219.exit

and.219.exit:                                     ; preds = %and.219.else, %and.219.then
  %and.219.phi = phi i1 [ %nottmp, %and.219.then ], [ %str.neq, %and.219.else ]
  br i1 %and.219.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.219.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 8
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %cat.seg9 = load i64, ptr %cat.seg, align 8
  %cat.seg10 = and i64 %cat.seg9, 281474976710655
  %cat.seg11 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %cat.seg12 = load ptr, ptr %cat.seg11, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load13 = load ptr, ptr %var.name, align 8
  %cat.seg14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %cat.seg15 = load i64, ptr %cat.seg14, align 8
  %cat.seg16 = and i64 %cat.seg15, 281474976710655
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg10, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len19

choice.else:                                      ; preds = %and.219.exit
  %var.load94 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit89
  %choice.res = phi ptr [ %var.load93, %choice.exit89 ], [ %var.load94, %choice.else ]
  %ret.pack95 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack95

cat.sum.len19:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg16)
  %sum21 = extractvalue { i64, i1 } %cat.sum.len20, 0
  %ovf22 = extractvalue { i64, i1 } %cat.sum.len20, 1
  br i1 %ovf22, label %str_overflow_abort24, label %cat.sum.len23

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len19

cat.sum.len23:                                    ; preds = %abort.dead25, %cat.sum.len19
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum21, i64 1)
  %sum26 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf27 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf27, label %str_overflow_abort29, label %concat.tot.len28

str_overflow_abort24:                             ; preds = %cat.sum.len19
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %cat.sum.len23

concat.tot.len28:                                 ; preds = %abort.dead30, %cat.sum.len23
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum26)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg12, i64 %cat.seg10, i1 false)
  %cat.off = add i64 0, %cat.seg10
  %cat.dst31 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst31, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off32 = add i64 %cat.off, 2
  %cat.dst33 = getelementptr i8, ptr %concat.buf, i64 %cat.off32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst33, ptr align 1 %cat.seg18, i64 %cat.seg16, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum21
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum21, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub_name, align 8
  %var.load34 = load ptr, ptr %var.env, align 8
  %var.load35 = load ptr, ptr %var.pub_name, align 8
  %call.res36 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load34, ptr %var.load35)
  %ram.tag = extractvalue { i1, i64 } %call.res36, 0
  br i1 %ram.tag, label %choice.then37, label %choice.exit38

str_overflow_abort29:                             ; preds = %cat.sum.len23
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %concat.tot.len28

choice.then37:                                    ; preds = %concat.tot.len28
  %var.load39 = load ptr, ptr %var.pub_name, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load39, align 8
  ret { i64, ptr } %ret.pack

choice.exit38:                                    ; preds = %ret.dead, %concat.tot.len28
  %var.load40 = load ptr, ptr %var.env, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load40, i32 0, i32 8
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %cat.seg43 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %cat.seg44 = load i64, ptr %cat.seg43, align 8
  %cat.seg45 = and i64 %cat.seg44, 281474976710655
  %cat.seg46 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 1
  %cat.seg47 = load ptr, ptr %cat.seg46, align 8
  %cat.lit.data48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %cat.seg50 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %cat.seg51 = load i64, ptr %cat.seg50, align 8
  %cat.seg52 = and i64 %cat.seg51, 281474976710655
  %cat.seg53 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %cat.seg54 = load ptr, ptr %cat.seg53, align 8
  %cat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg45, i64 3)
  %sum56 = extractvalue { i64, i1 } %cat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %cat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %cat.sum.len58

ret.dead:                                         ; No predecessors!
  br label %choice.exit38

cat.sum.len58:                                    ; preds = %abort.dead60, %choice.exit38
  %cat.sum.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 %cat.seg52)
  %sum62 = extractvalue { i64, i1 } %cat.sum.len61, 0
  %ovf63 = extractvalue { i64, i1 } %cat.sum.len61, 1
  br i1 %ovf63, label %str_overflow_abort65, label %cat.sum.len64

str_overflow_abort59:                             ; preds = %choice.exit38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %cat.sum.len58

cat.sum.len64:                                    ; preds = %abort.dead66, %cat.sum.len58
  %concat.tot.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum62, i64 1)
  %sum68 = extractvalue { i64, i1 } %concat.tot.len67, 0
  %ovf69 = extractvalue { i64, i1 } %concat.tot.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %concat.tot.len70

str_overflow_abort65:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %cat.sum.len64

concat.tot.len70:                                 ; preds = %abort.dead72, %cat.sum.len64
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %sum68)
  %cat.dst75 = getelementptr i8, ptr %concat.buf74, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst75, ptr align 1 %cat.seg47, i64 %cat.seg45, i1 false)
  %cat.off76 = add i64 0, %cat.seg45
  %cat.dst77 = getelementptr i8, ptr %concat.buf74, i64 %cat.off76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst77, ptr align 1 %cat.lit.data48, i64 3, i1 false)
  %cat.off78 = add i64 %cat.off76, 3
  %cat.dst79 = getelementptr i8, ptr %concat.buf74, i64 %cat.off78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 %cat.seg54, i64 %cat.seg52, i1 false)
  %concat.nul80 = getelementptr i8, ptr %concat.buf74, i64 %sum62
  store i8 0, ptr %concat.nul80, align 1
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 0
  store i64 %sum62, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str81, i32 0, i32 1
  store ptr %concat.buf74, ptr %str.build.data.gep83, align 8
  store ptr %concat.str81, ptr %var.priv_name, align 8
  %var.load84 = load ptr, ptr %var.env, align 8
  %var.load85 = load ptr, ptr %var.priv_name, align 8
  %call.res86 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load84, ptr %var.load85)
  %ram.tag87 = extractvalue { i1, i64 } %call.res86, 0
  br i1 %ram.tag87, label %choice.then88, label %choice.exit89

str_overflow_abort71:                             ; preds = %cat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %concat.tot.len70

choice.then88:                                    ; preds = %concat.tot.len70
  %var.load90 = load ptr, ptr %var.priv_name, align 8
  %ret.pack91 = load { i64, ptr }, ptr %var.load90, align 8
  ret { i64, ptr } %ret.pack91

choice.exit89:                                    ; preds = %ret.dead92, %concat.tot.len70
  %var.load93 = load ptr, ptr %var.name, align 8
  br label %choice.exit

ret.dead92:                                       ; No predecessors!
  br label %choice.exit89
}

define void @"type_env::bind_user_type"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
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

define ptr @"type_env::lookup_user_type_exact"(ptr %0, ptr %1) #3 {
entry:
  %var.u = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.221 = alloca i64, align 8
  %loop.idx.221 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.221, align 8
  br label %loop.header.221

loop.header.221:                                  ; preds = %loop.latch.221, %entry
  %counter.load = load i64, ptr %loop.idx.221, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.221, label %loop.exit.nat.221

loop.body.221:                                    ; preds = %loop.header.221
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.221, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.221:                                ; preds = %loop.header.221
  br label %loop.exit.221

loop.latch.221:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.221, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.221, align 8
  br label %loop.header.221

loop.exit.221:                                    ; preds = %choice.then, %loop.exit.nat.221
  %var.load49 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load49

a.rd.check:                                       ; preds = %loop.body.221
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

a.rd.err.null:                                    ; preds = %loop.body.221
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
  br i1 %unwrap.is_pos, label %unwrap.pos.222, label %unwrap.abort.222

unwrap.pos.222:                                   ; preds = %a.rd.done
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

unwrap.abort.222:                                 ; preds = %a.rd.done
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

err.thread:                                       ; preds = %unwrap.abort.222
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.222
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3233, ptr %err.msg.data34, i32 %err.file.len32, ptr %err.file.data37, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str.eq.then:                                      ; preds = %unwrap.pos.222
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len43)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %unwrap.pos.222
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load48 = load ptr, ptr %var.u, align 8
  store ptr %var.load48, ptr %"var.res'", align 8
  br label %loop.exit.221

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.221
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #3 {
entry:
  %var.pr = alloca ptr, align 8
  %var._90 = alloca ptr, align 8
  %var.priv = alloca ptr, align 8
  %concat.str82 = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.223.then, label %and.223.else

and.223.then:                                     ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.223.exit

and.223.else:                                     ; preds = %str.eq.merge
  br label %and.223.exit

and.223.exit:                                     ; preds = %and.223.else, %and.223.then
  %and.223.phi = phi i1 [ %nottmp, %and.223.then ], [ %str.neq, %and.223.else ]
  br i1 %and.223.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.223.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %var.load7 = load ptr, ptr %var.env, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %cat.seg10 = load i64, ptr %cat.seg, align 8
  %cat.seg11 = and i64 %cat.seg10, 281474976710655
  %cat.seg12 = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %cat.seg13 = load ptr, ptr %cat.seg12, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load14 = load ptr, ptr %var.name, align 8
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %cat.seg16 = load i64, ptr %cat.seg15, align 8
  %cat.seg17 = and i64 %cat.seg16, 281474976710655
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %cat.seg19 = load ptr, ptr %cat.seg18, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg11, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

choice.exit:                                      ; preds = %choice.exit89, %and.223.exit
  %var.load93 = load ptr, ptr %var.env, align 8
  %var.load94 = load ptr, ptr %var.name, align 8
  %call.res95 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load93, ptr %var.load94)
  ret ptr %call.res95

cat.sum.len20:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg17)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 1)
  %sum27 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf28 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %concat.tot.len29

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

concat.tot.len29:                                 ; preds = %abort.dead31, %cat.sum.len24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum27)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg13, i64 %cat.seg11, i1 false)
  %cat.off = add i64 0, %cat.seg11
  %cat.dst32 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off33 = add i64 %cat.off, 2
  %cat.dst34 = getelementptr i8, ptr %concat.buf, i64 %cat.off33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst34, ptr align 1 %cat.seg19, i64 %cat.seg17, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum22
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res35 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load6, ptr %concat.str)
  store ptr %call.res35, ptr %var.pub, align 8
  %var.load36 = load ptr, ptr %var.pub, align 8
  %niche.ne.null = icmp ne ptr %var.load36, null
  br i1 %niche.ne.null, label %choice.then37, label %choice.exit38

str_overflow_abort30:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %concat.tot.len29

choice.then37:                                    ; preds = %concat.tot.len29
  store ptr %var.load36, ptr %var._, align 8
  store ptr %var.load36, ptr %var.p, align 8
  %var.load39 = load ptr, ptr %var.p, align 8
  ret ptr %var.load39

choice.exit38:                                    ; preds = %ret.dead, %concat.tot.len29
  %var.load40 = load ptr, ptr %var.env, align 8
  %var.load41 = load ptr, ptr %var.env, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load41, i32 0, i32 8
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  %cat.seg44 = getelementptr inbounds { i64, ptr }, ptr %fld.load43, i32 0, i32 0
  %cat.seg45 = load i64, ptr %cat.seg44, align 8
  %cat.seg46 = and i64 %cat.seg45, 281474976710655
  %cat.seg47 = getelementptr inbounds { i64, ptr }, ptr %fld.load43, i32 0, i32 1
  %cat.seg48 = load ptr, ptr %cat.seg47, align 8
  %cat.lit.data49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load50 = load ptr, ptr %var.name, align 8
  %cat.seg51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %cat.seg52 = load i64, ptr %cat.seg51, align 8
  %cat.seg53 = and i64 %cat.seg52, 281474976710655
  %cat.seg54 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %cat.seg55 = load ptr, ptr %cat.seg54, align 8
  %cat.sum.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg46, i64 3)
  %sum57 = extractvalue { i64, i1 } %cat.sum.len56, 0
  %ovf58 = extractvalue { i64, i1 } %cat.sum.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %cat.sum.len59

ret.dead:                                         ; No predecessors!
  br label %choice.exit38

cat.sum.len59:                                    ; preds = %abort.dead61, %choice.exit38
  %cat.sum.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum57, i64 %cat.seg53)
  %sum63 = extractvalue { i64, i1 } %cat.sum.len62, 0
  %ovf64 = extractvalue { i64, i1 } %cat.sum.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %cat.sum.len65

str_overflow_abort60:                             ; preds = %choice.exit38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %cat.sum.len59

cat.sum.len65:                                    ; preds = %abort.dead67, %cat.sum.len59
  %concat.tot.len68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum63, i64 1)
  %sum69 = extractvalue { i64, i1 } %concat.tot.len68, 0
  %ovf70 = extractvalue { i64, i1 } %concat.tot.len68, 1
  br i1 %ovf70, label %str_overflow_abort72, label %concat.tot.len71

str_overflow_abort66:                             ; preds = %cat.sum.len59
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %cat.sum.len65

concat.tot.len71:                                 ; preds = %abort.dead73, %cat.sum.len65
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum69)
  %cat.dst76 = getelementptr i8, ptr %concat.buf75, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst76, ptr align 1 %cat.seg48, i64 %cat.seg46, i1 false)
  %cat.off77 = add i64 0, %cat.seg46
  %cat.dst78 = getelementptr i8, ptr %concat.buf75, i64 %cat.off77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst78, ptr align 1 %cat.lit.data49, i64 3, i1 false)
  %cat.off79 = add i64 %cat.off77, 3
  %cat.dst80 = getelementptr i8, ptr %concat.buf75, i64 %cat.off79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 %cat.seg55, i64 %cat.seg53, i1 false)
  %concat.nul81 = getelementptr i8, ptr %concat.buf75, i64 %sum63
  store i8 0, ptr %concat.nul81, align 1
  %str.build.len.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 0
  store i64 %sum63, ptr %str.build.len.gep83, align 8
  %str.build.data.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 1
  store ptr %concat.buf75, ptr %str.build.data.gep84, align 8
  %call.res85 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load40, ptr %concat.str82)
  store ptr %call.res85, ptr %var.priv, align 8
  %var.load86 = load ptr, ptr %var.priv, align 8
  %niche.ne.null87 = icmp ne ptr %var.load86, null
  br i1 %niche.ne.null87, label %choice.then88, label %choice.exit89

str_overflow_abort72:                             ; preds = %cat.sum.len65
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %concat.tot.len71

choice.then88:                                    ; preds = %concat.tot.len71
  store ptr %var.load86, ptr %var._90, align 8
  store ptr %var.load86, ptr %var.pr, align 8
  %var.load91 = load ptr, ptr %var.pr, align 8
  ret ptr %var.load91

choice.exit89:                                    ; preds = %ret.dead92, %concat.tot.len71
  br label %choice.exit

ret.dead92:                                       ; No predecessors!
  br label %choice.exit89
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
