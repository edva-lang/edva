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
@"var.const::pi" = global double 0x400921FB54442D18
@"var.const::tau" = global double 0x401921FB54442D18
@"var.const::e" = global double 0x4005BF0A8B14576A
@"var.const::phi" = global double 0x3FF9E3779B97F4A8
@"var.const::inv_phi" = global double 0x3FE3C6EF372FE950
@"var.const::sqrt2" = global double 0x3FF6A09E667F3BCD
@"var.const::sqrt3" = global double 0x3FFBB67AE8584CAB
@"var.const::ln2" = global double 0x3FE62E42FEFA39EF
@"var.const::ln10" = global double 0x40026BB1BBB55516
@"var.const::max_i64" = global i64 9223372036854775807
@"var.const::min_i64" = global i64 -9223372036854775808
@"var.const::max_safe_int" = global i64 9007199254740991
@"var.const::max_i32" = global i32 2147483647
@"var.const::min_i32" = global i32 -2147483648
@"var.const::max_i16" = global i16 32767
@"var.const::min_i16" = global i16 -32768
@"var.const::max_i8" = global i8 127
@"var.const::min_i8" = global i8 -128
@"var.const::max_u64" = global i64 -1
@"var.const::max_u32" = global i32 -1
@"var.const::max_u16" = global i16 -1
@"var.const::max_u8" = global i8 -1
@"var.const::inf_f64" = global double 0x7FF0000000000000
@"var.const::nan_f64" = global double 0x7FF8000000000000
@"var.const::max_f64" = global double 0x7FEFFFFFFFFFFFFF
@"var.const::min_f64" = global double 0x10000000000000
@"var.const::sub_f64" = global double 4.940660e-324
@"var.const::eps_f64" = global double 0x3CB0000000000000
@"var.const::inf_f32" = global float 0x7FF0000000000000
@"var.const::nan_f32" = global float 0x7FF8000000000000
@"var.const::max_f32" = global float 0x47EFFFFFE0000000
@"var.const::min_f32" = global float 0x3810000000000000
@"var.const::sub_f32" = global float 0x36A0000000000000
@"var.const::eps_f32" = global float 0x3E80000000000000
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_const, ptr null }]

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

define internal void @__dva_global_init_const() #0 {
entry:
  store double 0x400921FB54442D18, ptr @"var.const::pi", align 8
  store double 0x401921FB54442D18, ptr @"var.const::tau", align 8
  store double 0x4005BF0A8B14576A, ptr @"var.const::e", align 8
  store double 0x3FF9E3779B97F4A8, ptr @"var.const::phi", align 8
  store double 0x3FE3C6EF372FE950, ptr @"var.const::inv_phi", align 8
  store double 0x3FF6A09E667F3BCD, ptr @"var.const::sqrt2", align 8
  store double 0x3FFBB67AE8584CAB, ptr @"var.const::sqrt3", align 8
  store double 0x3FE62E42FEFA39EF, ptr @"var.const::ln2", align 8
  store double 0x40026BB1BBB55516, ptr @"var.const::ln10", align 8
  store i64 9223372036854775807, ptr @"var.const::max_i64", align 8
  store i64 -9223372036854775808, ptr @"var.const::min_i64", align 8
  store i64 9007199254740991, ptr @"var.const::max_safe_int", align 8
  store i32 2147483647, ptr @"var.const::max_i32", align 4
  store i32 -2147483648, ptr @"var.const::min_i32", align 4
  store i16 32767, ptr @"var.const::max_i16", align 2
  store i16 -32768, ptr @"var.const::min_i16", align 2
  store i8 127, ptr @"var.const::max_i8", align 1
  store i8 -128, ptr @"var.const::min_i8", align 1
  store i64 -1, ptr @"var.const::max_u64", align 8
  store i32 -1, ptr @"var.const::max_u32", align 4
  store i16 -1, ptr @"var.const::max_u16", align 2
  store i8 -1, ptr @"var.const::max_u8", align 1
  store double 0x7FF0000000000000, ptr @"var.const::inf_f64", align 8
  store double 0x7FF8000000000000, ptr @"var.const::nan_f64", align 8
  store double 0x7FEFFFFFFFFFFFFF, ptr @"var.const::max_f64", align 8
  store double 0x10000000000000, ptr @"var.const::min_f64", align 8
  store double 4.940660e-324, ptr @"var.const::sub_f64", align 8
  store double 0x3CB0000000000000, ptr @"var.const::eps_f64", align 8
  store float 0x7FF0000000000000, ptr @"var.const::inf_f32", align 4
  store float 0x7FF8000000000000, ptr @"var.const::nan_f32", align 4
  store float 0x47EFFFFFE0000000, ptr @"var.const::max_f32", align 4
  store float 0x3810000000000000, ptr @"var.const::min_f32", align 4
  store float 0x36A0000000000000, ptr @"var.const::sub_f32", align 4
  store float 0x3E80000000000000, ptr @"var.const::eps_f32", align 4
  ret void
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
