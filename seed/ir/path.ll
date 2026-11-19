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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i64 0

choice.exit:                                      ; preds = %ret.dead, %entry
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

declare i1 @"ascii::is_alpha"(i64) #0

define i64 @"path::posix_root_len"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.43.else:                                      ; preds = %entry
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
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.44.then, label %and.44.else

and.44.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.44.else:                                      ; preds = %entry
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sgt i64 %var.load3, 0
  br i1 %cmptmp, label %and.45.then, label %and.45.else

and.45.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.45.else:                                      ; preds = %entry
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
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.header.50:                                   ; preds = %loop.latch.50, %entry
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
  %cmptmp17 = icmp eq i64 %var.load12, %str.len.query16
  br i1 %cmptmp17, label %choice.then18, label %choice.else19

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

choice.then18:                                    ; preds = %loop.exit.50
  %var.load21 = load ptr, ptr %var.p, align 8
  br label %choice.exit20

choice.else19:                                    ; preds = %loop.exit.50
  %var.load22 = load ptr, ptr %var.p, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data26 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data26, align 8
  %var.load28 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len25, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len25
  %final.start = select i1 %start.gt.len, i64 %s.read.len25, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load28, 0
  %rel.end = add i64 %s.read.len25, %var.load28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len25
  %final.end = select i1 %end.gt.len, i64 %s.read.len25, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data27, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.then18
  %choice.res = phi ptr [ %var.load21, %choice.then18 ], [ %str.view, %choice.else19 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::win_strip_trailing_sep"(ptr %0) #0 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query5, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.header.52:                                   ; preds = %loop.latch.52, %choice.exit
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
  %cmptmp25 = icmp eq i64 %var.load20, %str.len.query24
  br i1 %cmptmp25, label %choice.then26, label %choice.else27

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

choice.then26:                                    ; preds = %loop.exit.52
  %var.load29 = load ptr, ptr %var.p, align 8
  br label %choice.exit28

choice.else27:                                    ; preds = %loop.exit.52
  %var.load30 = load ptr, ptr %var.p, align 8
  %s.read.len31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len31, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len33, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len33
  %final.start = select i1 %start.gt.len, i64 %s.read.len33, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load36, 0
  %rel.end = add i64 %s.read.len33, %var.load36
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load36
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len33
  %final.end = select i1 %end.gt.len, i64 %s.read.len33, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data35, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res37 = phi ptr [ %var.load29, %choice.then26 ], [ %str.view, %choice.else27 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res37, align 8
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
  %concat.str77 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.a, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp8 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp8, label %or.54.then, label %or.54.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

or.54.then:                                       ; preds = %choice.exit
  br label %or.54.exit

or.54.else:                                       ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load9)
  br label %or.54.exit

or.54.exit:                                       ; preds = %or.54.else, %or.54.then
  %or.54.phi = phi i1 [ %cmptmp8, %or.54.then ], [ %call.res, %or.54.else ]
  br i1 %or.54.phi, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %or.54.exit
  %var.load12 = load ptr, ptr %var.b, align 8
  %ret.pack13 = load { i64, ptr }, ptr %var.load12, align 8
  ret { i64, ptr } %ret.pack13

choice.exit11:                                    ; preds = %ret.dead14, %or.54.exit
  %var.load15 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %subtmp = sub i64 %str.len.query22, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len17
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead14:                                       ; No predecessors!
  br label %choice.exit11

idx_ok:                                           ; preds = %abort.dead, %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp23 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp23, label %choice.then24, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then24:                                    ; preds = %idx_ok
  %var.load26 = load ptr, ptr %var.a, align 8
  %var.load27 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %concat.lhs30 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %concat.lhs31 = load ptr, ptr %concat.lhs30, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %concat.rhs32 = load i64, ptr %concat.rhs, align 8
  %concat.rhs33 = and i64 %concat.rhs32, 281474976710655
  %concat.rhs34 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %concat.rhs35 = load ptr, ptr %concat.rhs34, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len36

choice.else:                                      ; preds = %idx_ok
  %var.load43 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %cat.seg44 = load i64, ptr %cat.seg, align 8
  %cat.seg45 = and i64 %cat.seg44, 281474976710655
  %cat.seg46 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %cat.seg47 = load ptr, ptr %cat.seg46, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load48 = load ptr, ptr %var.b, align 8
  %cat.seg49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %cat.seg50 = load i64, ptr %cat.seg49, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg45, i64 1)
  %sum54 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf55 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %cat.sum.len56

choice.exit25:                                    ; preds = %concat.tot.len68, %concat.tot.len40
  %choice.res = phi ptr [ %concat.str, %concat.tot.len40 ], [ %concat.str77, %concat.tot.len68 ]
  %ret.pack80 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack80

concat.sum.len36:                                 ; preds = %abort.dead37, %choice.then24
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort:                               ; preds = %choice.then24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %concat.sum.len36

concat.tot.len40:                                 ; preds = %abort.dead42, %concat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs31, i64 %concat.lhs29, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs35, i64 %concat.rhs33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit25

str_overflow_abort41:                             ; preds = %concat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %concat.tot.len40

cat.sum.len56:                                    ; preds = %abort.dead58, %choice.else
  %cat.sum.len59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum54, i64 %cat.seg51)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len59, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len59, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

str_overflow_abort57:                             ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %cat.sum.len56

cat.sum.len62:                                    ; preds = %abort.dead64, %cat.sum.len56
  %concat.tot.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 1)
  %sum66 = extractvalue { i64, i1 } %concat.tot.len65, 0
  %ovf67 = extractvalue { i64, i1 } %concat.tot.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.tot.len68

str_overflow_abort63:                             ; preds = %cat.sum.len56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %cat.sum.len62

concat.tot.len68:                                 ; preds = %abort.dead70, %cat.sum.len62
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %sum66)
  %cat.dst = getelementptr i8, ptr %concat.buf72, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg47, i64 %cat.seg45, i1 false)
  %cat.off = add i64 0, %cat.seg45
  %cat.dst73 = getelementptr i8, ptr %concat.buf72, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst73, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off74 = add i64 %cat.off, 1
  %cat.dst75 = getelementptr i8, ptr %concat.buf72, i64 %cat.off74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst75, ptr align 1 %cat.seg53, i64 %cat.seg51, i1 false)
  %concat.nul76 = getelementptr i8, ptr %concat.buf72, i64 %sum60
  store i8 0, ptr %concat.nul76, align 1
  %str.build.len.gep78 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 0
  store i64 %sum60, ptr %str.build.len.gep78, align 8
  %str.build.data.gep79 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 1
  store ptr %concat.buf72, ptr %str.build.data.gep79, align 8
  br label %choice.exit25

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %concat.tot.len68
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"path::win_join"(ptr %0, ptr %1) #0 {
entry:
  %concat.str77 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.a, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp8 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp8, label %or.55.then, label %or.55.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

or.55.then:                                       ; preds = %choice.exit
  br label %or.55.exit

or.55.else:                                       ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::win_is_abs"(ptr %var.load9)
  br label %or.55.exit

or.55.exit:                                       ; preds = %or.55.else, %or.55.then
  %or.55.phi = phi i1 [ %cmptmp8, %or.55.then ], [ %call.res, %or.55.else ]
  br i1 %or.55.phi, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %or.55.exit
  %var.load12 = load ptr, ptr %var.b, align 8
  %ret.pack13 = load { i64, ptr }, ptr %var.load12, align 8
  ret { i64, ptr } %ret.pack13

choice.exit11:                                    ; preds = %ret.dead14, %or.55.exit
  %var.load15 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %subtmp = sub i64 %str.len.query22, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len17
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead14:                                       ; No predecessors!
  br label %choice.exit11

idx_ok:                                           ; preds = %abort.dead, %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res23 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res23, label %choice.then24, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then24:                                    ; preds = %idx_ok
  %var.load26 = load ptr, ptr %var.a, align 8
  %var.load27 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %concat.lhs30 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %concat.lhs31 = load ptr, ptr %concat.lhs30, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %concat.rhs32 = load i64, ptr %concat.rhs, align 8
  %concat.rhs33 = and i64 %concat.rhs32, 281474976710655
  %concat.rhs34 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %concat.rhs35 = load ptr, ptr %concat.rhs34, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len36

choice.else:                                      ; preds = %idx_ok
  %var.load43 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %cat.seg44 = load i64, ptr %cat.seg, align 8
  %cat.seg45 = and i64 %cat.seg44, 281474976710655
  %cat.seg46 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %cat.seg47 = load ptr, ptr %cat.seg46, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load48 = load ptr, ptr %var.b, align 8
  %cat.seg49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %cat.seg50 = load i64, ptr %cat.seg49, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg45, i64 1)
  %sum54 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf55 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %cat.sum.len56

choice.exit25:                                    ; preds = %concat.tot.len68, %concat.tot.len40
  %choice.res = phi ptr [ %concat.str, %concat.tot.len40 ], [ %concat.str77, %concat.tot.len68 ]
  %ret.pack80 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack80

concat.sum.len36:                                 ; preds = %abort.dead37, %choice.then24
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort:                               ; preds = %choice.then24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %concat.sum.len36

concat.tot.len40:                                 ; preds = %abort.dead42, %concat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs31, i64 %concat.lhs29, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs35, i64 %concat.rhs33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit25

str_overflow_abort41:                             ; preds = %concat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %concat.tot.len40

cat.sum.len56:                                    ; preds = %abort.dead58, %choice.else
  %cat.sum.len59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum54, i64 %cat.seg51)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len59, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len59, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

str_overflow_abort57:                             ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %cat.sum.len56

cat.sum.len62:                                    ; preds = %abort.dead64, %cat.sum.len56
  %concat.tot.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 1)
  %sum66 = extractvalue { i64, i1 } %concat.tot.len65, 0
  %ovf67 = extractvalue { i64, i1 } %concat.tot.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %concat.tot.len68

str_overflow_abort63:                             ; preds = %cat.sum.len56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %cat.sum.len62

concat.tot.len68:                                 ; preds = %abort.dead70, %cat.sum.len62
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %sum66)
  %cat.dst = getelementptr i8, ptr %concat.buf72, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg47, i64 %cat.seg45, i1 false)
  %cat.off = add i64 0, %cat.seg45
  %cat.dst73 = getelementptr i8, ptr %concat.buf72, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst73, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off74 = add i64 %cat.off, 1
  %cat.dst75 = getelementptr i8, ptr %concat.buf72, i64 %cat.off74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst75, ptr align 1 %cat.seg53, i64 %cat.seg51, i1 false)
  %concat.nul76 = getelementptr i8, ptr %concat.buf72, i64 %sum60
  store i8 0, ptr %concat.nul76, align 1
  %str.build.len.gep78 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 0
  store i64 %sum60, ptr %str.build.len.gep78, align 8
  %str.build.data.gep79 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 1
  store ptr %concat.buf72, ptr %str.build.data.gep79, align 8
  br label %choice.exit25

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %concat.tot.len68
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
  %str.view = alloca { i64, ptr }, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %str.eq.merge
  %ret.pack12 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack12

choice.exit11:                                    ; preds = %ret.dead13, %str.eq.merge
  %var.load14 = load ptr, ptr %var.clean, align 8
  %str.len.query15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query15, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  store i64 %str.len.query17, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load18 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

ret.dead13:                                       ; No predecessors!
  br label %choice.exit11

loop.header.56:                                   ; preds = %loop.latch.56, %choice.exit11
  %counter.load = load i64, ptr %loop.idx.56, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load19 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load19, 1
  %var.load20 = load i64, ptr %var.i, align 8
  %subtmp21 = sub i64 %subtmp, %var.load20
  store i64 %subtmp21, ptr %var.idx, align 8
  %var.load22 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load26, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit31
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load33 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp34 = icmp slt i64 %var.load33, 0
  br i1 %cmptmp34, label %choice.then35, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.56
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp27 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp27, label %and.57.then, label %and.57.else

idx_oob:                                          ; preds = %loop.body.56
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.57.then:                                      ; preds = %idx_ok
  %var.load28 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp29 = icmp slt i64 %var.load28, 0
  br label %and.57.exit

and.57.else:                                      ; preds = %idx_ok
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %and.57.then
  %and.57.phi = phi i1 [ %cmptmp29, %and.57.then ], [ %cmptmp27, %and.57.else ]
  br i1 %and.57.phi, label %choice.then30, label %choice.exit31

choice.then30:                                    ; preds = %and.57.exit
  %var.load32 = load i64, ptr %var.idx, align 8
  store i64 %var.load32, ptr %"var.last_sep'", align 8
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.then30, %and.57.exit
  br label %loop.latch.56

choice.then35:                                    ; preds = %loop.exit.56
  br label %choice.exit36

choice.else:                                      ; preds = %loop.exit.56
  %var.load37 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp38 = icmp eq i64 %var.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

choice.exit36:                                    ; preds = %choice.exit41, %choice.then35
  %choice.res49 = phi ptr [ @str.5.struct, %choice.then35 ], [ %choice.res, %choice.exit41 ]
  %ret.pack50 = load { i64, ptr }, ptr %choice.res49, align 8
  ret { i64, ptr } %ret.pack50

choice.then39:                                    ; preds = %choice.else
  br label %choice.exit41

choice.else40:                                    ; preds = %choice.else
  %var.load42 = load ptr, ptr %var.clean, align 8
  %s.read.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len43, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data46 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data47 = load ptr, ptr %s.read.data46, align 8
  %var.load48 = load i64, ptr %"var.last_sep'", align 8
  %rel.start = add i64 %s.read.len45, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len45
  %final.start = select i1 %start.gt.len, i64 %s.read.len45, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load48, 0
  %rel.end = add i64 %s.read.len45, %var.load48
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load48
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len45
  %final.end = select i1 %end.gt.len, i64 %s.read.len45, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data47, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res = phi ptr [ @str.0.struct, %choice.then39 ], [ %str.view, %choice.else40 ]
  br label %choice.exit36
}

define { i64, ptr } @"path::win_parent"(ptr %0) #0 {
entry:
  %str.view107 = alloca { i64, ptr }, align 8
  %str.view80 = alloca { i64, ptr }, align 8
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load11 = load i64, ptr %var.rlen, align 8
  %cmptmp12 = icmp sgt i64 %var.load11, 0
  br i1 %cmptmp12, label %and.58.then, label %and.58.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.58.then:                                      ; preds = %choice.exit
  %var.load13 = load i64, ptr %var.clen, align 8
  %var.load14 = load i64, ptr %var.rlen, align 8
  %cmptmp15 = icmp eq i64 %var.load13, %var.load14
  br label %and.58.exit

and.58.else:                                      ; preds = %choice.exit
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %and.58.then
  %and.58.phi = phi i1 [ %cmptmp15, %and.58.then ], [ %cmptmp12, %and.58.else ]
  br i1 %and.58.phi, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %and.58.exit
  %var.load18 = load ptr, ptr %var.clean, align 8
  %ret.pack19 = load { i64, ptr }, ptr %var.load18, align 8
  ret { i64, ptr } %ret.pack19

choice.exit17:                                    ; preds = %ret.dead20, %and.58.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load21 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

ret.dead20:                                       ; No predecessors!
  br label %choice.exit17

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit17
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load21
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load22 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load22, 1
  %var.load23 = load i64, ptr %var.i, align 8
  %subtmp24 = sub i64 %subtmp, %var.load23
  store i64 %subtmp24, ptr %var.idx, align 8
  %var.load25 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load29, %s.read.len27
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load36 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp37 = icmp slt i64 %var.load36, 0
  br i1 %cmptmp37, label %choice.then38, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.59
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res30 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res30, label %and.60.then, label %and.60.else

idx_oob:                                          ; preds = %loop.body.59
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.60.then:                                      ; preds = %idx_ok
  %var.load31 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp32 = icmp slt i64 %var.load31, 0
  br label %and.60.exit

and.60.else:                                      ; preds = %idx_ok
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %and.60.then
  %and.60.phi = phi i1 [ %cmptmp32, %and.60.then ], [ %call.res30, %and.60.else ]
  br i1 %and.60.phi, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %and.60.exit
  %var.load35 = load i64, ptr %var.idx, align 8
  store i64 %var.load35, ptr %"var.last_sep'", align 8
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.then33, %and.60.exit
  br label %loop.latch.59

choice.then38:                                    ; preds = %loop.exit.59
  %var.load40 = load i64, ptr %var.rlen, align 8
  %cmptmp41 = icmp eq i64 %var.load40, 2
  br i1 %cmptmp41, label %choice.then42, label %choice.else43

choice.else:                                      ; preds = %loop.exit.59
  %var.load51 = load i64, ptr %"var.last_sep'", align 8
  %var.load52 = load i64, ptr %var.rlen, align 8
  %cmptmp53 = icmp slt i64 %var.load51, %var.load52
  br i1 %cmptmp53, label %choice.then54, label %choice.else55

choice.exit39:                                    ; preds = %choice.exit56, %choice.exit44
  %choice.res111 = phi ptr [ %choice.res, %choice.exit44 ], [ %choice.res110, %choice.exit56 ]
  %ret.pack112 = load { i64, ptr }, ptr %choice.res111, align 8
  ret { i64, ptr } %ret.pack112

choice.then42:                                    ; preds = %choice.then38
  %var.load45 = load ptr, ptr %var.clean, align 8
  %s.read.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %s.read.len47 = load i64, ptr %s.read.len46, align 8
  %s.read.len48 = and i64 %s.read.len47, 281474976710655
  %s.read.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %s.read.data50 = load ptr, ptr %s.read.data49, align 8
  %rel.start = add i64 %s.read.len48, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len48
  %final.start = select i1 %start.gt.len, i64 %s.read.len48, i64 %c.start.0
  %rel.end = add i64 %s.read.len48, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len48
  %final.end = select i1 %end.gt.len, i64 %s.read.len48, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data50, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit44

choice.else43:                                    ; preds = %choice.then38
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res = phi ptr [ %str.view, %choice.then42 ], [ @str.5.struct, %choice.else43 ]
  br label %choice.exit39

choice.then54:                                    ; preds = %choice.else
  %var.load57 = load ptr, ptr %var.clean, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  %var.load63 = load i64, ptr %var.rlen, align 8
  %rel.start64 = add i64 %s.read.len60, 0
  %norm.start65 = select i1 false, i64 %rel.start64, i64 0
  %start.lt.066 = icmp slt i64 %norm.start65, 0
  %c.start.067 = select i1 %start.lt.066, i64 0, i64 %norm.start65
  %start.gt.len68 = icmp sgt i64 %c.start.067, %s.read.len60
  %final.start69 = select i1 %start.gt.len68, i64 %s.read.len60, i64 %c.start.067
  %end.is_neg = icmp slt i64 %var.load63, 0
  %rel.end70 = add i64 %s.read.len60, %var.load63
  %norm.end71 = select i1 %end.is_neg, i64 %rel.end70, i64 %var.load63
  %end.lt.072 = icmp slt i64 %norm.end71, 0
  %c.end.073 = select i1 %end.lt.072, i64 0, i64 %norm.end71
  %end.gt.len74 = icmp sgt i64 %c.end.073, %s.read.len60
  %final.end75 = select i1 %end.gt.len74, i64 %s.read.len60, i64 %c.end.073
  %view.empty76 = icmp sle i64 %final.end75, %final.start69
  %view.len.sub77 = sub i64 %final.end75, %final.start69
  %view.len78 = select i1 %view.empty76, i64 0, i64 %view.len.sub77
  %view.data79 = getelementptr i8, ptr %s.read.data62, i64 %final.start69
  %str.build.len.gep81 = getelementptr inbounds { i64, ptr }, ptr %str.view80, i32 0, i32 0
  store i64 %view.len78, ptr %str.build.len.gep81, align 8
  %str.build.data.gep82 = getelementptr inbounds { i64, ptr }, ptr %str.view80, i32 0, i32 1
  store ptr %view.data79, ptr %str.build.data.gep82, align 8
  br label %choice.exit56

