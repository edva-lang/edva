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
@"var.path::SEP" = global i32 47
@str.0 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@"var.path::SEP_STR" = global ptr null
@"var.path::LIST_SEP" = global i32 58
@str.1 = internal unnamed_addr constant [2 x i8] c":\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.1 }
@"var.path::LIST_SEP_STR" = global ptr null
@str.2 = internal unnamed_addr constant [6 x i8] c"linux\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.2 }
@str.3 = internal unnamed_addr constant [8 x i8] c"windows\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.3 }
@"var.path::IS_WIN" = global i1 false
@clo.const = internal constant { ptr, ptr } { ptr @"path::is_posix_sep", ptr null }
@"var.path::is_posix_sep" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"path::is_win_sep", ptr null }
@"var.path::is_win_sep" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"path::is_sep", ptr null }
@"var.path::is_sep" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"path::win_root_len", ptr null }
@"var.path::win_root_len" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"path::posix_root_len", ptr null }
@"var.path::posix_root_len" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"path::root_len", ptr null }
@"var.path::root_len" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"path::posix_is_abs", ptr null }
@"var.path::posix_is_abs" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"path::win_is_abs", ptr null }
@"var.path::win_is_abs" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"path::is_abs", ptr null }
@"var.path::is_abs" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"path::is_rel", ptr null }
@"var.path::is_rel" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"path::posix_strip_trailing_sep", ptr null }
@"var.path::posix_strip_trailing_sep" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"path::win_strip_trailing_sep", ptr null }
@"var.path::win_strip_trailing_sep" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"path::strip_trailing_sep", ptr null }
@"var.path::strip_trailing_sep" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"path::posix_join", ptr null }
@"var.path::posix_join" = global ptr null
@str.4 = internal unnamed_addr constant [2 x i8] c"\\\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"path::win_join", ptr null }
@"var.path::win_join" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"path::join", ptr null }
@"var.path::join" = global ptr null
@str.5 = internal unnamed_addr constant [2 x i8] c".\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.5 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"path::posix_parent", ptr null }
@"var.path::posix_parent" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"path::win_parent", ptr null }
@"var.path::win_parent" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"path::parent", ptr null }
@"var.path::parent" = global ptr null
@str.6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.6 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"path::dirname", ptr null }
@"var.path::dirname" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"path::posix_basename", ptr null }
@"var.path::posix_basename" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"path::win_basename", ptr null }
@"var.path::win_basename" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"path::basename", ptr null }
@"var.path::basename" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"path::base", ptr null }
@"var.path::base" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"path::ext_dot_index", ptr null }
@"var.path::ext_dot_index" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"path::ext", ptr null }
@"var.path::ext" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"path::get_ext", ptr null }
@"var.path::get_ext" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"path::ext_lower", ptr null }
@"var.path::ext_lower" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"path::stem", ptr null }
@"var.path::stem" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"path::with_ext", ptr null }
@"var.path::with_ext" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"path::split", ptr null }
@"var.path::split" = global ptr null
@str.7 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.7 }
@str.8 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.8 }
@str.9 = internal unnamed_addr constant [9 x i8] c"path.dva\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.9 }
@str.10 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.10 }
@clo.const.31 = internal constant { ptr, ptr } { ptr @"path::posix_normalize", ptr null }
@"var.path::posix_normalize" = global ptr null
@str.11 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.11 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"path::win_normalize", ptr null }
@"var.path::win_normalize" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"path::normalize", ptr null }
@"var.path::normalize" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"path::rel", ptr null }
@"var.path::rel" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"path::has_prefix", ptr null }
@"var.path::has_prefix" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"path::has_traversal", ptr null }
@"var.path::has_traversal" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_path, ptr null }]

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

define internal void @__dva_global_init_path() #0 {
entry:
  store i32 47, ptr @"var.path::SEP", align 4
  store ptr @str.0.struct, ptr @"var.path::SEP_STR", align 8
  store i32 58, ptr @"var.path::LIST_SEP", align 4
  store ptr @str.1.struct, ptr @"var.path::LIST_SEP_STR", align 8
  %eq.lhs.len = load i64, ptr @str.2.struct, align 8
  %eq.lhs.len1 = and i64 %eq.lhs.len, 281474976710655
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len2 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len1, %eq.rhs.len2
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data, ptr %eq.rhs.data, i64 %eq.lhs.len1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  store i1 %str.eq.result, ptr @"var.path::IS_WIN", align 1
  store ptr @clo.const, ptr @"var.path::is_posix_sep", align 8
  store ptr @clo.const.1, ptr @"var.path::is_win_sep", align 8
  store ptr @clo.const.2, ptr @"var.path::is_sep", align 8
  store ptr @clo.const.3, ptr @"var.path::win_root_len", align 8
  store ptr @clo.const.4, ptr @"var.path::posix_root_len", align 8
  store ptr @clo.const.5, ptr @"var.path::root_len", align 8
  store ptr @clo.const.6, ptr @"var.path::posix_is_abs", align 8
  store ptr @clo.const.7, ptr @"var.path::win_is_abs", align 8
  store ptr @clo.const.8, ptr @"var.path::is_abs", align 8
  store ptr @clo.const.9, ptr @"var.path::is_rel", align 8
  store ptr @clo.const.10, ptr @"var.path::posix_strip_trailing_sep", align 8
  store ptr @clo.const.11, ptr @"var.path::win_strip_trailing_sep", align 8
  store ptr @clo.const.12, ptr @"var.path::strip_trailing_sep", align 8
  store ptr @clo.const.13, ptr @"var.path::posix_join", align 8
  store ptr @clo.const.14, ptr @"var.path::win_join", align 8
  store ptr @clo.const.15, ptr @"var.path::join", align 8
  store ptr @clo.const.16, ptr @"var.path::posix_parent", align 8
  store ptr @clo.const.17, ptr @"var.path::win_parent", align 8
  store ptr @clo.const.18, ptr @"var.path::parent", align 8
  store ptr @clo.const.19, ptr @"var.path::dirname", align 8
  store ptr @clo.const.20, ptr @"var.path::posix_basename", align 8
  store ptr @clo.const.21, ptr @"var.path::win_basename", align 8
  store ptr @clo.const.22, ptr @"var.path::basename", align 8
  store ptr @clo.const.23, ptr @"var.path::base", align 8
  store ptr @clo.const.24, ptr @"var.path::ext_dot_index", align 8
  store ptr @clo.const.25, ptr @"var.path::ext", align 8
  store ptr @clo.const.26, ptr @"var.path::get_ext", align 8
  store ptr @clo.const.27, ptr @"var.path::ext_lower", align 8
  store ptr @clo.const.28, ptr @"var.path::stem", align 8
  store ptr @clo.const.29, ptr @"var.path::with_ext", align 8
  store ptr @clo.const.30, ptr @"var.path::split", align 8
  store ptr @clo.const.31, ptr @"var.path::posix_normalize", align 8
  store ptr @clo.const.32, ptr @"var.path::win_normalize", align 8
  store ptr @clo.const.33, ptr @"var.path::normalize", align 8
  store ptr @clo.const.34, ptr @"var.path::rel", align 8
  store ptr @clo.const.35, ptr @"var.path::has_prefix", align 8
  store ptr @clo.const.36, ptr @"var.path::has_traversal", align 8
  ret void
}

declare i32 @memcmp(ptr, ptr, i64) #0

define i1 @"path::is_posix_sep"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 47
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"path::is_win_sep"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 47
  %val.match1 = icmp eq i64 %var.load, 92
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"path::is_sep"(i64 %0) #0 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"path::is_posix_sep"(i64 %var.load)
  ret i1 %call.res
}

define i64 @"path::win_root_len"(ptr %0) #0 {
entry:
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i64 0

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp5 = icmp sge i64 %var.load4, 2
  br i1 %cmptmp5, label %and.39.then, label %and.39.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.39.then:                                      ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.39.else:                                      ; preds = %choice.exit
  br label %and.39.exit

and.39.exit:                                      ; preds = %and.39.else, %idx_ok
  %and.39.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp5, %and.39.else ]
  br i1 %and.39.phi, label %and.40.then, label %and.40.else

idx_ok:                                           ; preds = %abort.dead, %and.39.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_alpha"(i64 %s.byte.val)
  br label %and.39.exit

idx_oob:                                          ; preds = %and.39.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.40.then:                                      ; preds = %and.39.exit
  %var.load10 = load ptr, ptr %var.p, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %idx.oob16 = icmp uge i64 1, %s.read.len13
  br i1 %idx.oob16, label %idx_oob18, label %idx_ok17

and.40.else:                                      ; preds = %and.39.exit
  br label %and.40.exit

and.40.exit:                                      ; preds = %and.40.else, %idx_ok17
  %and.40.phi = phi i1 [ %cmptmp23, %idx_ok17 ], [ %and.39.phi, %and.40.else ]
  br i1 %and.40.phi, label %choice.then24, label %choice.else

idx_ok17:                                         ; preds = %abort.dead19, %and.40.then
  %s.byte.gep20 = getelementptr i8, ptr %s.read.data15, i64 1
  %s.byte21 = load i8, ptr %s.byte.gep20, align 1
  %s.byte.val22 = zext i8 %s.byte21 to i64
  %cmptmp23 = icmp eq i64 %s.byte.val22, 58
  br label %and.40.exit

idx_oob18:                                        ; preds = %and.40.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok17

choice.then24:                                    ; preds = %and.40.exit
  %var.load26 = load i64, ptr %var.len, align 8
  %cmptmp27 = icmp sge i64 %var.load26, 3
  br i1 %cmptmp27, label %and.41.then, label %and.41.else

choice.else:                                      ; preds = %and.40.exit
  %var.load45 = load ptr, ptr %var.p, align 8
  %s.read.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %s.read.len47 = load i64, ptr %s.read.len46, align 8
  %s.read.len48 = and i64 %s.read.len47, 281474976710655
  %s.read.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %s.read.data50 = load ptr, ptr %s.read.data49, align 8
  %idx.oob51 = icmp uge i64 0, %s.read.len48
  br i1 %idx.oob51, label %idx_oob53, label %idx_ok52

choice.exit25:                                    ; preds = %choice.exit61, %choice.exit44
  %choice.res83 = phi i64 [ %choice.res, %choice.exit44 ], [ %choice.res82, %choice.exit61 ]
  ret i64 %choice.res83

and.41.then:                                      ; preds = %choice.then24
  %var.load28 = load ptr, ptr %var.p, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %idx.oob34 = icmp uge i64 2, %s.read.len31
  br i1 %idx.oob34, label %idx_oob36, label %idx_ok35

and.41.else:                                      ; preds = %choice.then24
  br label %and.41.exit

and.41.exit:                                      ; preds = %and.41.else, %idx_ok35
  %and.41.phi = phi i1 [ %call.res41, %idx_ok35 ], [ %cmptmp27, %and.41.else ]
  br i1 %and.41.phi, label %choice.then42, label %choice.else43

idx_ok35:                                         ; preds = %abort.dead37, %and.41.then
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data33, i64 2
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  %call.res41 = call i1 @"path::is_win_sep"(i64 %s.byte.val40)
  br label %and.41.exit

idx_oob36:                                        ; preds = %and.41.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok35

choice.then42:                                    ; preds = %and.41.exit
  br label %choice.exit44

choice.else43:                                    ; preds = %and.41.exit
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res = phi i64 [ 3, %choice.then42 ], [ 2, %choice.else43 ]
  br label %choice.exit25

idx_ok52:                                         ; preds = %abort.dead54, %choice.else
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data50, i64 0
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %call.res58 = call i1 @"path::is_win_sep"(i64 %s.byte.val57)
  br i1 %call.res58, label %choice.then59, label %choice.else60

idx_oob53:                                        ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %idx_ok52

choice.then59:                                    ; preds = %idx_ok52
  %var.load62 = load i64, ptr %var.len, align 8
  %cmptmp63 = icmp sge i64 %var.load62, 2
  br i1 %cmptmp63, label %and.42.then, label %and.42.else

choice.else60:                                    ; preds = %idx_ok52
  br label %choice.exit61

choice.exit61:                                    ; preds = %choice.else60, %choice.exit80
  %choice.res82 = phi i64 [ %choice.res81, %choice.exit80 ], [ 0, %choice.else60 ]
  br label %choice.exit25

and.42.then:                                      ; preds = %choice.then59
  %var.load64 = load ptr, ptr %var.p, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %idx.oob70 = icmp uge i64 1, %s.read.len67
  br i1 %idx.oob70, label %idx_oob72, label %idx_ok71

and.42.else:                                      ; preds = %choice.then59
  br label %and.42.exit

and.42.exit:                                      ; preds = %and.42.else, %idx_ok71
  %and.42.phi = phi i1 [ %call.res77, %idx_ok71 ], [ %cmptmp63, %and.42.else ]
  br i1 %and.42.phi, label %choice.then78, label %choice.else79

idx_ok71:                                         ; preds = %abort.dead73, %and.42.then
  %s.byte.gep74 = getelementptr i8, ptr %s.read.data69, i64 1
  %s.byte75 = load i8, ptr %s.byte.gep74, align 1
  %s.byte.val76 = zext i8 %s.byte75 to i64
  %call.res77 = call i1 @"path::is_win_sep"(i64 %s.byte.val76)
  br label %and.42.exit

idx_oob72:                                        ; preds = %and.42.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %idx_ok71

choice.then78:                                    ; preds = %and.42.exit
  br label %choice.exit80

choice.else79:                                    ; preds = %and.42.exit
  br label %choice.exit80

choice.exit80:                                    ; preds = %choice.else79, %choice.then78
  %choice.res81 = phi i64 [ 2, %choice.then78 ], [ 1, %choice.else79 ]
  br label %choice.exit61
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i1 @"ascii::is_alpha"(i64) #0

define i64 @"path::posix_root_len"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.43.then, label %and.43.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.43.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.43.else:                                      ; preds = %str_ok
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %idx_ok
  %and.43.phi = phi i1 [ %cmptmp7, %idx_ok ], [ %cmptmp, %and.43.else ]
  br i1 %and.43.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.43.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp7 = icmp eq i64 %s.byte.val, 47
  br label %and.43.exit

idx_oob:                                          ; preds = %and.43.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.43.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.43.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 1, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define i64 @"path::root_len"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::posix_root_len"(ptr %var.load)
  ret i64 %call.res
}

define i1 @"path::posix_is_abs"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.44.then, label %and.44.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.44.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.44.else:                                      ; preds = %str_ok
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %idx_ok
  %and.44.phi = phi i1 [ %cmptmp7, %idx_ok ], [ %cmptmp, %and.44.else ]
  ret i1 %and.44.phi

idx_ok:                                           ; preds = %abort.dead, %and.44.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp7 = icmp eq i64 %s.byte.val, 47
  br label %and.44.exit

idx_oob:                                          ; preds = %and.44.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

define i1 @"path::win_is_abs"(ptr %0) #0 {
entry:
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sgt i64 %var.load3, 0
  br i1 %cmptmp, label %and.45.then, label %and.45.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.45.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.45.else:                                      ; preds = %str_ok
  br label %and.45.exit

and.45.exit:                                      ; preds = %and.45.else, %idx_ok
  %and.45.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.45.else ]
  br i1 %and.45.phi, label %or.46.then, label %or.46.else

idx_ok:                                           ; preds = %abort.dead, %and.45.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.45.exit

idx_oob:                                          ; preds = %and.45.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

or.46.then:                                       ; preds = %and.45.exit
  br label %or.46.exit

or.46.else:                                       ; preds = %and.45.exit
  %var.load8 = load i64, ptr %var.len, align 8
  %cmptmp9 = icmp sge i64 %var.load8, 3
  br i1 %cmptmp9, label %and.47.then, label %and.47.else

or.46.exit:                                       ; preds = %and.49.exit, %or.46.then
  %or.46.phi = phi i1 [ %and.45.phi, %or.46.then ], [ %and.49.phi, %and.49.exit ]
  ret i1 %or.46.phi

and.47.then:                                      ; preds = %or.46.else
  %var.load10 = load ptr, ptr %var.p, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %idx.oob16 = icmp uge i64 0, %s.read.len13
  br i1 %idx.oob16, label %idx_oob18, label %idx_ok17

and.47.else:                                      ; preds = %or.46.else
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %idx_ok17
  %and.47.phi = phi i1 [ %call.res23, %idx_ok17 ], [ %cmptmp9, %and.47.else ]
  br i1 %and.47.phi, label %and.48.then, label %and.48.else

idx_ok17:                                         ; preds = %abort.dead19, %and.47.then
  %s.byte.gep20 = getelementptr i8, ptr %s.read.data15, i64 0
  %s.byte21 = load i8, ptr %s.byte.gep20, align 1
  %s.byte.val22 = zext i8 %s.byte21 to i64
  %call.res23 = call i1 @"ascii::is_alpha"(i64 %s.byte.val22)
  br label %and.47.exit

idx_oob18:                                        ; preds = %and.47.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok17

and.48.then:                                      ; preds = %and.47.exit
  %var.load24 = load ptr, ptr %var.p, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %idx.oob30 = icmp uge i64 1, %s.read.len27
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

and.48.else:                                      ; preds = %and.47.exit
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %idx_ok31
  %and.48.phi = phi i1 [ %cmptmp37, %idx_ok31 ], [ %and.47.phi, %and.48.else ]
  br i1 %and.48.phi, label %and.49.then, label %and.49.else

idx_ok31:                                         ; preds = %abort.dead33, %and.48.then
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data29, i64 1
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %cmptmp37 = icmp eq i64 %s.byte.val36, 58
  br label %and.48.exit

idx_oob32:                                        ; preds = %and.48.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok31

and.49.then:                                      ; preds = %and.48.exit
  %var.load38 = load ptr, ptr %var.p, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %idx.oob44 = icmp uge i64 2, %s.read.len41
  br i1 %idx.oob44, label %idx_oob46, label %idx_ok45

and.49.else:                                      ; preds = %and.48.exit
  br label %and.49.exit

and.49.exit:                                      ; preds = %and.49.else, %idx_ok45
  %and.49.phi = phi i1 [ %call.res51, %idx_ok45 ], [ %and.48.phi, %and.49.else ]
  br label %or.46.exit

idx_ok45:                                         ; preds = %abort.dead47, %and.49.then
  %s.byte.gep48 = getelementptr i8, ptr %s.read.data43, i64 2
  %s.byte49 = load i8, ptr %s.byte.gep48, align 1
  %s.byte.val50 = zext i8 %s.byte49 to i64
  %call.res51 = call i1 @"path::is_win_sep"(i64 %s.byte.val50)
  br label %and.49.exit

idx_oob46:                                        ; preds = %and.49.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %idx_ok45
}

define i1 @"path::is_abs"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load)
  ret i1 %call.res
}

define i1 @"path::is_rel"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::is_abs"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.50:                                   ; preds = %loop.latch.50, %str_ok
  %counter.load = load i64, ptr %loop.idx.50, align 8
  br label %loop.body.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.50, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load3, 1
  br i1 %cmptmp, label %and.51.then, label %and.51.else

loop.exit.nat.50:                                 ; No predecessors!
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.50, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %choice.else, %loop.exit.nat.50
  %var.load12 = load i64, ptr %"var.end'", align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %str.len.query14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query14, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %str.tag17 = lshr i64 %str.len.query15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current21 = icmp eq i64 %str.tag17, %active.gen20
  %tag.fast.ok22 = or i1 %tag.immortal19, %tag.current21
  br i1 %tag.fast.ok22, label %str_ok18, label %tag.slow_check23

and.51.then:                                      ; preds = %loop.body.50
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load8, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.51.else:                                      ; preds = %loop.body.50
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %idx_ok
  %and.51.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.51.else ]
  br i1 %and.51.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.51.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 47
  br label %and.51.exit

idx_oob:                                          ; preds = %and.51.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.51.exit
  %var.load10 = load i64, ptr %"var.end'", align 8
  %subtmp11 = sub i64 %var.load10, 1
  store i64 %subtmp11, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.51.exit
  br label %loop.exit.50

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.50

str_ok18:                                         ; preds = %tag.slow_check23, %loop.exit.50
  %cmptmp24 = icmp eq i64 %var.load12, %str.len.query16
  br i1 %cmptmp24, label %choice.then25, label %choice.else26

tag.slow_check23:                                 ; preds = %loop.exit.50
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag17)
  br label %str_ok18

choice.then25:                                    ; preds = %str_ok18
  %var.load28 = load ptr, ptr %var.p, align 8
  br label %choice.exit27

choice.else26:                                    ; preds = %str_ok18
  %var.load29 = load ptr, ptr %var.p, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len32, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len32
  %final.start = select i1 %start.gt.len, i64 %s.read.len32, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load35, 0
  %rel.end = add i64 %s.read.len32, %var.load35
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load35
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len32
  %final.end = select i1 %end.gt.len, i64 %s.read.len32, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else26, %choice.then25
  %choice.res = phi ptr [ %var.load28, %choice.then25 ], [ %str.view, %choice.else26 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::win_strip_trailing_sep"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.min_len = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::win_root_len"(ptr %var.load)
  store i64 %call.res, ptr %var.rlen, align 8
  %var.load1 = load i64, ptr %var.rlen, align 8
  %cmptmp = icmp sgt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.rlen, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load2, %choice.then ], [ 1, %choice.else ]
  store i64 %choice.res, ptr %var.min_len, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  store i64 %str.len.query5, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.52:                                   ; preds = %loop.latch.52, %str_ok
  %counter.load = load i64, ptr %loop.idx.52, align 8
  br label %loop.body.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load6 = load i64, ptr %"var.end'", align 8
  %var.load7 = load i64, ptr %var.min_len, align 8
  %cmptmp8 = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp8, label %and.53.then, label %and.53.else

loop.exit.nat.52:                                 ; No predecessors!
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %choice.exit17
  %step.val = load i64, ptr %loop.step.52, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %choice.else16, %loop.exit.nat.52
  %var.load20 = load i64, ptr %"var.end'", align 8
  %var.load21 = load ptr, ptr %var.p, align 8
  %str.len.query22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query23 = load i64, ptr %str.len.query22, align 8
  %str.len.query24 = and i64 %str.len.query23, 281474976710655
  %str.tag25 = lshr i64 %str.len.query23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

and.53.then:                                      ; preds = %loop.body.52
  %var.load9 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load13, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.53.else:                                      ; preds = %loop.body.52
  br label %and.53.exit

and.53.exit:                                      ; preds = %and.53.else, %idx_ok
  %and.53.phi = phi i1 [ %call.res14, %idx_ok ], [ %cmptmp8, %and.53.else ]
  br i1 %and.53.phi, label %choice.then15, label %choice.else16

idx_ok:                                           ; preds = %abort.dead, %and.53.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res14 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.53.exit

idx_oob:                                          ; preds = %and.53.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %and.53.exit
  %var.load18 = load i64, ptr %"var.end'", align 8
  %subtmp19 = sub i64 %var.load18, 1
  store i64 %subtmp19, ptr %"var.end'", align 8
  br label %choice.exit17

choice.else16:                                    ; preds = %and.53.exit
  br label %loop.exit.52

choice.exit17:                                    ; preds = %choice.then15
  br label %loop.latch.52

str_ok26:                                         ; preds = %tag.slow_check31, %loop.exit.52
  %cmptmp32 = icmp eq i64 %var.load20, %str.len.query24
  br i1 %cmptmp32, label %choice.then33, label %choice.else34

tag.slow_check31:                                 ; preds = %loop.exit.52
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

choice.then33:                                    ; preds = %str_ok26
  %var.load36 = load ptr, ptr %var.p, align 8
  br label %choice.exit35

choice.else34:                                    ; preds = %str_ok26
  %var.load37 = load ptr, ptr %var.p, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len40, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len40
  %final.start = select i1 %start.gt.len, i64 %s.read.len40, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load43, 0
  %rel.end = add i64 %s.read.len40, %var.load43
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load43
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len40
  %final.end = select i1 %end.gt.len, i64 %s.read.len40, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data42, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit35

choice.exit35:                                    ; preds = %choice.else34, %choice.then33
  %choice.res44 = phi ptr [ %var.load36, %choice.then33 ], [ %str.view, %choice.else34 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res44, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::strip_trailing_sep"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::posix_join"(ptr %0, ptr %1) #0 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %tag.slow_check14, %choice.exit
  %cmptmp15 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp15, label %or.54.then, label %or.54.else

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

or.54.then:                                       ; preds = %str_ok9
  br label %or.54.exit

or.54.else:                                       ; preds = %str_ok9
  %var.load16 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load16)
  br label %or.54.exit

or.54.exit:                                       ; preds = %or.54.else, %or.54.then
  %or.54.phi = phi i1 [ %cmptmp15, %or.54.then ], [ %call.res, %or.54.else ]
  br i1 %or.54.phi, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %or.54.exit
  %var.load19 = load ptr, ptr %var.b, align 8
  %ret.pack20 = load { i64, ptr }, ptr %var.load19, align 8
  ret { i64, ptr } %ret.pack20

choice.exit18:                                    ; preds = %ret.dead21, %or.54.exit
  %var.load22 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load ptr, ptr %var.a, align 8
  %str.len.query27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %str.len.query28 = load i64, ptr %str.len.query27, align 8
  %str.len.query29 = and i64 %str.len.query28, 281474976710655
  %str.tag30 = lshr i64 %str.len.query28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current34 = icmp eq i64 %str.tag30, %active.gen33
  %tag.fast.ok35 = or i1 %tag.immortal32, %tag.current34
  br i1 %tag.fast.ok35, label %str_ok31, label %tag.slow_check36

ret.dead21:                                       ; No predecessors!
  br label %choice.exit18

str_ok31:                                         ; preds = %tag.slow_check36, %choice.exit18
  %subtmp = sub i64 %str.len.query29, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

tag.slow_check36:                                 ; preds = %choice.exit18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag30)
  br label %str_ok31

idx_ok:                                           ; preds = %abort.dead, %str_ok31
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp37 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp37, label %choice.then38, label %choice.else

idx_oob:                                          ; preds = %str_ok31
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then38:                                    ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.a, align 8
  %var.load41 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %concat.lhs42 = load i64, ptr %concat.lhs, align 8
  %concat.lhs43 = and i64 %concat.lhs42, 281474976710655
  %str.tag44 = lshr i64 %concat.lhs42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

choice.else:                                      ; preds = %idx_ok
  %var.load72 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %cat.seg73 = load i64, ptr %cat.seg, align 8
  %cat.seg74 = and i64 %cat.seg73, 281474976710655
  %str.tag75 = lshr i64 %cat.seg73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %str.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %str_ok76, label %tag.slow_check81

choice.exit39:                                    ; preds = %concat.tot.len111, %concat.tot.len68
  %choice.res = phi ptr [ %concat.str, %concat.tot.len68 ], [ %concat.str121, %concat.tot.len111 ]
  %ret.pack124 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack124

str_ok45:                                         ; preds = %tag.slow_check50, %choice.then38
  %concat.lhs51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %concat.lhs52 = load ptr, ptr %concat.lhs51, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %concat.rhs53 = load i64, ptr %concat.rhs, align 8
  %concat.rhs54 = and i64 %concat.rhs53, 281474976710655
  %str.tag55 = lshr i64 %concat.rhs53, 48
  %tag.immortal57 = icmp eq i64 %str.tag55, 0
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current59 = icmp eq i64 %str.tag55, %active.gen58
  %tag.fast.ok60 = or i1 %tag.immortal57, %tag.current59
  br i1 %tag.fast.ok60, label %str_ok56, label %tag.slow_check61

tag.slow_check50:                                 ; preds = %choice.then38
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

str_ok56:                                         ; preds = %tag.slow_check61, %str_ok45
  %concat.rhs62 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %concat.rhs63 = load ptr, ptr %concat.rhs62, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs43, i64 %concat.rhs54)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len64

tag.slow_check61:                                 ; preds = %str_ok45
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag55)
  br label %str_ok56

concat.sum.len64:                                 ; preds = %abort.dead65, %str_ok56
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum66 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf67 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.tot.len68

str_overflow_abort:                               ; preds = %str_ok56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %concat.sum.len64

concat.tot.len68:                                 ; preds = %abort.dead70, %concat.sum.len64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs52, i64 %concat.lhs43, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs63, i64 %concat.rhs54, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit39

str_overflow_abort69:                             ; preds = %concat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %concat.tot.len68

str_ok76:                                         ; preds = %tag.slow_check81, %choice.else
  %cat.seg82 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %cat.seg83 = load ptr, ptr %cat.seg82, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load84 = load ptr, ptr %var.b, align 8
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %cat.seg86 = load i64, ptr %cat.seg85, align 8
  %cat.seg87 = and i64 %cat.seg86, 281474976710655
  %str.tag88 = lshr i64 %cat.seg86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  %active.gen91 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current92 = icmp eq i64 %str.tag88, %active.gen91
  %tag.fast.ok93 = or i1 %tag.immortal90, %tag.current92
  br i1 %tag.fast.ok93, label %str_ok89, label %tag.slow_check94

tag.slow_check81:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag75)
  br label %str_ok76

str_ok89:                                         ; preds = %tag.slow_check94, %str_ok76
  %cat.seg95 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %cat.seg96 = load ptr, ptr %cat.seg95, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg74, i64 1)
  %sum97 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf98 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf98, label %str_overflow_abort100, label %cat.sum.len99

tag.slow_check94:                                 ; preds = %str_ok76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag88)
  br label %str_ok89

cat.sum.len99:                                    ; preds = %abort.dead101, %str_ok89
  %cat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum97, i64 %cat.seg87)
  %sum103 = extractvalue { i64, i1 } %cat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %cat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %cat.sum.len105

str_overflow_abort100:                            ; preds = %str_ok89
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %cat.sum.len99

cat.sum.len105:                                   ; preds = %abort.dead107, %cat.sum.len99
  %concat.tot.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum109 = extractvalue { i64, i1 } %concat.tot.len108, 0
  %ovf110 = extractvalue { i64, i1 } %concat.tot.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %concat.tot.len111

str_overflow_abort106:                            ; preds = %cat.sum.len99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %cat.sum.len105

