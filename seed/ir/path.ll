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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  br i1 false, label %idx_oob, label %idx_big_check

and.39.else:                                      ; preds = %choice.exit
  br label %and.39.exit

and.39.exit:                                      ; preds = %and.39.else, %idx_ok
  %and.39.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp5, %and.39.else ]
  br i1 %and.39.phi, label %and.40.then, label %and.40.else

idx_big_check:                                    ; preds = %and.39.then
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead10, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_alpha"(i64 %s.byte.val)
  br label %and.39.exit

idx_oob:                                          ; preds = %idx_big_check, %and.39.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

and.40.then:                                      ; preds = %and.39.exit
  %var.load11 = load ptr, ptr %var.p, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  br i1 false, label %idx_oob19, label %idx_big_check17

and.40.else:                                      ; preds = %and.39.exit
  br label %and.40.exit

and.40.exit:                                      ; preds = %and.40.else, %idx_ok18
  %and.40.phi = phi i1 [ %cmptmp25, %idx_ok18 ], [ %and.39.phi, %and.40.else ]
  br i1 %and.40.phi, label %choice.then26, label %choice.else

idx_big_check17:                                  ; preds = %and.40.then
  %idx.big20 = icmp sge i64 1, %s.read.len14
  br i1 %idx.big20, label %idx_oob19, label %idx_ok18

idx_ok18:                                         ; preds = %abort.dead21, %idx_big_check17
  %s.byte.gep22 = getelementptr i8, ptr %s.read.data16, i64 1
  %s.byte23 = load i8, ptr %s.byte.gep22, align 1
  %s.byte.val24 = zext i8 %s.byte23 to i64
  %cmptmp25 = icmp eq i64 %s.byte.val24, 58
  br label %and.40.exit

idx_oob19:                                        ; preds = %idx_big_check17, %and.40.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok18

choice.then26:                                    ; preds = %and.40.exit
  %var.load28 = load i64, ptr %var.len, align 8
  %cmptmp29 = icmp sge i64 %var.load28, 3
  br i1 %cmptmp29, label %and.41.then, label %and.41.else

choice.else:                                      ; preds = %and.40.exit
  %var.load48 = load ptr, ptr %var.p, align 8
  %s.read.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len49, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %s.read.data52 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %s.read.data53 = load ptr, ptr %s.read.data52, align 8
  br i1 false, label %idx_oob56, label %idx_big_check54

choice.exit27:                                    ; preds = %choice.exit65, %choice.exit47
  %choice.res88 = phi i64 [ %choice.res, %choice.exit47 ], [ %choice.res87, %choice.exit65 ]
  ret i64 %choice.res88

and.41.then:                                      ; preds = %choice.then26
  %var.load30 = load ptr, ptr %var.p, align 8
  %s.read.len31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len31, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  br i1 false, label %idx_oob38, label %idx_big_check36

and.41.else:                                      ; preds = %choice.then26
  br label %and.41.exit

and.41.exit:                                      ; preds = %and.41.else, %idx_ok37
  %and.41.phi = phi i1 [ %call.res44, %idx_ok37 ], [ %cmptmp29, %and.41.else ]
  br i1 %and.41.phi, label %choice.then45, label %choice.else46

idx_big_check36:                                  ; preds = %and.41.then
  %idx.big39 = icmp sge i64 2, %s.read.len33
  br i1 %idx.big39, label %idx_oob38, label %idx_ok37

idx_ok37:                                         ; preds = %abort.dead40, %idx_big_check36
  %s.byte.gep41 = getelementptr i8, ptr %s.read.data35, i64 2
  %s.byte42 = load i8, ptr %s.byte.gep41, align 1
  %s.byte.val43 = zext i8 %s.byte42 to i64
  %call.res44 = call i1 @"path::is_win_sep"(i64 %s.byte.val43)
  br label %and.41.exit

idx_oob38:                                        ; preds = %idx_big_check36, %and.41.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %idx_ok37

choice.then45:                                    ; preds = %and.41.exit
  br label %choice.exit47

choice.else46:                                    ; preds = %and.41.exit
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res = phi i64 [ 3, %choice.then45 ], [ 2, %choice.else46 ]
  br label %choice.exit27

idx_big_check54:                                  ; preds = %choice.else
  %idx.big57 = icmp sge i64 0, %s.read.len51
  br i1 %idx.big57, label %idx_oob56, label %idx_ok55

idx_ok55:                                         ; preds = %abort.dead58, %idx_big_check54
  %s.byte.gep59 = getelementptr i8, ptr %s.read.data53, i64 0
  %s.byte60 = load i8, ptr %s.byte.gep59, align 1
  %s.byte.val61 = zext i8 %s.byte60 to i64
  %call.res62 = call i1 @"path::is_win_sep"(i64 %s.byte.val61)
  br i1 %call.res62, label %choice.then63, label %choice.else64

idx_oob56:                                        ; preds = %idx_big_check54, %choice.else
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %idx_ok55

choice.then63:                                    ; preds = %idx_ok55
  %var.load66 = load i64, ptr %var.len, align 8
  %cmptmp67 = icmp sge i64 %var.load66, 2
  br i1 %cmptmp67, label %and.42.then, label %and.42.else

choice.else64:                                    ; preds = %idx_ok55
  br label %choice.exit65

choice.exit65:                                    ; preds = %choice.else64, %choice.exit85
  %choice.res87 = phi i64 [ %choice.res86, %choice.exit85 ], [ 0, %choice.else64 ]
  br label %choice.exit27

and.42.then:                                      ; preds = %choice.then63
  %var.load68 = load ptr, ptr %var.p, align 8
  %s.read.len69 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %s.read.len70 = load i64, ptr %s.read.len69, align 8
  %s.read.len71 = and i64 %s.read.len70, 281474976710655
  %s.read.data72 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %s.read.data73 = load ptr, ptr %s.read.data72, align 8
  br i1 false, label %idx_oob76, label %idx_big_check74

and.42.else:                                      ; preds = %choice.then63
  br label %and.42.exit

and.42.exit:                                      ; preds = %and.42.else, %idx_ok75
  %and.42.phi = phi i1 [ %call.res82, %idx_ok75 ], [ %cmptmp67, %and.42.else ]
  br i1 %and.42.phi, label %choice.then83, label %choice.else84

idx_big_check74:                                  ; preds = %and.42.then
  %idx.big77 = icmp sge i64 1, %s.read.len71
  br i1 %idx.big77, label %idx_oob76, label %idx_ok75

idx_ok75:                                         ; preds = %abort.dead78, %idx_big_check74
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data73, i64 1
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %call.res82 = call i1 @"path::is_win_sep"(i64 %s.byte.val81)
  br label %and.42.exit

idx_oob76:                                        ; preds = %idx_big_check74, %and.42.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %idx_ok75

choice.then83:                                    ; preds = %and.42.exit
  br label %choice.exit85

choice.else84:                                    ; preds = %and.42.exit
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  %choice.res86 = phi i64 [ 2, %choice.then83 ], [ 1, %choice.else84 ]
  br label %choice.exit65
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.43.then, label %and.43.else

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

and.43.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.43.else:                                      ; preds = %str_ok
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %idx_ok
  %and.43.phi = phi i1 [ %cmptmp8, %idx_ok ], [ %cmptmp, %and.43.else ]
  br i1 %and.43.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.43.then
  %idx.big = icmp sge i64 0, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead7, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 47
  br label %and.43.exit

idx_oob:                                          ; preds = %idx_big_check, %and.43.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.44.then, label %and.44.else

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

and.44.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.44.else:                                      ; preds = %str_ok
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %idx_ok
  %and.44.phi = phi i1 [ %cmptmp8, %idx_ok ], [ %cmptmp, %and.44.else ]
  ret i1 %and.44.phi

idx_big_check:                                    ; preds = %and.44.then
  %idx.big = icmp sge i64 0, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead7, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 47
  br label %and.44.exit

idx_oob:                                          ; preds = %idx_big_check, %and.44.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sgt i64 %var.load3, 0
  br i1 %cmptmp, label %and.45.then, label %and.45.else

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

and.45.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.45.else:                                      ; preds = %str_ok
  br label %and.45.exit

and.45.exit:                                      ; preds = %and.45.else, %idx_ok
  %and.45.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.45.else ]
  br i1 %and.45.phi, label %or.46.then, label %or.46.else

idx_big_check:                                    ; preds = %and.45.then
  %idx.big = icmp sge i64 0, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead8, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.45.exit

idx_oob:                                          ; preds = %idx_big_check, %and.45.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %idx_ok

or.46.then:                                       ; preds = %and.45.exit
  br label %or.46.exit

or.46.else:                                       ; preds = %and.45.exit
  %var.load9 = load i64, ptr %var.len, align 8
  %cmptmp10 = icmp sge i64 %var.load9, 3
  br i1 %cmptmp10, label %and.47.then, label %and.47.else

or.46.exit:                                       ; preds = %and.49.exit, %or.46.then
  %or.46.phi = phi i1 [ %and.45.phi, %or.46.then ], [ %and.49.phi, %and.49.exit ]
  ret i1 %or.46.phi

and.47.then:                                      ; preds = %or.46.else
  %var.load11 = load ptr, ptr %var.p, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  br i1 false, label %idx_oob19, label %idx_big_check17

and.47.else:                                      ; preds = %or.46.else
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %idx_ok18
  %and.47.phi = phi i1 [ %call.res25, %idx_ok18 ], [ %cmptmp10, %and.47.else ]
  br i1 %and.47.phi, label %and.48.then, label %and.48.else

idx_big_check17:                                  ; preds = %and.47.then
  %idx.big20 = icmp sge i64 0, %s.read.len14
  br i1 %idx.big20, label %idx_oob19, label %idx_ok18

idx_ok18:                                         ; preds = %abort.dead21, %idx_big_check17
  %s.byte.gep22 = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte23 = load i8, ptr %s.byte.gep22, align 1
  %s.byte.val24 = zext i8 %s.byte23 to i64
  %call.res25 = call i1 @"ascii::is_alpha"(i64 %s.byte.val24)
  br label %and.47.exit

idx_oob19:                                        ; preds = %idx_big_check17, %and.47.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok18

and.48.then:                                      ; preds = %and.47.exit
  %var.load26 = load ptr, ptr %var.p, align 8
  %s.read.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len27, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data30 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data30, align 8
  br i1 false, label %idx_oob34, label %idx_big_check32

and.48.else:                                      ; preds = %and.47.exit
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %idx_ok33
  %and.48.phi = phi i1 [ %cmptmp40, %idx_ok33 ], [ %and.47.phi, %and.48.else ]
  br i1 %and.48.phi, label %and.49.then, label %and.49.else

idx_big_check32:                                  ; preds = %and.48.then
  %idx.big35 = icmp sge i64 1, %s.read.len29
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %abort.dead36, %idx_big_check32
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data31, i64 1
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.48.exit

idx_oob34:                                        ; preds = %idx_big_check32, %and.48.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok33

and.49.then:                                      ; preds = %and.48.exit
  %var.load41 = load ptr, ptr %var.p, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %s.read.data45 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data45, align 8
  br i1 false, label %idx_oob49, label %idx_big_check47

and.49.else:                                      ; preds = %and.48.exit
  br label %and.49.exit

and.49.exit:                                      ; preds = %and.49.else, %idx_ok48
  %and.49.phi = phi i1 [ %call.res55, %idx_ok48 ], [ %and.48.phi, %and.49.else ]
  br label %or.46.exit

idx_big_check47:                                  ; preds = %and.49.then
  %idx.big50 = icmp sge i64 2, %s.read.len44
  br i1 %idx.big50, label %idx_oob49, label %idx_ok48

idx_ok48:                                         ; preds = %abort.dead51, %idx_big_check47
  %s.byte.gep52 = getelementptr i8, ptr %s.read.data46, i64 2
  %s.byte53 = load i8, ptr %s.byte.gep52, align 1
  %s.byte.val54 = zext i8 %s.byte53 to i64
  %call.res55 = call i1 @"path::is_win_sep"(i64 %s.byte.val54)
  br label %and.49.exit

idx_oob49:                                        ; preds = %idx_big_check47, %and.49.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %idx_ok48
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

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
  %var.load13 = load i64, ptr %"var.end'", align 8
  %var.load14 = load ptr, ptr %var.p, align 8
  %str.len.query15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query15, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  %str.tag18 = lshr i64 %str.len.query16, 48
  %tag.immortal20 = icmp eq i64 %str.tag18, 0
  br i1 %tag.immortal20, label %str_ok19, label %tag.gen_check21

and.51.then:                                      ; preds = %loop.body.50
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load8, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.51.else:                                      ; preds = %loop.body.50
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %idx_ok
  %and.51.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.51.else ]
  br i1 %and.51.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.51.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp eq i64 %s.byte.val, 47
  br label %and.51.exit

idx_oob:                                          ; preds = %idx_big_check, %and.51.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.51.exit
  %var.load11 = load i64, ptr %"var.end'", align 8
  %subtmp12 = sub i64 %var.load11, 1
  store i64 %subtmp12, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.51.exit
  br label %loop.exit.50

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.50

str_ok19:                                         ; preds = %abort.dead28, %tag.slow_check22, %tag.gen_check21, %loop.exit.50
  %cmptmp29 = icmp eq i64 %var.load13, %str.len.query17
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

tag.gen_check21:                                  ; preds = %loop.exit.50
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok25 = icmp eq i64 %str.tag18, %active.gen24
  br i1 %tag.fast.ok25, label %str_ok19, label %tag.slow_check22

tag.slow_check22:                                 ; preds = %tag.gen_check21
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag18)
  br i1 %tag.valid27, label %str_ok19, label %tag.stale23

tag.stale23:                                      ; preds = %tag.slow_check22
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %str_ok19

choice.then30:                                    ; preds = %str_ok19
  %var.load33 = load ptr, ptr %var.p, align 8
  br label %choice.exit32

choice.else31:                                    ; preds = %str_ok19
  %var.load34 = load ptr, ptr %var.p, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len37, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len37
  %final.start = select i1 %start.gt.len, i64 %s.read.len37, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load40, 0
  %rel.end = add i64 %s.read.len37, %var.load40
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load40
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len37
  %final.end = select i1 %end.gt.len, i64 %s.read.len37, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data39, i64 %final.start
  %arena.cur41 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31, %choice.then30
  %choice.res = phi ptr [ %var.load33, %choice.then30 ], [ %str.view, %choice.else31 ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
  store i64 %str.len.query5, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

tag.gen_check:                                    ; preds = %choice.exit
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

loop.latch.52:                                    ; preds = %choice.exit18
  %step.val = load i64, ptr %loop.step.52, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %choice.else17, %loop.exit.nat.52
  %var.load21 = load i64, ptr %"var.end'", align 8
  %var.load22 = load ptr, ptr %var.p, align 8
  %str.len.query23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %str.len.query24 = load i64, ptr %str.len.query23, align 8
  %str.len.query25 = and i64 %str.len.query24, 281474976710655
  %str.tag26 = lshr i64 %str.len.query24, 48
  %tag.immortal28 = icmp eq i64 %str.tag26, 0
  br i1 %tag.immortal28, label %str_ok27, label %tag.gen_check29

and.53.then:                                      ; preds = %loop.body.52
  %var.load9 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load13, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.53.else:                                      ; preds = %loop.body.52
  br label %and.53.exit

and.53.exit:                                      ; preds = %and.53.else, %idx_ok
  %and.53.phi = phi i1 [ %call.res15, %idx_ok ], [ %cmptmp8, %and.53.else ]
  br i1 %and.53.phi, label %choice.then16, label %choice.else17

idx_big_check:                                    ; preds = %and.53.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead14, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res15 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.53.exit

idx_oob:                                          ; preds = %idx_big_check, %and.53.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %idx_ok

choice.then16:                                    ; preds = %and.53.exit
  %var.load19 = load i64, ptr %"var.end'", align 8
  %subtmp20 = sub i64 %var.load19, 1
  store i64 %subtmp20, ptr %"var.end'", align 8
  br label %choice.exit18

choice.else17:                                    ; preds = %and.53.exit
  br label %loop.exit.52

choice.exit18:                                    ; preds = %choice.then16
  br label %loop.latch.52

str_ok27:                                         ; preds = %abort.dead36, %tag.slow_check30, %tag.gen_check29, %loop.exit.52
  %cmptmp37 = icmp eq i64 %var.load21, %str.len.query25
  br i1 %cmptmp37, label %choice.then38, label %choice.else39

tag.gen_check29:                                  ; preds = %loop.exit.52
  %active.gen32 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok33 = icmp eq i64 %str.tag26, %active.gen32
  br i1 %tag.fast.ok33, label %str_ok27, label %tag.slow_check30

tag.slow_check30:                                 ; preds = %tag.gen_check29
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag26)
  br i1 %tag.valid35, label %str_ok27, label %tag.stale31

tag.stale31:                                      ; preds = %tag.slow_check30
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %str_ok27

choice.then38:                                    ; preds = %str_ok27
  %var.load41 = load ptr, ptr %var.p, align 8
  br label %choice.exit40

choice.else39:                                    ; preds = %str_ok27
  %var.load42 = load ptr, ptr %var.p, align 8
  %s.read.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len43, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data46 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data47 = load ptr, ptr %s.read.data46, align 8
  %var.load48 = load i64, ptr %"var.end'", align 8
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
  %arena.cur49 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else39, %choice.then38
  %choice.res50 = phi ptr [ %var.load41, %choice.then38 ], [ %str.view, %choice.else39 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res50, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.exit
  %cmptmp19 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp19, label %or.54.then, label %or.54.else

tag.gen_check11:                                  ; preds = %choice.exit
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

or.54.then:                                       ; preds = %str_ok9
  br label %or.54.exit

or.54.else:                                       ; preds = %str_ok9
  %var.load20 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load20)
  br label %or.54.exit

or.54.exit:                                       ; preds = %or.54.else, %or.54.then
  %or.54.phi = phi i1 [ %cmptmp19, %or.54.then ], [ %call.res, %or.54.else ]
  br i1 %or.54.phi, label %choice.then21, label %choice.exit22

choice.then21:                                    ; preds = %or.54.exit
  %var.load23 = load ptr, ptr %var.b, align 8
  %ret.pack24 = load { i64, ptr }, ptr %var.load23, align 8
  ret { i64, ptr } %ret.pack24

choice.exit22:                                    ; preds = %ret.dead25, %or.54.exit
  %var.load26 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load ptr, ptr %var.a, align 8
  %str.len.query31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query31, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %str.tag34 = lshr i64 %str.len.query32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  br i1 %tag.immortal36, label %str_ok35, label %tag.gen_check37

ret.dead25:                                       ; No predecessors!
  br label %choice.exit22

str_ok35:                                         ; preds = %abort.dead44, %tag.slow_check38, %tag.gen_check37, %choice.exit22
  %subtmp = sub i64 %str.len.query33, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

tag.gen_check37:                                  ; preds = %choice.exit22
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok41 = icmp eq i64 %str.tag34, %active.gen40
  br i1 %tag.fast.ok41, label %str_ok35, label %tag.slow_check38

tag.slow_check38:                                 ; preds = %tag.gen_check37
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag34)
  br i1 %tag.valid43, label %str_ok35, label %tag.stale39

tag.stale39:                                      ; preds = %tag.slow_check38
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %str_ok35

idx_big_check:                                    ; preds = %str_ok35
  %idx.big = icmp sge i64 %subtmp, %s.read.len28
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead45, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp46 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp46, label %choice.then47, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok35
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok

choice.then47:                                    ; preds = %idx_ok
  %var.load49 = load ptr, ptr %var.a, align 8
  %var.load50 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %concat.lhs51 = load i64, ptr %concat.lhs, align 8
  %concat.lhs52 = and i64 %concat.lhs51, 281474976710655
  %str.tag53 = lshr i64 %concat.lhs51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  br i1 %tag.immortal55, label %str_ok54, label %tag.gen_check56

choice.else:                                      ; preds = %idx_ok
  %var.load90 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %cat.seg91 = load i64, ptr %cat.seg, align 8
  %cat.seg92 = and i64 %cat.seg91, 281474976710655
  %str.tag93 = lshr i64 %cat.seg91, 48
  %tag.immortal95 = icmp eq i64 %str.tag93, 0
  br i1 %tag.immortal95, label %str_ok94, label %tag.gen_check96

choice.exit48:                                    ; preds = %concat.tot.len137, %concat.tot.len85
  %choice.res = phi ptr [ %concat.str, %concat.tot.len85 ], [ %concat.str147, %concat.tot.len137 ]
  %ret.pack150 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack150

str_ok54:                                         ; preds = %abort.dead63, %tag.slow_check57, %tag.gen_check56, %choice.then47
  %concat.lhs64 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %concat.lhs65 = load ptr, ptr %concat.lhs64, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %tag.immortal70 = icmp eq i64 %str.tag68, 0
  br i1 %tag.immortal70, label %str_ok69, label %tag.gen_check71

tag.gen_check56:                                  ; preds = %choice.then47
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok60 = icmp eq i64 %str.tag53, %active.gen59
  br i1 %tag.fast.ok60, label %str_ok54, label %tag.slow_check57

tag.slow_check57:                                 ; preds = %tag.gen_check56
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag53)
  br i1 %tag.valid62, label %str_ok54, label %tag.stale58

tag.stale58:                                      ; preds = %tag.slow_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %str_ok54

str_ok69:                                         ; preds = %abort.dead78, %tag.slow_check72, %tag.gen_check71, %str_ok54
  %concat.rhs79 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %concat.rhs80 = load ptr, ptr %concat.rhs79, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs52, i64 %concat.rhs67)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len81

tag.gen_check71:                                  ; preds = %str_ok54
  %active.gen74 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok75 = icmp eq i64 %str.tag68, %active.gen74
  br i1 %tag.fast.ok75, label %str_ok69, label %tag.slow_check72

tag.slow_check72:                                 ; preds = %tag.gen_check71
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag68)
  br i1 %tag.valid77, label %str_ok69, label %tag.stale73

tag.stale73:                                      ; preds = %tag.slow_check72
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %str_ok69

concat.sum.len81:                                 ; preds = %abort.dead82, %str_ok69
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort:                               ; preds = %str_ok69
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %concat.sum.len81

concat.tot.len85:                                 ; preds = %abort.dead87, %concat.sum.len81
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs65, i64 %concat.lhs52, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs80, i64 %concat.rhs67, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur89 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit48

str_overflow_abort86:                             ; preds = %concat.sum.len81
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %concat.tot.len85

str_ok94:                                         ; preds = %abort.dead103, %tag.slow_check97, %tag.gen_check96, %choice.else
  %cat.seg104 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 1
  %cat.seg105 = load ptr, ptr %cat.seg104, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load106 = load ptr, ptr %var.b, align 8
  %cat.seg107 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %cat.seg108 = load i64, ptr %cat.seg107, align 8
  %cat.seg109 = and i64 %cat.seg108, 281474976710655
  %str.tag110 = lshr i64 %cat.seg108, 48
  %tag.immortal112 = icmp eq i64 %str.tag110, 0
  br i1 %tag.immortal112, label %str_ok111, label %tag.gen_check113

tag.gen_check96:                                  ; preds = %choice.else
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok100 = icmp eq i64 %str.tag93, %active.gen99
  br i1 %tag.fast.ok100, label %str_ok94, label %tag.slow_check97

tag.slow_check97:                                 ; preds = %tag.gen_check96
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag93)
  br i1 %tag.valid102, label %str_ok94, label %tag.stale98

tag.stale98:                                      ; preds = %tag.slow_check97
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %str_ok94

str_ok111:                                        ; preds = %abort.dead120, %tag.slow_check114, %tag.gen_check113, %str_ok94
  %cat.seg121 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %cat.seg122 = load ptr, ptr %cat.seg121, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg92, i64 1)
  %sum123 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf124 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf124, label %str_overflow_abort126, label %cat.sum.len125

tag.gen_check113:                                 ; preds = %str_ok94
  %active.gen116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok117 = icmp eq i64 %str.tag110, %active.gen116
  br i1 %tag.fast.ok117, label %str_ok111, label %tag.slow_check114

tag.slow_check114:                                ; preds = %tag.gen_check113
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag110)
  br i1 %tag.valid119, label %str_ok111, label %tag.stale115

tag.stale115:                                     ; preds = %tag.slow_check114
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %str_ok111

cat.sum.len125:                                   ; preds = %abort.dead127, %str_ok111
  %cat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum123, i64 %cat.seg109)
  %sum129 = extractvalue { i64, i1 } %cat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %cat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %cat.sum.len131

str_overflow_abort126:                            ; preds = %str_ok111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead127:                                    ; No predecessors!
  br label %cat.sum.len125

cat.sum.len131:                                   ; preds = %abort.dead133, %cat.sum.len125
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort132:                            ; preds = %cat.sum.len125
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead133:                                    ; No predecessors!
  br label %cat.sum.len131

concat.tot.len137:                                ; preds = %abort.dead139, %cat.sum.len131
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum135)
  %cat.dst = getelementptr i8, ptr %concat.buf141, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg105, i64 %cat.seg92, i1 false)
  %cat.off = add i64 0, %cat.seg92
  %cat.dst142 = getelementptr i8, ptr %concat.buf141, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst142, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off143 = add i64 %cat.off, 1
  %cat.dst144 = getelementptr i8, ptr %concat.buf141, i64 %cat.off143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst144, ptr align 1 %cat.seg122, i64 %cat.seg109, i1 false)
  %concat.nul145 = getelementptr i8, ptr %concat.buf141, i64 %sum129
  store i8 0, ptr %concat.nul145, align 1
  %arena.cur146 = call ptr @dva_arena_current()
  %concat.str147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 16)
  %str.build.len.gep148 = getelementptr inbounds { i64, ptr }, ptr %concat.str147, i32 0, i32 0
  store i64 %sum129, ptr %str.build.len.gep148, align 8
  %str.build.data.gep149 = getelementptr inbounds { i64, ptr }, ptr %concat.str147, i32 0, i32 1
  store ptr %concat.buf141, ptr %str.build.data.gep149, align 8
  br label %choice.exit48

str_overflow_abort138:                            ; preds = %cat.sum.len131
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead139:                                    ; No predecessors!
  br label %concat.tot.len137
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.exit
  %cmptmp19 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp19, label %or.55.then, label %or.55.else

tag.gen_check11:                                  ; preds = %choice.exit
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

or.55.then:                                       ; preds = %str_ok9
  br label %or.55.exit

or.55.else:                                       ; preds = %str_ok9
  %var.load20 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::win_is_abs"(ptr %var.load20)
  br label %or.55.exit

or.55.exit:                                       ; preds = %or.55.else, %or.55.then
  %or.55.phi = phi i1 [ %cmptmp19, %or.55.then ], [ %call.res, %or.55.else ]
  br i1 %or.55.phi, label %choice.then21, label %choice.exit22