choice.else55:                                    ; preds = %choice.else
  %var.load83 = load ptr, ptr %var.clean, align 8
  %s.read.len84 = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 0
  %s.read.len85 = load i64, ptr %s.read.len84, align 8
  %s.read.len86 = and i64 %s.read.len85, 281474976710655
  %s.read.data87 = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 1
  %s.read.data88 = load ptr, ptr %s.read.data87, align 8
  %var.load89 = load i64, ptr %"var.last_sep'", align 8
  %rel.start90 = add i64 %s.read.len86, 0
  %norm.start91 = select i1 false, i64 %rel.start90, i64 0
  %start.lt.092 = icmp slt i64 %norm.start91, 0
  %c.start.093 = select i1 %start.lt.092, i64 0, i64 %norm.start91
  %start.gt.len94 = icmp sgt i64 %c.start.093, %s.read.len86
  %final.start95 = select i1 %start.gt.len94, i64 %s.read.len86, i64 %c.start.093
  %end.is_neg96 = icmp slt i64 %var.load89, 0
  %rel.end97 = add i64 %s.read.len86, %var.load89
  %norm.end98 = select i1 %end.is_neg96, i64 %rel.end97, i64 %var.load89
  %end.lt.099 = icmp slt i64 %norm.end98, 0
  %c.end.0100 = select i1 %end.lt.099, i64 0, i64 %norm.end98
  %end.gt.len101 = icmp sgt i64 %c.end.0100, %s.read.len86
  %final.end102 = select i1 %end.gt.len101, i64 %s.read.len86, i64 %c.end.0100
  %view.empty103 = icmp sle i64 %final.end102, %final.start95
  %view.len.sub104 = sub i64 %final.end102, %final.start95
  %view.len105 = select i1 %view.empty103, i64 0, i64 %view.len.sub104
  %view.data106 = getelementptr i8, ptr %s.read.data88, i64 %final.start95
  %str.build.len.gep108 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 0
  store i64 %view.len105, ptr %str.build.len.gep108, align 8
  %str.build.data.gep109 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 1
  store ptr %view.data106, ptr %str.build.data.gep109, align 8
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.else55, %choice.then54
  %choice.res110 = phi ptr [ %str.view80, %choice.then54 ], [ %str.view107, %choice.else55 ]
  br label %choice.exit39
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
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::parent"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
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
  %var.load6 = load ptr, ptr %var.par, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.6.struct, %choice.then ], [ %var.load6, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"path::posix_basename"(ptr %0) #0 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %str.eq.merge
  %ret.pack12 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack12

choice.exit11:                                    ; preds = %ret.dead13, %str.eq.merge
  %var.load14 = load ptr, ptr %var.clean, align 8
  %str.len.query15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query15, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  store i64 %str.len.query17, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load18 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

ret.dead13:                                       ; No predecessors!
  br label %choice.exit11

loop.header.61:                                   ; preds = %loop.latch.61, %choice.exit11
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load19 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load19, 1
  %var.load20 = load i64, ptr %var.i, align 8
  %subtmp21 = sub i64 %subtmp, %var.load20
  store i64 %subtmp21, ptr %var.idx, align 8
  %var.load22 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load26, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit31
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  %var.load33 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp34 = icmp slt i64 %var.load33, 0
  br i1 %cmptmp34, label %choice.then35, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.61
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp27 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp27, label %and.62.then, label %and.62.else

idx_oob:                                          ; preds = %loop.body.61
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.62.then:                                      ; preds = %idx_ok
  %var.load28 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp29 = icmp slt i64 %var.load28, 0
  br label %and.62.exit

and.62.else:                                      ; preds = %idx_ok
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %and.62.then
  %and.62.phi = phi i1 [ %cmptmp29, %and.62.then ], [ %cmptmp27, %and.62.else ]
  br i1 %and.62.phi, label %choice.then30, label %choice.exit31

choice.then30:                                    ; preds = %and.62.exit
  %var.load32 = load i64, ptr %var.idx, align 8
  store i64 %var.load32, ptr %"var.last_sep'", align 8
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.then30, %and.62.exit
  br label %loop.latch.61

choice.then35:                                    ; preds = %loop.exit.61
  %var.load37 = load ptr, ptr %var.clean, align 8
  br label %choice.exit36

choice.else:                                      ; preds = %loop.exit.61
  %var.load38 = load ptr, ptr %var.clean, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load44, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len41, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len41
  %final.start = select i1 %start.gt.len, i64 %s.read.len41, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len41, 0
  %rel.end = add i64 %s.read.len41, %s.read.len41
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len41
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len41
  %final.end = select i1 %end.gt.len, i64 %s.read.len41, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data43, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else, %choice.then35
  %choice.res = phi ptr [ %var.load37, %choice.then35 ], [ %str.view, %choice.else ]
  %ret.pack45 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack45
}

define { i64, ptr } @"path::win_basename"(ptr %0) #0 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load11 = load i64, ptr %var.rlen, align 8
  %cmptmp12 = icmp sgt i64 %var.load11, 0
  br i1 %cmptmp12, label %and.63.then, label %and.63.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.63.then:                                      ; preds = %choice.exit
  %var.load13 = load i64, ptr %var.clen, align 8
  %var.load14 = load i64, ptr %var.rlen, align 8
  %cmptmp15 = icmp eq i64 %var.load13, %var.load14
  br label %and.63.exit

and.63.else:                                      ; preds = %choice.exit
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %and.63.then
  %and.63.phi = phi i1 [ %cmptmp15, %and.63.then ], [ %cmptmp12, %and.63.else ]
  br i1 %and.63.phi, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %and.63.exit
  %var.load18 = load ptr, ptr %var.clean, align 8
  %ret.pack19 = load { i64, ptr }, ptr %var.load18, align 8
  ret { i64, ptr } %ret.pack19

choice.exit17:                                    ; preds = %ret.dead20, %and.63.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load21 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

ret.dead20:                                       ; No predecessors!
  br label %choice.exit17

loop.header.64:                                   ; preds = %loop.latch.64, %choice.exit17
  %counter.load = load i64, ptr %loop.idx.64, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load21
  br i1 %loop.cond, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load22 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load22, 1
  %var.load23 = load i64, ptr %var.i, align 8
  %subtmp24 = sub i64 %subtmp, %var.load23
  store i64 %subtmp24, ptr %var.idx, align 8
  %var.load25 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.idx, align 8
  %idx.oob = icmp uge i64 %var.load29, %s.read.len27
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load36 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp37 = icmp slt i64 %var.load36, 0
  br i1 %cmptmp37, label %choice.then38, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %loop.body.64
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res30 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res30, label %and.65.then, label %and.65.else

idx_oob:                                          ; preds = %loop.body.64
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.65.then:                                      ; preds = %idx_ok
  %var.load31 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp32 = icmp slt i64 %var.load31, 0
  br label %and.65.exit

and.65.else:                                      ; preds = %idx_ok
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %and.65.then
  %and.65.phi = phi i1 [ %cmptmp32, %and.65.then ], [ %call.res30, %and.65.else ]
  br i1 %and.65.phi, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %and.65.exit
  %var.load35 = load i64, ptr %var.idx, align 8
  store i64 %var.load35, ptr %"var.last_sep'", align 8
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.then33, %and.65.exit
  br label %loop.latch.64

choice.then38:                                    ; preds = %loop.exit.64
  %var.load40 = load i64, ptr %var.rlen, align 8
  %cmptmp41 = icmp eq i64 %var.load40, 2
  br i1 %cmptmp41, label %choice.then42, label %choice.else43

choice.else:                                      ; preds = %loop.exit.64
  %var.load45 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load45, 1
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else, %choice.exit44
  %choice.res46 = phi i64 [ %choice.res, %choice.exit44 ], [ %addtmp, %choice.else ]
  store i64 %choice.res46, ptr %var.start, align 8
  %var.load47 = load i64, ptr %var.start, align 8
  %var.load48 = load i64, ptr %var.clen, align 8
  %cmptmp49 = icmp sge i64 %var.load47, %var.load48
  br i1 %cmptmp49, label %choice.then50, label %choice.else51

choice.then42:                                    ; preds = %choice.then38
  br label %choice.exit44

choice.else43:                                    ; preds = %choice.then38
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res = phi i64 [ 2, %choice.then42 ], [ 0, %choice.else43 ]
  br label %choice.exit39

choice.then50:                                    ; preds = %choice.exit39
  br label %choice.exit52

choice.else51:                                    ; preds = %choice.exit39
  %var.load53 = load ptr, ptr %var.clean, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %var.load59 = load i64, ptr %var.start, align 8
  %start.is_neg = icmp slt i64 %var.load59, 0
  %rel.start = add i64 %s.read.len56, %var.load59
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load59
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len56
  %final.start = select i1 %start.gt.len, i64 %s.read.len56, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len56, 0
  %rel.end = add i64 %s.read.len56, %s.read.len56
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len56
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len56
  %final.end = select i1 %end.gt.len, i64 %s.read.len56, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data58, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %choice.then50
  %choice.res60 = phi ptr [ @str.6.struct, %choice.then50 ], [ %str.view, %choice.else51 ]
  %ret.pack61 = load { i64, ptr }, ptr %choice.res60, align 8
  ret { i64, ptr } %ret.pack61
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
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 -1, ptr %"var.dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.header.66:                                   ; preds = %loop.latch.66, %entry
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
  %str.view = alloca { i64, ptr }, align 8
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.b, align 8
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
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.69.exit

or.69.exit:                                       ; preds = %or.69.else, %or.69.then
  %or.69.phi = phi i1 [ %cmptmp, %or.69.then ], [ %cmptmp8, %or.69.else ]
  br i1 %or.69.phi, label %choice.then, label %choice.else

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
  %str.view = alloca { i64, ptr }, align 8
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.b, align 8
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
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp sge i64 %var.load4, %subtmp
  br label %or.70.exit

or.70.exit:                                       ; preds = %or.70.else, %or.70.then
  %or.70.phi = phi i1 [ %cmptmp, %or.70.then ], [ %cmptmp8, %or.70.else ]
  br i1 %or.70.phi, label %choice.then, label %choice.else

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
  %str.view = alloca { i64, ptr }, align 8
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.b, align 8
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
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.71.exit

or.71.exit:                                       ; preds = %or.71.else, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp, %or.71.then ], [ %cmptmp8, %or.71.else ]
  br i1 %or.71.phi, label %choice.then, label %choice.else

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
  %ret.ub.salloc104 = alloca { i64, ptr }, align 8
  %concat.str67 = alloca { i64, ptr }, align 8
  %var.suf = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var.st = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
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
  store { i64, ptr } %call.res2, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.st, align 8
  %var.load3 = load ptr, ptr %var.new_ext, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query5, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.new_ext, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %choice.exit13, %choice.then
  %choice.res30 = phi ptr [ @str.6.struct, %choice.then ], [ %choice.res, %choice.exit13 ]
  store ptr %choice.res30, ptr %var.suf, align 8
  %var.load31 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %eq.lhs.len32 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len33 = and i64 %eq.lhs.len32, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len33, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

idx_ok:                                           ; preds = %abort.dead, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp10, label %choice.then11, label %choice.else12

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then11:                                    ; preds = %idx_ok
  %var.load14 = load ptr, ptr %var.new_ext, align 8
  br label %choice.exit13

choice.else12:                                    ; preds = %idx_ok
  %var.load15 = load ptr, ptr %var.new_ext, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs16 = and i64 %concat.lhs, 281474976710655
  %concat.lhs17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %concat.rhs18 = load i64, ptr %concat.rhs, align 8
  %concat.rhs19 = and i64 %concat.rhs18, 281474976710655
  %concat.rhs20 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %concat.rhs21 = load ptr, ptr %concat.rhs20, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 %concat.rhs19)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len22

choice.exit13:                                    ; preds = %concat.tot.len26, %choice.then11
  %choice.res = phi ptr [ %var.load14, %choice.then11 ], [ %concat.str, %concat.tot.len26 ]
  br label %choice.exit

concat.sum.len22:                                 ; preds = %abort.dead23, %choice.else12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum24 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf25 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %concat.tot.len26

str_overflow_abort:                               ; preds = %choice.else12
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %concat.sum.len22

concat.tot.len26:                                 ; preds = %abort.dead28, %concat.sum.len22
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs17, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs21, i64 %concat.rhs19, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit13

str_overflow_abort27:                             ; preds = %concat.sum.len22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %concat.tot.len26

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %eq.lhs.data35 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data35, ptr %eq.rhs.data, i64 %eq.lhs.len33)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then36, label %choice.else37

choice.then36:                                    ; preds = %str.eq.merge
  %var.load39 = load ptr, ptr %var.st, align 8
  %var.load40 = load ptr, ptr %var.suf, align 8
  %concat.lhs41 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %concat.lhs42 = load i64, ptr %concat.lhs41, align 8
  %concat.lhs43 = and i64 %concat.lhs42, 281474976710655
  %concat.lhs44 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %concat.lhs45 = load ptr, ptr %concat.lhs44, align 8
  %concat.rhs46 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %concat.rhs47 = load i64, ptr %concat.rhs46, align 8
  %concat.rhs48 = and i64 %concat.rhs47, 281474976710655
  %concat.rhs49 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %concat.rhs50 = load ptr, ptr %concat.rhs49, align 8
  %concat.sum.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs43, i64 %concat.rhs48)
  %sum52 = extractvalue { i64, i1 } %concat.sum.len51, 0
  %ovf53 = extractvalue { i64, i1 } %concat.sum.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %concat.sum.len54

choice.else37:                                    ; preds = %str.eq.merge
  %var.load70 = load ptr, ptr %var.par, align 8
  %var.load71 = load ptr, ptr %var.st, align 8
  %var.load72 = load ptr, ptr %var.suf, align 8
  %concat.lhs73 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %concat.lhs74 = load i64, ptr %concat.lhs73, align 8
  %concat.lhs75 = and i64 %concat.lhs74, 281474976710655
  %concat.lhs76 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %concat.lhs77 = load ptr, ptr %concat.lhs76, align 8
  %concat.rhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %concat.rhs79 = load i64, ptr %concat.rhs78, align 8
  %concat.rhs80 = and i64 %concat.rhs79, 281474976710655
  %concat.rhs81 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %concat.rhs82 = load ptr, ptr %concat.rhs81, align 8
  %concat.sum.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs75, i64 %concat.rhs80)
  %sum84 = extractvalue { i64, i1 } %concat.sum.len83, 0
  %ovf85 = extractvalue { i64, i1 } %concat.sum.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %concat.sum.len86

choice.exit38:                                    ; preds = %concat.tot.len92, %concat.tot.len60
  %choice.res105 = phi ptr [ %concat.str67, %concat.tot.len60 ], [ %ret.ub.salloc104, %concat.tot.len92 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res105, align 8
  ret { i64, ptr } %ret.pack

concat.sum.len54:                                 ; preds = %abort.dead56, %choice.then36
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum52, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort55:                             ; preds = %choice.then36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %concat.sum.len54

concat.tot.len60:                                 ; preds = %abort.dead62, %concat.sum.len54
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf64, ptr align 1 %concat.lhs45, i64 %concat.lhs43, i1 false)
  %concat.mid65 = getelementptr i8, ptr %concat.buf64, i64 %concat.lhs43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid65, ptr align 1 %concat.rhs50, i64 %concat.rhs48, i1 false)
  %concat.nul66 = getelementptr i8, ptr %concat.buf64, i64 %sum52
  store i8 0, ptr %concat.nul66, align 1
  %str.build.len.gep68 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 0
  store i64 %sum52, ptr %str.build.len.gep68, align 8
  %str.build.data.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 1
  store ptr %concat.buf64, ptr %str.build.data.gep69, align 8
  br label %choice.exit38

str_overflow_abort61:                             ; preds = %concat.sum.len54
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %concat.tot.len60

concat.sum.len86:                                 ; preds = %abort.dead88, %choice.else37
  %concat.tot.len89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum84, i64 1)
  %sum90 = extractvalue { i64, i1 } %concat.tot.len89, 0
  %ovf91 = extractvalue { i64, i1 } %concat.tot.len89, 1
  br i1 %ovf91, label %str_overflow_abort93, label %concat.tot.len92

str_overflow_abort87:                             ; preds = %choice.else37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %concat.sum.len86

concat.tot.len92:                                 ; preds = %abort.dead94, %concat.sum.len86
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum90)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf96, ptr align 1 %concat.lhs77, i64 %concat.lhs75, i1 false)
  %concat.mid97 = getelementptr i8, ptr %concat.buf96, i64 %concat.lhs75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid97, ptr align 1 %concat.rhs82, i64 %concat.rhs80, i1 false)
  %concat.nul98 = getelementptr i8, ptr %concat.buf96, i64 %sum84
  store i8 0, ptr %concat.nul98, align 1
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %str.build.len.gep101 = getelementptr inbounds { i64, ptr }, ptr %concat.str100, i32 0, i32 0
  store i64 %sum84, ptr %str.build.len.gep101, align 8
  %str.build.data.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str100, i32 0, i32 1
  store ptr %concat.buf96, ptr %str.build.data.gep102, align 8
  %call.res103 = call { i64, ptr } @"path::join"(ptr %var.load70, ptr %concat.str100)
  store { i64, ptr } %call.res103, ptr %ret.ub.salloc104, align 8
  br label %choice.exit38

str_overflow_abort93:                             ; preds = %concat.sum.len86
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %concat.tot.len92
}

define ptr @"path::split"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.c = alloca i64, align 8
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
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len5 = load i64, ptr %str.len, align 8
  %str.len6 = and i64 %str.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.72, align 8
  br label %loop.header.72

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len3

loop.header.72:                                   ; preds = %loop.latch.72, %b.buf.len3
  %counter.load = load i64, ptr %loop.idx.72, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len6
  br i1 %loop.cond, label %loop.body.72, label %loop.exit.nat.72

loop.body.72:                                     ; preds = %loop.header.72
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.72, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load8 = load i64, ptr %var.c, align 8
  %call.res = call i1 @"path::is_sep"(i64 %var.load8)
  br i1 %call.res, label %choice.then, label %choice.else

loop.exit.nat.72:                                 ; preds = %loop.header.72
  br label %loop.exit.72

loop.latch.72:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.72, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.72, align 8
  br label %loop.header.72

loop.exit.72:                                     ; preds = %loop.exit.nat.72
  %var.load46 = load ptr, ptr %var.cur, align 8
  %b.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load46, i32 0, i32 0
  %b.len48 = load i64, ptr %b.len47, align 8
  %cmptmp49 = icmp sgt i64 %b.len48, 0
  br i1 %cmptmp49, label %choice.then50, label %choice.exit51

choice.then:                                      ; preds = %loop.body.72
  %var.load9 = load ptr, ptr %var.cur, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  %b.len10 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sgt i64 %b.len10, 0
  br i1 %cmptmp, label %choice.then11, label %choice.exit12

choice.else:                                      ; preds = %loop.body.72
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load31 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load31, 0
  %b.b.le255 = icmp sle i64 %var.load31, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.exit:                                      ; preds = %b.push_done, %choice.exit12
  br label %loop.latch.72

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %b.freeze.len14 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.freeze.data15 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit12:                                    ; preds = %a.store, %choice.then
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then11
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data15, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data15, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data15, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len14, 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data15, i64 %b.freeze.len14, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len14
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then11
  %b.freeze.data17 = phi ptr [ %b.freeze.data15, %choice.then11 ], [ %b.freeze.data15, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len14, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data17, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %b.freeze.done
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
  store ptr %a.create20, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.freeze.done
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len26 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap27 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len26, %a.cap27
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data28 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len29 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data28, i64 %a.cur.len29
  %slot.p2i = ptrtoint ptr %builder.freeze to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len29, 1
  %b.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep30, align 8
  br label %choice.exit12

b.byte_ok:                                        ; preds = %abort.dead32, %choice.else
  %b.byte.i8 = trunc i64 %var.load31 to i8
  %b.len33 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len34 = load i64, ptr %b.len33, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data36 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len34, %b.cap35
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.else
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap35, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum37 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.new.buf.len39

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len39
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data43 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len44 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data43, i64 %b.cur.len44
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len44, 1
  %b.nul = getelementptr i8, ptr %b.cur.data43, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep45, align 8
  br label %choice.exit

b.new.buf.len39:                                  ; preds = %abort.dead41, %b.grow
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data36, i64 %b.len34, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len34
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort40:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %b.new.buf.len39

choice.then50:                                    ; preds = %loop.exit.72
  %var.load52 = load ptr, ptr %var.cur, align 8
  %b.freeze.len53 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %b.freeze.len54 = load i64, ptr %b.freeze.len53, align 8
  %b.freeze.data55 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  %b.freeze.data56 = load ptr, ptr %b.freeze.data55, align 8
  %b.freeze.arena57 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep58 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena57, i32 0, i32 1
  %b.freeze.nc59 = load i64, ptr %b.freeze.nc.gep58, align 8
  %b.freeze.has.chunk60 = icmp sgt i64 %b.freeze.nc59, 0
  br i1 %b.freeze.has.chunk60, label %b.freeze.check61, label %b.freeze.done63

choice.exit51:                                    ; preds = %a.store105, %loop.exit.72
  %var.load119 = load ptr, ptr %var.out, align 8
  %a.load120 = load ptr, ptr %var.out, align 8
  %a.null121 = icmp eq ptr %a.load120, null
  br i1 %a.null121, label %a.create122, label %a.after123

b.freeze.check61:                                 ; preds = %choice.then50
  %b.freeze.last.idx64 = sub i64 %b.freeze.nc59, 1
  %b.freeze.chunks.gep65 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena57, i32 0, i32 3
  %b.freeze.chunk.slot66 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep65, i64 0, i64 %b.freeze.last.idx64
  %b.freeze.last.chunk67 = load ptr, ptr %b.freeze.chunk.slot66, align 8
  %b.freeze.off.gep68 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena57, i32 0, i32 2
  %b.freeze.off69 = load i64, ptr %b.freeze.off.gep68, align 8
  %b.freeze.bump70 = getelementptr i8, ptr %b.freeze.last.chunk67, i64 %b.freeze.off69
  %b.freeze.cap.gep71 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena57, i32 0, i32 0
  %b.freeze.cap72 = load i64, ptr %b.freeze.cap.gep71, align 8
  %b.freeze.chunk.end73 = getelementptr i8, ptr %b.freeze.last.chunk67, i64 %b.freeze.cap72
  %b.freeze.ge.chunk74 = icmp uge ptr %b.freeze.data56, %b.freeze.last.chunk67
  %b.freeze.lt.end75 = icmp ult ptr %b.freeze.data56, %b.freeze.chunk.end73
  %b.freeze.in.chunk76 = and i1 %b.freeze.ge.chunk74, %b.freeze.lt.end75
  %b.freeze.ge.bump77 = icmp uge ptr %b.freeze.data56, %b.freeze.bump70
  %b.freeze.reaped78 = and i1 %b.freeze.in.chunk76, %b.freeze.ge.bump77
  br i1 %b.freeze.reaped78, label %b.freeze.copy62, label %b.freeze.done63

b.freeze.copy62:                                  ; preds = %b.freeze.check61
  %b.freeze.alen79 = add i64 %b.freeze.len54, 1
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %b.freeze.alen79)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh81, ptr align 1 %b.freeze.data56, i64 %b.freeze.len54, i1 false)
  %b.freeze.nul82 = getelementptr i8, ptr %b.freeze.fresh81, i64 %b.freeze.len54
  store i8 0, ptr %b.freeze.nul82, align 1
  br label %b.freeze.done63