concat.tot.len111:                                ; preds = %abort.dead113, %cat.sum.len105
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum109)
  %cat.dst = getelementptr i8, ptr %concat.buf115, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg83, i64 %cat.seg74, i1 false)
  %cat.off = add i64 0, %cat.seg74
  %cat.dst116 = getelementptr i8, ptr %concat.buf115, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst116, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off117 = add i64 %cat.off, 1
  %cat.dst118 = getelementptr i8, ptr %concat.buf115, i64 %cat.off117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst118, ptr align 1 %cat.seg96, i64 %cat.seg87, i1 false)
  %concat.nul119 = getelementptr i8, ptr %concat.buf115, i64 %sum103
  store i8 0, ptr %concat.nul119, align 1
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %str.build.len.gep122 = getelementptr inbounds { i64, ptr }, ptr %concat.str121, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep122, align 8
  %str.build.data.gep123 = getelementptr inbounds { i64, ptr }, ptr %concat.str121, i32 0, i32 1
  store ptr %concat.buf115, ptr %str.build.data.gep123, align 8
  br label %choice.exit39

str_overflow_abort112:                            ; preds = %cat.sum.len105
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %concat.tot.len111
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"path::win_join"(ptr %0, ptr %1) #0 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %tag.slow_check14, %choice.exit
  %cmptmp15 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp15, label %or.55.then, label %or.55.else

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

or.55.then:                                       ; preds = %str_ok9
  br label %or.55.exit

or.55.else:                                       ; preds = %str_ok9
  %var.load16 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::win_is_abs"(ptr %var.load16)
  br label %or.55.exit

or.55.exit:                                       ; preds = %or.55.else, %or.55.then
  %or.55.phi = phi i1 [ %cmptmp15, %or.55.then ], [ %call.res, %or.55.else ]
  br i1 %or.55.phi, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %or.55.exit
  %var.load19 = load ptr, ptr %var.b, align 8
  %ret.pack20 = load { i64, ptr }, ptr %var.load19, align 8
  ret { i64, ptr } %ret.pack20

choice.exit18:                                    ; preds = %ret.dead21, %or.55.exit
  %var.load22 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load ptr, ptr %var.a, align 8
  %str.len.query27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %str.len.query28 = load i64, ptr %str.len.query27, align 8
  %str.len.query29 = and i64 %str.len.query28, 281474976710655
  %str.tag30 = lshr i64 %str.len.query28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current34 = icmp eq i64 %str.tag30, %active.gen33
  %tag.fast.ok35 = or i1 %tag.immortal32, %tag.current34
  br i1 %tag.fast.ok35, label %str_ok31, label %tag.slow_check36

ret.dead21:                                       ; No predecessors!
  br label %choice.exit18

str_ok31:                                         ; preds = %tag.slow_check36, %choice.exit18
  %subtmp = sub i64 %str.len.query29, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

tag.slow_check36:                                 ; preds = %choice.exit18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag30)
  br label %str_ok31

idx_ok:                                           ; preds = %abort.dead, %str_ok31
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res37 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res37, label %choice.then38, label %choice.else

idx_oob:                                          ; preds = %str_ok31
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then38:                                    ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.a, align 8
  %var.load41 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %concat.lhs42 = load i64, ptr %concat.lhs, align 8
  %concat.lhs43 = and i64 %concat.lhs42, 281474976710655
  %str.tag44 = lshr i64 %concat.lhs42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

choice.else:                                      ; preds = %idx_ok
  %var.load72 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %cat.seg73 = load i64, ptr %cat.seg, align 8
  %cat.seg74 = and i64 %cat.seg73, 281474976710655
  %str.tag75 = lshr i64 %cat.seg73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %str.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %str_ok76, label %tag.slow_check81

choice.exit39:                                    ; preds = %concat.tot.len111, %concat.tot.len68
  %choice.res = phi ptr [ %concat.str, %concat.tot.len68 ], [ %concat.str121, %concat.tot.len111 ]
  %ret.pack124 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack124

str_ok45:                                         ; preds = %tag.slow_check50, %choice.then38
  %concat.lhs51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %concat.lhs52 = load ptr, ptr %concat.lhs51, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %concat.rhs53 = load i64, ptr %concat.rhs, align 8
  %concat.rhs54 = and i64 %concat.rhs53, 281474976710655
  %str.tag55 = lshr i64 %concat.rhs53, 48
  %tag.immortal57 = icmp eq i64 %str.tag55, 0
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current59 = icmp eq i64 %str.tag55, %active.gen58
  %tag.fast.ok60 = or i1 %tag.immortal57, %tag.current59
  br i1 %tag.fast.ok60, label %str_ok56, label %tag.slow_check61

tag.slow_check50:                                 ; preds = %choice.then38
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

str_ok56:                                         ; preds = %tag.slow_check61, %str_ok45
  %concat.rhs62 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %concat.rhs63 = load ptr, ptr %concat.rhs62, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs43, i64 %concat.rhs54)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len64

tag.slow_check61:                                 ; preds = %str_ok45
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag55)
  br label %str_ok56

concat.sum.len64:                                 ; preds = %abort.dead65, %str_ok56
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum66 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf67 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.tot.len68

str_overflow_abort:                               ; preds = %str_ok56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %concat.sum.len64

concat.tot.len68:                                 ; preds = %abort.dead70, %concat.sum.len64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs52, i64 %concat.lhs43, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs63, i64 %concat.rhs54, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit39

str_overflow_abort69:                             ; preds = %concat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %concat.tot.len68

str_ok76:                                         ; preds = %tag.slow_check81, %choice.else
  %cat.seg82 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %cat.seg83 = load ptr, ptr %cat.seg82, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load84 = load ptr, ptr %var.b, align 8
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %cat.seg86 = load i64, ptr %cat.seg85, align 8
  %cat.seg87 = and i64 %cat.seg86, 281474976710655
  %str.tag88 = lshr i64 %cat.seg86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  %active.gen91 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current92 = icmp eq i64 %str.tag88, %active.gen91
  %tag.fast.ok93 = or i1 %tag.immortal90, %tag.current92
  br i1 %tag.fast.ok93, label %str_ok89, label %tag.slow_check94

tag.slow_check81:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag75)
  br label %str_ok76

str_ok89:                                         ; preds = %tag.slow_check94, %str_ok76
  %cat.seg95 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 1
  %cat.seg96 = load ptr, ptr %cat.seg95, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg74, i64 1)
  %sum97 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf98 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf98, label %str_overflow_abort100, label %cat.sum.len99

tag.slow_check94:                                 ; preds = %str_ok76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag88)
  br label %str_ok89

cat.sum.len99:                                    ; preds = %abort.dead101, %str_ok89
  %cat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum97, i64 %cat.seg87)
  %sum103 = extractvalue { i64, i1 } %cat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %cat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %cat.sum.len105

str_overflow_abort100:                            ; preds = %str_ok89
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %cat.sum.len99

cat.sum.len105:                                   ; preds = %abort.dead107, %cat.sum.len99
  %concat.tot.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum109 = extractvalue { i64, i1 } %concat.tot.len108, 0
  %ovf110 = extractvalue { i64, i1 } %concat.tot.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %concat.tot.len111

str_overflow_abort106:                            ; preds = %cat.sum.len99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %cat.sum.len105

concat.tot.len111:                                ; preds = %abort.dead113, %cat.sum.len105
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum109)
  %cat.dst = getelementptr i8, ptr %concat.buf115, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg83, i64 %cat.seg74, i1 false)
  %cat.off = add i64 0, %cat.seg74
  %cat.dst116 = getelementptr i8, ptr %concat.buf115, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst116, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off117 = add i64 %cat.off, 1
  %cat.dst118 = getelementptr i8, ptr %concat.buf115, i64 %cat.off117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst118, ptr align 1 %cat.seg96, i64 %cat.seg87, i1 false)
  %concat.nul119 = getelementptr i8, ptr %concat.buf115, i64 %sum103
  store i8 0, ptr %concat.nul119, align 1
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %str.build.len.gep122 = getelementptr inbounds { i64, ptr }, ptr %concat.str121, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep122, align 8
  %str.build.data.gep123 = getelementptr inbounds { i64, ptr }, ptr %concat.str121, i32 0, i32 1
  store ptr %concat.buf115, ptr %str.build.data.gep123, align 8
  br label %choice.exit39

str_overflow_abort112:                            ; preds = %cat.sum.len105
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %concat.tot.len111
}

define { i64, ptr } @"path::join"(ptr %0, ptr %1) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call { i64, ptr } @"path::posix_join"(ptr %var.load, ptr %var.load1)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::posix_parent"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %tag.slow_check14, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %str.eq.merge
  %ret.pack19 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack19

choice.exit18:                                    ; preds = %ret.dead20, %str.eq.merge
  %var.load21 = load ptr, ptr %var.clean, align 8
  %str.len.query22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query23 = load i64, ptr %str.len.query22, align 8
  %str.len.query24 = and i64 %str.len.query23, 281474976710655
  %str.tag25 = lshr i64 %str.len.query23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

str_ok26:                                         ; preds = %tag.slow_check31, %choice.exit18
  store i64 %str.len.query24, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load32 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

tag.slow_check31:                                 ; preds = %choice.exit18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

loop.header.56:                                   ; preds = %loop.latch.56, %str_ok26
  %counter.load = load i64, ptr %loop.idx.56, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load32
  br i1 %loop.cond, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load33 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load33, 1
  %var.load34 = load i64, ptr %var.i, align 8
  %subtmp35 = sub i64 %subtmp, %var.load34
  store i64 %subtmp35, ptr %var.idx, align 8
  %var.load36 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data, align 8
  %var.load40 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load40, %s.read.len38
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit45
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load47 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp48 = icmp slt i64 %var.load47, 0
  br i1 %cmptmp48, label %choice.then49, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.56
  %s.byte.gep = getelementptr i8, ptr %s.read.data39, i64 %var.load40
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp41 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp41, label %and.57.then, label %and.57.else

idx_oob:                                          ; preds = %loop.body.56
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.57.then:                                      ; preds = %idx_ok
  %var.load42 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp43 = icmp slt i64 %var.load42, 0
  br label %and.57.exit

and.57.else:                                      ; preds = %idx_ok
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %and.57.then
  %and.57.phi = phi i1 [ %cmptmp43, %and.57.then ], [ %cmptmp41, %and.57.else ]
  br i1 %and.57.phi, label %choice.then44, label %choice.exit45

choice.then44:                                    ; preds = %and.57.exit
  %var.load46 = load i64, ptr %var.idx, align 8
  store i64 %var.load46, ptr %"var.last_sep'", align 8
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.then44, %and.57.exit
  br label %loop.latch.56

choice.then49:                                    ; preds = %loop.exit.56
  br label %choice.exit50

choice.else:                                      ; preds = %loop.exit.56
  %var.load51 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp52 = icmp eq i64 %var.load51, 0
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.exit50:                                    ; preds = %choice.exit55, %choice.then49
  %choice.res64 = phi ptr [ @str.5.struct, %choice.then49 ], [ %choice.res, %choice.exit55 ]
  %ret.pack65 = load { i64, ptr }, ptr %choice.res64, align 8
  ret { i64, ptr } %ret.pack65

choice.then53:                                    ; preds = %choice.else
  br label %choice.exit55

choice.else54:                                    ; preds = %choice.else
  %var.load56 = load ptr, ptr %var.clean, align 8
  %s.read.len57 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.read.len58 = load i64, ptr %s.read.len57, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %s.read.data60 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data60, align 8
  %var.load62 = load i64, ptr %"var.last_sep'", align 8
  %rel.start = add i64 %s.read.len59, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len59
  %final.start = select i1 %start.gt.len, i64 %s.read.len59, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load62, 0
  %rel.end = add i64 %s.read.len59, %var.load62
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load62
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len59
  %final.end = select i1 %end.gt.len, i64 %s.read.len59, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data61, i64 %final.start
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res = phi ptr [ @str.0.struct, %choice.then53 ], [ %str.view, %choice.else54 ]
  br label %choice.exit50
}

define { i64, ptr } @"path::win_parent"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::win_strip_trailing_sep"(ptr %var.load4)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %call.res6 = call i64 @"path::win_root_len"(ptr %var.load5)
  store i64 %call.res6, ptr %var.rlen, align 8
  %var.load7 = load ptr, ptr %var.clean, align 8
  %str.len.query8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag11 = lshr i64 %str.len.query9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok12:                                         ; preds = %tag.slow_check17, %choice.exit
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load18 = load i64, ptr %var.rlen, align 8
  %cmptmp19 = icmp sgt i64 %var.load18, 0
  br i1 %cmptmp19, label %and.58.then, label %and.58.else

tag.slow_check17:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

and.58.then:                                      ; preds = %str_ok12
  %var.load20 = load i64, ptr %var.clen, align 8
  %var.load21 = load i64, ptr %var.rlen, align 8
  %cmptmp22 = icmp eq i64 %var.load20, %var.load21
  br label %and.58.exit

and.58.else:                                      ; preds = %str_ok12
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %and.58.then
  %and.58.phi = phi i1 [ %cmptmp22, %and.58.then ], [ %cmptmp19, %and.58.else ]
  br i1 %and.58.phi, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %and.58.exit
  %var.load25 = load ptr, ptr %var.clean, align 8
  %ret.pack26 = load { i64, ptr }, ptr %var.load25, align 8
  ret { i64, ptr } %ret.pack26

choice.exit24:                                    ; preds = %ret.dead27, %and.58.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load28 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

ret.dead27:                                       ; No predecessors!
  br label %choice.exit24

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load28
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load29 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load29, 1
  %var.load30 = load i64, ptr %var.i, align 8
  %subtmp31 = sub i64 %subtmp, %var.load30
  store i64 %subtmp31, ptr %var.idx, align 8
  %var.load32 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  %var.load36 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load36, %s.read.len34
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit41
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load43 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp44 = icmp slt i64 %var.load43, 0
  br i1 %cmptmp44, label %choice.then45, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.59
  %s.byte.gep = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res37 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res37, label %and.60.then, label %and.60.else

idx_oob:                                          ; preds = %loop.body.59
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.60.then:                                      ; preds = %idx_ok
  %var.load38 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp39 = icmp slt i64 %var.load38, 0
  br label %and.60.exit

and.60.else:                                      ; preds = %idx_ok
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %and.60.then
  %and.60.phi = phi i1 [ %cmptmp39, %and.60.then ], [ %call.res37, %and.60.else ]
  br i1 %and.60.phi, label %choice.then40, label %choice.exit41

choice.then40:                                    ; preds = %and.60.exit
  %var.load42 = load i64, ptr %var.idx, align 8
  store i64 %var.load42, ptr %"var.last_sep'", align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.then40, %and.60.exit
  br label %loop.latch.59

choice.then45:                                    ; preds = %loop.exit.59
  %var.load47 = load i64, ptr %var.rlen, align 8
  %cmptmp48 = icmp eq i64 %var.load47, 2
  br i1 %cmptmp48, label %choice.then49, label %choice.else50

choice.else:                                      ; preds = %loop.exit.59
  %var.load59 = load i64, ptr %"var.last_sep'", align 8
  %var.load60 = load i64, ptr %var.rlen, align 8
  %cmptmp61 = icmp slt i64 %var.load59, %var.load60
  br i1 %cmptmp61, label %choice.then62, label %choice.else63

choice.exit46:                                    ; preds = %choice.exit64, %choice.exit51
  %choice.res121 = phi ptr [ %choice.res, %choice.exit51 ], [ %choice.res120, %choice.exit64 ]
  %ret.pack122 = load { i64, ptr }, ptr %choice.res121, align 8
  ret { i64, ptr } %ret.pack122

choice.then49:                                    ; preds = %choice.then45
  %var.load52 = load ptr, ptr %var.clean, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %rel.start = add i64 %s.read.len55, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len55
  %final.start = select i1 %start.gt.len, i64 %s.read.len55, i64 %c.start.0
  %rel.end = add i64 %s.read.len55, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len55
  %final.end = select i1 %end.gt.len, i64 %s.read.len55, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data57, i64 %final.start
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit51

choice.else50:                                    ; preds = %choice.then45
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.else50, %choice.then49
  %choice.res = phi ptr [ %str.view, %choice.then49 ], [ @str.5.struct, %choice.else50 ]
  br label %choice.exit46

choice.then62:                                    ; preds = %choice.else
  %var.load65 = load ptr, ptr %var.clean, align 8
  %s.read.len66 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %s.read.len67 = load i64, ptr %s.read.len66, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %s.read.data69 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data69, align 8
  %var.load71 = load i64, ptr %var.rlen, align 8
  %rel.start72 = add i64 %s.read.len68, 0
  %norm.start73 = select i1 false, i64 %rel.start72, i64 0
  %start.lt.074 = icmp slt i64 %norm.start73, 0
  %c.start.075 = select i1 %start.lt.074, i64 0, i64 %norm.start73
  %start.gt.len76 = icmp sgt i64 %c.start.075, %s.read.len68
  %final.start77 = select i1 %start.gt.len76, i64 %s.read.len68, i64 %c.start.075
  %end.is_neg = icmp slt i64 %var.load71, 0
  %rel.end78 = add i64 %s.read.len68, %var.load71
  %norm.end79 = select i1 %end.is_neg, i64 %rel.end78, i64 %var.load71
  %end.lt.080 = icmp slt i64 %norm.end79, 0
  %c.end.081 = select i1 %end.lt.080, i64 0, i64 %norm.end79
  %end.gt.len82 = icmp sgt i64 %c.end.081, %s.read.len68
  %final.end83 = select i1 %end.gt.len82, i64 %s.read.len68, i64 %c.end.081
  %view.empty84 = icmp sle i64 %final.end83, %final.start77
  %view.len.sub85 = sub i64 %final.end83, %final.start77
  %view.len86 = select i1 %view.empty84, i64 0, i64 %view.len.sub85
  %view.data87 = getelementptr i8, ptr %s.read.data70, i64 %final.start77
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep90 = getelementptr inbounds { i64, ptr }, ptr %str.view89, i32 0, i32 0
  store i64 %view.len86, ptr %str.build.len.gep90, align 8
  %str.build.data.gep91 = getelementptr inbounds { i64, ptr }, ptr %str.view89, i32 0, i32 1
  store ptr %view.data87, ptr %str.build.data.gep91, align 8
  br label %choice.exit64

choice.else63:                                    ; preds = %choice.else
  %var.load92 = load ptr, ptr %var.clean, align 8
  %s.read.len93 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %s.read.len94 = load i64, ptr %s.read.len93, align 8
  %s.read.len95 = and i64 %s.read.len94, 281474976710655
  %s.read.data96 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %s.read.data97 = load ptr, ptr %s.read.data96, align 8
  %var.load98 = load i64, ptr %"var.last_sep'", align 8
  %rel.start99 = add i64 %s.read.len95, 0
  %norm.start100 = select i1 false, i64 %rel.start99, i64 0
  %start.lt.0101 = icmp slt i64 %norm.start100, 0
  %c.start.0102 = select i1 %start.lt.0101, i64 0, i64 %norm.start100
  %start.gt.len103 = icmp sgt i64 %c.start.0102, %s.read.len95
  %final.start104 = select i1 %start.gt.len103, i64 %s.read.len95, i64 %c.start.0102
  %end.is_neg105 = icmp slt i64 %var.load98, 0
  %rel.end106 = add i64 %s.read.len95, %var.load98
  %norm.end107 = select i1 %end.is_neg105, i64 %rel.end106, i64 %var.load98
  %end.lt.0108 = icmp slt i64 %norm.end107, 0
  %c.end.0109 = select i1 %end.lt.0108, i64 0, i64 %norm.end107
  %end.gt.len110 = icmp sgt i64 %c.end.0109, %s.read.len95
  %final.end111 = select i1 %end.gt.len110, i64 %s.read.len95, i64 %c.end.0109
  %view.empty112 = icmp sle i64 %final.end111, %final.start104
  %view.len.sub113 = sub i64 %final.end111, %final.start104
  %view.len114 = select i1 %view.empty112, i64 0, i64 %view.len.sub113
  %view.data115 = getelementptr i8, ptr %s.read.data97, i64 %final.start104
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %str.view117, i32 0, i32 0
  store i64 %view.len114, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %str.view117, i32 0, i32 1
  store ptr %view.data115, ptr %str.build.data.gep119, align 8
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else63, %choice.then62
  %choice.res120 = phi ptr [ %str.view89, %choice.then62 ], [ %str.view117, %choice.else63 ]
  br label %choice.exit46
}

define { i64, ptr } @"path::parent"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_parent"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::dirname"(ptr %0) #0 {
entry:
  %var.par = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::parent"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
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
  %var.load6 = load ptr, ptr %var.par, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.6.struct, %choice.then ], [ %var.load6, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::posix_basename"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %tag.slow_check14, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %str.eq.merge
  %ret.pack19 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack19

choice.exit18:                                    ; preds = %ret.dead20, %str.eq.merge
  %var.load21 = load ptr, ptr %var.clean, align 8
  %str.len.query22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query23 = load i64, ptr %str.len.query22, align 8
  %str.len.query24 = and i64 %str.len.query23, 281474976710655
  %str.tag25 = lshr i64 %str.len.query23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

str_ok26:                                         ; preds = %tag.slow_check31, %choice.exit18
  store i64 %str.len.query24, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load32 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

tag.slow_check31:                                 ; preds = %choice.exit18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

loop.header.61:                                   ; preds = %loop.latch.61, %str_ok26
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load32
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load33 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load33, 1
  %var.load34 = load i64, ptr %var.i, align 8
  %subtmp35 = sub i64 %subtmp, %var.load34
  store i64 %subtmp35, ptr %var.idx, align 8
  %var.load36 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data, align 8
  %var.load40 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load40, %s.read.len38
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit45
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  %var.load47 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp48 = icmp slt i64 %var.load47, 0
  br i1 %cmptmp48, label %choice.then49, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.61
  %s.byte.gep = getelementptr i8, ptr %s.read.data39, i64 %var.load40
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp41 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp41, label %and.62.then, label %and.62.else

idx_oob:                                          ; preds = %loop.body.61
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.62.then:                                      ; preds = %idx_ok
  %var.load42 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp43 = icmp slt i64 %var.load42, 0
  br label %and.62.exit

and.62.else:                                      ; preds = %idx_ok
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %and.62.then
  %and.62.phi = phi i1 [ %cmptmp43, %and.62.then ], [ %cmptmp41, %and.62.else ]
  br i1 %and.62.phi, label %choice.then44, label %choice.exit45

choice.then44:                                    ; preds = %and.62.exit
  %var.load46 = load i64, ptr %var.idx, align 8
  store i64 %var.load46, ptr %"var.last_sep'", align 8
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.then44, %and.62.exit
  br label %loop.latch.61

choice.then49:                                    ; preds = %loop.exit.61
  %var.load51 = load ptr, ptr %var.clean, align 8
  br label %choice.exit50

choice.else:                                      ; preds = %loop.exit.61
  %var.load52 = load ptr, ptr %var.clean, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %var.load58 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load58, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len55, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len55
  %final.start = select i1 %start.gt.len, i64 %s.read.len55, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len55, 0
  %rel.end = add i64 %s.read.len55, %s.read.len55
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len55
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len55
  %final.end = select i1 %end.gt.len, i64 %s.read.len55, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data57, i64 %final.start
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else, %choice.then49
  %choice.res = phi ptr [ %var.load51, %choice.then49 ], [ %str.view, %choice.else ]
  %ret.pack60 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack60
}

define { i64, ptr } @"path::win_basename"(ptr %0) #0 {
entry:
  %var.start = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::win_strip_trailing_sep"(ptr %var.load4)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %call.res6 = call i64 @"path::win_root_len"(ptr %var.load5)
  store i64 %call.res6, ptr %var.rlen, align 8
  %var.load7 = load ptr, ptr %var.clean, align 8
  %str.len.query8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag11 = lshr i64 %str.len.query9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok12:                                         ; preds = %tag.slow_check17, %choice.exit
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load18 = load i64, ptr %var.rlen, align 8
  %cmptmp19 = icmp sgt i64 %var.load18, 0
  br i1 %cmptmp19, label %and.63.then, label %and.63.else

tag.slow_check17:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

and.63.then:                                      ; preds = %str_ok12
  %var.load20 = load i64, ptr %var.clen, align 8
  %var.load21 = load i64, ptr %var.rlen, align 8
  %cmptmp22 = icmp eq i64 %var.load20, %var.load21
  br label %and.63.exit

and.63.else:                                      ; preds = %str_ok12
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %and.63.then
  %and.63.phi = phi i1 [ %cmptmp22, %and.63.then ], [ %cmptmp19, %and.63.else ]
  br i1 %and.63.phi, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %and.63.exit
  %var.load25 = load ptr, ptr %var.clean, align 8
  %ret.pack26 = load { i64, ptr }, ptr %var.load25, align 8
  ret { i64, ptr } %ret.pack26

choice.exit24:                                    ; preds = %ret.dead27, %and.63.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load28 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

ret.dead27:                                       ; No predecessors!
  br label %choice.exit24

loop.header.64:                                   ; preds = %loop.latch.64, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.64, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load28
  br i1 %loop.cond, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load29 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load29, 1
  %var.load30 = load i64, ptr %var.i, align 8
  %subtmp31 = sub i64 %subtmp, %var.load30
  store i64 %subtmp31, ptr %var.idx, align 8
  %var.load32 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  %var.load36 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load36, %s.read.len34
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit41
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load43 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp44 = icmp slt i64 %var.load43, 0
  br i1 %cmptmp44, label %choice.then45, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.64
  %s.byte.gep = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res37 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res37, label %and.65.then, label %and.65.else

idx_oob:                                          ; preds = %loop.body.64
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.65.then:                                      ; preds = %idx_ok
  %var.load38 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp39 = icmp slt i64 %var.load38, 0
  br label %and.65.exit

and.65.else:                                      ; preds = %idx_ok
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %and.65.then
  %and.65.phi = phi i1 [ %cmptmp39, %and.65.then ], [ %call.res37, %and.65.else ]
  br i1 %and.65.phi, label %choice.then40, label %choice.exit41

choice.then40:                                    ; preds = %and.65.exit
  %var.load42 = load i64, ptr %var.idx, align 8
  store i64 %var.load42, ptr %"var.last_sep'", align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.then40, %and.65.exit
  br label %loop.latch.64

choice.then45:                                    ; preds = %loop.exit.64
  %var.load47 = load i64, ptr %var.rlen, align 8
  %cmptmp48 = icmp eq i64 %var.load47, 2
  br i1 %cmptmp48, label %choice.then49, label %choice.else50

choice.else:                                      ; preds = %loop.exit.64
  %var.load52 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load52, 1
  br label %choice.exit46

choice.exit46:                                    ; preds = %choice.else, %choice.exit51
  %choice.res53 = phi i64 [ %choice.res, %choice.exit51 ], [ %addtmp, %choice.else ]
  store i64 %choice.res53, ptr %var.start, align 8
  %var.load54 = load i64, ptr %var.start, align 8
  %var.load55 = load i64, ptr %var.clen, align 8
  %cmptmp56 = icmp sge i64 %var.load54, %var.load55
  br i1 %cmptmp56, label %choice.then57, label %choice.else58

choice.then49:                                    ; preds = %choice.then45
  br label %choice.exit51

choice.else50:                                    ; preds = %choice.then45
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.else50, %choice.then49
  %choice.res = phi i64 [ 2, %choice.then49 ], [ 0, %choice.else50 ]
  br label %choice.exit46

choice.then57:                                    ; preds = %choice.exit46
  br label %choice.exit59

choice.else58:                                    ; preds = %choice.exit46
  %var.load60 = load ptr, ptr %var.clean, align 8
  %s.read.len61 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %s.read.len62 = load i64, ptr %s.read.len61, align 8
  %s.read.len63 = and i64 %s.read.len62, 281474976710655
  %s.read.data64 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data64, align 8
  %var.load66 = load i64, ptr %var.start, align 8
  %start.is_neg = icmp slt i64 %var.load66, 0
  %rel.start = add i64 %s.read.len63, %var.load66
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load66
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len63
  %final.start = select i1 %start.gt.len, i64 %s.read.len63, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len63, 0
  %rel.end = add i64 %s.read.len63, %s.read.len63
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len63
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len63
  %final.end = select i1 %end.gt.len, i64 %s.read.len63, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data65, i64 %final.start
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit59

choice.exit59:                                    ; preds = %choice.else58, %choice.then57
  %choice.res68 = phi ptr [ @str.6.struct, %choice.then57 ], [ %str.view, %choice.else58 ]
  %ret.pack69 = load { i64, ptr }, ptr %choice.res68, align 8
  ret { i64, ptr } %ret.pack69
}

define { i64, ptr } @"path::basename"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::base"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define i64 @"path::ext_dot_index"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %"var.dot'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 -1, ptr %"var.dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.66:                                   ; preds = %loop.latch.66, %str_ok
  %counter.load = load i64, ptr %loop.idx.66, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.66, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load4, 1
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp6 = sub i64 %subtmp, %var.load5
  store i64 %subtmp6, ptr %var.idx, align 8
  %var.load7 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load17 = load i64, ptr %"var.dot'", align 8
  ret i64 %var.load17

idx_ok:                                           ; preds = %abort.dead, %loop.body.66
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.67.then, label %and.67.else

idx_oob:                                          ; preds = %loop.body.66
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.67.then:                                      ; preds = %idx_ok
  %var.load12 = load i64, ptr %"var.dot'", align 8
  %cmptmp13 = icmp slt i64 %var.load12, 0
  br label %and.67.exit

and.67.else:                                      ; preds = %idx_ok
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %and.67.then
  %and.67.phi = phi i1 [ %cmptmp13, %and.67.then ], [ %cmptmp, %and.67.else ]
  br i1 %and.67.phi, label %and.68.then, label %and.68.else

and.68.then:                                      ; preds = %and.67.exit
  %var.load14 = load i64, ptr %var.idx, align 8
  %cmptmp15 = icmp sgt i64 %var.load14, 0
  br label %and.68.exit

and.68.else:                                      ; preds = %and.67.exit
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %and.68.then
  %and.68.phi = phi i1 [ %cmptmp15, %and.68.then ], [ %and.67.phi, %and.68.else ]
  br i1 %and.68.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.68.exit
  %var.load16 = load i64, ptr %var.idx, align 8
  store i64 %var.load16, ptr %"var.dot'", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.68.exit
  br label %loop.latch.66
}

define { i64, ptr } @"path::ext"(ptr %0) #0 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.69.then, label %or.69.else

or.69.then:                                       ; preds = %entry
  br label %or.69.exit

or.69.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