choice.then21:                                    ; preds = %or.55.exit
  %var.load23 = load ptr, ptr %var.b, align 8
  %ret.pack24 = load { i64, ptr }, ptr %var.load23, align 8
  ret { i64, ptr } %ret.pack24

choice.exit22:                                    ; preds = %ret.dead25, %or.55.exit
  %var.load26 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load ptr, ptr %var.a, align 8
  %str.len.query31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query31, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %str.tag34 = lshr i64 %str.len.query32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  br i1 %tag.immortal36, label %str_ok35, label %tag.gen_check37

ret.dead25:                                       ; No predecessors!
  br label %choice.exit22

str_ok35:                                         ; preds = %abort.dead44, %tag.slow_check38, %tag.gen_check37, %choice.exit22
  %subtmp = sub i64 %str.len.query33, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

tag.gen_check37:                                  ; preds = %choice.exit22
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok41 = icmp eq i64 %str.tag34, %active.gen40
  br i1 %tag.fast.ok41, label %str_ok35, label %tag.slow_check38

tag.slow_check38:                                 ; preds = %tag.gen_check37
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag34)
  br i1 %tag.valid43, label %str_ok35, label %tag.stale39

tag.stale39:                                      ; preds = %tag.slow_check38
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %str_ok35

idx_big_check:                                    ; preds = %str_ok35
  %idx.big = icmp sge i64 %subtmp, %s.read.len28
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead45, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res46 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res46, label %choice.then47, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok35
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok

choice.then47:                                    ; preds = %idx_ok
  %var.load49 = load ptr, ptr %var.a, align 8
  %var.load50 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %concat.lhs51 = load i64, ptr %concat.lhs, align 8
  %concat.lhs52 = and i64 %concat.lhs51, 281474976710655
  %str.tag53 = lshr i64 %concat.lhs51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  br i1 %tag.immortal55, label %str_ok54, label %tag.gen_check56

choice.else:                                      ; preds = %idx_ok
  %var.load90 = load ptr, ptr %var.a, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %cat.seg91 = load i64, ptr %cat.seg, align 8
  %cat.seg92 = and i64 %cat.seg91, 281474976710655
  %str.tag93 = lshr i64 %cat.seg91, 48
  %tag.immortal95 = icmp eq i64 %str.tag93, 0
  br i1 %tag.immortal95, label %str_ok94, label %tag.gen_check96

choice.exit48:                                    ; preds = %concat.tot.len137, %concat.tot.len85
  %choice.res = phi ptr [ %concat.str, %concat.tot.len85 ], [ %concat.str147, %concat.tot.len137 ]
  %ret.pack150 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack150

str_ok54:                                         ; preds = %abort.dead63, %tag.slow_check57, %tag.gen_check56, %choice.then47
  %concat.lhs64 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %concat.lhs65 = load ptr, ptr %concat.lhs64, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %tag.immortal70 = icmp eq i64 %str.tag68, 0
  br i1 %tag.immortal70, label %str_ok69, label %tag.gen_check71

tag.gen_check56:                                  ; preds = %choice.then47
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok60 = icmp eq i64 %str.tag53, %active.gen59
  br i1 %tag.fast.ok60, label %str_ok54, label %tag.slow_check57

tag.slow_check57:                                 ; preds = %tag.gen_check56
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag53)
  br i1 %tag.valid62, label %str_ok54, label %tag.stale58

tag.stale58:                                      ; preds = %tag.slow_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %str_ok54

str_ok69:                                         ; preds = %abort.dead78, %tag.slow_check72, %tag.gen_check71, %str_ok54
  %concat.rhs79 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %concat.rhs80 = load ptr, ptr %concat.rhs79, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs52, i64 %concat.rhs67)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len81

tag.gen_check71:                                  ; preds = %str_ok54
  %active.gen74 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok75 = icmp eq i64 %str.tag68, %active.gen74
  br i1 %tag.fast.ok75, label %str_ok69, label %tag.slow_check72

tag.slow_check72:                                 ; preds = %tag.gen_check71
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag68)
  br i1 %tag.valid77, label %str_ok69, label %tag.stale73

tag.stale73:                                      ; preds = %tag.slow_check72
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %str_ok69

concat.sum.len81:                                 ; preds = %abort.dead82, %str_ok69
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort:                               ; preds = %str_ok69
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %concat.sum.len81

concat.tot.len85:                                 ; preds = %abort.dead87, %concat.sum.len81
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs65, i64 %concat.lhs52, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs80, i64 %concat.rhs67, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur89 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit48

str_overflow_abort86:                             ; preds = %concat.sum.len81
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %concat.tot.len85

str_ok94:                                         ; preds = %abort.dead103, %tag.slow_check97, %tag.gen_check96, %choice.else
  %cat.seg104 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 1
  %cat.seg105 = load ptr, ptr %cat.seg104, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %var.load106 = load ptr, ptr %var.b, align 8
  %cat.seg107 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %cat.seg108 = load i64, ptr %cat.seg107, align 8
  %cat.seg109 = and i64 %cat.seg108, 281474976710655
  %str.tag110 = lshr i64 %cat.seg108, 48
  %tag.immortal112 = icmp eq i64 %str.tag110, 0
  br i1 %tag.immortal112, label %str_ok111, label %tag.gen_check113

tag.gen_check96:                                  ; preds = %choice.else
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok100 = icmp eq i64 %str.tag93, %active.gen99
  br i1 %tag.fast.ok100, label %str_ok94, label %tag.slow_check97

tag.slow_check97:                                 ; preds = %tag.gen_check96
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag93)
  br i1 %tag.valid102, label %str_ok94, label %tag.stale98

tag.stale98:                                      ; preds = %tag.slow_check97
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %str_ok94

str_ok111:                                        ; preds = %abort.dead120, %tag.slow_check114, %tag.gen_check113, %str_ok94
  %cat.seg121 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %cat.seg122 = load ptr, ptr %cat.seg121, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg92, i64 1)
  %sum123 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf124 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf124, label %str_overflow_abort126, label %cat.sum.len125

tag.gen_check113:                                 ; preds = %str_ok94
  %active.gen116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok117 = icmp eq i64 %str.tag110, %active.gen116
  br i1 %tag.fast.ok117, label %str_ok111, label %tag.slow_check114

tag.slow_check114:                                ; preds = %tag.gen_check113
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag110)
  br i1 %tag.valid119, label %str_ok111, label %tag.stale115

tag.stale115:                                     ; preds = %tag.slow_check114
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %str_ok111

cat.sum.len125:                                   ; preds = %abort.dead127, %str_ok111
  %cat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum123, i64 %cat.seg109)
  %sum129 = extractvalue { i64, i1 } %cat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %cat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %cat.sum.len131

str_overflow_abort126:                            ; preds = %str_ok111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead127:                                    ; No predecessors!
  br label %cat.sum.len125

cat.sum.len131:                                   ; preds = %abort.dead133, %cat.sum.len125
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort132:                            ; preds = %cat.sum.len125
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead133:                                    ; No predecessors!
  br label %cat.sum.len131

concat.tot.len137:                                ; preds = %abort.dead139, %cat.sum.len131
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum135)
  %cat.dst = getelementptr i8, ptr %concat.buf141, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg105, i64 %cat.seg92, i1 false)
  %cat.off = add i64 0, %cat.seg92
  %cat.dst142 = getelementptr i8, ptr %concat.buf141, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst142, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off143 = add i64 %cat.off, 1
  %cat.dst144 = getelementptr i8, ptr %concat.buf141, i64 %cat.off143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst144, ptr align 1 %cat.seg122, i64 %cat.seg109, i1 false)
  %concat.nul145 = getelementptr i8, ptr %concat.buf141, i64 %sum129
  store i8 0, ptr %concat.nul145, align 1
  %arena.cur146 = call ptr @dva_arena_current()
  %concat.str147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 16)
  %str.build.len.gep148 = getelementptr inbounds { i64, ptr }, ptr %concat.str147, i32 0, i32 0
  store i64 %sum129, ptr %str.build.len.gep148, align 8
  %str.build.data.gep149 = getelementptr inbounds { i64, ptr }, ptr %concat.str147, i32 0, i32 1
  store ptr %concat.buf141, ptr %str.build.data.gep149, align 8
  br label %choice.exit48

str_overflow_abort138:                            ; preds = %cat.sum.len131
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead139:                                    ; No predecessors!
  br label %concat.tot.len137
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  %arena.cur5 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load6 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.lhs.len7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  br i1 %tag.immortal11, label %str_ok10, label %tag.gen_check12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok10:                                         ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len20 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check12:                                  ; preds = %choice.exit
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %str.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %str_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag9)
  br i1 %tag.valid18, label %str_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then22, label %choice.exit23

choice.then22:                                    ; preds = %str.eq.merge
  %ret.pack24 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack24

choice.exit23:                                    ; preds = %ret.dead25, %str.eq.merge
  %var.load26 = load ptr, ptr %var.clean, align 8
  %str.len.query27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %str.len.query28 = load i64, ptr %str.len.query27, align 8
  %str.len.query29 = and i64 %str.len.query28, 281474976710655
  %str.tag30 = lshr i64 %str.len.query28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  br i1 %tag.immortal32, label %str_ok31, label %tag.gen_check33

ret.dead25:                                       ; No predecessors!
  br label %choice.exit23

str_ok31:                                         ; preds = %abort.dead40, %tag.slow_check34, %tag.gen_check33, %choice.exit23
  store i64 %str.len.query29, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load41 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

tag.gen_check33:                                  ; preds = %choice.exit23
  %active.gen36 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok37 = icmp eq i64 %str.tag30, %active.gen36
  br i1 %tag.fast.ok37, label %str_ok31, label %tag.slow_check34

tag.slow_check34:                                 ; preds = %tag.gen_check33
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag30)
  br i1 %tag.valid39, label %str_ok31, label %tag.stale35

tag.stale35:                                      ; preds = %tag.slow_check34
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %str_ok31

loop.header.56:                                   ; preds = %loop.latch.56, %str_ok31
  %counter.load = load i64, ptr %loop.idx.56, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load41
  br i1 %loop.cond, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load42 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load42, 1
  %var.load43 = load i64, ptr %var.i, align 8
  %subtmp44 = sub i64 %subtmp, %var.load43
  store i64 %subtmp44, ptr %var.idx, align 8
  %var.load45 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data, align 8
  %var.load49 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load49, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit55
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load57 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp58 = icmp slt i64 %var.load57, 0
  br i1 %cmptmp58, label %choice.then59, label %choice.else

idx_big_check:                                    ; preds = %loop.body.56
  %idx.big = icmp sge i64 %var.load49, %s.read.len47
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead50, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data48, i64 %var.load49
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp51 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp51, label %and.57.then, label %and.57.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.56
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok

and.57.then:                                      ; preds = %idx_ok
  %var.load52 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp53 = icmp slt i64 %var.load52, 0
  br label %and.57.exit

and.57.else:                                      ; preds = %idx_ok
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %and.57.then
  %and.57.phi = phi i1 [ %cmptmp53, %and.57.then ], [ %cmptmp51, %and.57.else ]
  br i1 %and.57.phi, label %choice.then54, label %choice.exit55

choice.then54:                                    ; preds = %and.57.exit
  %var.load56 = load i64, ptr %var.idx, align 8
  store i64 %var.load56, ptr %"var.last_sep'", align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.then54, %and.57.exit
  br label %loop.latch.56

choice.then59:                                    ; preds = %loop.exit.56
  br label %choice.exit60

choice.else:                                      ; preds = %loop.exit.56
  %var.load61 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp62 = icmp eq i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.else64

choice.exit60:                                    ; preds = %choice.exit65, %choice.then59
  %choice.res74 = phi ptr [ @str.5.struct, %choice.then59 ], [ %choice.res, %choice.exit65 ]
  %ret.pack75 = load { i64, ptr }, ptr %choice.res74, align 8
  ret { i64, ptr } %ret.pack75

choice.then63:                                    ; preds = %choice.else
  br label %choice.exit65

choice.else64:                                    ; preds = %choice.else
  %var.load66 = load ptr, ptr %var.clean, align 8
  %s.read.len67 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %s.read.len68 = load i64, ptr %s.read.len67, align 8
  %s.read.len69 = and i64 %s.read.len68, 281474976710655
  %s.read.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %s.read.data71 = load ptr, ptr %s.read.data70, align 8
  %var.load72 = load i64, ptr %"var.last_sep'", align 8
  %rel.start = add i64 %s.read.len69, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len69
  %final.start = select i1 %start.gt.len, i64 %s.read.len69, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load72, 0
  %rel.end = add i64 %s.read.len69, %var.load72
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load72
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len69
  %final.end = select i1 %end.gt.len, i64 %s.read.len69, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data71, i64 %final.start
  %arena.cur73 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit65

choice.exit65:                                    ; preds = %choice.else64, %choice.then63
  %choice.res = phi ptr [ @str.0.struct, %choice.then63 ], [ %str.view, %choice.else64 ]
  br label %choice.exit60
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::win_strip_trailing_sep"(ptr %var.load4)
  %arena.cur5 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load6 = load ptr, ptr %var.clean, align 8
  %call.res7 = call i64 @"path::win_root_len"(ptr %var.load6)
  store i64 %call.res7, ptr %var.rlen, align 8
  %var.load8 = load ptr, ptr %var.clean, align 8
  %str.len.query9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag12 = lshr i64 %str.len.query10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.exit
  store i64 %str.len.query11, ptr %var.clen, align 8
  %var.load23 = load i64, ptr %var.rlen, align 8
  %cmptmp24 = icmp sgt i64 %var.load23, 0
  br i1 %cmptmp24, label %and.58.then, label %and.58.else

tag.gen_check15:                                  ; preds = %choice.exit
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok19 = icmp eq i64 %str.tag12, %active.gen18
  br i1 %tag.fast.ok19, label %str_ok13, label %tag.slow_check16

tag.slow_check16:                                 ; preds = %tag.gen_check15
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag12)
  br i1 %tag.valid21, label %str_ok13, label %tag.stale17

tag.stale17:                                      ; preds = %tag.slow_check16
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %str_ok13

and.58.then:                                      ; preds = %str_ok13
  %var.load25 = load i64, ptr %var.clen, align 8
  %var.load26 = load i64, ptr %var.rlen, align 8
  %cmptmp27 = icmp eq i64 %var.load25, %var.load26
  br label %and.58.exit

and.58.else:                                      ; preds = %str_ok13
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %and.58.then
  %and.58.phi = phi i1 [ %cmptmp27, %and.58.then ], [ %cmptmp24, %and.58.else ]
  br i1 %and.58.phi, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %and.58.exit
  %var.load30 = load ptr, ptr %var.clean, align 8
  %ret.pack31 = load { i64, ptr }, ptr %var.load30, align 8
  ret { i64, ptr } %ret.pack31

choice.exit29:                                    ; preds = %ret.dead32, %and.58.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load33 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

ret.dead32:                                       ; No predecessors!
  br label %choice.exit29

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit29
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load33
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load34 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load34, 1
  %var.load35 = load i64, ptr %var.i, align 8
  %subtmp36 = sub i64 %subtmp, %var.load35
  store i64 %subtmp36, ptr %var.idx, align 8
  %var.load37 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data, align 8
  %var.load41 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load41, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load49 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp50 = icmp slt i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else

idx_big_check:                                    ; preds = %loop.body.59
  %idx.big = icmp sge i64 %var.load41, %s.read.len39
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead42, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data40, i64 %var.load41
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res43, label %and.60.then, label %and.60.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.59
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %idx_ok

and.60.then:                                      ; preds = %idx_ok
  %var.load44 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp45 = icmp slt i64 %var.load44, 0
  br label %and.60.exit

and.60.else:                                      ; preds = %idx_ok
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %and.60.then
  %and.60.phi = phi i1 [ %cmptmp45, %and.60.then ], [ %call.res43, %and.60.else ]
  br i1 %and.60.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.60.exit
  %var.load48 = load i64, ptr %var.idx, align 8
  store i64 %var.load48, ptr %"var.last_sep'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.60.exit
  br label %loop.latch.59

choice.then51:                                    ; preds = %loop.exit.59
  %var.load53 = load i64, ptr %var.rlen, align 8
  %cmptmp54 = icmp eq i64 %var.load53, 2
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

choice.else:                                      ; preds = %loop.exit.59
  %var.load65 = load i64, ptr %"var.last_sep'", align 8
  %var.load66 = load i64, ptr %var.rlen, align 8
  %cmptmp67 = icmp slt i64 %var.load65, %var.load66
  br i1 %cmptmp67, label %choice.then68, label %choice.else69

choice.exit52:                                    ; preds = %choice.exit70, %choice.exit57
  %choice.res127 = phi ptr [ %choice.res, %choice.exit57 ], [ %choice.res126, %choice.exit70 ]
  %ret.pack128 = load { i64, ptr }, ptr %choice.res127, align 8
  ret { i64, ptr } %ret.pack128

choice.then55:                                    ; preds = %choice.then51
  %var.load58 = load ptr, ptr %var.clean, align 8
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %rel.start = add i64 %s.read.len61, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len61
  %final.start = select i1 %start.gt.len, i64 %s.read.len61, i64 %c.start.0
  %rel.end = add i64 %s.read.len61, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len61
  %final.end = select i1 %end.gt.len, i64 %s.read.len61, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data63, i64 %final.start
  %arena.cur64 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit57

choice.else56:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %choice.then55
  %choice.res = phi ptr [ %str.view, %choice.then55 ], [ @str.5.struct, %choice.else56 ]
  br label %choice.exit52

choice.then68:                                    ; preds = %choice.else
  %var.load71 = load ptr, ptr %var.clean, align 8
  %s.read.len72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %s.read.len73 = load i64, ptr %s.read.len72, align 8
  %s.read.len74 = and i64 %s.read.len73, 281474976710655
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.rlen, align 8
  %rel.start78 = add i64 %s.read.len74, 0
  %norm.start79 = select i1 false, i64 %rel.start78, i64 0
  %start.lt.080 = icmp slt i64 %norm.start79, 0
  %c.start.081 = select i1 %start.lt.080, i64 0, i64 %norm.start79
  %start.gt.len82 = icmp sgt i64 %c.start.081, %s.read.len74
  %final.start83 = select i1 %start.gt.len82, i64 %s.read.len74, i64 %c.start.081
  %end.is_neg = icmp slt i64 %var.load77, 0
  %rel.end84 = add i64 %s.read.len74, %var.load77
  %norm.end85 = select i1 %end.is_neg, i64 %rel.end84, i64 %var.load77
  %end.lt.086 = icmp slt i64 %norm.end85, 0
  %c.end.087 = select i1 %end.lt.086, i64 0, i64 %norm.end85
  %end.gt.len88 = icmp sgt i64 %c.end.087, %s.read.len74
  %final.end89 = select i1 %end.gt.len88, i64 %s.read.len74, i64 %c.end.087
  %view.empty90 = icmp sle i64 %final.end89, %final.start83
  %view.len.sub91 = sub i64 %final.end89, %final.start83
  %view.len92 = select i1 %view.empty90, i64 0, i64 %view.len.sub91
  %view.data93 = getelementptr i8, ptr %s.read.data76, i64 %final.start83
  %arena.cur94 = call ptr @dva_arena_current()
  %str.view95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %str.view95, i32 0, i32 0
  store i64 %view.len92, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %str.view95, i32 0, i32 1
  store ptr %view.data93, ptr %str.build.data.gep97, align 8
  br label %choice.exit70

choice.else69:                                    ; preds = %choice.else
  %var.load98 = load ptr, ptr %var.clean, align 8
  %s.read.len99 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %s.read.len100 = load i64, ptr %s.read.len99, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %s.read.data102 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %s.read.data103 = load ptr, ptr %s.read.data102, align 8
  %var.load104 = load i64, ptr %"var.last_sep'", align 8
  %rel.start105 = add i64 %s.read.len101, 0
  %norm.start106 = select i1 false, i64 %rel.start105, i64 0
  %start.lt.0107 = icmp slt i64 %norm.start106, 0
  %c.start.0108 = select i1 %start.lt.0107, i64 0, i64 %norm.start106
  %start.gt.len109 = icmp sgt i64 %c.start.0108, %s.read.len101
  %final.start110 = select i1 %start.gt.len109, i64 %s.read.len101, i64 %c.start.0108
  %end.is_neg111 = icmp slt i64 %var.load104, 0
  %rel.end112 = add i64 %s.read.len101, %var.load104
  %norm.end113 = select i1 %end.is_neg111, i64 %rel.end112, i64 %var.load104
  %end.lt.0114 = icmp slt i64 %norm.end113, 0
  %c.end.0115 = select i1 %end.lt.0114, i64 0, i64 %norm.end113
  %end.gt.len116 = icmp sgt i64 %c.end.0115, %s.read.len101
  %final.end117 = select i1 %end.gt.len116, i64 %s.read.len101, i64 %c.end.0115
  %view.empty118 = icmp sle i64 %final.end117, %final.start110
  %view.len.sub119 = sub i64 %final.end117, %final.start110
  %view.len120 = select i1 %view.empty118, i64 0, i64 %view.len.sub119
  %view.data121 = getelementptr i8, ptr %s.read.data103, i64 %final.start110
  %arena.cur122 = call ptr @dva_arena_current()
  %str.view123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 16)
  %str.build.len.gep124 = getelementptr inbounds { i64, ptr }, ptr %str.view123, i32 0, i32 0
  store i64 %view.len120, ptr %str.build.len.gep124, align 8
  %str.build.data.gep125 = getelementptr inbounds { i64, ptr }, ptr %str.view123, i32 0, i32 1
  store ptr %view.data121, ptr %str.build.data.gep125, align 8
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else69, %choice.then68
  %choice.res126 = phi ptr [ %str.view95, %choice.then68 ], [ %str.view123, %choice.else69 ]
  br label %choice.exit52
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data6 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data6, ptr %eq.rhs.data, i64 %eq.lhs.len3)
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
  %var.load7 = load ptr, ptr %var.par, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.6.struct, %choice.then ], [ %var.load7, %choice.else ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::posix_strip_trailing_sep"(ptr %var.load4)
  %arena.cur5 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load6 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.lhs.len7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  br i1 %tag.immortal11, label %str_ok10, label %tag.gen_check12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok10:                                         ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len20 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check12:                                  ; preds = %choice.exit
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %str.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %str_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag9)
  br i1 %tag.valid18, label %str_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then22, label %choice.exit23

choice.then22:                                    ; preds = %str.eq.merge
  %ret.pack24 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack24

choice.exit23:                                    ; preds = %ret.dead25, %str.eq.merge
  %var.load26 = load ptr, ptr %var.clean, align 8
  %str.len.query27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %str.len.query28 = load i64, ptr %str.len.query27, align 8
  %str.len.query29 = and i64 %str.len.query28, 281474976710655
  %str.tag30 = lshr i64 %str.len.query28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  br i1 %tag.immortal32, label %str_ok31, label %tag.gen_check33

ret.dead25:                                       ; No predecessors!
  br label %choice.exit23

str_ok31:                                         ; preds = %abort.dead40, %tag.slow_check34, %tag.gen_check33, %choice.exit23
  store i64 %str.len.query29, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load41 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

tag.gen_check33:                                  ; preds = %choice.exit23
  %active.gen36 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok37 = icmp eq i64 %str.tag30, %active.gen36
  br i1 %tag.fast.ok37, label %str_ok31, label %tag.slow_check34

tag.slow_check34:                                 ; preds = %tag.gen_check33
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag30)
  br i1 %tag.valid39, label %str_ok31, label %tag.stale35

tag.stale35:                                      ; preds = %tag.slow_check34
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %str_ok31

loop.header.61:                                   ; preds = %loop.latch.61, %str_ok31
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load41
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load42 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load42, 1
  %var.load43 = load i64, ptr %var.i, align 8
  %subtmp44 = sub i64 %subtmp, %var.load43
  store i64 %subtmp44, ptr %var.idx, align 8
  %var.load45 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data, align 8
  %var.load49 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load49, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit55
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  %var.load57 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp58 = icmp slt i64 %var.load57, 0
  br i1 %cmptmp58, label %choice.then59, label %choice.else

idx_big_check:                                    ; preds = %loop.body.61
  %idx.big = icmp sge i64 %var.load49, %s.read.len47
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead50, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data48, i64 %var.load49
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp51 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp51, label %and.62.then, label %and.62.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.61
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok

and.62.then:                                      ; preds = %idx_ok
  %var.load52 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp53 = icmp slt i64 %var.load52, 0
  br label %and.62.exit

and.62.else:                                      ; preds = %idx_ok
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %and.62.then
  %and.62.phi = phi i1 [ %cmptmp53, %and.62.then ], [ %cmptmp51, %and.62.else ]
  br i1 %and.62.phi, label %choice.then54, label %choice.exit55

choice.then54:                                    ; preds = %and.62.exit
  %var.load56 = load i64, ptr %var.idx, align 8
  store i64 %var.load56, ptr %"var.last_sep'", align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.then54, %and.62.exit
  br label %loop.latch.61

choice.then59:                                    ; preds = %loop.exit.61
  %var.load61 = load ptr, ptr %var.clean, align 8
  br label %choice.exit60

choice.else:                                      ; preds = %loop.exit.61
  %var.load62 = load ptr, ptr %var.clean, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load68, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len65, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len65
  %final.start = select i1 %start.gt.len, i64 %s.read.len65, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len65, 0
  %rel.end = add i64 %s.read.len65, %s.read.len65
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len65
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len65
  %final.end = select i1 %end.gt.len, i64 %s.read.len65, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data67, i64 %final.start
  %arena.cur69 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit60

choice.exit60:                                    ; preds = %choice.else, %choice.then59
  %choice.res = phi ptr [ %var.load61, %choice.then59 ], [ %str.view, %choice.else ]
  %ret.pack70 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack70
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::win_strip_trailing_sep"(ptr %var.load4)
  %arena.cur5 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean, align 8
  %var.load6 = load ptr, ptr %var.clean, align 8
  %call.res7 = call i64 @"path::win_root_len"(ptr %var.load6)
  store i64 %call.res7, ptr %var.rlen, align 8
  %var.load8 = load ptr, ptr %var.clean, align 8
  %str.len.query9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag12 = lshr i64 %str.len.query10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.exit
  store i64 %str.len.query11, ptr %var.clen, align 8
  %var.load23 = load i64, ptr %var.rlen, align 8
  %cmptmp24 = icmp sgt i64 %var.load23, 0
  br i1 %cmptmp24, label %and.63.then, label %and.63.else

tag.gen_check15:                                  ; preds = %choice.exit
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok19 = icmp eq i64 %str.tag12, %active.gen18
  br i1 %tag.fast.ok19, label %str_ok13, label %tag.slow_check16