b.freeze.done63:                                  ; preds = %b.freeze.copy62, %b.freeze.check61, %choice.then50
  %b.freeze.data83 = phi ptr [ %b.freeze.data56, %choice.then50 ], [ %b.freeze.data56, %b.freeze.check61 ], [ %b.freeze.fresh81, %b.freeze.copy62 ]
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %str.build.len.gep86 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze85, i32 0, i32 0
  store i64 %b.freeze.len54, ptr %str.build.len.gep86, align 8
  %str.build.data.gep87 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze85, i32 0, i32 1
  store ptr %b.freeze.data83, ptr %str.build.data.gep87, align 8
  %b.freeze.rst.len88 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len88, align 8
  %b.freeze.rst.data89 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data89, align 8
  %b.freeze.rst.cap90 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap90, align 8
  %a.load91 = load ptr, ptr %var.out, align 8
  %a.null92 = icmp eq ptr %a.load91, null
  br i1 %a.null92, label %a.create93, label %a.after94

a.create93:                                       ; preds = %b.freeze.done63
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 24)
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 128)
  %a.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 0
  store i64 0, ptr %a.len.gep99, align 8
  %a.data.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 1
  store ptr %a.buf98, ptr %a.data.gep100, align 8
  %a.cap.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 2
  store i64 16, ptr %a.cap.gep101, align 8
  store ptr %a.create96, ptr %var.out, align 8
  br label %a.after94

a.after94:                                        ; preds = %a.create93, %b.freeze.done63
  %a.load2102 = load ptr, ptr %var.out, align 8
  br label %a.check103

a.check103:                                       ; preds = %a.after94
  %a.len106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 0
  %a.len107 = load i64, ptr %a.len106, align 8
  %a.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 2
  %a.cap109 = load i64, ptr %a.cap108, align 8
  %a.needs.grow110 = icmp eq i64 %a.len107, %a.cap109
  br i1 %a.needs.grow110, label %a.grow104, label %a.store105

a.grow104:                                        ; preds = %a.check103
  call void @dva_array_grow(ptr %a.load2102)
  br label %a.store105

a.store105:                                       ; preds = %a.grow104, %a.check103
  %a.cur.data111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 1
  %a.cur.data112 = load ptr, ptr %a.cur.data111, align 8
  %a.cur.len113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 0
  %a.cur.len114 = load i64, ptr %a.cur.len113, align 8
  %a.elem.gep115 = getelementptr i64, ptr %a.cur.data112, i64 %a.cur.len114
  %slot.p2i116 = ptrtoint ptr %builder.freeze85 to i64
  store i64 %slot.p2i116, ptr %a.elem.gep115, align 8
  %a.next.len117 = add i64 %a.cur.len114, 1
  %b.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 0
  store i64 %a.next.len117, ptr %b.len.gep118, align 8
  br label %choice.exit51

a.create122:                                      ; preds = %choice.exit51
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 24)
  %arena.cur126 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 128)
  %a.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 0
  store i64 0, ptr %a.len.gep128, align 8
  %a.data.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 1
  store ptr %a.buf127, ptr %a.data.gep129, align 8
  %a.cap.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 2
  store i64 16, ptr %a.cap.gep130, align 8
  store ptr %a.create125, ptr %var.out, align 8
  br label %a.after123

a.after123:                                       ; preds = %a.create122, %choice.exit51
  %a.load2131 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2131
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

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
define internal void @dva_abort_arr_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"path::posix_normalize"(ptr %0) #0 {
entry:
  %builder.freeze526 = alloca { i64, ptr }, align 8
  %var._423 = alloca ptr, align 8
  %var._i422 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.seg418 = alloca ptr, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._225 = alloca ptr, align 8
  %var._222 = alloca ptr, align 8
  %var._160 = alloca i64, align 8
  %var._i159 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._126 = alloca ptr, align 8
  %var._123 = alloca ptr, align 8
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  store i64 %str.len.query11, ptr %var.len, align 8
  %var.load12 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load12, 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len6

loop.header.73:                                   ; preds = %loop.latch.73, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.73, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.73, label %loop.exit.nat.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load13 = load i64, ptr %var.i, align 8
  %var.load14 = load i64, ptr %var.len, align 8
  %cmptmp15 = icmp eq i64 %var.load13, %var.load14
  store i1 %cmptmp15, ptr %var.is_end, align 1
  %var.load16 = load i1, ptr %var.is_end, align 1
  br i1 %var.load16, label %choice.then17, label %choice.else

loop.exit.nat.73:                                 ; preds = %loop.header.73
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit29
  %step.val335 = load i64, ptr %loop.step.73, align 8
  %loop.next336 = add i64 %counter.load, %step.val335
  store i64 %loop.next336, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %loop.exit.nat.73
  %var.load337 = load ptr, ptr %var.p, align 8
  %str.len.query338 = getelementptr inbounds { i64, ptr }, ptr %var.load337, i32 0, i32 0
  %str.len.query339 = load i64, ptr %str.len.query338, align 8
  %str.len.query340 = and i64 %str.len.query339, 281474976710655
  %addtmp341 = add i64 %str.len.query340, 2
  %cap.neg = icmp slt i64 %addtmp341, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp341
  %b.data.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len345 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum346 = extractvalue { i64, i1 } %b.buf.len345, 0
  %ovf347 = extractvalue { i64, i1 } %b.buf.len345, 1
  br i1 %ovf347, label %str_overflow_abort349, label %b.buf.len348

choice.then17:                                    ; preds = %loop.body.73
  br label %choice.exit18

choice.else:                                      ; preds = %loop.body.73
  %var.load19 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load23, %s.read.len21
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit18:                                    ; preds = %idx_ok, %choice.then17
  %choice.res = phi i32 [ 47, %choice.then17 ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load25 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load25 to i64
  %cmptmp26 = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp26, label %choice.then27, label %choice.else28

idx_ok:                                           ; preds = %abort.dead24, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data22, i64 %var.load23
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit18

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %idx_ok

choice.then27:                                    ; preds = %choice.exit18
  %var.load30 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 0
  %b.freeze.len31 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 1
  %b.freeze.data32 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else28:                                    ; preds = %choice.exit18
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load316 = load i32, ptr %var.c, align 4
  %coerce.sext317 = sext i32 %var.load316 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext317, 128
  %br.cmp2 = icmp slt i64 %coerce.sext317, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext317, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len318 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len318, i64 %br.width)
  %sum319 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf320 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf320, label %str_overflow_abort322, label %b.rn.new.len321

choice.exit29:                                    ; preds = %br.done.77, %choice.exit59
  br label %loop.latch.73

b.freeze.check:                                   ; preds = %choice.then27
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data32, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data32, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data32, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len31, 1
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data32, i64 %b.freeze.len31, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len31
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then27
  %b.freeze.data34 = phi ptr [ %b.freeze.data32, %choice.then27 ], [ %b.freeze.data32, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len31, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data34, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load36 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %eq.lhs.len37 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len38 = and i64 %eq.lhs.len37, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len39 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len38, %eq.rhs.len39
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %eq.lhs.data40 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data40, ptr %eq.rhs.data, i64 %eq.lhs.len38)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %str.eq.merge
  %var.load41 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %eq.lhs.len43 = load i64, ptr %eq.lhs.len42, align 8
  %eq.lhs.len44 = and i64 %eq.lhs.len43, 281474976710655
  %eq.rhs.len45 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len46 = and i64 %eq.rhs.len45, 281474976710655
  %eq.len47 = icmp eq i64 %eq.lhs.len44, %eq.rhs.len46
  br i1 %eq.len47, label %str.eq.then48, label %str.eq.else49

and.74.else:                                      ; preds = %str.eq.merge
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %str.eq.merge50
  %and.74.phi = phi i1 [ %str.neq57, %str.eq.merge50 ], [ %str.neq, %and.74.else ]
  br i1 %and.74.phi, label %choice.then58, label %choice.exit59

str.eq.then48:                                    ; preds = %and.74.then
  %eq.lhs.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %eq.lhs.data52 = load ptr, ptr %eq.lhs.data51, align 8
  %eq.rhs.data53 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp54 = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data53, i64 %eq.lhs.len44)
  %eq.cmp.zero55 = icmp eq i32 %eq.memcmp54, 0
  br label %str.eq.merge50

str.eq.else49:                                    ; preds = %and.74.then
  br label %str.eq.merge50

str.eq.merge50:                                   ; preds = %str.eq.else49, %str.eq.then48
  %str.eq.result56 = phi i1 [ %eq.cmp.zero55, %str.eq.then48 ], [ false, %str.eq.else49 ]
  %str.neq57 = xor i1 %str.eq.result56, true
  br label %and.74.exit

choice.then58:                                    ; preds = %and.74.exit
  %var.load60 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len61 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %eq.lhs.len62 = load i64, ptr %eq.lhs.len61, align 8
  %eq.lhs.len63 = and i64 %eq.lhs.len62, 281474976710655
  %eq.rhs.len64 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len65 = and i64 %eq.rhs.len64, 281474976710655
  %eq.len66 = icmp eq i64 %eq.lhs.len63, %eq.rhs.len65
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.else68

choice.exit59:                                    ; preds = %choice.exit78, %and.74.exit
  br label %choice.exit29

str.eq.then67:                                    ; preds = %choice.then58
  %eq.lhs.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data70, align 8
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp73 = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data72, i64 %eq.lhs.len63)
  %eq.cmp.zero74 = icmp eq i32 %eq.memcmp73, 0
  br label %str.eq.merge69

str.eq.else68:                                    ; preds = %choice.then58
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.else68, %str.eq.then67
  %str.eq.result75 = phi i1 [ %eq.cmp.zero74, %str.eq.then67 ], [ false, %str.eq.else68 ]
  br i1 %str.eq.result75, label %choice.then76, label %choice.else77

choice.then76:                                    ; preds = %str.eq.merge69
  %var.load79 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else77:                                    ; preds = %str.eq.merge69
  %var.load287 = load ptr, ptr %var.seg, align 8
  %a.load288 = load ptr, ptr %var.segs, align 8
  %a.null289 = icmp eq ptr %a.load288, null
  br i1 %a.null289, label %a.create290, label %a.after291

choice.exit78:                                    ; preds = %a.store302, %choice.exit146
  br label %choice.exit59

a.create:                                         ; preds = %choice.then76
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 24)
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 128)
  %a.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 0
  store i64 0, ptr %a.len.gep84, align 8
  %a.data.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 1
  store ptr %a.buf83, ptr %a.data.gep85, align 8
  %a.cap.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 2
  store i64 16, ptr %a.cap.gep86, align 8
  store ptr %a.create81, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then76
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query87 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query87, ptr %var.n_segs, align 8
  %var.load88 = load i64, ptr %var.n_segs, align 8
  %cmptmp89 = icmp sgt i64 %var.load88, 0
  br i1 %cmptmp89, label %and.75.then, label %and.75.else

and.75.then:                                      ; preds = %a.after
  %var.load90 = load ptr, ptr %var.segs, align 8
  %a.load91 = load ptr, ptr %var.segs, align 8
  %a.null92 = icmp eq ptr %a.load91, null
  br i1 %a.null92, label %a.create93, label %a.after94

and.75.else:                                      ; preds = %a.after
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge136
  %and.75.phi = phi i1 [ %str.neq143, %str.eq.merge136 ], [ %cmptmp89, %and.75.else ]
  br i1 %and.75.phi, label %choice.then144, label %choice.else145

a.create93:                                       ; preds = %and.75.then
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 24)
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 128)
  %a.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 0
  store i64 0, ptr %a.len.gep99, align 8
  %a.data.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 1
  store ptr %a.buf98, ptr %a.data.gep100, align 8
  %a.cap.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 2
  store i64 16, ptr %a.cap.gep101, align 8
  store ptr %a.create96, ptr %var.segs, align 8
  br label %a.after94

a.after94:                                        ; preds = %a.create93, %and.75.then
  %a.load2102 = load ptr, ptr %var.segs, align 8
  %var.load103 = load i64, ptr %var.n_segs, align 8
  %subtmp = sub i64 %var.load103, 1
  %a.rd.nonnull = icmp ne ptr %a.load2102, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after94
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 0
  %a.rd.len104 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len104
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2102, i32 0, i32 1
  %a.rd.data105 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data105, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after94
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 276, ptr %err.line.gep, align 8
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
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 56)
  %err.code.gep109 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 0
  store i64 4011, ptr %err.code.gep109, align 8
  %err.msg.gep110 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep110, align 8
  %err.file.gep111 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep111, align 8
  %err.line.gep112 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 3
  store i64 276, ptr %err.line.gep112, align 8
  %err.col.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 4
  store i64 57, ptr %err.col.gep113, align 8
  %err.ctx.gep114 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc108, i32 0, i32 5
  %err.ctx0.gep115 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep114, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep115, align 8
  %err.ctx1.gep116 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep114, i32 0, i32 1
  store i64 %a.rd.len104, ptr %err.ctx1.gep116, align 8
  %err.p2i117 = ptrtoint ptr %err.alloc108 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i117, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag118 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag118, label %choice.then119, label %choice.else120

choice.then119:                                   ; preds = %a.rd.done
  %ram.pay122 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay122 to ptr
  store ptr %pay.ptr, ptr %var._123, align 8
  br label %choice.exit121

choice.else120:                                   ; preds = %a.rd.done
  %ram.pay124 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr125 = inttoptr i64 %ram.pay124 to ptr
  store ptr %pay.ptr125, ptr %var._126, align 8
  br label %choice.exit121

choice.exit121:                                   ; preds = %choice.else120, %choice.then119
  %choice.res127 = phi ptr [ %pay.ptr, %choice.then119 ], [ @str.6.struct, %choice.else120 ]
  %eq.lhs.len128 = getelementptr inbounds { i64, ptr }, ptr %choice.res127, i32 0, i32 0
  %eq.lhs.len129 = load i64, ptr %eq.lhs.len128, align 8
  %eq.lhs.len130 = and i64 %eq.lhs.len129, 281474976710655
  %eq.rhs.len131 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len132 = and i64 %eq.rhs.len131, 281474976710655
  %eq.len133 = icmp eq i64 %eq.lhs.len130, %eq.rhs.len132
  br i1 %eq.len133, label %str.eq.then134, label %str.eq.else135

str.eq.then134:                                   ; preds = %choice.exit121
  %eq.lhs.data137 = getelementptr inbounds { i64, ptr }, ptr %choice.res127, i32 0, i32 1
  %eq.lhs.data138 = load ptr, ptr %eq.lhs.data137, align 8
  %eq.rhs.data139 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp140 = call i32 @memcmp(ptr %eq.lhs.data138, ptr %eq.rhs.data139, i64 %eq.lhs.len130)
  %eq.cmp.zero141 = icmp eq i32 %eq.memcmp140, 0
  br label %str.eq.merge136

str.eq.else135:                                   ; preds = %choice.exit121
  br label %str.eq.merge136

str.eq.merge136:                                  ; preds = %str.eq.else135, %str.eq.then134
  %str.eq.result142 = phi i1 [ %eq.cmp.zero141, %str.eq.then134 ], [ false, %str.eq.else135 ]
  %str.neq143 = xor i1 %str.eq.result142, true
  br label %and.75.exit

choice.then144:                                   ; preds = %and.75.exit
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 24)
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 128)
  %a.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new148, i32 0, i32 0
  store i64 0, ptr %a.len.gep151, align 8
  %a.data.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new148, i32 0, i32 1
  store ptr %a.buf150, ptr %a.data.gep152, align 8
  %a.cap.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new148, i32 0, i32 2
  store i64 16, ptr %a.cap.gep153, align 8
  store ptr %a.new148, ptr %var.kept, align 8
  %var.load154 = load i64, ptr %var.n_segs, align 8
  %subtmp155 = sub i64 %var.load154, 1
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.76

choice.else145:                                   ; preds = %and.75.exit
  %var.load257 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load257, true
  br i1 %nottmp, label %choice.then258, label %choice.exit259

choice.exit146:                                   ; preds = %choice.exit259, %a.after248
  br label %choice.exit78

loop.header.76:                                   ; preds = %loop.latch.76, %choice.then144
  %counter.load156 = load i64, ptr %loop.idx.76, align 8
  %loop.cond157 = icmp slt i64 %counter.load156, %subtmp155
  br i1 %loop.cond157, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i158 = sub i64 %counter.load156, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i158, ptr %var._i159, align 8
  store i64 %counter.load156, ptr %var._160, align 8
  store i64 %counter.load156, ptr %var.k, align 8
  %var.load161 = load ptr, ptr %var.segs, align 8
  %a.load162 = load ptr, ptr %var.segs, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load156, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load244 = load ptr, ptr %var.kept, align 8
  %a.load245 = load ptr, ptr %var.kept, align 8
  %a.null246 = icmp eq ptr %a.load245, null
  br i1 %a.null246, label %a.create247, label %a.after248

a.create164:                                      ; preds = %loop.body.76
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
  store ptr %a.create167, ptr %var.segs, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %loop.body.76
  %a.load2173 = load ptr, ptr %var.segs, align 8
  %var.load174 = load i64, ptr %var.k, align 8
  %a.rd.nonnull175 = icmp ne ptr %a.load2173, null
  br i1 %a.rd.nonnull175, label %a.rd.check176, label %a.rd.err.null178

a.rd.check176:                                    ; preds = %a.after165
  %a.rd.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.rd.len182 = load i64, ptr %a.rd.len181, align 8
  %a.rd.ge0183 = icmp sge i64 %var.load174, 0
  %a.rd.lt184 = icmp slt i64 %var.load174, %a.rd.len182
  %a.rd.bounds185 = and i1 %a.rd.ge0183, %a.rd.lt184
  br i1 %a.rd.bounds185, label %a.rd.ok177, label %a.rd.err.oob179

a.rd.ok177:                                       ; preds = %a.rd.check176
  %a.rd.data186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 1
  %a.rd.data187 = load ptr, ptr %a.rd.data186, align 8
  %a.rd.elem.gep188 = getelementptr i64, ptr %a.rd.data187, i64 %var.load174
  %a.rd.elem189 = load i64, ptr %a.rd.elem.gep188, align 8
  br label %a.rd.done180

a.rd.err.null178:                                 ; preds = %a.after165
  %arena.cur190 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 56)
  %err.code.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 0
  store i64 4011, ptr %err.code.gep192, align 8
  %err.msg.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep193, align 8
  %err.file.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep194, align 8
  %err.line.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 3
  store i64 279, ptr %err.line.gep195, align 8
  %err.col.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 4
  store i64 68, ptr %err.col.gep196, align 8
  %err.ctx.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc191, i32 0, i32 5
  %err.ctx0.gep198 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep197, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep198, align 8
  %err.ctx1.gep199 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep197, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep199, align 8
  %err.p2i200 = ptrtoint ptr %err.alloc191 to i64
  br label %a.rd.done180

a.rd.err.oob179:                                  ; preds = %a.rd.check176
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 56)
  %err.code.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 0
  store i64 4011, ptr %err.code.gep203, align 8
  %err.msg.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep204, align 8
  %err.file.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep205, align 8
  %err.line.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 3
  store i64 279, ptr %err.line.gep206, align 8
  %err.col.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 4
  store i64 68, ptr %err.col.gep207, align 8
  %err.ctx.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc202, i32 0, i32 5
  %err.ctx0.gep209 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep208, i32 0, i32 0
  store i64 %var.load174, ptr %err.ctx0.gep209, align 8
  %err.ctx1.gep210 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep208, i32 0, i32 1
  store i64 %a.rd.len182, ptr %err.ctx1.gep210, align 8
  %err.p2i211 = ptrtoint ptr %err.alloc202 to i64
  br label %a.rd.done180

a.rd.done180:                                     ; preds = %a.rd.err.oob179, %a.rd.err.null178, %a.rd.ok177
  %a.rd.tag212 = phi i1 [ true, %a.rd.ok177 ], [ false, %a.rd.err.null178 ], [ false, %a.rd.err.oob179 ]
  %a.rd.pay213 = phi i64 [ %a.rd.elem189, %a.rd.ok177 ], [ %err.p2i200, %a.rd.err.null178 ], [ %err.p2i211, %a.rd.err.oob179 ]
  %ram.tag214 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag212, 0
  %ram.pay215 = insertvalue { i1, i64 } %ram.tag214, i64 %a.rd.pay213, 1
  %ram.tag216 = extractvalue { i1, i64 } %ram.pay215, 0
  br i1 %ram.tag216, label %choice.then217, label %choice.else218