or.69.exit:                                       ; preds = %str_ok, %or.69.then
  %or.69.phi = phi i1 [ %cmptmp, %or.69.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.69.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %tag.slow_check, %or.69.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.69.exit

tag.slow_check:                                   ; preds = %or.69.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %or.69.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.69.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.dot, align 8
  %start.is_neg = icmp slt i64 %var.load13, 0
  %rel.start = add i64 %s.read.len11, %var.load13
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load13
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len11
  %final.start = select i1 %start.gt.len, i64 %s.read.len11, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len11, 0
  %rel.end = add i64 %s.read.len11, %s.read.len11
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len11
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len11
  %final.end = select i1 %end.gt.len, i64 %s.read.len11, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data12, i64 %final.start
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.6.struct, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::get_ext"(ptr %0) #0 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.70.then, label %or.70.else

or.70.then:                                       ; preds = %entry
  br label %or.70.exit

or.70.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

or.70.exit:                                       ; preds = %str_ok, %or.70.then
  %or.70.phi = phi i1 [ %cmptmp, %or.70.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.70.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %tag.slow_check, %or.70.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp sge i64 %var.load4, %subtmp
  br label %or.70.exit

tag.slow_check:                                   ; preds = %or.70.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %or.70.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.70.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.dot, align 8
  %addtmp = add i64 %var.load13, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len11, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len11
  %final.start = select i1 %start.gt.len, i64 %s.read.len11, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len11, 0
  %rel.end = add i64 %s.read.len11, %s.read.len11
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len11
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len11
  %final.end = select i1 %end.gt.len, i64 %s.read.len11, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data12, i64 %final.start
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.6.struct, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::ext_lower"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::get_ext"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::lower"(ptr %ret.ub.alloc)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"str::lower"(ptr) #0

define { i64, ptr } @"path::stem"(ptr %0) #0 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.71.then, label %or.71.else

or.71.then:                                       ; preds = %entry
  br label %or.71.exit

or.71.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

or.71.exit:                                       ; preds = %str_ok, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp, %or.71.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.71.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %tag.slow_check, %or.71.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.71.exit

tag.slow_check:                                   ; preds = %or.71.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %or.71.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %or.71.exit
  %var.load10 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.dot, align 8
  %rel.start = add i64 %s.read.len12, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load14, 0
  %rel.end = add i64 %s.read.len12, %var.load14
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load14
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load9, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::with_ext"(ptr %0, ptr %1) #0 {
entry:
  %var.suf = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.par = alloca ptr, align 8
  %var.new_ext = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.new_ext, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::dirname"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call { i64, ptr } @"path::stem"(ptr %var.load1)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc4, align 8
  store ptr %ret.ub.alloc4, ptr %var.st, align 8
  %var.load5 = load ptr, ptr %var.new_ext, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.new_ext, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %choice.exit15, %choice.then
  %choice.res40 = phi ptr [ @str.6.struct, %choice.then ], [ %choice.res, %choice.exit15 ]
  store ptr %choice.res40, ptr %var.suf, align 8
  %var.load41 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.lhs.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

idx_ok:                                           ; preds = %abort.dead, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp12, label %choice.then13, label %choice.else14

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then13:                                    ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.new_ext, align 8
  br label %choice.exit15

choice.else14:                                    ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.new_ext, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs18 = and i64 %concat.lhs, 281474976710655
  %concat.lhs19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %concat.rhs20 = load i64, ptr %concat.rhs, align 8
  %concat.rhs21 = and i64 %concat.rhs20, 281474976710655
  %str.tag22 = lshr i64 %concat.rhs20, 48
  %tag.immortal24 = icmp eq i64 %str.tag22, 0
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current26 = icmp eq i64 %str.tag22, %active.gen25
  %tag.fast.ok27 = or i1 %tag.immortal24, %tag.current26
  br i1 %tag.fast.ok27, label %str_ok23, label %tag.slow_check28

choice.exit15:                                    ; preds = %concat.tot.len35, %choice.then13
  %choice.res = phi ptr [ %var.load16, %choice.then13 ], [ %concat.str, %concat.tot.len35 ]
  br label %choice.exit

str_ok23:                                         ; preds = %tag.slow_check28, %choice.else14
  %concat.rhs29 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %concat.rhs30 = load ptr, ptr %concat.rhs29, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs18, i64 %concat.rhs21)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len31

tag.slow_check28:                                 ; preds = %choice.else14
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag22)
  br label %str_ok23

concat.sum.len31:                                 ; preds = %abort.dead32, %str_ok23
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum33 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf34 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %concat.tot.len35

str_overflow_abort:                               ; preds = %str_ok23
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %concat.sum.len31

concat.tot.len35:                                 ; preds = %abort.dead37, %concat.sum.len31
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs19, i64 %concat.lhs18, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs30, i64 %concat.rhs21, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit15

str_overflow_abort36:                             ; preds = %concat.sum.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %concat.tot.len35

str_ok45:                                         ; preds = %tag.slow_check50, %choice.exit
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len51 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len43, %eq.rhs.len51
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check50:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.lhs.data52 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data, i64 %eq.lhs.len43)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then53, label %choice.else54

choice.then53:                                    ; preds = %str.eq.merge
  %var.load56 = load ptr, ptr %var.st, align 8
  %var.load57 = load ptr, ptr %var.suf, align 8
  %concat.lhs58 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %concat.lhs59 = load i64, ptr %concat.lhs58, align 8
  %concat.lhs60 = and i64 %concat.lhs59, 281474976710655
  %str.tag61 = lshr i64 %concat.lhs59, 48
  %tag.immortal63 = icmp eq i64 %str.tag61, 0
  %active.gen64 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current65 = icmp eq i64 %str.tag61, %active.gen64
  %tag.fast.ok66 = or i1 %tag.immortal63, %tag.current65
  br i1 %tag.fast.ok66, label %str_ok62, label %tag.slow_check67

choice.else54:                                    ; preds = %str.eq.merge
  %var.load102 = load ptr, ptr %var.par, align 8
  %var.load103 = load ptr, ptr %var.st, align 8
  %var.load104 = load ptr, ptr %var.suf, align 8
  %concat.lhs105 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 0
  %concat.lhs106 = load i64, ptr %concat.lhs105, align 8
  %concat.lhs107 = and i64 %concat.lhs106, 281474976710655
  %str.tag108 = lshr i64 %concat.lhs106, 48
  %tag.immortal110 = icmp eq i64 %str.tag108, 0
  %active.gen111 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current112 = icmp eq i64 %str.tag108, %active.gen111
  %tag.fast.ok113 = or i1 %tag.immortal110, %tag.current112
  br i1 %tag.fast.ok113, label %str_ok109, label %tag.slow_check114

choice.exit55:                                    ; preds = %concat.tot.len138, %concat.tot.len91
  %choice.res152 = phi ptr [ %concat.str99, %concat.tot.len91 ], [ %ret.ub.alloc151, %concat.tot.len138 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res152, align 8
  ret { i64, ptr } %ret.pack

str_ok62:                                         ; preds = %tag.slow_check67, %choice.then53
  %concat.lhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %concat.lhs69 = load ptr, ptr %concat.lhs68, align 8
  %concat.rhs70 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %concat.rhs71 = load i64, ptr %concat.rhs70, align 8
  %concat.rhs72 = and i64 %concat.rhs71, 281474976710655
  %str.tag73 = lshr i64 %concat.rhs71, 48
  %tag.immortal75 = icmp eq i64 %str.tag73, 0
  %active.gen76 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current77 = icmp eq i64 %str.tag73, %active.gen76
  %tag.fast.ok78 = or i1 %tag.immortal75, %tag.current77
  br i1 %tag.fast.ok78, label %str_ok74, label %tag.slow_check79

tag.slow_check67:                                 ; preds = %choice.then53
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag61)
  br label %str_ok62

str_ok74:                                         ; preds = %tag.slow_check79, %str_ok62
  %concat.rhs80 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %concat.rhs81 = load ptr, ptr %concat.rhs80, align 8
  %concat.sum.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs60, i64 %concat.rhs72)
  %sum83 = extractvalue { i64, i1 } %concat.sum.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.sum.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.sum.len85

tag.slow_check79:                                 ; preds = %str_ok62
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag73)
  br label %str_ok74

concat.sum.len85:                                 ; preds = %abort.dead87, %str_ok74
  %concat.tot.len88 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum83, i64 1)
  %sum89 = extractvalue { i64, i1 } %concat.tot.len88, 0
  %ovf90 = extractvalue { i64, i1 } %concat.tot.len88, 1
  br i1 %ovf90, label %str_overflow_abort92, label %concat.tot.len91

str_overflow_abort86:                             ; preds = %str_ok74
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %concat.sum.len85

concat.tot.len91:                                 ; preds = %abort.dead93, %concat.sum.len85
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 %sum89)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf95, ptr align 1 %concat.lhs69, i64 %concat.lhs60, i1 false)
  %concat.mid96 = getelementptr i8, ptr %concat.buf95, i64 %concat.lhs60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid96, ptr align 1 %concat.rhs81, i64 %concat.rhs72, i1 false)
  %concat.nul97 = getelementptr i8, ptr %concat.buf95, i64 %sum83
  store i8 0, ptr %concat.nul97, align 1
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 16)
  %str.build.len.gep100 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 0
  store i64 %sum83, ptr %str.build.len.gep100, align 8
  %str.build.data.gep101 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 1
  store ptr %concat.buf95, ptr %str.build.data.gep101, align 8
  br label %choice.exit55

str_overflow_abort92:                             ; preds = %concat.sum.len85
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %concat.tot.len91

str_ok109:                                        ; preds = %tag.slow_check114, %choice.else54
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 1
  %concat.lhs116 = load ptr, ptr %concat.lhs115, align 8
  %concat.rhs117 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 0
  %concat.rhs118 = load i64, ptr %concat.rhs117, align 8
  %concat.rhs119 = and i64 %concat.rhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.rhs118, 48
  %tag.immortal122 = icmp eq i64 %str.tag120, 0
  %active.gen123 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current124 = icmp eq i64 %str.tag120, %active.gen123
  %tag.fast.ok125 = or i1 %tag.immortal122, %tag.current124
  br i1 %tag.fast.ok125, label %str_ok121, label %tag.slow_check126

tag.slow_check114:                                ; preds = %choice.else54
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag108)
  br label %str_ok109

str_ok121:                                        ; preds = %tag.slow_check126, %str_ok109
  %concat.rhs127 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 1
  %concat.rhs128 = load ptr, ptr %concat.rhs127, align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs107, i64 %concat.rhs119)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

tag.slow_check126:                                ; preds = %str_ok109
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag120)
  br label %str_ok121

concat.sum.len132:                                ; preds = %abort.dead134, %str_ok121
  %concat.tot.len135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum136 = extractvalue { i64, i1 } %concat.tot.len135, 0
  %ovf137 = extractvalue { i64, i1 } %concat.tot.len135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %concat.tot.len138

str_overflow_abort133:                            ; preds = %str_ok121
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %concat.sum.len132

concat.tot.len138:                                ; preds = %abort.dead140, %concat.sum.len132
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf142, ptr align 1 %concat.lhs116, i64 %concat.lhs107, i1 false)
  %concat.mid143 = getelementptr i8, ptr %concat.buf142, i64 %concat.lhs107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid143, ptr align 1 %concat.rhs128, i64 %concat.rhs119, i1 false)
  %concat.nul144 = getelementptr i8, ptr %concat.buf142, i64 %sum130
  store i8 0, ptr %concat.nul144, align 1
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 16)
  %str.build.len.gep147 = getelementptr inbounds { i64, ptr }, ptr %concat.str146, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep147, align 8
  %str.build.data.gep148 = getelementptr inbounds { i64, ptr }, ptr %concat.str146, i32 0, i32 1
  store ptr %concat.buf142, ptr %str.build.data.gep148, align 8
  %call.res149 = call { i64, ptr } @"path::join"(ptr %var.load102, ptr %concat.str146)
  %arena.cur150 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 16)
  store { i64, ptr } %call.res149, ptr %ret.ub.alloc151, align 8
  br label %choice.exit55

str_overflow_abort139:                            ; preds = %concat.sum.len132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %concat.tot.len138
}

define ptr @"path::split"(ptr %0) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.72 = alloca i64, align 8
  %loop.idx.72 = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
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
  store ptr %a.new, ptr %var.out, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %abort.dead, %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len3

str_ok:                                           ; preds = %tag.slow_check, %b.buf.len3
  store i64 0, ptr %loop.idx.72, align 8
  br label %loop.header.72

tag.slow_check:                                   ; preds = %b.buf.len3
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.72:                                   ; preds = %loop.latch.72, %str_ok
  %counter.load = load i64, ptr %loop.idx.72, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query6
  br i1 %loop.cond, label %loop.body.72, label %loop.exit.nat.72

loop.body.72:                                     ; preds = %loop.header.72
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.72, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.i, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load12 = load i64, ptr %var.c, align 8
  %call.res = call i1 @"path::is_sep"(i64 %var.load12)
  br i1 %call.res, label %choice.then, label %choice.else

loop.exit.nat.72:                                 ; preds = %loop.header.72
  br label %loop.exit.72

loop.latch.72:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.72, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.72, align 8
  br label %loop.header.72

loop.exit.72:                                     ; preds = %loop.exit.nat.72
  %var.load50 = load ptr, ptr %var.cur, align 8
  %b.len51 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load50, i32 0, i32 0
  %b.len52 = load i64, ptr %b.len51, align 8
  %cmptmp53 = icmp sgt i64 %b.len52, 0
  br i1 %cmptmp53, label %choice.then54, label %choice.exit55

choice.then:                                      ; preds = %loop.body.72
  %var.load13 = load ptr, ptr %var.cur, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %b.len14 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sgt i64 %b.len14, 0
  br i1 %cmptmp, label %choice.then15, label %choice.exit16

choice.else:                                      ; preds = %loop.body.72
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load35 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load35, 0
  %b.b.le255 = icmp sle i64 %var.load35, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.exit:                                      ; preds = %b.push_done, %choice.exit16
  br label %loop.latch.72

choice.then15:                                    ; preds = %choice.then
  %var.load17 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 0
  %b.freeze.len18 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  %b.freeze.data19 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit16:                                    ; preds = %a.store, %choice.then
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then15
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data19, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data19, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data19, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len18, 1
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data19, i64 %b.freeze.len18, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len18
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then15
  %b.freeze.data21 = phi ptr [ %b.freeze.data19, %choice.then15 ], [ %b.freeze.data19, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len18, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data21, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %b.freeze.done
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  %a.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 0
  store i64 0, ptr %a.len.gep27, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  store ptr %a.create24, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.freeze.done
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len30 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap31 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len30, %a.cap31
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data32 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len33 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data32, i64 %a.cur.len33
  %slot.p2i = ptrtoint ptr %builder.freeze to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len33, 1
  %b.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep34, align 8
  br label %choice.exit16

b.byte_ok:                                        ; preds = %abort.dead36, %choice.else
  %b.byte.i8 = trunc i64 %var.load35 to i8
  %b.len37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len38 = load i64, ptr %b.len37, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap39 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data40 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len38, %b.cap39
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.else
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap39, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len43

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len43
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data47 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len48 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data47, i64 %b.cur.len48
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len48, 1
  %b.nul = getelementptr i8, ptr %b.cur.data47, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep49, align 8
  br label %choice.exit

b.new.buf.len43:                                  ; preds = %abort.dead45, %b.grow
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data40, i64 %b.len38, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len38
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort44:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %b.new.buf.len43

choice.then54:                                    ; preds = %loop.exit.72
  %var.load56 = load ptr, ptr %var.cur, align 8
  %b.freeze.len57 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  %b.freeze.len58 = load i64, ptr %b.freeze.len57, align 8
  %b.freeze.data59 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  %b.freeze.data60 = load ptr, ptr %b.freeze.data59, align 8
  %b.freeze.arena61 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep62 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena61, i32 0, i32 1
  %b.freeze.nc63 = load i64, ptr %b.freeze.nc.gep62, align 8
  %b.freeze.has.chunk64 = icmp sgt i64 %b.freeze.nc63, 0
  br i1 %b.freeze.has.chunk64, label %b.freeze.check65, label %b.freeze.done67

choice.exit55:                                    ; preds = %a.store109, %loop.exit.72
  %var.load123 = load ptr, ptr %var.out, align 8
  %a.load124 = load ptr, ptr %var.out, align 8
  %a.null125 = icmp eq ptr %a.load124, null
  br i1 %a.null125, label %a.create126, label %a.after127

b.freeze.check65:                                 ; preds = %choice.then54
  %b.freeze.last.idx68 = sub i64 %b.freeze.nc63, 1
  %b.freeze.chunks.gep69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena61, i32 0, i32 3
  %b.freeze.chunk.slot70 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep69, i64 0, i64 %b.freeze.last.idx68
  %b.freeze.last.chunk71 = load ptr, ptr %b.freeze.chunk.slot70, align 8
  %b.freeze.off.gep72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena61, i32 0, i32 2
  %b.freeze.off73 = load i64, ptr %b.freeze.off.gep72, align 8
  %b.freeze.bump74 = getelementptr i8, ptr %b.freeze.last.chunk71, i64 %b.freeze.off73
  %b.freeze.cap.gep75 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena61, i32 0, i32 0
  %b.freeze.cap76 = load i64, ptr %b.freeze.cap.gep75, align 8
  %b.freeze.chunk.end77 = getelementptr i8, ptr %b.freeze.last.chunk71, i64 %b.freeze.cap76
  %b.freeze.ge.chunk78 = icmp uge ptr %b.freeze.data60, %b.freeze.last.chunk71
  %b.freeze.lt.end79 = icmp ult ptr %b.freeze.data60, %b.freeze.chunk.end77
  %b.freeze.in.chunk80 = and i1 %b.freeze.ge.chunk78, %b.freeze.lt.end79
  %b.freeze.ge.bump81 = icmp uge ptr %b.freeze.data60, %b.freeze.bump74
  %b.freeze.reaped82 = and i1 %b.freeze.in.chunk80, %b.freeze.ge.bump81
  br i1 %b.freeze.reaped82, label %b.freeze.copy66, label %b.freeze.done67

b.freeze.copy66:                                  ; preds = %b.freeze.check65
  %b.freeze.alen83 = add i64 %b.freeze.len58, 1
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %b.freeze.alen83)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh85, ptr align 1 %b.freeze.data60, i64 %b.freeze.len58, i1 false)
  %b.freeze.nul86 = getelementptr i8, ptr %b.freeze.fresh85, i64 %b.freeze.len58
  store i8 0, ptr %b.freeze.nul86, align 1
  br label %b.freeze.done67

b.freeze.done67:                                  ; preds = %b.freeze.copy66, %b.freeze.check65, %choice.then54
  %b.freeze.data87 = phi ptr [ %b.freeze.data60, %choice.then54 ], [ %b.freeze.data60, %b.freeze.check65 ], [ %b.freeze.fresh85, %b.freeze.copy66 ]
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep90 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze89, i32 0, i32 0
  store i64 %b.freeze.len58, ptr %str.build.len.gep90, align 8
  %str.build.data.gep91 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze89, i32 0, i32 1
  store ptr %b.freeze.data87, ptr %str.build.data.gep91, align 8
  %b.freeze.rst.len92 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len92, align 8
  %b.freeze.rst.data93 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data93, align 8
  %b.freeze.rst.cap94 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap94, align 8
  %a.load95 = load ptr, ptr %var.out, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

a.create97:                                       ; preds = %b.freeze.done67
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
  store ptr %a.create100, ptr %var.out, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %b.freeze.done67
  %a.load2106 = load ptr, ptr %var.out, align 8
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
  %slot.p2i120 = ptrtoint ptr %builder.freeze89 to i64
  store i64 %slot.p2i120, ptr %a.elem.gep119, align 8
  %a.next.len121 = add i64 %a.cur.len118, 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  store i64 %a.next.len121, ptr %b.len.gep122, align 8
  br label %choice.exit55

a.create126:                                      ; preds = %choice.exit55
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 24)
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 128)
  %a.len.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 0
  store i64 0, ptr %a.len.gep132, align 8
  %a.data.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 1
  store ptr %a.buf131, ptr %a.data.gep133, align 8
  %a.cap.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 2
  store i64 16, ptr %a.cap.gep134, align 8
  store ptr %a.create129, ptr %var.out, align 8
  br label %a.after127

a.after127:                                       ; preds = %a.create126, %choice.exit55
  %a.load2135 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2135
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"path::posix_normalize"(ptr %0) #0 {
entry:
  %var._552 = alloca ptr, align 8
  %var._549 = alloca ptr, align 8
  %var._436 = alloca i64, align 8
  %var._i435 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._232 = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._167 = alloca i64, align 8
  %var._i166 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._133 = alloca ptr, align 8
  %var._130 = alloca ptr, align 8
  %var.n_segs = alloca i64, align 8
  %var.seg = alloca ptr, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.segs = alloca ptr, align 8
  %var.abs = alloca i1, align 1
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load3)
  store i1 %call.res, ptr %var.abs, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load8 = load ptr, ptr %var.p, align 8
  %str.len.query9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag12 = lshr i64 %str.len.query10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len6

str_ok13:                                         ; preds = %tag.slow_check18, %b.buf.len6
  store i64 %str.len.query11, ptr %var.len, align 8
  %var.load19 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load19, 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

tag.slow_check18:                                 ; preds = %b.buf.len6
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

loop.header.73:                                   ; preds = %loop.latch.73, %str_ok13
  %counter.load = load i64, ptr %loop.idx.73, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.73, label %loop.exit.nat.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %cmptmp22 = icmp eq i64 %var.load20, %var.load21
  store i1 %cmptmp22, ptr %var.is_end, align 1
  %var.load23 = load i1, ptr %var.is_end, align 1
  br i1 %var.load23, label %choice.then24, label %choice.else

loop.exit.nat.73:                                 ; preds = %loop.header.73
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit36
  %step.val342 = load i64, ptr %loop.step.73, align 8
  %loop.next343 = add i64 %counter.load, %step.val342
  store i64 %loop.next343, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %loop.exit.nat.73
  %var.load344 = load ptr, ptr %var.p, align 8
  %str.len.query345 = getelementptr inbounds { i64, ptr }, ptr %var.load344, i32 0, i32 0
  %str.len.query346 = load i64, ptr %str.len.query345, align 8
  %str.len.query347 = and i64 %str.len.query346, 281474976710655
  %str.tag348 = lshr i64 %str.len.query346, 48
  %tag.immortal350 = icmp eq i64 %str.tag348, 0
  %active.gen351 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current352 = icmp eq i64 %str.tag348, %active.gen351
  %tag.fast.ok353 = or i1 %tag.immortal350, %tag.current352
  br i1 %tag.fast.ok353, label %str_ok349, label %tag.slow_check354

choice.then24:                                    ; preds = %loop.body.73
  br label %choice.exit25

choice.else:                                      ; preds = %loop.body.73
  %var.load26 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load30, %s.read.len28
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit25:                                    ; preds = %idx_ok, %choice.then24
  %choice.res = phi i32 [ 47, %choice.then24 ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load32 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load32 to i64
  %cmptmp33 = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp33, label %choice.then34, label %choice.else35

idx_ok:                                           ; preds = %abort.dead31, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit25

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %idx_ok

choice.then34:                                    ; preds = %choice.exit25
  %var.load37 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 0
  %b.freeze.len38 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 1
  %b.freeze.data39 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else35:                                    ; preds = %choice.exit25
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load323 = load i32, ptr %var.c, align 4
  %coerce.sext324 = sext i32 %var.load323 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext324, 128
  %br.cmp2 = icmp slt i64 %coerce.sext324, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext324, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len325 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len325, i64 %br.width)
  %sum326 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf327 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf327, label %str_overflow_abort329, label %b.rn.new.len328

choice.exit36:                                    ; preds = %br.done.77, %choice.exit66
  br label %loop.latch.73

b.freeze.check:                                   ; preds = %choice.then34
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
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data39, i64 %b.freeze.len38, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len38
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then34
  %b.freeze.data41 = phi ptr [ %b.freeze.data39, %choice.then34 ], [ %b.freeze.data39, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load43 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %eq.lhs.len44 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len45 = and i64 %eq.lhs.len44, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len46 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len45, %eq.rhs.len46
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %eq.lhs.data47 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data47, ptr %eq.rhs.data, i64 %eq.lhs.len45)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %str.eq.merge
  %var.load48 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len49, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %eq.rhs.len52 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len53 = and i64 %eq.rhs.len52, 281474976710655
  %eq.len54 = icmp eq i64 %eq.lhs.len51, %eq.rhs.len53
  br i1 %eq.len54, label %str.eq.then55, label %str.eq.else56

and.74.else:                                      ; preds = %str.eq.merge
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %str.eq.merge57
  %and.74.phi = phi i1 [ %str.neq64, %str.eq.merge57 ], [ %str.neq, %and.74.else ]
  br i1 %and.74.phi, label %choice.then65, label %choice.exit66

str.eq.then55:                                    ; preds = %and.74.then
  %eq.lhs.data58 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %eq.lhs.data59 = load ptr, ptr %eq.lhs.data58, align 8
  %eq.rhs.data60 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp61 = call i32 @memcmp(ptr %eq.lhs.data59, ptr %eq.rhs.data60, i64 %eq.lhs.len51)
  %eq.cmp.zero62 = icmp eq i32 %eq.memcmp61, 0
  br label %str.eq.merge57

str.eq.else56:                                    ; preds = %and.74.then
  br label %str.eq.merge57

str.eq.merge57:                                   ; preds = %str.eq.else56, %str.eq.then55
  %str.eq.result63 = phi i1 [ %eq.cmp.zero62, %str.eq.then55 ], [ false, %str.eq.else56 ]
  %str.neq64 = xor i1 %str.eq.result63, true
  br label %and.74.exit

choice.then65:                                    ; preds = %and.74.exit
  %var.load67 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %eq.lhs.len69 = load i64, ptr %eq.lhs.len68, align 8
  %eq.lhs.len70 = and i64 %eq.lhs.len69, 281474976710655
  %eq.rhs.len71 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %eq.len73 = icmp eq i64 %eq.lhs.len70, %eq.rhs.len72
  br i1 %eq.len73, label %str.eq.then74, label %str.eq.else75

choice.exit66:                                    ; preds = %choice.exit85, %and.74.exit
  br label %choice.exit36

str.eq.then74:                                    ; preds = %choice.then65
  %eq.lhs.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data77, align 8
  %eq.rhs.data79 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp80 = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data79, i64 %eq.lhs.len70)
  %eq.cmp.zero81 = icmp eq i32 %eq.memcmp80, 0
  br label %str.eq.merge76

str.eq.else75:                                    ; preds = %choice.then65
  br label %str.eq.merge76

str.eq.merge76:                                   ; preds = %str.eq.else75, %str.eq.then74
  %str.eq.result82 = phi i1 [ %eq.cmp.zero81, %str.eq.then74 ], [ false, %str.eq.else75 ]
  br i1 %str.eq.result82, label %choice.then83, label %choice.else84

choice.then83:                                    ; preds = %str.eq.merge76
  %var.load86 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else84:                                    ; preds = %str.eq.merge76
  %var.load294 = load ptr, ptr %var.seg, align 8
  %a.load295 = load ptr, ptr %var.segs, align 8
  %a.null296 = icmp eq ptr %a.load295, null
  br i1 %a.null296, label %a.create297, label %a.after298

choice.exit85:                                    ; preds = %a.store309, %choice.exit153
  br label %choice.exit66

a.create:                                         ; preds = %choice.then83
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 24)
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 128)
  %a.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 0
  store i64 0, ptr %a.len.gep91, align 8
  %a.data.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 1
  store ptr %a.buf90, ptr %a.data.gep92, align 8
  %a.cap.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 2
  store i64 16, ptr %a.cap.gep93, align 8
  store ptr %a.create88, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then83
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query94 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query94, ptr %var.n_segs, align 8
  %var.load95 = load i64, ptr %var.n_segs, align 8
  %cmptmp96 = icmp sgt i64 %var.load95, 0
  br i1 %cmptmp96, label %and.75.then, label %and.75.else

and.75.then:                                      ; preds = %a.after
  %var.load97 = load ptr, ptr %var.segs, align 8
  %a.load98 = load ptr, ptr %var.segs, align 8
  %a.null99 = icmp eq ptr %a.load98, null
  br i1 %a.null99, label %a.create100, label %a.after101

and.75.else:                                      ; preds = %a.after
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge143
  %and.75.phi = phi i1 [ %str.neq150, %str.eq.merge143 ], [ %cmptmp96, %and.75.else ]
  br i1 %and.75.phi, label %choice.then151, label %choice.else152

a.create100:                                      ; preds = %and.75.then
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 24)
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 128)
  %a.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 0
  store i64 0, ptr %a.len.gep106, align 8
  %a.data.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 1
  store ptr %a.buf105, ptr %a.data.gep107, align 8
  %a.cap.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 2
  store i64 16, ptr %a.cap.gep108, align 8
  store ptr %a.create103, ptr %var.segs, align 8
  br label %a.after101

a.after101:                                       ; preds = %a.create100, %and.75.then
  %a.load2109 = load ptr, ptr %var.segs, align 8
  %var.load110 = load i64, ptr %var.n_segs, align 8
  %subtmp = sub i64 %var.load110, 1
  %a.rd.nonnull = icmp ne ptr %a.load2109, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after101
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  %a.rd.len111 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len111
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 1
  %a.rd.data112 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data112, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after101
  %arena.cur113 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 277, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 57, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 56)
  %err.code.gep116 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 0
  store i64 4011, ptr %err.code.gep116, align 8
  %err.msg.gep117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep117, align 8
  %err.file.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep118, align 8
  %err.line.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 3
  store i64 277, ptr %err.line.gep119, align 8
  %err.col.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 4
  store i64 57, ptr %err.col.gep120, align 8
  %err.ctx.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc115, i32 0, i32 5
  %err.ctx0.gep122 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep121, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep122, align 8
  %err.ctx1.gep123 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep121, i32 0, i32 1
  store i64 %a.rd.len111, ptr %err.ctx1.gep123, align 8
  %err.p2i124 = ptrtoint ptr %err.alloc115 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i124, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag125 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag125, label %choice.then126, label %choice.else127

choice.then126:                                   ; preds = %a.rd.done
  %ram.pay129 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay129 to ptr
  store ptr %pay.ptr, ptr %var._130, align 8
  br label %choice.exit128

choice.else127:                                   ; preds = %a.rd.done
  %ram.pay131 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr132 = inttoptr i64 %ram.pay131 to ptr
  store ptr %pay.ptr132, ptr %var._133, align 8
  br label %choice.exit128