tag.slow_check16:                                 ; preds = %tag.gen_check15
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag12)
  br i1 %tag.valid21, label %str_ok13, label %tag.stale17

tag.stale17:                                      ; preds = %tag.slow_check16
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %str_ok13

and.63.then:                                      ; preds = %str_ok13
  %var.load25 = load i64, ptr %var.clen, align 8
  %var.load26 = load i64, ptr %var.rlen, align 8
  %cmptmp27 = icmp eq i64 %var.load25, %var.load26
  br label %and.63.exit

and.63.else:                                      ; preds = %str_ok13
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %and.63.then
  %and.63.phi = phi i1 [ %cmptmp27, %and.63.then ], [ %cmptmp24, %and.63.else ]
  br i1 %and.63.phi, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %and.63.exit
  %var.load30 = load ptr, ptr %var.clean, align 8
  %ret.pack31 = load { i64, ptr }, ptr %var.load30, align 8
  ret { i64, ptr } %ret.pack31

choice.exit29:                                    ; preds = %ret.dead32, %and.63.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load33 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

ret.dead32:                                       ; No predecessors!
  br label %choice.exit29

loop.header.64:                                   ; preds = %loop.latch.64, %choice.exit29
  %counter.load = load i64, ptr %loop.idx.64, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load33
  br i1 %loop.cond, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load34 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load34, 1
  %var.load35 = load i64, ptr %var.i, align 8
  %subtmp36 = sub i64 %subtmp, %var.load35
  store i64 %subtmp36, ptr %var.idx, align 8
  %var.load37 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data, align 8
  %var.load41 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load41, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load49 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp50 = icmp slt i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else

idx_big_check:                                    ; preds = %loop.body.64
  %idx.big = icmp sge i64 %var.load41, %s.read.len39
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead42, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data40, i64 %var.load41
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res43, label %and.65.then, label %and.65.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.64
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %idx_ok

and.65.then:                                      ; preds = %idx_ok
  %var.load44 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp45 = icmp slt i64 %var.load44, 0
  br label %and.65.exit

and.65.else:                                      ; preds = %idx_ok
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %and.65.then
  %and.65.phi = phi i1 [ %cmptmp45, %and.65.then ], [ %call.res43, %and.65.else ]
  br i1 %and.65.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.65.exit
  %var.load48 = load i64, ptr %var.idx, align 8
  store i64 %var.load48, ptr %"var.last_sep'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.65.exit
  br label %loop.latch.64

choice.then51:                                    ; preds = %loop.exit.64
  %var.load53 = load i64, ptr %var.rlen, align 8
  %cmptmp54 = icmp eq i64 %var.load53, 2
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

choice.else:                                      ; preds = %loop.exit.64
  %var.load58 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load58, 1
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else, %choice.exit57
  %choice.res59 = phi i64 [ %choice.res, %choice.exit57 ], [ %addtmp, %choice.else ]
  store i64 %choice.res59, ptr %var.start, align 8
  %var.load60 = load i64, ptr %var.start, align 8
  %var.load61 = load i64, ptr %var.clen, align 8
  %cmptmp62 = icmp sge i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.else64

choice.then55:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.else56:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %choice.then55
  %choice.res = phi i64 [ 2, %choice.then55 ], [ 0, %choice.else56 ]
  br label %choice.exit52

choice.then63:                                    ; preds = %choice.exit52
  br label %choice.exit65

choice.else64:                                    ; preds = %choice.exit52
  %var.load66 = load ptr, ptr %var.clean, align 8
  %s.read.len67 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %s.read.len68 = load i64, ptr %s.read.len67, align 8
  %s.read.len69 = and i64 %s.read.len68, 281474976710655
  %s.read.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %s.read.data71 = load ptr, ptr %s.read.data70, align 8
  %var.load72 = load i64, ptr %var.start, align 8
  %start.is_neg = icmp slt i64 %var.load72, 0
  %rel.start = add i64 %s.read.len69, %var.load72
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load72
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len69
  %final.start = select i1 %start.gt.len, i64 %s.read.len69, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len69, 0
  %rel.end = add i64 %s.read.len69, %s.read.len69
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len69
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len69
  %final.end = select i1 %end.gt.len, i64 %s.read.len69, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data71, i64 %final.start
  %arena.cur73 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit65

choice.exit65:                                    ; preds = %choice.else64, %choice.then63
  %choice.res74 = phi ptr [ @str.6.struct, %choice.then63 ], [ %str.view, %choice.else64 ]
  %ret.pack75 = load { i64, ptr }, ptr %choice.res74, align 8
  ret { i64, ptr } %ret.pack75
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 -1, ptr %"var.dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

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
  %idx.neg = icmp slt i64 %var.load11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load18 = load i64, ptr %"var.dot'", align 8
  ret i64 %var.load18

idx_big_check:                                    ; preds = %loop.body.66
  %idx.big = icmp sge i64 %var.load11, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.67.then, label %and.67.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.66
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok

and.67.then:                                      ; preds = %idx_ok
  %var.load13 = load i64, ptr %"var.dot'", align 8
  %cmptmp14 = icmp slt i64 %var.load13, 0
  br label %and.67.exit

and.67.else:                                      ; preds = %idx_ok
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %and.67.then
  %and.67.phi = phi i1 [ %cmptmp14, %and.67.then ], [ %cmptmp, %and.67.else ]
  br i1 %and.67.phi, label %and.68.then, label %and.68.else

and.68.then:                                      ; preds = %and.67.exit
  %var.load15 = load i64, ptr %var.idx, align 8
  %cmptmp16 = icmp sgt i64 %var.load15, 0
  br label %and.68.exit

and.68.else:                                      ; preds = %and.67.exit
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %and.68.then
  %and.68.phi = phi i1 [ %cmptmp16, %and.68.then ], [ %and.67.phi, %and.68.else ]
  br i1 %and.68.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.68.exit
  %var.load17 = load i64, ptr %var.idx, align 8
  store i64 %var.load17, ptr %"var.dot'", align 8
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
  %arena.cur = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

or.69.exit:                                       ; preds = %str_ok, %or.69.then
  %or.69.phi = phi i1 [ %cmptmp, %or.69.then ], [ %cmptmp9, %str_ok ]
  br i1 %or.69.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %or.69.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp9 = icmp eq i64 %var.load4, %subtmp
  br label %or.69.exit

tag.gen_check:                                    ; preds = %or.69.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %or.69.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.69.exit
  %var.load10 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.dot, align 8
  %start.is_neg = icmp slt i64 %var.load14, 0
  %rel.start = add i64 %s.read.len12, %var.load14
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load14
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len12, 0
  %rel.end = add i64 %s.read.len12, %s.read.len12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %arena.cur15 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
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
  %arena.cur = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

or.70.exit:                                       ; preds = %str_ok, %or.70.then
  %or.70.phi = phi i1 [ %cmptmp, %or.70.then ], [ %cmptmp9, %str_ok ]
  br i1 %or.70.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %or.70.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp9 = icmp sge i64 %var.load4, %subtmp
  br label %or.70.exit

tag.gen_check:                                    ; preds = %or.70.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %or.70.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.70.exit
  %var.load10 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.dot, align 8
  %addtmp = add i64 %var.load14, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len12, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len12, 0
  %rel.end = add i64 %s.read.len12, %s.read.len12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %arena.cur15 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

or.71.exit:                                       ; preds = %str_ok, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp, %or.71.then ], [ %cmptmp9, %str_ok ]
  br i1 %or.71.phi, label %choice.then, label %choice.else

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %or.71.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp9 = icmp eq i64 %var.load4, %subtmp
  br label %or.71.exit

tag.gen_check:                                    ; preds = %or.71.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %or.71.exit
  %var.load10 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %or.71.exit
  %var.load11 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.dot, align 8
  %rel.start = add i64 %s.read.len13, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load15, 0
  %rel.end = add i64 %s.read.len13, %var.load15
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load15
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur16 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load10, %choice.then ], [ %str.view, %choice.else ]
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call { i64, ptr } @"path::stem"(ptr %var.load1)
  %arena.cur3 = call ptr @dva_arena_current()
  %ret.ub.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc4, align 8
  store ptr %ret.ub.alloc4, ptr %var.st, align 8
  %var.load5 = load ptr, ptr %var.new_ext, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load9 = load ptr, ptr %var.new_ext, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.exit:                                      ; preds = %choice.exit17, %choice.then
  %choice.res46 = phi ptr [ @str.6.struct, %choice.then ], [ %choice.res, %choice.exit17 ]
  store ptr %choice.res46, ptr %var.suf, align 8
  %var.load47 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %eq.lhs.len48 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len49 = and i64 %eq.lhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.lhs.len48, 48
  %tag.immortal52 = icmp eq i64 %str.tag50, 0
  br i1 %tag.immortal52, label %str_ok51, label %tag.gen_check53

idx_big_check:                                    ; preds = %choice.else
  %idx.big = icmp sge i64 0, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp14, label %choice.then15, label %choice.else16

idx_oob:                                          ; preds = %idx_big_check, %choice.else
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %idx_ok
  %var.load18 = load ptr, ptr %var.new_ext, align 8
  br label %choice.exit17

choice.else16:                                    ; preds = %idx_ok
  %var.load19 = load ptr, ptr %var.new_ext, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs20 = and i64 %concat.lhs, 281474976710655
  %concat.lhs21 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %concat.rhs22 = load i64, ptr %concat.rhs, align 8
  %concat.rhs23 = and i64 %concat.rhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.rhs22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  br i1 %tag.immortal26, label %str_ok25, label %tag.gen_check27

choice.exit17:                                    ; preds = %concat.tot.len41, %choice.then15
  %choice.res = phi ptr [ %var.load18, %choice.then15 ], [ %concat.str, %concat.tot.len41 ]
  br label %choice.exit

str_ok25:                                         ; preds = %abort.dead34, %tag.slow_check28, %tag.gen_check27, %choice.else16
  %concat.rhs35 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %concat.rhs36 = load ptr, ptr %concat.rhs35, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs20, i64 %concat.rhs23)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len37

tag.gen_check27:                                  ; preds = %choice.else16
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok31 = icmp eq i64 %str.tag24, %active.gen30
  br i1 %tag.fast.ok31, label %str_ok25, label %tag.slow_check28

tag.slow_check28:                                 ; preds = %tag.gen_check27
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag24)
  br i1 %tag.valid33, label %str_ok25, label %tag.stale29

tag.stale29:                                      ; preds = %tag.slow_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %str_ok25

concat.sum.len37:                                 ; preds = %abort.dead38, %str_ok25
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort:                               ; preds = %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %concat.sum.len37

concat.tot.len41:                                 ; preds = %abort.dead43, %concat.sum.len37
  %arena.cur44 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs21, i64 %concat.lhs20, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs36, i64 %concat.rhs23, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur45 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit17

str_overflow_abort42:                             ; preds = %concat.sum.len37
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41

str_ok51:                                         ; preds = %abort.dead60, %tag.slow_check54, %tag.gen_check53, %choice.exit
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len49, %eq.rhs.len61
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check53:                                  ; preds = %choice.exit
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok57 = icmp eq i64 %str.tag50, %active.gen56
  br i1 %tag.fast.ok57, label %str_ok51, label %tag.slow_check54

tag.slow_check54:                                 ; preds = %tag.gen_check53
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag50)
  br i1 %tag.valid59, label %str_ok51, label %tag.stale55

tag.stale55:                                      ; preds = %tag.slow_check54
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %str_ok51

str.eq.then:                                      ; preds = %str_ok51
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data, i64 %eq.lhs.len49)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok51
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then63, label %choice.else64

choice.then63:                                    ; preds = %str.eq.merge
  %var.load66 = load ptr, ptr %var.st, align 8
  %var.load67 = load ptr, ptr %var.suf, align 8
  %concat.lhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %concat.lhs69 = load i64, ptr %concat.lhs68, align 8
  %concat.lhs70 = and i64 %concat.lhs69, 281474976710655
  %str.tag71 = lshr i64 %concat.lhs69, 48
  %tag.immortal73 = icmp eq i64 %str.tag71, 0
  br i1 %tag.immortal73, label %str_ok72, label %tag.gen_check74

choice.else64:                                    ; preds = %str.eq.merge
  %var.load120 = load ptr, ptr %var.par, align 8
  %var.load121 = load ptr, ptr %var.st, align 8
  %var.load122 = load ptr, ptr %var.suf, align 8
  %concat.lhs123 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 0
  %concat.lhs124 = load i64, ptr %concat.lhs123, align 8
  %concat.lhs125 = and i64 %concat.lhs124, 281474976710655
  %str.tag126 = lshr i64 %concat.lhs124, 48
  %tag.immortal128 = icmp eq i64 %str.tag126, 0
  br i1 %tag.immortal128, label %str_ok127, label %tag.gen_check129

choice.exit65:                                    ; preds = %concat.tot.len164, %concat.tot.len109
  %choice.res178 = phi ptr [ %concat.str117, %concat.tot.len109 ], [ %ret.ub.alloc177, %concat.tot.len164 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res178, align 8
  ret { i64, ptr } %ret.pack

str_ok72:                                         ; preds = %abort.dead81, %tag.slow_check75, %tag.gen_check74, %choice.then63
  %concat.lhs82 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %concat.lhs83 = load ptr, ptr %concat.lhs82, align 8
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %concat.rhs85 = load i64, ptr %concat.rhs84, align 8
  %concat.rhs86 = and i64 %concat.rhs85, 281474976710655
  %str.tag87 = lshr i64 %concat.rhs85, 48
  %tag.immortal89 = icmp eq i64 %str.tag87, 0
  br i1 %tag.immortal89, label %str_ok88, label %tag.gen_check90

tag.gen_check74:                                  ; preds = %choice.then63
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

str_ok88:                                         ; preds = %abort.dead97, %tag.slow_check91, %tag.gen_check90, %str_ok72
  %concat.rhs98 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %concat.rhs99 = load ptr, ptr %concat.rhs98, align 8
  %concat.sum.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs70, i64 %concat.rhs86)
  %sum101 = extractvalue { i64, i1 } %concat.sum.len100, 0
  %ovf102 = extractvalue { i64, i1 } %concat.sum.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %concat.sum.len103

tag.gen_check90:                                  ; preds = %str_ok72
  %active.gen93 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok94 = icmp eq i64 %str.tag87, %active.gen93
  br i1 %tag.fast.ok94, label %str_ok88, label %tag.slow_check91

tag.slow_check91:                                 ; preds = %tag.gen_check90
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %str.tag87)
  br i1 %tag.valid96, label %str_ok88, label %tag.stale92

tag.stale92:                                      ; preds = %tag.slow_check91
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %str_ok88

concat.sum.len103:                                ; preds = %abort.dead105, %str_ok88
  %concat.tot.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum101, i64 1)
  %sum107 = extractvalue { i64, i1 } %concat.tot.len106, 0
  %ovf108 = extractvalue { i64, i1 } %concat.tot.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %concat.tot.len109

str_overflow_abort104:                            ; preds = %str_ok88
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %concat.sum.len103

concat.tot.len109:                                ; preds = %abort.dead111, %concat.sum.len103
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum107)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %concat.lhs83, i64 %concat.lhs70, i1 false)
  %concat.mid114 = getelementptr i8, ptr %concat.buf113, i64 %concat.lhs70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid114, ptr align 1 %concat.rhs99, i64 %concat.rhs86, i1 false)
  %concat.nul115 = getelementptr i8, ptr %concat.buf113, i64 %sum101
  store i8 0, ptr %concat.nul115, align 1
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.str117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum101, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep119, align 8
  br label %choice.exit65

str_overflow_abort110:                            ; preds = %concat.sum.len103
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead111:                                    ; No predecessors!
  br label %concat.tot.len109

str_ok127:                                        ; preds = %abort.dead136, %tag.slow_check130, %tag.gen_check129, %choice.else64
  %concat.lhs137 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 1
  %concat.lhs138 = load ptr, ptr %concat.lhs137, align 8
  %concat.rhs139 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %concat.rhs140 = load i64, ptr %concat.rhs139, align 8
  %concat.rhs141 = and i64 %concat.rhs140, 281474976710655
  %str.tag142 = lshr i64 %concat.rhs140, 48
  %tag.immortal144 = icmp eq i64 %str.tag142, 0
  br i1 %tag.immortal144, label %str_ok143, label %tag.gen_check145

tag.gen_check129:                                 ; preds = %choice.else64
  %active.gen132 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok133 = icmp eq i64 %str.tag126, %active.gen132
  br i1 %tag.fast.ok133, label %str_ok127, label %tag.slow_check130

tag.slow_check130:                                ; preds = %tag.gen_check129
  %arena.cur134 = call ptr @dva_arena_current()
  %tag.valid135 = call i1 @dva_arena_validate_tag(ptr %arena.cur134, i64 %str.tag126)
  br i1 %tag.valid135, label %str_ok127, label %tag.stale131

tag.stale131:                                     ; preds = %tag.slow_check130
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead136:                                    ; No predecessors!
  br label %str_ok127

str_ok143:                                        ; preds = %abort.dead152, %tag.slow_check146, %tag.gen_check145, %str_ok127
  %concat.rhs153 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 1
  %concat.rhs154 = load ptr, ptr %concat.rhs153, align 8
  %concat.sum.len155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs125, i64 %concat.rhs141)
  %sum156 = extractvalue { i64, i1 } %concat.sum.len155, 0
  %ovf157 = extractvalue { i64, i1 } %concat.sum.len155, 1
  br i1 %ovf157, label %str_overflow_abort159, label %concat.sum.len158

tag.gen_check145:                                 ; preds = %str_ok127
  %active.gen148 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok149 = icmp eq i64 %str.tag142, %active.gen148
  br i1 %tag.fast.ok149, label %str_ok143, label %tag.slow_check146

tag.slow_check146:                                ; preds = %tag.gen_check145
  %arena.cur150 = call ptr @dva_arena_current()
  %tag.valid151 = call i1 @dva_arena_validate_tag(ptr %arena.cur150, i64 %str.tag142)
  br i1 %tag.valid151, label %str_ok143, label %tag.stale147

tag.stale147:                                     ; preds = %tag.slow_check146
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead152:                                    ; No predecessors!
  br label %str_ok143

concat.sum.len158:                                ; preds = %abort.dead160, %str_ok143
  %concat.tot.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum156, i64 1)
  %sum162 = extractvalue { i64, i1 } %concat.tot.len161, 0
  %ovf163 = extractvalue { i64, i1 } %concat.tot.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %concat.tot.len164

str_overflow_abort159:                            ; preds = %str_ok143
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead160:                                    ; No predecessors!
  br label %concat.sum.len158

concat.tot.len164:                                ; preds = %abort.dead166, %concat.sum.len158
  %arena.cur167 = call ptr @dva_arena_current()
  %concat.buf168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf168, ptr align 1 %concat.lhs138, i64 %concat.lhs125, i1 false)
  %concat.mid169 = getelementptr i8, ptr %concat.buf168, i64 %concat.lhs125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid169, ptr align 1 %concat.rhs154, i64 %concat.rhs141, i1 false)
  %concat.nul170 = getelementptr i8, ptr %concat.buf168, i64 %sum156
  store i8 0, ptr %concat.nul170, align 1
  %arena.cur171 = call ptr @dva_arena_current()
  %concat.str172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 16)
  %str.build.len.gep173 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 0
  store i64 %sum156, ptr %str.build.len.gep173, align 8
  %str.build.data.gep174 = getelementptr inbounds { i64, ptr }, ptr %concat.str172, i32 0, i32 1
  store ptr %concat.buf168, ptr %str.build.data.gep174, align 8
  %call.res175 = call { i64, ptr } @"path::join"(ptr %var.load120, ptr %concat.str172)
  %arena.cur176 = call ptr @dva_arena_current()
  %ret.ub.alloc177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 16)
  store { i64, ptr } %call.res175, ptr %ret.ub.alloc177, align 8
  br label %choice.exit65

str_overflow_abort165:                            ; preds = %concat.sum.len158
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead166:                                    ; No predecessors!
  br label %concat.tot.len164
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
  store ptr %a.new, ptr %var.out, align 8
  %arena.cur2 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %abort.dead, %entry
  %arena.cur4 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len3

str_ok:                                           ; preds = %abort.dead8, %tag.slow_check, %tag.gen_check, %b.buf.len3
  store i64 0, ptr %loop.idx.72, align 8
  br label %loop.header.72

tag.gen_check:                                    ; preds = %b.buf.len3
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
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
  %var.load9 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.72:                                 ; preds = %loop.header.72
  br label %loop.exit.72

loop.latch.72:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.72, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.72, align 8
  br label %loop.header.72

loop.exit.72:                                     ; preds = %loop.exit.nat.72
  %var.load53 = load ptr, ptr %var.cur, align 8
  %b.len54 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 0
  %b.len55 = load i64, ptr %b.len54, align 8
  %cmptmp56 = icmp sgt i64 %b.len55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

idx_big_check:                                    ; preds = %loop.body.72
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead14, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load15 = load i64, ptr %var.c, align 8
  %call.res = call i1 @"path::is_sep"(i64 %var.load15)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.72
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.cur, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sgt i64 %b.len17, 0
  br i1 %cmptmp, label %choice.then18, label %choice.exit19

choice.else:                                      ; preds = %idx_ok
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load38 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load38, 0
  %b.b.le255 = icmp sle i64 %var.load38, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.exit:                                      ; preds = %b.push_done, %choice.exit19
  br label %loop.latch.72

choice.then18:                                    ; preds = %choice.then
  %var.load20 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %b.freeze.len21 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %b.freeze.data22 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit19:                                    ; preds = %a.store, %choice.then
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then18
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data22, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data22, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data22, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len21, 1
  %arena.cur23 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data22, i64 %b.freeze.len21, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len21
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then18
  %b.freeze.data24 = phi ptr [ %b.freeze.data22, %choice.then18 ], [ %b.freeze.data22, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur25 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len21, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data24, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %b.freeze.done
  %arena.cur26 = call ptr @dva_arena_current()
  %a.create27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %arena.cur28 = call ptr @dva_arena_current()
  %a.buf29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 128)
  %a.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 0
  store i64 0, ptr %a.len.gep30, align 8
  %a.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 1
  store ptr %a.buf29, ptr %a.data.gep31, align 8
  %a.cap.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 2
  store i64 16, ptr %a.cap.gep32, align 8
  store ptr %a.create27, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.freeze.done
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len33 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap34 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len33, %a.cap34
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data35 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len36 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data35, i64 %a.cur.len36
  %slot.p2i = ptrtoint ptr %builder.freeze to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len36, 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep37, align 8
  br label %choice.exit19

b.byte_ok:                                        ; preds = %abort.dead39, %choice.else
  %b.byte.i8 = trunc i64 %var.load38 to i8
  %b.len40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len41 = load i64, ptr %b.len40, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data43 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len41, %b.cap42
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.else
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap42, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len46

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len46
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data50 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len51 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data50, i64 %b.cur.len51
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len51, 1
  %b.nul = getelementptr i8, ptr %b.cur.data50, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep52, align 8
  br label %choice.exit

b.new.buf.len46:                                  ; preds = %abort.dead48, %b.grow
  %arena.cur49 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data43, i64 %b.len41, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len41
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort47:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.new.buf.len46

choice.then57:                                    ; preds = %loop.exit.72
  %var.load59 = load ptr, ptr %var.cur, align 8
  %b.freeze.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  %b.freeze.len61 = load i64, ptr %b.freeze.len60, align 8
  %b.freeze.data62 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  %b.freeze.data63 = load ptr, ptr %b.freeze.data62, align 8
  %b.freeze.arena64 = call ptr @dva_arena_current()
  %b.freeze.nc.gep65 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena64, i32 0, i32 1
  %b.freeze.nc66 = load i64, ptr %b.freeze.nc.gep65, align 8
  %b.freeze.has.chunk67 = icmp sgt i64 %b.freeze.nc66, 0
  br i1 %b.freeze.has.chunk67, label %b.freeze.check68, label %b.freeze.done70

choice.exit58:                                    ; preds = %a.store112, %loop.exit.72
  %var.load126 = load ptr, ptr %var.out, align 8
  %a.load127 = load ptr, ptr %var.out, align 8
  %a.null128 = icmp eq ptr %a.load127, null
  br i1 %a.null128, label %a.create129, label %a.after130

b.freeze.check68:                                 ; preds = %choice.then57
  %b.freeze.last.idx71 = sub i64 %b.freeze.nc66, 1
  %b.freeze.chunks.gep72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena64, i32 0, i32 3
  %b.freeze.chunk.slot73 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep72, i64 0, i64 %b.freeze.last.idx71
  %b.freeze.last.chunk74 = load ptr, ptr %b.freeze.chunk.slot73, align 8
  %b.freeze.off.gep75 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena64, i32 0, i32 2
  %b.freeze.off76 = load i64, ptr %b.freeze.off.gep75, align 8
  %b.freeze.bump77 = getelementptr i8, ptr %b.freeze.last.chunk74, i64 %b.freeze.off76
  %b.freeze.cap.gep78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena64, i32 0, i32 0
  %b.freeze.cap79 = load i64, ptr %b.freeze.cap.gep78, align 8
  %b.freeze.chunk.end80 = getelementptr i8, ptr %b.freeze.last.chunk74, i64 %b.freeze.cap79
  %b.freeze.ge.chunk81 = icmp uge ptr %b.freeze.data63, %b.freeze.last.chunk74
  %b.freeze.lt.end82 = icmp ult ptr %b.freeze.data63, %b.freeze.chunk.end80
  %b.freeze.in.chunk83 = and i1 %b.freeze.ge.chunk81, %b.freeze.lt.end82
  %b.freeze.ge.bump84 = icmp uge ptr %b.freeze.data63, %b.freeze.bump77
  %b.freeze.reaped85 = and i1 %b.freeze.in.chunk83, %b.freeze.ge.bump84
  br i1 %b.freeze.reaped85, label %b.freeze.copy69, label %b.freeze.done70

b.freeze.copy69:                                  ; preds = %b.freeze.check68
  %b.freeze.alen86 = add i64 %b.freeze.len61, 1
  %arena.cur87 = call ptr @dva_arena_current()
  %b.freeze.fresh88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %b.freeze.alen86)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh88, ptr align 1 %b.freeze.data63, i64 %b.freeze.len61, i1 false)
  %b.freeze.nul89 = getelementptr i8, ptr %b.freeze.fresh88, i64 %b.freeze.len61
  store i8 0, ptr %b.freeze.nul89, align 1
  br label %b.freeze.done70