choice.then217:                                   ; preds = %a.rd.done180
  %ram.pay220 = extractvalue { i1, i64 } %ram.pay215, 1
  %pay.ptr221 = inttoptr i64 %ram.pay220 to ptr
  store ptr %pay.ptr221, ptr %var._222, align 8
  br label %choice.exit219

choice.else218:                                   ; preds = %a.rd.done180
  %ram.pay223 = extractvalue { i1, i64 } %ram.pay215, 1
  %pay.ptr224 = inttoptr i64 %ram.pay223 to ptr
  store ptr %pay.ptr224, ptr %var._225, align 8
  br label %choice.exit219

choice.exit219:                                   ; preds = %choice.else218, %choice.then217
  %choice.res226 = phi ptr [ %pay.ptr221, %choice.then217 ], [ @str.6.struct, %choice.else218 ]
  %a.load227 = load ptr, ptr %var.kept, align 8
  %a.null228 = icmp eq ptr %a.load227, null
  br i1 %a.null228, label %a.create229, label %a.after230

a.create229:                                      ; preds = %choice.exit219
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 24)
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 128)
  %a.len.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 0
  store i64 0, ptr %a.len.gep235, align 8
  %a.data.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 1
  store ptr %a.buf234, ptr %a.data.gep236, align 8
  %a.cap.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 2
  store i64 16, ptr %a.cap.gep237, align 8
  store ptr %a.create232, ptr %var.kept, align 8
  br label %a.after230

a.after230:                                       ; preds = %a.create229, %choice.exit219
  %a.load2238 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after230
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 0
  %a.len239 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 2
  %a.cap240 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len239, %a.cap240
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2238)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 1
  %a.cur.data241 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 0
  %a.cur.len242 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data241, i64 %a.cur.len242
  %slot.p2i = ptrtoint ptr %choice.res226 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len242, 1
  %b.len.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep243, align 8
  br label %loop.latch.76

a.create247:                                      ; preds = %loop.exit.76
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 24)
  %arena.cur251 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 128)
  %a.len.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 0
  store i64 0, ptr %a.len.gep253, align 8
  %a.data.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 1
  store ptr %a.buf252, ptr %a.data.gep254, align 8
  %a.cap.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 2
  store i64 16, ptr %a.cap.gep255, align 8
  store ptr %a.create250, ptr %var.kept, align 8
  br label %a.after248

a.after248:                                       ; preds = %a.create247, %loop.exit.76
  %a.load2256 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2256, ptr %var.segs, align 8
  br label %choice.exit146

choice.then258:                                   ; preds = %choice.else145
  %a.load260 = load ptr, ptr %var.segs, align 8
  %a.null261 = icmp eq ptr %a.load260, null
  br i1 %a.null261, label %a.create262, label %a.after263

choice.exit259:                                   ; preds = %a.store274, %choice.else145
  br label %choice.exit146

a.create262:                                      ; preds = %choice.then258
  %arena.cur264 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 24)
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 128)
  %a.len.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 0
  store i64 0, ptr %a.len.gep268, align 8
  %a.data.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 1
  store ptr %a.buf267, ptr %a.data.gep269, align 8
  %a.cap.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 2
  store i64 16, ptr %a.cap.gep270, align 8
  store ptr %a.create265, ptr %var.segs, align 8
  br label %a.after263

a.after263:                                       ; preds = %a.create262, %choice.then258
  %a.load2271 = load ptr, ptr %var.segs, align 8
  br label %a.check272

a.check272:                                       ; preds = %a.after263
  %a.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 0
  %a.len276 = load i64, ptr %a.len275, align 8
  %a.cap277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 2
  %a.cap278 = load i64, ptr %a.cap277, align 8
  %a.needs.grow279 = icmp eq i64 %a.len276, %a.cap278
  br i1 %a.needs.grow279, label %a.grow273, label %a.store274

a.grow273:                                        ; preds = %a.check272
  call void @dva_array_grow(ptr %a.load2271)
  br label %a.store274

a.store274:                                       ; preds = %a.grow273, %a.check272
  %a.cur.data280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 1
  %a.cur.data281 = load ptr, ptr %a.cur.data280, align 8
  %a.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 0
  %a.cur.len283 = load i64, ptr %a.cur.len282, align 8
  %a.elem.gep284 = getelementptr i64, ptr %a.cur.data281, i64 %a.cur.len283
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep284, align 8
  %a.next.len285 = add i64 %a.cur.len283, 1
  %b.len.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 0
  store i64 %a.next.len285, ptr %b.len.gep286, align 8
  br label %choice.exit259

a.create290:                                      ; preds = %choice.else77
  %arena.cur292 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 24)
  %arena.cur294 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 128)
  %a.len.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 0
  store i64 0, ptr %a.len.gep296, align 8
  %a.data.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 1
  store ptr %a.buf295, ptr %a.data.gep297, align 8
  %a.cap.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create293, i32 0, i32 2
  store i64 16, ptr %a.cap.gep298, align 8
  store ptr %a.create293, ptr %var.segs, align 8
  br label %a.after291

a.after291:                                       ; preds = %a.create290, %choice.else77
  %a.load2299 = load ptr, ptr %var.segs, align 8
  br label %a.check300

a.check300:                                       ; preds = %a.after291
  %a.len303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 0
  %a.len304 = load i64, ptr %a.len303, align 8
  %a.cap305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 2
  %a.cap306 = load i64, ptr %a.cap305, align 8
  %a.needs.grow307 = icmp eq i64 %a.len304, %a.cap306
  br i1 %a.needs.grow307, label %a.grow301, label %a.store302

a.grow301:                                        ; preds = %a.check300
  call void @dva_array_grow(ptr %a.load2299)
  br label %a.store302

a.store302:                                       ; preds = %a.grow301, %a.check300
  %a.cur.data308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 1
  %a.cur.data309 = load ptr, ptr %a.cur.data308, align 8
  %a.cur.len310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 0
  %a.cur.len311 = load i64, ptr %a.cur.len310, align 8
  %a.elem.gep312 = getelementptr i64, ptr %a.cur.data309, i64 %a.cur.len311
  %slot.p2i313 = ptrtoint ptr %var.load287 to i64
  store i64 %slot.p2i313, ptr %a.elem.gep312, align 8
  %a.next.len314 = add i64 %a.cur.len311, 1
  %b.len.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2299, i32 0, i32 0
  store i64 %a.next.len314, ptr %b.len.gep315, align 8
  br label %choice.exit78

b.rn.new.len321:                                  ; preds = %abort.dead323, %choice.else28
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap324 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap324, %sum319
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort322:                            ; preds = %choice.else28
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead323:                                    ; No predecessors!
  br label %b.rn.new.len321

b.grow2:                                          ; preds = %b.rn.new.len321
  %b.cap2 = mul i64 %b.cap324, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum319
  %b.new.cap = select i1 %b.cap.need, i64 %sum319, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2325 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2326 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum327 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf328 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf328, label %str_overflow_abort330, label %b.new.buf.len2329

b.nogrow2:                                        ; preds = %b.rn.new.len321
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2329
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data333 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data333, i64 %b.rn.cur.len318
  br i1 %br.cmp1, label %br.b1.77, label %br.c2.77

b.new.buf.len2329:                                ; preds = %abort.dead331, %b.grow2
  %arena.cur332 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 %sum327)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2326, i64 %b.cur.len2325, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2325
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort330:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead331:                                    ; No predecessors!
  br label %b.new.buf.len2329

br.b1.77:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext317 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.77

br.c2.77:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.77, label %br.c3.77

br.b2.77:                                         ; preds = %br.c2.77
  %br.sh6 = lshr i64 %coerce.sext317, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext317, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.77

br.c3.77:                                         ; preds = %br.c2.77
  br i1 %br.cmp3, label %br.b3.77, label %br.b4.77

br.b3.77:                                         ; preds = %br.c3.77
  %br.sh12 = lshr i64 %coerce.sext317, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext317, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext317, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.77

br.b4.77:                                         ; preds = %br.c3.77
  %br.sh18 = lshr i64 %coerce.sext317, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext317, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext317, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext317, 63
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
  %br.nul = getelementptr i8, ptr %b.rn.data333, i64 %sum319
  store i8 0, ptr %br.nul, align 1
  %b.len.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum319, ptr %b.len.gep334, align 8
  br label %choice.exit29

b.buf.len348:                                     ; preds = %abort.dead350, %loop.exit.73
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 %sum346)
  %b.nul0353 = getelementptr i8, ptr %b.buf352, i64 0
  store i8 0, ptr %b.nul0353, align 1
  store i64 0, ptr %b.len.gep343, align 8
  store ptr %b.buf352, ptr %b.data.gep342, align 8
  store i64 %cap.safe, ptr %b.cap.gep344, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %var.load354 = load i1, ptr %var.abs, align 1
  br i1 %var.load354, label %choice.then355, label %choice.exit356

str_overflow_abort349:                            ; preds = %loop.exit.73
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead350:                                    ; No predecessors!
  br label %b.buf.len348

choice.then355:                                   ; preds = %b.buf.len348
  %b.load357 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.rn.cur.len359 = load i64, ptr %b.rn.cur.len358, align 8
  %b.rn.new.len360 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len359, i64 1)
  %sum361 = extractvalue { i64, i1 } %b.rn.new.len360, 0
  %ovf362 = extractvalue { i64, i1 } %b.rn.new.len360, 1
  br i1 %ovf362, label %str_overflow_abort364, label %b.rn.new.len363

choice.exit356:                                   ; preds = %br.done.78, %b.buf.len348
  %var.load403 = load ptr, ptr %var.segs, align 8
  %a.load404 = load ptr, ptr %var.segs, align 8
  %a.null405 = icmp eq ptr %a.load404, null
  br i1 %a.null405, label %a.create406, label %a.after407

b.rn.new.len363:                                  ; preds = %abort.dead365, %choice.then355
  %b.cap366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  %b.cap367 = load i64, ptr %b.cap366, align 8
  %b.need.grow368 = icmp slt i64 %b.cap367, %sum361
  br i1 %b.need.grow368, label %b.grow2369, label %b.nogrow2370

str_overflow_abort364:                            ; preds = %choice.then355
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead365:                                    ; No predecessors!
  br label %b.rn.new.len363

b.grow2369:                                       ; preds = %b.rn.new.len363
  %b.cap2372 = mul i64 %b.cap367, 2
  %b.cap.small373 = icmp slt i64 %b.cap2372, 16
  %b.cap.grow374 = select i1 %b.cap.small373, i64 16, i64 %b.cap2372
  %b.cap.need375 = icmp slt i64 %b.cap.grow374, %sum361
  %b.new.cap376 = select i1 %b.cap.need375, i64 %sum361, i64 %b.cap.grow374
  %b.cur.len2377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.cur.len2378 = load i64, ptr %b.cur.len2377, align 8
  %b.cur.data2379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.cur.data2380 = load ptr, ptr %b.cur.data2379, align 8
  %b.new.buf.len2381 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap376, i64 1)
  %sum382 = extractvalue { i64, i1 } %b.new.buf.len2381, 0
  %ovf383 = extractvalue { i64, i1 } %b.new.buf.len2381, 1
  br i1 %ovf383, label %str_overflow_abort385, label %b.new.buf.len2384

b.nogrow2370:                                     ; preds = %b.rn.new.len363
  br label %b.grow_done371

b.grow_done371:                                   ; preds = %b.nogrow2370, %b.new.buf.len2384
  %b.rn.data392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.rn.data393 = load ptr, ptr %b.rn.data392, align 8
  %b.rn.dst394 = getelementptr i8, ptr %b.rn.data393, i64 %b.rn.cur.len359
  br i1 true, label %br.b1.78, label %br.c2.78

b.new.buf.len2384:                                ; preds = %abort.dead386, %b.grow2369
  %arena.cur387 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2388 = call ptr @dva_arena_alloc(ptr %arena.cur387, i64 %sum382)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2388, ptr align 1 %b.cur.data2380, i64 %b.cur.len2378, i1 false)
  %b.grow2.nul389 = getelementptr i8, ptr %b.new.buf2388, i64 %b.cur.len2378
  store i8 0, ptr %b.grow2.nul389, align 1
  %b.new.data2.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  store ptr %b.new.buf2388, ptr %b.new.data2.gep390, align 8
  %b.new.cap2.gep391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  store i64 %b.new.cap376, ptr %b.new.cap2.gep391, align 8
  br label %b.grow_done371

str_overflow_abort385:                            ; preds = %b.grow2369
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead386:                                    ; No predecessors!
  br label %b.new.buf.len2384

br.b1.78:                                         ; preds = %b.grow_done371
  store i8 47, ptr %b.rn.dst394, align 1
  br label %br.done.78

br.c2.78:                                         ; preds = %b.grow_done371
  br i1 true, label %br.b2.78, label %br.c3.78

br.b2.78:                                         ; preds = %br.c2.78
  store i8 -64, ptr %b.rn.dst394, align 1
  %br.dst1395 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -81, ptr %br.dst1395, align 1
  br label %br.done.78

br.c3.78:                                         ; preds = %br.c2.78
  br i1 true, label %br.b3.78, label %br.b4.78

br.b3.78:                                         ; preds = %br.c3.78
  store i8 -32, ptr %b.rn.dst394, align 1
  %br.dst1.3396 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -128, ptr %br.dst1.3396, align 1
  %br.dst2.3397 = getelementptr i8, ptr %b.rn.dst394, i64 2
  store i8 -81, ptr %br.dst2.3397, align 1
  br label %br.done.78

br.b4.78:                                         ; preds = %br.c3.78
  store i8 -16, ptr %b.rn.dst394, align 1
  %br.dst1.4398 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -128, ptr %br.dst1.4398, align 1
  %br.dst2.4399 = getelementptr i8, ptr %b.rn.dst394, i64 2
  store i8 -128, ptr %br.dst2.4399, align 1
  %br.dst3.4400 = getelementptr i8, ptr %b.rn.dst394, i64 3
  store i8 -81, ptr %br.dst3.4400, align 1
  br label %br.done.78

br.done.78:                                       ; preds = %br.b4.78, %br.b3.78, %br.b2.78, %br.b1.78
  %br.nul401 = getelementptr i8, ptr %b.rn.data393, i64 %sum361
  store i8 0, ptr %br.nul401, align 1
  %b.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  store i64 %sum361, ptr %b.len.gep402, align 8
  br label %choice.exit356

a.create406:                                      ; preds = %choice.exit356
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 24)
  %arena.cur410 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 128)
  %a.len.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 0
  store i64 0, ptr %a.len.gep412, align 8
  %a.data.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 1
  store ptr %a.buf411, ptr %a.data.gep413, align 8
  %a.cap.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 2
  store i64 16, ptr %a.cap.gep414, align 8
  store ptr %a.create409, ptr %var.segs, align 8
  br label %a.after407

a.after407:                                       ; preds = %a.create406, %choice.exit356
  %a.load2415 = load ptr, ptr %var.segs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2415, i32 0, i32 0
  %arr.cycle.len416 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2415, i32 0, i32 1
  %arr.cycle.data417 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.79, align 8
  store i64 0, ptr %var.idx, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after407
  %counter.load419 = load i64, ptr %loop.idx.79, align 8
  %loop.cond420 = icmp slt i64 %counter.load419, %arr.cycle.len416
  br i1 %loop.cond420, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i421 = sub i64 %counter.load419, 0
  store i64 1, ptr %loop.step.79, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data417, i64 %counter.load419
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i421, ptr %var._i422, align 8
  store ptr %slot.i2p, ptr %var._423, align 8
  store ptr %slot.i2p, ptr %var.seg418, align 8
  store i64 %loop.rel.i421, ptr %var.idx, align 8
  %var.load424 = load i64, ptr %var.idx, align 8
  %cmptmp425 = icmp sgt i64 %var.load424, 0
  br i1 %cmptmp425, label %choice.then426, label %choice.exit427

loop.exit.nat.79:                                 ; preds = %loop.header.79
  %loop.rel.end = sub i64 %counter.load419, 0
  store i64 %loop.rel.end, ptr %var.idx, align 8
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %b.grow_done490
  %step.val513 = load i64, ptr %loop.step.79, align 8
  %loop.next514 = add i64 %counter.load419, %step.val513
  store i64 %loop.next514, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %var.load515 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load515, i32 0, i32 0
  %b.len516 = load i64, ptr %b.len, align 8
  %cmptmp517 = icmp eq i64 %b.len516, 0
  br i1 %cmptmp517, label %choice.then518, label %choice.else519

choice.then426:                                   ; preds = %loop.body.79
  %b.load428 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 0
  %b.rn.cur.len430 = load i64, ptr %b.rn.cur.len429, align 8
  %b.rn.new.len431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len430, i64 1)
  %sum432 = extractvalue { i64, i1 } %b.rn.new.len431, 0
  %ovf433 = extractvalue { i64, i1 } %b.rn.new.len431, 1
  br i1 %ovf433, label %str_overflow_abort435, label %b.rn.new.len434

choice.exit427:                                   ; preds = %br.done.80, %loop.body.79
  %b.load474 = load ptr, ptr %var.out, align 8
  %var.load475 = load ptr, ptr %var.seg418, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load475, i32 0, i32 0
  %app.str.len476 = load i64, ptr %app.str.len, align 8
  %app.str.len477 = and i64 %app.str.len476, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load475, i32 0, i32 1
  %app.str.data478 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  %b.app.cur.len479 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len479, i64 %app.str.len477)
  %sum480 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf481 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf481, label %str_overflow_abort483, label %b.app.new.len482

b.rn.new.len434:                                  ; preds = %abort.dead436, %choice.then426
  %b.cap437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 2
  %b.cap438 = load i64, ptr %b.cap437, align 8
  %b.need.grow439 = icmp slt i64 %b.cap438, %sum432
  br i1 %b.need.grow439, label %b.grow2440, label %b.nogrow2441

str_overflow_abort435:                            ; preds = %choice.then426
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead436:                                    ; No predecessors!
  br label %b.rn.new.len434

b.grow2440:                                       ; preds = %b.rn.new.len434
  %b.cap2443 = mul i64 %b.cap438, 2
  %b.cap.small444 = icmp slt i64 %b.cap2443, 16
  %b.cap.grow445 = select i1 %b.cap.small444, i64 16, i64 %b.cap2443
  %b.cap.need446 = icmp slt i64 %b.cap.grow445, %sum432
  %b.new.cap447 = select i1 %b.cap.need446, i64 %sum432, i64 %b.cap.grow445
  %b.cur.len2448 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 0
  %b.cur.len2449 = load i64, ptr %b.cur.len2448, align 8
  %b.cur.data2450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 1
  %b.cur.data2451 = load ptr, ptr %b.cur.data2450, align 8
  %b.new.buf.len2452 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap447, i64 1)
  %sum453 = extractvalue { i64, i1 } %b.new.buf.len2452, 0
  %ovf454 = extractvalue { i64, i1 } %b.new.buf.len2452, 1
  br i1 %ovf454, label %str_overflow_abort456, label %b.new.buf.len2455

b.nogrow2441:                                     ; preds = %b.rn.new.len434
  br label %b.grow_done442

b.grow_done442:                                   ; preds = %b.nogrow2441, %b.new.buf.len2455
  %b.rn.data463 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 1
  %b.rn.data464 = load ptr, ptr %b.rn.data463, align 8
  %b.rn.dst465 = getelementptr i8, ptr %b.rn.data464, i64 %b.rn.cur.len430
  br i1 true, label %br.b1.80, label %br.c2.80

b.new.buf.len2455:                                ; preds = %abort.dead457, %b.grow2440
  %arena.cur458 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 %sum453)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2459, ptr align 1 %b.cur.data2451, i64 %b.cur.len2449, i1 false)
  %b.grow2.nul460 = getelementptr i8, ptr %b.new.buf2459, i64 %b.cur.len2449
  store i8 0, ptr %b.grow2.nul460, align 1
  %b.new.data2.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 1
  store ptr %b.new.buf2459, ptr %b.new.data2.gep461, align 8
  %b.new.cap2.gep462 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 2
  store i64 %b.new.cap447, ptr %b.new.cap2.gep462, align 8
  br label %b.grow_done442

str_overflow_abort456:                            ; preds = %b.grow2440
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead457:                                    ; No predecessors!
  br label %b.new.buf.len2455

br.b1.80:                                         ; preds = %b.grow_done442
  store i8 47, ptr %b.rn.dst465, align 1
  br label %br.done.80

br.c2.80:                                         ; preds = %b.grow_done442
  br i1 true, label %br.b2.80, label %br.c3.80

br.b2.80:                                         ; preds = %br.c2.80
  store i8 -64, ptr %b.rn.dst465, align 1
  %br.dst1466 = getelementptr i8, ptr %b.rn.dst465, i64 1
  store i8 -81, ptr %br.dst1466, align 1
  br label %br.done.80