choice.exit128:                                   ; preds = %choice.else127, %choice.then126
  %choice.res134 = phi ptr [ %pay.ptr, %choice.then126 ], [ @str.6.struct, %choice.else127 ]
  %eq.lhs.len135 = getelementptr inbounds { i64, ptr }, ptr %choice.res134, i32 0, i32 0
  %eq.lhs.len136 = load i64, ptr %eq.lhs.len135, align 8
  %eq.lhs.len137 = and i64 %eq.lhs.len136, 281474976710655
  %eq.rhs.len138 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len139 = and i64 %eq.rhs.len138, 281474976710655
  %eq.len140 = icmp eq i64 %eq.lhs.len137, %eq.rhs.len139
  br i1 %eq.len140, label %str.eq.then141, label %str.eq.else142

str.eq.then141:                                   ; preds = %choice.exit128
  %eq.lhs.data144 = getelementptr inbounds { i64, ptr }, ptr %choice.res134, i32 0, i32 1
  %eq.lhs.data145 = load ptr, ptr %eq.lhs.data144, align 8
  %eq.rhs.data146 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp147 = call i32 @memcmp(ptr %eq.lhs.data145, ptr %eq.rhs.data146, i64 %eq.lhs.len137)
  %eq.cmp.zero148 = icmp eq i32 %eq.memcmp147, 0
  br label %str.eq.merge143

str.eq.else142:                                   ; preds = %choice.exit128
  br label %str.eq.merge143

str.eq.merge143:                                  ; preds = %str.eq.else142, %str.eq.then141
  %str.eq.result149 = phi i1 [ %eq.cmp.zero148, %str.eq.then141 ], [ false, %str.eq.else142 ]
  %str.neq150 = xor i1 %str.eq.result149, true
  br label %and.75.exit

choice.then151:                                   ; preds = %and.75.exit
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 24)
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 128)
  %a.len.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new155, i32 0, i32 0
  store i64 0, ptr %a.len.gep158, align 8
  %a.data.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new155, i32 0, i32 1
  store ptr %a.buf157, ptr %a.data.gep159, align 8
  %a.cap.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new155, i32 0, i32 2
  store i64 16, ptr %a.cap.gep160, align 8
  store ptr %a.new155, ptr %var.kept, align 8
  %var.load161 = load i64, ptr %var.n_segs, align 8
  %subtmp162 = sub i64 %var.load161, 1
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.76

choice.else152:                                   ; preds = %and.75.exit
  %var.load264 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load264, true
  br i1 %nottmp, label %choice.then265, label %choice.exit266

choice.exit153:                                   ; preds = %choice.exit266, %a.after255
  br label %choice.exit85

loop.header.76:                                   ; preds = %loop.latch.76, %choice.then151
  %counter.load163 = load i64, ptr %loop.idx.76, align 8
  %loop.cond164 = icmp slt i64 %counter.load163, %subtmp162
  br i1 %loop.cond164, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i165 = sub i64 %counter.load163, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i165, ptr %var._i166, align 8
  store i64 %counter.load163, ptr %var._167, align 8
  store i64 %counter.load163, ptr %var.k, align 8
  %var.load168 = load ptr, ptr %var.segs, align 8
  %a.load169 = load ptr, ptr %var.segs, align 8
  %a.null170 = icmp eq ptr %a.load169, null
  br i1 %a.null170, label %a.create171, label %a.after172

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load163, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load251 = load ptr, ptr %var.kept, align 8
  %a.load252 = load ptr, ptr %var.kept, align 8
  %a.null253 = icmp eq ptr %a.load252, null
  br i1 %a.null253, label %a.create254, label %a.after255

a.create171:                                      ; preds = %loop.body.76
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 24)
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 128)
  %a.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 0
  store i64 0, ptr %a.len.gep177, align 8
  %a.data.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 1
  store ptr %a.buf176, ptr %a.data.gep178, align 8
  %a.cap.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 2
  store i64 16, ptr %a.cap.gep179, align 8
  store ptr %a.create174, ptr %var.segs, align 8
  br label %a.after172

a.after172:                                       ; preds = %a.create171, %loop.body.76
  %a.load2180 = load ptr, ptr %var.segs, align 8
  %var.load181 = load i64, ptr %var.k, align 8
  %a.rd.nonnull182 = icmp ne ptr %a.load2180, null
  br i1 %a.rd.nonnull182, label %a.rd.check183, label %a.rd.err.null185

a.rd.check183:                                    ; preds = %a.after172
  %a.rd.len188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  %a.rd.len189 = load i64, ptr %a.rd.len188, align 8
  %a.rd.ge0190 = icmp sge i64 %var.load181, 0
  %a.rd.lt191 = icmp slt i64 %var.load181, %a.rd.len189
  %a.rd.bounds192 = and i1 %a.rd.ge0190, %a.rd.lt191
  br i1 %a.rd.bounds192, label %a.rd.ok184, label %a.rd.err.oob186

a.rd.ok184:                                       ; preds = %a.rd.check183
  %a.rd.data193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 1
  %a.rd.data194 = load ptr, ptr %a.rd.data193, align 8
  %a.rd.elem.gep195 = getelementptr i64, ptr %a.rd.data194, i64 %var.load181
  %a.rd.elem196 = load i64, ptr %a.rd.elem.gep195, align 8
  br label %a.rd.done187

a.rd.err.null185:                                 ; preds = %a.after172
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 56)
  %err.code.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 0
  store i64 4011, ptr %err.code.gep199, align 8
  %err.msg.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep200, align 8
  %err.file.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep201, align 8
  %err.line.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 3
  store i64 280, ptr %err.line.gep202, align 8
  %err.col.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 4
  store i64 68, ptr %err.col.gep203, align 8
  %err.ctx.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 5
  %err.ctx0.gep205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep204, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep205, align 8
  %err.ctx1.gep206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep204, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep206, align 8
  %err.p2i207 = ptrtoint ptr %err.alloc198 to i64
  br label %a.rd.done187

a.rd.err.oob186:                                  ; preds = %a.rd.check183
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 56)
  %err.code.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 0
  store i64 4011, ptr %err.code.gep210, align 8
  %err.msg.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep211, align 8
  %err.file.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep212, align 8
  %err.line.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 3
  store i64 280, ptr %err.line.gep213, align 8
  %err.col.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 4
  store i64 68, ptr %err.col.gep214, align 8
  %err.ctx.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 5
  %err.ctx0.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 0
  store i64 %var.load181, ptr %err.ctx0.gep216, align 8
  %err.ctx1.gep217 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 1
  store i64 %a.rd.len189, ptr %err.ctx1.gep217, align 8
  %err.p2i218 = ptrtoint ptr %err.alloc209 to i64
  br label %a.rd.done187

a.rd.done187:                                     ; preds = %a.rd.err.oob186, %a.rd.err.null185, %a.rd.ok184
  %a.rd.tag219 = phi i1 [ true, %a.rd.ok184 ], [ false, %a.rd.err.null185 ], [ false, %a.rd.err.oob186 ]
  %a.rd.pay220 = phi i64 [ %a.rd.elem196, %a.rd.ok184 ], [ %err.p2i207, %a.rd.err.null185 ], [ %err.p2i218, %a.rd.err.oob186 ]
  %ram.tag221 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag219, 0
  %ram.pay222 = insertvalue { i1, i64 } %ram.tag221, i64 %a.rd.pay220, 1
  %ram.tag223 = extractvalue { i1, i64 } %ram.pay222, 0
  br i1 %ram.tag223, label %choice.then224, label %choice.else225

choice.then224:                                   ; preds = %a.rd.done187
  %ram.pay227 = extractvalue { i1, i64 } %ram.pay222, 1
  %pay.ptr228 = inttoptr i64 %ram.pay227 to ptr
  store ptr %pay.ptr228, ptr %var._229, align 8
  br label %choice.exit226

choice.else225:                                   ; preds = %a.rd.done187
  %ram.pay230 = extractvalue { i1, i64 } %ram.pay222, 1
  %pay.ptr231 = inttoptr i64 %ram.pay230 to ptr
  store ptr %pay.ptr231, ptr %var._232, align 8
  br label %choice.exit226

choice.exit226:                                   ; preds = %choice.else225, %choice.then224
  %choice.res233 = phi ptr [ %pay.ptr228, %choice.then224 ], [ @str.6.struct, %choice.else225 ]
  %a.load234 = load ptr, ptr %var.kept, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

a.create236:                                      ; preds = %choice.exit226
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 24)
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 128)
  %a.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 0
  store i64 0, ptr %a.len.gep242, align 8
  %a.data.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 1
  store ptr %a.buf241, ptr %a.data.gep243, align 8
  %a.cap.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep244, align 8
  store ptr %a.create239, ptr %var.kept, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %choice.exit226
  %a.load2245 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after237
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2245, i32 0, i32 0
  %a.len246 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2245, i32 0, i32 2
  %a.cap247 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len246, %a.cap247
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2245)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2245, i32 0, i32 1
  %a.cur.data248 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2245, i32 0, i32 0
  %a.cur.len249 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data248, i64 %a.cur.len249
  %slot.p2i = ptrtoint ptr %choice.res233 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len249, 1
  %b.len.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2245, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep250, align 8
  br label %loop.latch.76

a.create254:                                      ; preds = %loop.exit.76
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 24)
  %arena.cur258 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 128)
  %a.len.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 0
  store i64 0, ptr %a.len.gep260, align 8
  %a.data.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 1
  store ptr %a.buf259, ptr %a.data.gep261, align 8
  %a.cap.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 2
  store i64 16, ptr %a.cap.gep262, align 8
  store ptr %a.create257, ptr %var.kept, align 8
  br label %a.after255

a.after255:                                       ; preds = %a.create254, %loop.exit.76
  %a.load2263 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2263, ptr %var.segs, align 8
  br label %choice.exit153

choice.then265:                                   ; preds = %choice.else152
  %a.load267 = load ptr, ptr %var.segs, align 8
  %a.null268 = icmp eq ptr %a.load267, null
  br i1 %a.null268, label %a.create269, label %a.after270

choice.exit266:                                   ; preds = %a.store281, %choice.else152
  br label %choice.exit153

a.create269:                                      ; preds = %choice.then265
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
  store ptr %a.create272, ptr %var.segs, align 8
  br label %a.after270

a.after270:                                       ; preds = %a.create269, %choice.then265
  %a.load2278 = load ptr, ptr %var.segs, align 8
  br label %a.check279

a.check279:                                       ; preds = %a.after270
  %a.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 0
  %a.len283 = load i64, ptr %a.len282, align 8
  %a.cap284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 2
  %a.cap285 = load i64, ptr %a.cap284, align 8
  %a.needs.grow286 = icmp eq i64 %a.len283, %a.cap285
  br i1 %a.needs.grow286, label %a.grow280, label %a.store281

a.grow280:                                        ; preds = %a.check279
  call void @dva_array_grow(ptr %a.load2278)
  br label %a.store281

a.store281:                                       ; preds = %a.grow280, %a.check279
  %a.cur.data287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 1
  %a.cur.data288 = load ptr, ptr %a.cur.data287, align 8
  %a.cur.len289 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 0
  %a.cur.len290 = load i64, ptr %a.cur.len289, align 8
  %a.elem.gep291 = getelementptr i64, ptr %a.cur.data288, i64 %a.cur.len290
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep291, align 8
  %a.next.len292 = add i64 %a.cur.len290, 1
  %b.len.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2278, i32 0, i32 0
  store i64 %a.next.len292, ptr %b.len.gep293, align 8
  br label %choice.exit266

a.create297:                                      ; preds = %choice.else84
  %arena.cur299 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create300 = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 24)
  %arena.cur301 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf302 = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 128)
  %a.len.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 0
  store i64 0, ptr %a.len.gep303, align 8
  %a.data.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 1
  store ptr %a.buf302, ptr %a.data.gep304, align 8
  %a.cap.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create300, i32 0, i32 2
  store i64 16, ptr %a.cap.gep305, align 8
  store ptr %a.create300, ptr %var.segs, align 8
  br label %a.after298

a.after298:                                       ; preds = %a.create297, %choice.else84
  %a.load2306 = load ptr, ptr %var.segs, align 8
  br label %a.check307

a.check307:                                       ; preds = %a.after298
  %a.len310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 0
  %a.len311 = load i64, ptr %a.len310, align 8
  %a.cap312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 2
  %a.cap313 = load i64, ptr %a.cap312, align 8
  %a.needs.grow314 = icmp eq i64 %a.len311, %a.cap313
  br i1 %a.needs.grow314, label %a.grow308, label %a.store309

a.grow308:                                        ; preds = %a.check307
  call void @dva_array_grow(ptr %a.load2306)
  br label %a.store309

a.store309:                                       ; preds = %a.grow308, %a.check307
  %a.cur.data315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 1
  %a.cur.data316 = load ptr, ptr %a.cur.data315, align 8
  %a.cur.len317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 0
  %a.cur.len318 = load i64, ptr %a.cur.len317, align 8
  %a.elem.gep319 = getelementptr i64, ptr %a.cur.data316, i64 %a.cur.len318
  %slot.p2i320 = ptrtoint ptr %var.load294 to i64
  store i64 %slot.p2i320, ptr %a.elem.gep319, align 8
  %a.next.len321 = add i64 %a.cur.len318, 1
  %b.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2306, i32 0, i32 0
  store i64 %a.next.len321, ptr %b.len.gep322, align 8
  br label %choice.exit85

b.rn.new.len328:                                  ; preds = %abort.dead330, %choice.else35
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap331 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap331, %sum326
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort329:                            ; preds = %choice.else35
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead330:                                    ; No predecessors!
  br label %b.rn.new.len328

b.grow2:                                          ; preds = %b.rn.new.len328
  %b.cap2 = mul i64 %b.cap331, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum326
  %b.new.cap = select i1 %b.cap.need, i64 %sum326, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2332 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2333 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum334 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf335 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf335, label %str_overflow_abort337, label %b.new.buf.len2336

b.nogrow2:                                        ; preds = %b.rn.new.len328
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2336
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data340 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data340, i64 %b.rn.cur.len325
  br i1 %br.cmp1, label %br.b1.77, label %br.c2.77

b.new.buf.len2336:                                ; preds = %abort.dead338, %b.grow2
  %arena.cur339 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 %sum334)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2333, i64 %b.cur.len2332, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2332
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort337:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead338:                                    ; No predecessors!
  br label %b.new.buf.len2336

br.b1.77:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext324 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.77

br.c2.77:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.77, label %br.c3.77

br.b2.77:                                         ; preds = %br.c2.77
  %br.sh6 = lshr i64 %coerce.sext324, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext324, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.77

br.c3.77:                                         ; preds = %br.c2.77
  br i1 %br.cmp3, label %br.b3.77, label %br.b4.77

br.b3.77:                                         ; preds = %br.c3.77
  %br.sh12 = lshr i64 %coerce.sext324, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext324, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext324, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.77

br.b4.77:                                         ; preds = %br.c3.77
  %br.sh18 = lshr i64 %coerce.sext324, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext324, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext324, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext324, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.77

br.done.77:                                       ; preds = %br.b4.77, %br.b3.77, %br.b2.77, %br.b1.77
  %br.nul = getelementptr i8, ptr %b.rn.data340, i64 %sum326
  store i8 0, ptr %br.nul, align 1
  %b.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum326, ptr %b.len.gep341, align 8
  br label %choice.exit36

str_ok349:                                        ; preds = %tag.slow_check354, %loop.exit.73
  %addtmp355 = add i64 %str.len.query347, 2
  %cap.neg = icmp slt i64 %addtmp355, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp355
  %b.data.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum360 = extractvalue { i64, i1 } %b.buf.len359, 0
  %ovf361 = extractvalue { i64, i1 } %b.buf.len359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %b.buf.len362

tag.slow_check354:                                ; preds = %loop.exit.73
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag348)
  br label %str_ok349

b.buf.len362:                                     ; preds = %abort.dead364, %str_ok349
  %arena.cur365 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 %sum360)
  %b.nul0367 = getelementptr i8, ptr %b.buf366, i64 0
  store i8 0, ptr %b.nul0367, align 1
  store i64 0, ptr %b.len.gep357, align 8
  store ptr %b.buf366, ptr %b.data.gep356, align 8
  store i64 %cap.safe, ptr %b.cap.gep358, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %var.load368 = load i1, ptr %var.abs, align 1
  br i1 %var.load368, label %choice.then369, label %choice.exit370

str_overflow_abort363:                            ; preds = %str_ok349
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead364:                                    ; No predecessors!
  br label %b.buf.len362

choice.then369:                                   ; preds = %b.buf.len362
  %b.load371 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 0
  %b.rn.cur.len373 = load i64, ptr %b.rn.cur.len372, align 8
  %b.rn.new.len374 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len373, i64 1)
  %sum375 = extractvalue { i64, i1 } %b.rn.new.len374, 0
  %ovf376 = extractvalue { i64, i1 } %b.rn.new.len374, 1
  br i1 %ovf376, label %str_overflow_abort378, label %b.rn.new.len377

choice.exit370:                                   ; preds = %br.done.78, %b.buf.len362
  %var.load417 = load ptr, ptr %var.segs, align 8
  %a.load418 = load ptr, ptr %var.segs, align 8
  %a.null419 = icmp eq ptr %a.load418, null
  br i1 %a.null419, label %a.create420, label %a.after421

b.rn.new.len377:                                  ; preds = %abort.dead379, %choice.then369
  %b.cap380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 2
  %b.cap381 = load i64, ptr %b.cap380, align 8
  %b.need.grow382 = icmp slt i64 %b.cap381, %sum375
  br i1 %b.need.grow382, label %b.grow2383, label %b.nogrow2384

str_overflow_abort378:                            ; preds = %choice.then369
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead379:                                    ; No predecessors!
  br label %b.rn.new.len377

b.grow2383:                                       ; preds = %b.rn.new.len377
  %b.cap2386 = mul i64 %b.cap381, 2
  %b.cap.small387 = icmp slt i64 %b.cap2386, 16
  %b.cap.grow388 = select i1 %b.cap.small387, i64 16, i64 %b.cap2386
  %b.cap.need389 = icmp slt i64 %b.cap.grow388, %sum375
  %b.new.cap390 = select i1 %b.cap.need389, i64 %sum375, i64 %b.cap.grow388
  %b.cur.len2391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 0
  %b.cur.len2392 = load i64, ptr %b.cur.len2391, align 8
  %b.cur.data2393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 1
  %b.cur.data2394 = load ptr, ptr %b.cur.data2393, align 8
  %b.new.buf.len2395 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap390, i64 1)
  %sum396 = extractvalue { i64, i1 } %b.new.buf.len2395, 0
  %ovf397 = extractvalue { i64, i1 } %b.new.buf.len2395, 1
  br i1 %ovf397, label %str_overflow_abort399, label %b.new.buf.len2398

b.nogrow2384:                                     ; preds = %b.rn.new.len377
  br label %b.grow_done385

b.grow_done385:                                   ; preds = %b.nogrow2384, %b.new.buf.len2398
  %b.rn.data406 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 1
  %b.rn.data407 = load ptr, ptr %b.rn.data406, align 8
  %b.rn.dst408 = getelementptr i8, ptr %b.rn.data407, i64 %b.rn.cur.len373
  br i1 true, label %br.b1.78, label %br.c2.78

b.new.buf.len2398:                                ; preds = %abort.dead400, %b.grow2383
  %arena.cur401 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 %sum396)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2402, ptr align 1 %b.cur.data2394, i64 %b.cur.len2392, i1 false)
  %b.grow2.nul403 = getelementptr i8, ptr %b.new.buf2402, i64 %b.cur.len2392
  store i8 0, ptr %b.grow2.nul403, align 1
  %b.new.data2.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 1
  store ptr %b.new.buf2402, ptr %b.new.data2.gep404, align 8
  %b.new.cap2.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 2
  store i64 %b.new.cap390, ptr %b.new.cap2.gep405, align 8
  br label %b.grow_done385

str_overflow_abort399:                            ; preds = %b.grow2383
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead400:                                    ; No predecessors!
  br label %b.new.buf.len2398

br.b1.78:                                         ; preds = %b.grow_done385
  store i8 47, ptr %b.rn.dst408, align 1
  br label %br.done.78

br.c2.78:                                         ; preds = %b.grow_done385
  br i1 true, label %br.b2.78, label %br.c3.78

br.b2.78:                                         ; preds = %br.c2.78
  store i8 -64, ptr %b.rn.dst408, align 1
  %br.dst1409 = getelementptr i8, ptr %b.rn.dst408, i64 1
  store i8 -81, ptr %br.dst1409, align 1
  br label %br.done.78

br.c3.78:                                         ; preds = %br.c2.78
  br i1 true, label %br.b3.78, label %br.b4.78

br.b3.78:                                         ; preds = %br.c3.78
  store i8 -32, ptr %b.rn.dst408, align 1
  %br.dst1.3410 = getelementptr i8, ptr %b.rn.dst408, i64 1
  store i8 -128, ptr %br.dst1.3410, align 1
  %br.dst2.3411 = getelementptr i8, ptr %b.rn.dst408, i64 2
  store i8 -81, ptr %br.dst2.3411, align 1
  br label %br.done.78

br.b4.78:                                         ; preds = %br.c3.78
  store i8 -16, ptr %b.rn.dst408, align 1
  %br.dst1.4412 = getelementptr i8, ptr %b.rn.dst408, i64 1
  store i8 -128, ptr %br.dst1.4412, align 1
  %br.dst2.4413 = getelementptr i8, ptr %b.rn.dst408, i64 2
  store i8 -128, ptr %br.dst2.4413, align 1
  %br.dst3.4414 = getelementptr i8, ptr %b.rn.dst408, i64 3
  store i8 -81, ptr %br.dst3.4414, align 1
  br label %br.done.78

br.done.78:                                       ; preds = %br.b4.78, %br.b3.78, %br.b2.78, %br.b1.78
  %br.nul415 = getelementptr i8, ptr %b.rn.data407, i64 %sum375
  store i8 0, ptr %br.nul415, align 1
  %b.len.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load371, i32 0, i32 0
  store i64 %sum375, ptr %b.len.gep416, align 8
  br label %choice.exit370

a.create420:                                      ; preds = %choice.exit370
  %arena.cur422 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 24)
  %arena.cur424 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf425 = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 128)
  %a.len.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 0
  store i64 0, ptr %a.len.gep426, align 8
  %a.data.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 1
  store ptr %a.buf425, ptr %a.data.gep427, align 8
  %a.cap.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 2
  store i64 16, ptr %a.cap.gep428, align 8
  store ptr %a.create423, ptr %var.segs, align 8
  br label %a.after421

a.after421:                                       ; preds = %a.create420, %choice.exit370
  %a.load2429 = load ptr, ptr %var.segs, align 8
  %a.len.query430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 0
  %a.len.query431 = load i64, ptr %a.len.query430, align 8
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after421
  %counter.load432 = load i64, ptr %loop.idx.79, align 8
  %loop.cond433 = icmp slt i64 %counter.load432, %a.len.query431
  br i1 %loop.cond433, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i434 = sub i64 %counter.load432, 0
  store i64 1, ptr %loop.step.79, align 8
  store i64 %loop.rel.i434, ptr %var._i435, align 8
  store i64 %counter.load432, ptr %var._436, align 8
  store i64 %counter.load432, ptr %var.idx, align 8
  %var.load437 = load i64, ptr %var.idx, align 8
  %cmptmp438 = icmp sgt i64 %var.load437, 0
  br i1 %cmptmp438, label %choice.then439, label %choice.exit440

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %b.grow_done568
  %step.val591 = load i64, ptr %loop.step.79, align 8
  %loop.next592 = add i64 %counter.load432, %step.val591
  store i64 %loop.next592, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %var.load593 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load593, i32 0, i32 0
  %b.len594 = load i64, ptr %b.len, align 8
  %cmptmp595 = icmp eq i64 %b.len594, 0
  br i1 %cmptmp595, label %choice.then596, label %choice.else597

choice.then439:                                   ; preds = %loop.body.79
  %b.load441 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.rn.cur.len443 = load i64, ptr %b.rn.cur.len442, align 8
  %b.rn.new.len444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len443, i64 1)
  %sum445 = extractvalue { i64, i1 } %b.rn.new.len444, 0
  %ovf446 = extractvalue { i64, i1 } %b.rn.new.len444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %b.rn.new.len447

choice.exit440:                                   ; preds = %br.done.80, %loop.body.79
  %b.load487 = load ptr, ptr %var.out, align 8
  %var.load488 = load ptr, ptr %var.segs, align 8
  %a.load489 = load ptr, ptr %var.segs, align 8
  %a.null490 = icmp eq ptr %a.load489, null
  br i1 %a.null490, label %a.create491, label %a.after492

b.rn.new.len447:                                  ; preds = %abort.dead449, %choice.then439
  %b.cap450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  %b.cap451 = load i64, ptr %b.cap450, align 8
  %b.need.grow452 = icmp slt i64 %b.cap451, %sum445
  br i1 %b.need.grow452, label %b.grow2453, label %b.nogrow2454

str_overflow_abort448:                            ; preds = %choice.then439
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead449:                                    ; No predecessors!
  br label %b.rn.new.len447

b.grow2453:                                       ; preds = %b.rn.new.len447
  %b.cap2456 = mul i64 %b.cap451, 2
  %b.cap.small457 = icmp slt i64 %b.cap2456, 16
  %b.cap.grow458 = select i1 %b.cap.small457, i64 16, i64 %b.cap2456
  %b.cap.need459 = icmp slt i64 %b.cap.grow458, %sum445
  %b.new.cap460 = select i1 %b.cap.need459, i64 %sum445, i64 %b.cap.grow458
  %b.cur.len2461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.cur.len2462 = load i64, ptr %b.cur.len2461, align 8
  %b.cur.data2463 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.cur.data2464 = load ptr, ptr %b.cur.data2463, align 8
  %b.new.buf.len2465 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap460, i64 1)
  %sum466 = extractvalue { i64, i1 } %b.new.buf.len2465, 0
  %ovf467 = extractvalue { i64, i1 } %b.new.buf.len2465, 1
  br i1 %ovf467, label %str_overflow_abort469, label %b.new.buf.len2468

b.nogrow2454:                                     ; preds = %b.rn.new.len447
  br label %b.grow_done455

b.grow_done455:                                   ; preds = %b.nogrow2454, %b.new.buf.len2468
  %b.rn.data476 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.rn.data477 = load ptr, ptr %b.rn.data476, align 8
  %b.rn.dst478 = getelementptr i8, ptr %b.rn.data477, i64 %b.rn.cur.len443
  br i1 true, label %br.b1.80, label %br.c2.80

b.new.buf.len2468:                                ; preds = %abort.dead470, %b.grow2453
  %arena.cur471 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 %sum466)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2472, ptr align 1 %b.cur.data2464, i64 %b.cur.len2462, i1 false)
  %b.grow2.nul473 = getelementptr i8, ptr %b.new.buf2472, i64 %b.cur.len2462
  store i8 0, ptr %b.grow2.nul473, align 1
  %b.new.data2.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  store ptr %b.new.buf2472, ptr %b.new.data2.gep474, align 8
  %b.new.cap2.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  store i64 %b.new.cap460, ptr %b.new.cap2.gep475, align 8
  br label %b.grow_done455

str_overflow_abort469:                            ; preds = %b.grow2453
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead470:                                    ; No predecessors!
  br label %b.new.buf.len2468

br.b1.80:                                         ; preds = %b.grow_done455
  store i8 47, ptr %b.rn.dst478, align 1
  br label %br.done.80

br.c2.80:                                         ; preds = %b.grow_done455
  br i1 true, label %br.b2.80, label %br.c3.80

br.b2.80:                                         ; preds = %br.c2.80
  store i8 -64, ptr %b.rn.dst478, align 1
  %br.dst1479 = getelementptr i8, ptr %b.rn.dst478, i64 1
  store i8 -81, ptr %br.dst1479, align 1
  br label %br.done.80

br.c3.80:                                         ; preds = %br.c2.80
  br i1 true, label %br.b3.80, label %br.b4.80

br.b3.80:                                         ; preds = %br.c3.80
  store i8 -32, ptr %b.rn.dst478, align 1
  %br.dst1.3480 = getelementptr i8, ptr %b.rn.dst478, i64 1
  store i8 -128, ptr %br.dst1.3480, align 1
  %br.dst2.3481 = getelementptr i8, ptr %b.rn.dst478, i64 2
  store i8 -81, ptr %br.dst2.3481, align 1
  br label %br.done.80

br.b4.80:                                         ; preds = %br.c3.80
  store i8 -16, ptr %b.rn.dst478, align 1
  %br.dst1.4482 = getelementptr i8, ptr %b.rn.dst478, i64 1
  store i8 -128, ptr %br.dst1.4482, align 1
  %br.dst2.4483 = getelementptr i8, ptr %b.rn.dst478, i64 2
  store i8 -128, ptr %br.dst2.4483, align 1
  %br.dst3.4484 = getelementptr i8, ptr %b.rn.dst478, i64 3
  store i8 -81, ptr %br.dst3.4484, align 1
  br label %br.done.80

br.done.80:                                       ; preds = %br.b4.80, %br.b3.80, %br.b2.80, %br.b1.80
  %br.nul485 = getelementptr i8, ptr %b.rn.data477, i64 %sum445
  store i8 0, ptr %br.nul485, align 1
  %b.len.gep486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  store i64 %sum445, ptr %b.len.gep486, align 8
  br label %choice.exit440

a.create491:                                      ; preds = %choice.exit440
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
  store ptr %a.create494, ptr %var.segs, align 8
  br label %a.after492

a.after492:                                       ; preds = %a.create491, %choice.exit440
  %a.load2500 = load ptr, ptr %var.segs, align 8
  %var.load501 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull502 = icmp ne ptr %a.load2500, null
  br i1 %a.rd.nonnull502, label %a.rd.check503, label %a.rd.err.null505

a.rd.check503:                                    ; preds = %a.after492
  %a.rd.len508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 0
  %a.rd.len509 = load i64, ptr %a.rd.len508, align 8
  %a.rd.ge0510 = icmp sge i64 %var.load501, 0
  %a.rd.lt511 = icmp slt i64 %var.load501, %a.rd.len509
  %a.rd.bounds512 = and i1 %a.rd.ge0510, %a.rd.lt511
  br i1 %a.rd.bounds512, label %a.rd.ok504, label %a.rd.err.oob506

a.rd.ok504:                                       ; preds = %a.rd.check503
  %a.rd.data513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 1
  %a.rd.data514 = load ptr, ptr %a.rd.data513, align 8
  %a.rd.elem.gep515 = getelementptr i64, ptr %a.rd.data514, i64 %var.load501
  %a.rd.elem516 = load i64, ptr %a.rd.elem.gep515, align 8
  br label %a.rd.done507