b.freeze.done70:                                  ; preds = %b.freeze.copy69, %b.freeze.check68, %choice.then57
  %b.freeze.data90 = phi ptr [ %b.freeze.data63, %choice.then57 ], [ %b.freeze.data63, %b.freeze.check68 ], [ %b.freeze.fresh88, %b.freeze.copy69 ]
  %arena.cur91 = call ptr @dva_arena_current()
  %builder.freeze92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep93 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze92, i32 0, i32 0
  store i64 %b.freeze.len61, ptr %str.build.len.gep93, align 8
  %str.build.data.gep94 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze92, i32 0, i32 1
  store ptr %b.freeze.data90, ptr %str.build.data.gep94, align 8
  %b.freeze.rst.len95 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len95, align 8
  %b.freeze.rst.data96 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data96, align 8
  %b.freeze.rst.cap97 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap97, align 8
  %a.load98 = load ptr, ptr %var.out, align 8
  %a.null99 = icmp eq ptr %a.load98, null
  br i1 %a.null99, label %a.create100, label %a.after101

a.create100:                                      ; preds = %b.freeze.done70
  %arena.cur102 = call ptr @dva_arena_current()
  %a.create103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 24)
  %arena.cur104 = call ptr @dva_arena_current()
  %a.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 128)
  %a.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 0
  store i64 0, ptr %a.len.gep106, align 8
  %a.data.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 1
  store ptr %a.buf105, ptr %a.data.gep107, align 8
  %a.cap.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 2
  store i64 16, ptr %a.cap.gep108, align 8
  store ptr %a.create103, ptr %var.out, align 8
  br label %a.after101

a.after101:                                       ; preds = %a.create100, %b.freeze.done70
  %a.load2109 = load ptr, ptr %var.out, align 8
  br label %a.check110

a.check110:                                       ; preds = %a.after101
  %a.len113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  %a.len114 = load i64, ptr %a.len113, align 8
  %a.cap115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 2
  %a.cap116 = load i64, ptr %a.cap115, align 8
  %a.needs.grow117 = icmp eq i64 %a.len114, %a.cap116
  br i1 %a.needs.grow117, label %a.grow111, label %a.store112

a.grow111:                                        ; preds = %a.check110
  call void @dva_array_grow(ptr %a.load2109)
  br label %a.store112

a.store112:                                       ; preds = %a.grow111, %a.check110
  %a.cur.data118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 1
  %a.cur.data119 = load ptr, ptr %a.cur.data118, align 8
  %a.cur.len120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  %a.cur.len121 = load i64, ptr %a.cur.len120, align 8
  %a.elem.gep122 = getelementptr i64, ptr %a.cur.data119, i64 %a.cur.len121
  %slot.p2i123 = ptrtoint ptr %builder.freeze92 to i64
  store i64 %slot.p2i123, ptr %a.elem.gep122, align 8
  %a.next.len124 = add i64 %a.cur.len121, 1
  %b.len.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  store i64 %a.next.len124, ptr %b.len.gep125, align 8
  br label %choice.exit58

a.create129:                                      ; preds = %choice.exit58
  %arena.cur131 = call ptr @dva_arena_current()
  %a.create132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 24)
  %arena.cur133 = call ptr @dva_arena_current()
  %a.buf134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 128)
  %a.len.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 0
  store i64 0, ptr %a.len.gep135, align 8
  %a.data.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 1
  store ptr %a.buf134, ptr %a.data.gep136, align 8
  %a.cap.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 2
  store i64 16, ptr %a.cap.gep137, align 8
  store ptr %a.create132, ptr %var.out, align 8
  br label %a.after130

a.after130:                                       ; preds = %a.create129, %choice.exit58
  %a.load2138 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2138
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

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

define { i64, ptr } @"path::posix_normalize"(ptr %0) #0 {
entry:
  %var._562 = alloca ptr, align 8
  %var._559 = alloca ptr, align 8
  %var._446 = alloca i64, align 8
  %var._i445 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._238 = alloca ptr, align 8
  %var._235 = alloca ptr, align 8
  %var._173 = alloca i64, align 8
  %var._i172 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._139 = alloca ptr, align 8
  %var._136 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load3)
  store i1 %call.res, ptr %var.abs, align 1
  %arena.cur4 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len7

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len7:                                       ; preds = %abort.dead8, %choice.exit
  %arena.cur9 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load10 = load ptr, ptr %var.p, align 8
  %str.len.query11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query11, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag14 = lshr i64 %str.len.query12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  br i1 %tag.immortal16, label %str_ok15, label %tag.gen_check17

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %b.buf.len7

str_ok15:                                         ; preds = %abort.dead24, %tag.slow_check18, %tag.gen_check17, %b.buf.len7
  store i64 %str.len.query13, ptr %var.len, align 8
  %var.load25 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load25, 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

tag.gen_check17:                                  ; preds = %b.buf.len7
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok21 = icmp eq i64 %str.tag14, %active.gen20
  br i1 %tag.fast.ok21, label %str_ok15, label %tag.slow_check18

tag.slow_check18:                                 ; preds = %tag.gen_check17
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag14)
  br i1 %tag.valid23, label %str_ok15, label %tag.stale19

tag.stale19:                                      ; preds = %tag.slow_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %str_ok15

loop.header.73:                                   ; preds = %loop.latch.73, %str_ok15
  %counter.load = load i64, ptr %loop.idx.73, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.73, label %loop.exit.nat.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load26 = load i64, ptr %var.i, align 8
  %var.load27 = load i64, ptr %var.len, align 8
  %cmptmp28 = icmp eq i64 %var.load26, %var.load27
  store i1 %cmptmp28, ptr %var.is_end, align 1
  %var.load29 = load i1, ptr %var.is_end, align 1
  br i1 %var.load29, label %choice.then30, label %choice.else

loop.exit.nat.73:                                 ; preds = %loop.header.73
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit42
  %step.val348 = load i64, ptr %loop.step.73, align 8
  %loop.next349 = add i64 %counter.load, %step.val348
  store i64 %loop.next349, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %loop.exit.nat.73
  %var.load350 = load ptr, ptr %var.p, align 8
  %str.len.query351 = getelementptr inbounds { i64, ptr }, ptr %var.load350, i32 0, i32 0
  %str.len.query352 = load i64, ptr %str.len.query351, align 8
  %str.len.query353 = and i64 %str.len.query352, 281474976710655
  %str.tag354 = lshr i64 %str.len.query352, 48
  %tag.immortal356 = icmp eq i64 %str.tag354, 0
  br i1 %tag.immortal356, label %str_ok355, label %tag.gen_check357

choice.then30:                                    ; preds = %loop.body.73
  br label %choice.exit31

choice.else:                                      ; preds = %loop.body.73
  %var.load32 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  %var.load36 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load36, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.exit31:                                    ; preds = %idx_ok, %choice.then30
  %choice.res = phi i32 [ 47, %choice.then30 ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load38 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load38 to i64
  %cmptmp39 = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp39, label %choice.then40, label %choice.else41

idx_big_check:                                    ; preds = %choice.else
  %idx.big = icmp sge i64 %var.load36, %s.read.len34
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead37, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit31

idx_oob:                                          ; preds = %idx_big_check, %choice.else
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok

choice.then40:                                    ; preds = %choice.exit31
  %var.load43 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load43, i32 0, i32 0
  %b.freeze.len44 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load43, i32 0, i32 1
  %b.freeze.data45 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else41:                                    ; preds = %choice.exit31
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load329 = load i32, ptr %var.c, align 4
  %coerce.sext330 = sext i32 %var.load329 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext330, 128
  %br.cmp2 = icmp slt i64 %coerce.sext330, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext330, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len331 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len331, i64 %br.width)
  %sum332 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf333 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf333, label %str_overflow_abort335, label %b.rn.new.len334

choice.exit42:                                    ; preds = %br.done.77, %choice.exit72
  br label %loop.latch.73

b.freeze.check:                                   ; preds = %choice.then40
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data45, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data45, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data45, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len44, 1
  %arena.cur46 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data45, i64 %b.freeze.len44, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len44
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then40
  %b.freeze.data47 = phi ptr [ %b.freeze.data45, %choice.then40 ], [ %b.freeze.data45, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur48 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len44, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data47, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load43, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load43, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load43, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load49 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len51, %eq.rhs.len52
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %eq.lhs.data53 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data53, ptr %eq.rhs.data, i64 %eq.lhs.len51)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %str.eq.merge
  %var.load54 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %eq.lhs.len56 = load i64, ptr %eq.lhs.len55, align 8
  %eq.lhs.len57 = and i64 %eq.lhs.len56, 281474976710655
  %eq.rhs.len58 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len59 = and i64 %eq.rhs.len58, 281474976710655
  %eq.len60 = icmp eq i64 %eq.lhs.len57, %eq.rhs.len59
  br i1 %eq.len60, label %str.eq.then61, label %str.eq.else62

and.74.else:                                      ; preds = %str.eq.merge
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %str.eq.merge63
  %and.74.phi = phi i1 [ %str.neq70, %str.eq.merge63 ], [ %str.neq, %and.74.else ]
  br i1 %and.74.phi, label %choice.then71, label %choice.exit72

str.eq.then61:                                    ; preds = %and.74.then
  %eq.lhs.data64 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %eq.lhs.data65 = load ptr, ptr %eq.lhs.data64, align 8
  %eq.rhs.data66 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp67 = call i32 @memcmp(ptr %eq.lhs.data65, ptr %eq.rhs.data66, i64 %eq.lhs.len57)
  %eq.cmp.zero68 = icmp eq i32 %eq.memcmp67, 0
  br label %str.eq.merge63

str.eq.else62:                                    ; preds = %and.74.then
  br label %str.eq.merge63

str.eq.merge63:                                   ; preds = %str.eq.else62, %str.eq.then61
  %str.eq.result69 = phi i1 [ %eq.cmp.zero68, %str.eq.then61 ], [ false, %str.eq.else62 ]
  %str.neq70 = xor i1 %str.eq.result69, true
  br label %and.74.exit

choice.then71:                                    ; preds = %and.74.exit
  %var.load73 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %eq.lhs.len75 = load i64, ptr %eq.lhs.len74, align 8
  %eq.lhs.len76 = and i64 %eq.lhs.len75, 281474976710655
  %eq.rhs.len77 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len78 = and i64 %eq.rhs.len77, 281474976710655
  %eq.len79 = icmp eq i64 %eq.lhs.len76, %eq.rhs.len78
  br i1 %eq.len79, label %str.eq.then80, label %str.eq.else81

choice.exit72:                                    ; preds = %choice.exit91, %and.74.exit
  br label %choice.exit42

str.eq.then80:                                    ; preds = %choice.then71
  %eq.lhs.data83 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data83, align 8
  %eq.rhs.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp86 = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data85, i64 %eq.lhs.len76)
  %eq.cmp.zero87 = icmp eq i32 %eq.memcmp86, 0
  br label %str.eq.merge82

str.eq.else81:                                    ; preds = %choice.then71
  br label %str.eq.merge82

str.eq.merge82:                                   ; preds = %str.eq.else81, %str.eq.then80
  %str.eq.result88 = phi i1 [ %eq.cmp.zero87, %str.eq.then80 ], [ false, %str.eq.else81 ]
  br i1 %str.eq.result88, label %choice.then89, label %choice.else90

choice.then89:                                    ; preds = %str.eq.merge82
  %var.load92 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else90:                                    ; preds = %str.eq.merge82
  %var.load300 = load ptr, ptr %var.seg, align 8
  %a.load301 = load ptr, ptr %var.segs, align 8
  %a.null302 = icmp eq ptr %a.load301, null
  br i1 %a.null302, label %a.create303, label %a.after304

choice.exit91:                                    ; preds = %a.store315, %choice.exit159
  br label %choice.exit72

a.create:                                         ; preds = %choice.then89
  %arena.cur93 = call ptr @dva_arena_current()
  %a.create94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur95 = call ptr @dva_arena_current()
  %a.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 128)
  %a.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 0
  store i64 0, ptr %a.len.gep97, align 8
  %a.data.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 1
  store ptr %a.buf96, ptr %a.data.gep98, align 8
  %a.cap.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 2
  store i64 16, ptr %a.cap.gep99, align 8
  store ptr %a.create94, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then89
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query100 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query100, ptr %var.n_segs, align 8
  %var.load101 = load i64, ptr %var.n_segs, align 8
  %cmptmp102 = icmp sgt i64 %var.load101, 0
  br i1 %cmptmp102, label %and.75.then, label %and.75.else

and.75.then:                                      ; preds = %a.after
  %var.load103 = load ptr, ptr %var.segs, align 8
  %a.load104 = load ptr, ptr %var.segs, align 8
  %a.null105 = icmp eq ptr %a.load104, null
  br i1 %a.null105, label %a.create106, label %a.after107

and.75.else:                                      ; preds = %a.after
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge149
  %and.75.phi = phi i1 [ %str.neq156, %str.eq.merge149 ], [ %cmptmp102, %and.75.else ]
  br i1 %and.75.phi, label %choice.then157, label %choice.else158

a.create106:                                      ; preds = %and.75.then
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
  store ptr %a.create109, ptr %var.segs, align 8
  br label %a.after107

a.after107:                                       ; preds = %a.create106, %and.75.then
  %a.load2115 = load ptr, ptr %var.segs, align 8
  %var.load116 = load i64, ptr %var.n_segs, align 8
  %subtmp = sub i64 %var.load116, 1
  %a.rd.nonnull = icmp ne ptr %a.load2115, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after107
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.rd.len117 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len117
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 1
  %a.rd.data118 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data118, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after107
  %arena.cur119 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 56)
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
  %arena.cur120 = call ptr @dva_arena_current()
  %err.alloc121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
  %err.code.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 0
  store i64 4011, ptr %err.code.gep122, align 8
  %err.msg.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep123, align 8
  %err.file.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep124, align 8
  %err.line.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 3
  store i64 277, ptr %err.line.gep125, align 8
  %err.col.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 4
  store i64 57, ptr %err.col.gep126, align 8
  %err.ctx.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 5
  %err.ctx0.gep128 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep127, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep128, align 8
  %err.ctx1.gep129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep127, i32 0, i32 1
  store i64 %a.rd.len117, ptr %err.ctx1.gep129, align 8
  %err.p2i130 = ptrtoint ptr %err.alloc121 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i130, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag131 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag131, label %choice.then132, label %choice.else133

choice.then132:                                   ; preds = %a.rd.done
  %ram.pay135 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay135 to ptr
  store ptr %pay.ptr, ptr %var._136, align 8
  br label %choice.exit134

choice.else133:                                   ; preds = %a.rd.done
  %ram.pay137 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr138 = inttoptr i64 %ram.pay137 to ptr
  store ptr %pay.ptr138, ptr %var._139, align 8
  br label %choice.exit134

choice.exit134:                                   ; preds = %choice.else133, %choice.then132
  %choice.res140 = phi ptr [ %pay.ptr, %choice.then132 ], [ @str.6.struct, %choice.else133 ]
  %eq.lhs.len141 = getelementptr inbounds { i64, ptr }, ptr %choice.res140, i32 0, i32 0
  %eq.lhs.len142 = load i64, ptr %eq.lhs.len141, align 8
  %eq.lhs.len143 = and i64 %eq.lhs.len142, 281474976710655
  %eq.rhs.len144 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len145 = and i64 %eq.rhs.len144, 281474976710655
  %eq.len146 = icmp eq i64 %eq.lhs.len143, %eq.rhs.len145
  br i1 %eq.len146, label %str.eq.then147, label %str.eq.else148

str.eq.then147:                                   ; preds = %choice.exit134
  %eq.lhs.data150 = getelementptr inbounds { i64, ptr }, ptr %choice.res140, i32 0, i32 1
  %eq.lhs.data151 = load ptr, ptr %eq.lhs.data150, align 8
  %eq.rhs.data152 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp153 = call i32 @memcmp(ptr %eq.lhs.data151, ptr %eq.rhs.data152, i64 %eq.lhs.len143)
  %eq.cmp.zero154 = icmp eq i32 %eq.memcmp153, 0
  br label %str.eq.merge149

str.eq.else148:                                   ; preds = %choice.exit134
  br label %str.eq.merge149

str.eq.merge149:                                  ; preds = %str.eq.else148, %str.eq.then147
  %str.eq.result155 = phi i1 [ %eq.cmp.zero154, %str.eq.then147 ], [ false, %str.eq.else148 ]
  %str.neq156 = xor i1 %str.eq.result155, true
  br label %and.75.exit

choice.then157:                                   ; preds = %and.75.exit
  %arena.cur160 = call ptr @dva_arena_current()
  %a.new161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 24)
  %arena.cur162 = call ptr @dva_arena_current()
  %a.buf163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 128)
  %a.len.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new161, i32 0, i32 0
  store i64 0, ptr %a.len.gep164, align 8
  %a.data.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new161, i32 0, i32 1
  store ptr %a.buf163, ptr %a.data.gep165, align 8
  %a.cap.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new161, i32 0, i32 2
  store i64 16, ptr %a.cap.gep166, align 8
  store ptr %a.new161, ptr %var.kept, align 8
  %var.load167 = load i64, ptr %var.n_segs, align 8
  %subtmp168 = sub i64 %var.load167, 1
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.76

choice.else158:                                   ; preds = %and.75.exit
  %var.load270 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load270, true
  br i1 %nottmp, label %choice.then271, label %choice.exit272

choice.exit159:                                   ; preds = %choice.exit272, %a.after261
  br label %choice.exit91

loop.header.76:                                   ; preds = %loop.latch.76, %choice.then157
  %counter.load169 = load i64, ptr %loop.idx.76, align 8
  %loop.cond170 = icmp slt i64 %counter.load169, %subtmp168
  br i1 %loop.cond170, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i171 = sub i64 %counter.load169, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i171, ptr %var._i172, align 8
  store i64 %counter.load169, ptr %var._173, align 8
  store i64 %counter.load169, ptr %var.k, align 8
  %var.load174 = load ptr, ptr %var.segs, align 8
  %a.load175 = load ptr, ptr %var.segs, align 8
  %a.null176 = icmp eq ptr %a.load175, null
  br i1 %a.null176, label %a.create177, label %a.after178

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load169, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load257 = load ptr, ptr %var.kept, align 8
  %a.load258 = load ptr, ptr %var.kept, align 8
  %a.null259 = icmp eq ptr %a.load258, null
  br i1 %a.null259, label %a.create260, label %a.after261

a.create177:                                      ; preds = %loop.body.76
  %arena.cur179 = call ptr @dva_arena_current()
  %a.create180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 24)
  %arena.cur181 = call ptr @dva_arena_current()
  %a.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 128)
  %a.len.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 0
  store i64 0, ptr %a.len.gep183, align 8
  %a.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 1
  store ptr %a.buf182, ptr %a.data.gep184, align 8
  %a.cap.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 2
  store i64 16, ptr %a.cap.gep185, align 8
  store ptr %a.create180, ptr %var.segs, align 8
  br label %a.after178

a.after178:                                       ; preds = %a.create177, %loop.body.76
  %a.load2186 = load ptr, ptr %var.segs, align 8
  %var.load187 = load i64, ptr %var.k, align 8
  %a.rd.nonnull188 = icmp ne ptr %a.load2186, null
  br i1 %a.rd.nonnull188, label %a.rd.check189, label %a.rd.err.null191

a.rd.check189:                                    ; preds = %a.after178
  %a.rd.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2186, i32 0, i32 0
  %a.rd.len195 = load i64, ptr %a.rd.len194, align 8
  %a.rd.ge0196 = icmp sge i64 %var.load187, 0
  %a.rd.lt197 = icmp slt i64 %var.load187, %a.rd.len195
  %a.rd.bounds198 = and i1 %a.rd.ge0196, %a.rd.lt197
  br i1 %a.rd.bounds198, label %a.rd.ok190, label %a.rd.err.oob192

a.rd.ok190:                                       ; preds = %a.rd.check189
  %a.rd.data199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2186, i32 0, i32 1
  %a.rd.data200 = load ptr, ptr %a.rd.data199, align 8
  %a.rd.elem.gep201 = getelementptr i64, ptr %a.rd.data200, i64 %var.load187
  %a.rd.elem202 = load i64, ptr %a.rd.elem.gep201, align 8
  br label %a.rd.done193

a.rd.err.null191:                                 ; preds = %a.after178
  %arena.cur203 = call ptr @dva_arena_current()
  %err.alloc204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 56)
  %err.code.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 0
  store i64 4011, ptr %err.code.gep205, align 8
  %err.msg.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep206, align 8
  %err.file.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep207, align 8
  %err.line.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 3
  store i64 280, ptr %err.line.gep208, align 8
  %err.col.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 4
  store i64 68, ptr %err.col.gep209, align 8
  %err.ctx.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 5
  %err.ctx0.gep211 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep211, align 8
  %err.ctx1.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep212, align 8
  %err.p2i213 = ptrtoint ptr %err.alloc204 to i64
  br label %a.rd.done193

a.rd.err.oob192:                                  ; preds = %a.rd.check189
  %arena.cur214 = call ptr @dva_arena_current()
  %err.alloc215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 56)
  %err.code.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 0
  store i64 4011, ptr %err.code.gep216, align 8
  %err.msg.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep217, align 8
  %err.file.gep218 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep218, align 8
  %err.line.gep219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 3
  store i64 280, ptr %err.line.gep219, align 8
  %err.col.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 4
  store i64 68, ptr %err.col.gep220, align 8
  %err.ctx.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 5
  %err.ctx0.gep222 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep221, i32 0, i32 0
  store i64 %var.load187, ptr %err.ctx0.gep222, align 8
  %err.ctx1.gep223 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep221, i32 0, i32 1
  store i64 %a.rd.len195, ptr %err.ctx1.gep223, align 8
  %err.p2i224 = ptrtoint ptr %err.alloc215 to i64
  br label %a.rd.done193

a.rd.done193:                                     ; preds = %a.rd.err.oob192, %a.rd.err.null191, %a.rd.ok190
  %a.rd.tag225 = phi i1 [ true, %a.rd.ok190 ], [ false, %a.rd.err.null191 ], [ false, %a.rd.err.oob192 ]
  %a.rd.pay226 = phi i64 [ %a.rd.elem202, %a.rd.ok190 ], [ %err.p2i213, %a.rd.err.null191 ], [ %err.p2i224, %a.rd.err.oob192 ]
  %ram.tag227 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag225, 0
  %ram.pay228 = insertvalue { i1, i64 } %ram.tag227, i64 %a.rd.pay226, 1
  %ram.tag229 = extractvalue { i1, i64 } %ram.pay228, 0
  br i1 %ram.tag229, label %choice.then230, label %choice.else231

choice.then230:                                   ; preds = %a.rd.done193
  %ram.pay233 = extractvalue { i1, i64 } %ram.pay228, 1
  %pay.ptr234 = inttoptr i64 %ram.pay233 to ptr
  store ptr %pay.ptr234, ptr %var._235, align 8
  br label %choice.exit232

choice.else231:                                   ; preds = %a.rd.done193
  %ram.pay236 = extractvalue { i1, i64 } %ram.pay228, 1
  %pay.ptr237 = inttoptr i64 %ram.pay236 to ptr
  store ptr %pay.ptr237, ptr %var._238, align 8
  br label %choice.exit232

choice.exit232:                                   ; preds = %choice.else231, %choice.then230
  %choice.res239 = phi ptr [ %pay.ptr234, %choice.then230 ], [ @str.6.struct, %choice.else231 ]
  %a.load240 = load ptr, ptr %var.kept, align 8
  %a.null241 = icmp eq ptr %a.load240, null
  br i1 %a.null241, label %a.create242, label %a.after243

a.create242:                                      ; preds = %choice.exit232
  %arena.cur244 = call ptr @dva_arena_current()
  %a.create245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 24)
  %arena.cur246 = call ptr @dva_arena_current()
  %a.buf247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 128)
  %a.len.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 0
  store i64 0, ptr %a.len.gep248, align 8
  %a.data.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 1
  store ptr %a.buf247, ptr %a.data.gep249, align 8
  %a.cap.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 2
  store i64 16, ptr %a.cap.gep250, align 8
  store ptr %a.create245, ptr %var.kept, align 8
  br label %a.after243

a.after243:                                       ; preds = %a.create242, %choice.exit232
  %a.load2251 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after243
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 0
  %a.len252 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 2
  %a.cap253 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len252, %a.cap253
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2251)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 1
  %a.cur.data254 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 0
  %a.cur.len255 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data254, i64 %a.cur.len255
  %slot.p2i = ptrtoint ptr %choice.res239 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len255, 1
  %b.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep256, align 8
  br label %loop.latch.76

a.create260:                                      ; preds = %loop.exit.76
  %arena.cur262 = call ptr @dva_arena_current()
  %a.create263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 24)
  %arena.cur264 = call ptr @dva_arena_current()
  %a.buf265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 128)
  %a.len.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 0
  store i64 0, ptr %a.len.gep266, align 8
  %a.data.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 1
  store ptr %a.buf265, ptr %a.data.gep267, align 8
  %a.cap.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 2
  store i64 16, ptr %a.cap.gep268, align 8
  store ptr %a.create263, ptr %var.kept, align 8
  br label %a.after261

a.after261:                                       ; preds = %a.create260, %loop.exit.76
  %a.load2269 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2269, ptr %var.segs, align 8
  br label %choice.exit159

choice.then271:                                   ; preds = %choice.else158
  %a.load273 = load ptr, ptr %var.segs, align 8
  %a.null274 = icmp eq ptr %a.load273, null
  br i1 %a.null274, label %a.create275, label %a.after276

choice.exit272:                                   ; preds = %a.store287, %choice.else158
  br label %choice.exit159

a.create275:                                      ; preds = %choice.then271
  %arena.cur277 = call ptr @dva_arena_current()
  %a.create278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 24)
  %arena.cur279 = call ptr @dva_arena_current()
  %a.buf280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 128)
  %a.len.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 0
  store i64 0, ptr %a.len.gep281, align 8
  %a.data.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 1
  store ptr %a.buf280, ptr %a.data.gep282, align 8
  %a.cap.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 2
  store i64 16, ptr %a.cap.gep283, align 8
  store ptr %a.create278, ptr %var.segs, align 8
  br label %a.after276

a.after276:                                       ; preds = %a.create275, %choice.then271
  %a.load2284 = load ptr, ptr %var.segs, align 8
  br label %a.check285

a.check285:                                       ; preds = %a.after276
  %a.len288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2284, i32 0, i32 0
  %a.len289 = load i64, ptr %a.len288, align 8
  %a.cap290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2284, i32 0, i32 2
  %a.cap291 = load i64, ptr %a.cap290, align 8
  %a.needs.grow292 = icmp eq i64 %a.len289, %a.cap291
  br i1 %a.needs.grow292, label %a.grow286, label %a.store287

a.grow286:                                        ; preds = %a.check285
  call void @dva_array_grow(ptr %a.load2284)
  br label %a.store287