br.c3.80:                                         ; preds = %br.c2.80
  br i1 true, label %br.b3.80, label %br.b4.80

br.b3.80:                                         ; preds = %br.c3.80
  store i8 -32, ptr %b.rn.dst465, align 1
  %br.dst1.3467 = getelementptr i8, ptr %b.rn.dst465, i64 1
  store i8 -128, ptr %br.dst1.3467, align 1
  %br.dst2.3468 = getelementptr i8, ptr %b.rn.dst465, i64 2
  store i8 -81, ptr %br.dst2.3468, align 1
  br label %br.done.80

br.b4.80:                                         ; preds = %br.c3.80
  store i8 -16, ptr %b.rn.dst465, align 1
  %br.dst1.4469 = getelementptr i8, ptr %b.rn.dst465, i64 1
  store i8 -128, ptr %br.dst1.4469, align 1
  %br.dst2.4470 = getelementptr i8, ptr %b.rn.dst465, i64 2
  store i8 -128, ptr %br.dst2.4470, align 1
  %br.dst3.4471 = getelementptr i8, ptr %b.rn.dst465, i64 3
  store i8 -81, ptr %br.dst3.4471, align 1
  br label %br.done.80

br.done.80:                                       ; preds = %br.b4.80, %br.b3.80, %br.b2.80, %br.b1.80
  %br.nul472 = getelementptr i8, ptr %b.rn.data464, i64 %sum432
  store i8 0, ptr %br.nul472, align 1
  %b.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load428, i32 0, i32 0
  store i64 %sum432, ptr %b.len.gep473, align 8
  br label %choice.exit427

b.app.new.len482:                                 ; preds = %abort.dead484, %choice.exit427
  %b.cap485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 2
  %b.cap486 = load i64, ptr %b.cap485, align 8
  %b.need.grow487 = icmp slt i64 %b.cap486, %sum480
  br i1 %b.need.grow487, label %b.grow2488, label %b.nogrow2489

str_overflow_abort483:                            ; preds = %choice.exit427
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead484:                                    ; No predecessors!
  br label %b.app.new.len482

b.grow2488:                                       ; preds = %b.app.new.len482
  %b.cap2491 = mul i64 %b.cap486, 2
  %b.cap.small492 = icmp slt i64 %b.cap2491, 16
  %b.cap.grow493 = select i1 %b.cap.small492, i64 16, i64 %b.cap2491
  %b.cap.need494 = icmp slt i64 %b.cap.grow493, %sum480
  %b.new.cap495 = select i1 %b.cap.need494, i64 %sum480, i64 %b.cap.grow493
  %b.cur.len2496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  %b.cur.len2497 = load i64, ptr %b.cur.len2496, align 8
  %b.cur.data2498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  %b.cur.data2499 = load ptr, ptr %b.cur.data2498, align 8
  %b.new.buf.len2500 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap495, i64 1)
  %sum501 = extractvalue { i64, i1 } %b.new.buf.len2500, 0
  %ovf502 = extractvalue { i64, i1 } %b.new.buf.len2500, 1
  br i1 %ovf502, label %str_overflow_abort504, label %b.new.buf.len2503

b.nogrow2489:                                     ; preds = %b.app.new.len482
  br label %b.grow_done490

b.grow_done490:                                   ; preds = %b.nogrow2489, %b.new.buf.len2503
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  %b.app.data511 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data511, i64 %b.app.cur.len479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data478, i64 %app.str.len477, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data511, i64 %sum480
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  store i64 %sum480, ptr %b.len.gep512, align 8
  br label %loop.latch.79

b.new.buf.len2503:                                ; preds = %abort.dead505, %b.grow2488
  %arena.cur506 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %sum501)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2507, ptr align 1 %b.cur.data2499, i64 %b.cur.len2497, i1 false)
  %b.grow2.nul508 = getelementptr i8, ptr %b.new.buf2507, i64 %b.cur.len2497
  store i8 0, ptr %b.grow2.nul508, align 1
  %b.new.data2.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  store ptr %b.new.buf2507, ptr %b.new.data2.gep509, align 8
  %b.new.cap2.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 2
  store i64 %b.new.cap495, ptr %b.new.cap2.gep510, align 8
  br label %b.grow_done490

str_overflow_abort504:                            ; preds = %b.grow2488
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead505:                                    ; No predecessors!
  br label %b.new.buf.len2503

choice.then518:                                   ; preds = %loop.exit.79
  br label %choice.exit520

choice.else519:                                   ; preds = %loop.exit.79
  %var.load521 = load ptr, ptr %var.out, align 8
  %b.freeze.len522 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load521, i32 0, i32 0
  %b.freeze.len523 = load i64, ptr %b.freeze.len522, align 8
  %b.freeze.data524 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load521, i32 0, i32 1
  %b.freeze.data525 = load ptr, ptr %b.freeze.data524, align 8
  %str.build.len.gep527 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze526, i32 0, i32 0
  store i64 %b.freeze.len523, ptr %str.build.len.gep527, align 8
  %str.build.data.gep528 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze526, i32 0, i32 1
  store ptr %b.freeze.data525, ptr %str.build.data.gep528, align 8
  %b.freeze.rst.len529 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load521, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len529, align 8
  %b.freeze.rst.data530 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load521, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data530, align 8
  %b.freeze.rst.cap531 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load521, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap531, align 8
  br label %choice.exit520

choice.exit520:                                   ; preds = %choice.else519, %choice.then518
  %choice.res532 = phi ptr [ @str.5.struct, %choice.then518 ], [ %builder.freeze526, %choice.else519 ]
  %ret.pack533 = load { i64, ptr }, ptr %choice.res532, align 8
  ret { i64, ptr } %ret.pack533
}

define { i64, ptr } @"path::win_normalize"(ptr %0) #0 {
entry:
  %builder.freeze612 = alloca { i64, ptr }, align 8
  %var._502 = alloca ptr, align 8
  %var._i501 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.seg497 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._314 = alloca ptr, align 8
  %var._311 = alloca ptr, align 8
  %var._249 = alloca i64, align 8
  %var._i248 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._215 = alloca ptr, align 8
  %var._212 = alloca ptr, align 8
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  store i64 %str.len.query83, ptr %var.len, align 8
  %var.load84 = load i64, ptr %var.len, align 8
  %var.load85 = load i64, ptr %var.rlen, align 8
  %subtmp = sub i64 %var.load84, %var.load85
  %addtmp = add i64 %subtmp, 1
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

str_overflow_abort77:                             ; preds = %choice.exit9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.buf.len76

loop.header.81:                                   ; preds = %loop.latch.81, %b.buf.len76
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load86 = load i64, ptr %var.rlen, align 8
  %var.load87 = load i64, ptr %var.k, align 8
  %addtmp88 = add i64 %var.load86, %var.load87
  store i64 %addtmp88, ptr %var.i, align 8
  %var.load89 = load i64, ptr %var.i, align 8
  %var.load90 = load i64, ptr %var.len, align 8
  %cmptmp91 = icmp eq i64 %var.load89, %var.load90
  store i1 %cmptmp91, ptr %var.is_end, align 1
  %var.load92 = load i1, ptr %var.is_end, align 1
  br i1 %var.load92, label %choice.then93, label %choice.else94

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit115
  %step.val424 = load i64, ptr %loop.step.81, align 8
  %loop.next425 = add i64 %counter.load, %step.val424
  store i64 %loop.next425, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load426 = load ptr, ptr %var.p, align 8
  %str.len.query427 = getelementptr inbounds { i64, ptr }, ptr %var.load426, i32 0, i32 0
  %str.len.query428 = load i64, ptr %str.len.query427, align 8
  %str.len.query429 = and i64 %str.len.query428, 281474976710655
  %addtmp430 = add i64 %str.len.query429, 2
  %cap.neg = icmp slt i64 %addtmp430, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp430
  %b.data.gep431 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep432 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep433 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum435 = extractvalue { i64, i1 } %b.buf.len434, 0
  %ovf436 = extractvalue { i64, i1 } %b.buf.len434, 1
  br i1 %ovf436, label %str_overflow_abort438, label %b.buf.len437

choice.then93:                                    ; preds = %loop.body.81
  br label %choice.exit95

choice.else94:                                    ; preds = %loop.body.81
  %var.load96 = load ptr, ptr %var.p, align 8
  %s.read.len97 = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 0
  %s.read.len98 = load i64, ptr %s.read.len97, align 8
  %s.read.len99 = and i64 %s.read.len98, 281474976710655
  %s.read.data100 = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 1
  %s.read.data101 = load ptr, ptr %s.read.data100, align 8
  %var.load102 = load i64, ptr %var.i, align 8
  %idx.oob103 = icmp uge i64 %var.load102, %s.read.len99
  br i1 %idx.oob103, label %idx_oob105, label %idx_ok104

choice.exit95:                                    ; preds = %idx_ok104, %choice.then93
  %choice.res110 = phi i32 [ 92, %choice.then93 ], [ %coerce.trunc, %idx_ok104 ]
  store i32 %choice.res110, ptr %var.c, align 4
  %var.load111 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load111 to i64
  %call.res112 = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res112, label %choice.then113, label %choice.else114

idx_ok104:                                        ; preds = %abort.dead106, %choice.else94
  %s.byte.gep107 = getelementptr i8, ptr %s.read.data101, i64 %var.load102
  %s.byte108 = load i8, ptr %s.byte.gep107, align 1
  %s.byte.val109 = zext i8 %s.byte108 to i64
  %coerce.trunc = trunc i64 %s.byte.val109 to i32
  br label %choice.exit95

idx_oob105:                                       ; preds = %choice.else94
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %idx_ok104

choice.then113:                                   ; preds = %choice.exit95
  %var.load116 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 0
  %b.freeze.len117 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 1
  %b.freeze.data118 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else114:                                   ; preds = %choice.exit95
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load405 = load i32, ptr %var.c, align 4
  %coerce.sext406 = sext i32 %var.load405 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext406, 128
  %br.cmp2 = icmp slt i64 %coerce.sext406, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext406, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len407 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len407, i64 %br.width)
  %sum408 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf409 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf409, label %str_overflow_abort411, label %b.rn.new.len410

choice.exit115:                                   ; preds = %br.done.85, %choice.exit147
  br label %loop.latch.81

b.freeze.check:                                   ; preds = %choice.then113
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data118, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data118, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data118, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len117, 1
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data118, i64 %b.freeze.len117, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len117
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then113
  %b.freeze.data120 = phi ptr [ %b.freeze.data118, %choice.then113 ], [ %b.freeze.data118, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.build.len.gep122 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len117, ptr %str.build.len.gep122, align 8
  %str.build.data.gep123 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data120, ptr %str.build.data.gep123, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load124 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %eq.lhs.len125 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len126 = and i64 %eq.lhs.len125, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len127 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len126, %eq.rhs.len127
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %eq.lhs.data128 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data128, ptr %eq.rhs.data, i64 %eq.lhs.len126)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %str.eq.merge
  %var.load129 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 0
  %eq.lhs.len131 = load i64, ptr %eq.lhs.len130, align 8
  %eq.lhs.len132 = and i64 %eq.lhs.len131, 281474976710655
  %eq.rhs.len133 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len134 = and i64 %eq.rhs.len133, 281474976710655
  %eq.len135 = icmp eq i64 %eq.lhs.len132, %eq.rhs.len134
  br i1 %eq.len135, label %str.eq.then136, label %str.eq.else137

and.82.else:                                      ; preds = %str.eq.merge
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge138
  %and.82.phi = phi i1 [ %str.neq145, %str.eq.merge138 ], [ %str.neq, %and.82.else ]
  br i1 %and.82.phi, label %choice.then146, label %choice.exit147

str.eq.then136:                                   ; preds = %and.82.then
  %eq.lhs.data139 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 1
  %eq.lhs.data140 = load ptr, ptr %eq.lhs.data139, align 8
  %eq.rhs.data141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp142 = call i32 @memcmp(ptr %eq.lhs.data140, ptr %eq.rhs.data141, i64 %eq.lhs.len132)
  %eq.cmp.zero143 = icmp eq i32 %eq.memcmp142, 0
  br label %str.eq.merge138

str.eq.else137:                                   ; preds = %and.82.then
  br label %str.eq.merge138

str.eq.merge138:                                  ; preds = %str.eq.else137, %str.eq.then136
  %str.eq.result144 = phi i1 [ %eq.cmp.zero143, %str.eq.then136 ], [ false, %str.eq.else137 ]
  %str.neq145 = xor i1 %str.eq.result144, true
  br label %and.82.exit

choice.then146:                                   ; preds = %and.82.exit
  %var.load148 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %eq.lhs.len150 = load i64, ptr %eq.lhs.len149, align 8
  %eq.lhs.len151 = and i64 %eq.lhs.len150, 281474976710655
  %eq.rhs.len152 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len153 = and i64 %eq.rhs.len152, 281474976710655
  %eq.len154 = icmp eq i64 %eq.lhs.len151, %eq.rhs.len153
  br i1 %eq.len154, label %str.eq.then155, label %str.eq.else156

choice.exit147:                                   ; preds = %choice.exit166, %and.82.exit
  br label %choice.exit115

str.eq.then155:                                   ; preds = %choice.then146
  %eq.lhs.data158 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %eq.lhs.data159 = load ptr, ptr %eq.lhs.data158, align 8
  %eq.rhs.data160 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp161 = call i32 @memcmp(ptr %eq.lhs.data159, ptr %eq.rhs.data160, i64 %eq.lhs.len151)
  %eq.cmp.zero162 = icmp eq i32 %eq.memcmp161, 0
  br label %str.eq.merge157

str.eq.else156:                                   ; preds = %choice.then146
  br label %str.eq.merge157

str.eq.merge157:                                  ; preds = %str.eq.else156, %str.eq.then155
  %str.eq.result163 = phi i1 [ %eq.cmp.zero162, %str.eq.then155 ], [ false, %str.eq.else156 ]
  br i1 %str.eq.result163, label %choice.then164, label %choice.else165

choice.then164:                                   ; preds = %str.eq.merge157
  %var.load167 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else165:                                   ; preds = %str.eq.merge157
  %var.load376 = load ptr, ptr %var.seg, align 8
  %a.load377 = load ptr, ptr %var.segs, align 8
  %a.null378 = icmp eq ptr %a.load377, null
  br i1 %a.null378, label %a.create379, label %a.after380

choice.exit166:                                   ; preds = %a.store391, %choice.exit235
  br label %choice.exit147

a.create:                                         ; preds = %choice.then164
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 24)
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 128)
  %a.len.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 0
  store i64 0, ptr %a.len.gep172, align 8
  %a.data.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 1
  store ptr %a.buf171, ptr %a.data.gep173, align 8
  %a.cap.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 2
  store i64 16, ptr %a.cap.gep174, align 8
  store ptr %a.create169, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then164
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query175 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query175, ptr %var.n_segs, align 8
  %var.load176 = load i64, ptr %var.n_segs, align 8
  %cmptmp177 = icmp sgt i64 %var.load176, 0
  br i1 %cmptmp177, label %and.83.then, label %and.83.else

and.83.then:                                      ; preds = %a.after
  %var.load178 = load ptr, ptr %var.segs, align 8
  %a.load179 = load ptr, ptr %var.segs, align 8
  %a.null180 = icmp eq ptr %a.load179, null
  br i1 %a.null180, label %a.create181, label %a.after182

and.83.else:                                      ; preds = %a.after
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %str.eq.merge225
  %and.83.phi = phi i1 [ %str.neq232, %str.eq.merge225 ], [ %cmptmp177, %and.83.else ]
  br i1 %and.83.phi, label %choice.then233, label %choice.else234

a.create181:                                      ; preds = %and.83.then
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 128)
  %a.len.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 0
  store i64 0, ptr %a.len.gep187, align 8
  %a.data.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 1
  store ptr %a.buf186, ptr %a.data.gep188, align 8
  %a.cap.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 2
  store i64 16, ptr %a.cap.gep189, align 8
  store ptr %a.create184, ptr %var.segs, align 8
  br label %a.after182

a.after182:                                       ; preds = %a.create181, %and.83.then
  %a.load2190 = load ptr, ptr %var.segs, align 8
  %var.load191 = load i64, ptr %var.n_segs, align 8
  %subtmp192 = sub i64 %var.load191, 1
  %a.rd.nonnull = icmp ne ptr %a.load2190, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after182
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2190, i32 0, i32 0
  %a.rd.len193 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp192, 0
  %a.rd.lt = icmp slt i64 %subtmp192, %a.rd.len193
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2190, i32 0, i32 1
  %a.rd.data194 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data194, i64 %subtmp192
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after182
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 319, ptr %err.line.gep, align 8
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
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 56)
  %err.code.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 0
  store i64 4011, ptr %err.code.gep198, align 8
  %err.msg.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep199, align 8
  %err.file.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep200, align 8
  %err.line.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 3
  store i64 319, ptr %err.line.gep201, align 8
  %err.col.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 4
  store i64 57, ptr %err.col.gep202, align 8
  %err.ctx.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 5
  %err.ctx0.gep204 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 0
  store i64 %subtmp192, ptr %err.ctx0.gep204, align 8
  %err.ctx1.gep205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 1
  store i64 %a.rd.len193, ptr %err.ctx1.gep205, align 8
  %err.p2i206 = ptrtoint ptr %err.alloc197 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i206, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag207 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag207, label %choice.then208, label %choice.else209

choice.then208:                                   ; preds = %a.rd.done
  %ram.pay211 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay211 to ptr
  store ptr %pay.ptr, ptr %var._212, align 8
  br label %choice.exit210

choice.else209:                                   ; preds = %a.rd.done
  %ram.pay213 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr214 = inttoptr i64 %ram.pay213 to ptr
  store ptr %pay.ptr214, ptr %var._215, align 8
  br label %choice.exit210

choice.exit210:                                   ; preds = %choice.else209, %choice.then208
  %choice.res216 = phi ptr [ %pay.ptr, %choice.then208 ], [ @str.6.struct, %choice.else209 ]
  %eq.lhs.len217 = getelementptr inbounds { i64, ptr }, ptr %choice.res216, i32 0, i32 0
  %eq.lhs.len218 = load i64, ptr %eq.lhs.len217, align 8
  %eq.lhs.len219 = and i64 %eq.lhs.len218, 281474976710655
  %eq.rhs.len220 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len221 = and i64 %eq.rhs.len220, 281474976710655
  %eq.len222 = icmp eq i64 %eq.lhs.len219, %eq.rhs.len221
  br i1 %eq.len222, label %str.eq.then223, label %str.eq.else224

str.eq.then223:                                   ; preds = %choice.exit210
  %eq.lhs.data226 = getelementptr inbounds { i64, ptr }, ptr %choice.res216, i32 0, i32 1
  %eq.lhs.data227 = load ptr, ptr %eq.lhs.data226, align 8
  %eq.rhs.data228 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp229 = call i32 @memcmp(ptr %eq.lhs.data227, ptr %eq.rhs.data228, i64 %eq.lhs.len219)
  %eq.cmp.zero230 = icmp eq i32 %eq.memcmp229, 0
  br label %str.eq.merge225

str.eq.else224:                                   ; preds = %choice.exit210
  br label %str.eq.merge225

str.eq.merge225:                                  ; preds = %str.eq.else224, %str.eq.then223
  %str.eq.result231 = phi i1 [ %eq.cmp.zero230, %str.eq.then223 ], [ false, %str.eq.else224 ]
  %str.neq232 = xor i1 %str.eq.result231, true
  br label %and.83.exit

choice.then233:                                   ; preds = %and.83.exit
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 24)
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 128)
  %a.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new237, i32 0, i32 0
  store i64 0, ptr %a.len.gep240, align 8
  %a.data.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new237, i32 0, i32 1
  store ptr %a.buf239, ptr %a.data.gep241, align 8
  %a.cap.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep242, align 8
  store ptr %a.new237, ptr %var.kept, align 8
  %var.load243 = load i64, ptr %var.n_segs, align 8
  %subtmp244 = sub i64 %var.load243, 1
  store i64 0, ptr %loop.idx.84, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.84

choice.else234:                                   ; preds = %and.83.exit
  %var.load346 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load346, true
  br i1 %nottmp, label %choice.then347, label %choice.exit348

choice.exit235:                                   ; preds = %choice.exit348, %a.after337
  br label %choice.exit166

loop.header.84:                                   ; preds = %loop.latch.84, %choice.then233
  %counter.load245 = load i64, ptr %loop.idx.84, align 8
  %loop.cond246 = icmp slt i64 %counter.load245, %subtmp244
  br i1 %loop.cond246, label %loop.body.84, label %loop.exit.nat.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i247 = sub i64 %counter.load245, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i247, ptr %var._i248, align 8
  store i64 %counter.load245, ptr %var._249, align 8
  store i64 %counter.load245, ptr %var.m, align 8
  %var.load250 = load ptr, ptr %var.segs, align 8
  %a.load251 = load ptr, ptr %var.segs, align 8
  %a.null252 = icmp eq ptr %a.load251, null
  br i1 %a.null252, label %a.create253, label %a.after254