a.rd.err.null505:                                 ; preds = %a.after492
  %arena.cur517 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc518 = call ptr @dva_arena_alloc(ptr %arena.cur517, i64 56)
  %err.code.gep519 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 0
  store i64 4011, ptr %err.code.gep519, align 8
  %err.msg.gep520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep520, align 8
  %err.file.gep521 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep521, align 8
  %err.line.gep522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 3
  store i64 290, ptr %err.line.gep522, align 8
  %err.col.gep523 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 4
  store i64 25, ptr %err.col.gep523, align 8
  %err.ctx.gep524 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc518, i32 0, i32 5
  %err.ctx0.gep525 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep524, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep525, align 8
  %err.ctx1.gep526 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep524, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep526, align 8
  %err.p2i527 = ptrtoint ptr %err.alloc518 to i64
  br label %a.rd.done507

a.rd.err.oob506:                                  ; preds = %a.rd.check503
  %arena.cur528 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 56)
  %err.code.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 0
  store i64 4011, ptr %err.code.gep530, align 8
  %err.msg.gep531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep531, align 8
  %err.file.gep532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep532, align 8
  %err.line.gep533 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 3
  store i64 290, ptr %err.line.gep533, align 8
  %err.col.gep534 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 4
  store i64 25, ptr %err.col.gep534, align 8
  %err.ctx.gep535 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 5
  %err.ctx0.gep536 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep535, i32 0, i32 0
  store i64 %var.load501, ptr %err.ctx0.gep536, align 8
  %err.ctx1.gep537 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep535, i32 0, i32 1
  store i64 %a.rd.len509, ptr %err.ctx1.gep537, align 8
  %err.p2i538 = ptrtoint ptr %err.alloc529 to i64
  br label %a.rd.done507

a.rd.done507:                                     ; preds = %a.rd.err.oob506, %a.rd.err.null505, %a.rd.ok504
  %a.rd.tag539 = phi i1 [ true, %a.rd.ok504 ], [ false, %a.rd.err.null505 ], [ false, %a.rd.err.oob506 ]
  %a.rd.pay540 = phi i64 [ %a.rd.elem516, %a.rd.ok504 ], [ %err.p2i527, %a.rd.err.null505 ], [ %err.p2i538, %a.rd.err.oob506 ]
  %ram.tag541 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag539, 0
  %ram.pay542 = insertvalue { i1, i64 } %ram.tag541, i64 %a.rd.pay540, 1
  %ram.tag543 = extractvalue { i1, i64 } %ram.pay542, 0
  br i1 %ram.tag543, label %choice.then544, label %choice.else545

choice.then544:                                   ; preds = %a.rd.done507
  %ram.pay547 = extractvalue { i1, i64 } %ram.pay542, 1
  %pay.ptr548 = inttoptr i64 %ram.pay547 to ptr
  store ptr %pay.ptr548, ptr %var._549, align 8
  br label %choice.exit546

choice.else545:                                   ; preds = %a.rd.done507
  %ram.pay550 = extractvalue { i1, i64 } %ram.pay542, 1
  %pay.ptr551 = inttoptr i64 %ram.pay550 to ptr
  store ptr %pay.ptr551, ptr %var._552, align 8
  br label %choice.exit546

choice.exit546:                                   ; preds = %choice.else545, %choice.then544
  %choice.res553 = phi ptr [ %pay.ptr548, %choice.then544 ], [ @str.6.struct, %choice.else545 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res553, i32 0, i32 0
  %app.str.len554 = load i64, ptr %app.str.len, align 8
  %app.str.len555 = and i64 %app.str.len554, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res553, i32 0, i32 1
  %app.str.data556 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 0
  %b.app.cur.len557 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len557, i64 %app.str.len555)
  %sum558 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf559 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf559, label %str_overflow_abort561, label %b.app.new.len560

b.app.new.len560:                                 ; preds = %abort.dead562, %choice.exit546
  %b.cap563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 2
  %b.cap564 = load i64, ptr %b.cap563, align 8
  %b.need.grow565 = icmp slt i64 %b.cap564, %sum558
  br i1 %b.need.grow565, label %b.grow2566, label %b.nogrow2567

str_overflow_abort561:                            ; preds = %choice.exit546
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead562:                                    ; No predecessors!
  br label %b.app.new.len560

b.grow2566:                                       ; preds = %b.app.new.len560
  %b.cap2569 = mul i64 %b.cap564, 2
  %b.cap.small570 = icmp slt i64 %b.cap2569, 16
  %b.cap.grow571 = select i1 %b.cap.small570, i64 16, i64 %b.cap2569
  %b.cap.need572 = icmp slt i64 %b.cap.grow571, %sum558
  %b.new.cap573 = select i1 %b.cap.need572, i64 %sum558, i64 %b.cap.grow571
  %b.cur.len2574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 0
  %b.cur.len2575 = load i64, ptr %b.cur.len2574, align 8
  %b.cur.data2576 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 1
  %b.cur.data2577 = load ptr, ptr %b.cur.data2576, align 8
  %b.new.buf.len2578 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap573, i64 1)
  %sum579 = extractvalue { i64, i1 } %b.new.buf.len2578, 0
  %ovf580 = extractvalue { i64, i1 } %b.new.buf.len2578, 1
  br i1 %ovf580, label %str_overflow_abort582, label %b.new.buf.len2581

b.nogrow2567:                                     ; preds = %b.app.new.len560
  br label %b.grow_done568

b.grow_done568:                                   ; preds = %b.nogrow2567, %b.new.buf.len2581
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 1
  %b.app.data589 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data589, i64 %b.app.cur.len557
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data556, i64 %app.str.len555, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data589, i64 %sum558
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 0
  store i64 %sum558, ptr %b.len.gep590, align 8
  br label %loop.latch.79

b.new.buf.len2581:                                ; preds = %abort.dead583, %b.grow2566
  %arena.cur584 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2585 = call ptr @dva_arena_alloc(ptr %arena.cur584, i64 %sum579)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2585, ptr align 1 %b.cur.data2577, i64 %b.cur.len2575, i1 false)
  %b.grow2.nul586 = getelementptr i8, ptr %b.new.buf2585, i64 %b.cur.len2575
  store i8 0, ptr %b.grow2.nul586, align 1
  %b.new.data2.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 1
  store ptr %b.new.buf2585, ptr %b.new.data2.gep587, align 8
  %b.new.cap2.gep588 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load487, i32 0, i32 2
  store i64 %b.new.cap573, ptr %b.new.cap2.gep588, align 8
  br label %b.grow_done568

str_overflow_abort582:                            ; preds = %b.grow2566
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead583:                                    ; No predecessors!
  br label %b.new.buf.len2581

choice.then596:                                   ; preds = %loop.exit.79
  br label %choice.exit598

choice.else597:                                   ; preds = %loop.exit.79
  %var.load599 = load ptr, ptr %var.out, align 8
  %b.freeze.len600 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load599, i32 0, i32 0
  %b.freeze.len601 = load i64, ptr %b.freeze.len600, align 8
  %b.freeze.data602 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load599, i32 0, i32 1
  %b.freeze.data603 = load ptr, ptr %b.freeze.data602, align 8
  %b.freeze.arena604 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep605 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena604, i32 0, i32 1
  %b.freeze.nc606 = load i64, ptr %b.freeze.nc.gep605, align 8
  %b.freeze.has.chunk607 = icmp sgt i64 %b.freeze.nc606, 0
  br i1 %b.freeze.has.chunk607, label %b.freeze.check608, label %b.freeze.done610

choice.exit598:                                   ; preds = %b.freeze.done610, %choice.then596
  %choice.res638 = phi ptr [ @str.5.struct, %choice.then596 ], [ %builder.freeze632, %b.freeze.done610 ]
  %ret.pack639 = load { i64, ptr }, ptr %choice.res638, align 8
  ret { i64, ptr } %ret.pack639

b.freeze.check608:                                ; preds = %choice.else597
  %b.freeze.last.idx611 = sub i64 %b.freeze.nc606, 1
  %b.freeze.chunks.gep612 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena604, i32 0, i32 3
  %b.freeze.chunk.slot613 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep612, i64 0, i64 %b.freeze.last.idx611
  %b.freeze.last.chunk614 = load ptr, ptr %b.freeze.chunk.slot613, align 8
  %b.freeze.off.gep615 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena604, i32 0, i32 2
  %b.freeze.off616 = load i64, ptr %b.freeze.off.gep615, align 8
  %b.freeze.bump617 = getelementptr i8, ptr %b.freeze.last.chunk614, i64 %b.freeze.off616
  %b.freeze.cap.gep618 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena604, i32 0, i32 0
  %b.freeze.cap619 = load i64, ptr %b.freeze.cap.gep618, align 8
  %b.freeze.chunk.end620 = getelementptr i8, ptr %b.freeze.last.chunk614, i64 %b.freeze.cap619
  %b.freeze.ge.chunk621 = icmp uge ptr %b.freeze.data603, %b.freeze.last.chunk614
  %b.freeze.lt.end622 = icmp ult ptr %b.freeze.data603, %b.freeze.chunk.end620
  %b.freeze.in.chunk623 = and i1 %b.freeze.ge.chunk621, %b.freeze.lt.end622
  %b.freeze.ge.bump624 = icmp uge ptr %b.freeze.data603, %b.freeze.bump617
  %b.freeze.reaped625 = and i1 %b.freeze.in.chunk623, %b.freeze.ge.bump624
  br i1 %b.freeze.reaped625, label %b.freeze.copy609, label %b.freeze.done610

b.freeze.copy609:                                 ; preds = %b.freeze.check608
  %b.freeze.alen626 = add i64 %b.freeze.len601, 1
  %arena.cur627 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh628 = call ptr @dva_arena_alloc(ptr %arena.cur627, i64 %b.freeze.alen626)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh628, ptr align 1 %b.freeze.data603, i64 %b.freeze.len601, i1 false)
  %b.freeze.nul629 = getelementptr i8, ptr %b.freeze.fresh628, i64 %b.freeze.len601
  store i8 0, ptr %b.freeze.nul629, align 1
  br label %b.freeze.done610

b.freeze.done610:                                 ; preds = %b.freeze.copy609, %b.freeze.check608, %choice.else597
  %b.freeze.data630 = phi ptr [ %b.freeze.data603, %choice.else597 ], [ %b.freeze.data603, %b.freeze.check608 ], [ %b.freeze.fresh628, %b.freeze.copy609 ]
  %arena.cur631 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 16)
  %str.build.len.gep633 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze632, i32 0, i32 0
  store i64 %b.freeze.len601, ptr %str.build.len.gep633, align 8
  %str.build.data.gep634 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze632, i32 0, i32 1
  store ptr %b.freeze.data630, ptr %str.build.data.gep634, align 8
  %b.freeze.rst.len635 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load599, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len635, align 8
  %b.freeze.rst.data636 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load599, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data636, align 8
  %b.freeze.rst.cap637 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load599, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap637, align 8
  br label %choice.exit598
}

define { i64, ptr } @"path::win_normalize"(ptr %0) #0 {
entry:
  %var._638 = alloca ptr, align 8
  %var._635 = alloca ptr, align 8
  %var._522 = alloca i64, align 8
  %var._i521 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._321 = alloca ptr, align 8
  %var._318 = alloca ptr, align 8
  %var._256 = alloca i64, align 8
  %var._i255 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._222 = alloca ptr, align 8
  %var._219 = alloca ptr, align 8
  %var.n_segs = alloca i64, align 8
  %var.seg = alloca ptr, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.segs = alloca ptr, align 8
  %var.prefix = alloca ptr, align 8
  %var.abs = alloca i1, align 1
  %var.rlen = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::win_root_len"(ptr %var.load3)
  store i64 %call.res, ptr %var.rlen, align 8
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res5 = call i1 @"path::win_is_abs"(ptr %var.load4)
  store i1 %call.res5, ptr %var.abs, align 1
  %var.load6 = load i64, ptr %var.rlen, align 8
  %cmptmp7 = icmp eq i64 %var.load6, 3
  br i1 %cmptmp7, label %choice.then8, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then8:                                     ; preds = %choice.exit
  %var.load10 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len12, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %rel.end = add i64 %s.read.len12, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %view.len, i64 1)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len14

choice.else:                                      ; preds = %choice.exit
  %var.load22 = load i64, ptr %var.rlen, align 8
  %cmptmp23 = icmp eq i64 %var.load22, 2
  br i1 %cmptmp23, label %choice.then24, label %choice.else25

choice.exit9:                                     ; preds = %choice.exit26, %concat.tot.len17
  %choice.res70 = phi ptr [ %concat.str, %concat.tot.len17 ], [ %choice.res69, %choice.exit26 ]
  store ptr %choice.res70, ptr %var.prefix, align 8
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf75 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.buf.len76

cat.sum.len14:                                    ; preds = %abort.dead, %choice.then8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %choice.then8
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len14

concat.tot.len17:                                 ; preds = %abort.dead19, %cat.sum.len14
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %cat.off = add i64 0, %view.len
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit9

str_overflow_abort18:                             ; preds = %cat.sum.len14
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %concat.tot.len17

choice.then24:                                    ; preds = %choice.else
  %var.load27 = load ptr, ptr %var.p, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %idx.oob = icmp uge i64 0, %s.read.len30
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else25:                                    ; preds = %choice.else
  %var.load63 = load i64, ptr %var.rlen, align 8
  %cmptmp64 = icmp eq i64 %var.load63, 1
  br i1 %cmptmp64, label %choice.then65, label %choice.else66

choice.exit26:                                    ; preds = %choice.exit67, %choice.exit37
  %choice.res69 = phi ptr [ %choice.res, %choice.exit37 ], [ %choice.res68, %choice.exit67 ]
  br label %choice.exit9

idx_ok:                                           ; preds = %abort.dead33, %choice.then24
  %s.byte.gep = getelementptr i8, ptr %s.read.data32, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res34 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res34, label %choice.then35, label %choice.else36

idx_oob:                                          ; preds = %choice.then24
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok

choice.then35:                                    ; preds = %idx_ok
  br label %choice.exit37

choice.else36:                                    ; preds = %idx_ok
  %var.load38 = load ptr, ptr %var.p, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %rel.start44 = add i64 %s.read.len41, 0
  %norm.start45 = select i1 false, i64 %rel.start44, i64 0
  %start.lt.046 = icmp slt i64 %norm.start45, 0
  %c.start.047 = select i1 %start.lt.046, i64 0, i64 %norm.start45
  %start.gt.len48 = icmp sgt i64 %c.start.047, %s.read.len41
  %final.start49 = select i1 %start.gt.len48, i64 %s.read.len41, i64 %c.start.047
  %rel.end50 = add i64 %s.read.len41, 2
  %norm.end51 = select i1 false, i64 %rel.end50, i64 2
  %end.lt.052 = icmp slt i64 %norm.end51, 0
  %c.end.053 = select i1 %end.lt.052, i64 0, i64 %norm.end51
  %end.gt.len54 = icmp sgt i64 %c.end.053, %s.read.len41
  %final.end55 = select i1 %end.gt.len54, i64 %s.read.len41, i64 %c.end.053
  %view.empty56 = icmp sle i64 %final.end55, %final.start49
  %view.len.sub57 = sub i64 %final.end55, %final.start49
  %view.len58 = select i1 %view.empty56, i64 0, i64 %view.len.sub57
  %view.data59 = getelementptr i8, ptr %s.read.data43, i64 %final.start49
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %str.build.len.gep61 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len58, ptr %str.build.len.gep61, align 8
  %str.build.data.gep62 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data59, ptr %str.build.data.gep62, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else36, %choice.then35
  %choice.res = phi ptr [ @str.11.struct, %choice.then35 ], [ %str.view, %choice.else36 ]
  br label %choice.exit26

choice.then65:                                    ; preds = %choice.else25
  br label %choice.exit67

choice.else66:                                    ; preds = %choice.else25
  br label %choice.exit67

choice.exit67:                                    ; preds = %choice.else66, %choice.then65
  %choice.res68 = phi ptr [ @str.4.struct, %choice.then65 ], [ @str.6.struct, %choice.else66 ]
  br label %choice.exit26

b.buf.len76:                                      ; preds = %abort.dead78, %choice.exit9
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load80 = load ptr, ptr %var.p, align 8
  %str.len.query81 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %str.len.query82 = load i64, ptr %str.len.query81, align 8
  %str.len.query83 = and i64 %str.len.query82, 281474976710655
  %str.tag84 = lshr i64 %str.len.query82, 48
  %tag.immortal86 = icmp eq i64 %str.tag84, 0
  %active.gen87 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current88 = icmp eq i64 %str.tag84, %active.gen87
  %tag.fast.ok89 = or i1 %tag.immortal86, %tag.current88
  br i1 %tag.fast.ok89, label %str_ok85, label %tag.slow_check90

str_overflow_abort77:                             ; preds = %choice.exit9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.buf.len76

str_ok85:                                         ; preds = %tag.slow_check90, %b.buf.len76
  store i64 %str.len.query83, ptr %var.len, align 8
  %var.load91 = load i64, ptr %var.len, align 8
  %var.load92 = load i64, ptr %var.rlen, align 8
  %subtmp = sub i64 %var.load91, %var.load92
  %addtmp = add i64 %subtmp, 1
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

tag.slow_check90:                                 ; preds = %b.buf.len76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag84)
  br label %str_ok85

loop.header.81:                                   ; preds = %loop.latch.81, %str_ok85
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load93 = load i64, ptr %var.rlen, align 8
  %var.load94 = load i64, ptr %var.k, align 8
  %addtmp95 = add i64 %var.load93, %var.load94
  store i64 %addtmp95, ptr %var.i, align 8
  %var.load96 = load i64, ptr %var.i, align 8
  %var.load97 = load i64, ptr %var.len, align 8
  %cmptmp98 = icmp eq i64 %var.load96, %var.load97
  store i1 %cmptmp98, ptr %var.is_end, align 1
  %var.load99 = load i1, ptr %var.is_end, align 1
  br i1 %var.load99, label %choice.then100, label %choice.else101

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit122
  %step.val431 = load i64, ptr %loop.step.81, align 8
  %loop.next432 = add i64 %counter.load, %step.val431
  store i64 %loop.next432, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load433 = load ptr, ptr %var.p, align 8
  %str.len.query434 = getelementptr inbounds { i64, ptr }, ptr %var.load433, i32 0, i32 0
  %str.len.query435 = load i64, ptr %str.len.query434, align 8
  %str.len.query436 = and i64 %str.len.query435, 281474976710655
  %str.tag437 = lshr i64 %str.len.query435, 48
  %tag.immortal439 = icmp eq i64 %str.tag437, 0
  %active.gen440 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current441 = icmp eq i64 %str.tag437, %active.gen440
  %tag.fast.ok442 = or i1 %tag.immortal439, %tag.current441
  br i1 %tag.fast.ok442, label %str_ok438, label %tag.slow_check443

choice.then100:                                   ; preds = %loop.body.81
  br label %choice.exit102

choice.else101:                                   ; preds = %loop.body.81
  %var.load103 = load ptr, ptr %var.p, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %var.load109 = load i64, ptr %var.i, align 8
  %idx.oob110 = icmp uge i64 %var.load109, %s.read.len106
  br i1 %idx.oob110, label %idx_oob112, label %idx_ok111

choice.exit102:                                   ; preds = %idx_ok111, %choice.then100
  %choice.res117 = phi i32 [ 92, %choice.then100 ], [ %coerce.trunc, %idx_ok111 ]
  store i32 %choice.res117, ptr %var.c, align 4
  %var.load118 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load118 to i64
  %call.res119 = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res119, label %choice.then120, label %choice.else121

idx_ok111:                                        ; preds = %abort.dead113, %choice.else101
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data108, i64 %var.load109
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  %coerce.trunc = trunc i64 %s.byte.val116 to i32
  br label %choice.exit102

idx_oob112:                                       ; preds = %choice.else101
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %idx_ok111

choice.then120:                                   ; preds = %choice.exit102
  %var.load123 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  %b.freeze.len124 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  %b.freeze.data125 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else121:                                   ; preds = %choice.exit102
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load412 = load i32, ptr %var.c, align 4
  %coerce.sext413 = sext i32 %var.load412 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext413, 128
  %br.cmp2 = icmp slt i64 %coerce.sext413, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext413, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len414 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len414, i64 %br.width)
  %sum415 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf416 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf416, label %str_overflow_abort418, label %b.rn.new.len417

choice.exit122:                                   ; preds = %br.done.85, %choice.exit154
  br label %loop.latch.81

b.freeze.check:                                   ; preds = %choice.then120
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data125, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data125, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data125, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len124, 1
  %arena.cur126 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data125, i64 %b.freeze.len124, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len124
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then120
  %b.freeze.data127 = phi ptr [ %b.freeze.data125, %choice.then120 ], [ %b.freeze.data125, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 16)
  %str.build.len.gep129 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len124, ptr %str.build.len.gep129, align 8
  %str.build.data.gep130 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data127, ptr %str.build.data.gep130, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load131 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %eq.lhs.len132 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len133 = and i64 %eq.lhs.len132, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len134 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len133, %eq.rhs.len134
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %eq.lhs.data135 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data135, ptr %eq.rhs.data, i64 %eq.lhs.len133)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %str.eq.merge
  %var.load136 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len137 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 0
  %eq.lhs.len138 = load i64, ptr %eq.lhs.len137, align 8
  %eq.lhs.len139 = and i64 %eq.lhs.len138, 281474976710655
  %eq.rhs.len140 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len141 = and i64 %eq.rhs.len140, 281474976710655
  %eq.len142 = icmp eq i64 %eq.lhs.len139, %eq.rhs.len141
  br i1 %eq.len142, label %str.eq.then143, label %str.eq.else144

and.82.else:                                      ; preds = %str.eq.merge
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge145
  %and.82.phi = phi i1 [ %str.neq152, %str.eq.merge145 ], [ %str.neq, %and.82.else ]
  br i1 %and.82.phi, label %choice.then153, label %choice.exit154

str.eq.then143:                                   ; preds = %and.82.then
  %eq.lhs.data146 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 1
  %eq.lhs.data147 = load ptr, ptr %eq.lhs.data146, align 8
  %eq.rhs.data148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp149 = call i32 @memcmp(ptr %eq.lhs.data147, ptr %eq.rhs.data148, i64 %eq.lhs.len139)
  %eq.cmp.zero150 = icmp eq i32 %eq.memcmp149, 0
  br label %str.eq.merge145

str.eq.else144:                                   ; preds = %and.82.then
  br label %str.eq.merge145

str.eq.merge145:                                  ; preds = %str.eq.else144, %str.eq.then143
  %str.eq.result151 = phi i1 [ %eq.cmp.zero150, %str.eq.then143 ], [ false, %str.eq.else144 ]
  %str.neq152 = xor i1 %str.eq.result151, true
  br label %and.82.exit

choice.then153:                                   ; preds = %and.82.exit
  %var.load155 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len156 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 0
  %eq.lhs.len157 = load i64, ptr %eq.lhs.len156, align 8
  %eq.lhs.len158 = and i64 %eq.lhs.len157, 281474976710655
  %eq.rhs.len159 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len160 = and i64 %eq.rhs.len159, 281474976710655
  %eq.len161 = icmp eq i64 %eq.lhs.len158, %eq.rhs.len160
  br i1 %eq.len161, label %str.eq.then162, label %str.eq.else163

choice.exit154:                                   ; preds = %choice.exit173, %and.82.exit
  br label %choice.exit122

str.eq.then162:                                   ; preds = %choice.then153
  %eq.lhs.data165 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 1
  %eq.lhs.data166 = load ptr, ptr %eq.lhs.data165, align 8
  %eq.rhs.data167 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp168 = call i32 @memcmp(ptr %eq.lhs.data166, ptr %eq.rhs.data167, i64 %eq.lhs.len158)
  %eq.cmp.zero169 = icmp eq i32 %eq.memcmp168, 0
  br label %str.eq.merge164

str.eq.else163:                                   ; preds = %choice.then153
  br label %str.eq.merge164

str.eq.merge164:                                  ; preds = %str.eq.else163, %str.eq.then162
  %str.eq.result170 = phi i1 [ %eq.cmp.zero169, %str.eq.then162 ], [ false, %str.eq.else163 ]
  br i1 %str.eq.result170, label %choice.then171, label %choice.else172

choice.then171:                                   ; preds = %str.eq.merge164
  %var.load174 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else172:                                   ; preds = %str.eq.merge164
  %var.load383 = load ptr, ptr %var.seg, align 8
  %a.load384 = load ptr, ptr %var.segs, align 8
  %a.null385 = icmp eq ptr %a.load384, null
  br i1 %a.null385, label %a.create386, label %a.after387

choice.exit173:                                   ; preds = %a.store398, %choice.exit242
  br label %choice.exit154

a.create:                                         ; preds = %choice.then171
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 24)
  %arena.cur177 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 128)
  %a.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 0
  store i64 0, ptr %a.len.gep179, align 8
  %a.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 1
  store ptr %a.buf178, ptr %a.data.gep180, align 8
  %a.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 2
  store i64 16, ptr %a.cap.gep181, align 8
  store ptr %a.create176, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then171
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query182 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query182, ptr %var.n_segs, align 8
  %var.load183 = load i64, ptr %var.n_segs, align 8
  %cmptmp184 = icmp sgt i64 %var.load183, 0
  br i1 %cmptmp184, label %and.83.then, label %and.83.else

and.83.then:                                      ; preds = %a.after
  %var.load185 = load ptr, ptr %var.segs, align 8
  %a.load186 = load ptr, ptr %var.segs, align 8
  %a.null187 = icmp eq ptr %a.load186, null
  br i1 %a.null187, label %a.create188, label %a.after189

and.83.else:                                      ; preds = %a.after
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %str.eq.merge232
  %and.83.phi = phi i1 [ %str.neq239, %str.eq.merge232 ], [ %cmptmp184, %and.83.else ]
  br i1 %and.83.phi, label %choice.then240, label %choice.else241

a.create188:                                      ; preds = %and.83.then
  %arena.cur190 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 24)
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 128)
  %a.len.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 0
  store i64 0, ptr %a.len.gep194, align 8
  %a.data.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 1
  store ptr %a.buf193, ptr %a.data.gep195, align 8
  %a.cap.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 2
  store i64 16, ptr %a.cap.gep196, align 8
  store ptr %a.create191, ptr %var.segs, align 8
  br label %a.after189

a.after189:                                       ; preds = %a.create188, %and.83.then
  %a.load2197 = load ptr, ptr %var.segs, align 8
  %var.load198 = load i64, ptr %var.n_segs, align 8
  %subtmp199 = sub i64 %var.load198, 1
  %a.rd.nonnull = icmp ne ptr %a.load2197, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after189
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2197, i32 0, i32 0
  %a.rd.len200 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp199, 0
  %a.rd.lt = icmp slt i64 %subtmp199, %a.rd.len200
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2197, i32 0, i32 1
  %a.rd.data201 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data201, i64 %subtmp199
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after189
  %arena.cur202 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 320, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 57, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 56)
  %err.code.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 0
  store i64 4011, ptr %err.code.gep205, align 8
  %err.msg.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep206, align 8
  %err.file.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep207, align 8
  %err.line.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 3
  store i64 320, ptr %err.line.gep208, align 8
  %err.col.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 4
  store i64 57, ptr %err.col.gep209, align 8
  %err.ctx.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 5
  %err.ctx0.gep211 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 0
  store i64 %subtmp199, ptr %err.ctx0.gep211, align 8
  %err.ctx1.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 1
  store i64 %a.rd.len200, ptr %err.ctx1.gep212, align 8
  %err.p2i213 = ptrtoint ptr %err.alloc204 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i213, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag214 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag214, label %choice.then215, label %choice.else216

choice.then215:                                   ; preds = %a.rd.done
  %ram.pay218 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay218 to ptr
  store ptr %pay.ptr, ptr %var._219, align 8
  br label %choice.exit217

choice.else216:                                   ; preds = %a.rd.done
  %ram.pay220 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr221 = inttoptr i64 %ram.pay220 to ptr
  store ptr %pay.ptr221, ptr %var._222, align 8
  br label %choice.exit217

choice.exit217:                                   ; preds = %choice.else216, %choice.then215
  %choice.res223 = phi ptr [ %pay.ptr, %choice.then215 ], [ @str.6.struct, %choice.else216 ]
  %eq.lhs.len224 = getelementptr inbounds { i64, ptr }, ptr %choice.res223, i32 0, i32 0
  %eq.lhs.len225 = load i64, ptr %eq.lhs.len224, align 8
  %eq.lhs.len226 = and i64 %eq.lhs.len225, 281474976710655
  %eq.rhs.len227 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len228 = and i64 %eq.rhs.len227, 281474976710655
  %eq.len229 = icmp eq i64 %eq.lhs.len226, %eq.rhs.len228
  br i1 %eq.len229, label %str.eq.then230, label %str.eq.else231

str.eq.then230:                                   ; preds = %choice.exit217
  %eq.lhs.data233 = getelementptr inbounds { i64, ptr }, ptr %choice.res223, i32 0, i32 1
  %eq.lhs.data234 = load ptr, ptr %eq.lhs.data233, align 8
  %eq.rhs.data235 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data234, ptr %eq.rhs.data235, i64 %eq.lhs.len226)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br label %str.eq.merge232

str.eq.else231:                                   ; preds = %choice.exit217
  br label %str.eq.merge232

str.eq.merge232:                                  ; preds = %str.eq.else231, %str.eq.then230
  %str.eq.result238 = phi i1 [ %eq.cmp.zero237, %str.eq.then230 ], [ false, %str.eq.else231 ]
  %str.neq239 = xor i1 %str.eq.result238, true
  br label %and.83.exit

choice.then240:                                   ; preds = %and.83.exit
  %arena.cur243 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 24)
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 128)
  %a.len.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new244, i32 0, i32 0
  store i64 0, ptr %a.len.gep247, align 8
  %a.data.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new244, i32 0, i32 1
  store ptr %a.buf246, ptr %a.data.gep248, align 8
  %a.cap.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new244, i32 0, i32 2
  store i64 16, ptr %a.cap.gep249, align 8
  store ptr %a.new244, ptr %var.kept, align 8
  %var.load250 = load i64, ptr %var.n_segs, align 8
  %subtmp251 = sub i64 %var.load250, 1
  store i64 0, ptr %loop.idx.84, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.84