a.store287:                                       ; preds = %a.grow286, %a.check285
  %a.cur.data293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2284, i32 0, i32 1
  %a.cur.data294 = load ptr, ptr %a.cur.data293, align 8
  %a.cur.len295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2284, i32 0, i32 0
  %a.cur.len296 = load i64, ptr %a.cur.len295, align 8
  %a.elem.gep297 = getelementptr i64, ptr %a.cur.data294, i64 %a.cur.len296
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep297, align 8
  %a.next.len298 = add i64 %a.cur.len296, 1
  %b.len.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2284, i32 0, i32 0
  store i64 %a.next.len298, ptr %b.len.gep299, align 8
  br label %choice.exit272

a.create303:                                      ; preds = %choice.else90
  %arena.cur305 = call ptr @dva_arena_current()
  %a.create306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 24)
  %arena.cur307 = call ptr @dva_arena_current()
  %a.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 128)
  %a.len.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 0
  store i64 0, ptr %a.len.gep309, align 8
  %a.data.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 1
  store ptr %a.buf308, ptr %a.data.gep310, align 8
  %a.cap.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep311, align 8
  store ptr %a.create306, ptr %var.segs, align 8
  br label %a.after304

a.after304:                                       ; preds = %a.create303, %choice.else90
  %a.load2312 = load ptr, ptr %var.segs, align 8
  br label %a.check313

a.check313:                                       ; preds = %a.after304
  %a.len316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 0
  %a.len317 = load i64, ptr %a.len316, align 8
  %a.cap318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 2
  %a.cap319 = load i64, ptr %a.cap318, align 8
  %a.needs.grow320 = icmp eq i64 %a.len317, %a.cap319
  br i1 %a.needs.grow320, label %a.grow314, label %a.store315

a.grow314:                                        ; preds = %a.check313
  call void @dva_array_grow(ptr %a.load2312)
  br label %a.store315

a.store315:                                       ; preds = %a.grow314, %a.check313
  %a.cur.data321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 1
  %a.cur.data322 = load ptr, ptr %a.cur.data321, align 8
  %a.cur.len323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 0
  %a.cur.len324 = load i64, ptr %a.cur.len323, align 8
  %a.elem.gep325 = getelementptr i64, ptr %a.cur.data322, i64 %a.cur.len324
  %slot.p2i326 = ptrtoint ptr %var.load300 to i64
  store i64 %slot.p2i326, ptr %a.elem.gep325, align 8
  %a.next.len327 = add i64 %a.cur.len324, 1
  %b.len.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 0
  store i64 %a.next.len327, ptr %b.len.gep328, align 8
  br label %choice.exit91

b.rn.new.len334:                                  ; preds = %abort.dead336, %choice.else41
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap337 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap337, %sum332
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort335:                            ; preds = %choice.else41
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead336:                                    ; No predecessors!
  br label %b.rn.new.len334

b.grow2:                                          ; preds = %b.rn.new.len334
  %b.cap2 = mul i64 %b.cap337, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum332
  %b.new.cap = select i1 %b.cap.need, i64 %sum332, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2338 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2339 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum340 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf341 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf341, label %str_overflow_abort343, label %b.new.buf.len2342

b.nogrow2:                                        ; preds = %b.rn.new.len334
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2342
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data346 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data346, i64 %b.rn.cur.len331
  br i1 %br.cmp1, label %br.b1.77, label %br.c2.77

b.new.buf.len2342:                                ; preds = %abort.dead344, %b.grow2
  %arena.cur345 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 %sum340)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2339, i64 %b.cur.len2338, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2338
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort343:                            ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead344:                                    ; No predecessors!
  br label %b.new.buf.len2342

br.b1.77:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext330 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.77

br.c2.77:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.77, label %br.c3.77

br.b2.77:                                         ; preds = %br.c2.77
  %br.sh6 = lshr i64 %coerce.sext330, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext330, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.77

br.c3.77:                                         ; preds = %br.c2.77
  br i1 %br.cmp3, label %br.b3.77, label %br.b4.77

br.b3.77:                                         ; preds = %br.c3.77
  %br.sh12 = lshr i64 %coerce.sext330, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext330, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext330, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.77

br.b4.77:                                         ; preds = %br.c3.77
  %br.sh18 = lshr i64 %coerce.sext330, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext330, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext330, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext330, 63
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
  %br.nul = getelementptr i8, ptr %b.rn.data346, i64 %sum332
  store i8 0, ptr %br.nul, align 1
  %b.len.gep347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum332, ptr %b.len.gep347, align 8
  br label %choice.exit42

str_ok355:                                        ; preds = %abort.dead364, %tag.slow_check358, %tag.gen_check357, %loop.exit.73
  %addtmp365 = add i64 %str.len.query353, 2
  %cap.neg = icmp slt i64 %addtmp365, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp365
  %b.data.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len369 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum370 = extractvalue { i64, i1 } %b.buf.len369, 0
  %ovf371 = extractvalue { i64, i1 } %b.buf.len369, 1
  br i1 %ovf371, label %str_overflow_abort373, label %b.buf.len372

tag.gen_check357:                                 ; preds = %loop.exit.73
  %active.gen360 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok361 = icmp eq i64 %str.tag354, %active.gen360
  br i1 %tag.fast.ok361, label %str_ok355, label %tag.slow_check358

tag.slow_check358:                                ; preds = %tag.gen_check357
  %arena.cur362 = call ptr @dva_arena_current()
  %tag.valid363 = call i1 @dva_arena_validate_tag(ptr %arena.cur362, i64 %str.tag354)
  br i1 %tag.valid363, label %str_ok355, label %tag.stale359

tag.stale359:                                     ; preds = %tag.slow_check358
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead364:                                    ; No predecessors!
  br label %str_ok355

b.buf.len372:                                     ; preds = %abort.dead374, %str_ok355
  %arena.cur375 = call ptr @dva_arena_current()
  %b.buf376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 %sum370)
  %b.nul0377 = getelementptr i8, ptr %b.buf376, i64 0
  store i8 0, ptr %b.nul0377, align 1
  store i64 0, ptr %b.len.gep367, align 8
  store ptr %b.buf376, ptr %b.data.gep366, align 8
  store i64 %cap.safe, ptr %b.cap.gep368, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %var.load378 = load i1, ptr %var.abs, align 1
  br i1 %var.load378, label %choice.then379, label %choice.exit380

str_overflow_abort373:                            ; preds = %str_ok355
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead374:                                    ; No predecessors!
  br label %b.buf.len372

choice.then379:                                   ; preds = %b.buf.len372
  %b.load381 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  %b.rn.cur.len383 = load i64, ptr %b.rn.cur.len382, align 8
  %b.rn.new.len384 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len383, i64 1)
  %sum385 = extractvalue { i64, i1 } %b.rn.new.len384, 0
  %ovf386 = extractvalue { i64, i1 } %b.rn.new.len384, 1
  br i1 %ovf386, label %str_overflow_abort388, label %b.rn.new.len387

choice.exit380:                                   ; preds = %br.done.78, %b.buf.len372
  %var.load427 = load ptr, ptr %var.segs, align 8
  %a.load428 = load ptr, ptr %var.segs, align 8
  %a.null429 = icmp eq ptr %a.load428, null
  br i1 %a.null429, label %a.create430, label %a.after431

b.rn.new.len387:                                  ; preds = %abort.dead389, %choice.then379
  %b.cap390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 2
  %b.cap391 = load i64, ptr %b.cap390, align 8
  %b.need.grow392 = icmp slt i64 %b.cap391, %sum385
  br i1 %b.need.grow392, label %b.grow2393, label %b.nogrow2394

str_overflow_abort388:                            ; preds = %choice.then379
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead389:                                    ; No predecessors!
  br label %b.rn.new.len387

b.grow2393:                                       ; preds = %b.rn.new.len387
  %b.cap2396 = mul i64 %b.cap391, 2
  %b.cap.small397 = icmp slt i64 %b.cap2396, 16
  %b.cap.grow398 = select i1 %b.cap.small397, i64 16, i64 %b.cap2396
  %b.cap.need399 = icmp slt i64 %b.cap.grow398, %sum385
  %b.new.cap400 = select i1 %b.cap.need399, i64 %sum385, i64 %b.cap.grow398
  %b.cur.len2401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  %b.cur.len2402 = load i64, ptr %b.cur.len2401, align 8
  %b.cur.data2403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  %b.cur.data2404 = load ptr, ptr %b.cur.data2403, align 8
  %b.new.buf.len2405 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap400, i64 1)
  %sum406 = extractvalue { i64, i1 } %b.new.buf.len2405, 0
  %ovf407 = extractvalue { i64, i1 } %b.new.buf.len2405, 1
  br i1 %ovf407, label %str_overflow_abort409, label %b.new.buf.len2408

b.nogrow2394:                                     ; preds = %b.rn.new.len387
  br label %b.grow_done395

b.grow_done395:                                   ; preds = %b.nogrow2394, %b.new.buf.len2408
  %b.rn.data416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  %b.rn.data417 = load ptr, ptr %b.rn.data416, align 8
  %b.rn.dst418 = getelementptr i8, ptr %b.rn.data417, i64 %b.rn.cur.len383
  br i1 true, label %br.b1.78, label %br.c2.78

b.new.buf.len2408:                                ; preds = %abort.dead410, %b.grow2393
  %arena.cur411 = call ptr @dva_arena_current()
  %b.new.buf2412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 %sum406)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2412, ptr align 1 %b.cur.data2404, i64 %b.cur.len2402, i1 false)
  %b.grow2.nul413 = getelementptr i8, ptr %b.new.buf2412, i64 %b.cur.len2402
  store i8 0, ptr %b.grow2.nul413, align 1
  %b.new.data2.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  store ptr %b.new.buf2412, ptr %b.new.data2.gep414, align 8
  %b.new.cap2.gep415 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 2
  store i64 %b.new.cap400, ptr %b.new.cap2.gep415, align 8
  br label %b.grow_done395

str_overflow_abort409:                            ; preds = %b.grow2393
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead410:                                    ; No predecessors!
  br label %b.new.buf.len2408

br.b1.78:                                         ; preds = %b.grow_done395
  store i8 47, ptr %b.rn.dst418, align 1
  br label %br.done.78

br.c2.78:                                         ; preds = %b.grow_done395
  br i1 true, label %br.b2.78, label %br.c3.78

br.b2.78:                                         ; preds = %br.c2.78
  store i8 -64, ptr %b.rn.dst418, align 1
  %br.dst1419 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 -81, ptr %br.dst1419, align 1
  br label %br.done.78

br.c3.78:                                         ; preds = %br.c2.78
  br i1 true, label %br.b3.78, label %br.b4.78

br.b3.78:                                         ; preds = %br.c3.78
  store i8 -32, ptr %b.rn.dst418, align 1
  %br.dst1.3420 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 -128, ptr %br.dst1.3420, align 1
  %br.dst2.3421 = getelementptr i8, ptr %b.rn.dst418, i64 2
  store i8 -81, ptr %br.dst2.3421, align 1
  br label %br.done.78

br.b4.78:                                         ; preds = %br.c3.78
  store i8 -16, ptr %b.rn.dst418, align 1
  %br.dst1.4422 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 -128, ptr %br.dst1.4422, align 1
  %br.dst2.4423 = getelementptr i8, ptr %b.rn.dst418, i64 2
  store i8 -128, ptr %br.dst2.4423, align 1
  %br.dst3.4424 = getelementptr i8, ptr %b.rn.dst418, i64 3
  store i8 -81, ptr %br.dst3.4424, align 1
  br label %br.done.78

br.done.78:                                       ; preds = %br.b4.78, %br.b3.78, %br.b2.78, %br.b1.78
  %br.nul425 = getelementptr i8, ptr %b.rn.data417, i64 %sum385
  store i8 0, ptr %br.nul425, align 1
  %b.len.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  store i64 %sum385, ptr %b.len.gep426, align 8
  br label %choice.exit380

a.create430:                                      ; preds = %choice.exit380
  %arena.cur432 = call ptr @dva_arena_current()
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = call ptr @dva_arena_current()
  %a.buf435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 128)
  %a.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 0
  store i64 0, ptr %a.len.gep436, align 8
  %a.data.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 1
  store ptr %a.buf435, ptr %a.data.gep437, align 8
  %a.cap.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep438, align 8
  store ptr %a.create433, ptr %var.segs, align 8
  br label %a.after431

a.after431:                                       ; preds = %a.create430, %choice.exit380
  %a.load2439 = load ptr, ptr %var.segs, align 8
  %a.len.query440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  %a.len.query441 = load i64, ptr %a.len.query440, align 8
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after431
  %counter.load442 = load i64, ptr %loop.idx.79, align 8
  %loop.cond443 = icmp slt i64 %counter.load442, %a.len.query441
  br i1 %loop.cond443, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i444 = sub i64 %counter.load442, 0
  store i64 1, ptr %loop.step.79, align 8
  store i64 %loop.rel.i444, ptr %var._i445, align 8
  store i64 %counter.load442, ptr %var._446, align 8
  store i64 %counter.load442, ptr %var.idx, align 8
  %var.load447 = load i64, ptr %var.idx, align 8
  %cmptmp448 = icmp sgt i64 %var.load447, 0
  br i1 %cmptmp448, label %choice.then449, label %choice.exit450

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %b.grow_done578
  %step.val601 = load i64, ptr %loop.step.79, align 8
  %loop.next602 = add i64 %counter.load442, %step.val601
  store i64 %loop.next602, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %var.load603 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load603, i32 0, i32 0
  %b.len604 = load i64, ptr %b.len, align 8
  %cmptmp605 = icmp eq i64 %b.len604, 0
  br i1 %cmptmp605, label %choice.then606, label %choice.else607

choice.then449:                                   ; preds = %loop.body.79
  %b.load451 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  %b.rn.cur.len453 = load i64, ptr %b.rn.cur.len452, align 8
  %b.rn.new.len454 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len453, i64 1)
  %sum455 = extractvalue { i64, i1 } %b.rn.new.len454, 0
  %ovf456 = extractvalue { i64, i1 } %b.rn.new.len454, 1
  br i1 %ovf456, label %str_overflow_abort458, label %b.rn.new.len457

choice.exit450:                                   ; preds = %br.done.80, %loop.body.79
  %b.load497 = load ptr, ptr %var.out, align 8
  %var.load498 = load ptr, ptr %var.segs, align 8
  %a.load499 = load ptr, ptr %var.segs, align 8
  %a.null500 = icmp eq ptr %a.load499, null
  br i1 %a.null500, label %a.create501, label %a.after502

b.rn.new.len457:                                  ; preds = %abort.dead459, %choice.then449
  %b.cap460 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 2
  %b.cap461 = load i64, ptr %b.cap460, align 8
  %b.need.grow462 = icmp slt i64 %b.cap461, %sum455
  br i1 %b.need.grow462, label %b.grow2463, label %b.nogrow2464

str_overflow_abort458:                            ; preds = %choice.then449
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead459:                                    ; No predecessors!
  br label %b.rn.new.len457

b.grow2463:                                       ; preds = %b.rn.new.len457
  %b.cap2466 = mul i64 %b.cap461, 2
  %b.cap.small467 = icmp slt i64 %b.cap2466, 16
  %b.cap.grow468 = select i1 %b.cap.small467, i64 16, i64 %b.cap2466
  %b.cap.need469 = icmp slt i64 %b.cap.grow468, %sum455
  %b.new.cap470 = select i1 %b.cap.need469, i64 %sum455, i64 %b.cap.grow468
  %b.cur.len2471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  %b.cur.len2472 = load i64, ptr %b.cur.len2471, align 8
  %b.cur.data2473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  %b.cur.data2474 = load ptr, ptr %b.cur.data2473, align 8
  %b.new.buf.len2475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap470, i64 1)
  %sum476 = extractvalue { i64, i1 } %b.new.buf.len2475, 0
  %ovf477 = extractvalue { i64, i1 } %b.new.buf.len2475, 1
  br i1 %ovf477, label %str_overflow_abort479, label %b.new.buf.len2478

b.nogrow2464:                                     ; preds = %b.rn.new.len457
  br label %b.grow_done465

b.grow_done465:                                   ; preds = %b.nogrow2464, %b.new.buf.len2478
  %b.rn.data486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  %b.rn.data487 = load ptr, ptr %b.rn.data486, align 8
  %b.rn.dst488 = getelementptr i8, ptr %b.rn.data487, i64 %b.rn.cur.len453
  br i1 true, label %br.b1.80, label %br.c2.80

b.new.buf.len2478:                                ; preds = %abort.dead480, %b.grow2463
  %arena.cur481 = call ptr @dva_arena_current()
  %b.new.buf2482 = call ptr @dva_arena_alloc(ptr %arena.cur481, i64 %sum476)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2482, ptr align 1 %b.cur.data2474, i64 %b.cur.len2472, i1 false)
  %b.grow2.nul483 = getelementptr i8, ptr %b.new.buf2482, i64 %b.cur.len2472
  store i8 0, ptr %b.grow2.nul483, align 1
  %b.new.data2.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  store ptr %b.new.buf2482, ptr %b.new.data2.gep484, align 8
  %b.new.cap2.gep485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 2
  store i64 %b.new.cap470, ptr %b.new.cap2.gep485, align 8
  br label %b.grow_done465

str_overflow_abort479:                            ; preds = %b.grow2463
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead480:                                    ; No predecessors!
  br label %b.new.buf.len2478

br.b1.80:                                         ; preds = %b.grow_done465
  store i8 47, ptr %b.rn.dst488, align 1
  br label %br.done.80

br.c2.80:                                         ; preds = %b.grow_done465
  br i1 true, label %br.b2.80, label %br.c3.80

br.b2.80:                                         ; preds = %br.c2.80
  store i8 -64, ptr %b.rn.dst488, align 1
  %br.dst1489 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -81, ptr %br.dst1489, align 1
  br label %br.done.80

br.c3.80:                                         ; preds = %br.c2.80
  br i1 true, label %br.b3.80, label %br.b4.80

br.b3.80:                                         ; preds = %br.c3.80
  store i8 -32, ptr %b.rn.dst488, align 1
  %br.dst1.3490 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -128, ptr %br.dst1.3490, align 1
  %br.dst2.3491 = getelementptr i8, ptr %b.rn.dst488, i64 2
  store i8 -81, ptr %br.dst2.3491, align 1
  br label %br.done.80

br.b4.80:                                         ; preds = %br.c3.80
  store i8 -16, ptr %b.rn.dst488, align 1
  %br.dst1.4492 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -128, ptr %br.dst1.4492, align 1
  %br.dst2.4493 = getelementptr i8, ptr %b.rn.dst488, i64 2
  store i8 -128, ptr %br.dst2.4493, align 1
  %br.dst3.4494 = getelementptr i8, ptr %b.rn.dst488, i64 3
  store i8 -81, ptr %br.dst3.4494, align 1
  br label %br.done.80

br.done.80:                                       ; preds = %br.b4.80, %br.b3.80, %br.b2.80, %br.b1.80
  %br.nul495 = getelementptr i8, ptr %b.rn.data487, i64 %sum455
  store i8 0, ptr %br.nul495, align 1
  %b.len.gep496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  store i64 %sum455, ptr %b.len.gep496, align 8
  br label %choice.exit450

a.create501:                                      ; preds = %choice.exit450
  %arena.cur503 = call ptr @dva_arena_current()
  %a.create504 = call ptr @dva_arena_alloc(ptr %arena.cur503, i64 24)
  %arena.cur505 = call ptr @dva_arena_current()
  %a.buf506 = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 128)
  %a.len.gep507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 0
  store i64 0, ptr %a.len.gep507, align 8
  %a.data.gep508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 1
  store ptr %a.buf506, ptr %a.data.gep508, align 8
  %a.cap.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 2
  store i64 16, ptr %a.cap.gep509, align 8
  store ptr %a.create504, ptr %var.segs, align 8
  br label %a.after502

a.after502:                                       ; preds = %a.create501, %choice.exit450
  %a.load2510 = load ptr, ptr %var.segs, align 8
  %var.load511 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull512 = icmp ne ptr %a.load2510, null
  br i1 %a.rd.nonnull512, label %a.rd.check513, label %a.rd.err.null515

a.rd.check513:                                    ; preds = %a.after502
  %a.rd.len518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 0
  %a.rd.len519 = load i64, ptr %a.rd.len518, align 8
  %a.rd.ge0520 = icmp sge i64 %var.load511, 0
  %a.rd.lt521 = icmp slt i64 %var.load511, %a.rd.len519
  %a.rd.bounds522 = and i1 %a.rd.ge0520, %a.rd.lt521
  br i1 %a.rd.bounds522, label %a.rd.ok514, label %a.rd.err.oob516

a.rd.ok514:                                       ; preds = %a.rd.check513
  %a.rd.data523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 1
  %a.rd.data524 = load ptr, ptr %a.rd.data523, align 8
  %a.rd.elem.gep525 = getelementptr i64, ptr %a.rd.data524, i64 %var.load511
  %a.rd.elem526 = load i64, ptr %a.rd.elem.gep525, align 8
  br label %a.rd.done517

a.rd.err.null515:                                 ; preds = %a.after502
  %arena.cur527 = call ptr @dva_arena_current()
  %err.alloc528 = call ptr @dva_arena_alloc(ptr %arena.cur527, i64 56)
  %err.code.gep529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 0
  store i64 4011, ptr %err.code.gep529, align 8
  %err.msg.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep530, align 8
  %err.file.gep531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep531, align 8
  %err.line.gep532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 3
  store i64 290, ptr %err.line.gep532, align 8
  %err.col.gep533 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 4
  store i64 25, ptr %err.col.gep533, align 8
  %err.ctx.gep534 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc528, i32 0, i32 5
  %err.ctx0.gep535 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep534, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep535, align 8
  %err.ctx1.gep536 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep534, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep536, align 8
  %err.p2i537 = ptrtoint ptr %err.alloc528 to i64
  br label %a.rd.done517

a.rd.err.oob516:                                  ; preds = %a.rd.check513
  %arena.cur538 = call ptr @dva_arena_current()
  %err.alloc539 = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 56)
  %err.code.gep540 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 0
  store i64 4011, ptr %err.code.gep540, align 8
  %err.msg.gep541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep541, align 8
  %err.file.gep542 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep542, align 8
  %err.line.gep543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 3
  store i64 290, ptr %err.line.gep543, align 8
  %err.col.gep544 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 4
  store i64 25, ptr %err.col.gep544, align 8
  %err.ctx.gep545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc539, i32 0, i32 5
  %err.ctx0.gep546 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep545, i32 0, i32 0
  store i64 %var.load511, ptr %err.ctx0.gep546, align 8
  %err.ctx1.gep547 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep545, i32 0, i32 1
  store i64 %a.rd.len519, ptr %err.ctx1.gep547, align 8
  %err.p2i548 = ptrtoint ptr %err.alloc539 to i64
  br label %a.rd.done517

a.rd.done517:                                     ; preds = %a.rd.err.oob516, %a.rd.err.null515, %a.rd.ok514
  %a.rd.tag549 = phi i1 [ true, %a.rd.ok514 ], [ false, %a.rd.err.null515 ], [ false, %a.rd.err.oob516 ]
  %a.rd.pay550 = phi i64 [ %a.rd.elem526, %a.rd.ok514 ], [ %err.p2i537, %a.rd.err.null515 ], [ %err.p2i548, %a.rd.err.oob516 ]
  %ram.tag551 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag549, 0
  %ram.pay552 = insertvalue { i1, i64 } %ram.tag551, i64 %a.rd.pay550, 1
  %ram.tag553 = extractvalue { i1, i64 } %ram.pay552, 0
  br i1 %ram.tag553, label %choice.then554, label %choice.else555

choice.then554:                                   ; preds = %a.rd.done517
  %ram.pay557 = extractvalue { i1, i64 } %ram.pay552, 1
  %pay.ptr558 = inttoptr i64 %ram.pay557 to ptr
  store ptr %pay.ptr558, ptr %var._559, align 8
  br label %choice.exit556

choice.else555:                                   ; preds = %a.rd.done517
  %ram.pay560 = extractvalue { i1, i64 } %ram.pay552, 1
  %pay.ptr561 = inttoptr i64 %ram.pay560 to ptr
  store ptr %pay.ptr561, ptr %var._562, align 8
  br label %choice.exit556

choice.exit556:                                   ; preds = %choice.else555, %choice.then554
  %choice.res563 = phi ptr [ %pay.ptr558, %choice.then554 ], [ @str.6.struct, %choice.else555 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res563, i32 0, i32 0
  %app.str.len564 = load i64, ptr %app.str.len, align 8
  %app.str.len565 = and i64 %app.str.len564, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res563, i32 0, i32 1
  %app.str.data566 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  %b.app.cur.len567 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len567, i64 %app.str.len565)
  %sum568 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf569 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf569, label %str_overflow_abort571, label %b.app.new.len570

b.app.new.len570:                                 ; preds = %abort.dead572, %choice.exit556
  %b.cap573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 2
  %b.cap574 = load i64, ptr %b.cap573, align 8
  %b.need.grow575 = icmp slt i64 %b.cap574, %sum568
  br i1 %b.need.grow575, label %b.grow2576, label %b.nogrow2577

str_overflow_abort571:                            ; preds = %choice.exit556
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead572:                                    ; No predecessors!
  br label %b.app.new.len570

b.grow2576:                                       ; preds = %b.app.new.len570
  %b.cap2579 = mul i64 %b.cap574, 2
  %b.cap.small580 = icmp slt i64 %b.cap2579, 16
  %b.cap.grow581 = select i1 %b.cap.small580, i64 16, i64 %b.cap2579
  %b.cap.need582 = icmp slt i64 %b.cap.grow581, %sum568
  %b.new.cap583 = select i1 %b.cap.need582, i64 %sum568, i64 %b.cap.grow581
  %b.cur.len2584 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  %b.cur.len2585 = load i64, ptr %b.cur.len2584, align 8
  %b.cur.data2586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  %b.cur.data2587 = load ptr, ptr %b.cur.data2586, align 8
  %b.new.buf.len2588 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap583, i64 1)
  %sum589 = extractvalue { i64, i1 } %b.new.buf.len2588, 0
  %ovf590 = extractvalue { i64, i1 } %b.new.buf.len2588, 1
  br i1 %ovf590, label %str_overflow_abort592, label %b.new.buf.len2591

b.nogrow2577:                                     ; preds = %b.app.new.len570
  br label %b.grow_done578

b.grow_done578:                                   ; preds = %b.nogrow2577, %b.new.buf.len2591
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  %b.app.data599 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data599, i64 %b.app.cur.len567
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data566, i64 %app.str.len565, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data599, i64 %sum568
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  store i64 %sum568, ptr %b.len.gep600, align 8
  br label %loop.latch.79