loop.exit.nat.84:                                 ; preds = %loop.header.84
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load245, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %loop.exit.nat.84
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load333 = load ptr, ptr %var.kept, align 8
  %a.load334 = load ptr, ptr %var.kept, align 8
  %a.null335 = icmp eq ptr %a.load334, null
  br i1 %a.null335, label %a.create336, label %a.after337

a.create253:                                      ; preds = %loop.body.84
  %arena.cur255 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 24)
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 128)
  %a.len.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 0
  store i64 0, ptr %a.len.gep259, align 8
  %a.data.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 1
  store ptr %a.buf258, ptr %a.data.gep260, align 8
  %a.cap.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 2
  store i64 16, ptr %a.cap.gep261, align 8
  store ptr %a.create256, ptr %var.segs, align 8
  br label %a.after254

a.after254:                                       ; preds = %a.create253, %loop.body.84
  %a.load2262 = load ptr, ptr %var.segs, align 8
  %var.load263 = load i64, ptr %var.m, align 8
  %a.rd.nonnull264 = icmp ne ptr %a.load2262, null
  br i1 %a.rd.nonnull264, label %a.rd.check265, label %a.rd.err.null267

a.rd.check265:                                    ; preds = %a.after254
  %a.rd.len270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2262, i32 0, i32 0
  %a.rd.len271 = load i64, ptr %a.rd.len270, align 8
  %a.rd.ge0272 = icmp sge i64 %var.load263, 0
  %a.rd.lt273 = icmp slt i64 %var.load263, %a.rd.len271
  %a.rd.bounds274 = and i1 %a.rd.ge0272, %a.rd.lt273
  br i1 %a.rd.bounds274, label %a.rd.ok266, label %a.rd.err.oob268

a.rd.ok266:                                       ; preds = %a.rd.check265
  %a.rd.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2262, i32 0, i32 1
  %a.rd.data276 = load ptr, ptr %a.rd.data275, align 8
  %a.rd.elem.gep277 = getelementptr i64, ptr %a.rd.data276, i64 %var.load263
  %a.rd.elem278 = load i64, ptr %a.rd.elem.gep277, align 8
  br label %a.rd.done269

a.rd.err.null267:                                 ; preds = %a.after254
  %arena.cur279 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 56)
  %err.code.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 0
  store i64 4011, ptr %err.code.gep281, align 8
  %err.msg.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep282, align 8
  %err.file.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep283, align 8
  %err.line.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 3
  store i64 322, ptr %err.line.gep284, align 8
  %err.col.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 4
  store i64 68, ptr %err.col.gep285, align 8
  %err.ctx.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 5
  %err.ctx0.gep287 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep287, align 8
  %err.ctx1.gep288 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep288, align 8
  %err.p2i289 = ptrtoint ptr %err.alloc280 to i64
  br label %a.rd.done269

a.rd.err.oob268:                                  ; preds = %a.rd.check265
  %arena.cur290 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 56)
  %err.code.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 0
  store i64 4011, ptr %err.code.gep292, align 8
  %err.msg.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep293, align 8
  %err.file.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep294, align 8
  %err.line.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 3
  store i64 322, ptr %err.line.gep295, align 8
  %err.col.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 4
  store i64 68, ptr %err.col.gep296, align 8
  %err.ctx.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc291, i32 0, i32 5
  %err.ctx0.gep298 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep297, i32 0, i32 0
  store i64 %var.load263, ptr %err.ctx0.gep298, align 8
  %err.ctx1.gep299 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep297, i32 0, i32 1
  store i64 %a.rd.len271, ptr %err.ctx1.gep299, align 8
  %err.p2i300 = ptrtoint ptr %err.alloc291 to i64
  br label %a.rd.done269

a.rd.done269:                                     ; preds = %a.rd.err.oob268, %a.rd.err.null267, %a.rd.ok266
  %a.rd.tag301 = phi i1 [ true, %a.rd.ok266 ], [ false, %a.rd.err.null267 ], [ false, %a.rd.err.oob268 ]
  %a.rd.pay302 = phi i64 [ %a.rd.elem278, %a.rd.ok266 ], [ %err.p2i289, %a.rd.err.null267 ], [ %err.p2i300, %a.rd.err.oob268 ]
  %ram.tag303 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag301, 0
  %ram.pay304 = insertvalue { i1, i64 } %ram.tag303, i64 %a.rd.pay302, 1
  %ram.tag305 = extractvalue { i1, i64 } %ram.pay304, 0
  br i1 %ram.tag305, label %choice.then306, label %choice.else307

choice.then306:                                   ; preds = %a.rd.done269
  %ram.pay309 = extractvalue { i1, i64 } %ram.pay304, 1
  %pay.ptr310 = inttoptr i64 %ram.pay309 to ptr
  store ptr %pay.ptr310, ptr %var._311, align 8
  br label %choice.exit308

choice.else307:                                   ; preds = %a.rd.done269
  %ram.pay312 = extractvalue { i1, i64 } %ram.pay304, 1
  %pay.ptr313 = inttoptr i64 %ram.pay312 to ptr
  store ptr %pay.ptr313, ptr %var._314, align 8
  br label %choice.exit308

choice.exit308:                                   ; preds = %choice.else307, %choice.then306
  %choice.res315 = phi ptr [ %pay.ptr310, %choice.then306 ], [ @str.6.struct, %choice.else307 ]
  %a.load316 = load ptr, ptr %var.kept, align 8
  %a.null317 = icmp eq ptr %a.load316, null
  br i1 %a.null317, label %a.create318, label %a.after319

a.create318:                                      ; preds = %choice.exit308
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
  store ptr %a.create321, ptr %var.kept, align 8
  br label %a.after319

a.after319:                                       ; preds = %a.create318, %choice.exit308
  %a.load2327 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after319
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 0
  %a.len328 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 2
  %a.cap329 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len328, %a.cap329
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2327)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 1
  %a.cur.data330 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 0
  %a.cur.len331 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data330, i64 %a.cur.len331
  %slot.p2i = ptrtoint ptr %choice.res315 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len331, 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2327, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep332, align 8
  br label %loop.latch.84

a.create336:                                      ; preds = %loop.exit.84
  %arena.cur338 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 24)
  %arena.cur340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 128)
  %a.len.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 0
  store i64 0, ptr %a.len.gep342, align 8
  %a.data.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 1
  store ptr %a.buf341, ptr %a.data.gep343, align 8
  %a.cap.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 2
  store i64 16, ptr %a.cap.gep344, align 8
  store ptr %a.create339, ptr %var.kept, align 8
  br label %a.after337

a.after337:                                       ; preds = %a.create336, %loop.exit.84
  %a.load2345 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2345, ptr %var.segs, align 8
  br label %choice.exit235

choice.then347:                                   ; preds = %choice.else234
  %a.load349 = load ptr, ptr %var.segs, align 8
  %a.null350 = icmp eq ptr %a.load349, null
  br i1 %a.null350, label %a.create351, label %a.after352

choice.exit348:                                   ; preds = %a.store363, %choice.else234
  br label %choice.exit235

a.create351:                                      ; preds = %choice.then347
  %arena.cur353 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 24)
  %arena.cur355 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf356 = call ptr @dva_arena_alloc(ptr %arena.cur355, i64 128)
  %a.len.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 0
  store i64 0, ptr %a.len.gep357, align 8
  %a.data.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 1
  store ptr %a.buf356, ptr %a.data.gep358, align 8
  %a.cap.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 2
  store i64 16, ptr %a.cap.gep359, align 8
  store ptr %a.create354, ptr %var.segs, align 8
  br label %a.after352

a.after352:                                       ; preds = %a.create351, %choice.then347
  %a.load2360 = load ptr, ptr %var.segs, align 8
  br label %a.check361

a.check361:                                       ; preds = %a.after352
  %a.len364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  %a.len365 = load i64, ptr %a.len364, align 8
  %a.cap366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 2
  %a.cap367 = load i64, ptr %a.cap366, align 8
  %a.needs.grow368 = icmp eq i64 %a.len365, %a.cap367
  br i1 %a.needs.grow368, label %a.grow362, label %a.store363

a.grow362:                                        ; preds = %a.check361
  call void @dva_array_grow(ptr %a.load2360)
  br label %a.store363

a.store363:                                       ; preds = %a.grow362, %a.check361
  %a.cur.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 1
  %a.cur.data370 = load ptr, ptr %a.cur.data369, align 8
  %a.cur.len371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  %a.cur.len372 = load i64, ptr %a.cur.len371, align 8
  %a.elem.gep373 = getelementptr i64, ptr %a.cur.data370, i64 %a.cur.len372
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep373, align 8
  %a.next.len374 = add i64 %a.cur.len372, 1
  %b.len.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  store i64 %a.next.len374, ptr %b.len.gep375, align 8
  br label %choice.exit348

a.create379:                                      ; preds = %choice.else165
  %arena.cur381 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 24)
  %arena.cur383 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 128)
  %a.len.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create382, i32 0, i32 0
  store i64 0, ptr %a.len.gep385, align 8
  %a.data.gep386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create382, i32 0, i32 1
  store ptr %a.buf384, ptr %a.data.gep386, align 8
  %a.cap.gep387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create382, i32 0, i32 2
  store i64 16, ptr %a.cap.gep387, align 8
  store ptr %a.create382, ptr %var.segs, align 8
  br label %a.after380

a.after380:                                       ; preds = %a.create379, %choice.else165
  %a.load2388 = load ptr, ptr %var.segs, align 8
  br label %a.check389

a.check389:                                       ; preds = %a.after380
  %a.len392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2388, i32 0, i32 0
  %a.len393 = load i64, ptr %a.len392, align 8
  %a.cap394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2388, i32 0, i32 2
  %a.cap395 = load i64, ptr %a.cap394, align 8
  %a.needs.grow396 = icmp eq i64 %a.len393, %a.cap395
  br i1 %a.needs.grow396, label %a.grow390, label %a.store391

a.grow390:                                        ; preds = %a.check389
  call void @dva_array_grow(ptr %a.load2388)
  br label %a.store391

a.store391:                                       ; preds = %a.grow390, %a.check389
  %a.cur.data397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2388, i32 0, i32 1
  %a.cur.data398 = load ptr, ptr %a.cur.data397, align 8
  %a.cur.len399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2388, i32 0, i32 0
  %a.cur.len400 = load i64, ptr %a.cur.len399, align 8
  %a.elem.gep401 = getelementptr i64, ptr %a.cur.data398, i64 %a.cur.len400
  %slot.p2i402 = ptrtoint ptr %var.load376 to i64
  store i64 %slot.p2i402, ptr %a.elem.gep401, align 8
  %a.next.len403 = add i64 %a.cur.len400, 1
  %b.len.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2388, i32 0, i32 0
  store i64 %a.next.len403, ptr %b.len.gep404, align 8
  br label %choice.exit166

b.rn.new.len410:                                  ; preds = %abort.dead412, %choice.else114
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap413 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap413, %sum408
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort411:                            ; preds = %choice.else114
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead412:                                    ; No predecessors!
  br label %b.rn.new.len410

b.grow2:                                          ; preds = %b.rn.new.len410
  %b.cap2 = mul i64 %b.cap413, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum408
  %b.new.cap = select i1 %b.cap.need, i64 %sum408, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2414 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2415 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum416 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf417 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf417, label %str_overflow_abort419, label %b.new.buf.len2418

b.nogrow2:                                        ; preds = %b.rn.new.len410
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2418
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data422 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data422, i64 %b.rn.cur.len407
  br i1 %br.cmp1, label %br.b1.85, label %br.c2.85

b.new.buf.len2418:                                ; preds = %abort.dead420, %b.grow2
  %arena.cur421 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 %sum416)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2415, i64 %b.cur.len2414, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2414
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort419:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead420:                                    ; No predecessors!
  br label %b.new.buf.len2418

br.b1.85:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext406 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.85

br.c2.85:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.85, label %br.c3.85

br.b2.85:                                         ; preds = %br.c2.85
  %br.sh6 = lshr i64 %coerce.sext406, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext406, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.85

br.c3.85:                                         ; preds = %br.c2.85
  br i1 %br.cmp3, label %br.b3.85, label %br.b4.85

br.b3.85:                                         ; preds = %br.c3.85
  %br.sh12 = lshr i64 %coerce.sext406, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext406, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext406, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.85

br.b4.85:                                         ; preds = %br.c3.85
  %br.sh18 = lshr i64 %coerce.sext406, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext406, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext406, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext406, 63
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
  %br.nul = getelementptr i8, ptr %b.rn.data422, i64 %sum408
  store i8 0, ptr %br.nul, align 1
  %b.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum408, ptr %b.len.gep423, align 8
  br label %choice.exit115

b.buf.len437:                                     ; preds = %abort.dead439, %loop.exit.81
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 %sum435)
  %b.nul0442 = getelementptr i8, ptr %b.buf441, i64 0
  store i8 0, ptr %b.nul0442, align 1
  store i64 0, ptr %b.len.gep432, align 8
  store ptr %b.buf441, ptr %b.data.gep431, align 8
  store i64 %cap.safe, ptr %b.cap.gep433, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %b.load443 = load ptr, ptr %var.out, align 8
  %var.load444 = load ptr, ptr %var.prefix, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load444, i32 0, i32 0
  %app.str.len445 = load i64, ptr %app.str.len, align 8
  %app.str.len446 = and i64 %app.str.len445, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load444, i32 0, i32 1
  %app.str.data447 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 0
  %b.app.cur.len448 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len448, i64 %app.str.len446)
  %sum449 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf450 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.app.new.len451

str_overflow_abort438:                            ; preds = %loop.exit.81
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead439:                                    ; No predecessors!
  br label %b.buf.len437

b.app.new.len451:                                 ; preds = %abort.dead453, %b.buf.len437
  %b.cap454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 2
  %b.cap455 = load i64, ptr %b.cap454, align 8
  %b.need.grow456 = icmp slt i64 %b.cap455, %sum449
  br i1 %b.need.grow456, label %b.grow2457, label %b.nogrow2458

str_overflow_abort452:                            ; preds = %b.buf.len437
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead453:                                    ; No predecessors!
  br label %b.app.new.len451

b.grow2457:                                       ; preds = %b.app.new.len451
  %b.cap2460 = mul i64 %b.cap455, 2
  %b.cap.small461 = icmp slt i64 %b.cap2460, 16
  %b.cap.grow462 = select i1 %b.cap.small461, i64 16, i64 %b.cap2460
  %b.cap.need463 = icmp slt i64 %b.cap.grow462, %sum449
  %b.new.cap464 = select i1 %b.cap.need463, i64 %sum449, i64 %b.cap.grow462
  %b.cur.len2465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 0
  %b.cur.len2466 = load i64, ptr %b.cur.len2465, align 8
  %b.cur.data2467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 1
  %b.cur.data2468 = load ptr, ptr %b.cur.data2467, align 8
  %b.new.buf.len2469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap464, i64 1)
  %sum470 = extractvalue { i64, i1 } %b.new.buf.len2469, 0
  %ovf471 = extractvalue { i64, i1 } %b.new.buf.len2469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %b.new.buf.len2472

b.nogrow2458:                                     ; preds = %b.app.new.len451
  br label %b.grow_done459

b.grow_done459:                                   ; preds = %b.nogrow2458, %b.new.buf.len2472
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 1
  %b.app.data480 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data480, i64 %b.app.cur.len448
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data447, i64 %app.str.len446, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data480, i64 %sum449
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 0
  store i64 %sum449, ptr %b.len.gep481, align 8
  %var.load482 = load ptr, ptr %var.segs, align 8
  %a.load483 = load ptr, ptr %var.segs, align 8
  %a.null484 = icmp eq ptr %a.load483, null
  br i1 %a.null484, label %a.create485, label %a.after486

b.new.buf.len2472:                                ; preds = %abort.dead474, %b.grow2457
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 %sum470)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2476, ptr align 1 %b.cur.data2468, i64 %b.cur.len2466, i1 false)
  %b.grow2.nul477 = getelementptr i8, ptr %b.new.buf2476, i64 %b.cur.len2466
  store i8 0, ptr %b.grow2.nul477, align 1
  %b.new.data2.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 1
  store ptr %b.new.buf2476, ptr %b.new.data2.gep478, align 8
  %b.new.cap2.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load443, i32 0, i32 2
  store i64 %b.new.cap464, ptr %b.new.cap2.gep479, align 8
  br label %b.grow_done459

str_overflow_abort473:                            ; preds = %b.grow2457
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead474:                                    ; No predecessors!
  br label %b.new.buf.len2472

a.create485:                                      ; preds = %b.grow_done459
  %arena.cur487 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 24)
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 128)
  %a.len.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 0
  store i64 0, ptr %a.len.gep491, align 8
  %a.data.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 1
  store ptr %a.buf490, ptr %a.data.gep492, align 8
  %a.cap.gep493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 2
  store i64 16, ptr %a.cap.gep493, align 8
  store ptr %a.create488, ptr %var.segs, align 8
  br label %a.after486

a.after486:                                       ; preds = %a.create485, %b.grow_done459
  %a.load2494 = load ptr, ptr %var.segs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2494, i32 0, i32 0
  %arr.cycle.len495 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2494, i32 0, i32 1
  %arr.cycle.data496 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.86, align 8
  store i64 0, ptr %var.idx, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after486
  %counter.load498 = load i64, ptr %loop.idx.86, align 8
  %loop.cond499 = icmp slt i64 %counter.load498, %arr.cycle.len495
  br i1 %loop.cond499, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i500 = sub i64 %counter.load498, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data496, i64 %counter.load498
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i500, ptr %var._i501, align 8
  store ptr %slot.i2p, ptr %var._502, align 8
  store ptr %slot.i2p, ptr %var.seg497, align 8
  store i64 %loop.rel.i500, ptr %var.idx, align 8
  %var.load503 = load i64, ptr %var.idx, align 8
  %cmptmp504 = icmp sgt i64 %var.load503, 0
  br i1 %cmptmp504, label %choice.then505, label %choice.exit506

loop.exit.nat.86:                                 ; preds = %loop.header.86
  %loop.rel.end = sub i64 %counter.load498, 0
  store i64 %loop.rel.end, ptr %var.idx, align 8
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %b.grow_done573
  %step.val599 = load i64, ptr %loop.step.86, align 8
  %loop.next600 = add i64 %counter.load498, %step.val599
  store i64 %loop.next600, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %var.load601 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load601, i32 0, i32 0
  %b.len602 = load i64, ptr %b.len, align 8
  %cmptmp603 = icmp eq i64 %b.len602, 0
  br i1 %cmptmp603, label %choice.then604, label %choice.else605

choice.then505:                                   ; preds = %loop.body.86
  %b.load507 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len508 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  %b.rn.cur.len509 = load i64, ptr %b.rn.cur.len508, align 8
  %b.rn.new.len510 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len509, i64 1)
  %sum511 = extractvalue { i64, i1 } %b.rn.new.len510, 0
  %ovf512 = extractvalue { i64, i1 } %b.rn.new.len510, 1
  br i1 %ovf512, label %str_overflow_abort514, label %b.rn.new.len513

choice.exit506:                                   ; preds = %br.done.87, %loop.body.86
  %b.load553 = load ptr, ptr %var.out, align 8
  %var.load554 = load ptr, ptr %var.seg497, align 8
  %app.str.len555 = getelementptr inbounds { i64, ptr }, ptr %var.load554, i32 0, i32 0
  %app.str.len556 = load i64, ptr %app.str.len555, align 8
  %app.str.len557 = and i64 %app.str.len556, 281474976710655
  %app.str.data558 = getelementptr inbounds { i64, ptr }, ptr %var.load554, i32 0, i32 1
  %app.str.data559 = load ptr, ptr %app.str.data558, align 8
  %b.app.cur.len560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.app.cur.len561 = load i64, ptr %b.app.cur.len560, align 8
  %b.app.new.len562 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len561, i64 %app.str.len557)
  %sum563 = extractvalue { i64, i1 } %b.app.new.len562, 0
  %ovf564 = extractvalue { i64, i1 } %b.app.new.len562, 1
  br i1 %ovf564, label %str_overflow_abort566, label %b.app.new.len565

b.rn.new.len513:                                  ; preds = %abort.dead515, %choice.then505
  %b.cap516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 2
  %b.cap517 = load i64, ptr %b.cap516, align 8
  %b.need.grow518 = icmp slt i64 %b.cap517, %sum511
  br i1 %b.need.grow518, label %b.grow2519, label %b.nogrow2520

str_overflow_abort514:                            ; preds = %choice.then505
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead515:                                    ; No predecessors!
  br label %b.rn.new.len513

b.grow2519:                                       ; preds = %b.rn.new.len513
  %b.cap2522 = mul i64 %b.cap517, 2
  %b.cap.small523 = icmp slt i64 %b.cap2522, 16
  %b.cap.grow524 = select i1 %b.cap.small523, i64 16, i64 %b.cap2522
  %b.cap.need525 = icmp slt i64 %b.cap.grow524, %sum511
  %b.new.cap526 = select i1 %b.cap.need525, i64 %sum511, i64 %b.cap.grow524
  %b.cur.len2527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  %b.cur.len2528 = load i64, ptr %b.cur.len2527, align 8
  %b.cur.data2529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  %b.cur.data2530 = load ptr, ptr %b.cur.data2529, align 8
  %b.new.buf.len2531 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap526, i64 1)
  %sum532 = extractvalue { i64, i1 } %b.new.buf.len2531, 0
  %ovf533 = extractvalue { i64, i1 } %b.new.buf.len2531, 1
  br i1 %ovf533, label %str_overflow_abort535, label %b.new.buf.len2534