choice.else241:                                   ; preds = %and.83.exit
  %var.load353 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load353, true
  br i1 %nottmp, label %choice.then354, label %choice.exit355

choice.exit242:                                   ; preds = %choice.exit355, %a.after344
  br label %choice.exit173

loop.header.84:                                   ; preds = %loop.latch.84, %choice.then240
  %counter.load252 = load i64, ptr %loop.idx.84, align 8
  %loop.cond253 = icmp slt i64 %counter.load252, %subtmp251
  br i1 %loop.cond253, label %loop.body.84, label %loop.exit.nat.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i254 = sub i64 %counter.load252, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i254, ptr %var._i255, align 8
  store i64 %counter.load252, ptr %var._256, align 8
  store i64 %counter.load252, ptr %var.m, align 8
  %var.load257 = load ptr, ptr %var.segs, align 8
  %a.load258 = load ptr, ptr %var.segs, align 8
  %a.null259 = icmp eq ptr %a.load258, null
  br i1 %a.null259, label %a.create260, label %a.after261

loop.exit.nat.84:                                 ; preds = %loop.header.84
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load252, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %loop.exit.nat.84
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load340 = load ptr, ptr %var.kept, align 8
  %a.load341 = load ptr, ptr %var.kept, align 8
  %a.null342 = icmp eq ptr %a.load341, null
  br i1 %a.null342, label %a.create343, label %a.after344

a.create260:                                      ; preds = %loop.body.84
  %arena.cur262 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 24)
  %arena.cur264 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 128)
  %a.len.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 0
  store i64 0, ptr %a.len.gep266, align 8
  %a.data.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 1
  store ptr %a.buf265, ptr %a.data.gep267, align 8
  %a.cap.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 2
  store i64 16, ptr %a.cap.gep268, align 8
  store ptr %a.create263, ptr %var.segs, align 8
  br label %a.after261

a.after261:                                       ; preds = %a.create260, %loop.body.84
  %a.load2269 = load ptr, ptr %var.segs, align 8
  %var.load270 = load i64, ptr %var.m, align 8
  %a.rd.nonnull271 = icmp ne ptr %a.load2269, null
  br i1 %a.rd.nonnull271, label %a.rd.check272, label %a.rd.err.null274

a.rd.check272:                                    ; preds = %a.after261
  %a.rd.len277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 0
  %a.rd.len278 = load i64, ptr %a.rd.len277, align 8
  %a.rd.ge0279 = icmp sge i64 %var.load270, 0
  %a.rd.lt280 = icmp slt i64 %var.load270, %a.rd.len278
  %a.rd.bounds281 = and i1 %a.rd.ge0279, %a.rd.lt280
  br i1 %a.rd.bounds281, label %a.rd.ok273, label %a.rd.err.oob275

a.rd.ok273:                                       ; preds = %a.rd.check272
  %a.rd.data282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 1
  %a.rd.data283 = load ptr, ptr %a.rd.data282, align 8
  %a.rd.elem.gep284 = getelementptr i64, ptr %a.rd.data283, i64 %var.load270
  %a.rd.elem285 = load i64, ptr %a.rd.elem.gep284, align 8
  br label %a.rd.done276

a.rd.err.null274:                                 ; preds = %a.after261
  %arena.cur286 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 56)
  %err.code.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 0
  store i64 4011, ptr %err.code.gep288, align 8
  %err.msg.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep289, align 8
  %err.file.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep290, align 8
  %err.line.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 3
  store i64 323, ptr %err.line.gep291, align 8
  %err.col.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 4
  store i64 68, ptr %err.col.gep292, align 8
  %err.ctx.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 5
  %err.ctx0.gep294 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep293, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep294, align 8
  %err.ctx1.gep295 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep293, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep295, align 8
  %err.p2i296 = ptrtoint ptr %err.alloc287 to i64
  br label %a.rd.done276

a.rd.err.oob275:                                  ; preds = %a.rd.check272
  %arena.cur297 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc298 = call ptr @dva_arena_alloc(ptr %arena.cur297, i64 56)
  %err.code.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 0
  store i64 4011, ptr %err.code.gep299, align 8
  %err.msg.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep300, align 8
  %err.file.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep301, align 8
  %err.line.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 3
  store i64 323, ptr %err.line.gep302, align 8
  %err.col.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 4
  store i64 68, ptr %err.col.gep303, align 8
  %err.ctx.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc298, i32 0, i32 5
  %err.ctx0.gep305 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep304, i32 0, i32 0
  store i64 %var.load270, ptr %err.ctx0.gep305, align 8
  %err.ctx1.gep306 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep304, i32 0, i32 1
  store i64 %a.rd.len278, ptr %err.ctx1.gep306, align 8
  %err.p2i307 = ptrtoint ptr %err.alloc298 to i64
  br label %a.rd.done276

a.rd.done276:                                     ; preds = %a.rd.err.oob275, %a.rd.err.null274, %a.rd.ok273
  %a.rd.tag308 = phi i1 [ true, %a.rd.ok273 ], [ false, %a.rd.err.null274 ], [ false, %a.rd.err.oob275 ]
  %a.rd.pay309 = phi i64 [ %a.rd.elem285, %a.rd.ok273 ], [ %err.p2i296, %a.rd.err.null274 ], [ %err.p2i307, %a.rd.err.oob275 ]
  %ram.tag310 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag308, 0
  %ram.pay311 = insertvalue { i1, i64 } %ram.tag310, i64 %a.rd.pay309, 1
  %ram.tag312 = extractvalue { i1, i64 } %ram.pay311, 0
  br i1 %ram.tag312, label %choice.then313, label %choice.else314

choice.then313:                                   ; preds = %a.rd.done276
  %ram.pay316 = extractvalue { i1, i64 } %ram.pay311, 1
  %pay.ptr317 = inttoptr i64 %ram.pay316 to ptr
  store ptr %pay.ptr317, ptr %var._318, align 8
  br label %choice.exit315

choice.else314:                                   ; preds = %a.rd.done276
  %ram.pay319 = extractvalue { i1, i64 } %ram.pay311, 1
  %pay.ptr320 = inttoptr i64 %ram.pay319 to ptr
  store ptr %pay.ptr320, ptr %var._321, align 8
  br label %choice.exit315

choice.exit315:                                   ; preds = %choice.else314, %choice.then313
  %choice.res322 = phi ptr [ %pay.ptr317, %choice.then313 ], [ @str.6.struct, %choice.else314 ]
  %a.load323 = load ptr, ptr %var.kept, align 8
  %a.null324 = icmp eq ptr %a.load323, null
  br i1 %a.null324, label %a.create325, label %a.after326

a.create325:                                      ; preds = %choice.exit315
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
  store ptr %a.create328, ptr %var.kept, align 8
  br label %a.after326

a.after326:                                       ; preds = %a.create325, %choice.exit315
  %a.load2334 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after326
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 0
  %a.len335 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 2
  %a.cap336 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len335, %a.cap336
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2334)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 1
  %a.cur.data337 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 0
  %a.cur.len338 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data337, i64 %a.cur.len338
  %slot.p2i = ptrtoint ptr %choice.res322 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len338, 1
  %b.len.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2334, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep339, align 8
  br label %loop.latch.84

a.create343:                                      ; preds = %loop.exit.84
  %arena.cur345 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 24)
  %arena.cur347 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 128)
  %a.len.gep349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 0
  store i64 0, ptr %a.len.gep349, align 8
  %a.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 1
  store ptr %a.buf348, ptr %a.data.gep350, align 8
  %a.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep351, align 8
  store ptr %a.create346, ptr %var.kept, align 8
  br label %a.after344

a.after344:                                       ; preds = %a.create343, %loop.exit.84
  %a.load2352 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2352, ptr %var.segs, align 8
  br label %choice.exit242

choice.then354:                                   ; preds = %choice.else241
  %a.load356 = load ptr, ptr %var.segs, align 8
  %a.null357 = icmp eq ptr %a.load356, null
  br i1 %a.null357, label %a.create358, label %a.after359

choice.exit355:                                   ; preds = %a.store370, %choice.else241
  br label %choice.exit242

a.create358:                                      ; preds = %choice.then354
  %arena.cur360 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create361 = call ptr @dva_arena_alloc(ptr %arena.cur360, i64 24)
  %arena.cur362 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 128)
  %a.len.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 0
  store i64 0, ptr %a.len.gep364, align 8
  %a.data.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 1
  store ptr %a.buf363, ptr %a.data.gep365, align 8
  %a.cap.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create361, i32 0, i32 2
  store i64 16, ptr %a.cap.gep366, align 8
  store ptr %a.create361, ptr %var.segs, align 8
  br label %a.after359

a.after359:                                       ; preds = %a.create358, %choice.then354
  %a.load2367 = load ptr, ptr %var.segs, align 8
  br label %a.check368

a.check368:                                       ; preds = %a.after359
  %a.len371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 0
  %a.len372 = load i64, ptr %a.len371, align 8
  %a.cap373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 2
  %a.cap374 = load i64, ptr %a.cap373, align 8
  %a.needs.grow375 = icmp eq i64 %a.len372, %a.cap374
  br i1 %a.needs.grow375, label %a.grow369, label %a.store370

a.grow369:                                        ; preds = %a.check368
  call void @dva_array_grow(ptr %a.load2367)
  br label %a.store370

a.store370:                                       ; preds = %a.grow369, %a.check368
  %a.cur.data376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 1
  %a.cur.data377 = load ptr, ptr %a.cur.data376, align 8
  %a.cur.len378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 0
  %a.cur.len379 = load i64, ptr %a.cur.len378, align 8
  %a.elem.gep380 = getelementptr i64, ptr %a.cur.data377, i64 %a.cur.len379
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep380, align 8
  %a.next.len381 = add i64 %a.cur.len379, 1
  %b.len.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2367, i32 0, i32 0
  store i64 %a.next.len381, ptr %b.len.gep382, align 8
  br label %choice.exit355

a.create386:                                      ; preds = %choice.else172
  %arena.cur388 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create389 = call ptr @dva_arena_alloc(ptr %arena.cur388, i64 24)
  %arena.cur390 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf391 = call ptr @dva_arena_alloc(ptr %arena.cur390, i64 128)
  %a.len.gep392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create389, i32 0, i32 0
  store i64 0, ptr %a.len.gep392, align 8
  %a.data.gep393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create389, i32 0, i32 1
  store ptr %a.buf391, ptr %a.data.gep393, align 8
  %a.cap.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create389, i32 0, i32 2
  store i64 16, ptr %a.cap.gep394, align 8
  store ptr %a.create389, ptr %var.segs, align 8
  br label %a.after387

a.after387:                                       ; preds = %a.create386, %choice.else172
  %a.load2395 = load ptr, ptr %var.segs, align 8
  br label %a.check396

a.check396:                                       ; preds = %a.after387
  %a.len399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2395, i32 0, i32 0
  %a.len400 = load i64, ptr %a.len399, align 8
  %a.cap401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2395, i32 0, i32 2
  %a.cap402 = load i64, ptr %a.cap401, align 8
  %a.needs.grow403 = icmp eq i64 %a.len400, %a.cap402
  br i1 %a.needs.grow403, label %a.grow397, label %a.store398

a.grow397:                                        ; preds = %a.check396
  call void @dva_array_grow(ptr %a.load2395)
  br label %a.store398

a.store398:                                       ; preds = %a.grow397, %a.check396
  %a.cur.data404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2395, i32 0, i32 1
  %a.cur.data405 = load ptr, ptr %a.cur.data404, align 8
  %a.cur.len406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2395, i32 0, i32 0
  %a.cur.len407 = load i64, ptr %a.cur.len406, align 8
  %a.elem.gep408 = getelementptr i64, ptr %a.cur.data405, i64 %a.cur.len407
  %slot.p2i409 = ptrtoint ptr %var.load383 to i64
  store i64 %slot.p2i409, ptr %a.elem.gep408, align 8
  %a.next.len410 = add i64 %a.cur.len407, 1
  %b.len.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2395, i32 0, i32 0
  store i64 %a.next.len410, ptr %b.len.gep411, align 8
  br label %choice.exit173

b.rn.new.len417:                                  ; preds = %abort.dead419, %choice.else121
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap420 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap420, %sum415
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort418:                            ; preds = %choice.else121
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead419:                                    ; No predecessors!
  br label %b.rn.new.len417

b.grow2:                                          ; preds = %b.rn.new.len417
  %b.cap2 = mul i64 %b.cap420, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum415
  %b.new.cap = select i1 %b.cap.need, i64 %sum415, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2421 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2422 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum423 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf424 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf424, label %str_overflow_abort426, label %b.new.buf.len2425

b.nogrow2:                                        ; preds = %b.rn.new.len417
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2425
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data429 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data429, i64 %b.rn.cur.len414
  br i1 %br.cmp1, label %br.b1.85, label %br.c2.85

b.new.buf.len2425:                                ; preds = %abort.dead427, %b.grow2
  %arena.cur428 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur428, i64 %sum423)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2422, i64 %b.cur.len2421, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2421
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort426:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead427:                                    ; No predecessors!
  br label %b.new.buf.len2425

br.b1.85:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext413 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.85

br.c2.85:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.85, label %br.c3.85

br.b2.85:                                         ; preds = %br.c2.85
  %br.sh6 = lshr i64 %coerce.sext413, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext413, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.85

br.c3.85:                                         ; preds = %br.c2.85
  br i1 %br.cmp3, label %br.b3.85, label %br.b4.85

br.b3.85:                                         ; preds = %br.c3.85
  %br.sh12 = lshr i64 %coerce.sext413, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext413, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext413, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.85

br.b4.85:                                         ; preds = %br.c3.85
  %br.sh18 = lshr i64 %coerce.sext413, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext413, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext413, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext413, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.85

br.done.85:                                       ; preds = %br.b4.85, %br.b3.85, %br.b2.85, %br.b1.85
  %br.nul = getelementptr i8, ptr %b.rn.data429, i64 %sum415
  store i8 0, ptr %br.nul, align 1
  %b.len.gep430 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum415, ptr %b.len.gep430, align 8
  br label %choice.exit122

str_ok438:                                        ; preds = %tag.slow_check443, %loop.exit.81
  %addtmp444 = add i64 %str.len.query436, 2
  %cap.neg = icmp slt i64 %addtmp444, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp444
  %b.data.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum449 = extractvalue { i64, i1 } %b.buf.len448, 0
  %ovf450 = extractvalue { i64, i1 } %b.buf.len448, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.buf.len451

tag.slow_check443:                                ; preds = %loop.exit.81
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag437)
  br label %str_ok438

b.buf.len451:                                     ; preds = %abort.dead453, %str_ok438
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum449)
  %b.nul0456 = getelementptr i8, ptr %b.buf455, i64 0
  store i8 0, ptr %b.nul0456, align 1
  store i64 0, ptr %b.len.gep446, align 8
  store ptr %b.buf455, ptr %b.data.gep445, align 8
  store i64 %cap.safe, ptr %b.cap.gep447, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %b.load457 = load ptr, ptr %var.out, align 8
  %var.load458 = load ptr, ptr %var.prefix, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load458, i32 0, i32 0
  %app.str.len459 = load i64, ptr %app.str.len, align 8
  %app.str.len460 = and i64 %app.str.len459, 281474976710655
  %str.tag461 = lshr i64 %app.str.len459, 48
  %tag.immortal463 = icmp eq i64 %str.tag461, 0
  %active.gen464 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current465 = icmp eq i64 %str.tag461, %active.gen464
  %tag.fast.ok466 = or i1 %tag.immortal463, %tag.current465
  br i1 %tag.fast.ok466, label %str_ok462, label %tag.slow_check467

str_overflow_abort452:                            ; preds = %str_ok438
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead453:                                    ; No predecessors!
  br label %b.buf.len451

str_ok462:                                        ; preds = %tag.slow_check467, %b.buf.len451
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load458, i32 0, i32 1
  %app.str.data468 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  %b.app.cur.len469 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len469, i64 %app.str.len460)
  %sum470 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf471 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf471, label %str_overflow_abort473, label %b.app.new.len472

tag.slow_check467:                                ; preds = %b.buf.len451
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag461)
  br label %str_ok462

b.app.new.len472:                                 ; preds = %abort.dead474, %str_ok462
  %b.cap475 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 2
  %b.cap476 = load i64, ptr %b.cap475, align 8
  %b.need.grow477 = icmp slt i64 %b.cap476, %sum470
  br i1 %b.need.grow477, label %b.grow2478, label %b.nogrow2479

str_overflow_abort473:                            ; preds = %str_ok462
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead474:                                    ; No predecessors!
  br label %b.app.new.len472

b.grow2478:                                       ; preds = %b.app.new.len472
  %b.cap2481 = mul i64 %b.cap476, 2
  %b.cap.small482 = icmp slt i64 %b.cap2481, 16
  %b.cap.grow483 = select i1 %b.cap.small482, i64 16, i64 %b.cap2481
  %b.cap.need484 = icmp slt i64 %b.cap.grow483, %sum470
  %b.new.cap485 = select i1 %b.cap.need484, i64 %sum470, i64 %b.cap.grow483
  %b.cur.len2486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  %b.cur.len2487 = load i64, ptr %b.cur.len2486, align 8
  %b.cur.data2488 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  %b.cur.data2489 = load ptr, ptr %b.cur.data2488, align 8
  %b.new.buf.len2490 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap485, i64 1)
  %sum491 = extractvalue { i64, i1 } %b.new.buf.len2490, 0
  %ovf492 = extractvalue { i64, i1 } %b.new.buf.len2490, 1
  br i1 %ovf492, label %str_overflow_abort494, label %b.new.buf.len2493

b.nogrow2479:                                     ; preds = %b.app.new.len472
  br label %b.grow_done480

b.grow_done480:                                   ; preds = %b.nogrow2479, %b.new.buf.len2493
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  %b.app.data501 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data501, i64 %b.app.cur.len469
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data468, i64 %app.str.len460, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data501, i64 %sum470
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  store i64 %sum470, ptr %b.len.gep502, align 8
  %var.load503 = load ptr, ptr %var.segs, align 8
  %a.load504 = load ptr, ptr %var.segs, align 8
  %a.null505 = icmp eq ptr %a.load504, null
  br i1 %a.null505, label %a.create506, label %a.after507

b.new.buf.len2493:                                ; preds = %abort.dead495, %b.grow2478
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 %sum491)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2497, ptr align 1 %b.cur.data2489, i64 %b.cur.len2487, i1 false)
  %b.grow2.nul498 = getelementptr i8, ptr %b.new.buf2497, i64 %b.cur.len2487
  store i8 0, ptr %b.grow2.nul498, align 1
  %b.new.data2.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  store ptr %b.new.buf2497, ptr %b.new.data2.gep499, align 8
  %b.new.cap2.gep500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 2
  store i64 %b.new.cap485, ptr %b.new.cap2.gep500, align 8
  br label %b.grow_done480

str_overflow_abort494:                            ; preds = %b.grow2478
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead495:                                    ; No predecessors!
  br label %b.new.buf.len2493

a.create506:                                      ; preds = %b.grow_done480
  %arena.cur508 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create509 = call ptr @dva_arena_alloc(ptr %arena.cur508, i64 24)
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 128)
  %a.len.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create509, i32 0, i32 0
  store i64 0, ptr %a.len.gep512, align 8
  %a.data.gep513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create509, i32 0, i32 1
  store ptr %a.buf511, ptr %a.data.gep513, align 8
  %a.cap.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create509, i32 0, i32 2
  store i64 16, ptr %a.cap.gep514, align 8
  store ptr %a.create509, ptr %var.segs, align 8
  br label %a.after507

a.after507:                                       ; preds = %a.create506, %b.grow_done480
  %a.load2515 = load ptr, ptr %var.segs, align 8
  %a.len.query516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2515, i32 0, i32 0
  %a.len.query517 = load i64, ptr %a.len.query516, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after507
  %counter.load518 = load i64, ptr %loop.idx.86, align 8
  %loop.cond519 = icmp slt i64 %counter.load518, %a.len.query517
  br i1 %loop.cond519, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i520 = sub i64 %counter.load518, 0
  store i64 1, ptr %loop.step.86, align 8
  store i64 %loop.rel.i520, ptr %var._i521, align 8
  store i64 %counter.load518, ptr %var._522, align 8
  store i64 %counter.load518, ptr %var.idx, align 8
  %var.load523 = load i64, ptr %var.idx, align 8
  %cmptmp524 = icmp sgt i64 %var.load523, 0
  br i1 %cmptmp524, label %choice.then525, label %choice.exit526

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %b.grow_done658
  %step.val684 = load i64, ptr %loop.step.86, align 8
  %loop.next685 = add i64 %counter.load518, %step.val684
  store i64 %loop.next685, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %var.load686 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load686, i32 0, i32 0
  %b.len687 = load i64, ptr %b.len, align 8
  %cmptmp688 = icmp eq i64 %b.len687, 0
  br i1 %cmptmp688, label %choice.then689, label %choice.else690

choice.then525:                                   ; preds = %loop.body.86
  %b.load527 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 0
  %b.rn.cur.len529 = load i64, ptr %b.rn.cur.len528, align 8
  %b.rn.new.len530 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len529, i64 1)
  %sum531 = extractvalue { i64, i1 } %b.rn.new.len530, 0
  %ovf532 = extractvalue { i64, i1 } %b.rn.new.len530, 1
  br i1 %ovf532, label %str_overflow_abort534, label %b.rn.new.len533

choice.exit526:                                   ; preds = %br.done.87, %loop.body.86
  %b.load573 = load ptr, ptr %var.out, align 8
  %var.load574 = load ptr, ptr %var.segs, align 8
  %a.load575 = load ptr, ptr %var.segs, align 8
  %a.null576 = icmp eq ptr %a.load575, null
  br i1 %a.null576, label %a.create577, label %a.after578

b.rn.new.len533:                                  ; preds = %abort.dead535, %choice.then525
  %b.cap536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 2
  %b.cap537 = load i64, ptr %b.cap536, align 8
  %b.need.grow538 = icmp slt i64 %b.cap537, %sum531
  br i1 %b.need.grow538, label %b.grow2539, label %b.nogrow2540

str_overflow_abort534:                            ; preds = %choice.then525
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead535:                                    ; No predecessors!
  br label %b.rn.new.len533

b.grow2539:                                       ; preds = %b.rn.new.len533
  %b.cap2542 = mul i64 %b.cap537, 2
  %b.cap.small543 = icmp slt i64 %b.cap2542, 16
  %b.cap.grow544 = select i1 %b.cap.small543, i64 16, i64 %b.cap2542
  %b.cap.need545 = icmp slt i64 %b.cap.grow544, %sum531
  %b.new.cap546 = select i1 %b.cap.need545, i64 %sum531, i64 %b.cap.grow544
  %b.cur.len2547 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 0
  %b.cur.len2548 = load i64, ptr %b.cur.len2547, align 8
  %b.cur.data2549 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 1
  %b.cur.data2550 = load ptr, ptr %b.cur.data2549, align 8
  %b.new.buf.len2551 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap546, i64 1)
  %sum552 = extractvalue { i64, i1 } %b.new.buf.len2551, 0
  %ovf553 = extractvalue { i64, i1 } %b.new.buf.len2551, 1
  br i1 %ovf553, label %str_overflow_abort555, label %b.new.buf.len2554

b.nogrow2540:                                     ; preds = %b.rn.new.len533
  br label %b.grow_done541

b.grow_done541:                                   ; preds = %b.nogrow2540, %b.new.buf.len2554
  %b.rn.data562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 1
  %b.rn.data563 = load ptr, ptr %b.rn.data562, align 8
  %b.rn.dst564 = getelementptr i8, ptr %b.rn.data563, i64 %b.rn.cur.len529
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2554:                                ; preds = %abort.dead556, %b.grow2539
  %arena.cur557 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 %sum552)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2558, ptr align 1 %b.cur.data2550, i64 %b.cur.len2548, i1 false)
  %b.grow2.nul559 = getelementptr i8, ptr %b.new.buf2558, i64 %b.cur.len2548
  store i8 0, ptr %b.grow2.nul559, align 1
  %b.new.data2.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 1
  store ptr %b.new.buf2558, ptr %b.new.data2.gep560, align 8
  %b.new.cap2.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 2
  store i64 %b.new.cap546, ptr %b.new.cap2.gep561, align 8
  br label %b.grow_done541

str_overflow_abort555:                            ; preds = %b.grow2539
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead556:                                    ; No predecessors!
  br label %b.new.buf.len2554

br.b1.87:                                         ; preds = %b.grow_done541
  store i8 92, ptr %b.rn.dst564, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done541
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -63, ptr %b.rn.dst564, align 1
  %br.dst1565 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -100, ptr %br.dst1565, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst564, align 1
  %br.dst1.3566 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -127, ptr %br.dst1.3566, align 1
  %br.dst2.3567 = getelementptr i8, ptr %b.rn.dst564, i64 2
  store i8 -100, ptr %br.dst2.3567, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst564, align 1
  %br.dst1.4568 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -128, ptr %br.dst1.4568, align 1
  %br.dst2.4569 = getelementptr i8, ptr %b.rn.dst564, i64 2
  store i8 -127, ptr %br.dst2.4569, align 1
  %br.dst3.4570 = getelementptr i8, ptr %b.rn.dst564, i64 3
  store i8 -100, ptr %br.dst3.4570, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul571 = getelementptr i8, ptr %b.rn.data563, i64 %sum531
  store i8 0, ptr %br.nul571, align 1
  %b.len.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load527, i32 0, i32 0
  store i64 %sum531, ptr %b.len.gep572, align 8
  br label %choice.exit526

a.create577:                                      ; preds = %choice.exit526
  %arena.cur579 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create580 = call ptr @dva_arena_alloc(ptr %arena.cur579, i64 24)
  %arena.cur581 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 128)
  %a.len.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create580, i32 0, i32 0
  store i64 0, ptr %a.len.gep583, align 8
  %a.data.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create580, i32 0, i32 1
  store ptr %a.buf582, ptr %a.data.gep584, align 8
  %a.cap.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create580, i32 0, i32 2
  store i64 16, ptr %a.cap.gep585, align 8
  store ptr %a.create580, ptr %var.segs, align 8
  br label %a.after578

a.after578:                                       ; preds = %a.create577, %choice.exit526
  %a.load2586 = load ptr, ptr %var.segs, align 8
  %var.load587 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull588 = icmp ne ptr %a.load2586, null
  br i1 %a.rd.nonnull588, label %a.rd.check589, label %a.rd.err.null591

a.rd.check589:                                    ; preds = %a.after578
  %a.rd.len594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2586, i32 0, i32 0
  %a.rd.len595 = load i64, ptr %a.rd.len594, align 8
  %a.rd.ge0596 = icmp sge i64 %var.load587, 0
  %a.rd.lt597 = icmp slt i64 %var.load587, %a.rd.len595
  %a.rd.bounds598 = and i1 %a.rd.ge0596, %a.rd.lt597
  br i1 %a.rd.bounds598, label %a.rd.ok590, label %a.rd.err.oob592

a.rd.ok590:                                       ; preds = %a.rd.check589
  %a.rd.data599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2586, i32 0, i32 1
  %a.rd.data600 = load ptr, ptr %a.rd.data599, align 8
  %a.rd.elem.gep601 = getelementptr i64, ptr %a.rd.data600, i64 %var.load587
  %a.rd.elem602 = load i64, ptr %a.rd.elem.gep601, align 8
  br label %a.rd.done593

a.rd.err.null591:                                 ; preds = %a.after578
  %arena.cur603 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc604 = call ptr @dva_arena_alloc(ptr %arena.cur603, i64 56)
  %err.code.gep605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 0
  store i64 4011, ptr %err.code.gep605, align 8
  %err.msg.gep606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep606, align 8
  %err.file.gep607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep607, align 8
  %err.line.gep608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 3
  store i64 333, ptr %err.line.gep608, align 8
  %err.col.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 4
  store i64 25, ptr %err.col.gep609, align 8
  %err.ctx.gep610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc604, i32 0, i32 5
  %err.ctx0.gep611 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep610, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep611, align 8
  %err.ctx1.gep612 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep610, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep612, align 8
  %err.p2i613 = ptrtoint ptr %err.alloc604 to i64
  br label %a.rd.done593

a.rd.err.oob592:                                  ; preds = %a.rd.check589
  %arena.cur614 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc615 = call ptr @dva_arena_alloc(ptr %arena.cur614, i64 56)
  %err.code.gep616 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 0
  store i64 4011, ptr %err.code.gep616, align 8
  %err.msg.gep617 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep617, align 8
  %err.file.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep618, align 8
  %err.line.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 3
  store i64 333, ptr %err.line.gep619, align 8
  %err.col.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 4
  store i64 25, ptr %err.col.gep620, align 8
  %err.ctx.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc615, i32 0, i32 5
  %err.ctx0.gep622 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep621, i32 0, i32 0
  store i64 %var.load587, ptr %err.ctx0.gep622, align 8
  %err.ctx1.gep623 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep621, i32 0, i32 1
  store i64 %a.rd.len595, ptr %err.ctx1.gep623, align 8
  %err.p2i624 = ptrtoint ptr %err.alloc615 to i64
  br label %a.rd.done593

a.rd.done593:                                     ; preds = %a.rd.err.oob592, %a.rd.err.null591, %a.rd.ok590
  %a.rd.tag625 = phi i1 [ true, %a.rd.ok590 ], [ false, %a.rd.err.null591 ], [ false, %a.rd.err.oob592 ]
  %a.rd.pay626 = phi i64 [ %a.rd.elem602, %a.rd.ok590 ], [ %err.p2i613, %a.rd.err.null591 ], [ %err.p2i624, %a.rd.err.oob592 ]
  %ram.tag627 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag625, 0
  %ram.pay628 = insertvalue { i1, i64 } %ram.tag627, i64 %a.rd.pay626, 1
  %ram.tag629 = extractvalue { i1, i64 } %ram.pay628, 0
  br i1 %ram.tag629, label %choice.then630, label %choice.else631

choice.then630:                                   ; preds = %a.rd.done593
  %ram.pay633 = extractvalue { i1, i64 } %ram.pay628, 1
  %pay.ptr634 = inttoptr i64 %ram.pay633 to ptr
  store ptr %pay.ptr634, ptr %var._635, align 8
  br label %choice.exit632

choice.else631:                                   ; preds = %a.rd.done593
  %ram.pay636 = extractvalue { i1, i64 } %ram.pay628, 1
  %pay.ptr637 = inttoptr i64 %ram.pay636 to ptr
  store ptr %pay.ptr637, ptr %var._638, align 8
  br label %choice.exit632