b.new.buf.len2591:                                ; preds = %abort.dead593, %b.grow2576
  %arena.cur594 = call ptr @dva_arena_current()
  %b.new.buf2595 = call ptr @dva_arena_alloc(ptr %arena.cur594, i64 %sum589)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2595, ptr align 1 %b.cur.data2587, i64 %b.cur.len2585, i1 false)
  %b.grow2.nul596 = getelementptr i8, ptr %b.new.buf2595, i64 %b.cur.len2585
  store i8 0, ptr %b.grow2.nul596, align 1
  %b.new.data2.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  store ptr %b.new.buf2595, ptr %b.new.data2.gep597, align 8
  %b.new.cap2.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 2
  store i64 %b.new.cap583, ptr %b.new.cap2.gep598, align 8
  br label %b.grow_done578

str_overflow_abort592:                            ; preds = %b.grow2576
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead593:                                    ; No predecessors!
  br label %b.new.buf.len2591

choice.then606:                                   ; preds = %loop.exit.79
  br label %choice.exit608

choice.else607:                                   ; preds = %loop.exit.79
  %var.load609 = load ptr, ptr %var.out, align 8
  %b.freeze.len610 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load609, i32 0, i32 0
  %b.freeze.len611 = load i64, ptr %b.freeze.len610, align 8
  %b.freeze.data612 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load609, i32 0, i32 1
  %b.freeze.data613 = load ptr, ptr %b.freeze.data612, align 8
  %b.freeze.arena614 = call ptr @dva_arena_current()
  %b.freeze.nc.gep615 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena614, i32 0, i32 1
  %b.freeze.nc616 = load i64, ptr %b.freeze.nc.gep615, align 8
  %b.freeze.has.chunk617 = icmp sgt i64 %b.freeze.nc616, 0
  br i1 %b.freeze.has.chunk617, label %b.freeze.check618, label %b.freeze.done620

choice.exit608:                                   ; preds = %b.freeze.done620, %choice.then606
  %choice.res648 = phi ptr [ @str.5.struct, %choice.then606 ], [ %builder.freeze642, %b.freeze.done620 ]
  %ret.pack649 = load { i64, ptr }, ptr %choice.res648, align 8
  ret { i64, ptr } %ret.pack649

b.freeze.check618:                                ; preds = %choice.else607
  %b.freeze.last.idx621 = sub i64 %b.freeze.nc616, 1
  %b.freeze.chunks.gep622 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena614, i32 0, i32 3
  %b.freeze.chunk.slot623 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep622, i64 0, i64 %b.freeze.last.idx621
  %b.freeze.last.chunk624 = load ptr, ptr %b.freeze.chunk.slot623, align 8
  %b.freeze.off.gep625 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena614, i32 0, i32 2
  %b.freeze.off626 = load i64, ptr %b.freeze.off.gep625, align 8
  %b.freeze.bump627 = getelementptr i8, ptr %b.freeze.last.chunk624, i64 %b.freeze.off626
  %b.freeze.cap.gep628 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena614, i32 0, i32 0
  %b.freeze.cap629 = load i64, ptr %b.freeze.cap.gep628, align 8
  %b.freeze.chunk.end630 = getelementptr i8, ptr %b.freeze.last.chunk624, i64 %b.freeze.cap629
  %b.freeze.ge.chunk631 = icmp uge ptr %b.freeze.data613, %b.freeze.last.chunk624
  %b.freeze.lt.end632 = icmp ult ptr %b.freeze.data613, %b.freeze.chunk.end630
  %b.freeze.in.chunk633 = and i1 %b.freeze.ge.chunk631, %b.freeze.lt.end632
  %b.freeze.ge.bump634 = icmp uge ptr %b.freeze.data613, %b.freeze.bump627
  %b.freeze.reaped635 = and i1 %b.freeze.in.chunk633, %b.freeze.ge.bump634
  br i1 %b.freeze.reaped635, label %b.freeze.copy619, label %b.freeze.done620

b.freeze.copy619:                                 ; preds = %b.freeze.check618
  %b.freeze.alen636 = add i64 %b.freeze.len611, 1
  %arena.cur637 = call ptr @dva_arena_current()
  %b.freeze.fresh638 = call ptr @dva_arena_alloc(ptr %arena.cur637, i64 %b.freeze.alen636)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh638, ptr align 1 %b.freeze.data613, i64 %b.freeze.len611, i1 false)
  %b.freeze.nul639 = getelementptr i8, ptr %b.freeze.fresh638, i64 %b.freeze.len611
  store i8 0, ptr %b.freeze.nul639, align 1
  br label %b.freeze.done620

b.freeze.done620:                                 ; preds = %b.freeze.copy619, %b.freeze.check618, %choice.else607
  %b.freeze.data640 = phi ptr [ %b.freeze.data613, %choice.else607 ], [ %b.freeze.data613, %b.freeze.check618 ], [ %b.freeze.fresh638, %b.freeze.copy619 ]
  %arena.cur641 = call ptr @dva_arena_current()
  %builder.freeze642 = call ptr @dva_arena_alloc(ptr %arena.cur641, i64 16)
  %str.build.len.gep643 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze642, i32 0, i32 0
  store i64 %b.freeze.len611, ptr %str.build.len.gep643, align 8
  %str.build.data.gep644 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze642, i32 0, i32 1
  store ptr %b.freeze.data640, ptr %str.build.data.gep644, align 8
  %b.freeze.rst.len645 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load609, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len645, align 8
  %b.freeze.rst.data646 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load609, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data646, align 8
  %b.freeze.rst.cap647 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load609, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap647, align 8
  br label %choice.exit608
}

define { i64, ptr } @"path::win_normalize"(ptr %0) #0 {
entry:
  %var._653 = alloca ptr, align 8
  %var._650 = alloca ptr, align 8
  %var._537 = alloca i64, align 8
  %var._i536 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._328 = alloca ptr, align 8
  %var._325 = alloca ptr, align 8
  %var._263 = alloca i64, align 8
  %var._i262 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._226 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  %var.load24 = load i64, ptr %var.rlen, align 8
  %cmptmp25 = icmp eq i64 %var.load24, 2
  br i1 %cmptmp25, label %choice.then26, label %choice.else27

choice.exit9:                                     ; preds = %choice.exit28, %concat.tot.len18
  %choice.res72 = phi ptr [ %concat.str, %concat.tot.len18 ], [ %choice.res71, %choice.exit28 ]
  store ptr %choice.res72, ptr %var.prefix, align 8
  %arena.cur73 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %arena.cur74 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur75 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf77 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.buf.len78

cat.sum.len14:                                    ; preds = %abort.dead15, %choice.then8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum16 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf17 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %concat.tot.len18

str_overflow_abort:                               ; preds = %choice.then8
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %cat.sum.len14

concat.tot.len18:                                 ; preds = %abort.dead20, %cat.sum.len14
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum16)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %cat.off = add i64 0, %view.len
  %cat.dst22 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst22, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit9

str_overflow_abort19:                             ; preds = %cat.sum.len14
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %concat.tot.len18

choice.then26:                                    ; preds = %choice.else
  %var.load29 = load ptr, ptr %var.p, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.else27:                                    ; preds = %choice.else
  %var.load65 = load i64, ptr %var.rlen, align 8
  %cmptmp66 = icmp eq i64 %var.load65, 1
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

choice.exit28:                                    ; preds = %choice.exit69, %choice.exit39
  %choice.res71 = phi ptr [ %choice.res, %choice.exit39 ], [ %choice.res70, %choice.exit69 ]
  br label %choice.exit9

idx_big_check:                                    ; preds = %choice.then26
  %idx.big = icmp sge i64 0, %s.read.len32
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead35, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data34, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res36 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res36, label %choice.then37, label %choice.else38

idx_oob:                                          ; preds = %idx_big_check, %choice.then26
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %idx_ok

choice.then37:                                    ; preds = %idx_ok
  br label %choice.exit39

choice.else38:                                    ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.p, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %s.read.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data45 = load ptr, ptr %s.read.data44, align 8
  %rel.start46 = add i64 %s.read.len43, 0
  %norm.start47 = select i1 false, i64 %rel.start46, i64 0
  %start.lt.048 = icmp slt i64 %norm.start47, 0
  %c.start.049 = select i1 %start.lt.048, i64 0, i64 %norm.start47
  %start.gt.len50 = icmp sgt i64 %c.start.049, %s.read.len43
  %final.start51 = select i1 %start.gt.len50, i64 %s.read.len43, i64 %c.start.049
  %rel.end52 = add i64 %s.read.len43, 2
  %norm.end53 = select i1 false, i64 %rel.end52, i64 2
  %end.lt.054 = icmp slt i64 %norm.end53, 0
  %c.end.055 = select i1 %end.lt.054, i64 0, i64 %norm.end53
  %end.gt.len56 = icmp sgt i64 %c.end.055, %s.read.len43
  %final.end57 = select i1 %end.gt.len56, i64 %s.read.len43, i64 %c.end.055
  %view.empty58 = icmp sle i64 %final.end57, %final.start51
  %view.len.sub59 = sub i64 %final.end57, %final.start51
  %view.len60 = select i1 %view.empty58, i64 0, i64 %view.len.sub59
  %view.data61 = getelementptr i8, ptr %s.read.data45, i64 %final.start51
  %arena.cur62 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep63 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len60, ptr %str.build.len.gep63, align 8
  %str.build.data.gep64 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data61, ptr %str.build.data.gep64, align 8
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else38, %choice.then37
  %choice.res = phi ptr [ @str.11.struct, %choice.then37 ], [ %str.view, %choice.else38 ]
  br label %choice.exit28

choice.then67:                                    ; preds = %choice.else27
  br label %choice.exit69

choice.else68:                                    ; preds = %choice.else27
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.else68, %choice.then67
  %choice.res70 = phi ptr [ @str.4.struct, %choice.then67 ], [ @str.6.struct, %choice.else68 ]
  br label %choice.exit28

b.buf.len78:                                      ; preds = %abort.dead80, %choice.exit9
  %arena.cur81 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load82 = load ptr, ptr %var.p, align 8
  %str.len.query83 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %str.len.query84 = load i64, ptr %str.len.query83, align 8
  %str.len.query85 = and i64 %str.len.query84, 281474976710655
  %str.tag86 = lshr i64 %str.len.query84, 48
  %tag.immortal88 = icmp eq i64 %str.tag86, 0
  br i1 %tag.immortal88, label %str_ok87, label %tag.gen_check89

str_overflow_abort79:                             ; preds = %choice.exit9
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %b.buf.len78

str_ok87:                                         ; preds = %abort.dead96, %tag.slow_check90, %tag.gen_check89, %b.buf.len78
  store i64 %str.len.query85, ptr %var.len, align 8
  %var.load97 = load i64, ptr %var.len, align 8
  %var.load98 = load i64, ptr %var.rlen, align 8
  %subtmp = sub i64 %var.load97, %var.load98
  %addtmp = add i64 %subtmp, 1
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

tag.gen_check89:                                  ; preds = %b.buf.len78
  %active.gen92 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok93 = icmp eq i64 %str.tag86, %active.gen92
  br i1 %tag.fast.ok93, label %str_ok87, label %tag.slow_check90

tag.slow_check90:                                 ; preds = %tag.gen_check89
  %arena.cur94 = call ptr @dva_arena_current()
  %tag.valid95 = call i1 @dva_arena_validate_tag(ptr %arena.cur94, i64 %str.tag86)
  br i1 %tag.valid95, label %str_ok87, label %tag.stale91

tag.stale91:                                      ; preds = %tag.slow_check90
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %str_ok87

loop.header.81:                                   ; preds = %loop.latch.81, %str_ok87
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load99 = load i64, ptr %var.rlen, align 8
  %var.load100 = load i64, ptr %var.k, align 8
  %addtmp101 = add i64 %var.load99, %var.load100
  store i64 %addtmp101, ptr %var.i, align 8
  %var.load102 = load i64, ptr %var.i, align 8
  %var.load103 = load i64, ptr %var.len, align 8
  %cmptmp104 = icmp eq i64 %var.load102, %var.load103
  store i1 %cmptmp104, ptr %var.is_end, align 1
  %var.load105 = load i1, ptr %var.is_end, align 1
  br i1 %var.load105, label %choice.then106, label %choice.else107

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit129
  %step.val438 = load i64, ptr %loop.step.81, align 8
  %loop.next439 = add i64 %counter.load, %step.val438
  store i64 %loop.next439, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load440 = load ptr, ptr %var.p, align 8
  %str.len.query441 = getelementptr inbounds { i64, ptr }, ptr %var.load440, i32 0, i32 0
  %str.len.query442 = load i64, ptr %str.len.query441, align 8
  %str.len.query443 = and i64 %str.len.query442, 281474976710655
  %str.tag444 = lshr i64 %str.len.query442, 48
  %tag.immortal446 = icmp eq i64 %str.tag444, 0
  br i1 %tag.immortal446, label %str_ok445, label %tag.gen_check447

choice.then106:                                   ; preds = %loop.body.81
  br label %choice.exit108

choice.else107:                                   ; preds = %loop.body.81
  %var.load109 = load ptr, ptr %var.p, align 8
  %s.read.len110 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %s.read.len111 = load i64, ptr %s.read.len110, align 8
  %s.read.len112 = and i64 %s.read.len111, 281474976710655
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load115, 0
  br i1 %idx.neg, label %idx_oob118, label %idx_big_check116

choice.exit108:                                   ; preds = %idx_ok117, %choice.then106
  %choice.res124 = phi i32 [ 92, %choice.then106 ], [ %coerce.trunc, %idx_ok117 ]
  store i32 %choice.res124, ptr %var.c, align 4
  %var.load125 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load125 to i64
  %call.res126 = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res126, label %choice.then127, label %choice.else128

idx_big_check116:                                 ; preds = %choice.else107
  %idx.big119 = icmp sge i64 %var.load115, %s.read.len112
  br i1 %idx.big119, label %idx_oob118, label %idx_ok117

idx_ok117:                                        ; preds = %abort.dead120, %idx_big_check116
  %s.byte.gep121 = getelementptr i8, ptr %s.read.data114, i64 %var.load115
  %s.byte122 = load i8, ptr %s.byte.gep121, align 1
  %s.byte.val123 = zext i8 %s.byte122 to i64
  %coerce.trunc = trunc i64 %s.byte.val123 to i32
  br label %choice.exit108

idx_oob118:                                       ; preds = %idx_big_check116, %choice.else107
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %idx_ok117

choice.then127:                                   ; preds = %choice.exit108
  %var.load130 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  %b.freeze.len131 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  %b.freeze.data132 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else128:                                   ; preds = %choice.exit108
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load419 = load i32, ptr %var.c, align 4
  %coerce.sext420 = sext i32 %var.load419 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext420, 128
  %br.cmp2 = icmp slt i64 %coerce.sext420, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext420, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len421 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len421, i64 %br.width)
  %sum422 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf423 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf423, label %str_overflow_abort425, label %b.rn.new.len424

choice.exit129:                                   ; preds = %br.done.85, %choice.exit161
  br label %loop.latch.81

b.freeze.check:                                   ; preds = %choice.then127
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data132, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data132, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data132, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len131, 1
  %arena.cur133 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data132, i64 %b.freeze.len131, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len131
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then127
  %b.freeze.data134 = phi ptr [ %b.freeze.data132, %choice.then127 ], [ %b.freeze.data132, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur135 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 16)
  %str.build.len.gep136 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len131, ptr %str.build.len.gep136, align 8
  %str.build.data.gep137 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data134, ptr %str.build.data.gep137, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load138 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %eq.lhs.len139 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len140 = and i64 %eq.lhs.len139, 281474976710655
  %eq.rhs.len = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len141 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len140, %eq.rhs.len141
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %b.freeze.done
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 1
  %eq.lhs.data142 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data142, ptr %eq.rhs.data, i64 %eq.lhs.len140)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %b.freeze.done
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %str.eq.merge
  %var.load143 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len144 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 0
  %eq.lhs.len145 = load i64, ptr %eq.lhs.len144, align 8
  %eq.lhs.len146 = and i64 %eq.lhs.len145, 281474976710655
  %eq.rhs.len147 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len148 = and i64 %eq.rhs.len147, 281474976710655
  %eq.len149 = icmp eq i64 %eq.lhs.len146, %eq.rhs.len148
  br i1 %eq.len149, label %str.eq.then150, label %str.eq.else151

and.82.else:                                      ; preds = %str.eq.merge
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge152
  %and.82.phi = phi i1 [ %str.neq159, %str.eq.merge152 ], [ %str.neq, %and.82.else ]
  br i1 %and.82.phi, label %choice.then160, label %choice.exit161

str.eq.then150:                                   ; preds = %and.82.then
  %eq.lhs.data153 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 1
  %eq.lhs.data154 = load ptr, ptr %eq.lhs.data153, align 8
  %eq.rhs.data155 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp156 = call i32 @memcmp(ptr %eq.lhs.data154, ptr %eq.rhs.data155, i64 %eq.lhs.len146)
  %eq.cmp.zero157 = icmp eq i32 %eq.memcmp156, 0
  br label %str.eq.merge152

str.eq.else151:                                   ; preds = %and.82.then
  br label %str.eq.merge152

str.eq.merge152:                                  ; preds = %str.eq.else151, %str.eq.then150
  %str.eq.result158 = phi i1 [ %eq.cmp.zero157, %str.eq.then150 ], [ false, %str.eq.else151 ]
  %str.neq159 = xor i1 %str.eq.result158, true
  br label %and.82.exit

choice.then160:                                   ; preds = %and.82.exit
  %var.load162 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len163 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %eq.lhs.len164 = load i64, ptr %eq.lhs.len163, align 8
  %eq.lhs.len165 = and i64 %eq.lhs.len164, 281474976710655
  %eq.rhs.len166 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len167 = and i64 %eq.rhs.len166, 281474976710655
  %eq.len168 = icmp eq i64 %eq.lhs.len165, %eq.rhs.len167
  br i1 %eq.len168, label %str.eq.then169, label %str.eq.else170

choice.exit161:                                   ; preds = %choice.exit180, %and.82.exit
  br label %choice.exit129

str.eq.then169:                                   ; preds = %choice.then160
  %eq.lhs.data172 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %eq.lhs.data173 = load ptr, ptr %eq.lhs.data172, align 8
  %eq.rhs.data174 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp175 = call i32 @memcmp(ptr %eq.lhs.data173, ptr %eq.rhs.data174, i64 %eq.lhs.len165)
  %eq.cmp.zero176 = icmp eq i32 %eq.memcmp175, 0
  br label %str.eq.merge171

str.eq.else170:                                   ; preds = %choice.then160
  br label %str.eq.merge171

str.eq.merge171:                                  ; preds = %str.eq.else170, %str.eq.then169
  %str.eq.result177 = phi i1 [ %eq.cmp.zero176, %str.eq.then169 ], [ false, %str.eq.else170 ]
  br i1 %str.eq.result177, label %choice.then178, label %choice.else179

choice.then178:                                   ; preds = %str.eq.merge171
  %var.load181 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else179:                                   ; preds = %str.eq.merge171
  %var.load390 = load ptr, ptr %var.seg, align 8
  %a.load391 = load ptr, ptr %var.segs, align 8
  %a.null392 = icmp eq ptr %a.load391, null
  br i1 %a.null392, label %a.create393, label %a.after394

choice.exit180:                                   ; preds = %a.store405, %choice.exit249
  br label %choice.exit161

a.create:                                         ; preds = %choice.then178
  %arena.cur182 = call ptr @dva_arena_current()
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = call ptr @dva_arena_current()
  %a.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 0
  store i64 0, ptr %a.len.gep186, align 8
  %a.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf185, ptr %a.data.gep187, align 8
  %a.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep188, align 8
  store ptr %a.create183, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then178
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query189 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query189, ptr %var.n_segs, align 8
  %var.load190 = load i64, ptr %var.n_segs, align 8
  %cmptmp191 = icmp sgt i64 %var.load190, 0
  br i1 %cmptmp191, label %and.83.then, label %and.83.else

and.83.then:                                      ; preds = %a.after
  %var.load192 = load ptr, ptr %var.segs, align 8
  %a.load193 = load ptr, ptr %var.segs, align 8
  %a.null194 = icmp eq ptr %a.load193, null
  br i1 %a.null194, label %a.create195, label %a.after196

and.83.else:                                      ; preds = %a.after
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %str.eq.merge239
  %and.83.phi = phi i1 [ %str.neq246, %str.eq.merge239 ], [ %cmptmp191, %and.83.else ]
  br i1 %and.83.phi, label %choice.then247, label %choice.else248

a.create195:                                      ; preds = %and.83.then
  %arena.cur197 = call ptr @dva_arena_current()
  %a.create198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 24)
  %arena.cur199 = call ptr @dva_arena_current()
  %a.buf200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 128)
  %a.len.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 0
  store i64 0, ptr %a.len.gep201, align 8
  %a.data.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 1
  store ptr %a.buf200, ptr %a.data.gep202, align 8
  %a.cap.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 2
  store i64 16, ptr %a.cap.gep203, align 8
  store ptr %a.create198, ptr %var.segs, align 8
  br label %a.after196

a.after196:                                       ; preds = %a.create195, %and.83.then
  %a.load2204 = load ptr, ptr %var.segs, align 8
  %var.load205 = load i64, ptr %var.n_segs, align 8
  %subtmp206 = sub i64 %var.load205, 1
  %a.rd.nonnull = icmp ne ptr %a.load2204, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after196
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 0
  %a.rd.len207 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp206, 0
  %a.rd.lt = icmp slt i64 %subtmp206, %a.rd.len207
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 1
  %a.rd.data208 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data208, i64 %subtmp206
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after196
  %arena.cur209 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 56)
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
  %arena.cur210 = call ptr @dva_arena_current()
  %err.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 56)
  %err.code.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 0
  store i64 4011, ptr %err.code.gep212, align 8
  %err.msg.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep213, align 8
  %err.file.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep214, align 8
  %err.line.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 3
  store i64 320, ptr %err.line.gep215, align 8
  %err.col.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 4
  store i64 57, ptr %err.col.gep216, align 8
  %err.ctx.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 5
  %err.ctx0.gep218 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 0
  store i64 %subtmp206, ptr %err.ctx0.gep218, align 8
  %err.ctx1.gep219 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 1
  store i64 %a.rd.len207, ptr %err.ctx1.gep219, align 8
  %err.p2i220 = ptrtoint ptr %err.alloc211 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i220, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag221 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag221, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %a.rd.done
  %ram.pay225 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay225 to ptr
  store ptr %pay.ptr, ptr %var._226, align 8
  br label %choice.exit224

choice.else223:                                   ; preds = %a.rd.done
  %ram.pay227 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr228 = inttoptr i64 %ram.pay227 to ptr
  store ptr %pay.ptr228, ptr %var._229, align 8
  br label %choice.exit224

choice.exit224:                                   ; preds = %choice.else223, %choice.then222
  %choice.res230 = phi ptr [ %pay.ptr, %choice.then222 ], [ @str.6.struct, %choice.else223 ]
  %eq.lhs.len231 = getelementptr inbounds { i64, ptr }, ptr %choice.res230, i32 0, i32 0
  %eq.lhs.len232 = load i64, ptr %eq.lhs.len231, align 8
  %eq.lhs.len233 = and i64 %eq.lhs.len232, 281474976710655
  %eq.rhs.len234 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len235 = and i64 %eq.rhs.len234, 281474976710655
  %eq.len236 = icmp eq i64 %eq.lhs.len233, %eq.rhs.len235
  br i1 %eq.len236, label %str.eq.then237, label %str.eq.else238

str.eq.then237:                                   ; preds = %choice.exit224
  %eq.lhs.data240 = getelementptr inbounds { i64, ptr }, ptr %choice.res230, i32 0, i32 1
  %eq.lhs.data241 = load ptr, ptr %eq.lhs.data240, align 8
  %eq.rhs.data242 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp243 = call i32 @memcmp(ptr %eq.lhs.data241, ptr %eq.rhs.data242, i64 %eq.lhs.len233)
  %eq.cmp.zero244 = icmp eq i32 %eq.memcmp243, 0
  br label %str.eq.merge239

str.eq.else238:                                   ; preds = %choice.exit224
  br label %str.eq.merge239

str.eq.merge239:                                  ; preds = %str.eq.else238, %str.eq.then237
  %str.eq.result245 = phi i1 [ %eq.cmp.zero244, %str.eq.then237 ], [ false, %str.eq.else238 ]
  %str.neq246 = xor i1 %str.eq.result245, true
  br label %and.83.exit

choice.then247:                                   ; preds = %and.83.exit
  %arena.cur250 = call ptr @dva_arena_current()
  %a.new251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 24)
  %arena.cur252 = call ptr @dva_arena_current()
  %a.buf253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 128)
  %a.len.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new251, i32 0, i32 0
  store i64 0, ptr %a.len.gep254, align 8
  %a.data.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new251, i32 0, i32 1
  store ptr %a.buf253, ptr %a.data.gep255, align 8
  %a.cap.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new251, i32 0, i32 2
  store i64 16, ptr %a.cap.gep256, align 8
  store ptr %a.new251, ptr %var.kept, align 8
  %var.load257 = load i64, ptr %var.n_segs, align 8
  %subtmp258 = sub i64 %var.load257, 1
  store i64 0, ptr %loop.idx.84, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.84

choice.else248:                                   ; preds = %and.83.exit
  %var.load360 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load360, true
  br i1 %nottmp, label %choice.then361, label %choice.exit362

choice.exit249:                                   ; preds = %choice.exit362, %a.after351
  br label %choice.exit180

loop.header.84:                                   ; preds = %loop.latch.84, %choice.then247
  %counter.load259 = load i64, ptr %loop.idx.84, align 8
  %loop.cond260 = icmp slt i64 %counter.load259, %subtmp258
  br i1 %loop.cond260, label %loop.body.84, label %loop.exit.nat.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i261 = sub i64 %counter.load259, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i261, ptr %var._i262, align 8
  store i64 %counter.load259, ptr %var._263, align 8
  store i64 %counter.load259, ptr %var.m, align 8
  %var.load264 = load ptr, ptr %var.segs, align 8
  %a.load265 = load ptr, ptr %var.segs, align 8
  %a.null266 = icmp eq ptr %a.load265, null
  br i1 %a.null266, label %a.create267, label %a.after268

loop.exit.nat.84:                                 ; preds = %loop.header.84
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load259, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %loop.exit.nat.84
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load347 = load ptr, ptr %var.kept, align 8
  %a.load348 = load ptr, ptr %var.kept, align 8
  %a.null349 = icmp eq ptr %a.load348, null
  br i1 %a.null349, label %a.create350, label %a.after351