b.nogrow2520:                                     ; preds = %b.rn.new.len513
  br label %b.grow_done521

b.grow_done521:                                   ; preds = %b.nogrow2520, %b.new.buf.len2534
  %b.rn.data542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  %b.rn.data543 = load ptr, ptr %b.rn.data542, align 8
  %b.rn.dst544 = getelementptr i8, ptr %b.rn.data543, i64 %b.rn.cur.len509
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2534:                                ; preds = %abort.dead536, %b.grow2519
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 %sum532)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2538, ptr align 1 %b.cur.data2530, i64 %b.cur.len2528, i1 false)
  %b.grow2.nul539 = getelementptr i8, ptr %b.new.buf2538, i64 %b.cur.len2528
  store i8 0, ptr %b.grow2.nul539, align 1
  %b.new.data2.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  store ptr %b.new.buf2538, ptr %b.new.data2.gep540, align 8
  %b.new.cap2.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 2
  store i64 %b.new.cap526, ptr %b.new.cap2.gep541, align 8
  br label %b.grow_done521

str_overflow_abort535:                            ; preds = %b.grow2519
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead536:                                    ; No predecessors!
  br label %b.new.buf.len2534

br.b1.87:                                         ; preds = %b.grow_done521
  store i8 92, ptr %b.rn.dst544, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done521
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -63, ptr %b.rn.dst544, align 1
  %br.dst1545 = getelementptr i8, ptr %b.rn.dst544, i64 1
  store i8 -100, ptr %br.dst1545, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst544, align 1
  %br.dst1.3546 = getelementptr i8, ptr %b.rn.dst544, i64 1
  store i8 -127, ptr %br.dst1.3546, align 1
  %br.dst2.3547 = getelementptr i8, ptr %b.rn.dst544, i64 2
  store i8 -100, ptr %br.dst2.3547, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst544, align 1
  %br.dst1.4548 = getelementptr i8, ptr %b.rn.dst544, i64 1
  store i8 -128, ptr %br.dst1.4548, align 1
  %br.dst2.4549 = getelementptr i8, ptr %b.rn.dst544, i64 2
  store i8 -127, ptr %br.dst2.4549, align 1
  %br.dst3.4550 = getelementptr i8, ptr %b.rn.dst544, i64 3
  store i8 -100, ptr %br.dst3.4550, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul551 = getelementptr i8, ptr %b.rn.data543, i64 %sum511
  store i8 0, ptr %br.nul551, align 1
  %b.len.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  store i64 %sum511, ptr %b.len.gep552, align 8
  br label %choice.exit506

b.app.new.len565:                                 ; preds = %abort.dead567, %choice.exit506
  %b.cap568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  %b.cap569 = load i64, ptr %b.cap568, align 8
  %b.need.grow570 = icmp slt i64 %b.cap569, %sum563
  br i1 %b.need.grow570, label %b.grow2571, label %b.nogrow2572

str_overflow_abort566:                            ; preds = %choice.exit506
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead567:                                    ; No predecessors!
  br label %b.app.new.len565

b.grow2571:                                       ; preds = %b.app.new.len565
  %b.cap2574 = mul i64 %b.cap569, 2
  %b.cap.small575 = icmp slt i64 %b.cap2574, 16
  %b.cap.grow576 = select i1 %b.cap.small575, i64 16, i64 %b.cap2574
  %b.cap.need577 = icmp slt i64 %b.cap.grow576, %sum563
  %b.new.cap578 = select i1 %b.cap.need577, i64 %sum563, i64 %b.cap.grow576
  %b.cur.len2579 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.cur.len2580 = load i64, ptr %b.cur.len2579, align 8
  %b.cur.data2581 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.cur.data2582 = load ptr, ptr %b.cur.data2581, align 8
  %b.new.buf.len2583 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap578, i64 1)
  %sum584 = extractvalue { i64, i1 } %b.new.buf.len2583, 0
  %ovf585 = extractvalue { i64, i1 } %b.new.buf.len2583, 1
  br i1 %ovf585, label %str_overflow_abort587, label %b.new.buf.len2586

b.nogrow2572:                                     ; preds = %b.app.new.len565
  br label %b.grow_done573

b.grow_done573:                                   ; preds = %b.nogrow2572, %b.new.buf.len2586
  %b.app.data594 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.app.data595 = load ptr, ptr %b.app.data594, align 8
  %b.app.dst596 = getelementptr i8, ptr %b.app.data595, i64 %b.app.cur.len561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst596, ptr align 1 %app.str.data559, i64 %app.str.len557, i1 false)
  %b.app.nul597 = getelementptr i8, ptr %b.app.data595, i64 %sum563
  store i8 0, ptr %b.app.nul597, align 1
  %b.len.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  store i64 %sum563, ptr %b.len.gep598, align 8
  br label %loop.latch.86

b.new.buf.len2586:                                ; preds = %abort.dead588, %b.grow2571
  %arena.cur589 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2590 = call ptr @dva_arena_alloc(ptr %arena.cur589, i64 %sum584)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2590, ptr align 1 %b.cur.data2582, i64 %b.cur.len2580, i1 false)
  %b.grow2.nul591 = getelementptr i8, ptr %b.new.buf2590, i64 %b.cur.len2580
  store i8 0, ptr %b.grow2.nul591, align 1
  %b.new.data2.gep592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  store ptr %b.new.buf2590, ptr %b.new.data2.gep592, align 8
  %b.new.cap2.gep593 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  store i64 %b.new.cap578, ptr %b.new.cap2.gep593, align 8
  br label %b.grow_done573

str_overflow_abort587:                            ; preds = %b.grow2571
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead588:                                    ; No predecessors!
  br label %b.new.buf.len2586

choice.then604:                                   ; preds = %loop.exit.86
  br label %choice.exit606

choice.else605:                                   ; preds = %loop.exit.86
  %var.load607 = load ptr, ptr %var.out, align 8
  %b.freeze.len608 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load607, i32 0, i32 0
  %b.freeze.len609 = load i64, ptr %b.freeze.len608, align 8
  %b.freeze.data610 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load607, i32 0, i32 1
  %b.freeze.data611 = load ptr, ptr %b.freeze.data610, align 8
  %str.build.len.gep613 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze612, i32 0, i32 0
  store i64 %b.freeze.len609, ptr %str.build.len.gep613, align 8
  %str.build.data.gep614 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze612, i32 0, i32 1
  store ptr %b.freeze.data611, ptr %str.build.data.gep614, align 8
  %b.freeze.rst.len615 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load607, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len615, align 8
  %b.freeze.rst.data616 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load607, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data616, align 8
  %b.freeze.rst.cap617 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load607, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap617, align 8
  br label %choice.exit606

choice.exit606:                                   ; preds = %choice.else605, %choice.then604
  %choice.res618 = phi ptr [ @str.5.struct, %choice.then604 ], [ %builder.freeze612, %choice.else605 ]
  %ret.pack619 = load { i64, ptr }, ptr %choice.res618, align 8
  ret { i64, ptr } %ret.pack619
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
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.seg = alloca ptr, align 8
  %var._398 = alloca ptr, align 8
  %var._395 = alloca ptr, align 8
  %var._333 = alloca i64, align 8
  %var._i332 = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %var._222 = alloca ptr, align 8
  %var._219 = alloca ptr, align 8
  %var._157 = alloca i64, align 8
  %var._i156 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len136

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
  store i64 346, ptr %err.line.gep, align 8
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
  store i64 346, ptr %err.line.gep47, align 8
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
  store i64 346, ptr %err.line.gep95, align 8
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
  store i64 346, ptr %err.line.gep106, align 8
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

b.buf.len136:                                     ; preds = %abort.dead, %loop.exit.88
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load138 = load i64, ptr %"var.common'", align 8
  %var.load139 = load ptr, ptr %var.fa, align 8
  %a.load140 = load ptr, ptr %var.fa, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

str_overflow_abort:                               ; preds = %loop.exit.88
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len136

a.create142:                                      ; preds = %b.buf.len136
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
  store ptr %a.create145, ptr %var.fa, align 8
  br label %a.after143

a.after143:                                       ; preds = %a.create142, %b.buf.len136
  %a.load2151 = load ptr, ptr %var.fa, align 8
  %a.len.query152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  %a.len.query153 = load i64, ptr %a.len.query152, align 8
  store i64 %var.load138, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %a.after143
  %counter.load154 = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load154, %a.len.query153
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i155 = sub i64 %counter.load154, %var.load138
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i155, ptr %var._i156, align 8
  store i64 %counter.load154, ptr %var._157, align 8
  store i64 %counter.load154, ptr %var.i, align 8
  %var.load158 = load ptr, ptr %var.fa, align 8
  %a.load159 = load ptr, ptr %var.fa, align 8
  %a.null160 = icmp eq ptr %a.load159, null
  br i1 %a.null160, label %a.create161, label %a.after162

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit241
  %step.val311 = load i64, ptr %loop.step.90, align 8
  %loop.next312 = add i64 %counter.load154, %step.val311
  store i64 %loop.next312, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %var.load313 = load i64, ptr %"var.common'", align 8
  %var.load314 = load ptr, ptr %var.ta, align 8
  %a.load315 = load ptr, ptr %var.ta, align 8
  %a.null316 = icmp eq ptr %a.load315, null
  br i1 %a.null316, label %a.create317, label %a.after318

a.create161:                                      ; preds = %loop.body.90
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 24)
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 128)
  %a.len.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 0
  store i64 0, ptr %a.len.gep167, align 8
  %a.data.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 1
  store ptr %a.buf166, ptr %a.data.gep168, align 8
  %a.cap.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 2
  store i64 16, ptr %a.cap.gep169, align 8
  store ptr %a.create164, ptr %var.fa, align 8
  br label %a.after162

a.after162:                                       ; preds = %a.create161, %loop.body.90
  %a.load2170 = load ptr, ptr %var.fa, align 8
  %var.load171 = load i64, ptr %var.i, align 8
  %a.rd.nonnull172 = icmp ne ptr %a.load2170, null
  br i1 %a.rd.nonnull172, label %a.rd.check173, label %a.rd.err.null175

a.rd.check173:                                    ; preds = %a.after162
  %a.rd.len178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 0
  %a.rd.len179 = load i64, ptr %a.rd.len178, align 8
  %a.rd.ge0180 = icmp sge i64 %var.load171, 0
  %a.rd.lt181 = icmp slt i64 %var.load171, %a.rd.len179
  %a.rd.bounds182 = and i1 %a.rd.ge0180, %a.rd.lt181
  br i1 %a.rd.bounds182, label %a.rd.ok174, label %a.rd.err.oob176

a.rd.ok174:                                       ; preds = %a.rd.check173
  %a.rd.data183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 1
  %a.rd.data184 = load ptr, ptr %a.rd.data183, align 8
  %a.rd.elem.gep185 = getelementptr i64, ptr %a.rd.data184, i64 %var.load171
  %a.rd.elem186 = load i64, ptr %a.rd.elem.gep185, align 8
  br label %a.rd.done177

a.rd.err.null175:                                 ; preds = %a.after162
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 56)
  %err.code.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 0
  store i64 4011, ptr %err.code.gep189, align 8
  %err.msg.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep190, align 8
  %err.file.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep191, align 8
  %err.line.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 3
  store i64 350, ptr %err.line.gep192, align 8
  %err.col.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 4
  store i64 14, ptr %err.col.gep193, align 8
  %err.ctx.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc188, i32 0, i32 5
  %err.ctx0.gep195 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep194, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep195, align 8
  %err.ctx1.gep196 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep194, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep196, align 8
  %err.p2i197 = ptrtoint ptr %err.alloc188 to i64
  br label %a.rd.done177

a.rd.err.oob176:                                  ; preds = %a.rd.check173
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 56)
  %err.code.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 0
  store i64 4011, ptr %err.code.gep200, align 8
  %err.msg.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep201, align 8
  %err.file.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep202, align 8
  %err.line.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 3
  store i64 350, ptr %err.line.gep203, align 8
  %err.col.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 4
  store i64 14, ptr %err.col.gep204, align 8
  %err.ctx.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 5
  %err.ctx0.gep206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep205, i32 0, i32 0
  store i64 %var.load171, ptr %err.ctx0.gep206, align 8
  %err.ctx1.gep207 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep205, i32 0, i32 1
  store i64 %a.rd.len179, ptr %err.ctx1.gep207, align 8
  %err.p2i208 = ptrtoint ptr %err.alloc199 to i64
  br label %a.rd.done177

a.rd.done177:                                     ; preds = %a.rd.err.oob176, %a.rd.err.null175, %a.rd.ok174
  %a.rd.tag209 = phi i1 [ true, %a.rd.ok174 ], [ false, %a.rd.err.null175 ], [ false, %a.rd.err.oob176 ]
  %a.rd.pay210 = phi i64 [ %a.rd.elem186, %a.rd.ok174 ], [ %err.p2i197, %a.rd.err.null175 ], [ %err.p2i208, %a.rd.err.oob176 ]
  %ram.tag211 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag209, 0
  %ram.pay212 = insertvalue { i1, i64 } %ram.tag211, i64 %a.rd.pay210, 1
  %ram.tag213 = extractvalue { i1, i64 } %ram.pay212, 0
  br i1 %ram.tag213, label %choice.then214, label %choice.else215

choice.then214:                                   ; preds = %a.rd.done177
  %ram.pay217 = extractvalue { i1, i64 } %ram.pay212, 1
  %pay.ptr218 = inttoptr i64 %ram.pay217 to ptr
  store ptr %pay.ptr218, ptr %var._219, align 8
  br label %choice.exit216

choice.else215:                                   ; preds = %a.rd.done177
  %ram.pay220 = extractvalue { i1, i64 } %ram.pay212, 1
  %pay.ptr221 = inttoptr i64 %ram.pay220 to ptr
  store ptr %pay.ptr221, ptr %var._222, align 8
  br label %choice.exit216

choice.exit216:                                   ; preds = %choice.else215, %choice.then214
  %choice.res223 = phi ptr [ %pay.ptr218, %choice.then214 ], [ @str.6.struct, %choice.else215 ]
  %eq.lhs.len224 = getelementptr inbounds { i64, ptr }, ptr %choice.res223, i32 0, i32 0
  %eq.lhs.len225 = load i64, ptr %eq.lhs.len224, align 8
  %eq.lhs.len226 = and i64 %eq.lhs.len225, 281474976710655
  %eq.rhs.len227 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len228 = and i64 %eq.rhs.len227, 281474976710655
  %eq.len229 = icmp eq i64 %eq.lhs.len226, %eq.rhs.len228
  br i1 %eq.len229, label %str.eq.then230, label %str.eq.else231

str.eq.then230:                                   ; preds = %choice.exit216
  %eq.lhs.data233 = getelementptr inbounds { i64, ptr }, ptr %choice.res223, i32 0, i32 1
  %eq.lhs.data234 = load ptr, ptr %eq.lhs.data233, align 8
  %eq.rhs.data235 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data234, ptr %eq.rhs.data235, i64 %eq.lhs.len226)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br label %str.eq.merge232

str.eq.else231:                                   ; preds = %choice.exit216
  br label %str.eq.merge232

str.eq.merge232:                                  ; preds = %str.eq.else231, %str.eq.then230
  %str.eq.result238 = phi i1 [ %eq.cmp.zero237, %str.eq.then230 ], [ false, %str.eq.else231 ]
  %str.neq239 = xor i1 %str.eq.result238, true
  br i1 %str.neq239, label %choice.then240, label %choice.exit241

choice.then240:                                   ; preds = %str.eq.merge232
  %var.load242 = load ptr, ptr %var.b, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load242, i32 0, i32 0
  %b.len243 = load i64, ptr %b.len, align 8
  %cmptmp244 = icmp sgt i64 %b.len243, 0
  br i1 %cmptmp244, label %choice.then245, label %choice.exit246

choice.exit241:                                   ; preds = %b.grow_done285, %str.eq.merge232
  br label %loop.latch.90

choice.then245:                                   ; preds = %choice.then240
  %b.load = load ptr, ptr %var.b, align 8
  %var.load247 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load247, i32 0, i32 0
  %app.str.len248 = load i64, ptr %app.str.len, align 8
  %app.str.len249 = and i64 %app.str.len248, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load247, i32 0, i32 1
  %app.str.data250 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len251 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len251, i64 %app.str.len249)
  %sum252 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf253 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf253, label %str_overflow_abort255, label %b.app.new.len254

choice.exit246:                                   ; preds = %b.grow_done, %choice.then240
  %b.load268 = load ptr, ptr %var.b, align 8
  %app.str.len269 = load i64, ptr @str.7.struct, align 8
  %app.str.len270 = and i64 %app.str.len269, 281474976710655
  %app.str.data271 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %b.app.cur.len272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.app.cur.len273 = load i64, ptr %b.app.cur.len272, align 8
  %b.app.new.len274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len273, i64 %app.str.len270)
  %sum275 = extractvalue { i64, i1 } %b.app.new.len274, 0
  %ovf276 = extractvalue { i64, i1 } %b.app.new.len274, 1
  br i1 %ovf276, label %str_overflow_abort278, label %b.app.new.len277

b.app.new.len254:                                 ; preds = %abort.dead256, %choice.then245
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap257 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap257, %sum252
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort255:                            ; preds = %choice.then245
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead256:                                    ; No predecessors!
  br label %b.app.new.len254

b.grow2:                                          ; preds = %b.app.new.len254
  %b.cap2 = mul i64 %b.cap257, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum252
  %b.new.cap = select i1 %b.cap.need, i64 %sum252, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2258 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2259 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum260 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf261 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf261, label %str_overflow_abort263, label %b.new.buf.len2262

b.nogrow2:                                        ; preds = %b.app.new.len254
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2262
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data266 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data266, i64 %b.app.cur.len251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data250, i64 %app.str.len249, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data266, i64 %sum252
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum252, ptr %b.len.gep267, align 8
  br label %choice.exit246

b.new.buf.len2262:                                ; preds = %abort.dead264, %b.grow2
  %arena.cur265 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 %sum260)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2259, i64 %b.cur.len2258, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2258
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort263:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead264:                                    ; No predecessors!
  br label %b.new.buf.len2262

b.app.new.len277:                                 ; preds = %abort.dead279, %choice.exit246
  %b.cap280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  %b.cap281 = load i64, ptr %b.cap280, align 8
  %b.need.grow282 = icmp slt i64 %b.cap281, %sum275
  br i1 %b.need.grow282, label %b.grow2283, label %b.nogrow2284

str_overflow_abort278:                            ; preds = %choice.exit246
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead279:                                    ; No predecessors!
  br label %b.app.new.len277

b.grow2283:                                       ; preds = %b.app.new.len277
  %b.cap2286 = mul i64 %b.cap281, 2
  %b.cap.small287 = icmp slt i64 %b.cap2286, 16
  %b.cap.grow288 = select i1 %b.cap.small287, i64 16, i64 %b.cap2286
  %b.cap.need289 = icmp slt i64 %b.cap.grow288, %sum275
  %b.new.cap290 = select i1 %b.cap.need289, i64 %sum275, i64 %b.cap.grow288
  %b.cur.len2291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.cur.len2292 = load i64, ptr %b.cur.len2291, align 8
  %b.cur.data2293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.cur.data2294 = load ptr, ptr %b.cur.data2293, align 8
  %b.new.buf.len2295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap290, i64 1)
  %sum296 = extractvalue { i64, i1 } %b.new.buf.len2295, 0
  %ovf297 = extractvalue { i64, i1 } %b.new.buf.len2295, 1
  br i1 %ovf297, label %str_overflow_abort299, label %b.new.buf.len2298

b.nogrow2284:                                     ; preds = %b.app.new.len277
  br label %b.grow_done285

b.grow_done285:                                   ; preds = %b.nogrow2284, %b.new.buf.len2298
  %b.app.data306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.app.data307 = load ptr, ptr %b.app.data306, align 8
  %b.app.dst308 = getelementptr i8, ptr %b.app.data307, i64 %b.app.cur.len273
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst308, ptr align 1 %app.str.data271, i64 %app.str.len270, i1 false)
  %b.app.nul309 = getelementptr i8, ptr %b.app.data307, i64 %sum275
  store i8 0, ptr %b.app.nul309, align 1
  %b.len.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  store i64 %sum275, ptr %b.len.gep310, align 8
  br label %choice.exit241

b.new.buf.len2298:                                ; preds = %abort.dead300, %b.grow2283
  %arena.cur301 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2302 = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 %sum296)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2302, ptr align 1 %b.cur.data2294, i64 %b.cur.len2292, i1 false)
  %b.grow2.nul303 = getelementptr i8, ptr %b.new.buf2302, i64 %b.cur.len2292
  store i8 0, ptr %b.grow2.nul303, align 1
  %b.new.data2.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  store ptr %b.new.buf2302, ptr %b.new.data2.gep304, align 8
  %b.new.cap2.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  store i64 %b.new.cap290, ptr %b.new.cap2.gep305, align 8
  br label %b.grow_done285