choice.exit632:                                   ; preds = %choice.else631, %choice.then630
  %choice.res639 = phi ptr [ %pay.ptr634, %choice.then630 ], [ @str.6.struct, %choice.else631 ]
  %app.str.len640 = getelementptr inbounds { i64, ptr }, ptr %choice.res639, i32 0, i32 0
  %app.str.len641 = load i64, ptr %app.str.len640, align 8
  %app.str.len642 = and i64 %app.str.len641, 281474976710655
  %app.str.data643 = getelementptr inbounds { i64, ptr }, ptr %choice.res639, i32 0, i32 1
  %app.str.data644 = load ptr, ptr %app.str.data643, align 8
  %b.app.cur.len645 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 0
  %b.app.cur.len646 = load i64, ptr %b.app.cur.len645, align 8
  %b.app.new.len647 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len646, i64 %app.str.len642)
  %sum648 = extractvalue { i64, i1 } %b.app.new.len647, 0
  %ovf649 = extractvalue { i64, i1 } %b.app.new.len647, 1
  br i1 %ovf649, label %str_overflow_abort651, label %b.app.new.len650

b.app.new.len650:                                 ; preds = %abort.dead652, %choice.exit632
  %b.cap653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 2
  %b.cap654 = load i64, ptr %b.cap653, align 8
  %b.need.grow655 = icmp slt i64 %b.cap654, %sum648
  br i1 %b.need.grow655, label %b.grow2656, label %b.nogrow2657

str_overflow_abort651:                            ; preds = %choice.exit632
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead652:                                    ; No predecessors!
  br label %b.app.new.len650

b.grow2656:                                       ; preds = %b.app.new.len650
  %b.cap2659 = mul i64 %b.cap654, 2
  %b.cap.small660 = icmp slt i64 %b.cap2659, 16
  %b.cap.grow661 = select i1 %b.cap.small660, i64 16, i64 %b.cap2659
  %b.cap.need662 = icmp slt i64 %b.cap.grow661, %sum648
  %b.new.cap663 = select i1 %b.cap.need662, i64 %sum648, i64 %b.cap.grow661
  %b.cur.len2664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 0
  %b.cur.len2665 = load i64, ptr %b.cur.len2664, align 8
  %b.cur.data2666 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 1
  %b.cur.data2667 = load ptr, ptr %b.cur.data2666, align 8
  %b.new.buf.len2668 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap663, i64 1)
  %sum669 = extractvalue { i64, i1 } %b.new.buf.len2668, 0
  %ovf670 = extractvalue { i64, i1 } %b.new.buf.len2668, 1
  br i1 %ovf670, label %str_overflow_abort672, label %b.new.buf.len2671

b.nogrow2657:                                     ; preds = %b.app.new.len650
  br label %b.grow_done658

b.grow_done658:                                   ; preds = %b.nogrow2657, %b.new.buf.len2671
  %b.app.data679 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 1
  %b.app.data680 = load ptr, ptr %b.app.data679, align 8
  %b.app.dst681 = getelementptr i8, ptr %b.app.data680, i64 %b.app.cur.len646
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst681, ptr align 1 %app.str.data644, i64 %app.str.len642, i1 false)
  %b.app.nul682 = getelementptr i8, ptr %b.app.data680, i64 %sum648
  store i8 0, ptr %b.app.nul682, align 1
  %b.len.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 0
  store i64 %sum648, ptr %b.len.gep683, align 8
  br label %loop.latch.86

b.new.buf.len2671:                                ; preds = %abort.dead673, %b.grow2656
  %arena.cur674 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2675 = call ptr @dva_arena_alloc(ptr %arena.cur674, i64 %sum669)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2675, ptr align 1 %b.cur.data2667, i64 %b.cur.len2665, i1 false)
  %b.grow2.nul676 = getelementptr i8, ptr %b.new.buf2675, i64 %b.cur.len2665
  store i8 0, ptr %b.grow2.nul676, align 1
  %b.new.data2.gep677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 1
  store ptr %b.new.buf2675, ptr %b.new.data2.gep677, align 8
  %b.new.cap2.gep678 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load573, i32 0, i32 2
  store i64 %b.new.cap663, ptr %b.new.cap2.gep678, align 8
  br label %b.grow_done658

str_overflow_abort672:                            ; preds = %b.grow2656
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead673:                                    ; No predecessors!
  br label %b.new.buf.len2671

choice.then689:                                   ; preds = %loop.exit.86
  br label %choice.exit691

choice.else690:                                   ; preds = %loop.exit.86
  %var.load692 = load ptr, ptr %var.out, align 8
  %b.freeze.len693 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load692, i32 0, i32 0
  %b.freeze.len694 = load i64, ptr %b.freeze.len693, align 8
  %b.freeze.data695 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load692, i32 0, i32 1
  %b.freeze.data696 = load ptr, ptr %b.freeze.data695, align 8
  %b.freeze.arena697 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep698 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena697, i32 0, i32 1
  %b.freeze.nc699 = load i64, ptr %b.freeze.nc.gep698, align 8
  %b.freeze.has.chunk700 = icmp sgt i64 %b.freeze.nc699, 0
  br i1 %b.freeze.has.chunk700, label %b.freeze.check701, label %b.freeze.done703

choice.exit691:                                   ; preds = %b.freeze.done703, %choice.then689
  %choice.res731 = phi ptr [ @str.5.struct, %choice.then689 ], [ %builder.freeze725, %b.freeze.done703 ]
  %ret.pack732 = load { i64, ptr }, ptr %choice.res731, align 8
  ret { i64, ptr } %ret.pack732

b.freeze.check701:                                ; preds = %choice.else690
  %b.freeze.last.idx704 = sub i64 %b.freeze.nc699, 1
  %b.freeze.chunks.gep705 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena697, i32 0, i32 3
  %b.freeze.chunk.slot706 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep705, i64 0, i64 %b.freeze.last.idx704
  %b.freeze.last.chunk707 = load ptr, ptr %b.freeze.chunk.slot706, align 8
  %b.freeze.off.gep708 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena697, i32 0, i32 2
  %b.freeze.off709 = load i64, ptr %b.freeze.off.gep708, align 8
  %b.freeze.bump710 = getelementptr i8, ptr %b.freeze.last.chunk707, i64 %b.freeze.off709
  %b.freeze.cap.gep711 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena697, i32 0, i32 0
  %b.freeze.cap712 = load i64, ptr %b.freeze.cap.gep711, align 8
  %b.freeze.chunk.end713 = getelementptr i8, ptr %b.freeze.last.chunk707, i64 %b.freeze.cap712
  %b.freeze.ge.chunk714 = icmp uge ptr %b.freeze.data696, %b.freeze.last.chunk707
  %b.freeze.lt.end715 = icmp ult ptr %b.freeze.data696, %b.freeze.chunk.end713
  %b.freeze.in.chunk716 = and i1 %b.freeze.ge.chunk714, %b.freeze.lt.end715
  %b.freeze.ge.bump717 = icmp uge ptr %b.freeze.data696, %b.freeze.bump710
  %b.freeze.reaped718 = and i1 %b.freeze.in.chunk716, %b.freeze.ge.bump717
  br i1 %b.freeze.reaped718, label %b.freeze.copy702, label %b.freeze.done703

b.freeze.copy702:                                 ; preds = %b.freeze.check701
  %b.freeze.alen719 = add i64 %b.freeze.len694, 1
  %arena.cur720 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh721 = call ptr @dva_arena_alloc(ptr %arena.cur720, i64 %b.freeze.alen719)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh721, ptr align 1 %b.freeze.data696, i64 %b.freeze.len694, i1 false)
  %b.freeze.nul722 = getelementptr i8, ptr %b.freeze.fresh721, i64 %b.freeze.len694
  store i8 0, ptr %b.freeze.nul722, align 1
  br label %b.freeze.done703

b.freeze.done703:                                 ; preds = %b.freeze.copy702, %b.freeze.check701, %choice.else690
  %b.freeze.data723 = phi ptr [ %b.freeze.data696, %choice.else690 ], [ %b.freeze.data696, %b.freeze.check701 ], [ %b.freeze.fresh721, %b.freeze.copy702 ]
  %arena.cur724 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze725 = call ptr @dva_arena_alloc(ptr %arena.cur724, i64 16)
  %str.build.len.gep726 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze725, i32 0, i32 0
  store i64 %b.freeze.len694, ptr %str.build.len.gep726, align 8
  %str.build.data.gep727 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze725, i32 0, i32 1
  store ptr %b.freeze.data723, ptr %str.build.data.gep727, align 8
  %b.freeze.rst.len728 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load692, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len728, align 8
  %b.freeze.rst.data729 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load692, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data729, align 8
  %b.freeze.rst.cap730 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load692, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap730, align 8
  br label %choice.exit691
}

define { i64, ptr } @"path::normalize"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_normalize"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::rel"(ptr %0, ptr %1) #0 {
entry:
  %var.seg = alloca ptr, align 8
  %var._399 = alloca ptr, align 8
  %var._396 = alloca ptr, align 8
  %var._334 = alloca i64, align 8
  %var._i333 = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %var._223 = alloca ptr, align 8
  %var._220 = alloca ptr, align 8
  %var._158 = alloca i64, align 8
  %var._i157 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var._125 = alloca ptr, align 8
  %var._122 = alloca ptr, align 8
  %var._60 = alloca ptr, align 8
  %var._57 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %"var.common'" = alloca i64, align 8
  %var.ta = alloca ptr, align 8
  %var.fa = alloca ptr, align 8
  %var.to_path = alloca ptr, align 8
  %var.from_dir = alloca ptr, align 8
  store ptr %0, ptr %var.from_dir, align 8
  store ptr %1, ptr %var.to_path, align 8
  %var.load = load ptr, ptr %var.from_dir, align 8
  %call.res = call ptr @"path::split"(ptr %var.load)
  store ptr %call.res, ptr %var.fa, align 8
  %var.load1 = load ptr, ptr %var.to_path, align 8
  %call.res2 = call ptr @"path::split"(ptr %var.load1)
  store ptr %call.res2, ptr %var.ta, align 8
  store i64 0, ptr %"var.common'", align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %entry
  %counter.load = load i64, ptr %loop.idx.88, align 8
  br label %loop.body.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.common'", align 8
  %var.load4 = load ptr, ptr %var.fa, align 8
  %a.load = load ptr, ptr %var.fa, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.88:                                 ; No predecessors!
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit134
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %choice.then133, %choice.then, %loop.exit.nat.88
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len137

a.create:                                         ; preds = %loop.body.88
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
  store ptr %a.create5, ptr %var.fa, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.88
  %a.load2 = load ptr, ptr %var.fa, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query7 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sge i64 %var.load3, %a.len.query7
  br i1 %cmptmp, label %or.89.then, label %or.89.else

or.89.then:                                       ; preds = %a.after
  br label %or.89.exit

or.89.else:                                       ; preds = %a.after
  %var.load8 = load i64, ptr %"var.common'", align 8
  %var.load9 = load ptr, ptr %var.ta, align 8
  %a.load10 = load ptr, ptr %var.ta, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

or.89.exit:                                       ; preds = %a.after13, %or.89.then
  %or.89.phi = phi i1 [ %cmptmp, %or.89.then ], [ %cmptmp24, %a.after13 ]
  br i1 %or.89.phi, label %choice.then, label %choice.exit

a.create12:                                       ; preds = %or.89.else
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep18, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  store ptr %a.create15, ptr %var.ta, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %or.89.else
  %a.load221 = load ptr, ptr %var.ta, align 8
  %a.len.query22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.len.query23 = load i64, ptr %a.len.query22, align 8
  %cmptmp24 = icmp sge i64 %var.load8, %a.len.query23
  br label %or.89.exit

choice.then:                                      ; preds = %or.89.exit
  br label %loop.exit.88

choice.exit:                                      ; preds = %or.89.exit
  %var.load25 = load ptr, ptr %var.fa, align 8
  %a.load26 = load ptr, ptr %var.fa, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

a.create28:                                       ; preds = %choice.exit
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.fa, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %choice.exit
  %a.load237 = load ptr, ptr %var.fa, align 8
  %var.load38 = load i64, ptr %"var.common'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load237, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after29
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.rd.len39 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load38, 0
  %a.rd.lt = icmp slt i64 %var.load38, %a.rd.len39
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.rd.data40 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data40, i64 %var.load38
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after29
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 347, ptr %err.line.gep, align 8
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
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  %err.code.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 0
  store i64 4011, ptr %err.code.gep44, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 347, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 20, ptr %err.col.gep48, align 8
  %err.ctx.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 5
  %err.ctx0.gep50 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 0
  store i64 %var.load38, ptr %err.ctx0.gep50, align 8
  %err.ctx1.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 1
  store i64 %a.rd.len39, ptr %err.ctx1.gep51, align 8
  %err.p2i52 = ptrtoint ptr %err.alloc43 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i52, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag53 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag53, label %choice.then54, label %choice.else

choice.then54:                                    ; preds = %a.rd.done
  %ram.pay56 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay56 to ptr
  store ptr %pay.ptr, ptr %var._57, align 8
  br label %choice.exit55

choice.else:                                      ; preds = %a.rd.done
  %ram.pay58 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr59 = inttoptr i64 %ram.pay58 to ptr
  store ptr %pay.ptr59, ptr %var._60, align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else, %choice.then54
  %choice.res = phi ptr [ %pay.ptr, %choice.then54 ], [ @str.6.struct, %choice.else ]
  %var.load61 = load ptr, ptr %var.ta, align 8
  %a.load62 = load ptr, ptr %var.ta, align 8
  %a.null63 = icmp eq ptr %a.load62, null
  br i1 %a.null63, label %a.create64, label %a.after65

a.create64:                                       ; preds = %choice.exit55
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 128)
  %a.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 0
  store i64 0, ptr %a.len.gep70, align 8
  %a.data.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 1
  store ptr %a.buf69, ptr %a.data.gep71, align 8
  %a.cap.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 2
  store i64 16, ptr %a.cap.gep72, align 8
  store ptr %a.create67, ptr %var.ta, align 8
  br label %a.after65

a.after65:                                        ; preds = %a.create64, %choice.exit55
  %a.load273 = load ptr, ptr %var.ta, align 8
  %var.load74 = load i64, ptr %"var.common'", align 8
  %a.rd.nonnull75 = icmp ne ptr %a.load273, null
  br i1 %a.rd.nonnull75, label %a.rd.check76, label %a.rd.err.null78

a.rd.check76:                                     ; preds = %a.after65
  %a.rd.len81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load273, i32 0, i32 0
  %a.rd.len82 = load i64, ptr %a.rd.len81, align 8
  %a.rd.ge083 = icmp sge i64 %var.load74, 0
  %a.rd.lt84 = icmp slt i64 %var.load74, %a.rd.len82
  %a.rd.bounds85 = and i1 %a.rd.ge083, %a.rd.lt84
  br i1 %a.rd.bounds85, label %a.rd.ok77, label %a.rd.err.oob79

a.rd.ok77:                                        ; preds = %a.rd.check76
  %a.rd.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load273, i32 0, i32 1
  %a.rd.data87 = load ptr, ptr %a.rd.data86, align 8
  %a.rd.elem.gep88 = getelementptr i64, ptr %a.rd.data87, i64 %var.load74
  %a.rd.elem89 = load i64, ptr %a.rd.elem.gep88, align 8
  br label %a.rd.done80

a.rd.err.null78:                                  ; preds = %a.after65
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 56)
  %err.code.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 0
  store i64 4011, ptr %err.code.gep92, align 8
  %err.msg.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep93, align 8
  %err.file.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep94, align 8
  %err.line.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 3
  store i64 347, ptr %err.line.gep95, align 8
  %err.col.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 4
  store i64 46, ptr %err.col.gep96, align 8
  %err.ctx.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 5
  %err.ctx0.gep98 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep97, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep98, align 8
  %err.ctx1.gep99 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep97, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep99, align 8
  %err.p2i100 = ptrtoint ptr %err.alloc91 to i64
  br label %a.rd.done80

a.rd.err.oob79:                                   ; preds = %a.rd.check76
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 56)
  %err.code.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 0
  store i64 4011, ptr %err.code.gep103, align 8
  %err.msg.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep104, align 8
  %err.file.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep105, align 8
  %err.line.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 3
  store i64 347, ptr %err.line.gep106, align 8
  %err.col.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 4
  store i64 46, ptr %err.col.gep107, align 8
  %err.ctx.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 5
  %err.ctx0.gep109 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep108, i32 0, i32 0
  store i64 %var.load74, ptr %err.ctx0.gep109, align 8
  %err.ctx1.gep110 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep108, i32 0, i32 1
  store i64 %a.rd.len82, ptr %err.ctx1.gep110, align 8
  %err.p2i111 = ptrtoint ptr %err.alloc102 to i64
  br label %a.rd.done80

a.rd.done80:                                      ; preds = %a.rd.err.oob79, %a.rd.err.null78, %a.rd.ok77
  %a.rd.tag112 = phi i1 [ true, %a.rd.ok77 ], [ false, %a.rd.err.null78 ], [ false, %a.rd.err.oob79 ]
  %a.rd.pay113 = phi i64 [ %a.rd.elem89, %a.rd.ok77 ], [ %err.p2i100, %a.rd.err.null78 ], [ %err.p2i111, %a.rd.err.oob79 ]
  %ram.tag114 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag112, 0
  %ram.pay115 = insertvalue { i1, i64 } %ram.tag114, i64 %a.rd.pay113, 1
  %ram.tag116 = extractvalue { i1, i64 } %ram.pay115, 0
  br i1 %ram.tag116, label %choice.then117, label %choice.else118

choice.then117:                                   ; preds = %a.rd.done80
  %ram.pay120 = extractvalue { i1, i64 } %ram.pay115, 1
  %pay.ptr121 = inttoptr i64 %ram.pay120 to ptr
  store ptr %pay.ptr121, ptr %var._122, align 8
  br label %choice.exit119

choice.else118:                                   ; preds = %a.rd.done80
  %ram.pay123 = extractvalue { i1, i64 } %ram.pay115, 1
  %pay.ptr124 = inttoptr i64 %ram.pay123 to ptr
  store ptr %pay.ptr124, ptr %var._125, align 8
  br label %choice.exit119

choice.exit119:                                   ; preds = %choice.else118, %choice.then117
  %choice.res126 = phi ptr [ %pay.ptr121, %choice.then117 ], [ @str.6.struct, %choice.else118 ]
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %eq.lhs.len127 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res126, i32 0, i32 0
  %eq.rhs.len129 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len128, %eq.rhs.len130
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit119
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data131 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res126, i32 0, i32 1
  %eq.rhs.data132 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data131, ptr %eq.rhs.data132, i64 %eq.lhs.len128)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit119
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then133, label %choice.exit134

choice.then133:                                   ; preds = %str.eq.merge
  br label %loop.exit.88

choice.exit134:                                   ; preds = %str.eq.merge
  %var.load135 = load i64, ptr %"var.common'", align 8
  %addtmp = add i64 %var.load135, 1
  store i64 %addtmp, ptr %"var.common'", align 8
  br label %loop.latch.88

b.buf.len137:                                     ; preds = %abort.dead, %loop.exit.88
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load139 = load i64, ptr %"var.common'", align 8
  %var.load140 = load ptr, ptr %var.fa, align 8
  %a.load141 = load ptr, ptr %var.fa, align 8
  %a.null142 = icmp eq ptr %a.load141, null
  br i1 %a.null142, label %a.create143, label %a.after144

str_overflow_abort:                               ; preds = %loop.exit.88
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len137

a.create143:                                      ; preds = %b.buf.len137
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 128)
  %a.len.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 0
  store i64 0, ptr %a.len.gep149, align 8
  %a.data.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 1
  store ptr %a.buf148, ptr %a.data.gep150, align 8
  %a.cap.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 2
  store i64 16, ptr %a.cap.gep151, align 8
  store ptr %a.create146, ptr %var.fa, align 8
  br label %a.after144

a.after144:                                       ; preds = %a.create143, %b.buf.len137
  %a.load2152 = load ptr, ptr %var.fa, align 8
  %a.len.query153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  %a.len.query154 = load i64, ptr %a.len.query153, align 8
  store i64 %var.load139, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %a.after144
  %counter.load155 = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load155, %a.len.query154
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i156 = sub i64 %counter.load155, %var.load139
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i156, ptr %var._i157, align 8
  store i64 %counter.load155, ptr %var._158, align 8
  store i64 %counter.load155, ptr %var.i, align 8
  %var.load159 = load ptr, ptr %var.fa, align 8
  %a.load160 = load ptr, ptr %var.fa, align 8
  %a.null161 = icmp eq ptr %a.load160, null
  br i1 %a.null161, label %a.create162, label %a.after163

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit242
  %step.val312 = load i64, ptr %loop.step.90, align 8
  %loop.next313 = add i64 %counter.load155, %step.val312
  store i64 %loop.next313, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %var.load314 = load i64, ptr %"var.common'", align 8
  %var.load315 = load ptr, ptr %var.ta, align 8
  %a.load316 = load ptr, ptr %var.ta, align 8
  %a.null317 = icmp eq ptr %a.load316, null
  br i1 %a.null317, label %a.create318, label %a.after319

a.create162:                                      ; preds = %loop.body.90
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 24)
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 128)
  %a.len.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 0
  store i64 0, ptr %a.len.gep168, align 8
  %a.data.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 1
  store ptr %a.buf167, ptr %a.data.gep169, align 8
  %a.cap.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 2
  store i64 16, ptr %a.cap.gep170, align 8
  store ptr %a.create165, ptr %var.fa, align 8
  br label %a.after163

a.after163:                                       ; preds = %a.create162, %loop.body.90
  %a.load2171 = load ptr, ptr %var.fa, align 8
  %var.load172 = load i64, ptr %var.i, align 8
  %a.rd.nonnull173 = icmp ne ptr %a.load2171, null
  br i1 %a.rd.nonnull173, label %a.rd.check174, label %a.rd.err.null176

a.rd.check174:                                    ; preds = %a.after163
  %a.rd.len179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2171, i32 0, i32 0
  %a.rd.len180 = load i64, ptr %a.rd.len179, align 8
  %a.rd.ge0181 = icmp sge i64 %var.load172, 0
  %a.rd.lt182 = icmp slt i64 %var.load172, %a.rd.len180
  %a.rd.bounds183 = and i1 %a.rd.ge0181, %a.rd.lt182
  br i1 %a.rd.bounds183, label %a.rd.ok175, label %a.rd.err.oob177

a.rd.ok175:                                       ; preds = %a.rd.check174
  %a.rd.data184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2171, i32 0, i32 1
  %a.rd.data185 = load ptr, ptr %a.rd.data184, align 8
  %a.rd.elem.gep186 = getelementptr i64, ptr %a.rd.data185, i64 %var.load172
  %a.rd.elem187 = load i64, ptr %a.rd.elem.gep186, align 8
  br label %a.rd.done178

a.rd.err.null176:                                 ; preds = %a.after163
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 56)
  %err.code.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 0
  store i64 4011, ptr %err.code.gep190, align 8
  %err.msg.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep191, align 8
  %err.file.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep192, align 8
  %err.line.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 3
  store i64 351, ptr %err.line.gep193, align 8
  %err.col.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 4
  store i64 14, ptr %err.col.gep194, align 8
  %err.ctx.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 5
  %err.ctx0.gep196 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep195, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep196, align 8
  %err.ctx1.gep197 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep195, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep197, align 8
  %err.p2i198 = ptrtoint ptr %err.alloc189 to i64
  br label %a.rd.done178

a.rd.err.oob177:                                  ; preds = %a.rd.check174
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 56)
  %err.code.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 0
  store i64 4011, ptr %err.code.gep201, align 8
  %err.msg.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep202, align 8
  %err.file.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep203, align 8
  %err.line.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 3
  store i64 351, ptr %err.line.gep204, align 8
  %err.col.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 4
  store i64 14, ptr %err.col.gep205, align 8
  %err.ctx.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 5
  %err.ctx0.gep207 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep206, i32 0, i32 0
  store i64 %var.load172, ptr %err.ctx0.gep207, align 8
  %err.ctx1.gep208 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep206, i32 0, i32 1
  store i64 %a.rd.len180, ptr %err.ctx1.gep208, align 8
  %err.p2i209 = ptrtoint ptr %err.alloc200 to i64
  br label %a.rd.done178

a.rd.done178:                                     ; preds = %a.rd.err.oob177, %a.rd.err.null176, %a.rd.ok175
  %a.rd.tag210 = phi i1 [ true, %a.rd.ok175 ], [ false, %a.rd.err.null176 ], [ false, %a.rd.err.oob177 ]
  %a.rd.pay211 = phi i64 [ %a.rd.elem187, %a.rd.ok175 ], [ %err.p2i198, %a.rd.err.null176 ], [ %err.p2i209, %a.rd.err.oob177 ]
  %ram.tag212 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag210, 0
  %ram.pay213 = insertvalue { i1, i64 } %ram.tag212, i64 %a.rd.pay211, 1
  %ram.tag214 = extractvalue { i1, i64 } %ram.pay213, 0
  br i1 %ram.tag214, label %choice.then215, label %choice.else216

choice.then215:                                   ; preds = %a.rd.done178
  %ram.pay218 = extractvalue { i1, i64 } %ram.pay213, 1
  %pay.ptr219 = inttoptr i64 %ram.pay218 to ptr
  store ptr %pay.ptr219, ptr %var._220, align 8
  br label %choice.exit217

choice.else216:                                   ; preds = %a.rd.done178
  %ram.pay221 = extractvalue { i1, i64 } %ram.pay213, 1
  %pay.ptr222 = inttoptr i64 %ram.pay221 to ptr
  store ptr %pay.ptr222, ptr %var._223, align 8
  br label %choice.exit217

choice.exit217:                                   ; preds = %choice.else216, %choice.then215
  %choice.res224 = phi ptr [ %pay.ptr219, %choice.then215 ], [ @str.6.struct, %choice.else216 ]
  %eq.lhs.len225 = getelementptr inbounds { i64, ptr }, ptr %choice.res224, i32 0, i32 0
  %eq.lhs.len226 = load i64, ptr %eq.lhs.len225, align 8
  %eq.lhs.len227 = and i64 %eq.lhs.len226, 281474976710655
  %eq.rhs.len228 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len229 = and i64 %eq.rhs.len228, 281474976710655
  %eq.len230 = icmp eq i64 %eq.lhs.len227, %eq.rhs.len229
  br i1 %eq.len230, label %str.eq.then231, label %str.eq.else232

str.eq.then231:                                   ; preds = %choice.exit217
  %eq.lhs.data234 = getelementptr inbounds { i64, ptr }, ptr %choice.res224, i32 0, i32 1
  %eq.lhs.data235 = load ptr, ptr %eq.lhs.data234, align 8
  %eq.rhs.data236 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp237 = call i32 @memcmp(ptr %eq.lhs.data235, ptr %eq.rhs.data236, i64 %eq.lhs.len227)
  %eq.cmp.zero238 = icmp eq i32 %eq.memcmp237, 0
  br label %str.eq.merge233

str.eq.else232:                                   ; preds = %choice.exit217
  br label %str.eq.merge233

str.eq.merge233:                                  ; preds = %str.eq.else232, %str.eq.then231
  %str.eq.result239 = phi i1 [ %eq.cmp.zero238, %str.eq.then231 ], [ false, %str.eq.else232 ]
  %str.neq240 = xor i1 %str.eq.result239, true
  br i1 %str.neq240, label %choice.then241, label %choice.exit242

choice.then241:                                   ; preds = %str.eq.merge233
  %var.load243 = load ptr, ptr %var.b, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load243, i32 0, i32 0
  %b.len244 = load i64, ptr %b.len, align 8
  %cmptmp245 = icmp sgt i64 %b.len244, 0
  br i1 %cmptmp245, label %choice.then246, label %choice.exit247

choice.exit242:                                   ; preds = %b.grow_done286, %str.eq.merge233
  br label %loop.latch.90

choice.then246:                                   ; preds = %choice.then241
  %b.load = load ptr, ptr %var.b, align 8
  %var.load248 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 0
  %app.str.len249 = load i64, ptr %app.str.len, align 8
  %app.str.len250 = and i64 %app.str.len249, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 1
  %app.str.data251 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len252 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len252, i64 %app.str.len250)
  %sum253 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf254 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf254, label %str_overflow_abort256, label %b.app.new.len255

choice.exit247:                                   ; preds = %b.grow_done, %choice.then241
  %b.load269 = load ptr, ptr %var.b, align 8
  %app.str.len270 = load i64, ptr @str.7.struct, align 8
  %app.str.len271 = and i64 %app.str.len270, 281474976710655
  %app.str.data272 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %b.app.cur.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 0
  %b.app.cur.len274 = load i64, ptr %b.app.cur.len273, align 8
  %b.app.new.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len274, i64 %app.str.len271)
  %sum276 = extractvalue { i64, i1 } %b.app.new.len275, 0
  %ovf277 = extractvalue { i64, i1 } %b.app.new.len275, 1
  br i1 %ovf277, label %str_overflow_abort279, label %b.app.new.len278

b.app.new.len255:                                 ; preds = %abort.dead257, %choice.then246
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap258 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap258, %sum253
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort256:                            ; preds = %choice.then246
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead257:                                    ; No predecessors!
  br label %b.app.new.len255

b.grow2:                                          ; preds = %b.app.new.len255
  %b.cap2 = mul i64 %b.cap258, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum253
  %b.new.cap = select i1 %b.cap.need, i64 %sum253, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2259 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2260 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum261 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf262 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf262, label %str_overflow_abort264, label %b.new.buf.len2263

b.nogrow2:                                        ; preds = %b.app.new.len255
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2263
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data267 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data267, i64 %b.app.cur.len252
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data251, i64 %app.str.len250, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data267, i64 %sum253
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum253, ptr %b.len.gep268, align 8
  br label %choice.exit247

b.new.buf.len2263:                                ; preds = %abort.dead265, %b.grow2
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 %sum261)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2260, i64 %b.cur.len2259, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2259
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort264:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead265:                                    ; No predecessors!
  br label %b.new.buf.len2263

b.app.new.len278:                                 ; preds = %abort.dead280, %choice.exit247
  %b.cap281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 2
  %b.cap282 = load i64, ptr %b.cap281, align 8
  %b.need.grow283 = icmp slt i64 %b.cap282, %sum276
  br i1 %b.need.grow283, label %b.grow2284, label %b.nogrow2285