a.create267:                                      ; preds = %loop.body.84
  %arena.cur269 = call ptr @dva_arena_current()
  %a.create270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 24)
  %arena.cur271 = call ptr @dva_arena_current()
  %a.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 128)
  %a.len.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 0
  store i64 0, ptr %a.len.gep273, align 8
  %a.data.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 1
  store ptr %a.buf272, ptr %a.data.gep274, align 8
  %a.cap.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 2
  store i64 16, ptr %a.cap.gep275, align 8
  store ptr %a.create270, ptr %var.segs, align 8
  br label %a.after268

a.after268:                                       ; preds = %a.create267, %loop.body.84
  %a.load2276 = load ptr, ptr %var.segs, align 8
  %var.load277 = load i64, ptr %var.m, align 8
  %a.rd.nonnull278 = icmp ne ptr %a.load2276, null
  br i1 %a.rd.nonnull278, label %a.rd.check279, label %a.rd.err.null281

a.rd.check279:                                    ; preds = %a.after268
  %a.rd.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2276, i32 0, i32 0
  %a.rd.len285 = load i64, ptr %a.rd.len284, align 8
  %a.rd.ge0286 = icmp sge i64 %var.load277, 0
  %a.rd.lt287 = icmp slt i64 %var.load277, %a.rd.len285
  %a.rd.bounds288 = and i1 %a.rd.ge0286, %a.rd.lt287
  br i1 %a.rd.bounds288, label %a.rd.ok280, label %a.rd.err.oob282

a.rd.ok280:                                       ; preds = %a.rd.check279
  %a.rd.data289 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2276, i32 0, i32 1
  %a.rd.data290 = load ptr, ptr %a.rd.data289, align 8
  %a.rd.elem.gep291 = getelementptr i64, ptr %a.rd.data290, i64 %var.load277
  %a.rd.elem292 = load i64, ptr %a.rd.elem.gep291, align 8
  br label %a.rd.done283

a.rd.err.null281:                                 ; preds = %a.after268
  %arena.cur293 = call ptr @dva_arena_current()
  %err.alloc294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 56)
  %err.code.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 0
  store i64 4011, ptr %err.code.gep295, align 8
  %err.msg.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep296, align 8
  %err.file.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep297, align 8
  %err.line.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 3
  store i64 323, ptr %err.line.gep298, align 8
  %err.col.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 4
  store i64 68, ptr %err.col.gep299, align 8
  %err.ctx.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc294, i32 0, i32 5
  %err.ctx0.gep301 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep300, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep301, align 8
  %err.ctx1.gep302 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep300, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep302, align 8
  %err.p2i303 = ptrtoint ptr %err.alloc294 to i64
  br label %a.rd.done283

a.rd.err.oob282:                                  ; preds = %a.rd.check279
  %arena.cur304 = call ptr @dva_arena_current()
  %err.alloc305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 56)
  %err.code.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 0
  store i64 4011, ptr %err.code.gep306, align 8
  %err.msg.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep307, align 8
  %err.file.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep308, align 8
  %err.line.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 3
  store i64 323, ptr %err.line.gep309, align 8
  %err.col.gep310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 4
  store i64 68, ptr %err.col.gep310, align 8
  %err.ctx.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc305, i32 0, i32 5
  %err.ctx0.gep312 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep311, i32 0, i32 0
  store i64 %var.load277, ptr %err.ctx0.gep312, align 8
  %err.ctx1.gep313 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep311, i32 0, i32 1
  store i64 %a.rd.len285, ptr %err.ctx1.gep313, align 8
  %err.p2i314 = ptrtoint ptr %err.alloc305 to i64
  br label %a.rd.done283

a.rd.done283:                                     ; preds = %a.rd.err.oob282, %a.rd.err.null281, %a.rd.ok280
  %a.rd.tag315 = phi i1 [ true, %a.rd.ok280 ], [ false, %a.rd.err.null281 ], [ false, %a.rd.err.oob282 ]
  %a.rd.pay316 = phi i64 [ %a.rd.elem292, %a.rd.ok280 ], [ %err.p2i303, %a.rd.err.null281 ], [ %err.p2i314, %a.rd.err.oob282 ]
  %ram.tag317 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag315, 0
  %ram.pay318 = insertvalue { i1, i64 } %ram.tag317, i64 %a.rd.pay316, 1
  %ram.tag319 = extractvalue { i1, i64 } %ram.pay318, 0
  br i1 %ram.tag319, label %choice.then320, label %choice.else321

choice.then320:                                   ; preds = %a.rd.done283
  %ram.pay323 = extractvalue { i1, i64 } %ram.pay318, 1
  %pay.ptr324 = inttoptr i64 %ram.pay323 to ptr
  store ptr %pay.ptr324, ptr %var._325, align 8
  br label %choice.exit322

choice.else321:                                   ; preds = %a.rd.done283
  %ram.pay326 = extractvalue { i1, i64 } %ram.pay318, 1
  %pay.ptr327 = inttoptr i64 %ram.pay326 to ptr
  store ptr %pay.ptr327, ptr %var._328, align 8
  br label %choice.exit322

choice.exit322:                                   ; preds = %choice.else321, %choice.then320
  %choice.res329 = phi ptr [ %pay.ptr324, %choice.then320 ], [ @str.6.struct, %choice.else321 ]
  %a.load330 = load ptr, ptr %var.kept, align 8
  %a.null331 = icmp eq ptr %a.load330, null
  br i1 %a.null331, label %a.create332, label %a.after333

a.create332:                                      ; preds = %choice.exit322
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
  store ptr %a.create335, ptr %var.kept, align 8
  br label %a.after333

a.after333:                                       ; preds = %a.create332, %choice.exit322
  %a.load2341 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after333
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  %a.len342 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 2
  %a.cap343 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len342, %a.cap343
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2341)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 1
  %a.cur.data344 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  %a.cur.len345 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data344, i64 %a.cur.len345
  %slot.p2i = ptrtoint ptr %choice.res329 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len345, 1
  %b.len.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep346, align 8
  br label %loop.latch.84

a.create350:                                      ; preds = %loop.exit.84
  %arena.cur352 = call ptr @dva_arena_current()
  %a.create353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 24)
  %arena.cur354 = call ptr @dva_arena_current()
  %a.buf355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 128)
  %a.len.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 0
  store i64 0, ptr %a.len.gep356, align 8
  %a.data.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 1
  store ptr %a.buf355, ptr %a.data.gep357, align 8
  %a.cap.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 2
  store i64 16, ptr %a.cap.gep358, align 8
  store ptr %a.create353, ptr %var.kept, align 8
  br label %a.after351

a.after351:                                       ; preds = %a.create350, %loop.exit.84
  %a.load2359 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2359, ptr %var.segs, align 8
  br label %choice.exit249

choice.then361:                                   ; preds = %choice.else248
  %a.load363 = load ptr, ptr %var.segs, align 8
  %a.null364 = icmp eq ptr %a.load363, null
  br i1 %a.null364, label %a.create365, label %a.after366

choice.exit362:                                   ; preds = %a.store377, %choice.else248
  br label %choice.exit249

a.create365:                                      ; preds = %choice.then361
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
  store ptr %a.create368, ptr %var.segs, align 8
  br label %a.after366

a.after366:                                       ; preds = %a.create365, %choice.then361
  %a.load2374 = load ptr, ptr %var.segs, align 8
  br label %a.check375

a.check375:                                       ; preds = %a.after366
  %a.len378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  %a.len379 = load i64, ptr %a.len378, align 8
  %a.cap380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 2
  %a.cap381 = load i64, ptr %a.cap380, align 8
  %a.needs.grow382 = icmp eq i64 %a.len379, %a.cap381
  br i1 %a.needs.grow382, label %a.grow376, label %a.store377

a.grow376:                                        ; preds = %a.check375
  call void @dva_array_grow(ptr %a.load2374)
  br label %a.store377

a.store377:                                       ; preds = %a.grow376, %a.check375
  %a.cur.data383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 1
  %a.cur.data384 = load ptr, ptr %a.cur.data383, align 8
  %a.cur.len385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  %a.cur.len386 = load i64, ptr %a.cur.len385, align 8
  %a.elem.gep387 = getelementptr i64, ptr %a.cur.data384, i64 %a.cur.len386
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep387, align 8
  %a.next.len388 = add i64 %a.cur.len386, 1
  %b.len.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  store i64 %a.next.len388, ptr %b.len.gep389, align 8
  br label %choice.exit362

a.create393:                                      ; preds = %choice.else179
  %arena.cur395 = call ptr @dva_arena_current()
  %a.create396 = call ptr @dva_arena_alloc(ptr %arena.cur395, i64 24)
  %arena.cur397 = call ptr @dva_arena_current()
  %a.buf398 = call ptr @dva_arena_alloc(ptr %arena.cur397, i64 128)
  %a.len.gep399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create396, i32 0, i32 0
  store i64 0, ptr %a.len.gep399, align 8
  %a.data.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create396, i32 0, i32 1
  store ptr %a.buf398, ptr %a.data.gep400, align 8
  %a.cap.gep401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create396, i32 0, i32 2
  store i64 16, ptr %a.cap.gep401, align 8
  store ptr %a.create396, ptr %var.segs, align 8
  br label %a.after394

a.after394:                                       ; preds = %a.create393, %choice.else179
  %a.load2402 = load ptr, ptr %var.segs, align 8
  br label %a.check403

a.check403:                                       ; preds = %a.after394
  %a.len406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2402, i32 0, i32 0
  %a.len407 = load i64, ptr %a.len406, align 8
  %a.cap408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2402, i32 0, i32 2
  %a.cap409 = load i64, ptr %a.cap408, align 8
  %a.needs.grow410 = icmp eq i64 %a.len407, %a.cap409
  br i1 %a.needs.grow410, label %a.grow404, label %a.store405

a.grow404:                                        ; preds = %a.check403
  call void @dva_array_grow(ptr %a.load2402)
  br label %a.store405

a.store405:                                       ; preds = %a.grow404, %a.check403
  %a.cur.data411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2402, i32 0, i32 1
  %a.cur.data412 = load ptr, ptr %a.cur.data411, align 8
  %a.cur.len413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2402, i32 0, i32 0
  %a.cur.len414 = load i64, ptr %a.cur.len413, align 8
  %a.elem.gep415 = getelementptr i64, ptr %a.cur.data412, i64 %a.cur.len414
  %slot.p2i416 = ptrtoint ptr %var.load390 to i64
  store i64 %slot.p2i416, ptr %a.elem.gep415, align 8
  %a.next.len417 = add i64 %a.cur.len414, 1
  %b.len.gep418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2402, i32 0, i32 0
  store i64 %a.next.len417, ptr %b.len.gep418, align 8
  br label %choice.exit180

b.rn.new.len424:                                  ; preds = %abort.dead426, %choice.else128
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap427 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap427, %sum422
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort425:                            ; preds = %choice.else128
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead426:                                    ; No predecessors!
  br label %b.rn.new.len424

b.grow2:                                          ; preds = %b.rn.new.len424
  %b.cap2 = mul i64 %b.cap427, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum422
  %b.new.cap = select i1 %b.cap.need, i64 %sum422, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2428 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2429 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum430 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf431 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf431, label %str_overflow_abort433, label %b.new.buf.len2432

b.nogrow2:                                        ; preds = %b.rn.new.len424
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2432
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data436 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data436, i64 %b.rn.cur.len421
  br i1 %br.cmp1, label %br.b1.85, label %br.c2.85

b.new.buf.len2432:                                ; preds = %abort.dead434, %b.grow2
  %arena.cur435 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 %sum430)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2429, i64 %b.cur.len2428, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2428
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort433:                            ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead434:                                    ; No predecessors!
  br label %b.new.buf.len2432

br.b1.85:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext420 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.85

br.c2.85:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.85, label %br.c3.85

br.b2.85:                                         ; preds = %br.c2.85
  %br.sh6 = lshr i64 %coerce.sext420, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext420, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.85

br.c3.85:                                         ; preds = %br.c2.85
  br i1 %br.cmp3, label %br.b3.85, label %br.b4.85

br.b3.85:                                         ; preds = %br.c3.85
  %br.sh12 = lshr i64 %coerce.sext420, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext420, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext420, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.85

br.b4.85:                                         ; preds = %br.c3.85
  %br.sh18 = lshr i64 %coerce.sext420, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext420, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext420, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext420, 63
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
  %br.nul = getelementptr i8, ptr %b.rn.data436, i64 %sum422
  store i8 0, ptr %br.nul, align 1
  %b.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum422, ptr %b.len.gep437, align 8
  br label %choice.exit129

str_ok445:                                        ; preds = %abort.dead454, %tag.slow_check448, %tag.gen_check447, %loop.exit.81
  %addtmp455 = add i64 %str.len.query443, 2
  %cap.neg = icmp slt i64 %addtmp455, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp455
  %b.data.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len459 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum460 = extractvalue { i64, i1 } %b.buf.len459, 0
  %ovf461 = extractvalue { i64, i1 } %b.buf.len459, 1
  br i1 %ovf461, label %str_overflow_abort463, label %b.buf.len462

tag.gen_check447:                                 ; preds = %loop.exit.81
  %active.gen450 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok451 = icmp eq i64 %str.tag444, %active.gen450
  br i1 %tag.fast.ok451, label %str_ok445, label %tag.slow_check448

tag.slow_check448:                                ; preds = %tag.gen_check447
  %arena.cur452 = call ptr @dva_arena_current()
  %tag.valid453 = call i1 @dva_arena_validate_tag(ptr %arena.cur452, i64 %str.tag444)
  br i1 %tag.valid453, label %str_ok445, label %tag.stale449

tag.stale449:                                     ; preds = %tag.slow_check448
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead454:                                    ; No predecessors!
  br label %str_ok445

b.buf.len462:                                     ; preds = %abort.dead464, %str_ok445
  %arena.cur465 = call ptr @dva_arena_current()
  %b.buf466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 %sum460)
  %b.nul0467 = getelementptr i8, ptr %b.buf466, i64 0
  store i8 0, ptr %b.nul0467, align 1
  store i64 0, ptr %b.len.gep457, align 8
  store ptr %b.buf466, ptr %b.data.gep456, align 8
  store i64 %cap.safe, ptr %b.cap.gep458, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %b.load468 = load ptr, ptr %var.out, align 8
  %var.load469 = load ptr, ptr %var.prefix, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load469, i32 0, i32 0
  %app.str.len470 = load i64, ptr %app.str.len, align 8
  %app.str.len471 = and i64 %app.str.len470, 281474976710655
  %str.tag472 = lshr i64 %app.str.len470, 48
  %tag.immortal474 = icmp eq i64 %str.tag472, 0
  br i1 %tag.immortal474, label %str_ok473, label %tag.gen_check475

str_overflow_abort463:                            ; preds = %str_ok445
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead464:                                    ; No predecessors!
  br label %b.buf.len462

str_ok473:                                        ; preds = %abort.dead482, %tag.slow_check476, %tag.gen_check475, %b.buf.len462
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load469, i32 0, i32 1
  %app.str.data483 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.app.cur.len484 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len484, i64 %app.str.len471)
  %sum485 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf486 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf486, label %str_overflow_abort488, label %b.app.new.len487

tag.gen_check475:                                 ; preds = %b.buf.len462
  %active.gen478 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok479 = icmp eq i64 %str.tag472, %active.gen478
  br i1 %tag.fast.ok479, label %str_ok473, label %tag.slow_check476

tag.slow_check476:                                ; preds = %tag.gen_check475
  %arena.cur480 = call ptr @dva_arena_current()
  %tag.valid481 = call i1 @dva_arena_validate_tag(ptr %arena.cur480, i64 %str.tag472)
  br i1 %tag.valid481, label %str_ok473, label %tag.stale477

tag.stale477:                                     ; preds = %tag.slow_check476
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead482:                                    ; No predecessors!
  br label %str_ok473

b.app.new.len487:                                 ; preds = %abort.dead489, %str_ok473
  %b.cap490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  %b.cap491 = load i64, ptr %b.cap490, align 8
  %b.need.grow492 = icmp slt i64 %b.cap491, %sum485
  br i1 %b.need.grow492, label %b.grow2493, label %b.nogrow2494

str_overflow_abort488:                            ; preds = %str_ok473
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead489:                                    ; No predecessors!
  br label %b.app.new.len487

b.grow2493:                                       ; preds = %b.app.new.len487
  %b.cap2496 = mul i64 %b.cap491, 2
  %b.cap.small497 = icmp slt i64 %b.cap2496, 16
  %b.cap.grow498 = select i1 %b.cap.small497, i64 16, i64 %b.cap2496
  %b.cap.need499 = icmp slt i64 %b.cap.grow498, %sum485
  %b.new.cap500 = select i1 %b.cap.need499, i64 %sum485, i64 %b.cap.grow498
  %b.cur.len2501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.cur.len2502 = load i64, ptr %b.cur.len2501, align 8
  %b.cur.data2503 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.cur.data2504 = load ptr, ptr %b.cur.data2503, align 8
  %b.new.buf.len2505 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap500, i64 1)
  %sum506 = extractvalue { i64, i1 } %b.new.buf.len2505, 0
  %ovf507 = extractvalue { i64, i1 } %b.new.buf.len2505, 1
  br i1 %ovf507, label %str_overflow_abort509, label %b.new.buf.len2508

b.nogrow2494:                                     ; preds = %b.app.new.len487
  br label %b.grow_done495

b.grow_done495:                                   ; preds = %b.nogrow2494, %b.new.buf.len2508
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.app.data516 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data516, i64 %b.app.cur.len484
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data483, i64 %app.str.len471, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data516, i64 %sum485
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  store i64 %sum485, ptr %b.len.gep517, align 8
  %var.load518 = load ptr, ptr %var.segs, align 8
  %a.load519 = load ptr, ptr %var.segs, align 8
  %a.null520 = icmp eq ptr %a.load519, null
  br i1 %a.null520, label %a.create521, label %a.after522

b.new.buf.len2508:                                ; preds = %abort.dead510, %b.grow2493
  %arena.cur511 = call ptr @dva_arena_current()
  %b.new.buf2512 = call ptr @dva_arena_alloc(ptr %arena.cur511, i64 %sum506)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2512, ptr align 1 %b.cur.data2504, i64 %b.cur.len2502, i1 false)
  %b.grow2.nul513 = getelementptr i8, ptr %b.new.buf2512, i64 %b.cur.len2502
  store i8 0, ptr %b.grow2.nul513, align 1
  %b.new.data2.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  store ptr %b.new.buf2512, ptr %b.new.data2.gep514, align 8
  %b.new.cap2.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  store i64 %b.new.cap500, ptr %b.new.cap2.gep515, align 8
  br label %b.grow_done495

str_overflow_abort509:                            ; preds = %b.grow2493
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead510:                                    ; No predecessors!
  br label %b.new.buf.len2508

a.create521:                                      ; preds = %b.grow_done495
  %arena.cur523 = call ptr @dva_arena_current()
  %a.create524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 24)
  %arena.cur525 = call ptr @dva_arena_current()
  %a.buf526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 128)
  %a.len.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 0
  store i64 0, ptr %a.len.gep527, align 8
  %a.data.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 1
  store ptr %a.buf526, ptr %a.data.gep528, align 8
  %a.cap.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 2
  store i64 16, ptr %a.cap.gep529, align 8
  store ptr %a.create524, ptr %var.segs, align 8
  br label %a.after522

a.after522:                                       ; preds = %a.create521, %b.grow_done495
  %a.load2530 = load ptr, ptr %var.segs, align 8
  %a.len.query531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2530, i32 0, i32 0
  %a.len.query532 = load i64, ptr %a.len.query531, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after522
  %counter.load533 = load i64, ptr %loop.idx.86, align 8
  %loop.cond534 = icmp slt i64 %counter.load533, %a.len.query532
  br i1 %loop.cond534, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i535 = sub i64 %counter.load533, 0
  store i64 1, ptr %loop.step.86, align 8
  store i64 %loop.rel.i535, ptr %var._i536, align 8
  store i64 %counter.load533, ptr %var._537, align 8
  store i64 %counter.load533, ptr %var.idx, align 8
  %var.load538 = load i64, ptr %var.idx, align 8
  %cmptmp539 = icmp sgt i64 %var.load538, 0
  br i1 %cmptmp539, label %choice.then540, label %choice.exit541

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %b.grow_done673
  %step.val699 = load i64, ptr %loop.step.86, align 8
  %loop.next700 = add i64 %counter.load533, %step.val699
  store i64 %loop.next700, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %var.load701 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load701, i32 0, i32 0
  %b.len702 = load i64, ptr %b.len, align 8
  %cmptmp703 = icmp eq i64 %b.len702, 0
  br i1 %cmptmp703, label %choice.then704, label %choice.else705

choice.then540:                                   ; preds = %loop.body.86
  %b.load542 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len543 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 0
  %b.rn.cur.len544 = load i64, ptr %b.rn.cur.len543, align 8
  %b.rn.new.len545 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len544, i64 1)
  %sum546 = extractvalue { i64, i1 } %b.rn.new.len545, 0
  %ovf547 = extractvalue { i64, i1 } %b.rn.new.len545, 1
  br i1 %ovf547, label %str_overflow_abort549, label %b.rn.new.len548

choice.exit541:                                   ; preds = %br.done.87, %loop.body.86
  %b.load588 = load ptr, ptr %var.out, align 8
  %var.load589 = load ptr, ptr %var.segs, align 8
  %a.load590 = load ptr, ptr %var.segs, align 8
  %a.null591 = icmp eq ptr %a.load590, null
  br i1 %a.null591, label %a.create592, label %a.after593

b.rn.new.len548:                                  ; preds = %abort.dead550, %choice.then540
  %b.cap551 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 2
  %b.cap552 = load i64, ptr %b.cap551, align 8
  %b.need.grow553 = icmp slt i64 %b.cap552, %sum546
  br i1 %b.need.grow553, label %b.grow2554, label %b.nogrow2555

str_overflow_abort549:                            ; preds = %choice.then540
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead550:                                    ; No predecessors!
  br label %b.rn.new.len548

b.grow2554:                                       ; preds = %b.rn.new.len548
  %b.cap2557 = mul i64 %b.cap552, 2
  %b.cap.small558 = icmp slt i64 %b.cap2557, 16
  %b.cap.grow559 = select i1 %b.cap.small558, i64 16, i64 %b.cap2557
  %b.cap.need560 = icmp slt i64 %b.cap.grow559, %sum546
  %b.new.cap561 = select i1 %b.cap.need560, i64 %sum546, i64 %b.cap.grow559
  %b.cur.len2562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 0
  %b.cur.len2563 = load i64, ptr %b.cur.len2562, align 8
  %b.cur.data2564 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 1
  %b.cur.data2565 = load ptr, ptr %b.cur.data2564, align 8
  %b.new.buf.len2566 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap561, i64 1)
  %sum567 = extractvalue { i64, i1 } %b.new.buf.len2566, 0
  %ovf568 = extractvalue { i64, i1 } %b.new.buf.len2566, 1
  br i1 %ovf568, label %str_overflow_abort570, label %b.new.buf.len2569

b.nogrow2555:                                     ; preds = %b.rn.new.len548
  br label %b.grow_done556

b.grow_done556:                                   ; preds = %b.nogrow2555, %b.new.buf.len2569
  %b.rn.data577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 1
  %b.rn.data578 = load ptr, ptr %b.rn.data577, align 8
  %b.rn.dst579 = getelementptr i8, ptr %b.rn.data578, i64 %b.rn.cur.len544
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2569:                                ; preds = %abort.dead571, %b.grow2554
  %arena.cur572 = call ptr @dva_arena_current()
  %b.new.buf2573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 %sum567)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2573, ptr align 1 %b.cur.data2565, i64 %b.cur.len2563, i1 false)
  %b.grow2.nul574 = getelementptr i8, ptr %b.new.buf2573, i64 %b.cur.len2563
  store i8 0, ptr %b.grow2.nul574, align 1
  %b.new.data2.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 1
  store ptr %b.new.buf2573, ptr %b.new.data2.gep575, align 8
  %b.new.cap2.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 2
  store i64 %b.new.cap561, ptr %b.new.cap2.gep576, align 8
  br label %b.grow_done556

str_overflow_abort570:                            ; preds = %b.grow2554
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead571:                                    ; No predecessors!
  br label %b.new.buf.len2569

br.b1.87:                                         ; preds = %b.grow_done556
  store i8 92, ptr %b.rn.dst579, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done556
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -63, ptr %b.rn.dst579, align 1
  %br.dst1580 = getelementptr i8, ptr %b.rn.dst579, i64 1
  store i8 -100, ptr %br.dst1580, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst579, align 1
  %br.dst1.3581 = getelementptr i8, ptr %b.rn.dst579, i64 1
  store i8 -127, ptr %br.dst1.3581, align 1
  %br.dst2.3582 = getelementptr i8, ptr %b.rn.dst579, i64 2
  store i8 -100, ptr %br.dst2.3582, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst579, align 1
  %br.dst1.4583 = getelementptr i8, ptr %b.rn.dst579, i64 1
  store i8 -128, ptr %br.dst1.4583, align 1
  %br.dst2.4584 = getelementptr i8, ptr %b.rn.dst579, i64 2
  store i8 -127, ptr %br.dst2.4584, align 1
  %br.dst3.4585 = getelementptr i8, ptr %b.rn.dst579, i64 3
  store i8 -100, ptr %br.dst3.4585, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul586 = getelementptr i8, ptr %b.rn.data578, i64 %sum546
  store i8 0, ptr %br.nul586, align 1
  %b.len.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load542, i32 0, i32 0
  store i64 %sum546, ptr %b.len.gep587, align 8
  br label %choice.exit541

a.create592:                                      ; preds = %choice.exit541
  %arena.cur594 = call ptr @dva_arena_current()
  %a.create595 = call ptr @dva_arena_alloc(ptr %arena.cur594, i64 24)
  %arena.cur596 = call ptr @dva_arena_current()
  %a.buf597 = call ptr @dva_arena_alloc(ptr %arena.cur596, i64 128)
  %a.len.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 0
  store i64 0, ptr %a.len.gep598, align 8
  %a.data.gep599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 1
  store ptr %a.buf597, ptr %a.data.gep599, align 8
  %a.cap.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create595, i32 0, i32 2
  store i64 16, ptr %a.cap.gep600, align 8
  store ptr %a.create595, ptr %var.segs, align 8
  br label %a.after593

a.after593:                                       ; preds = %a.create592, %choice.exit541
  %a.load2601 = load ptr, ptr %var.segs, align 8
  %var.load602 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull603 = icmp ne ptr %a.load2601, null
  br i1 %a.rd.nonnull603, label %a.rd.check604, label %a.rd.err.null606

a.rd.check604:                                    ; preds = %a.after593
  %a.rd.len609 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2601, i32 0, i32 0
  %a.rd.len610 = load i64, ptr %a.rd.len609, align 8
  %a.rd.ge0611 = icmp sge i64 %var.load602, 0
  %a.rd.lt612 = icmp slt i64 %var.load602, %a.rd.len610
  %a.rd.bounds613 = and i1 %a.rd.ge0611, %a.rd.lt612
  br i1 %a.rd.bounds613, label %a.rd.ok605, label %a.rd.err.oob607