str_overflow_abort299:                            ; preds = %b.grow2283
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead300:                                    ; No predecessors!
  br label %b.new.buf.len2298

a.create317:                                      ; preds = %loop.exit.90
  %arena.cur319 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 24)
  %arena.cur321 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 128)
  %a.len.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 0
  store i64 0, ptr %a.len.gep323, align 8
  %a.data.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 1
  store ptr %a.buf322, ptr %a.data.gep324, align 8
  %a.cap.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 2
  store i64 16, ptr %a.cap.gep325, align 8
  store ptr %a.create320, ptr %var.ta, align 8
  br label %a.after318

a.after318:                                       ; preds = %a.create317, %loop.exit.90
  %a.load2326 = load ptr, ptr %var.ta, align 8
  %a.len.query327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2326, i32 0, i32 0
  %a.len.query328 = load i64, ptr %a.len.query327, align 8
  store i64 %var.load313, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after318
  %counter.load329 = load i64, ptr %loop.idx.91, align 8
  %loop.cond330 = icmp slt i64 %counter.load329, %a.len.query328
  br i1 %loop.cond330, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i331 = sub i64 %counter.load329, %var.load313
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i331, ptr %var._i332, align 8
  store i64 %counter.load329, ptr %var._333, align 8
  store i64 %counter.load329, ptr %var.i, align 8
  %var.load334 = load ptr, ptr %var.ta, align 8
  %a.load335 = load ptr, ptr %var.ta, align 8
  %a.null336 = icmp eq ptr %a.load335, null
  br i1 %a.null336, label %a.create337, label %a.after338

loop.exit.nat.91:                                 ; preds = %loop.header.91
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit418
  %step.val517 = load i64, ptr %loop.step.91, align 8
  %loop.next518 = add i64 %counter.load329, %step.val517
  store i64 %loop.next518, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %loop.exit.nat.91
  %var.load519 = load ptr, ptr %var.b, align 8
  %b.len520 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load519, i32 0, i32 0
  %b.len521 = load i64, ptr %b.len520, align 8
  %cmptmp522 = icmp eq i64 %b.len521, 0
  br i1 %cmptmp522, label %choice.then523, label %choice.else524

a.create337:                                      ; preds = %loop.body.91
  %arena.cur339 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 24)
  %arena.cur341 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf342 = call ptr @dva_arena_alloc(ptr %arena.cur341, i64 128)
  %a.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 0
  store i64 0, ptr %a.len.gep343, align 8
  %a.data.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 1
  store ptr %a.buf342, ptr %a.data.gep344, align 8
  %a.cap.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 2
  store i64 16, ptr %a.cap.gep345, align 8
  store ptr %a.create340, ptr %var.ta, align 8
  br label %a.after338

a.after338:                                       ; preds = %a.create337, %loop.body.91
  %a.load2346 = load ptr, ptr %var.ta, align 8
  %var.load347 = load i64, ptr %var.i, align 8
  %a.rd.nonnull348 = icmp ne ptr %a.load2346, null
  br i1 %a.rd.nonnull348, label %a.rd.check349, label %a.rd.err.null351

a.rd.check349:                                    ; preds = %a.after338
  %a.rd.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2346, i32 0, i32 0
  %a.rd.len355 = load i64, ptr %a.rd.len354, align 8
  %a.rd.ge0356 = icmp sge i64 %var.load347, 0
  %a.rd.lt357 = icmp slt i64 %var.load347, %a.rd.len355
  %a.rd.bounds358 = and i1 %a.rd.ge0356, %a.rd.lt357
  br i1 %a.rd.bounds358, label %a.rd.ok350, label %a.rd.err.oob352

a.rd.ok350:                                       ; preds = %a.rd.check349
  %a.rd.data359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2346, i32 0, i32 1
  %a.rd.data360 = load ptr, ptr %a.rd.data359, align 8
  %a.rd.elem.gep361 = getelementptr i64, ptr %a.rd.data360, i64 %var.load347
  %a.rd.elem362 = load i64, ptr %a.rd.elem.gep361, align 8
  br label %a.rd.done353

a.rd.err.null351:                                 ; preds = %a.after338
  %arena.cur363 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 56)
  %err.code.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 0
  store i64 4011, ptr %err.code.gep365, align 8
  %err.msg.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep366, align 8
  %err.file.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep367, align 8
  %err.line.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 3
  store i64 354, ptr %err.line.gep368, align 8
  %err.col.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 4
  store i64 19, ptr %err.col.gep369, align 8
  %err.ctx.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc364, i32 0, i32 5
  %err.ctx0.gep371 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep370, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep371, align 8
  %err.ctx1.gep372 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep370, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep372, align 8
  %err.p2i373 = ptrtoint ptr %err.alloc364 to i64
  br label %a.rd.done353

a.rd.err.oob352:                                  ; preds = %a.rd.check349
  %arena.cur374 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 56)
  %err.code.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 0
  store i64 4011, ptr %err.code.gep376, align 8
  %err.msg.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep377, align 8
  %err.file.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep378, align 8
  %err.line.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 3
  store i64 354, ptr %err.line.gep379, align 8
  %err.col.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 4
  store i64 19, ptr %err.col.gep380, align 8
  %err.ctx.gep381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc375, i32 0, i32 5
  %err.ctx0.gep382 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep381, i32 0, i32 0
  store i64 %var.load347, ptr %err.ctx0.gep382, align 8
  %err.ctx1.gep383 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep381, i32 0, i32 1
  store i64 %a.rd.len355, ptr %err.ctx1.gep383, align 8
  %err.p2i384 = ptrtoint ptr %err.alloc375 to i64
  br label %a.rd.done353

a.rd.done353:                                     ; preds = %a.rd.err.oob352, %a.rd.err.null351, %a.rd.ok350
  %a.rd.tag385 = phi i1 [ true, %a.rd.ok350 ], [ false, %a.rd.err.null351 ], [ false, %a.rd.err.oob352 ]
  %a.rd.pay386 = phi i64 [ %a.rd.elem362, %a.rd.ok350 ], [ %err.p2i373, %a.rd.err.null351 ], [ %err.p2i384, %a.rd.err.oob352 ]
  %ram.tag387 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag385, 0
  %ram.pay388 = insertvalue { i1, i64 } %ram.tag387, i64 %a.rd.pay386, 1
  %ram.tag389 = extractvalue { i1, i64 } %ram.pay388, 0
  br i1 %ram.tag389, label %choice.then390, label %choice.else391

choice.then390:                                   ; preds = %a.rd.done353
  %ram.pay393 = extractvalue { i1, i64 } %ram.pay388, 1
  %pay.ptr394 = inttoptr i64 %ram.pay393 to ptr
  store ptr %pay.ptr394, ptr %var._395, align 8
  br label %choice.exit392

choice.else391:                                   ; preds = %a.rd.done353
  %ram.pay396 = extractvalue { i1, i64 } %ram.pay388, 1
  %pay.ptr397 = inttoptr i64 %ram.pay396 to ptr
  store ptr %pay.ptr397, ptr %var._398, align 8
  br label %choice.exit392

choice.exit392:                                   ; preds = %choice.else391, %choice.then390
  %choice.res399 = phi ptr [ %pay.ptr394, %choice.then390 ], [ @str.6.struct, %choice.else391 ]
  store ptr %choice.res399, ptr %var.seg, align 8
  %var.load400 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len401 = getelementptr inbounds { i64, ptr }, ptr %var.load400, i32 0, i32 0
  %eq.lhs.len402 = load i64, ptr %eq.lhs.len401, align 8
  %eq.lhs.len403 = and i64 %eq.lhs.len402, 281474976710655
  %eq.rhs.len404 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len405 = and i64 %eq.rhs.len404, 281474976710655
  %eq.len406 = icmp eq i64 %eq.lhs.len403, %eq.rhs.len405
  br i1 %eq.len406, label %str.eq.then407, label %str.eq.else408

str.eq.then407:                                   ; preds = %choice.exit392
  %eq.lhs.data410 = getelementptr inbounds { i64, ptr }, ptr %var.load400, i32 0, i32 1
  %eq.lhs.data411 = load ptr, ptr %eq.lhs.data410, align 8
  %eq.rhs.data412 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp413 = call i32 @memcmp(ptr %eq.lhs.data411, ptr %eq.rhs.data412, i64 %eq.lhs.len403)
  %eq.cmp.zero414 = icmp eq i32 %eq.memcmp413, 0
  br label %str.eq.merge409

str.eq.else408:                                   ; preds = %choice.exit392
  br label %str.eq.merge409

str.eq.merge409:                                  ; preds = %str.eq.else408, %str.eq.then407
  %str.eq.result415 = phi i1 [ %eq.cmp.zero414, %str.eq.then407 ], [ false, %str.eq.else408 ]
  %str.neq416 = xor i1 %str.eq.result415, true
  br i1 %str.neq416, label %choice.then417, label %choice.exit418

choice.then417:                                   ; preds = %str.eq.merge409
  %var.load419 = load ptr, ptr %var.b, align 8
  %b.len420 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load419, i32 0, i32 0
  %b.len421 = load i64, ptr %b.len420, align 8
  %cmptmp422 = icmp sgt i64 %b.len421, 0
  br i1 %cmptmp422, label %choice.then423, label %choice.exit424

choice.exit418:                                   ; preds = %b.grow_done491, %str.eq.merge409
  br label %loop.latch.91

choice.then423:                                   ; preds = %choice.then417
  %b.load425 = load ptr, ptr %var.b, align 8
  %var.load426 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len427 = getelementptr inbounds { i64, ptr }, ptr %var.load426, i32 0, i32 0
  %app.str.len428 = load i64, ptr %app.str.len427, align 8
  %app.str.len429 = and i64 %app.str.len428, 281474976710655
  %app.str.data430 = getelementptr inbounds { i64, ptr }, ptr %var.load426, i32 0, i32 1
  %app.str.data431 = load ptr, ptr %app.str.data430, align 8
  %b.app.cur.len432 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.app.cur.len433 = load i64, ptr %b.app.cur.len432, align 8
  %b.app.new.len434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len433, i64 %app.str.len429)
  %sum435 = extractvalue { i64, i1 } %b.app.new.len434, 0
  %ovf436 = extractvalue { i64, i1 } %b.app.new.len434, 1
  br i1 %ovf436, label %str_overflow_abort438, label %b.app.new.len437

choice.exit424:                                   ; preds = %b.grow_done445, %choice.then417
  %b.load471 = load ptr, ptr %var.b, align 8
  %var.load472 = load ptr, ptr %var.seg, align 8
  %app.str.len473 = getelementptr inbounds { i64, ptr }, ptr %var.load472, i32 0, i32 0
  %app.str.len474 = load i64, ptr %app.str.len473, align 8
  %app.str.len475 = and i64 %app.str.len474, 281474976710655
  %app.str.data476 = getelementptr inbounds { i64, ptr }, ptr %var.load472, i32 0, i32 1
  %app.str.data477 = load ptr, ptr %app.str.data476, align 8
  %b.app.cur.len478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.app.cur.len479 = load i64, ptr %b.app.cur.len478, align 8
  %b.app.new.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len479, i64 %app.str.len475)
  %sum481 = extractvalue { i64, i1 } %b.app.new.len480, 0
  %ovf482 = extractvalue { i64, i1 } %b.app.new.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %b.app.new.len483

b.app.new.len437:                                 ; preds = %abort.dead439, %choice.then423
  %b.cap440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  %b.cap441 = load i64, ptr %b.cap440, align 8
  %b.need.grow442 = icmp slt i64 %b.cap441, %sum435
  br i1 %b.need.grow442, label %b.grow2443, label %b.nogrow2444

str_overflow_abort438:                            ; preds = %choice.then423
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead439:                                    ; No predecessors!
  br label %b.app.new.len437

b.grow2443:                                       ; preds = %b.app.new.len437
  %b.cap2446 = mul i64 %b.cap441, 2
  %b.cap.small447 = icmp slt i64 %b.cap2446, 16
  %b.cap.grow448 = select i1 %b.cap.small447, i64 16, i64 %b.cap2446
  %b.cap.need449 = icmp slt i64 %b.cap.grow448, %sum435
  %b.new.cap450 = select i1 %b.cap.need449, i64 %sum435, i64 %b.cap.grow448
  %b.cur.len2451 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.cur.len2452 = load i64, ptr %b.cur.len2451, align 8
  %b.cur.data2453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.cur.data2454 = load ptr, ptr %b.cur.data2453, align 8
  %b.new.buf.len2455 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap450, i64 1)
  %sum456 = extractvalue { i64, i1 } %b.new.buf.len2455, 0
  %ovf457 = extractvalue { i64, i1 } %b.new.buf.len2455, 1
  br i1 %ovf457, label %str_overflow_abort459, label %b.new.buf.len2458

b.nogrow2444:                                     ; preds = %b.app.new.len437
  br label %b.grow_done445

b.grow_done445:                                   ; preds = %b.nogrow2444, %b.new.buf.len2458
  %b.app.data466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.app.data467 = load ptr, ptr %b.app.data466, align 8
  %b.app.dst468 = getelementptr i8, ptr %b.app.data467, i64 %b.app.cur.len433
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst468, ptr align 1 %app.str.data431, i64 %app.str.len429, i1 false)
  %b.app.nul469 = getelementptr i8, ptr %b.app.data467, i64 %sum435
  store i8 0, ptr %b.app.nul469, align 1
  %b.len.gep470 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  store i64 %sum435, ptr %b.len.gep470, align 8
  br label %choice.exit424

b.new.buf.len2458:                                ; preds = %abort.dead460, %b.grow2443
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 %sum456)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2462, ptr align 1 %b.cur.data2454, i64 %b.cur.len2452, i1 false)
  %b.grow2.nul463 = getelementptr i8, ptr %b.new.buf2462, i64 %b.cur.len2452
  store i8 0, ptr %b.grow2.nul463, align 1
  %b.new.data2.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  store ptr %b.new.buf2462, ptr %b.new.data2.gep464, align 8
  %b.new.cap2.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  store i64 %b.new.cap450, ptr %b.new.cap2.gep465, align 8
  br label %b.grow_done445

str_overflow_abort459:                            ; preds = %b.grow2443
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead460:                                    ; No predecessors!
  br label %b.new.buf.len2458

b.app.new.len483:                                 ; preds = %abort.dead485, %choice.exit424
  %b.cap486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  %b.cap487 = load i64, ptr %b.cap486, align 8
  %b.need.grow488 = icmp slt i64 %b.cap487, %sum481
  br i1 %b.need.grow488, label %b.grow2489, label %b.nogrow2490

str_overflow_abort484:                            ; preds = %choice.exit424
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead485:                                    ; No predecessors!
  br label %b.app.new.len483

b.grow2489:                                       ; preds = %b.app.new.len483
  %b.cap2492 = mul i64 %b.cap487, 2
  %b.cap.small493 = icmp slt i64 %b.cap2492, 16
  %b.cap.grow494 = select i1 %b.cap.small493, i64 16, i64 %b.cap2492
  %b.cap.need495 = icmp slt i64 %b.cap.grow494, %sum481
  %b.new.cap496 = select i1 %b.cap.need495, i64 %sum481, i64 %b.cap.grow494
  %b.cur.len2497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.cur.len2498 = load i64, ptr %b.cur.len2497, align 8
  %b.cur.data2499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.cur.data2500 = load ptr, ptr %b.cur.data2499, align 8
  %b.new.buf.len2501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap496, i64 1)
  %sum502 = extractvalue { i64, i1 } %b.new.buf.len2501, 0
  %ovf503 = extractvalue { i64, i1 } %b.new.buf.len2501, 1
  br i1 %ovf503, label %str_overflow_abort505, label %b.new.buf.len2504

b.nogrow2490:                                     ; preds = %b.app.new.len483
  br label %b.grow_done491

b.grow_done491:                                   ; preds = %b.nogrow2490, %b.new.buf.len2504
  %b.app.data512 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.app.data513 = load ptr, ptr %b.app.data512, align 8
  %b.app.dst514 = getelementptr i8, ptr %b.app.data513, i64 %b.app.cur.len479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst514, ptr align 1 %app.str.data477, i64 %app.str.len475, i1 false)
  %b.app.nul515 = getelementptr i8, ptr %b.app.data513, i64 %sum481
  store i8 0, ptr %b.app.nul515, align 1
  %b.len.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  store i64 %sum481, ptr %b.len.gep516, align 8
  br label %choice.exit418

b.new.buf.len2504:                                ; preds = %abort.dead506, %b.grow2489
  %arena.cur507 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2508 = call ptr @dva_arena_alloc(ptr %arena.cur507, i64 %sum502)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2508, ptr align 1 %b.cur.data2500, i64 %b.cur.len2498, i1 false)
  %b.grow2.nul509 = getelementptr i8, ptr %b.new.buf2508, i64 %b.cur.len2498
  store i8 0, ptr %b.grow2.nul509, align 1
  %b.new.data2.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  store ptr %b.new.buf2508, ptr %b.new.data2.gep510, align 8
  %b.new.cap2.gep511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  store i64 %b.new.cap496, ptr %b.new.cap2.gep511, align 8
  br label %b.grow_done491

str_overflow_abort505:                            ; preds = %b.grow2489
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead506:                                    ; No predecessors!
  br label %b.new.buf.len2504

choice.then523:                                   ; preds = %loop.exit.91
  br label %choice.exit525

choice.else524:                                   ; preds = %loop.exit.91
  %var.load526 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load526, i32 0, i32 0
  %b.freeze.len527 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load526, i32 0, i32 1
  %b.freeze.data528 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len527, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data528, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load526, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load526, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load526, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit525

choice.exit525:                                   ; preds = %choice.else524, %choice.then523
  %choice.res529 = phi ptr [ @str.5.struct, %choice.then523 ], [ %builder.freeze, %choice.else524 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res529, align 8
  ret { i64, ptr } %ret.pack
}

define i1 @"path::has_prefix"(ptr %0, ptr %1) #0 {
entry:
  %var.lp = alloca i64, align 8
  %var.clean_pre = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.prefix = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.prefix, align 8
  %call.res = call { i64, ptr } @"path::strip_trailing_sep"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.clean_pre, align 8
  %var.load1 = load ptr, ptr %var.clean_pre, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.lp, align 8
  %var.load4 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load5 = load ptr, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.clean_pre, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.92.then, label %or.92.else

or.92.then:                                       ; preds = %str.eq.merge
  br label %or.92.exit

or.92.else:                                       ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.p, align 8
  %str.len.query14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query14, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %var.load17 = load i64, ptr %var.lp, align 8
  %cmptmp18 = icmp sgt i64 %str.len.query16, %var.load17
  br i1 %cmptmp18, label %and.93.then, label %and.93.else

or.92.exit:                                       ; preds = %and.94.exit, %or.92.then
  %or.92.phi = phi i1 [ %str.eq.result, %or.92.then ], [ %and.94.phi, %and.94.exit ]
  ret i1 %or.92.phi

and.93.then:                                      ; preds = %or.92.else
  %var.load19 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len21, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len21
  %final.start = select i1 %start.gt.len, i64 %s.read.len21, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len21, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %var.load24 = load ptr, ptr %var.clean_pre, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %cmp.str25 = load i64, ptr %cmp.str, align 8
  %cmp.str26 = and i64 %cmp.str25, 281474976710655
  %cmp.str27 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %cmp.str28 = load ptr, ptr %cmp.str27, align 8
  %eq.len29 = icmp eq i64 %view.len, %cmp.str26
  br i1 %eq.len29, label %str.eq.then30, label %str.eq.else31

and.93.else:                                      ; preds = %or.92.else
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %str.eq.merge32
  %and.93.phi = phi i1 [ %str.eq.result35, %str.eq.merge32 ], [ %cmptmp18, %and.93.else ]
  br i1 %and.93.phi, label %and.94.then, label %and.94.else

str.eq.then30:                                    ; preds = %and.93.then
  %eq.memcmp33 = call i32 @memcmp(ptr %view.data, ptr %cmp.str28, i64 %view.len)
  %eq.cmp.zero34 = icmp eq i32 %eq.memcmp33, 0
  br label %str.eq.merge32

str.eq.else31:                                    ; preds = %and.93.then
  br label %str.eq.merge32

str.eq.merge32:                                   ; preds = %str.eq.else31, %str.eq.then30
  %str.eq.result35 = phi i1 [ %eq.cmp.zero34, %str.eq.then30 ], [ false, %str.eq.else31 ]
  br label %and.93.exit

and.94.then:                                      ; preds = %and.93.exit
  %var.load36 = load ptr, ptr %var.p, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %var.load42 = load i64, ptr %var.lp, align 8
  %idx.oob = icmp uge i64 %var.load42, %s.read.len39
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.94.else:                                      ; preds = %and.93.exit
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %idx_ok
  %and.94.phi = phi i1 [ %call.res43, %idx_ok ], [ %and.93.phi, %and.94.else ]
  br label %or.92.exit

idx_ok:                                           ; preds = %abort.dead, %and.94.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_sep"(i64 %s.byte.val)
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
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.start'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.header.95:                                   ; preds = %loop.latch.95, %entry
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
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