str_overflow_abort279:                            ; preds = %choice.exit247
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead280:                                    ; No predecessors!
  br label %b.app.new.len278

b.grow2284:                                       ; preds = %b.app.new.len278
  %b.cap2287 = mul i64 %b.cap282, 2
  %b.cap.small288 = icmp slt i64 %b.cap2287, 16
  %b.cap.grow289 = select i1 %b.cap.small288, i64 16, i64 %b.cap2287
  %b.cap.need290 = icmp slt i64 %b.cap.grow289, %sum276
  %b.new.cap291 = select i1 %b.cap.need290, i64 %sum276, i64 %b.cap.grow289
  %b.cur.len2292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 0
  %b.cur.len2293 = load i64, ptr %b.cur.len2292, align 8
  %b.cur.data2294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 1
  %b.cur.data2295 = load ptr, ptr %b.cur.data2294, align 8
  %b.new.buf.len2296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap291, i64 1)
  %sum297 = extractvalue { i64, i1 } %b.new.buf.len2296, 0
  %ovf298 = extractvalue { i64, i1 } %b.new.buf.len2296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %b.new.buf.len2299

b.nogrow2285:                                     ; preds = %b.app.new.len278
  br label %b.grow_done286

b.grow_done286:                                   ; preds = %b.nogrow2285, %b.new.buf.len2299
  %b.app.data307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 1
  %b.app.data308 = load ptr, ptr %b.app.data307, align 8
  %b.app.dst309 = getelementptr i8, ptr %b.app.data308, i64 %b.app.cur.len274
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst309, ptr align 1 %app.str.data272, i64 %app.str.len271, i1 false)
  %b.app.nul310 = getelementptr i8, ptr %b.app.data308, i64 %sum276
  store i8 0, ptr %b.app.nul310, align 1
  %b.len.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 0
  store i64 %sum276, ptr %b.len.gep311, align 8
  br label %choice.exit242

b.new.buf.len2299:                                ; preds = %abort.dead301, %b.grow2284
  %arena.cur302 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 %sum297)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2303, ptr align 1 %b.cur.data2295, i64 %b.cur.len2293, i1 false)
  %b.grow2.nul304 = getelementptr i8, ptr %b.new.buf2303, i64 %b.cur.len2293
  store i8 0, ptr %b.grow2.nul304, align 1
  %b.new.data2.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 1
  store ptr %b.new.buf2303, ptr %b.new.data2.gep305, align 8
  %b.new.cap2.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 2
  store i64 %b.new.cap291, ptr %b.new.cap2.gep306, align 8
  br label %b.grow_done286

str_overflow_abort300:                            ; preds = %b.grow2284
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %b.new.buf.len2299

a.create318:                                      ; preds = %loop.exit.90
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 24)
  %arena.cur322 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf323 = call ptr @dva_arena_alloc(ptr %arena.cur322, i64 128)
  %a.len.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create321, i32 0, i32 0
  store i64 0, ptr %a.len.gep324, align 8
  %a.data.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create321, i32 0, i32 1
  store ptr %a.buf323, ptr %a.data.gep325, align 8
  %a.cap.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create321, i32 0, i32 2
  store i64 16, ptr %a.cap.gep326, align 8
  store ptr %a.create321, ptr %var.ta, align 8
  br label %a.after319

a.after319:                                       ; preds = %a.create318, %loop.exit.90
  %a.load2327 = load ptr, ptr %var.ta, align 8
  %a.len.query328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 0
  %a.len.query329 = load i64, ptr %a.len.query328, align 8
  store i64 %var.load314, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after319
  %counter.load330 = load i64, ptr %loop.idx.91, align 8
  %loop.cond331 = icmp slt i64 %counter.load330, %a.len.query329
  br i1 %loop.cond331, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i332 = sub i64 %counter.load330, %var.load314
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i332, ptr %var._i333, align 8
  store i64 %counter.load330, ptr %var._334, align 8
  store i64 %counter.load330, ptr %var.i, align 8
  %var.load335 = load ptr, ptr %var.ta, align 8
  %a.load336 = load ptr, ptr %var.ta, align 8
  %a.null337 = icmp eq ptr %a.load336, null
  br i1 %a.null337, label %a.create338, label %a.after339

loop.exit.nat.91:                                 ; preds = %loop.header.91
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit419
  %step.val518 = load i64, ptr %loop.step.91, align 8
  %loop.next519 = add i64 %counter.load330, %step.val518
  store i64 %loop.next519, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %loop.exit.nat.91
  %var.load520 = load ptr, ptr %var.b, align 8
  %b.len521 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load520, i32 0, i32 0
  %b.len522 = load i64, ptr %b.len521, align 8
  %cmptmp523 = icmp eq i64 %b.len522, 0
  br i1 %cmptmp523, label %choice.then524, label %choice.else525

a.create338:                                      ; preds = %loop.body.91
  %arena.cur340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 24)
  %arena.cur342 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 128)
  %a.len.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 0
  store i64 0, ptr %a.len.gep344, align 8
  %a.data.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 1
  store ptr %a.buf343, ptr %a.data.gep345, align 8
  %a.cap.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 2
  store i64 16, ptr %a.cap.gep346, align 8
  store ptr %a.create341, ptr %var.ta, align 8
  br label %a.after339

a.after339:                                       ; preds = %a.create338, %loop.body.91
  %a.load2347 = load ptr, ptr %var.ta, align 8
  %var.load348 = load i64, ptr %var.i, align 8
  %a.rd.nonnull349 = icmp ne ptr %a.load2347, null
  br i1 %a.rd.nonnull349, label %a.rd.check350, label %a.rd.err.null352

a.rd.check350:                                    ; preds = %a.after339
  %a.rd.len355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 0
  %a.rd.len356 = load i64, ptr %a.rd.len355, align 8
  %a.rd.ge0357 = icmp sge i64 %var.load348, 0
  %a.rd.lt358 = icmp slt i64 %var.load348, %a.rd.len356
  %a.rd.bounds359 = and i1 %a.rd.ge0357, %a.rd.lt358
  br i1 %a.rd.bounds359, label %a.rd.ok351, label %a.rd.err.oob353

a.rd.ok351:                                       ; preds = %a.rd.check350
  %a.rd.data360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 1
  %a.rd.data361 = load ptr, ptr %a.rd.data360, align 8
  %a.rd.elem.gep362 = getelementptr i64, ptr %a.rd.data361, i64 %var.load348
  %a.rd.elem363 = load i64, ptr %a.rd.elem.gep362, align 8
  br label %a.rd.done354

a.rd.err.null352:                                 ; preds = %a.after339
  %arena.cur364 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 56)
  %err.code.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 0
  store i64 4011, ptr %err.code.gep366, align 8
  %err.msg.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep367, align 8
  %err.file.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep368, align 8
  %err.line.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 3
  store i64 355, ptr %err.line.gep369, align 8
  %err.col.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 4
  store i64 19, ptr %err.col.gep370, align 8
  %err.ctx.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc365, i32 0, i32 5
  %err.ctx0.gep372 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep371, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep372, align 8
  %err.ctx1.gep373 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep371, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep373, align 8
  %err.p2i374 = ptrtoint ptr %err.alloc365 to i64
  br label %a.rd.done354

a.rd.err.oob353:                                  ; preds = %a.rd.check350
  %arena.cur375 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 56)
  %err.code.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 0
  store i64 4011, ptr %err.code.gep377, align 8
  %err.msg.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep378, align 8
  %err.file.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep379, align 8
  %err.line.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 3
  store i64 355, ptr %err.line.gep380, align 8
  %err.col.gep381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 4
  store i64 19, ptr %err.col.gep381, align 8
  %err.ctx.gep382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc376, i32 0, i32 5
  %err.ctx0.gep383 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep382, i32 0, i32 0
  store i64 %var.load348, ptr %err.ctx0.gep383, align 8
  %err.ctx1.gep384 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep382, i32 0, i32 1
  store i64 %a.rd.len356, ptr %err.ctx1.gep384, align 8
  %err.p2i385 = ptrtoint ptr %err.alloc376 to i64
  br label %a.rd.done354

a.rd.done354:                                     ; preds = %a.rd.err.oob353, %a.rd.err.null352, %a.rd.ok351
  %a.rd.tag386 = phi i1 [ true, %a.rd.ok351 ], [ false, %a.rd.err.null352 ], [ false, %a.rd.err.oob353 ]
  %a.rd.pay387 = phi i64 [ %a.rd.elem363, %a.rd.ok351 ], [ %err.p2i374, %a.rd.err.null352 ], [ %err.p2i385, %a.rd.err.oob353 ]
  %ram.tag388 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag386, 0
  %ram.pay389 = insertvalue { i1, i64 } %ram.tag388, i64 %a.rd.pay387, 1
  %ram.tag390 = extractvalue { i1, i64 } %ram.pay389, 0
  br i1 %ram.tag390, label %choice.then391, label %choice.else392

choice.then391:                                   ; preds = %a.rd.done354
  %ram.pay394 = extractvalue { i1, i64 } %ram.pay389, 1
  %pay.ptr395 = inttoptr i64 %ram.pay394 to ptr
  store ptr %pay.ptr395, ptr %var._396, align 8
  br label %choice.exit393

choice.else392:                                   ; preds = %a.rd.done354
  %ram.pay397 = extractvalue { i1, i64 } %ram.pay389, 1
  %pay.ptr398 = inttoptr i64 %ram.pay397 to ptr
  store ptr %pay.ptr398, ptr %var._399, align 8
  br label %choice.exit393

choice.exit393:                                   ; preds = %choice.else392, %choice.then391
  %choice.res400 = phi ptr [ %pay.ptr395, %choice.then391 ], [ @str.6.struct, %choice.else392 ]
  store ptr %choice.res400, ptr %var.seg, align 8
  %var.load401 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len402 = getelementptr inbounds { i64, ptr }, ptr %var.load401, i32 0, i32 0
  %eq.lhs.len403 = load i64, ptr %eq.lhs.len402, align 8
  %eq.lhs.len404 = and i64 %eq.lhs.len403, 281474976710655
  %eq.rhs.len405 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len406 = and i64 %eq.rhs.len405, 281474976710655
  %eq.len407 = icmp eq i64 %eq.lhs.len404, %eq.rhs.len406
  br i1 %eq.len407, label %str.eq.then408, label %str.eq.else409

str.eq.then408:                                   ; preds = %choice.exit393
  %eq.lhs.data411 = getelementptr inbounds { i64, ptr }, ptr %var.load401, i32 0, i32 1
  %eq.lhs.data412 = load ptr, ptr %eq.lhs.data411, align 8
  %eq.rhs.data413 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp414 = call i32 @memcmp(ptr %eq.lhs.data412, ptr %eq.rhs.data413, i64 %eq.lhs.len404)
  %eq.cmp.zero415 = icmp eq i32 %eq.memcmp414, 0
  br label %str.eq.merge410

str.eq.else409:                                   ; preds = %choice.exit393
  br label %str.eq.merge410

str.eq.merge410:                                  ; preds = %str.eq.else409, %str.eq.then408
  %str.eq.result416 = phi i1 [ %eq.cmp.zero415, %str.eq.then408 ], [ false, %str.eq.else409 ]
  %str.neq417 = xor i1 %str.eq.result416, true
  br i1 %str.neq417, label %choice.then418, label %choice.exit419

choice.then418:                                   ; preds = %str.eq.merge410
  %var.load420 = load ptr, ptr %var.b, align 8
  %b.len421 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load420, i32 0, i32 0
  %b.len422 = load i64, ptr %b.len421, align 8
  %cmptmp423 = icmp sgt i64 %b.len422, 0
  br i1 %cmptmp423, label %choice.then424, label %choice.exit425

choice.exit419:                                   ; preds = %b.grow_done492, %str.eq.merge410
  br label %loop.latch.91

choice.then424:                                   ; preds = %choice.then418
  %b.load426 = load ptr, ptr %var.b, align 8
  %var.load427 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len428 = getelementptr inbounds { i64, ptr }, ptr %var.load427, i32 0, i32 0
  %app.str.len429 = load i64, ptr %app.str.len428, align 8
  %app.str.len430 = and i64 %app.str.len429, 281474976710655
  %app.str.data431 = getelementptr inbounds { i64, ptr }, ptr %var.load427, i32 0, i32 1
  %app.str.data432 = load ptr, ptr %app.str.data431, align 8
  %b.app.cur.len433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  %b.app.cur.len434 = load i64, ptr %b.app.cur.len433, align 8
  %b.app.new.len435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len434, i64 %app.str.len430)
  %sum436 = extractvalue { i64, i1 } %b.app.new.len435, 0
  %ovf437 = extractvalue { i64, i1 } %b.app.new.len435, 1
  br i1 %ovf437, label %str_overflow_abort439, label %b.app.new.len438

choice.exit425:                                   ; preds = %b.grow_done446, %choice.then418
  %b.load472 = load ptr, ptr %var.b, align 8
  %var.load473 = load ptr, ptr %var.seg, align 8
  %app.str.len474 = getelementptr inbounds { i64, ptr }, ptr %var.load473, i32 0, i32 0
  %app.str.len475 = load i64, ptr %app.str.len474, align 8
  %app.str.len476 = and i64 %app.str.len475, 281474976710655
  %app.str.data477 = getelementptr inbounds { i64, ptr }, ptr %var.load473, i32 0, i32 1
  %app.str.data478 = load ptr, ptr %app.str.data477, align 8
  %b.app.cur.len479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  %b.app.cur.len480 = load i64, ptr %b.app.cur.len479, align 8
  %b.app.new.len481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len480, i64 %app.str.len476)
  %sum482 = extractvalue { i64, i1 } %b.app.new.len481, 0
  %ovf483 = extractvalue { i64, i1 } %b.app.new.len481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %b.app.new.len484

b.app.new.len438:                                 ; preds = %abort.dead440, %choice.then424
  %b.cap441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 2
  %b.cap442 = load i64, ptr %b.cap441, align 8
  %b.need.grow443 = icmp slt i64 %b.cap442, %sum436
  br i1 %b.need.grow443, label %b.grow2444, label %b.nogrow2445

str_overflow_abort439:                            ; preds = %choice.then424
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead440:                                    ; No predecessors!
  br label %b.app.new.len438

b.grow2444:                                       ; preds = %b.app.new.len438
  %b.cap2447 = mul i64 %b.cap442, 2
  %b.cap.small448 = icmp slt i64 %b.cap2447, 16
  %b.cap.grow449 = select i1 %b.cap.small448, i64 16, i64 %b.cap2447
  %b.cap.need450 = icmp slt i64 %b.cap.grow449, %sum436
  %b.new.cap451 = select i1 %b.cap.need450, i64 %sum436, i64 %b.cap.grow449
  %b.cur.len2452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  %b.cur.len2453 = load i64, ptr %b.cur.len2452, align 8
  %b.cur.data2454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  %b.cur.data2455 = load ptr, ptr %b.cur.data2454, align 8
  %b.new.buf.len2456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap451, i64 1)
  %sum457 = extractvalue { i64, i1 } %b.new.buf.len2456, 0
  %ovf458 = extractvalue { i64, i1 } %b.new.buf.len2456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %b.new.buf.len2459

b.nogrow2445:                                     ; preds = %b.app.new.len438
  br label %b.grow_done446

b.grow_done446:                                   ; preds = %b.nogrow2445, %b.new.buf.len2459
  %b.app.data467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  %b.app.data468 = load ptr, ptr %b.app.data467, align 8
  %b.app.dst469 = getelementptr i8, ptr %b.app.data468, i64 %b.app.cur.len434
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst469, ptr align 1 %app.str.data432, i64 %app.str.len430, i1 false)
  %b.app.nul470 = getelementptr i8, ptr %b.app.data468, i64 %sum436
  store i8 0, ptr %b.app.nul470, align 1
  %b.len.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  store i64 %sum436, ptr %b.len.gep471, align 8
  br label %choice.exit425

b.new.buf.len2459:                                ; preds = %abort.dead461, %b.grow2444
  %arena.cur462 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 %sum457)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2463, ptr align 1 %b.cur.data2455, i64 %b.cur.len2453, i1 false)
  %b.grow2.nul464 = getelementptr i8, ptr %b.new.buf2463, i64 %b.cur.len2453
  store i8 0, ptr %b.grow2.nul464, align 1
  %b.new.data2.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  store ptr %b.new.buf2463, ptr %b.new.data2.gep465, align 8
  %b.new.cap2.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 2
  store i64 %b.new.cap451, ptr %b.new.cap2.gep466, align 8
  br label %b.grow_done446

str_overflow_abort460:                            ; preds = %b.grow2444
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %b.new.buf.len2459

b.app.new.len484:                                 ; preds = %abort.dead486, %choice.exit425
  %b.cap487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 2
  %b.cap488 = load i64, ptr %b.cap487, align 8
  %b.need.grow489 = icmp slt i64 %b.cap488, %sum482
  br i1 %b.need.grow489, label %b.grow2490, label %b.nogrow2491

str_overflow_abort485:                            ; preds = %choice.exit425
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead486:                                    ; No predecessors!
  br label %b.app.new.len484

b.grow2490:                                       ; preds = %b.app.new.len484
  %b.cap2493 = mul i64 %b.cap488, 2
  %b.cap.small494 = icmp slt i64 %b.cap2493, 16
  %b.cap.grow495 = select i1 %b.cap.small494, i64 16, i64 %b.cap2493
  %b.cap.need496 = icmp slt i64 %b.cap.grow495, %sum482
  %b.new.cap497 = select i1 %b.cap.need496, i64 %sum482, i64 %b.cap.grow495
  %b.cur.len2498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  %b.cur.len2499 = load i64, ptr %b.cur.len2498, align 8
  %b.cur.data2500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  %b.cur.data2501 = load ptr, ptr %b.cur.data2500, align 8
  %b.new.buf.len2502 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap497, i64 1)
  %sum503 = extractvalue { i64, i1 } %b.new.buf.len2502, 0
  %ovf504 = extractvalue { i64, i1 } %b.new.buf.len2502, 1
  br i1 %ovf504, label %str_overflow_abort506, label %b.new.buf.len2505

b.nogrow2491:                                     ; preds = %b.app.new.len484
  br label %b.grow_done492

b.grow_done492:                                   ; preds = %b.nogrow2491, %b.new.buf.len2505
  %b.app.data513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  %b.app.data514 = load ptr, ptr %b.app.data513, align 8
  %b.app.dst515 = getelementptr i8, ptr %b.app.data514, i64 %b.app.cur.len480
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst515, ptr align 1 %app.str.data478, i64 %app.str.len476, i1 false)
  %b.app.nul516 = getelementptr i8, ptr %b.app.data514, i64 %sum482
  store i8 0, ptr %b.app.nul516, align 1
  %b.len.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  store i64 %sum482, ptr %b.len.gep517, align 8
  br label %choice.exit419

b.new.buf.len2505:                                ; preds = %abort.dead507, %b.grow2490
  %arena.cur508 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2509 = call ptr @dva_arena_alloc(ptr %arena.cur508, i64 %sum503)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2509, ptr align 1 %b.cur.data2501, i64 %b.cur.len2499, i1 false)
  %b.grow2.nul510 = getelementptr i8, ptr %b.new.buf2509, i64 %b.cur.len2499
  store i8 0, ptr %b.grow2.nul510, align 1
  %b.new.data2.gep511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  store ptr %b.new.buf2509, ptr %b.new.data2.gep511, align 8
  %b.new.cap2.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 2
  store i64 %b.new.cap497, ptr %b.new.cap2.gep512, align 8
  br label %b.grow_done492

str_overflow_abort506:                            ; preds = %b.grow2490
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead507:                                    ; No predecessors!
  br label %b.new.buf.len2505

choice.then524:                                   ; preds = %loop.exit.91
  br label %choice.exit526

choice.else525:                                   ; preds = %loop.exit.91
  %var.load527 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load527, i32 0, i32 0
  %b.freeze.len528 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load527, i32 0, i32 1
  %b.freeze.data529 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit526:                                   ; preds = %b.freeze.done, %choice.then524
  %choice.res533 = phi ptr [ @str.5.struct, %choice.then524 ], [ %builder.freeze, %b.freeze.done ]
  %ret.pack = load { i64, ptr }, ptr %choice.res533, align 8
  ret { i64, ptr } %ret.pack

b.freeze.check:                                   ; preds = %choice.else525
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data529, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data529, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data529, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len528, 1
  %arena.cur530 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data529, i64 %b.freeze.len528, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len528
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else525
  %b.freeze.data531 = phi ptr [ %b.freeze.data529, %choice.else525 ], [ %b.freeze.data529, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur532 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len528, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data531, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load527, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load527, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load527, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit526
}

define i1 @"path::has_prefix"(ptr %0, ptr %1) #0 {
entry:
  %var.lp = alloca i64, align 8
  %var.clean_pre = alloca ptr, align 8
  %var.prefix = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.prefix, align 8
  %call.res = call { i64, ptr } @"path::strip_trailing_sep"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean_pre, align 8
  %var.load1 = load ptr, ptr %var.clean_pre, align 8
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
  store i64 %str.len.query3, ptr %var.lp, align 8
  %var.load4 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.clean_pre, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.lhs.len7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current13 = icmp eq i64 %str.tag9, %active.gen12
  %tag.fast.ok14 = or i1 %tag.immortal11, %tag.current13
  br i1 %tag.fast.ok14, label %str_ok10, label %tag.slow_check15

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok10:                                         ; preds = %tag.slow_check15, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len16 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len17 = and i64 %eq.rhs.len16, 281474976710655
  %str.tag18 = lshr i64 %eq.rhs.len16, 48
  %tag.immortal20 = icmp eq i64 %str.tag18, 0
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current22 = icmp eq i64 %str.tag18, %active.gen21
  %tag.fast.ok23 = or i1 %tag.immortal20, %tag.current22
  br i1 %tag.fast.ok23, label %str_ok19, label %tag.slow_check24

tag.slow_check15:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag9)
  br label %str_ok10

str_ok19:                                         ; preds = %tag.slow_check24, %str_ok10
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check24:                                 ; preds = %str_ok10
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag18)
  br label %str_ok19

str.eq.then:                                      ; preds = %str_ok19
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data25 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data26 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data25, ptr %eq.rhs.data26, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok19
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.92.then, label %or.92.else

or.92.then:                                       ; preds = %str.eq.merge
  br label %or.92.exit

or.92.else:                                       ; preds = %str.eq.merge
  %var.load27 = load ptr, ptr %var.p, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %tag.immortal33 = icmp eq i64 %str.tag31, 0
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current35 = icmp eq i64 %str.tag31, %active.gen34
  %tag.fast.ok36 = or i1 %tag.immortal33, %tag.current35
  br i1 %tag.fast.ok36, label %str_ok32, label %tag.slow_check37

or.92.exit:                                       ; preds = %and.94.exit, %or.92.then
  %or.92.phi = phi i1 [ %str.eq.result, %or.92.then ], [ %and.94.phi, %and.94.exit ]
  ret i1 %or.92.phi

str_ok32:                                         ; preds = %tag.slow_check37, %or.92.else
  %var.load38 = load i64, ptr %var.lp, align 8
  %cmptmp39 = icmp sgt i64 %str.len.query30, %var.load38
  br i1 %cmptmp39, label %and.93.then, label %and.93.else

tag.slow_check37:                                 ; preds = %or.92.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag31)
  br label %str_ok32

and.93.then:                                      ; preds = %str_ok32
  %var.load40 = load ptr, ptr %var.p, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.chk.len41 = load i64, ptr %s.chk.len, align 8
  %s.chk.len42 = and i64 %s.chk.len41, 281474976710655
  %str.tag43 = lshr i64 %s.chk.len41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %str.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %str_ok44, label %tag.slow_check49

and.93.else:                                      ; preds = %str_ok32
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %str.eq.merge69
  %and.93.phi = phi i1 [ %str.eq.result72, %str.eq.merge69 ], [ %cmptmp39, %and.93.else ]
  br i1 %and.93.phi, label %and.94.then, label %and.94.else

str_ok44:                                         ; preds = %tag.slow_check49, %and.93.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data, align 8
  %var.load53 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len51, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len51
  %final.start = select i1 %start.gt.len, i64 %s.read.len51, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load53, 0
  %rel.end = add i64 %s.read.len51, %var.load53
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load53
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len51
  %final.end = select i1 %end.gt.len, i64 %s.read.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data52, i64 %final.start
  %var.load54 = load ptr, ptr %var.clean_pre, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %cmp.str55 = load i64, ptr %cmp.str, align 8
  %cmp.str56 = and i64 %cmp.str55, 281474976710655
  %str.tag57 = lshr i64 %cmp.str55, 48
  %tag.immortal59 = icmp eq i64 %str.tag57, 0
  %active.gen60 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current61 = icmp eq i64 %str.tag57, %active.gen60
  %tag.fast.ok62 = or i1 %tag.immortal59, %tag.current61
  br i1 %tag.fast.ok62, label %str_ok58, label %tag.slow_check63

tag.slow_check49:                                 ; preds = %and.93.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag43)
  br label %str_ok44

str_ok58:                                         ; preds = %tag.slow_check63, %str_ok44
  %cmp.str64 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %cmp.str65 = load ptr, ptr %cmp.str64, align 8
  %eq.len66 = icmp eq i64 %view.len, %cmp.str56
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.else68

tag.slow_check63:                                 ; preds = %str_ok44
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag57)
  br label %str_ok58

str.eq.then67:                                    ; preds = %str_ok58
  %eq.memcmp70 = call i32 @memcmp(ptr %view.data, ptr %cmp.str65, i64 %view.len)
  %eq.cmp.zero71 = icmp eq i32 %eq.memcmp70, 0
  br label %str.eq.merge69

str.eq.else68:                                    ; preds = %str_ok58
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.else68, %str.eq.then67
  %str.eq.result72 = phi i1 [ %eq.cmp.zero71, %str.eq.then67 ], [ false, %str.eq.else68 ]
  br label %and.93.exit

and.94.then:                                      ; preds = %and.93.exit
  %var.load73 = load ptr, ptr %var.p, align 8
  %s.read.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %s.read.len75 = load i64, ptr %s.read.len74, align 8
  %s.read.len76 = and i64 %s.read.len75, 281474976710655
  %s.read.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %s.read.data78 = load ptr, ptr %s.read.data77, align 8
  %var.load79 = load i64, ptr %var.lp, align 8
  %idx.oob = icmp uge i64 %var.load79, %s.read.len76
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.94.else:                                      ; preds = %and.93.exit
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %idx_ok
  %and.94.phi = phi i1 [ %call.res80, %idx_ok ], [ %and.93.phi, %and.94.else ]
  br label %or.92.exit

idx_ok:                                           ; preds = %abort.dead, %and.94.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data78, i64 %var.load79
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res80 = call i1 @"path::is_sep"(i64 %s.byte.val)
  br label %and.94.exit

idx_oob:                                          ; preds = %and.94.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

define i1 @"path::has_traversal"(ptr %0) #0 {
entry:
  %var.seg_len = alloca i64, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %"var.start'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.start'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.95:                                   ; preds = %loop.latch.95, %str_ok
  %counter.load = load i64, ptr %loop.idx.95, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.i, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, %var.load5
  store i1 %cmptmp, ptr %var.is_end, align 1
  %var.load6 = load i1, ptr %var.is_end, align 1
  br i1 %var.load6, label %choice.then, label %choice.else

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %loop.exit.nat.95
  ret i1 false

choice.then:                                      ; preds = %loop.body.95
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.95
  %var.load7 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %idx_ok, %choice.then
  %choice.res = phi i32 [ 47, %choice.then ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load12 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load12 to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res, label %choice.then13, label %choice.exit14

idx_ok:                                           ; preds = %abort.dead, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then13:                                    ; preds = %choice.exit
  %var.load15 = load i64, ptr %var.i, align 8
  %var.load16 = load i64, ptr %"var.start'", align 8
  %subtmp = sub i64 %var.load15, %var.load16
  store i64 %subtmp, ptr %var.seg_len, align 8
  %var.load17 = load i64, ptr %var.seg_len, align 8
  %cmptmp18 = icmp eq i64 %var.load17, 2
  br i1 %cmptmp18, label %and.96.then, label %and.96.else

choice.exit14:                                    ; preds = %choice.exit51, %choice.exit
  br label %loop.latch.95

and.96.then:                                      ; preds = %choice.then13
  %var.load19 = load ptr, ptr %var.p, align 8
  %s.read.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len20, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %s.read.data23 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data23, align 8
  %var.load25 = load i64, ptr %"var.start'", align 8
  %idx.oob26 = icmp uge i64 %var.load25, %s.read.len22
  br i1 %idx.oob26, label %idx_oob28, label %idx_ok27

and.96.else:                                      ; preds = %choice.then13
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok27
  %and.96.phi = phi i1 [ %cmptmp33, %idx_ok27 ], [ %cmptmp18, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

idx_ok27:                                         ; preds = %abort.dead29, %and.96.then
  %s.byte.gep30 = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte31 = load i8, ptr %s.byte.gep30, align 1
  %s.byte.val32 = zext i8 %s.byte31 to i64
  %cmptmp33 = icmp eq i64 %s.byte.val32, 46
  br label %and.96.exit

idx_oob28:                                        ; preds = %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %idx_ok27

and.97.then:                                      ; preds = %and.96.exit
  %var.load34 = load ptr, ptr %var.p, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.start'", align 8
  %addtmp41 = add i64 %var.load40, 1
  %idx.oob42 = icmp uge i64 %addtmp41, %s.read.len37
  br i1 %idx.oob42, label %idx_oob44, label %idx_ok43

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %idx_ok43
  %and.97.phi = phi i1 [ %cmptmp49, %idx_ok43 ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %choice.then50, label %choice.exit51

idx_ok43:                                         ; preds = %abort.dead45, %and.97.then
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data39, i64 %addtmp41
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp49 = icmp eq i64 %s.byte.val48, 46
  br label %and.97.exit

idx_oob44:                                        ; preds = %and.97.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok43

choice.then50:                                    ; preds = %and.97.exit
  ret i1 true

choice.exit51:                                    ; preds = %ret.dead, %and.97.exit
  %var.load52 = load i64, ptr %var.i, align 8
  %addtmp53 = add i64 %var.load52, 1
  store i64 %addtmp53, ptr %"var.start'", align 8
  br label %choice.exit14

ret.dead:                                         ; No predecessors!
  br label %choice.exit51
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