a.rd.ok605:                                       ; preds = %a.rd.check604
  %a.rd.data614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2601, i32 0, i32 1
  %a.rd.data615 = load ptr, ptr %a.rd.data614, align 8
  %a.rd.elem.gep616 = getelementptr i64, ptr %a.rd.data615, i64 %var.load602
  %a.rd.elem617 = load i64, ptr %a.rd.elem.gep616, align 8
  br label %a.rd.done608

a.rd.err.null606:                                 ; preds = %a.after593
  %arena.cur618 = call ptr @dva_arena_current()
  %err.alloc619 = call ptr @dva_arena_alloc(ptr %arena.cur618, i64 56)
  %err.code.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 0
  store i64 4011, ptr %err.code.gep620, align 8
  %err.msg.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep621, align 8
  %err.file.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep622, align 8
  %err.line.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 3
  store i64 333, ptr %err.line.gep623, align 8
  %err.col.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 4
  store i64 25, ptr %err.col.gep624, align 8
  %err.ctx.gep625 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc619, i32 0, i32 5
  %err.ctx0.gep626 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep625, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep626, align 8
  %err.ctx1.gep627 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep625, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep627, align 8
  %err.p2i628 = ptrtoint ptr %err.alloc619 to i64
  br label %a.rd.done608

a.rd.err.oob607:                                  ; preds = %a.rd.check604
  %arena.cur629 = call ptr @dva_arena_current()
  %err.alloc630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 56)
  %err.code.gep631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 0
  store i64 4011, ptr %err.code.gep631, align 8
  %err.msg.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep632, align 8
  %err.file.gep633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep633, align 8
  %err.line.gep634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 3
  store i64 333, ptr %err.line.gep634, align 8
  %err.col.gep635 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 4
  store i64 25, ptr %err.col.gep635, align 8
  %err.ctx.gep636 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc630, i32 0, i32 5
  %err.ctx0.gep637 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep636, i32 0, i32 0
  store i64 %var.load602, ptr %err.ctx0.gep637, align 8
  %err.ctx1.gep638 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep636, i32 0, i32 1
  store i64 %a.rd.len610, ptr %err.ctx1.gep638, align 8
  %err.p2i639 = ptrtoint ptr %err.alloc630 to i64
  br label %a.rd.done608

a.rd.done608:                                     ; preds = %a.rd.err.oob607, %a.rd.err.null606, %a.rd.ok605
  %a.rd.tag640 = phi i1 [ true, %a.rd.ok605 ], [ false, %a.rd.err.null606 ], [ false, %a.rd.err.oob607 ]
  %a.rd.pay641 = phi i64 [ %a.rd.elem617, %a.rd.ok605 ], [ %err.p2i628, %a.rd.err.null606 ], [ %err.p2i639, %a.rd.err.oob607 ]
  %ram.tag642 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag640, 0
  %ram.pay643 = insertvalue { i1, i64 } %ram.tag642, i64 %a.rd.pay641, 1
  %ram.tag644 = extractvalue { i1, i64 } %ram.pay643, 0
  br i1 %ram.tag644, label %choice.then645, label %choice.else646

choice.then645:                                   ; preds = %a.rd.done608
  %ram.pay648 = extractvalue { i1, i64 } %ram.pay643, 1
  %pay.ptr649 = inttoptr i64 %ram.pay648 to ptr
  store ptr %pay.ptr649, ptr %var._650, align 8
  br label %choice.exit647

choice.else646:                                   ; preds = %a.rd.done608
  %ram.pay651 = extractvalue { i1, i64 } %ram.pay643, 1
  %pay.ptr652 = inttoptr i64 %ram.pay651 to ptr
  store ptr %pay.ptr652, ptr %var._653, align 8
  br label %choice.exit647

choice.exit647:                                   ; preds = %choice.else646, %choice.then645
  %choice.res654 = phi ptr [ %pay.ptr649, %choice.then645 ], [ @str.6.struct, %choice.else646 ]
  %app.str.len655 = getelementptr inbounds { i64, ptr }, ptr %choice.res654, i32 0, i32 0
  %app.str.len656 = load i64, ptr %app.str.len655, align 8
  %app.str.len657 = and i64 %app.str.len656, 281474976710655
  %app.str.data658 = getelementptr inbounds { i64, ptr }, ptr %choice.res654, i32 0, i32 1
  %app.str.data659 = load ptr, ptr %app.str.data658, align 8
  %b.app.cur.len660 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 0
  %b.app.cur.len661 = load i64, ptr %b.app.cur.len660, align 8
  %b.app.new.len662 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len661, i64 %app.str.len657)
  %sum663 = extractvalue { i64, i1 } %b.app.new.len662, 0
  %ovf664 = extractvalue { i64, i1 } %b.app.new.len662, 1
  br i1 %ovf664, label %str_overflow_abort666, label %b.app.new.len665

b.app.new.len665:                                 ; preds = %abort.dead667, %choice.exit647
  %b.cap668 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 2
  %b.cap669 = load i64, ptr %b.cap668, align 8
  %b.need.grow670 = icmp slt i64 %b.cap669, %sum663
  br i1 %b.need.grow670, label %b.grow2671, label %b.nogrow2672

str_overflow_abort666:                            ; preds = %choice.exit647
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead667:                                    ; No predecessors!
  br label %b.app.new.len665

b.grow2671:                                       ; preds = %b.app.new.len665
  %b.cap2674 = mul i64 %b.cap669, 2
  %b.cap.small675 = icmp slt i64 %b.cap2674, 16
  %b.cap.grow676 = select i1 %b.cap.small675, i64 16, i64 %b.cap2674
  %b.cap.need677 = icmp slt i64 %b.cap.grow676, %sum663
  %b.new.cap678 = select i1 %b.cap.need677, i64 %sum663, i64 %b.cap.grow676
  %b.cur.len2679 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 0
  %b.cur.len2680 = load i64, ptr %b.cur.len2679, align 8
  %b.cur.data2681 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 1
  %b.cur.data2682 = load ptr, ptr %b.cur.data2681, align 8
  %b.new.buf.len2683 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap678, i64 1)
  %sum684 = extractvalue { i64, i1 } %b.new.buf.len2683, 0
  %ovf685 = extractvalue { i64, i1 } %b.new.buf.len2683, 1
  br i1 %ovf685, label %str_overflow_abort687, label %b.new.buf.len2686

b.nogrow2672:                                     ; preds = %b.app.new.len665
  br label %b.grow_done673

b.grow_done673:                                   ; preds = %b.nogrow2672, %b.new.buf.len2686
  %b.app.data694 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 1
  %b.app.data695 = load ptr, ptr %b.app.data694, align 8
  %b.app.dst696 = getelementptr i8, ptr %b.app.data695, i64 %b.app.cur.len661
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst696, ptr align 1 %app.str.data659, i64 %app.str.len657, i1 false)
  %b.app.nul697 = getelementptr i8, ptr %b.app.data695, i64 %sum663
  store i8 0, ptr %b.app.nul697, align 1
  %b.len.gep698 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 0
  store i64 %sum663, ptr %b.len.gep698, align 8
  br label %loop.latch.86

b.new.buf.len2686:                                ; preds = %abort.dead688, %b.grow2671
  %arena.cur689 = call ptr @dva_arena_current()
  %b.new.buf2690 = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 %sum684)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2690, ptr align 1 %b.cur.data2682, i64 %b.cur.len2680, i1 false)
  %b.grow2.nul691 = getelementptr i8, ptr %b.new.buf2690, i64 %b.cur.len2680
  store i8 0, ptr %b.grow2.nul691, align 1
  %b.new.data2.gep692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 1
  store ptr %b.new.buf2690, ptr %b.new.data2.gep692, align 8
  %b.new.cap2.gep693 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load588, i32 0, i32 2
  store i64 %b.new.cap678, ptr %b.new.cap2.gep693, align 8
  br label %b.grow_done673

str_overflow_abort687:                            ; preds = %b.grow2671
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead688:                                    ; No predecessors!
  br label %b.new.buf.len2686

choice.then704:                                   ; preds = %loop.exit.86
  br label %choice.exit706

choice.else705:                                   ; preds = %loop.exit.86
  %var.load707 = load ptr, ptr %var.out, align 8
  %b.freeze.len708 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load707, i32 0, i32 0
  %b.freeze.len709 = load i64, ptr %b.freeze.len708, align 8
  %b.freeze.data710 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load707, i32 0, i32 1
  %b.freeze.data711 = load ptr, ptr %b.freeze.data710, align 8
  %b.freeze.arena712 = call ptr @dva_arena_current()
  %b.freeze.nc.gep713 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena712, i32 0, i32 1
  %b.freeze.nc714 = load i64, ptr %b.freeze.nc.gep713, align 8
  %b.freeze.has.chunk715 = icmp sgt i64 %b.freeze.nc714, 0
  br i1 %b.freeze.has.chunk715, label %b.freeze.check716, label %b.freeze.done718

choice.exit706:                                   ; preds = %b.freeze.done718, %choice.then704
  %choice.res746 = phi ptr [ @str.5.struct, %choice.then704 ], [ %builder.freeze740, %b.freeze.done718 ]
  %ret.pack747 = load { i64, ptr }, ptr %choice.res746, align 8
  ret { i64, ptr } %ret.pack747

b.freeze.check716:                                ; preds = %choice.else705
  %b.freeze.last.idx719 = sub i64 %b.freeze.nc714, 1
  %b.freeze.chunks.gep720 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena712, i32 0, i32 3
  %b.freeze.chunk.slot721 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep720, i64 0, i64 %b.freeze.last.idx719
  %b.freeze.last.chunk722 = load ptr, ptr %b.freeze.chunk.slot721, align 8
  %b.freeze.off.gep723 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena712, i32 0, i32 2
  %b.freeze.off724 = load i64, ptr %b.freeze.off.gep723, align 8
  %b.freeze.bump725 = getelementptr i8, ptr %b.freeze.last.chunk722, i64 %b.freeze.off724
  %b.freeze.cap.gep726 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena712, i32 0, i32 0
  %b.freeze.cap727 = load i64, ptr %b.freeze.cap.gep726, align 8
  %b.freeze.chunk.end728 = getelementptr i8, ptr %b.freeze.last.chunk722, i64 %b.freeze.cap727
  %b.freeze.ge.chunk729 = icmp uge ptr %b.freeze.data711, %b.freeze.last.chunk722
  %b.freeze.lt.end730 = icmp ult ptr %b.freeze.data711, %b.freeze.chunk.end728
  %b.freeze.in.chunk731 = and i1 %b.freeze.ge.chunk729, %b.freeze.lt.end730
  %b.freeze.ge.bump732 = icmp uge ptr %b.freeze.data711, %b.freeze.bump725
  %b.freeze.reaped733 = and i1 %b.freeze.in.chunk731, %b.freeze.ge.bump732
  br i1 %b.freeze.reaped733, label %b.freeze.copy717, label %b.freeze.done718

b.freeze.copy717:                                 ; preds = %b.freeze.check716
  %b.freeze.alen734 = add i64 %b.freeze.len709, 1
  %arena.cur735 = call ptr @dva_arena_current()
  %b.freeze.fresh736 = call ptr @dva_arena_alloc(ptr %arena.cur735, i64 %b.freeze.alen734)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh736, ptr align 1 %b.freeze.data711, i64 %b.freeze.len709, i1 false)
  %b.freeze.nul737 = getelementptr i8, ptr %b.freeze.fresh736, i64 %b.freeze.len709
  store i8 0, ptr %b.freeze.nul737, align 1
  br label %b.freeze.done718

b.freeze.done718:                                 ; preds = %b.freeze.copy717, %b.freeze.check716, %choice.else705
  %b.freeze.data738 = phi ptr [ %b.freeze.data711, %choice.else705 ], [ %b.freeze.data711, %b.freeze.check716 ], [ %b.freeze.fresh736, %b.freeze.copy717 ]
  %arena.cur739 = call ptr @dva_arena_current()
  %builder.freeze740 = call ptr @dva_arena_alloc(ptr %arena.cur739, i64 16)
  %str.build.len.gep741 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze740, i32 0, i32 0
  store i64 %b.freeze.len709, ptr %str.build.len.gep741, align 8
  %str.build.data.gep742 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze740, i32 0, i32 1
  store ptr %b.freeze.data738, ptr %str.build.data.gep742, align 8
  %b.freeze.rst.len743 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load707, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len743, align 8
  %b.freeze.rst.data744 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load707, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data744, align 8
  %b.freeze.rst.cap745 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load707, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap745, align 8
  br label %choice.exit706
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
  %arena.cur136 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len137

a.create:                                         ; preds = %loop.body.88
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
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
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
  %arena.cur41 = call ptr @dva_arena_current()
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
  %arena.cur42 = call ptr @dva_arena_current()
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
  %arena.cur66 = call ptr @dva_arena_current()
  %a.create67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %arena.cur68 = call ptr @dva_arena_current()
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
  %arena.cur90 = call ptr @dva_arena_current()
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
  %arena.cur101 = call ptr @dva_arena_current()
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
  %arena.cur138 = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len137

a.create143:                                      ; preds = %b.buf.len137
  %arena.cur145 = call ptr @dva_arena_current()
  %a.create146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %arena.cur147 = call ptr @dva_arena_current()
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
  %arena.cur164 = call ptr @dva_arena_current()
  %a.create165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 24)
  %arena.cur166 = call ptr @dva_arena_current()
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
  %arena.cur188 = call ptr @dva_arena_current()
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
  %arena.cur199 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur266 = call ptr @dva_arena_current()
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead265:                                    ; No predecessors!
  br label %b.new.buf.len2263

b.app.new.len278:                                 ; preds = %abort.dead280, %choice.exit247
  %b.cap281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load269, i32 0, i32 2
  %b.cap282 = load i64, ptr %b.cap281, align 8
  %b.need.grow283 = icmp slt i64 %b.cap282, %sum276
  br i1 %b.need.grow283, label %b.grow2284, label %b.nogrow2285

str_overflow_abort279:                            ; preds = %choice.exit247
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur302 = call ptr @dva_arena_current()
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %b.new.buf.len2299

a.create318:                                      ; preds = %loop.exit.90
  %arena.cur320 = call ptr @dva_arena_current()
  %a.create321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 24)
  %arena.cur322 = call ptr @dva_arena_current()
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
  %arena.cur340 = call ptr @dva_arena_current()
  %a.create341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 24)
  %arena.cur342 = call ptr @dva_arena_current()
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
  %arena.cur364 = call ptr @dva_arena_current()
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
  %arena.cur375 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur462 = call ptr @dva_arena_current()
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
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %b.new.buf.len2459

b.app.new.len484:                                 ; preds = %abort.dead486, %choice.exit425
  %b.cap487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 2
  %b.cap488 = load i64, ptr %b.cap487, align 8
  %b.need.grow489 = icmp slt i64 %b.cap488, %sum482
  br i1 %b.need.grow489, label %b.grow2490, label %b.nogrow2491

str_overflow_abort485:                            ; preds = %choice.exit425
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur508 = call ptr @dva_arena_current()
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
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %arena.cur530 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data529, i64 %b.freeze.len528, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len528
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else525
  %b.freeze.data531 = phi ptr [ %b.freeze.data529, %choice.else525 ], [ %b.freeze.data529, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur532 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.clean_pre, align 8
  %var.load1 = load ptr, ptr %var.clean_pre, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.lp, align 8
  %var.load5 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load ptr, ptr %var.p, align 8
  %var.load7 = load ptr, ptr %var.clean_pre, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len8 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %str.tag10 = lshr i64 %eq.lhs.len8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  br i1 %tag.immortal12, label %str_ok11, label %tag.gen_check13

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok11:                                         ; preds = %abort.dead20, %tag.slow_check14, %tag.gen_check13, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %eq.rhs.len21 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len22 = and i64 %eq.rhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.rhs.len21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  br i1 %tag.immortal25, label %str_ok24, label %tag.gen_check26

tag.gen_check13:                                  ; preds = %choice.exit
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok17 = icmp eq i64 %str.tag10, %active.gen16
  br i1 %tag.fast.ok17, label %str_ok11, label %tag.slow_check14

tag.slow_check14:                                 ; preds = %tag.gen_check13
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag10)
  br i1 %tag.valid19, label %str_ok11, label %tag.stale15

tag.stale15:                                      ; preds = %tag.slow_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %str_ok11

str_ok24:                                         ; preds = %abort.dead33, %tag.slow_check27, %tag.gen_check26, %str_ok11
  %eq.len = icmp eq i64 %eq.lhs.len9, %eq.rhs.len22
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check26:                                  ; preds = %str_ok11
  %active.gen29 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok30 = icmp eq i64 %str.tag23, %active.gen29
  br i1 %tag.fast.ok30, label %str_ok24, label %tag.slow_check27

tag.slow_check27:                                 ; preds = %tag.gen_check26
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag23)
  br i1 %tag.valid32, label %str_ok24, label %tag.stale28

tag.stale28:                                      ; preds = %tag.slow_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %str_ok24

str.eq.then:                                      ; preds = %str_ok24
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %eq.rhs.data35 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data35, i64 %eq.lhs.len9)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok24
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.92.then, label %or.92.else

or.92.then:                                       ; preds = %str.eq.merge
  br label %or.92.exit

or.92.else:                                       ; preds = %str.eq.merge
  %var.load36 = load ptr, ptr %var.p, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %str.tag40 = lshr i64 %str.len.query38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  br i1 %tag.immortal42, label %str_ok41, label %tag.gen_check43

or.92.exit:                                       ; preds = %and.94.exit, %or.92.then
  %or.92.phi = phi i1 [ %str.eq.result, %or.92.then ], [ %and.94.phi, %and.94.exit ]
  ret i1 %or.92.phi

str_ok41:                                         ; preds = %abort.dead50, %tag.slow_check44, %tag.gen_check43, %or.92.else
  %var.load51 = load i64, ptr %var.lp, align 8
  %cmptmp52 = icmp sgt i64 %str.len.query39, %var.load51
  br i1 %cmptmp52, label %and.93.then, label %and.93.else

tag.gen_check43:                                  ; preds = %or.92.else
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok47 = icmp eq i64 %str.tag40, %active.gen46
  br i1 %tag.fast.ok47, label %str_ok41, label %tag.slow_check44

tag.slow_check44:                                 ; preds = %tag.gen_check43
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag40)
  br i1 %tag.valid49, label %str_ok41, label %tag.stale45

tag.stale45:                                      ; preds = %tag.slow_check44
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %str_ok41

and.93.then:                                      ; preds = %str_ok41
  %var.load53 = load ptr, ptr %var.p, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.chk.len54 = load i64, ptr %s.chk.len, align 8
  %s.chk.len55 = and i64 %s.chk.len54, 281474976710655
  %str.tag56 = lshr i64 %s.chk.len54, 48
  %tag.immortal58 = icmp eq i64 %str.tag56, 0
  br i1 %tag.immortal58, label %str_ok57, label %tag.gen_check59

and.93.else:                                      ; preds = %str_ok41
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %str.eq.merge90
  %and.93.phi = phi i1 [ %str.eq.result93, %str.eq.merge90 ], [ %cmptmp52, %and.93.else ]
  br i1 %and.93.phi, label %and.94.then, label %and.94.else

str_ok57:                                         ; preds = %abort.dead66, %tag.slow_check60, %tag.gen_check59, %and.93.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.read.len67 = load i64, ptr %s.read.len, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data, align 8
  %var.load70 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len68, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len68
  %final.start = select i1 %start.gt.len, i64 %s.read.len68, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load70, 0
  %rel.end = add i64 %s.read.len68, %var.load70
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load70
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len68
  %final.end = select i1 %end.gt.len, i64 %s.read.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data69, i64 %final.start
  %var.load71 = load ptr, ptr %var.clean_pre, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %cmp.str72 = load i64, ptr %cmp.str, align 8
  %cmp.str73 = and i64 %cmp.str72, 281474976710655
  %str.tag74 = lshr i64 %cmp.str72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  br i1 %tag.immortal76, label %str_ok75, label %tag.gen_check77

tag.gen_check59:                                  ; preds = %and.93.then
  %active.gen62 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok63 = icmp eq i64 %str.tag56, %active.gen62
  br i1 %tag.fast.ok63, label %str_ok57, label %tag.slow_check60

tag.slow_check60:                                 ; preds = %tag.gen_check59
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag56)
  br i1 %tag.valid65, label %str_ok57, label %tag.stale61

tag.stale61:                                      ; preds = %tag.slow_check60
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %str_ok57

str_ok75:                                         ; preds = %abort.dead84, %tag.slow_check78, %tag.gen_check77, %str_ok57
  %cmp.str85 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %cmp.str86 = load ptr, ptr %cmp.str85, align 8
  %eq.len87 = icmp eq i64 %view.len, %cmp.str73
  br i1 %eq.len87, label %str.eq.then88, label %str.eq.else89

tag.gen_check77:                                  ; preds = %str_ok57
  %active.gen80 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok81 = icmp eq i64 %str.tag74, %active.gen80
  br i1 %tag.fast.ok81, label %str_ok75, label %tag.slow_check78

tag.slow_check78:                                 ; preds = %tag.gen_check77
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag74)
  br i1 %tag.valid83, label %str_ok75, label %tag.stale79

tag.stale79:                                      ; preds = %tag.slow_check78
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %str_ok75

str.eq.then88:                                    ; preds = %str_ok75
  %eq.memcmp91 = call i32 @memcmp(ptr %view.data, ptr %cmp.str86, i64 %view.len)
  %eq.cmp.zero92 = icmp eq i32 %eq.memcmp91, 0
  br label %str.eq.merge90

str.eq.else89:                                    ; preds = %str_ok75
  br label %str.eq.merge90

str.eq.merge90:                                   ; preds = %str.eq.else89, %str.eq.then88
  %str.eq.result93 = phi i1 [ %eq.cmp.zero92, %str.eq.then88 ], [ false, %str.eq.else89 ]
  br label %and.93.exit

and.94.then:                                      ; preds = %and.93.exit
  %var.load94 = load ptr, ptr %var.p, align 8
  %s.read.len95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %s.read.len96 = load i64, ptr %s.read.len95, align 8
  %s.read.len97 = and i64 %s.read.len96, 281474976710655
  %s.read.data98 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %s.read.data99 = load ptr, ptr %s.read.data98, align 8
  %var.load100 = load i64, ptr %var.lp, align 8
  %idx.neg = icmp slt i64 %var.load100, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.94.else:                                      ; preds = %and.93.exit
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %idx_ok
  %and.94.phi = phi i1 [ %call.res102, %idx_ok ], [ %and.93.phi, %and.94.else ]
  br label %or.92.exit

idx_big_check:                                    ; preds = %and.94.then
  %idx.big = icmp sge i64 %var.load100, %s.read.len97
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead101, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data99, i64 %var.load100
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res102 = call i1 @"path::is_sep"(i64 %s.byte.val)
  br label %and.94.exit

idx_oob:                                          ; preds = %idx_big_check, %and.94.then
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.start'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

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

loop.latch.95:                                    ; preds = %choice.exit15
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
  %idx.neg = icmp slt i64 %var.load11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.exit:                                      ; preds = %idx_ok, %choice.then
  %choice.res = phi i32 [ 47, %choice.then ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load13 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load13 to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res, label %choice.then14, label %choice.exit15

idx_big_check:                                    ; preds = %choice.else
  %idx.big = icmp sge i64 %var.load11, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.else
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %choice.exit
  %var.load16 = load i64, ptr %var.i, align 8
  %var.load17 = load i64, ptr %"var.start'", align 8
  %subtmp = sub i64 %var.load16, %var.load17
  store i64 %subtmp, ptr %var.seg_len, align 8
  %var.load18 = load i64, ptr %var.seg_len, align 8
  %cmptmp19 = icmp eq i64 %var.load18, 2
  br i1 %cmptmp19, label %and.96.then, label %and.96.else

choice.exit15:                                    ; preds = %choice.exit56, %choice.exit
  br label %loop.latch.95

and.96.then:                                      ; preds = %choice.then14
  %var.load20 = load ptr, ptr %var.p, align 8
  %s.read.len21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len21, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %var.load26 = load i64, ptr %"var.start'", align 8
  %idx.neg27 = icmp slt i64 %var.load26, 0
  br i1 %idx.neg27, label %idx_oob30, label %idx_big_check28

and.96.else:                                      ; preds = %choice.then14
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok29
  %and.96.phi = phi i1 [ %cmptmp36, %idx_ok29 ], [ %cmptmp19, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

idx_big_check28:                                  ; preds = %and.96.then
  %idx.big31 = icmp sge i64 %var.load26, %s.read.len23
  br i1 %idx.big31, label %idx_oob30, label %idx_ok29

idx_ok29:                                         ; preds = %abort.dead32, %idx_big_check28
  %s.byte.gep33 = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte34 = load i8, ptr %s.byte.gep33, align 1
  %s.byte.val35 = zext i8 %s.byte34 to i64
  %cmptmp36 = icmp eq i64 %s.byte.val35, 46
  br label %and.96.exit

idx_oob30:                                        ; preds = %idx_big_check28, %and.96.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %idx_ok29

and.97.then:                                      ; preds = %and.96.exit
  %var.load37 = load ptr, ptr %var.p, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %"var.start'", align 8
  %addtmp44 = add i64 %var.load43, 1
  %idx.neg45 = icmp slt i64 %addtmp44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %idx_ok47
  %and.97.phi = phi i1 [ %cmptmp54, %idx_ok47 ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %choice.then55, label %choice.exit56

idx_big_check46:                                  ; preds = %and.97.then
  %idx.big49 = icmp sge i64 %addtmp44, %s.read.len40
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %abort.dead50, %idx_big_check46
  %s.byte.gep51 = getelementptr i8, ptr %s.read.data42, i64 %addtmp44
  %s.byte52 = load i8, ptr %s.byte.gep51, align 1
  %s.byte.val53 = zext i8 %s.byte52 to i64
  %cmptmp54 = icmp eq i64 %s.byte.val53, 46
  br label %and.97.exit

idx_oob48:                                        ; preds = %idx_big_check46, %and.97.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok47

choice.then55:                                    ; preds = %and.97.exit
  ret i1 true

choice.exit56:                                    ; preds = %ret.dead, %and.97.exit
  %var.load57 = load i64, ptr %var.i, align 8
  %addtmp58 = add i64 %var.load57, 1
  store i64 %addtmp58, ptr %"var.start'", align 8
  br label %choice.exit15

ret.dead:                                         ; No predecessors!
  br label %choice.exit56
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
